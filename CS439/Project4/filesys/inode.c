#include "filesys/inode.h"
#include <list.h>
#include <debug.h>
#include <round.h>
#include <string.h>
#include "filesys/filesys.h"
#include "filesys/free-map.h"
#include "threads/malloc.h"

/* Identifies an inode. */
#define INODE_MAGIC 0x494e4f44
#define INDEX_BLOCK_SIZE 126  // The number of data blocks held by an index block


// File's index block
struct index_block
  {
    block_sector_t next;                    // Location of the next index block of the file
    block_sector_t self;                    // Location of this index block
    block_sector_t data[INDEX_BLOCK_SIZE];  // Location of the data blocks held by this index block
  };

// Initializes an index block
static void index_block_init (struct index_block* index_block, block_sector_t self){
  int i;

  // Assings value of self to index_block->self and to every other variable (to them, this is the "unused"/"not set" case)
  index_block->self = self;
  index_block->next = self;
  for(i = 0; i < INDEX_BLOCK_SIZE; ++i){
    index_block->data[i] = self;
  }
}

/* Returns the number of sectors to allocate for an inode SIZE
   bytes long. */
static inline size_t
bytes_to_sectors (off_t size)
{
  return DIV_ROUND_UP (size, BLOCK_SECTOR_SIZE);
}

// Caio, John and Sean driving here
/* Returns the block device sector that contains byte offset POS
   within INODE.
   Returns -1 if INODE does not contain data for a byte at offset
   POS. */
static block_sector_t
byte_to_sector (const struct inode *inode, off_t pos)
{
  ASSERT (inode != NULL);
  // If the position is beyond EOF, returns -1
  if (pos >= inode->data.length)
    return -1;
  
  int i;
  static char zeros[BLOCK_SECTOR_SIZE];
  
  // Calculates the index_block index (is pos associated with the 0th/1st/2nd/3rd/etc. IB of the file?)
  int index_block_index = pos/(BLOCK_SECTOR_SIZE*INDEX_BLOCK_SIZE);
  // Calculates the data array index (is pos associated with index_block->data[0/1/2/3/etc]?)
  int data_array_index = (pos/BLOCK_SECTOR_SIZE)%INDEX_BLOCK_SIZE;
  
  // Iterates through the IBs until it finds the desired one
  struct index_block *current = malloc (sizeof (struct index_block));
  block_read (fs_device, inode->data.start, current);
  for (i = 0; i < index_block_index; ++i) {
    block_read (fs_device, current->next, current);
  }

  // If the desired data block has current->self as its location, it means the block is all zeroes (files are sparse)
  if (current->data[data_array_index] == current->self) {
    
    // Therefore actually allocates the block so that the user can read it at the returned block_sector_t
    if (!free_map_allocate (1, &current->data[data_array_index])) {
      free (current);
      return -1;
    }
    block_write (fs_device, current->data[data_array_index], zeros);
    block_write (fs_device, current->self, current);
  }

  block_sector_t result = current->data[data_array_index];
  free (current);
  return result;
}

/* List of open inodes, so that opening a single inode twice
   returns the same `struct inode'. */
static struct list open_inodes;

/* Initializes the inode module. */
void
inode_init (void)
{
  list_init (&open_inodes);
}

// Caio, John and Sean driving here
/* Initializes an inode with LENGTH bytes of data and
   writes the new inode to sector SECTOR on the file system
   device.
   Returns true if successful.
   Returns false if memory or disk allocation fails. */
bool
inode_create (block_sector_t sector, off_t length)
{
  ASSERT (length >= 0);

  /* If this assertion fails, the inode structure is not exactly
     one sector in size, and you should fix that. */
  struct inode_disk *inode_disk = NULL;
  ASSERT (sizeof *inode_disk == BLOCK_SECTOR_SIZE);

  // Initializes inode_disk and sectors
  inode_disk = calloc (1, sizeof *inode_disk);
  if (inode_disk == NULL) {
    return false;
  }
  int sectors = (int)bytes_to_sectors (length);

  // Initializes inode_disk's members
  inode_disk->length = length;
  inode_disk->magic = INODE_MAGIC;
  inode_disk->is_dir = false;

  // Allocates disk space for the first index_block and sets disk_inode->first
  if (!free_map_allocate (1, &inode_disk->start)) {
    free (inode_disk);
    return false;
  }

  // Sets current_index_block as the start of the file
  block_sector_t current_index_block = inode_disk->start;
  
  // Create all the index blocks and zero all the necessary data blocks
  int i;
  int count = 0;
  static char zeros[BLOCK_SECTOR_SIZE];
  for (; sectors >= 0; count++) {

    // Allocates memory for the index_block and initializes it
    struct index_block* index_block = malloc (sizeof (struct index_block));
    if (!index_block) {
      free (inode_disk);
      return false;
    }
    index_block_init(index_block, current_index_block);

    // Sets index_block_sectors to min(INDEX_BLOCK_SIZE, sectors), allocates every needed data block and writes them to memory (zeroed)
    int index_block_sectors = sectors <= INDEX_BLOCK_SIZE ? sectors : INDEX_BLOCK_SIZE;
    for (i = 0; i < index_block_sectors; i++) {
      if (!free_map_allocate (1, &index_block->data[i])) {
        free (inode_disk);
        free (index_block);
        return false;
      }
      block_write (fs_device, index_block->data[i], zeros);
    }

    // Decrements the number of data sectors yet to be allocated and, if there are more than 0, allocates disk space for the new index block
    // Sets current to next and writes current to disk
    sectors -= INDEX_BLOCK_SIZE;
    if (sectors > 0) {
      if (!free_map_allocate(1, &index_block->next)) {
        free (inode_disk);
        free (index_block);
        return false;
      }
      current_index_block = index_block->next;
    }
    block_write (fs_device, index_block->self, index_block);
    
    free (index_block);
  }

  // Writes the last index block to disk and sets it as inode_disk->end
  inode_disk->end = current_index_block;
  block_write (fs_device, sector, inode_disk);

  free (inode_disk);
  return true;
}


// Caio, John and Sean driving here
/* Reads an inode from SECTOR
   and returns a `struct inode' that contains it.
   Returns a null pointer if memory allocation fails. */
struct inode *
inode_open (block_sector_t sector)
{
  struct list_elem *e;
  struct inode *inode;

  /* Check whether this inode is already open. */
  for (e = list_begin (&open_inodes); e != list_end (&open_inodes);
       e = list_next (e))
    {
      inode = list_entry (e, struct inode, elem);
      if (inode->sector == sector)
        {
          inode_reopen (inode);
          return inode;
        }
    }

  /* Allocate memory. */
  inode = malloc (sizeof *inode);
  if (inode == NULL)
    return NULL;

  // Initializes the inode
  list_push_front (&open_inodes, &inode->elem);
  inode->sector = sector;
  inode->open_cnt = 1;
  inode->deny_write_cnt = 0;
  inode->removed = false;
  lock_init (&inode->lock);
  cond_init (&inode->readers_cond);
  cond_init (&inode->writers_cond);
  inode->readers = 0;
  inode->writers = 0;
  block_read (fs_device, inode->sector, &inode->data);

  return inode;
}

/* Reopens and returns INODE. */
struct inode *
inode_reopen (struct inode *inode)
{
  if (inode != NULL)
    inode->open_cnt++;
  // printf("reopening inode, sector %d, open_cnt %d\n", inode->sector, inode->open_cnt);
  return inode;
}

/* Returns INODE's inode number. */
block_sector_t
inode_get_inumber (const struct inode *inode)
{
  return inode->sector;
}

// Caio, John and Sean driving here
/* Closes INODE and writes it to disk. (Does it?  Check code.)
   If this was the last reference to INODE, frees its memory.
   If INODE was also a removed inode, frees its blocks. */
void
inode_close (struct inode *inode)
{
  /* Ignore null pointer. */
  if (inode == NULL)
    return;

  /* Release resources if this was the last opener. */
  if (--inode->open_cnt == 0)
    {
      /* Remove from inode list and release lock. */
      list_remove (&inode->elem);

      /* Deallocate blocks if removed. */
      if (inode->removed)
        {
          int i;
          struct index_block* index_block = malloc (sizeof (struct index_block));
         
          // Traverses the file releasing every index block and the data blocks associated with them
          block_read (fs_device, inode->data.start, index_block);
          while (index_block->next != index_block->self) {
            for (i = 0; i < INDEX_BLOCK_SIZE; ++i) {
              if (index_block->data[i] != index_block->self) {
                free_map_release(index_block->data[i], 1);
              }
            }
            block_sector_t self = index_block->self;
            block_read (fs_device, index_block->next, index_block);
            free_map_release(self, 1);
          }

          // Releases the last index block of the file and the data block associated with it
          for (i = 0; i < INDEX_BLOCK_SIZE; ++i) {
            if (index_block->data[i] != index_block->self) {
              free_map_release(index_block->data[i], 1);
            }
          }
          free_map_release(index_block->self, 1);
          free_map_release (inode->sector, 1);
          free (index_block);
        }

      free (inode);
    }
}

/* Marks INODE to be deleted when it is closed by the last caller who
   has it open. */
void
inode_remove (struct inode *inode)
{
  ASSERT (inode != NULL);
  inode->removed = true;
}

// Caio, John and Sean driving here
/* Reads SIZE bytes from INODE into BUFFER, starting at position OFFSET.
   Returns the number of bytes actually read, which may be less
   than SIZE if an error occurs or end of file is reached. */
off_t
inode_read_at (struct inode *inode, void *buffer_, off_t size, off_t offset)
{
  // Synchronization for reading
  lock_acquire (&inode->lock);
  while (inode->writers > 0) {
    cond_wait (&inode->writers_cond, &inode->lock);
  }
  ++inode->readers;
  lock_release (&inode->lock);

  uint8_t *buffer = buffer_;
  off_t bytes_read = 0;
  uint8_t *bounce = NULL;


  //start at the header(inode)
  while (size > 0)
    {
      /* Disk sector to read, starting byte offset within sector. */
      block_sector_t sector_idx = byte_to_sector (inode, offset);

      int sector_ofs = offset % BLOCK_SECTOR_SIZE;

      /* Bytes left in inode, bytes left in sector, lesser of the two. */
      off_t inode_left = inode_length (inode) - offset;
      int sector_left = BLOCK_SECTOR_SIZE - sector_ofs;
      int min_left = inode_left < sector_left ? inode_left : sector_left;

      /* Number of bytes to actually copy out of this sector. */
      int chunk_size = size < min_left ? size : min_left;
      if (chunk_size <= 0)
        break;

      if (sector_ofs == 0 && chunk_size == BLOCK_SECTOR_SIZE)
        {
          /* Read full sector directly into caller's buffer. */
          block_read (fs_device, sector_idx, buffer + bytes_read);
        }
      else
        {
          /* Read sector into bounce buffer, then partially copy
             into caller's buffer. */
          if (bounce == NULL)
            {
              bounce = malloc (BLOCK_SECTOR_SIZE);
              if (bounce == NULL)
                break;
            }
          block_read (fs_device, sector_idx, bounce);
          memcpy (buffer + bytes_read, bounce + sector_ofs, chunk_size);
        }

      /* Advance. */
      size -= chunk_size;
      offset += chunk_size;
      bytes_read += chunk_size;
    }
  free (bounce);

  // Synchronization for reading
  lock_acquire (&inode->lock);
  if (--inode->readers == 0) {
    cond_signal (&inode->readers_cond, &inode->lock);
  }
  lock_release (&inode->lock);

  return bytes_read;
}

// Caio, John and Sean driving here
/* Writes SIZE bytes from BUFFER into INODE, starting at OFFSET.
   Returns the number of bytes actually written, which may be
   less than SIZE if end of file is reached or an error occurs.
   (Normally a write at end of file would extend the inode, but
   growth is not yet implemented.) */
off_t
inode_write_at (struct inode *inode, const void *buffer_, off_t size,
                off_t offset)
{
  const uint8_t *buffer = buffer_;
  off_t bytes_written = 0;
  uint8_t *bounce = NULL;

  if (inode->deny_write_cnt)
    return 0;

  // Synchronization for extending file
  lock_acquire (&inode->lock);
  ++inode->writers;
  while (inode->readers > 0) {
    cond_wait (&inode->readers_cond, &inode->lock);
  }

  // If the write is going to excede the length of the file, extends it
  if(offset + size > inode_length(inode)) {

    // Calculates the last index_block index (is length associated with the 0th/1st/2nd/3rd/etc. IB of the file?)
    int last_index_block_index = inode_length (inode) / (BLOCK_SECTOR_SIZE * INDEX_BLOCK_SIZE);
    // Calculates the new last index_block index (is the new length going to be associated with the 1st/2nd/3rd/4th/etc. IB of the file?)
    int new_last_index_block_index = (offset + size) / (BLOCK_SECTOR_SIZE * INDEX_BLOCK_SIZE);
    
    // Creates the new index blocks one by one, starting with inode->data.end as current
    int i;
    struct index_block *next = malloc (sizeof (struct index_block));
    struct index_block *current = malloc (sizeof (struct index_block));
    block_read (fs_device, inode->data.end, current);
    for (i = last_index_block_index; i < new_last_index_block_index; ++i) {
      if (!next) {
        free (current);
        free (next);
        return bytes_written;
      }

      // Allocates space on disk for next
      if (!free_map_allocate (1, &current->next)) {
        free(current);
        free(next);
        return bytes_written;
      }

      // Initializes next, writes current, writes next at the new inode->data.end and sets current to next
      index_block_init (next, current->next);
      block_write (fs_device, inode->data.end, current);
      inode->data.end = current->next;
      block_write (fs_device, inode->data.end, next);
      block_read (fs_device, inode->data.end, current);
      
    }

    // Does the last write and sets the new length of the file
    inode->data.length = offset + size;
    block_write(fs_device, inode->sector, &inode->data);
    free(current);
    free(next);
  }

  // Synchronization for extending file
  if (--inode->writers == 0) {
    cond_broadcast (&inode->writers_cond, &inode->lock);
  }
  else {
    cond_signal (&inode->readers_cond, &inode->lock);
  }
  lock_release (&inode->lock);

  while (size > 0)
    {

      /* Sector to write, starting byte offset within sector. */
      block_sector_t sector_idx = byte_to_sector (inode, offset);
      int sector_ofs = offset % BLOCK_SECTOR_SIZE;

      /* Bytes left in inode, bytes left in sector, lesser of the two. */
      off_t inode_left = inode_length (inode) - offset;
      int sector_left = BLOCK_SECTOR_SIZE - sector_ofs;
      int min_left = inode_left < sector_left ? inode_left : sector_left;

      /* Number of bytes to actually write into this sector. */
      int chunk_size = size < min_left ? size : min_left;
      if (chunk_size <= 0)
        break;

      if (sector_ofs == 0 && chunk_size == BLOCK_SECTOR_SIZE)
        {
          /* Write full sector directly to disk. */
          block_write (fs_device, sector_idx, buffer + bytes_written);
        }
      else
        {
          /* We need a bounce buffer. */
          if (bounce == NULL)
            {
              bounce = malloc (BLOCK_SECTOR_SIZE);
              if (bounce == NULL)
                break;
            }

          /* If the sector contains data before or after the chunk
             we're writing, then we need to read in the sector
             first.  Otherwise we start with a sector of all zeros. */
          if (sector_ofs > 0 || chunk_size < sector_left)
            block_read (fs_device, sector_idx, bounce);
          else
            memset (bounce, 0, BLOCK_SECTOR_SIZE);
          memcpy (bounce + sector_ofs, buffer + bytes_written, chunk_size);
          block_write (fs_device, sector_idx, bounce);
        }

      /* Advance. */
      size -= chunk_size;
      offset += chunk_size;
      bytes_written += chunk_size;
    }
  free (bounce);

  return bytes_written;
}

// Caio and John driving here
/* Disables writes to INODE.
   May be called at most once per inode opener.
   Returns if the file already had writes denied. */
bool
inode_deny_write (struct inode *inode)
{
  bool cnt = (inode->deny_write_cnt > 0);
  inode->deny_write_cnt++;
  ASSERT (inode->deny_write_cnt <= inode->open_cnt);
  return cnt;
}

/* Re-enables writes to INODE.
   Must be called once by each inode opener who has called
   inode_deny_write() on the inode, before closing the inode. */
void
inode_allow_write (struct inode *inode)
{
  ASSERT (inode->deny_write_cnt > 0);
  ASSERT (inode->deny_write_cnt <= inode->open_cnt);
  inode->deny_write_cnt--;
}

/* Returns the length, in bytes, of INODE's data. */
off_t
inode_length (const struct inode *inode)
{
  return inode->data.length;
}

// Caio and John driving here
// Returns if inode is associated with a directory
bool inode_is_dir (struct inode *inode) {
  struct inode_disk *inode_disk = malloc (sizeof (struct inode_disk));
  block_read (fs_device, inode->sector, inode_disk);
  bool success = inode_disk->is_dir;
  free(inode_disk);
  return success;
}

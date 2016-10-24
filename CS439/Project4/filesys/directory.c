#include "filesys/directory.h"
#include <stdio.h>
#include <string.h>
#include <list.h>
#include "filesys/filesys.h"
#include "filesys/inode.h"
#include "threads/malloc.h"
#include "threads/synch.h"
#include "threads/thread.h"
#include "devices/block.h"

/* A directory. */
struct dir 
  {
    struct inode *inode;                /* Backing store. */
    off_t pos;                          /* Current position. */
    struct lock lock;                   // Directory lock
  };

// Caio, John and Sean driving here
/* Creates a directory with space for ENTRY_CNT entries in the
   given SECTOR.  Returns true if successful, false on failure. */
bool
dir_create (block_sector_t sector, size_t entry_cnt)
{
  // Creates dir
  if(!inode_create (sector, entry_cnt * sizeof (struct dir_entry)))
    return false;

  // Updates is_dir variable and writes the dir back to disk
  struct inode_disk* inode_disk = malloc (sizeof (struct inode_disk));
  block_read (fs_device, sector, inode_disk);
  inode_disk->is_dir = true;
  block_write (fs_device, sector, inode_disk);
  free (inode_disk);

  // Creates . and .. subdirectories inside dir
  struct dir* dir = dir_open (inode_open (sector));
  dir_add (dir, ".", sector);
  dir_add (dir, "..", (thread_current ()->cwd) ? thread_current ()->cwd->inode->sector : sector);

  dir_close (dir);
  return true;
}

/* Opens and returns the directory for the given INODE, of which
   it takes ownership.  Returns a null pointer on failure. */
struct dir *
dir_open (struct inode *inode) 
{
  struct dir *dir = calloc (1, sizeof *dir);

  if (inode != NULL && dir != NULL)
    {
      dir->inode = inode;
      dir->pos = 0;
      lock_init (&dir->lock);
      return dir;
    }
  else
    {
      inode_close (inode);
      free (dir);
      return NULL; 
    }
}

/* Opens the root directory and returns a directory for it.
   Return true if successful, false on failure. */
struct dir *
dir_open_root (void)
{
  return dir_open (inode_open (ROOT_DIR_SECTOR));
}

/* Opens and returns a new directory for the same inode as DIR.
   Returns a null pointer on failure. */
struct dir *
dir_reopen (struct dir *dir) 
{
  return dir_open (inode_reopen (dir->inode));
}

/* Destroys DIR and frees associated resources. */
void
dir_close (struct dir *dir) 
{
  if (dir != NULL)
    {
      inode_close (dir->inode);
      free (dir);
    }
}

/* Returns the inode encapsulated by DIR. */
struct inode *
dir_get_inode (struct dir *dir) 
{
  return dir->inode;
}

// Caio, John and Sean driving here
// Splits a path, returning the directory where file_name is in
bool
dir_split_name (char* name, struct dir** parent, char **file_name)
{
  // If name is empty, returns false
  if (strlen(name) == 0) {
    return false;
  }

  // Finds where the last slash of name is
  int length = strlen (name);
  int i = length - 1;
  bool slash_found = true;
  while(name[i] != '/') {
    i--;
    if(i < 0) {
      slash_found = false;
      i = 0;
      break;
    }
  }

  // Buffers for the path and for the file name
  char* path_buffer;
  char* file_name_buffer;

  // If it doesn't find a slash, me make the path start with "./" so dealing with strtok_r is easiear
  if(!slash_found){
    path_buffer = malloc (3);
    path_buffer[0] = '.';
    path_buffer[1] = '/';
    path_buffer[2] = '\0';
    file_name_buffer = malloc (length + 2);
    strlcpy (file_name_buffer,name,length + 1);
    file_name_buffer[length + 1] = '\0';
  }
  // If it does find a slash, copies name to file_name_buffer
  else {
    path_buffer = malloc (i + 2);
    strlcpy (path_buffer, name, i + 2);
    path_buffer[i + 1] = '\0';
    file_name_buffer = malloc (length - i + 1);
    strlcpy (file_name_buffer, &name[i + 1], length - i);
    file_name_buffer[length - i] = '\0';
  }

  // If the path is absolute, the starting directory for the traversal will be root, otherwise it will be this thread's cwd
  struct inode *parent_inode;
  struct dir *starting_dir = (name[0] == '/') ? dir_open_root () : dir_reopen (thread_current ()->cwd);
  
  // Calls dir_lookup() on starting_dir to find every directory in path_buffer (returning the inode of the "parent directory")
  if (path_buffer && !dir_lookup (starting_dir, path_buffer, &parent_inode)) {
    free (path_buffer);
    return false;
  }
  dir_close (starting_dir);

  // If the returned parent_inode is removed, returns false
  if (parent_inode->removed) {
    inode_close (parent_inode);
    free (path_buffer);
    return false;
  }

  // Lastly opens the parent directory and set the pointer variables
  struct dir* parent_dir;
  if (!(parent_dir = dir_open (parent_inode))) {
    inode_close (parent_inode);
    return false;
  }
  *parent = parent_dir;
  *file_name = file_name_buffer;

  free (path_buffer);
  return true;
}

// Caio, John and Sean driving here
/* Searches DIR for a file with the given NAME.
   If successful, returns true, sets *EP to the directory entry
   if EP is non-null, and sets *OFSP to the byte offset of the
   directory entry if OFSP is non-null.
   otherwise, returns false and ignores EP and OFSP. */
static bool
lookup (const struct dir *dir, const char *name,
        struct dir_entry *ep, off_t *ofsp) 
{
  struct dir_entry e;
  size_t ofs;
  
  ASSERT (dir != NULL);
  ASSERT (name != NULL);

  // Creates a cupy of the directry and of the name
  struct dir *dir_copy = dir_reopen (dir);
  int str_len = strlen (name);
  char* name_copy = malloc (str_len + 2);
  strlcpy (name_copy, name, str_len + 1);
  name_copy[str_len + 1] = '\0';

  // Starts tokenizing name, which is a path of directories
  char *save_ptr;
  char *dir_name;
  dir_name = strtok_r (name_copy, "/", &save_ptr);

  // If dir_name is NULL, dir refers to root
  if (dir_name == NULL) {
    ep->inode_sector = ROOT_DIR_SECTOR;
    ep->in_use = true;
    dir_close (dir_copy);
    free (name_copy);
    return true;
  }

  // Starts traversal
  while (dir_name != NULL) {

    // Reads dir_copy and tries to find it in 
    bool dir_found = false;
    for (ofs = 0; (inode_read_at (dir_copy->inode, &e, sizeof e, ofs) == sizeof e) && !dir_found;
         ofs += sizeof e) {
      if (e.in_use && !strcmp (dir_name, e.name)) 
        {
          struct inode *inode = inode_open(e.inode_sector);
          dir_close(dir_copy); 
          dir_copy = dir_open(inode);

          dir_found = true;
          if (ep != NULL)
            *ep = e;
          if (ofsp != NULL)
            *ofsp = ofs;
        }
    }

    // If we don't find the directory, return false
    if (!dir_found) {
      dir_close(dir_copy);
      free (name_copy);
      return false;
    }

    // Keeps tolkenizing dir_copy
    dir_name = strtok_r (NULL, "/", &save_ptr);
  }

  // If the whole path is valid, we return true
  dir_close(dir_copy);
  free (name_copy);
  return true;
}

// Caio, John and Sean driving here
/* Searches DIR for a file with the given NAME
   and returns true if one exists, false otherwise.
   On success, sets *INODE to an inode for the file, otherwise to
   a null pointer.  The caller must close *INODE. */
bool
dir_lookup (const struct dir *dir, const char *name,
            struct inode **inode) 
{
  lock_acquire (&dir->lock);
  struct dir_entry e;

  
  ASSERT (dir != NULL);
  ASSERT (name != NULL);
  if (lookup (dir, name, &e, NULL))
    *inode = inode_open (e.inode_sector);
  else
    *inode = NULL;

  lock_release (&dir->lock);
  return *inode != NULL;
}

// Caio, John and Sean driving here
/* Adds a file named NAME to DIR, which must not already contain a
   file by that name.  The file's inode is in sector
   INODE_SECTOR.
   Returns true if successful, false on failure.
   Fails if NAME is invalid (i.e. too long) or a disk or memory
   error occurs. */
bool
dir_add (struct dir *dir, const char *name, block_sector_t inode_sector)
{
  lock_acquire (&dir->lock);
  struct dir_entry e;
  off_t ofs;
  bool success = false;

  ASSERT (dir != NULL);
  ASSERT (name != NULL);

  /* Check NAME for validity. */
  if (*name == '\0' || strlen (name) > NAME_MAX) {
    return false;
  }

  /* Check that NAME is not in use. */
  if (lookup (dir, name, NULL, NULL)) {
    goto done;
  }

  /* Set OFS to offset of free slot.
     If there are no free slots, then it will be set to the
     current end-of-file.
     
     inode_read_at() will only return a short read at end of file.
     Otherwise, we'd need to verify that we didn't get a short
     read due to something intermittent such as low memory. */
  for (ofs = 0; inode_read_at (dir->inode, &e, sizeof e, ofs) == sizeof e;
       ofs += sizeof e) 
    if (!e.in_use)
      break;

  /* Write slot. */
  e.in_use = true;

  strlcpy (e.name, name, sizeof e.name);
  e.inode_sector = inode_sector;
  success = inode_write_at (dir->inode, &e, sizeof e, ofs) == sizeof e;

 done:
  lock_release (&dir->lock);
  return success;

}

// Caio, John and Sean driving here
// Returns how many files/directories are inside dir
static uint32_t
dir_length (struct dir *dir)
{
  struct dir_entry e;
  uint32_t count = 0;
  off_t ofs;

  // Loops through the the directory looking counting in use entries
  for (ofs = 0; (inode_read_at (dir->inode, &e, sizeof e, ofs) == sizeof e); ofs += sizeof e) {
    if (e.in_use) {
      count++;
    } 
  }
  return count;
} 

// Caio, John and Sean driving here
/* Removes any entry for NAME in DIR.
   Returns true if successful, false on failure,
   which occurs only if there is no file with the given NAME. */
bool
dir_remove (struct dir *dir, const char *name) 
{
  lock_acquire (&dir->lock);
  struct dir_entry e;
  struct inode *inode = NULL;
  bool success = false;
  off_t ofs;

  ASSERT (dir != NULL);
  ASSERT (name != NULL);

  /* Find directory entry. */
  if (!lookup (dir, name, &e, &ofs))
    goto done;
  
  /* Open inode. */
  inode = inode_open (e.inode_sector);

  // Checks if there are files/directories other than . and .. inside the directory to be removed
  struct dir *remove_dir = dir_open (inode);
  if(dir_length (remove_dir) > 2){
    goto done;
  }
  free (remove_dir);

  if (inode == NULL)
    goto done;

  // Desn't allow user to delete the root
  if (inode->sector == ROOT_DIR_SECTOR) {
    goto done;
  }

  // If the inode was already removed, returns false
  if(inode->removed){
    goto done;
  }

  /* Erase directory entry. */
  e.in_use = false;
  if (inode_write_at (dir->inode, &e, sizeof e, ofs) != sizeof e) 
    goto done;

  /* Remove inode. */
  success = true;
  inode_remove (inode);

 done:
  lock_release (&dir->lock);
  inode_close (inode);
  return success;
}

// Caio, John and Sean driving here
/* Reads the next directory entry in DIR and stores the name in
   NAME.  Returns true if successful, false if the directory
   contains no more entries. */
bool
dir_readdir (struct dir *dir, char name[NAME_MAX + 1])
{
  lock_acquire (&dir->lock);
  struct dir_entry e;

  while (inode_read_at (dir->inode, &e, sizeof e, dir->pos) == sizeof e) 
    { 
      dir->pos += sizeof e;

      // If directory is in use and isn't either . or .., copy name
      if (e.in_use && strcmp(e.name, ".") && strcmp(e.name, ".."))
        {
          strlcpy (name, e.name, NAME_MAX + 1);
          lock_release (&dir->lock);
          return true;
        } 
    }
  lock_release (&dir->lock);
  return false;
}

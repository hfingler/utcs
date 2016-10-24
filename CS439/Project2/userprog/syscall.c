#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "process.h"
#include "threads/vaddr.h"
#include "pagedir.h"
#include "filesys/filesys.h"
#include "../devices/input.h"
#include "../threads/palloc.h"
#include "../threads/synch.h"
#include "filesys/file.h"
#include "devices/shutdown.h"
#include "../filesys/inode.h"
#define FILENAME_MAX 255

static void syscall_handler (struct intr_frame *);

// Caio and John driving here
static int file_descriptor; // Global that holds the next file descriptor that's going to be assigned
static struct lock file_lock; // Lock for filesys

// Caio and John driving here
void
syscall_init (void)
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
  file_descriptor = 2;
  lock_init(&file_lock);
}

// Caio and John driving here
static void
syscall_handler (struct intr_frame *f)
{

  check_pointer((int*) f->esp);

  // System call number
  uint32_t scn = (uint32_t) *((int*) f->esp);

  // Checks pointer(s) for system call argument(s)
  if (scn != SYS_HALT) {
  	check_pointer((int*) f->esp + 1);
  }
  else if (scn == SYS_WRITE || scn == SYS_CREATE || scn == SYS_READ || scn == SYS_SEEK) {
  	check_pointer((int*) f->esp + 2);
  }
  else if (scn == SYS_WRITE || scn == SYS_READ) {
  	check_pointer((int*) f->esp + 3);
  }

  // Makes the call
  switch(scn){
  	case SYS_HALT:
  		halt();
  		break;
  	case SYS_EXIT:
  		exit(*((int*) f->esp + 1));
  		break;
  	case SYS_EXEC:
  		f->eax = exec((const char*)(*((int*) f->esp + 1)));
  		break;
  	case SYS_WAIT:
  		f->eax = wait(*((int*) f->esp + 1));
  		break;
  	case SYS_CREATE:
  		f->eax = create((const char*)*((int*) f->esp + 1),
  			(unsigned) *((int*) f->esp + 2));
  		break;
  	case SYS_REMOVE:
  		f->eax = remove((const char*)*((int*) f->esp + 1));
		break;
	case SYS_OPEN:
  		f->eax = open((const char*)*((int*) f->esp + 1));
  		break;
  	case SYS_FILESIZE:
  		f->eax = filesize(*((int*) f->esp + 1));
  		break;
  	case SYS_READ:
  		f->eax = read((int)*((int*) f->esp + 1),
  		 (void*)*((int*) f->esp + 2),
  		 (unsigned)*((int*) f->esp + 3));
  		break;
  	case SYS_WRITE:
  		f->eax = write((int)*((int*) f->esp + 1),
  		 (void*)*((int*) f->esp + 2),
  		 (unsigned)*((int*) f->esp + 3));
  		break;
  	case SYS_SEEK:
  		seek(*((int*) f->esp + 1),
  		 *((int*) f->esp + 2));
  		break;
	case SYS_TELL:
  		f->eax = tell(*((int*) f->esp + 1));
  		break;
  	case SYS_CLOSE:
  		close(*((int*) f->esp + 1));
  		break;
  	default:
  		break;
  }
}
 
// Caio and John driving here
void halt (void) {
	shutdown_power_off();
}

// Caio and John driving here
void exit (int status) {

	// Sets the exit status and exits
	thread_current()->birth_record->child_exit_status = status;
	thread_exit();
}

// Caio and John driving here
pid_t exec(const char* cmd_line){
	check_pointer((int*)cmd_line);

	// Get the first word in the cmd_line and execute the process
	char file_name[FILENAME_MAX];
  	int i;
  	for (i = 0; cmd_line[i] != ' '; i++) {
    	file_name[i] = cmd_line[i];
  	}
  	file_name[i] = '\0';
	pid_t pid = process_execute(cmd_line);

	// Get child's record
	struct child_record* r = get_child_record (pid);
	if (r == NULL) {
		return -1;
	}

	// If child hasn't yet loaded, wait for it
	if (!r->child_loaded) {
		r->parent_waiting = true;
		sema_down(&r->wait);
	}

	// If child has failed loading, return -1
	if (!r->child_loaded) {
		return -1;
	}

	return pid;
}

// Caio and John driving here
int wait(pid_t pid){
	return process_wait(pid);
}

// Caio and John driving here
bool create (const char *file, unsigned initial_size) {
	check_pointer((int*)file);

	// If file name is empty, return false
	if (*file == '\0') {
		return false;
	}

	// Creates file
	lock_acquire(&file_lock);
	bool success = filesys_create(file, initial_size);
	lock_release(&file_lock);

	return success;
}

// Caio and John driving here
bool remove (const char *file) {
	check_pointer((int*)file);

	// Removes file
	lock_acquire (&file_lock);
	bool success = filesys_remove (file);
	lock_release (&file_lock);

	return success;
}

// Caio and John driving here
int open (const char *file) {
	check_pointer ((int*)file);

	// Allocates a record for the file and opens it
	struct file_record* f = palloc_get_page(PAL_ZERO); 
	lock_acquire(&file_lock);
	f->file = filesys_open(file);
	lock_release(&file_lock);

	if (f->file == NULL) {
		return -1;
	}

	// Assign file a file descriptor and push it to the thread's file_record_list
	f->fd = file_descriptor;
	file_descriptor++;
	list_push_back(&thread_current()->file_record_list, &f->elem);

	return file_descriptor - 1;
}

// Caio and John driving here
int filesize (int fd) {

	// Gets file
	struct file_record* f = get_file_record (fd);
	if (f == NULL) {
		return -1;
	}

	// Gets file length
	lock_acquire(&file_lock);
	int size = file_length (f->file);
	lock_release(&file_lock);

	return size;
}

// Caio and John driving here
int read (int fd, void *buffer, unsigned size) {
	check_pointer((int*)buffer);

	int i;
	char* buffer_char = (char*) buffer;

	// If fd == 0, read from keyboard
	if (fd == 0) {
		for (i = 0; i < (int) size; i++) {
			buffer_char[i] = (char) input_getc();
		}
		buffer_char[i] = '\0';
		buffer = (void*) buffer_char;
		return i;
	}

	// Otherwise, gets file
	struct file_record* f = get_file_record (fd);
	if (f == NULL) {
		return -1;
	}

	// Reads file
	lock_acquire(&file_lock);
	int bytes = (int) file_read (f->file, buffer, size);
	lock_release(&file_lock);

	return bytes;
}

// Caio and John driving here
int write (int fd, const void *buffer, unsigned size) {
	check_pointer((int*)buffer);

	// If fd == 1, prints to sdtout
	if (fd == 1) {
		putbuf(buffer, size);
		return (int)size;
	}

	// Otherwise, gets file
	struct file_record* f = get_file_record (fd);
	if (f == NULL) {
		return -1;
	}

	// Writes to file
	lock_acquire(&file_lock);
	int bytes = (int) file_write (f->file, buffer, size);
	lock_release(&file_lock);

	return bytes;
}

// Caio and John driving here
void seek (int fd, unsigned position) {

	// Gets file
	struct file_record* f = get_file_record (fd);

	// Changes the next byte to be read or written
	lock_acquire(&file_lock);
	file_seek (f->file, position);
	lock_release(&file_lock);
}

// Caio and John driving here
unsigned tell (int fd) {

	// Gets file
	struct file_record* f = get_file_record (fd);

	// Gets the position of the next byte to be read or written
	lock_acquire(&file_lock);
	unsigned t = file_tell (f->file);
	lock_release(&file_lock);

	return t;
}

// Caio and John driving here
void close (int fd) {

	// Gets file
	struct file_record* f = get_file_record (fd);
	if (f == NULL) {
		return;
	}

	// Closes file if it isn't an executable
	lock_acquire(&file_lock);
	if (!file_deny_write (f->file)) {
		file_close(f->file);
		list_remove(&f->elem);
	}
	else {
		// Reverts decrement to deny_write_cnt if file is an executable
		file_allow_write(f->file);
	}
	lock_release(&file_lock);

}

// Caio and John driving here
// Check if user provided pointer is valid
void check_pointer (int* pointer) {

	// Checks if pointer is not null, if it's an user vaddr and if it's pagedir isn't null
	if (pointer == NULL || !is_user_vaddr(pointer) || pagedir_get_page(thread_current()->pagedir, pointer) == NULL) {
		exit(-1);
	}
}

// Caio and John driving here
// Returns a file_record (belonging to the current thread) with file descriptor fd
struct file_record* get_file_record (int fd) {
	struct list_elem *e;
	struct file_record* f;

	// Iterates through thread_current()->file_record_list looking for a file with file descriptor equal to fd
	if (!list_empty(&thread_current()->file_record_list)) {
		for (e = list_begin (&thread_current()->file_record_list); e != list_end (&thread_current()->file_record_list); e = list_next (e)) {
			f = list_entry (e, struct file_record, elem);
			if (f->fd == fd) {
				return f;
			}
		}
	}
	return NULL;
}

// Caio and John driving here
// Returns a child_record (belonging to the current thread) with process ID pid
struct child_record* get_child_record (pid_t pid) {
	struct list_elem *e;
	struct child_record* r;

	// Iterates through thread_current()->child_record_list looking for a child with process ID equal to pid
	if (!list_empty(&thread_current()->child_record_list)) {
		for (e = list_begin (&thread_current()->child_record_list); e != list_end (&thread_current()->child_record_list); e = list_next (e)) {
			r = list_entry (e, struct child_record, elem);
			if (r->tid == pid) {
				return r;
			}
		}
	}
	return NULL;
}

#ifndef USERPROG_SYSCALL_H
#define USERPROG_SYSCALL_H
#include "lib/stdbool.h"
typedef int pid_t;

void syscall_init (void);

// Caio and John driving here
void halt (void);
void exit (int status);
pid_t exec (const char* cmd_line);
int wait (pid_t pid);
bool create (const char *file, unsigned initial_size);
bool remove (const char *file);
int open (const char *file);
int filesize (int fd);
int read (int fd, void *buffer, unsigned size);
int write (int fd, const void *buffer, unsigned size);
void seek (int fd, unsigned position);
unsigned tell (int fd);
void close (int fd);

// Caio, John and Sean driving here
bool chdir (const char *dir);
bool mkdir (const char *dir);
bool readdir (int fd, const char *dir);
bool isdir (int fd);
int inumber (int fd);

// Caio and John driving here
void check_pointer (int* pointer);
struct file_record* get_file_record (int fd);
struct child_record* get_child_record (pid_t pid);

#endif /* userprog/syscall.h */

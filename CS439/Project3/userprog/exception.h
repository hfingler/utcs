#ifndef USERPROG_EXCEPTION_H
#define USERPROG_EXCEPTION_H
#include "lib/stdbool.h"
#include "vm/supplemental-table.h"
/* Page fault error code bits that describe the cause of the exception.  */
#define PF_P 0x1    /* 0: not-present page. 1: access rights violation. */
#define PF_W 0x2    /* 0: read, 1: write. */
#define PF_U 0x4    /* 0: kernel, 1: user process. */

void exception_init (void);
void exception_print_stats (void);
void check_stack_growth(void* stack_pointer, void* fault_addr, struct spte* entry, bool write);
void bring_page_from_swap(struct spte* entry);
void bring_page_from_file(struct spte* entry);

#endif /* userprog/exception.h */

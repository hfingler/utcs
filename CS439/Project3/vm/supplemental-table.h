#ifndef VM_SUPPLEMENTAL_TABLE_H
#define VM_SUPPLEMENTAL_TABLE_H

#include "lib/stdbool.h"
#include <list.h>
#include "filesys/file.h"

struct spte {
	void* vaddr;
	void* paddr;
	bool swap;
	size_t sector_offset;
	bool stack;
	bool file_system;
	bool write;
	struct file *file;
	off_t ofs;
    uint32_t page_read_bytes;
	struct list_elem elem;
	int index;
};

void init_spt(struct list* spt);
void destroy_spt(struct list* spt);

struct spte* add_spte(struct list* spt, void* vaddr);
struct spte* get_spte(struct list* spt, void* vaddr);
void remove_spte(struct list* spt, void* vaddr);

//int get_last_stack_page(struct list* spt);
void deallocate(struct spte* elem);

#endif

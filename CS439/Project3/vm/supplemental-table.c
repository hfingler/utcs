#include "lib/stdbool.h"
#include <list.h>
#include "../threads/malloc.h"
#include "../threads/palloc.h"
#include "supplemental-table.h"
#include <stdio.h>


void init_spt(struct list* spt){
	list_init(spt);
}

struct spte* add_spte (struct list* spt, void* vaddr){
	struct spte* new_entry = malloc(sizeof (struct spte));
	new_entry->vaddr = vaddr;
	list_push_back(spt, &new_entry->elem);
	return new_entry;
}

struct spte* get_spte (struct list* spt, void* vaddr){
	struct list_elem *e;
	struct spte* entry;

	// Iterates through thread_current()->file_record_list looking for a file with file descriptor equal to fd
	if (spt != NULL && !list_empty(spt)) {
		for (e = list_begin (spt); e != list_end (spt); e = list_next (e)) {
			entry = list_entry (e, struct spte, elem);
			if (entry->vaddr == vaddr)
			{
				return entry;
			}
		}
	}
	return NULL;
}

void remove_spte (struct list* spt, void* vaddr){
	struct list_elem *e;
	struct spte* entry;

	// Iterates through thread_current()->file_record_list looking for a file with file descriptor equal to fd
	if (!list_empty(spt)) {
		for (e = list_begin (spt); e != list_end (spt); e = list_next (e)) {
			entry = list_entry (e, struct spte, elem);
			if (entry->vaddr == vaddr)
			{
				list_remove(&entry->elem);
				free(entry);
				entry = NULL;
				return;
			}
		}
	}
	//printf("could not find page entry from given virtual address 0x%X\n", vaddr);
}


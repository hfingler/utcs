#include "lib/stdbool.h"
#include "threads/malloc.h"
#include "threads/palloc.h"
#include "frame-table.h"
#include "supplemental-table.h"
#include "threads/thread.h"
#include "swap.h"
#include "threads/synch.h"
#include "threads/vaddr.h"
#include "userprog/pagedir.h"

#define DEBUG 0

static struct frame** frame_table;
static int clock_hand = 0;
static int max_user_pages;
static struct lock frame_table_lock;

void init_frame (int user_pages){
	int i;
	lock_init(&frame_table_lock);
	frame_table = malloc(sizeof(struct frame*)*user_pages);
	max_user_pages = user_pages;
	for (i = 0; i < max_user_pages; i++) {
		frame_table[i] = malloc(sizeof (struct frame));
		frame_table[i]->paddr = palloc_get_page(PAL_USER);
		frame_table[i]->vaddr = NULL;
		frame_table[i]->owner = NULL;
		frame_table[i]->supp_entry = NULL;
    }
}

void insert_page_into_frame (void* new_vaddr, struct spte* new_spte) {
	
	lock_acquire(&frame_table_lock);
	struct frame* evicted = clock_algorithm();
	if (evicted->vaddr != NULL)
		evict_frame(evicted);
	insert_page(evicted, new_spte);
	clock_hand = (clock_hand + 1)%max_user_pages;
	lock_release(&frame_table_lock);
}
// "frees" the page at the given index
void free_page (struct spte* entry) {
	//frame_table[index]
	lock_acquire(&frame_table_lock);
	if (entry->index > -1 && entry->index < max_user_pages) {
		pagedir_clear_page (thread_current()->pagedir, entry->vaddr);
		//printf("Nope, not the index (%d)\n", entry->index);
		//printf("Nope, not the frame (%p)\n", frame_table[entry->index]);
		//printf("Nope, not the vaddr (%p)\n", frame_table[entry->index]->vaddr);
		frame_table[entry->index]->vaddr = NULL;
		frame_table[entry->index]->owner = NULL;
		frame_table[entry->index]->supp_entry = NULL;
	}
	lock_release(&frame_table_lock);
}

struct frame* clock_algorithm(){
	struct frame* evicted = frame_table[clock_hand];
	//loop throught the frames and stop if we reach an empty frame or a frame with the reference bit set to 0
	while(evicted->vaddr != NULL && pagedir_is_accessed (evicted->owner->pagedir, evicted->vaddr)){
		if(DEBUG){
			printf("num: %d  |||   ref:  %d\n",clock_hand, pagedir_is_accessed(evicted->owner->pagedir, evicted->vaddr));
			printf("owner && pagedir are not null\n");
		}
		// set the reference bit to 0 since the bit is currently one
		pagedir_set_accessed (evicted->owner->pagedir, evicted->vaddr, false);
		// update the clock hand 
		clock_hand = (clock_hand + 1)%max_user_pages;
		// update the frame for referencing information
		evicted = frame_table[clock_hand];
	}
	return evicted;
}
void insert_page(struct frame* f, struct spte* entry){
	///***************FRAME STRUCT***********************////
	//void* paddr;   NEVER CHANGES
	//void* vaddr;
	f->vaddr = entry->vaddr;
	//struct thread* owner;
	f->owner = thread_current();
	//struct spte* supp_entry;
	f->supp_entry = entry;
	///***************SPTE STRUCT************************////
	// 	void* vaddr; DOESN'T CHANGE
	// 	void* paddr; 
	f->supp_entry->paddr = f->paddr;
	// 	bool swap;
	if (!f->supp_entry->swap)
		f->supp_entry->sector_offset = -1;
	f->supp_entry->swap = false;
	// 	bool stack; DOESN'T CHANGE
	// 	bool file_system;  DOESN'T CHANGE, DWBI RN
	// 	bool write;        DOESN'T CHANGE
	// 	struct list_elem elem; DOESN'T CHANGE
	// 	int index;
	f->supp_entry->index = clock_hand;
	///***************PAGEDIR****************************////
    pagedir_set_page(thread_current()->pagedir, entry->vaddr, f->paddr, entry->write);
    pagedir_set_accessed(thread_current()->pagedir, entry->vaddr, true);
    ///*************************************************////
}
void evict_frame(struct frame* f){
	if(f->supp_entry->stack || pagedir_is_dirty(f->owner->pagedir, f->vaddr))
		mem_to_swap(f->supp_entry);
	f->supp_entry->paddr = NULL;
	f->supp_entry->index = -1;
	pagedir_clear_page(f->owner->pagedir, f->vaddr);
	f->vaddr = NULL;
}

void frame_lock_acquire () {
	lock_acquire(&frame_table_lock);
}

void frame_lock_release () {
	lock_release(&frame_table_lock);
}

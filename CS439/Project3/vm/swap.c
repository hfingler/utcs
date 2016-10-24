#include "swap.h"
#include <bitmap.h>
#include "lib/stdbool.h"
#include "vm/supplemental-table.h"
#include "threads/synch.h"
#include "threads/malloc.h"
#include "devices/block.h"
#include "userprog/syscall.h"

static struct lock swap_lock;

void init_swap () {
	slot_map = bitmap_create(2048);
	swap = block_get_role(BLOCK_SWAP);
	lock_init(&swap_lock);
}

void mem_to_swap (struct spte* entry) {
	//sends a page out from memory to swap
	lock_acquire(&swap_lock);
	block_sector_t sector = (block_sector_t)bitmap_scan_and_flip(slot_map, 0, 1, false);
	entry->sector_offset = sector;
	entry->swap = true;
	sector *= 8;
	int i;
	for(i = 0; i < 8; i++){
		block_write(swap, sector + i, (char*) entry->paddr + i*512);
	}
	lock_release(&swap_lock);
}

void swap_to_mem (struct spte* entry) {
	lock_acquire(&swap_lock);
	entry->swap = false;
	int i;
	for(i = 0; i < 8; i++){
		block_read(swap, entry->sector_offset*8 + i, (char*)entry->paddr + i*512);
	}
	bitmap_set (slot_map, entry->sector_offset, false);
	lock_release(&swap_lock);
	//brings in a page from swap to memory
	// we need to know what page to put the data into, and where our data is in swap
}

void free_swap (struct spte* entry) {
	bitmap_set(slot_map, entry->sector_offset, false);
}

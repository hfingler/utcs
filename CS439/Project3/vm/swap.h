#include "devices/block.h"
#include <bitmap.h>
#include "vm/supplemental-table.h"

struct bitmap* slot_map;
struct block* swap;

void init_swap (void);
void mem_to_swap (struct spte* entry);
void swap_to_mem (struct spte* entry);
void free_swap (struct spte* entry);

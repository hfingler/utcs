#include "lib/stdbool.h"
#define PAGE_CNT 1024

//  31               12 11        0
// +-------------------+-----------+
// |    Frame Number   |   Offset  |
// +-------------------+-----------+
//          Physical Address

struct frame {
    void* paddr;
    void* vaddr;
    struct thread* owner; 
    struct spte* supp_entry;
};


void init_frame (int user_pages);
void insert_page_into_frame (void* new_vaddr, struct spte* new_spte);
void free_page (struct spte* entry);
void insert_page(struct frame* f, struct spte* entry);
void evict_frame(struct frame* f);
struct frame* clock_algorithm(void);
void frame_lock_acquire (void);
void frame_lock_release (void);

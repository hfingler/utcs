#ifndef LINKEDLIST_H
#define LINKEDLIST_H

/**
 * defines the maximum length that a string can be, which is useful
 * for strcpy
 **/
#define MAX_STRING_LEN 64

typedef enum {FLOAT, STRING} linkedlist_type;

/**
 * Defines a linked data structure that can store either a float or a
 * string
 **/
typedef struct NodeElement {
  // points to the next node, otherwise NULL
  struct NodeElement* next;

  linkedlist_type type;

  union {
    float number;
    char string[MAX_STRING_LEN];
  };
} Node;

// the linked list structure
typedef struct {
  Node* head;
  Node* tail;
} LinkedList;

/** publically exposed API **/

void ll_init_list(LinkedList *my_list);

void ll_display_list(LinkedList *my_list);

void ll_add_number(LinkedList *my_list, float my_number);

void ll_add_string(LinkedList *my_list, char* my_string);


/** recommended helper functions that you should define **/

void ll_init_float_node (Node *node, float number);

void ll_init_string_node (Node *node, const char *my_string);

void ll_display_info(Node *my_node);

void ll_add_node(LinkedList *my_list, Node *my_node);

void ll_delete_list(LinkedList *my_list);

#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "linkedlist.h"

void ll_init_list(LinkedList *my_list) {
  my_list->head = NULL;
  my_list->tail = NULL;
}

void ll_add_number(LinkedList* my_list, float my_number) {
  Node *my_node = (Node*) malloc(sizeof(Node));
  ll_init_float_node(my_node, my_number);
  ll_add_node(my_list, my_node);
}

void ll_add_string(LinkedList* my_list, char* my_string) {
  Node *my_node = (Node*) malloc(sizeof(Node));
  ll_init_string_node(my_node, my_string);
  ll_add_node(my_list, my_node);
}

void ll_init_float_node (Node* node, float my_number) {
  node->number = my_number;
  node->next = 0;
  node->type = FLOAT;
};

void ll_init_string_node (Node* node, const char *my_string) {
  // Check for buffer overrun
  int srclen;
  srclen = strlen(my_string);
  if (srclen < 40) {
    strcpy(node->string, my_string);
  }

  node->type = STRING;
  node->next = 0;
}

void display_info(Node *my_node) {
  if (my_node == NULL) {
    printf("Node is uninitialized!\n");
    return;
  }

  switch (my_node->type) {
  case STRING:
    printf("String node containing %s\n", my_node->string);
    break;
  case FLOAT:
    printf("Number node containing %f\n", my_node->number);
    break;
  default:
    printf("Some unknown node type\n");
  }
}

void ll_display_list(LinkedList* my_list) {
  Node* current_node;
  current_node = my_list->head;

  while (current_node) {
    display_info(current_node);
    current_node = current_node->next;
  }
}

void ll_add_node(LinkedList* my_list, Node* my_node) {
  if (my_list->head && my_list->tail) {
    my_list->tail->next = my_node;
    my_list->tail = my_node;
  } else {
    my_list->head = my_node;
    my_list->tail = my_node;
  }
}

void ll_delete_list (LinkedList* my_list) {
  Node* current_node;
  for (current_node = my_list->head; current_node != NULL; current_node = my_list->head) {
	  my_list->head = my_list->head->next;
	  free(current_node);
  }
}

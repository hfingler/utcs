#include <stdio.h>

#include "linkedlist.h"

int main() {
  char input;
  int running = 1;
  float my_number;
  char my_string[MAX_STRING_LEN];

  LinkedList my_list;

  ll_init_list(&my_list);

  while (running) {
    printf("\nq: quit, n: add number, s: add word, d: show list\n");
    printf("--------------------------------------------------------\n");
    printf("Action: ");
    scanf(" %c", &input);
    switch (input) {
    case 'q':
	  	ll_delete_list(&my_list);
      running = 0;
      break;
    case 'n':
      printf("Type a number: ");
      scanf(" %f", &my_number);
      fflush(stdin);
      ll_add_number(&my_list, my_number);
      break;
    case 's':
      printf("Type a word: ");
      scanf(" %s", my_string);
      fflush(stdin);
      ll_add_string(&my_list, my_string);
      break;
    case 'd':
      ll_display_list(&my_list);
      break;
    default:
      printf("Unrecognized command \"%c\"\n", input);
    }
  }

}

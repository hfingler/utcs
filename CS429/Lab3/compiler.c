#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "helper.h"
#define MAX 1000

// Compiles expr
void compile (int len, char **expr) {
	int i;                    // auxiliary variable for loops
	int count;                // counts the number of elements in the stack
	char type_expr[MAX];      // type_expr[i] holds the type of expr[i]
	char asbl_expr[MAX][MAX]; // asbl_expr[i] holds the assembly code that will correspond to the execution of expr[i]
	char var[MAX][MAX];       // var[i] holds any variable (%rdi, %rsi or %rdx) or numeric value contained in asbl_expr[i]

	// header of program
	printf("	.globl compute\n");
	printf("compute:\n");

	// loops through every element of expr and generates its assembly code
	for (i = 0, count = 0; i < len; i++) {

		type_expr[i] = type(expr[i]);

		// depending on the type of expr[i], different paths can be taken
		switch (type_expr[i]) {

			// by default, if we recieve a variable, we push it into the stack
			case 'x':
				strcpy(asbl_expr[i], "	pushq %rdi\n");
				strcpy(var[i], "%rdi");
				count++;
				break;
			case 'y':
				strcpy(asbl_expr[i], "	pushq %rsi\n");
				strcpy(var[i], "%rsi");
				count++;
				break;
			case 'z':
				strcpy(asbl_expr[i], "	pushq %rdx\n");
				strcpy(var[i], "%rdx");
				count++;
				break;

			// by defalut, if we recieve an operator, we pop two operands, execute the operation and push the result into the stack
			case '*':
				// verifies that there are enough operands in the stack (and returns an error otherwise)
				if (count < 2) {
					error(2, expr[i]);
					return;
				}
				count--;
				if (type_expr[i - 1] != '*' && type_expr[i - 1] != '+' && type_expr[i - 1] != '-') {
					if (type_expr[i - 2] != '*' && type_expr[i - 2] != '+' && type_expr[i - 2] != '-') {
						strcpy(asbl_expr[i - 2], "");
						strcpy(asbl_expr[i - 1], "");
						strcpy(asbl_expr[i], "	mov ");
						strcat(asbl_expr[i], var[i - 2]);
						strcat(asbl_expr[i], ", %r10\n");
						strcat(asbl_expr[i], "	imulq ");
						strcat(asbl_expr[i], var[i - 1]);
						strcat(asbl_expr[i], ", %r10\n	pushq %r10\n");
						break;
					}
					if (asbl_expr[i - 2][strlen(asbl_expr[i - 2]) - 5] == '%') {
						asbl_expr[i - 2][strlen(asbl_expr[i - 2]) - 12] = 0;
						if (asbl_expr[i - 2][strlen(asbl_expr[i - 2]) - 2] == '0') {
							strcpy(asbl_expr[i - 1], "");
							strcpy(asbl_expr[i], "	imulq ");
							strcat(asbl_expr[i], var[i - 1]);
							strcat(asbl_expr[i], ", %r10\n	pushq %r10\n");
						}
						else {
							strcpy(asbl_expr[i - 1], "");
							strcpy(asbl_expr[i], "	imulq ");
							strcat(asbl_expr[i], var[i - 1]);
							strcat(asbl_expr[i], ", %r11\n	pushq %r11\n");
						}
						break;
					}
					strcpy(asbl_expr[i - 1], "");
					strcpy(asbl_expr[i], "	popq %r10\n	imulq ");
					strcat(asbl_expr[i], var[i - 1]);
					strcat(asbl_expr[i], ", %r10\n	pushq %r10\n");
					break;
				}
				if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 5] == '%') {
					asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 12] = 0;
					if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 2] == '0') {
						strcpy(asbl_expr[i], "	popq %r11\n	imulq %r10, %r11\n	pushq %r11\n");
					}
					else {
						strcpy(asbl_expr[i], "	popq %r10\n	imulq %r10, %r11\n	pushq %r11\n");
					}
					break;
				}
				strcpy(asbl_expr[i], "	popq %r10\n	popq %r11\n	imulq %r10, %r11\n	pushq %r11\n");
				break;
			case '+':
				// verifies that there are enough operands in the stack (and returns an error otherwise)
				if (count < 2) {
					error(2, expr[i]);
					return;
				}
				count--;
				if (type_expr[i - 1] != '*' && type_expr[i - 1] != '+' && type_expr[i - 1] != '-') {
					strcpy(asbl_expr[i - 1], "");
					strcpy(asbl_expr[i], "	addq ");
					strcat(asbl_expr[i], var[i - 1]);
					strcat(asbl_expr[i], ", (%rsp)\n");
					break;
				}
				if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 5] == '%') {
					asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 12] = 0;
					if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 2] == '0') {
						strcpy(asbl_expr[i], "	popq %r11\n	addq %r10, %r11\n	pushq %r11\n");
					}
					else {
						strcpy(asbl_expr[i], "	popq %r10\n	addq %r10, %r11\n	pushq %r11\n");
					}
					break;
				}
				strcpy(asbl_expr[i], "	popq %r10\n	popq %r11\n	addq %r10, %r11\n	pushq %r11\n");
				break;
			case '-':
				// verifies that there are enough operands in the stack (and returns an error otherwise)
				if (count < 2) {
					error(2, expr[i]);
					return;
				}
				count--;
				if (type_expr[i - 1] != '*' && type_expr[i - 1] != '+' && type_expr[i - 1] != '-') {
					strcpy(asbl_expr[i - 1], "");
					strcpy(asbl_expr[i], "	subq ");
					strcat(asbl_expr[i], var[i - 1]);
					strcat(asbl_expr[i], ", (%rsp)\n");
					break;
				}
				if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 5] == '%') {
					asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 12] = 0;
					if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 2] == '0') {
						strcpy(asbl_expr[i], "	popq %r11\n	subq %r10, %r11\n	pushq %r11\n");
					}
					else {
						strcpy(asbl_expr[i], "	popq %r10\n	subq %r11, %r10\n	pushq %r10\n");
					}
					break;
				}
				strcpy(asbl_expr[i], "	popq %r10\n	popq %r11\n	subq %r10, %r11\n	pushq %r11\n");
				break;

			// by default, if we recieve a numeric value, we push it into the stack
			case '1':
				strcpy(asbl_expr[i], "	pushq $");
				strcat(asbl_expr[i], expr[i]);
				strcat(asbl_expr[i], "\n");
				strcpy(var[i], "$");
				strcat(var[i], expr[i]);
				count++;
				break;

			// if we recieve an invalid string, returns an error
			case '0':
				error(1, expr[i]);
				return;
		}

	}

	// if there is more than one value in the stack, returns an error
	if (count != 1) {
		error(3, "");
		return;
	}

	if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 5] == '%') {
		asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 12] = 0;
		if (asbl_expr[i - 1][strlen(asbl_expr[i - 1]) - 2] == '0') {
			strcpy(asbl_expr[i], "	mov %r10, %rax\n");
		}
		else {
			strcpy(asbl_expr[i], "	mov %r11, %rax\n");
		}
	}
	else {
		strcpy(asbl_expr[i], "	popq %rax\n");
	}

	// prints the assembled code
	for (i = 0; i < len + 1; i++) {
		printf("%s", asbl_expr[i]);
	}

	printf("	retq\n");

	return;
}

int main (int len, char **expr) {

	// cleans expr and gets its updated length
	len = clean(len, expr);

	// shows the user the recieved expression
	printf("# Compiled expression: ");
	show(len, expr);

	// compiles expr
	compile(len, expr);

	return 0;
}

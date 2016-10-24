#include <stdio.h>
#include <string.h>

// Removes the name of the program from expr and return its new length
int clean (int len, char **expr) {
	int i, j;

	for (i = 0, j = 1; j < len; i++, j++) {
		expr[i] = expr[j];
	}

	return len - 1;
}

// Prints expr
void show (int len, char **expr) {
	int i;

	for (i = 0; i < len; i++) {
		printf("%s ", expr[i]);
	}
	printf("\n\n");

	return;
}

// Verifies if str represents a number (might start with + or -)
int is_num (char *str) {
	int i;

	if (str[0] == '+' || str[0] == '-' || (str[0] > 47 && str[0] < 58)) {
		for (i = 1; i < strlen(str); i++) {
			if (str[i] < 48 || str[i] > 57) { return 0; }
		}
	}
	else { return 0; }

	return 1;
}

// Returns the type of str
char type (char *str) {

	// str is variable x
	if (!strcmp(str, "x") || !strcmp(str, "X")) {
		return 'x';
	}
	// str is variable y
	else if (!strcmp(str, "y") || !strcmp(str, "Y")) {
		return 'y';
	}
	// str is variable z
	else if (!strcmp(str, "z") || !strcmp(str, "Z")) {
		return 'z';
	}
	// str is the multiplication operator
	else if (!strcmp(str, "*")) {
		return '*';
	}
	// str is the addition operator
	else if (!strcmp(str, "+")) {
		return '+';
	}
	// str is the subtraction operator
	else if (!strcmp(str, "-")) {
		return '-';
	}
	// str is a number
	else if (is_num(str)) {
		return '1';
	}
	// str is an invalid string
	else {
		return '0';
	}

}

// Prints the error messages to the right outputs
void error (int n, char *str) {

	switch (n) {
		case 1:
			fprintf(stderr, "Error 1: invalid token (%s)\n", str);
			printf("\n# Execution halted (error 1)\n");
			break;
		case 2:
			fprintf(stderr, "Error 2: the %s operator requires two arguments\n", str);
			printf("\n# Execution halted (error 2)\n");
			break;
		case 3:
			fprintf(stderr, "Error 3: insuficient operators in expression\n");
			printf("\n# Execution halted (error 3)\n");
			break;
	}

	return;
}

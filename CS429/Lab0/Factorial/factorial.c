#include <stdio.h>
#include <stdlib.h>

// Calculate the factorial of n
int fact (int n) {
	if (n == 1) return 1; // Base case
	else return n*fact(n-1); // Recursion
}

int main (int argc, const char* argv[]) {
	if (argc == 1) {
		printf("Error: please supply an integer on the command line.\n"); // If there is no argument returns an error
	}
	else {
		printf ("%d\n", fact(atoi(argv[1]))); // Print the result (argument must first be converted from string to int)
	}
	return 0;
}

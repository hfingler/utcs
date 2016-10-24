#ifndef _helper_h
#define _helper_h

// Removes the name of the program from expr and return its new length
int clean (int len, char **expr);

// Prints expr
void show (int len, char **expr);

// Verifies if str represents a number (might start with + or -)
int is_num (char *str);

// Returns the type of str
char type (char *str);

// Prints the error messages to the right outputs
void error (int n, char *str);

#endif

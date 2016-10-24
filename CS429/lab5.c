/*
 * Caio Lente (ctl684)
 * Lab 5: Cache Lab
 *
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 * 	will be graded on for Part B of the assignment. Do not change
 * 	the description string "Transpose submission", as the driver
 * 	searches for that string to identify the transpose function to
 * 	be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
	int i, j, k, l; // Auxiliary variables
	int blocksize_i, blocksize_j; // Block size variables
	int subblocksize_i, subblocksize_j; // Subblock size variables

	// Initializes variables according to matrix being transposed
	if (M == 32 && N == 32) {
		blocksize_i = 8;
		blocksize_j = 8;
		subblocksize_i = 4;
		subblocksize_j = 4;
	}
	else if (M == 64 && N == 64) {
		blocksize_i = 32;
		blocksize_j = 8;
		subblocksize_i = 16;
		subblocksize_j = 4;
	}
	else {
		blocksize_i = 11;
		blocksize_j = 5;
	}

	// If we're dealling with either a 64x64 or a 32x32 matrix
	if (M%2 == 0) {

		// Transposes the matrix through blocking and subblocking
		for (i = 0; i < N; i += blocksize_i) {
			for (j = 0; j < M; j += blocksize_j) {

				// Xˆt into X' and Wˆt into Z'
				for (k = i; k < i + subblocksize_i; k++) {
					for (l = j; l < j + subblocksize_j; l++) {
						B[l + subblocksize_j][k] = A[k][l + subblocksize_j];
						B[l + subblocksize_j][k + subblocksize_i] = A[k][l];
					}
				}
				// Zˆt into Z' (while moving Wˆt to W')
				for (k = i; k < i + subblocksize_i; k++) {
					for (l = j; l < j + subblocksize_j; l++) {
						B[l][k] = B[l + subblocksize_j][k + subblocksize_i];
						B[l + subblocksize_j][k + subblocksize_i]
						= A[k + subblocksize_i][l + subblocksize_j];
					}
				}
				// Yˆt into Y'
				for (k = i; k < i + subblocksize_i; k++) {
					for (l = j; l < j + subblocksize_j; l++) {
						B[l][k + subblocksize_i] = A[k + subblocksize_i][l];
					}
				}

			}
		}
	}

	// If we're dealing with a 61x67 matrix
	else {

		// Transposes the matrix through blocking
		for (i = 0; i < N; i += blocksize_i) {
	   	for (j = 0; j < M; j += blocksize_j) {

	      	// Transpose the block beginning at [i,j]
				if (i + blocksize_i <= N && j + blocksize_j <= M) {
	      		for (k = i; k < i + blocksize_i; k++) {
	         		for (l = j; l < j + blocksize_j; l++) {
	               	B[l][k] = A[k][l];
	         		}
	      		}
				}

			}
		}

		// Finished transposing what's left of the matrix
		for (i = 0; i < N; i++) {
			if (i == 66) { j = 0; }
			else { j = 60; }
	   	for (; j < M; j++) {
	      	for (k = i; k < i + 1; k++) {
	         	for (l = j; l < j + 1; l++) {
	            	B[l][k] = A[k][l];
	      		}
      		}
			}
		}

	}
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
   int i, j;

   for (i = 0; i < N; i++) {
      for (j = 0; j < M; j++) {
      	B[j][i] = A[i][j];
      }
   }

}

/*
 * registerFunctions - This function registers your transpose
 * 	functions with the driver.  At runtime, the driver will
 * 	evaluate each of the registered functions and summarize their
 * 	performance. This is a handy way to experiment with different
 * 	transpose strategies.
 */
void registerFunctions() {

   /* Register your solution function */
   registerTransFunction(transpose_submit, transpose_submit_desc);

   /* Register any additional transpose functions */
   registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 * 	A. You can check the correctness of your transpose by calling
 * 	it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
	int i, j;

	for (i = 0; i < N; i++) {
		for (j = 0; j < M; ++j) {
	      if (A[i][j] != B[j][i]) {
	         return 0;
	      }
	   }
	}

	return 1;
}

/* 
 * Solution by:
 *    Nurseiit Abdimomyn
 *    20172001
 *    nurs[at]unist.ac.kr
 * -----------------------
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
void trans(int M, int N, int A[N][M], int B[M][N]);
void transpose_64(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
  if (N == 64) {
    transpose_64(M, N, A, B);
    return;
  }
  int col, row;
  int i, j;
  int diag, val;
  int blocksize = 8;
  for (col = 0; col < N; col += blocksize)
    for (row = 0; row < N; row += blocksize)
      for (i = row; i < N && i < row + blocksize; i++) {
        for (j = col; j < M && j < col + blocksize; j++)
          if (i == j) {
            diag = i;
            val = A[i][j];
          } else {
            B[j][i] = A[i][j];
          }
        if (row == col)
          B[diag][diag] = val;
      }
}

void transpose_64(int M, int N, int A[N][M], int B[M][N]) {
  int i, j, row, col;
  int v0, v1, v2, v3, v4, v5, v6, v7;
  for (row = 0; row < N; row += 8)
    for (col = 0; col < M; col += 8) {
      for (i = row; i < row + 4; i++) {
        v0 = A[i][col + 0];
        v1 = A[i][col + 1];
        v2 = A[i][col + 2];
        v3 = A[i][col + 3];
        v4 = A[i][col + 4];
        v5 = A[i][col + 5];
        v6 = A[i][col + 6];
        v7 = A[i][col + 7];

        B[col + 0][i] = v0;
        B[col + 1][i] = v1;
        B[col + 2][i] = v2;
        B[col + 3][i] = v3;

        B[col + 0][4 + i] = v4;
        B[col + 1][4 + i] = v5;
        B[col + 2][4 + i] = v6;
        B[col + 3][4 + i] = v7;
      }

      for (j = col; j < col + 4; j++) {
        v0 = B[j][row + 4];
        v1 = B[j][row + 5];
        v2 = B[j][row + 6];
        v3 = B[j][row + 7];

        v4 = A[row + 4][j];
        v5 = A[row + 5][j];
        v6 = A[row + 6][j];
        v7 = A[row + 7][j];

        B[j][row + 4] = v4;
        B[j][row + 5] = v5;
        B[j][row + 6] = v6;
        B[j][row + 7] = v7;

        B[4 + j][row + 0] = v0;
        B[4 + j][row + 1] = v1;
        B[4 + j][row + 2] = v2;
        B[4 + j][row + 3] = v3;
      }

      for (i = row + 4; i < row + 8; i++)
        for (j = col + 4; j < col + 8; j++)
          B[j][i] = A[i][j];
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
  int i, j, tmp;

  for (i = 0; i < N; i++) {
    for (j = 0; j < M; j++) {
      tmp = A[i][j];
      B[j][i] = tmp;
    }
  }
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
  /* Register your solution function */
  registerTransFunction(transpose_submit, transpose_submit_desc);

  /* Register any additional transpose functions */
  registerTransFunction(trans, trans_desc);
}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
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

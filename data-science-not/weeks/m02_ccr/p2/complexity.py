"""
Your task is to
implement a function intersection(A,B,C) that
tests whether the intersection of the lists A, B, and C is empty
Assuming that the 3 lists have at most 1 element in common, in case of
not empty intersection the function prints the positions in the 3 lists at
which the common element is found.
Example:
A = [4, 7, 8, 4], B=[89, 76], C=[6,9,67]
(no intersection)

A = [4, 7, 8, 4], B=[9, 1, 7, 3, 4], C=[56, 33, 7]
intersection(A,B,C) prints the message
Intersection found at A[1], B[2], C[2]

Your solution should also print the time it took to execute the function
Note the import of the function "time" to capture the current time in your program
More info about importing modules: https://en.wikibooks.org/wiki/A_Beginner%27s_Python_Tutorial/Importing_Modules

Once you have completed your implementation, answer the following question:
What is the time complexity of your solution?
What about the worst case?
"""
from time import time

# use time() to capture the current system time in your code, e.g., start_time = time()

def intersection(A,B,C):
    """
    sleep() calls are delays of 0.3s
    introduced to make you appreciate the compelxity of the the 2 solution
    (this and slow below)
    """
    D = set(A + B + C)
    A_set = set(A)
    B_set = set(B)
    C_set = set(C)

    result = [val for val in D if val in A_set and val in B_set and val in C_set]
    # O(N log N) for I use 'set'

    for val in result:
        print('Intersection found at A[%d], B[%d], C[%d]' % (A.index(val), B.index(val), C.index(val)))
    if len(result) == 0:
        print('No intersection found!')

def intersection_slow(A,B,C):
    # O(N^3)
    for a in A:
        for b in B:
            for c in C:
                if a == b and b == c:
                    val = a
                    print('Intersection found at A[%d], B[%d], C[%d]' % (A.index(val), B.index(val), C.index(val)))
                    return
    print('No intersection found!')

if __name__ == '__main__':
    A = [4, 7, 8, 4]
    B = [89, 76]
    C = [6, 9, 67]
    print('Fast:')
    start = time()
    intersection(A,B,C)
    print('Done in %f seconds!' % (time() - start))

    print('Slow:')
    start = time()
    intersection_slow(A, B, C)
    print('Done in %f seconds!' % (time() - start))

    D = [4, 7, 8, 4]
    E = [9, 1, 7, 3, 4]
    F = [56, 33, 7]
    start = time()
    print('Fast:')
    intersection(D,E,F)
    print('Done in %f seconds!' % (time() - start))

    start = time()
    print('Slow:')
    intersection_slow(D, E, F)
    print('Done in %f seconds!' % (time() - start))

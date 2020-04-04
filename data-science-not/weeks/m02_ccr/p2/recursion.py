"""
to practice recursion, your task is to implement a recursive version of the "binary_search" algorithm
to search an element in an array (ie., a Python list, such as [89, 78, 67, 90]).
The binary search works only on SORTED arrays (in ascending or descending order), so you should implement first
 a function to check whether an array is sorted.

To understand how a binary search works, check p.155 of the book GTG
On p.156 there is a possible solution in Python, but, since it uses advanced Python constructs,
I strongly advise you NOT to look at it. Try instead to implement your own version!!!
"""
from time import sleep

def is_sorted(array):
    """
    Check if an array is sorted in ascending order (assumes an array of numbers, such as integers or float)
    :param array: the array to be checked
    :return: a message ("Array is sorted" or "Array is not sorted")
    """
    return "Array is %ssorted" % ('not ' if sorted(array) != list(array) else '')

def binary_search(array, elem, first, last):
    """
    Search for an element in an array using binary search
    :param array: array to look for element
    :param elem: the lement to look for
    :param first: the index of the first position in the array
    :param last: the index of the last position in the array
    :return: a message showing the element (if found) or "Element not found" (if not found)
    """
    if first == last:
        if array[first] == elem:
            return 'Found at %d.' % first
        return 'Element not found.'
    mid = (first + last) // 2
    if array[mid] < elem:
        return binary_search(array, elem, mid + 1, last)
    return binary_search(array, elem, first, mid)

""" main() to test the implementation"""
if __name__ == '__main__':
    # A is sorted
    A = (1,5,6,7,9,13,16,17)
    # B is not sorted
    B = (1,6,7,8,2)


    print(is_sorted(A))
    print(is_sorted(B))

    sleep(2)
    # Search for element 16 in A
    print(binary_search(A, 16, 0, len(A) - 1))
    #Serach for element 56 in A
    sleep(2)
    print(binary_search(A, 56, 0, len(A) - 1))

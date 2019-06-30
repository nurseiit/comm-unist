# Lab4 : Priority Queue

Here we will mainly use a `Priority Queue` with `heap` to implement `Dual Priority Queue` and `Find the Median`.

The lab distribution contains handy scripts and test cases for each task in addition to the skeletons.

# General rule

- You must not change the set of headers each files includes unless otherwise allowed.
Grader will check the headers and decrease your score substantially (**90%**).

# Caution

Some of the attached tests are highly computation intensive. That means, when the deadline comes,
our `uni server` may not have enough computing power to run tests for all of you. So, please start early and
finish early. I'll announce the pre-grading schedule separately.

# Task 1: Implement a Priority Queue (10 points)

## Description

You will implement the class with the name `MyPriorityQueueImpl` that inherits `MyPriorityQueue` which shows that standard behavior of `priority_queue` described here:
- [https://en.cppreference.com/w/cpp/container/priority_queue]

A difference is that you will not implement all the operations described in the reference.

Please refer to the comments for the expected behavior of each operation.

- Operations to be implemented: `Top`, `Empty`, `Size`, `Push`, `Pop` 

## Files to modify
- `MyPriorityQueueImpl.h`

## Grading criteria

- Grader will use a set of test cases generated automatically to manipulate the Queue using the operations
declared in `MyPriorityQueue.h`.

# Task 2: Implement a Dual Priority Queue (10 points)

## Description

You will implement the class with the name  `DualPriorityQueue`. A dual priority queue is a data structure that allows you to insert and delete data like a typical priority queue. The difference from a typical queue is that when deleting data, one of the highest priority data or the lowest priority data is deleted according to an operation command. For dual priority queues, two operations are used: one to insert data and one to delete data. The operation for deleting data is further divided into two types, one for deleting the highest priority and the other for deleting the lowest priority.
Suppose we have a dual-priority queue Q that stores only integers. Let's consider each integer value stored in Q itself as a priority.

When a series of operations to be applied to Q is given, write a program that finally outputs the maximum and minimum values of the data stored in Q.

In the first line of each test case, an integer k indicating the number of operations to be applied to Q is given. Each successive line of k is given a character (“D” or “I”) representing the operation and the integer N.

These are the list of commands :
- I N :  Insert the integer N into the Q. Note that the same integer can be inserted.
- D N : Delete the maximum value or minimum value. If N is 1, it means a command that deletes the maximum value from Q, and if N is -1, it means a command that deletes the minimum value of Q. Note that only one is deleted if there is more than one maximum value (minimum value) in a D command.

After all commands have been processed, print out the maximum and minimum values remaining in Q. Print the two values on one line and separate by a single space. If Q is empty, print ‘EMPTY’.

## Files to modify
- `DualPriorityQueue.cpp`

## Grading criteria
- You can use `<queue>` library from C++ STL.
- Grader will use a reference implementation to create the input-output pairs and check if submission shows the same result.

# Task 3: Find Changing Median (10 points)

## Description

You will implement FindMedian class which finds the median of a sequence of numbers. The median is the middle value when this sequence is sorted. For example, when you sort {3, 1, 5, 4, 2}, the median is 3. If the length is even, Let’s suppose the median as the smaller one of the two values in the middle. The median of the sequence may change each time when a new number is added to the sequence.

Implement a program that starts with an empty sequence and computes median value every time you add each number. For example, if numbers are added in order of 3, 1, 4, 3, 2 to the sequence, the median changes in the order of 3, 1, 3, 3, 3.

On each line of input files, an integer to be inserted is given. Print the median value on each line.  

## Files to modify
- `FIndMedian.cpp`

## Grading criteria
- You should NOT use any sorting algorithm in implementing task 3. If you use sorting algorithms, you will get NO SCORE.
- You can use `<queue>` library from C++ STL.
- Grader will use a reference implementation to create the input-output pairs and check if submission shows the same result.

## Extra

- About the testing framework, please refer to [catch2](https://github.com/catchorg/Catch2)
- About the tool being enabled for debugging, please refer to [Address Sanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer)

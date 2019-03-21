# Lab2: Utilizing and implementing Lists with iterators

- Lead TA: Yunha Han (diana438@unist.ac.kr, @yunha, Thu 17:00-18:00 @106-303)

Lately, we discussed a bit more generic form of the `list`, `vector` and `iterator`.
Here we will mainly use `list` to implement some toy applications and the other ADTs.
Unless otherwise stated, we follow the standard of `C++11`.

The lab distribution contains handy scripts and test cases for each task
in addition to the skeletons.

# General rule

- You must not change the set of headers each files includes unless otherwise allowed.
Grader will check the headers and decrease your score substantially (**90%**).

# Caution

Some of the attached tests are highly computation intensive. That means, when the deadline comes,
our `uni server` may not have enough computing power to run tests for all of you. So, please start early and
finish early. I'll announce the pre-grading schedule separately.


# Task 1: Classifying the numbers. (10 points)

## Description

You will implement the `classify` function in the `classify.cpp` file. It is supposed to
read the integers from a file `input-classify.txt` and classify them into the five groups depending
on the remainder when divided with the number five. The function will create the file 
`output-classify.txt` and write each group in each line. The ones with remainder `0` appears first,
and the ones with remainder `4` appears last. If any of the line is to be empty, skip it.

If you are note familiar with handling files with `C++`, please check `classify-ref.cpp`
which includes all the file operations needed for this lab.

### Example

- `input-classify.txt`

```
1 3 4 5 6 8
```

- `output-classify.txt`

```
5
1 6
3 8
4
```
Note that the line for the remainder 2 is skipped.

## Files to modify

- `classify.cpp`

## Grading criteria

- Grader will use a set of test cases to check the functionality.
- Grader will measure the number of file operations like open, close, or seek.
You must open and scan through the file only once like the `classify-ref.cpp` does to pass the test.
- Grader will measure the memory usage. If you try using Arrays instead of the STL list
in your implementation, it will either fail to handler larger input files or show enormous
memory cost when handling short inputs.

- Maximum input length = 10^8
- Maximum number to appear = 10000

### The rules for the output file.

The output file will have five lines at most. Each integer should be separated
with one space and there should be a newline at the end. The grader may accept some output files
that do not conform this rule exactly but it is free to reject any output that does not follow this rule.

## Testing

This command will test your code with 100 test cases.
```
./test.py --task=classify --verbose
```
It will take quite a long time (tens of minutes).

To run each inputs individually, use this command (e.g., to run the input 27).
```
./test.py --task=classify --verbose --num=27
```


# Task 2: Implementing a Queue with fixed size using an array. (10 points)

## Description

You will implement the class with the name `MyQueueImpl` that inherits `MyQueue` which shows the standard behavior
of `Queue` described here:
- [https://en.cppreference.com/w/cpp/container/queue](https://en.cppreference.com/w/cpp/container/queue)

A difference is that, you will not implement all the operations described in the reference.

Please refer to the comments for the expected behavior of each operation.

## Files to modify

- `MyQueueImpl.h`

## Grading criteria

- Grader will use a set of test cases generated automatically to manipulate the Queue using the operations
declared in `MyQueue.h`.

## Testing

You can use commands like this.
```
./test.py --task=queue --verbose
./test.py --task=queue --verbose --num=30
```


There are 50 test cases included.

# Task 3: Implementing a stack with dynamic expansion using an array. (15 points)

## Description

You will implement the class with the name `MyStackImpl` that inherits `MyStack` which shows the standard behavior
of `Stack` described here:
- [https://en.cppreference.com/w/cpp/container/queue](https://en.cppreference.com/w/cpp/container/queue)

A difference is that, you will not implement all the operations described in the reference.

Please refer to the comments for the expected behavior of each operation.

A difference from the `Queue` task is that, this `Stack` will be enlarged dynamically if it should keep more items.
Please use the *doubling* strategy that we discussed in the lecture.

## Files to modify

- `MyStackImpl.h`

## Grading criteria

- Grader will use a set of test cases generated automatically to manipulate the Queue using the operations
declared in `MyStack.h`.

## Testing

You can use commands like this.
```
./test.py --task=stack --verbose
./test.py --task=stack --verbose --num=30
```


There are 50 test cases included.


# Task 4: A toy text editor (25 points)

## Description

You will implement the `Textedir` class which implements a simple text editor.
The editor has the notion of the cursor, and allow the users to insert or delete
the characters using the cursor. Some the simplicity, though, it can handle
the lower case alphabets only. Lastly, it keeps all commands in stack so that
the user can undo any number of commands (except for the undo itself.).

Unlike the real text editor, the editor you will use expose the `process` function
only, which takes a file containing the list of commands as an input and emit
the resulting string as an output.

The commands that the input file will have are as follows, and take a look at
the test cases for the real examples and the corresponding output.

- [test-cases/textedit/0-input.txt](test-cases/textedit/0-input.txt). 
- [test-cases/textedit/0-output.txt](test-cases/textedit/0-output.txt). 

These are the list of commands:

- insert <char>: insert the character right before the cursor,
if the string is not empty. If the string is empty, the character is inserted to
the beginning and the cursor is moved to the end.
- del: remove the character right before the cursor, and do nothing if the cursor is at the beginning (including the case where the string is empty).
- undo: revert the most recent change.
- left: move the cursor to the left by one. Do nothing if the cursor is at the beginning.
- right: move the cursor to the right by one. Do nothing if the cursor is at the end.


Please refer to the comments in the code about the expected behavior of the operations,
and the additional helper function.

## Files to modify

- `Testedit.h`

## Grading criteria

- Grader will use a reference implementation to create the input-output pairs and
check if submission shows the same result.

## Testing

Again the relevant test cases are included. Please use these commands.
```
./test.py --tack=textedit --verbose
./test.py --tack=textedit --verbose --num=10
```

Testing script uses the `testTextedit.cc` file that calls the `process` function
with desired arguments.


## Extra

- About the testing framework, please refer to [catch2](https://github.com/catchorg/Catch2)
- About the tool being enabled for debugging, please refer to [Address Sanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer)
- Grader will also use MOSS to check plagiarism.





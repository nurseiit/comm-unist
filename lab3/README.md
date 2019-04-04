# Lab3: Handling arithmetic expressions with binary trees

You will be implementing a simple form of binary tree that represents and
handles arithmetic expressions.

# Task: Implement a binary tree for our arithmetic expressions.

## Description

Here we will be implementing a binary tree that is capable of representing a set of arithmetic expressions.
At last, your tree will provide roughly four operations for its users using an arbitrary number of internal
operations (i.e., private functions). The arithmetic expression will be the ones on integers; each term
will be either an integer or a string, which is an unknown variable which we will assign values later for
evaluation. The operations will be either `+`, `-`, or `*` and there will not be a parenthesis. For the simplicity,
you can assume that all variables will start with a character `v` followed by an index, e.g., when an expression
has two variables, they will be `v0` and `v1`.

We don't defined the range of values here, but they will be reasonably small so that the computations do not
take unreasonably long time. To make your life easier, the lab distribution includes a library called
[BigInt](https://github.com/faheel/BigInt). As shown in `Mytree.h`, you can declare the values as BigInt
type in this assignment.

## Files to modify

- `MyTreeImpl.h`

## Input format

You will be given the level-order list of the tree, which is always complete. Due to the assumption of
a complete tree, the level-order list defines the corresponding tree uniquely. Accordingly, 
the most fundamental
operation that you should implement would be to take them as inputs and obtain the unique tree
from them as we discussed in class.

You can find examples of inputs and whose shape under [test-case](test-case).

- [test-case/0-tree.txt](test-case/0-tree.txt)
- [test-case/0-render.txt](test-case/0-render.txt)

In addition, for the evaluation task, the assignment to each variables will also be given, like this.

- [test-case/1-assign.txt](test-case/1-assign.txt)

## The operations to be implemented (and tested)

You will be implementing these five operations which the grader will check.

1. Sanity check.

After (or while) creating the tree from the inputs, you are expected to check
the sanity of the tree. That is, 1) all internal nodes should have two children
as we only have binary operations, and also should be an operator as neither
values nor variables can have children. 2) Likewise, all the leafs should be
either values or variables. If the sanity check fails, raise `runtime_error`
as the comment on the function suggests.

2. Tree traversal - pre

You will be implementing the pre order traversal whose result will be checked by the grader.

3. Tree traversal - post

You will be implementing the post order traversal whose result will be checked by the grader.

4. Evaluation

Using the expression and the given assignment, you will calculate a value which is the evaluation
of the expression.

5. Simplification.

When an arithmetic expression has an operation whose operands are all integers, we can replace that
sub-expression with its evaluation. Here you are expected to simplify an expression until
it cannot be further simplified.

## Grading

The grader will build `testTree.cc` to test your implementation. The driver will print the lines like these.
- (valid tree) [test-case/0-output.txt](test-case/0-output.txt)
- (invalid tree) [test-case/1-output.txt](test-case/1-output.txt)

Grader will test 100 inputs. For each input, you will get the point of `the mathing lines` divided by
`the total lines`.

One more note on the grading is that, you are expected to eliminate all memory leaks. That is, if you allocate
the memory as the trees being built but do not delete them when the object is freed (through the destructor),
you will easily end up causing memory leak. The grader will use `address sanitizer` to check if such memory leak
exists (when the program terminates) and will not give you the point for the input.

## Testing

This command will test your code with 100 test cases.
```
./test.py
```
It could take quite a long time (tens of minutes).

To run each inputs individually, use this command (e.g., to run the input 27).
```
./test.py --num=27
```

To test with `address sanitizer` enabled (especially for checking leaks).

```
./test.py --asan
```

# Import Notes

1. You must not change the set of headers each files includes unless otherwise allowed.
Grader will check the headers and decrease your score substantially (**90%**).

2. Some of the attached tests might be computation intensive. That means, when the deadline comes,
our `uni server` may not have enough computing power to run tests for all of you. So, please start early and
finish early. I'll announce the pre-grading schedule separately.

# Extra

- About the testing framework, please refer to [catch2](https://github.com/catchorg/Catch2)
- About the tool being enabled for debugging, please refer to [Address Sanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer)


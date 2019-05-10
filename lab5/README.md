# Lab5: Binary Search Trees

Through this lab, you will be implementing four binary search trees that we've discussed in class.
In common, you will be implementing three interfaces, `insert`,`remove`, and `search`.

# Notes

- Driver
Each task will be tested using the corresponding driver (e.g., `driver-bst.cpp`), which is included in the lab distribution.
It takes a binary file as an input and drives your implementation. You don't need to (and should not) make changes
to the driver.

- Input format
Driver uses a binary file, which encode a sequence of tree operations. As the driver deals with
the parsing and driving part, you don't need to spend time on that part. For each input, its
text version is also included.
  - [test-cases/0.bin-input.txt](test-cases/0.bin-input.txt)

To obtain the text version of the other inputs, please use the attached program `cmd_to_string`.
For example, this will print the text version of `1.bin`.

```sh
./cmd_to_string 1.bin
```

To save it as a text file, you can use *io redirection*, as follows.

```sh
./cmd_to_string 1.bin > test-cases/1.bin-input.txt
```

- Output format
Expected output is a sequence of post order traversal results. The driver calls the post order
traversal function after running each command from the input. The traversal function is also
included in the skeleton code so that you can focus on writing the core logic. Sample outputs
are also in the test-cases directory.
  - [test-cases/0-driver-bst-output.txt](test-cases/0-driver-bst-output.txt)
  - [test-cases/0-driver-splay-output.txt](test-cases/0-driver-splay-output.txt)
  - [test-cases/0-driver-avl-output.txt](test-cases/0-driver-avl-output.txt)
  - [test-cases/0-driver-rb-output.txt](test-cases/0-driver-rb-output.txt)

- Data types.
    - Assume both the keys and data are `long` type, though the skeleton code uses some `typedef`s
      to make it a little bit more generic.

- Return types.
    - `insert` does not return anything.
    - `remove` will return `false` if it could not find the item to be removed, and will return `true` otherwise.
    - `search` will return a `struct` as declared in the skeleton, to let the caller know if it could found the key,
      and also the data.

- Tips.
    - Write some sanity check functions and call it whenever needed, while debugging your program. For example,
      when writing a red black tree, you can implement a function that checks if the tree satisfies the property or not.
      This allows you to locate the source of bug easily. In addition, implementing some `protected/private` functions
      already declared in the template would be helpful.

- Consistent behavior.

Most of the operations we have discussed are pretty well-defined, but there are non-deterministic case
when deleting a node. For consistency with the grader,  when deleting a node, please bring one from the right subtree if you can.
To let the program terminate when your check fails, you can use `assert` function.

- Headers

You must not change the set of headers each files includes unless otherwise allowed.
Grader will check the headers and decrease your score substantially (**90%**).



# Task 1: Binary Search Tree (10 points)

The goal is to implement the binary search tree. Edit, add, commit, and push the `Tree.h` file.

- Testing
```
./test.py --task=bst
```

# Task 2: Splay Tree (10 points)

The goal is to implement the binary search tree. Edit, add, commit, and push the `SplayTree.h` file.
To utilize the post-order traversal function, you may want to implement it as a derived class of the `Tree_t`.

- Testing
```
./test.py --task=splay
```


# Task 3: Red Black Tree (15 points)

The goal is to implement the binary search tree. Edit, add, commit, and push the `RBTree.h` file.
You are advised to write `check_rb` function that checks if the tree satisfies the red black tree's properties.

- Testing
```
./test.py --task=rb
```


# Task 4: AVL Tree (15 points)

The goal is to implement the binary search tree. Edit, add, commit, and push the `AVLTree.h` file.
You are advised to write `check_rb` function that checks if the tree satisfies the red black tree's properties.

- Testing
```
./test.py --task=avl
```

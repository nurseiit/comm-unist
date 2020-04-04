"""
Your task today is to implement two functions using the LinkedBinaryTree class.
The first function (build_UNIST_tree) simply returns the organisational structure of schools and departments at UNIST
stored in an instance of a linkd binary tree.
The second function (LCA) finds the common ancestor of two positions in a binary tree.

- Implement the first function
- check the main to test your implementation
- Implement the second function
- Complete the main to test your implementation of the second function

Note that a convenient function for pretty print of the content of a tree is provided below
"""

from m04_trees.p0.linked_binary_tree import LinkedBinaryTree


def build_UNIST_tree():
    """
    This function returns a (linked) binary tree that contains (a simplified and fictitious  version of)
    the organisational structure of schools and departments at UNIST.
    In particular, this function should return the following tree:

    UNIST
    --Engineering
    ----Management Engineering
    ------Big datastore
    ------Business process management
    ----Materials Engineering
    ------Wood
    ------Plastic
    --Business
    ----Business Administration

    """
    root = LinkedBinaryTree()

def LCA(T, n1, n2):
    """
    This function returns the lowest common ancestor of two positions in a tree n1 and n2.
    The LCA is the lowest position in T that has both n1 and n2 as descendants.
    :param T: the binary tree
    :param n1: position 1 in T
    :param n2: position 2 in tree
    :return: the LCA of n1 and n2
    """

    pass


def preorder_indent(T, p, d):
    """
    This function allows you to print in a "pretty" way the content of a tree.
    Elements of a tree are traversed in the "preorder" way and printed using indentation.
    It is given, you DO NOT have to complete it!

    To print the entire tree from the root use preorder_indent(tree,tree.root(),0)
    Note: you can use this function to print a sub-tree of T rooted an any position p

    Try to understand the code (in particular, note the recursive implementation!)
    """
    print(2 * d * '-' + str(p.element()))
    for c in T.children(p):
        preorder_indent(T, c, d + 1)


if __name__ == '__main__':
    tree = build_UNIST_tree()

    preorder_indent(tree, tree.root(), 0)

    """ some code showing how to find positions in a binary tree"""
    root = tree.root()
    p_engineering = tree.left(root)
    p_business = tree.right(root)
    print(p_engineering.element())
    print(p_business.element())
    p_man_eng = tree.left(p_engineering)
    print(p_man_eng.element())

    """ implement here the code to test the LCA function that you implemented """
    """
    pos1 = p_bpm
    pos2 = p_wood
    lca1 = LCA(tree, pos1, pos2)
    print("LCA of {0}, {1} is: {2}".format(pos1.element(), pos2.element(), lca1.element()))
    pos1 = p_wood
    pos2 = p_bigdata
    lca1 = LCA(tree, pos1, pos2)
    print("LCA of {0}, {1} is: {2}".format(pos1.element(), pos2.element(), lca1.element()))
    pos1 = p_b_a
    pos2 = p_bpm
    lca1 = LCA(tree, pos1, pos2)
    print("LCA of {0}, {1} is: {2}".format(pos1.element(), pos2.element(), lca1.element()))
        """

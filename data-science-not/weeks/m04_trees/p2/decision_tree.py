"""
Your task today is to implement the methods (functions) of the DecisionTree class

A Decision Tree is created using as input a file (listing decisions and outcomes).
Once created, it can be used to interact with a user (asking questions and taking a decision
based on the answers provided by the user through command line)
"""

from m04_trees.p0.linked_binary_tree import LinkedBinaryTree

class DecisionTree(LinkedBinaryTree):
    """
    Note that this class "extends" the LinkedBinaryTree class. That is, a DecisionTree inherits the behaviour of
    the LinkedBinaryTree and adds some additional behaviour (= the functions that you have to implement below)
    """

    def create_decision_tree_from_file(self, file_name):
        """
        This function should build a decision tree using a file containing the questions to be asked.
        In particular, each row the file file (see visa_decision_tree.txt for the example used in the main)
        contains 3 comma separated elements:

        <level>,<side>,<question>
        <level>: is the level in the tree of the <question> (e.g. the root is at level 0, children of the root at
                    level 1 etc.
        <side>: indicates whether the <question> is left or right child of its parent

        IMPORTANT: see the file read_write_file_example.py for a mini tutorial about how to read and write
        from a file in Python

        :param file_name: the name of the file
        """

        root = self._root
        levels = {}
        with open(file_name, 'r') as f:
            lines = f.readlines()
            for line in lines:
                [level, side, question] = line.split(',')
                level = int(level)
                if side == '-':
                    root = self._add_root(question)
                    levels[level] = root
                elif side == 'left':
                    levels[level] = self._add_left(levels[level - 1], question)
                else:
                    levels[level] = self._add_right(levels[level - 1], question)
                question = question[:-1]
                print(level, side, question)

    def use_tree(self):
        """
        Once a decision tree is created (see the code in the main to test this function),
        this function allows the user
        to navigate through the decision tree to reach a final decision.
        Input (answers) are provided by the user through command line.

        Your implemantation should handle the fact that the only allowed answers are YES and NO.
        If the user provides a non expected answer (yes, no, hjhsjhj, whatever), the question should be repeated.
        If the user provides a non expected answer 3 times, the execution will abort
        """

        valid = ['YES', 'NO']
        def answer(p, wrong=0):
            if self.left(p) == None and self.right(p) == None:
                return p.element()
            if wrong == 3:
                return 'Aborted'
            reply = input(p.element())
            if not reply in valid:
                return answer(p, wrong + 1)
            return answer(self.left(p)) if reply == 'YES' else answer(self.right(p))

        print(answer(self.root()))

    def preorder_indent(self, p, d):
        """
        This is the function to "pretty" print a tree (already seen in previous sessions)
        """

        print(2 * d * '-' + str(p.element()))
        for c in self.children(p):
            self.preorder_indent(c, d + 1)

if __name__ == '__main__':

    """ ==================== test create decision tree from file """
    visa_dt = DecisionTree()
    visa_dt.create_decision_tree_from_file("visa_decision_tree.txt")
    root = visa_dt.root()
    visa_dt.preorder_indent(root, 0)
    print("\n\n ====== Please answer the following questions...")
    visa_dt.use_tree()


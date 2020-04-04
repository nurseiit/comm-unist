# Copyright 2013, Michael H. Goldwasser
#
# Developed for use with the book:
#
#    Data Structures and Algorithms in Python
#    Michael T. Goodrich, Roberto Tamassia, and Michael H. Goldwasser
#    John Wiley & Sons, 2013
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

"""Basic example of an adapter class to provide a stack interface to Python's list."""


class ArrayStack:
    """LIFO Stack implementation using a Python list as underlying storage."""

    def __init__(self):
        """Create an empty stack."""
        self._data = []                       # nonpublic list instance

    def __len__(self):
        """Return the number of elements in the stack."""
        return len(self._data)

    def is_empty(self):
        """Return True if the stack is empty."""
        return len(self._data) == 0

    def push(self, e):
        """Add element e to the top of the stack."""
        self._data.append(e)                  # new item stored at end of list

    def top(self):
        """Return (but do not remove) the element at the top of the stack.

        Raise Empty exception if the stack is empty.
        """
        if self.is_empty():
            raise AssertionError('Stack is empty')
        return self._data[-1]                 # the last item in the list

    def pop(self):
        """Remove and return the element from the top of the stack (i.e., LIFO).

        Raise Empty exception if the stack is empty.
        """
        if self.is_empty():
            raise AssertionError('Stack is empty')
        return self._data.pop()               # remove last item from list

    def print_contents(self):
        print("Stack content: {0}".format(self._data))

if __name__ == '__main__':
    S = ArrayStack()                 # contents: [ ]
    S.push(5)                        # contents: [5]
    S.push(3)                        # contents: [5, 3]
    print(len(S))                    # contents: [5, 3];    outputs 2
    print(S.pop())                   # contents: [5];       outputs 3
    print(S.is_empty())              # contents: [5];       outputs False
    print(S.pop())                   # contents: [ ];       outputs 5
    print(S.is_empty())              # contents: [ ];       outputs True
    S.push(7)                        # contents: [7]
    S.push(9)                        # contents: [7, 9]
    print(S.top())                   # contents: [7, 9];    outputs 9
    S.print_contents()
    S.push(4)                        # contents: [7, 9, 4]
    print(len(S))                    # contents: [7, 9, 4]; outputs 3
    print(S.pop())                   # contents: [7, 9];    outputs 4
    S.push(6)                        # contents: [7, 9, 6]
    S.push(8)                        # contents: [7, 9, 6, 8]
    S.print_contents()
    print(S.pop())                   # contents: [7, 9, 6]; outputs 8
    #you can push anything in a stack, for instance you can push strings...
    S1 = ArrayStack()
    S1.push("John")
    S1.push("Doe")
    S1.print_contents()
    #...or an array!
    S2 = ArrayStack()
    S2.push(["Basic English", 60, 'B+'])
    S2.push(["ADSA", 95, 'A+'])
    S2.print_contents()

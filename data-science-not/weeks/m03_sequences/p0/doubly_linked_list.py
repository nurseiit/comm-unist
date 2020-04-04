"""
Note that this implementation of the doubly linked list is simpler and, therefore, slightly
different from the one in the GTG book.
"""

class Node:
    def __init__(self, data, prev, next):
        self._data = data
        self._prev = prev
        self._next = next


class DoublyLinkedList:
    def __init__(self):
        self._head = None
        self._tail = None

    def __len__(self):
        len = 0
        walk = self._head
        while walk is not None:
            len += 1
            walk = walk._next
        return len

    def add(self, data):
        new_node = Node(data, None, None)
        if self._head is None:
            self._head = self._tail = new_node
        else:
            new_node._prev = self._tail
            new_node._next = None
            self._tail._next = new_node
            self._tail = new_node

    def remove(self, node_value):
        current_node = self._head
        while current_node is not None:
            if current_node._data == node_value:
                # if it's not the first element
                if current_node._prev is not None:
                    current_node._prev._next = current_node._next
                    current_node._next._prev = current_node._prev
                else:
                    # otherwise we have no prev (it's None), head is the next one, and prev becomes None
                    self._head = current_node._next
                    current_node._next._prev = None

            current_node = current_node._next

    def print(self):
        current_node = self._head
        if current_node._next == None:
            print("List is empty")
        else:
            while current_node is not None:
                if current_node._next == None:
                    print(current_node._data, end="\n")
                else:
                    print(current_node._data, end=" ")
                current_node = current_node._next


if __name__ == '__main__':
    d = DoublyLinkedList()
    d.add(5)
    d.add(6)
    d.add(50)
    d.add(30)
    d.print()
    d.remove(50)
    d.remove(5)
    d.print()

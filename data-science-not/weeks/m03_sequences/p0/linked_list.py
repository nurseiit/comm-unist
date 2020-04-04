"""
Note that this implementation of the linked list is simpler and, therefore, slightly
different from the one in the GTG book.
"""

class Node:
    """Lightweight, nonpublic class for storing a singly linked node."""

    def __init__(self, element):
        self._data = element
        self._next = None


class LinkedList:
    def __init__(self):
        self._head = None

    def __len__(self):
        size = 0
        walk = self._head
        while walk is not None:
            walk = walk._next
            size += 1
        return size

    def add_first(self, e):
        """ ad an element at the start of the list (i.e., after the "head" """
        temp = Node(e)
        temp._next = self._head
        self._head = temp

    def remove_first(self):
        if self._head is None:
            print("Cannot remove, list is empty")
        else:
            self._head = self._head._next

    def print(self):
        current = self._head
        while current._next is not None:
            print(current._data, end=" ")
            current = current._next
        print(current._data, end="\n")

    # does not work if e is not in the list
    def find_and_remove(self, e):
        current = self._head
        previous = None
        stop_loop = False
        in_list = False
        while not stop_loop:
            # if end of the list
            if current == None:
                print("Element {0} not found in list".format(e))
                stop_loop = True  # to stop the while loop!
            elif current._data == e:
                print("Element {0} found in list....removed".format(e))
                stop_loop = True
                in_list = True
            else:
                previous = current
                current = current._next

        if in_list:
            if previous == None:
                self._head = current._next
            else:
                previous._next = current._next

    """ this can be done as homework!!!
    remove an element at position n"""

    def remove_at_position(self, n):
        current = self._head
        previous = None
        for i in range(n - 1):
            previous = current
            current = current._next
        if previous == None:
            self._head = current._next
        else:
            previous._next = current._next

    def insert_at_position(self, n, e):
        pass


if __name__ == '__main__':
    list = LinkedList()
    list.add_first(100)
    list.add_first(34)
    list.add_first(87)
    # list.add_last(150)
    # list.add_last(2000)
    list.print()
    list.find_and_remove(87)
    list.find_and_remove("Marco")
    list.add_first("Marco")
    list.print()
    print(str(list.__len__()))
    list.remove_at_position(3)
    list.print()
    list.remove_at_position(0)
    list.print()
    # list.print()
    # list.add_last(140)
    # list.add_first("Marco")                     # note that I can add anything to a list
    # list.add_first("John")
    # list.add_last(67)
    # list.print()
    # list.remove_at_position(3)
    print(str(list.__len__()))

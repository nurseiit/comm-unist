"""
This is a simple example that demonstrates how to use the heap-based priority queue
"""

from m04_trees.p0.adaptable_heap_priority_queue import AdaptableHeapPriorityQueue

if __name__ == '__main__':
    """ Note: it is a min-heap: highest priority means lowest priority key"""

    AH = AdaptableHeapPriorityQueue()                                           # create new queue

    loc1 = AH.add(3, "event 1")                                                 # add some events in the queue
    loc2 = AH.add(1, "event 2")
    loc3 = AH.add(5, "event 3")
    loc4 = AH.add(4, "event 4")

    print("This is the current highest priority event: {0}".format(AH.min()))   # only check, does not return the value
    print(AH.__len__())                                                         # check length of queue
    print("Dequeue next event: {0}".format(AH.remove_min()))                    # removes and returns the highest priority event
    print(AH.__len__())                                                         # check length of queue
    print("This is the current highest priority event: {0}".format(AH.min()))   # only check, does not return the value
    AH.update(loc3, 0, "event 3")                                               # updates the priority of one event
    print("This is the current highest priority event: {0}".format(AH.min()))   # only check, does not return the value
    print("Dequeue next event: {0}".format(AH.remove_min()))
    print("Dequeue next event: {0}".format(AH.remove_min()))
    print("Dequeue next event: {0}".format(AH.remove_min()))
    print(AH.__len__())                                                         # check length of queue


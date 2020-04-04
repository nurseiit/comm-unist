"""
Your task is to complete the implementation of a simple flight landing control simulator using
the AdaptableHeapPriorityQueue class.

NOTE: the AdaptableHeapPriorityQueue class implements a min-heap, that is, the HIGHEST priority is given to the
elements with the LOWEST value of the priority attributes (e.g., priority = 2 has HIGHEST priority than priority = 3)

The simulator reads events from a text file (see flight_control.txt for the example used in the main) and
processes events based on the following logic:

The tasks to perform depend on the type of event. There are 5 types of events:

1) "flight_no,type" : a new flight has approached the airport airspace and it is ready to queue for landing
flight_no : a string like XX1234, e.g. AZ1234, KY0987
type : can be "short", "national", or "long"
When approaching the airport airspace, by default short flights are assigned priority 2, national flight priority 4,
and long flights priority 6

2) "flight,land" : the next flight with highest priority (= lowest value of the priority attribute) in the queue must land
(note: we will use min-heaps, so highest priority means minimum value of the priority attribute,
that is, a flight A with priority 2 must land before a flight B with priority 3)

3) "weather,rain start" : it starts raining!!!!
Flights beginning with "AZ" use very old aircrafts that cannot handle rain very well, so their priority must
be decreased of 2 when rain starts

3) "weather,rain stopped" : it stopped raining!!!!
Priority of flights beginning with "AZ" must be increased by 2 to restore "normal" priorities

4) "flight_no,sick passenger" : there is a sick passenger on board flight flight_no!!!!!
Priority of flight flight_no must be set to 1

5) "flight_no,fuel low" : the fuel level on flight flight_no is low!!!!
Priority of flight flight_no must be set to 1

Hints for implementation:
- FLC is initalised with 3 members:
    (1) an adaptable heap priority queue to implement the landing queue
    (2) a dictionary that stores the "locator" in the queue and the priority of the flight, e.g. self._locator[AZ1234] = [locator,2]
    (3) a reference to the file containing the events

- check adapted_heap_example.py to play with the behaviour of the adaptable heap priority queue datastore structure
- check read_write_file_example.py to understand how to read comma-separated lines from a file

Other hints:
- while raining some AZ flights may have landed!
- to really make it look like a simulation, you can delay the processing of each event of 2 seconds (remember sleep() from week 2...)
- the simulator should print meaningful messages while reading events and processing them
- try not to implement everything in one method, but split your logic into different methods (see the provided
skeleton of the class)
"""

from time import sleep

from m04_trees.p0.adaptable_heap_priority_queue import AdaptableHeapPriorityQueue


class FlightLandingControl():

    def __init__(self, event_file):
        """
        This function initialises the simulator.
        This function is given, you DO NOT have to COMPLETE it!
        :param event_file: the file containing the "events" received by flight control
        """
        self._queue = AdaptableHeapPriorityQueue()
        self._locator = {}
        self._event_file = event_file

    def _add_flight(self, priority, flight_no):
        """
        This function adds a flight to the queue.
        To help you, this function is GIVEN, you do not have to COMPLETE it!
        :param priority: the priority level of the flight
        :param flight_no: the flight
        :return:
        """
        loc = self._queue.add(priority, flight_no)
        self._locator[flight_no] = [loc, priority]
        print('Add flight %s with %d.' % (flight_no, priority))

    def _update(self, new_priority, flight_no):
        """
        This function updates the level of priority of a flight in the queue
        :param new_priority: the new level of priority
        :param flight_no: the flight
        """
        [loc, old_priority] = self._locator[flight_no]
        self._queue.update(loc, new_priority, flight_no)
        self._locator[flight_no] = [loc, new_priority]

    def _land(self):
        """
        This function simulates the landing of a flight by printing a message e.g.:
        "Flight AZ1100 landed!"
        """
        [priority, flight_no] = self._queue.remove_min()
        del self._locator[flight_no]
        print('Flight %s landed!' % flight_no)

    def _process_event(self, line):
        """
        This function should process one event contained in one "line" of the events file.
        :param line: a string representing the event, e.g. KK8989,sick passenger; flight,land; AZ1012,national etc.
        """
        [first, second] = line.split(',')
        second = second[:-1]

        if first == 'weather':
            weather = {'rain start': -2, 'rain stop': 2}
            delta = weather[second]
            for flight_no in self._locator:
                [loc, priority] = self._locator[flight_no]
                self._update(max(priority + delta, 0), flight_no)
            print('Update by %d due to weather' % delta)

        elif first == 'flight' and second == 'land':
            self._land()
        else:
            if second == 'sick passenger' or second == 'fuel low':
                self._update(1, first)
            else:
                priorities = {'short': 2, 'national': 4, 'long': 6}
                self._add_flight(priorities[second], first)


    def process_event_file(self):
        """
        This should be the main loop of your simulator, which opens the event file and, for each line, calls the
        self._process_event(line) function to process a single event.
        """
        with open(self._event_file, "r") as f:
            lines = f.readlines()
            for line in lines:
                self._process_event(line)

if __name__ == '__main__':
    """ ========== Use this code to test some events in your simulator
    FLC = FlightLandingControl()
    FLC.add_flight(2, "AZ2525")
    FLC.add_flight(5, "AZ6666")
    FLC.add_flight(3, "AZ5555")
    FLC.check_next()
    FLC.land()
    FLC.add_flight(2, "AZ7777")
    FLC.check_next()
    FLC.update(1,"AZ5555")
    FLC.add_flight(7, "AZ0000")
    FLC.add_flight(1, "KK0000")
    FLC.land()
    FLC.land()
    FLC.land()
    FLC.land()
    FLC.land()
    # simulate flight control by reading from a file """

    # " ============================================= "
    """ Use this code to test your simulator """
    FLC = FlightLandingControl("flight_control.txt")
    FLC.process_event_file()

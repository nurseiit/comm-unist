# Lab6: Directed Graphs and Dijkstra’s Algorithm 


# Lead TAs:
- Nguyen Thanh Nguyen(ntnguyen@unist.ac.kr, @nguyenthanh)
- Ki Hwan Kim (kh1875@unist.ac.kr, @kihwan)

# Description

In this lab, you will learn how to implement the adjacency list structure for
directed graphs and Dijkstra’s algorithm for solving the single-source,
shortest-path problems. The test files simulate the abbreviated names
of airports and the distances among them.

There are 2 files that you have to complete, which are
`AdjacencyListDirectedGraph.h` and `FlightMap.cpp`.

# Task 1 : Implementing an Adjacency List Representation for Directed Graphs (20 points)

In this task, you will implement a directed graph by using adjacency list. You
will complete the `AdjacencyListDirectedGraph` class in
`AdjacencyListDirectedGraph.h`, which contains the headers of all member
functions described in Sections 13.1.1, 13.2.2 and 13.4 of our textbook. All
you need to do is to implement these member functions following the
adjacency list structure in the textbook.

Each `Vertex` object provide implements operations to access the
vertex’ element and information regarding incident edges and adjacent
vertices.

Each `Edge` object implements the operations to access the edge’s
end vertices and information regarding the edge’s incidence relationships. 

To simulate a real flight map, there are **no recursion** (self loop) edges,
and **no isolated vertices** (vertices that have no edges). That is,
there are no edge whose source and sync are the same vertex (self loop).

The driver file (`driver-graph.cpp`) will test these 4 main operations in each
graph:

*  `insertVertex`: add a new vertex to the graph
*  `insertDirectedEdge`: add a new edge to the graph
*  `eraseVertex`: remove a vertex from the graph
*  `eraseEdge`: remove connection from the graph

# Files to modify
* `AdjacencyListDirectedGraph.h`

# Task 2 : Implementing Dijkstra's Algorithm (20 points)

You will implement Dijkstra's Algorithm for finding **all** the shortest routes
in a Flight Map by inheriting the class `FlightMap.h`. You have to complete
these 2 operations in `FlightMap.cpp`. The `FlightMap.cpp` file includes some
reference functions that you can refer to or use to check for yourself.

*  `calcRouteDistance`: calculate total distance of a route, which is a list of
   airport names.
*  `findShortestRoute`: return **all** shortest routes between a given origin
   airport and destination airport.

In `findShortestRoute` function, you will return a vector of routes, in which
each route is a list of vertices you have found.

If the origin and destination vertices have no routes, return the distance as
-1 and empty vector of routes. 

If the origin and destination vertices are the same, return distance as 0 and
the origin vertex only.

# Files to modify
* `FlightMap.cpp`

# Testing

*  Task 1: This command will test your code with 100 cases. ``` ./test.py
   --task=graph ```
*  Task 2: This command will test your code with 100 cases. ``` ./test.py
   --task=dijkstra ```

# Grading criteria
* You can use `<queue>` library from C++ STL.
* To simplify the implementation, you are allowed to assume that vertices and
  edges passed as arguments to the member functions are **never “NULL”** (i.e.,
          they always refer to a vertex object or an edge object).
* Grader will use a reference implementation to create the input-output pairs
  and check if submission shows the same result.

# Notes The input files will be in these forms:
* [test-cases/0-graph.txt](https://class.unicss.org/cse221-2019-spring/lab6-prep/blob/master/test-cases/0-graph.txt):
   This is the directed graph you will work with in both tasks.
* [test-cases/0-removeAirport.txt](https://class.unicss.org/cse221-2019-spring/lab6-prep/blob/master/test-cases/0-removeAirport.txt):
   This contains the vertices you will remove from the graph.
* [test-cases/0-removeConnection.txt](https://class.unicss.org/cse221-2019-spring/lab6-prep/blob/master/test-cases/0-removeConnection.txt):
   This contains the edges you will remove from the graph.
* [test-cases/0-dijkstra](https://class.unicss.org/cse221-2019-spring/lab6-prep/blob/master/test-cases/0-dijkstra.txt):
   Each line contains the origin and destination airport you need to calculate
   the shortest routes.

The output files will be in these forms:
* [test-cases/0-output.txt](https://class.unicss.org/cse221-2019-spring/lab6-prep/blob/master/test-cases/0-output.txt):
   This is the output for the task 1. The first line are all the vertices in
   your graph. Below is the adjacency list of your graph of each vertex and the
   value (distance) of each edge. This is the output after removing vertices
   and edges.

* [test-cases/0-output-dijkstra.txt](https://class.unicss.org/cse221-2019-spring/lab6-prep/blob/master/test-cases/0-output-dijkstra.txt):
   This is the output for the task 2 including the distances and all the
   shortest routes in each case of the input dijkstra file. 

Some of the attached tests are highly computation intensive. That means, when
the deadline comes, our uni server may not have enough computing power to run
tests for all of you. So, please start early and finish early. I'll announce
the pre-grading schedule separately. # Extra

- About the tool being enabled for debugging, please refer to [Address
  Sanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer)

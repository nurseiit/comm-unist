#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <exception>
#include <stdexcept>
#include <queue>
#include <map>
#include <list>
#include "AdjacencyListDirectedGraph.h"
#include "FlightMap.h"

FlightMap::FlightGraph::Vertex FlightMap::findOrCreateAirport(const string &airport) {
  try {
    return airport_db.at(airport);
  } catch (const out_of_range &e) {
    return (airport_db[airport] = flight_graph.insertVertex(airport));
  }
}

bool FlightMap::findAirport(FlightGraph::Vertex &vertex, const string &airport) {
  try {
    vertex = airport_db.at(airport);
    return true;
  } catch (const out_of_range &e) {
    return false;
  }
}

void FlightMap::printConnection(const FlightGraph::Edge &edge) {
  cout << *edge.origin() << " -> " << *edge.dest() << " (" << *edge << ")";
}

bool FlightMap::isAirportExist(const string &airport) {
  try {
    airport_db.at(airport);
    return true;
  } catch (const out_of_range &e) {
    return false;
  }
}

bool FlightMap::isConnectionExist(const string &airport1, const string &airport2) {
  FlightGraph::Vertex v1, v2;
  if (findAirport(v1, airport1) && findAirport(v2, airport2)) {
    return v1.isOutgoingTo(v2);
  } else {
    return false;
  }
}

void FlightMap::readFromFile(const string &filename) {
  ifstream infile(filename.c_str());

  if (!infile.is_open()) {
    throw runtime_error("Cannot open the file.");
  }

  // read all data first, make sure there is no data corruption
  int count = 0;
  list<string> airports1, airports2;
  list<double> distances;

  string a1, a2;
  double dist;
  while (infile.good()) {
    if (infile >> a1) {
      if (infile >> a2 >> dist) {
        airports1.push_back(a1);
        airports2.push_back(a2);
        distances.push_back(dist);
        if (isConnectionExist(a1, a2)) {
          // throw runtime_error("Connection (" + a1 + " -> " + a2 + ") has already existed.");
          continue;
        }
      } else {
        throw runtime_error("Data corrupted in the file.");
      }
    } else {
      break;  // no more data
    }
    count++;
  }
  infile.close();

  // store the data in flight_graph
  list<string>::const_iterator airport_iter1 = airports1.begin();
  list<string>::const_iterator airport_iter2 = airports2.begin();
  list<double>::const_iterator dist_iter = distances.begin();
  for (int i = 0; i < count; i++) {
    FlightGraph::Vertex v1 = findOrCreateAirport(*airport_iter1);
    FlightGraph::Vertex v2 = findOrCreateAirport(*airport_iter2);
    if (v1.isOutgoingTo(v2)) {
      // throw runtime_error("Connection (" + *v1 + " -> " + *v2 + ") is duplicated.");
      continue;
    } else {
      flight_graph.insertDirectedEdge(v1, v2, *dist_iter);
    }
    airport_iter1++;
    airport_iter2++;
    dist_iter++;
  }
}

void FlightMap::addAirport(const string &airport) {
  if (isAirportExist(airport)) {
    //throw runtime_error(airport + "has already existed.");
    return;
  } else {
    airport_db[airport] = flight_graph.insertVertex(airport);
  }
}

void FlightMap::removeAirport(const string &airport) {
  FlightGraph::Vertex v;
  if (findAirport(v, airport)) {
    flight_graph.eraseVertex(v);
    airport_db.erase(airport);
  } else {
    //throw runtime_error(airport + " do not exist.");
    return;
  }
}

void FlightMap::addConnection(const string &airport1, const string &airport2, double dist) {
  FlightGraph::Vertex v1, v2;
  if (!findAirport(v1, airport1)) {
    //throw runtime_error(airport1 + " does not exist.");
    return;
  }
  if (!findAirport(v2, airport2)) {
    // throw runtime_error(airport2 + " does not exist.");
    return;
  }
  if (dist <= 0.0) {
    //throw runtime_error("Distance must be a positive number.");
    return;
  }
  if (v1.isOutgoingTo(v2)) {
    //throw runtime_error("Connection (" + airport1 + " -> " + airport2 + ") has already existed.");
    return;
  }
  flight_graph.insertDirectedEdge(v1, v2, dist);
}

void FlightMap::addRoundTripConnection(const string &airport1, const string &airport2, double dist) {
  FlightGraph::Vertex v1, v2;
  if (!findAirport(v1, airport1)) {
    //throw runtime_error(airport1 + " does not exist.");
    return;
  }
  if (!findAirport(v2, airport2)) {
    //throw runtime_error(airport2 + " does not exist.");
    return;
  }
  if (dist <= 0.0) {
    //throw runtime_error("Distance must be a positive number.");
    return;
  }
  if (v1.isOutgoingTo(v2) || v2.isOutgoingTo(v1)) {
    //throw runtime_error("Connection between " + airport1 + " and " + airport2 + " exist.");
    return;
  }
  flight_graph.insertDirectedEdge(v1, v2, dist);
  flight_graph.insertDirectedEdge(v2, v1, dist);
}

void FlightMap::removeConnection(const string &airport1, const string &airport2) {
  FlightGraph::Vertex v1, v2;
  if (!findAirport(v1, airport1)) {
    //throw runtime_error(airport1 + " does not exist.");
    return;
  }
  if (!findAirport(v2, airport2)) {
    //throw runtime_error(airport2 + " does not exist.");
    return;
  }
  if (!v1.isOutgoingTo(v2)) {
    // throw runtime_error(airport1 + " does not connect to " + airport2 + ".");
    return;
  }
  FlightGraph::Edge edge = v1.outgoingEdge(v2);
  flight_graph.eraseEdge(edge);
}

list<string> FlightMap::printAirports() {
  list<string> aps;
  FlightGraph::VertexList vlist = flight_graph.vertices();
  for (FlightGraph::VertexItor iter = vlist.begin(); iter != vlist.end(); ++iter) {
    aps.push_back(**iter);
  }
  return aps;
}

map<string, list<string>> FlightMap::printOutgoingConnections() {
  map<string, list<string>> adjlist;

  FlightGraph::VertexList vlist = flight_graph.vertices();
  for (FlightGraph::VertexItor iter = vlist.begin(); iter != vlist.end(); ++iter) {
    adjlist[**iter] = {};

    FlightGraph::EdgeList elist = iter->outgoingEdges();
    if (elist.empty()) continue;

    for (FlightGraph::EdgeItor eter = elist.begin(); eter != elist.end(); ++eter) {
      adjlist[**iter].push_back(*(eter->dest()) + " " + to_string(int(**eter)) + " ");
    }
  }
  return adjlist;
}

void FlightMap::printFlightMap() {
  cout << "Airports: " << endl;
  FlightGraph::VertexList vlist = flight_graph.vertices();
  for (FlightGraph::VertexItor iter = vlist.begin(); iter != vlist.end(); ++iter) {
    cout << "  " << **iter;
  }
  cout << endl;
  cout << "Flight Connections: " << endl;
  FlightGraph::EdgeList edge_list = flight_graph.edges();
  for (FlightGraph::EdgeItor iter = edge_list.begin(); iter != edge_list.end(); ++iter) {
    cout << "  " << *(iter->origin()) << " -> " << *(iter->dest()) << " (Distance = " << **iter << ")" << endl;
  }
  cout << "Outgoing Connections: " << endl;
  for (FlightGraph::VertexItor iter = vlist.begin(); iter != vlist.end(); ++iter) {
    cout << "  " << **iter << " ->";
    FlightGraph::EdgeList elist = iter->outgoingEdges();
    for (FlightGraph::EdgeItor iter = elist.begin(); iter != elist.end(); ++iter) {
      cout << " " << *(iter->dest()) << " (" << **iter << ") ";
    }
    cout << endl;
  }
}

void FlightMap::printAirportInfo(const string &airport) {
  FlightGraph::Vertex v;
  if (!findAirport(v, airport)) {
    throw runtime_error(airport + " do not exist.");
  }
  cout << "Airport Name: " << *v << endl;
  cout << "Incident Connections:" << endl;
  FlightGraph::EdgeList edge_list = v.incidentEdges();
  for(FlightGraph::EdgeItor iter = edge_list.begin(); iter != edge_list.end(); ++iter) {
    cout << "  ";
    printConnection(*iter);
    cout << endl;
  }
  cout << "Adjacent to these airports:" << endl;
  cout << " ";
  FlightGraph::VertexList all_vertex_list = flight_graph.vertices();
  for(FlightGraph::VertexItor iter = all_vertex_list.begin(); iter != all_vertex_list.end(); ++iter) {
    if (v.isAdjacentTo(*iter)) {
      cout << " " << **iter;
    }
  }
  cout << endl;
  cout << "Outgoing connections to these airports:" << endl;
  cout << " ";
  for(FlightGraph::VertexItor iter = all_vertex_list.begin(); iter != all_vertex_list.end(); ++iter) {
    if (v.isOutgoingTo(*iter)) {
      cout << " " << **iter;
    }
  }
  cout << endl;

  cout << "All outgoing connections:" << endl;
  FlightGraph::EdgeList elist = v.outgoingEdges();
  for(FlightGraph::EdgeItor iter = elist.begin(); iter != elist.end(); ++iter) {
    cout << "  ";
    printConnection(*iter);
  }
  cout << endl;

  int count = 0;
  for(FlightGraph::VertexItor iter = all_vertex_list.begin(); iter != all_vertex_list.end(); ++iter) {
    if (v == *iter) {
      count++;
    }
  }
  if (count != 1) {
    throw runtime_error("Cannot have more than one airport: " + airport + ".");
  }
}

void FlightMap::printConnectionInfo(const string &airport1, const string &airport2) {
  FlightGraph::Vertex v1, v2;
  if (!findAirport(v1, airport1)) {
    throw runtime_error(airport1 + " does not exist.");
  }
  if (!findAirport(v2, airport2)) {
    throw runtime_error(airport2 + " does not exist.");
  }
  if (!v1.isOutgoingTo(v2)) {
    throw runtime_error(airport1 + " does not connect to " + airport2 + ".");
  }
  FlightGraph::Edge edge = v1.outgoingEdge(v2);

  cout << "Connection: ";
  printConnection(edge);
  cout << (edge.isDirected()?" directed":" undirected") << endl;

  cout << "Incident airports: ";
  FlightGraph::VertexList end_vertices = edge.endVertices();
  cout << *(end_vertices.front()) << " and " << *(end_vertices.back()) << endl;
  if (end_vertices.size() != 2) {
    throw runtime_error("Cannot have more than two endpoints.");
  }
  if ( !( end_vertices.front() == edge.origin()) ) {
    throw runtime_error("Origin is different from the front endpoint.");
  }
  if ( !( end_vertices.back() == edge.dest()) ) {
    throw runtime_error("Destination is different from the back endpoint.");
  }
  if ( !( edge.origin() == edge.opposite(edge.dest()) ) ) {
    throw runtime_error("Origin is not the opposite of the destination.");
  }
  if ( !( edge.dest() == edge.opposite(edge.origin()) ) ) {
    throw runtime_error("Destination is not the opposite of the origin.");
  }
  cout << "All incident vertices:" << endl;
  cout << " ";
  FlightGraph::VertexList all_vertex_list = flight_graph.vertices();
  for(FlightGraph::VertexItor iter = all_vertex_list.begin(); iter != all_vertex_list.end(); ++iter) {
    if (edge.isIncidentOn(*iter)) {
      cout << " " << **iter;
    }
  }
  cout << endl;

  cout << "All adjacent connections:" << endl;
  FlightGraph::EdgeList all_edge_list = flight_graph.edges();
  for(FlightGraph::EdgeItor iter = all_edge_list.begin(); iter != all_edge_list.end(); ++iter) {
    if (edge.isAdjacentTo(*iter)) {
      cout << "  ";
      printConnection(*iter);
      cout << endl;
    }
  }

  int count = 0;
  for(FlightGraph::EdgeItor iter = all_edge_list.begin(); iter != all_edge_list.end(); ++iter) {
    if (edge == *iter) {
      count++;
    }
  }
  if (count != 1) {
    throw runtime_error("This connection appears more than one time.");
  }
}

// Calculate route distance
double FlightMap::calcRouteDistance(const list<string> route) {
  if (route.empty())
    return -1;
  double len = 0;
  auto prev = route.begin(), next = route.begin();
  next++;
  while (next != route.end()) {
    try {
      FlightGraph::Vertex from = findOrCreateAirport(*prev);
      FlightGraph::Vertex to = findOrCreateAirport(*next);
      FlightGraph::Edge edge = from.outgoingEdge(to);
      len += *edge;
    } catch (runtime_error &e) {
      return 0;
    }
    next++;
    prev++;
  }
  return len;
}

// Using dijkstra to find shortest path
list<string> FlightMap::findShortestRoute(const string &airport1, const string &airport2) {
  auto from = findOrCreateAirport(airport1);
  auto to = findOrCreateAirport(airport2);
  
  auto vertices = flight_graph.vertices();

  map<string, double> dp;

  for (auto it : vertices)
    dp[*it] = INT_MAX;
  dp[*from] = 0;
  
  priority_queue<pair<double, FlightGraph::Vertex>> q;
  map<string, string> parent;
  q.push({0, from});

  while (!q.empty()) {
    auto vertex = q.top().second;
    double cur_dp = -q.top().first;
    q.pop();
    if (cur_dp > dp[*vertex])
      continue;
    auto edges = vertex.outgoingEdges();
    for (auto it : edges) {
      auto dest = it.dest();
      double len = *it;
      if (dp[*vertex] + len < dp[*dest]) {
        dp[*dest] = dp[*vertex] + len;
        parent[*dest] = *vertex;
        q.push({-dp[*dest], dest});
      }
    }
  }
  if (dp[*to] == INT_MAX)
    return {};

  list<string> path;
  string cur = *to;
  do {
    path.push_front(cur);
    if (parent.count(cur) > 0)
      cur = parent[cur];
    else
      return {};
  } while (cur != *from);
  path.push_front(*from);
  return path;
}

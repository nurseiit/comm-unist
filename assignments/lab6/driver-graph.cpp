#include "FlightMap.h"
#include <iostream>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
#include <map>
using namespace std;

int main(int argc, char* argv[]) {
  FlightMap flight_graph;
  string graph(argv[1]), rm_air(argv[2]), rm_con(argv[3]);

  //std::ifstream fingraph(graph);	
  ifstream finair(rm_air);
  ifstream fincon(rm_con);

  flight_graph.readFromFile(graph);

  while (!fincon.eof()) {
    string airport1, airport2;
    fincon >> airport1;
    fincon >> airport2;
    flight_graph.removeConnection(airport1, airport2);
  }
  while (!finair.eof()) {
    string airport;
    finair >> airport;
    flight_graph.removeAirport(airport);
  }
  list<string> allAirports = flight_graph.printAirports();
  allAirports.sort();

  map<string, list<string>> adjlist = flight_graph.printOutgoingConnections();
  string out = "";

  for (auto it = allAirports.begin(); it != allAirports.end(); it++) {
    out = out + *it + " ";
  }
  out += "\n";

  for (auto it = adjlist.begin(); it != adjlist.end(); it++) {
    out = out + it->first + " ";
    if (it->second.empty()) {
      out += "\n";
      continue;
    }

    list<string> temp = it->second;
    temp.sort();
    for (auto iit = temp.begin(); iit != temp.end(); iit++) {
      out = out + *iit;
    }
    out += "\n";
  }

  ofstream fout(argv[4]);
  fout << out;
  fout.close();
  return 0;
}

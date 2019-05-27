#include "FlightMap.h"
#include <iostream>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
#include <list>
#include <iterator>
using namespace std;

int main(int argc, char* argv[]) {
	FlightMap flight_graph;
	string graph(argv[1]), dijkstra(argv[5]);// , rm_air(argv[2]), rm_con(argv[3]);
	string out;

	ifstream infile(dijkstra.c_str());

	if (!infile.is_open()) {
		throw runtime_error("Cannot open the file.");
	}

	// read all data first, make sure there is no data corruption
	list<string> airport_origin, airport_dest;

	flight_graph.readFromFile(graph);

	string a1, a2;
	int count = 0;
	while (infile.good()) {
		if (infile >> a1) {
			if (infile >> a2) {
				airport_origin.push_back(a1);
				airport_dest.push_back(a2);
			}
			else {
				throw runtime_error("Data corrupted in the file.");
			}
		}
		else {
			break;  // no more data
		}
		count++;
	}
	infile.close();

	list<string>::const_iterator airport_iter1 = airport_origin.begin();
	list<string>::const_iterator airport_iter2 = airport_dest.begin();

	for (int i = 0; i < count; i++) {
		list<string> routes = flight_graph.findShortestRoute(*airport_iter1, *airport_iter2);
		if (routes.empty()) routes = {*airport_iter1, *airport_iter2};
		airport_iter1++;
		airport_iter2++;

		double distance = flight_graph.calcRouteDistance(routes);

		out = out + to_string(int(distance)) + " \n";
	}

	ofstream fout(argv[4]);
	fout << out;
	fout.close();
	return 0;
}
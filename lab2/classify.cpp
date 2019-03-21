#include <fstream>
#include <list>
#include <iostream>

using namespace std;


void classify(void) {

    ifstream fin;
    ofstream fout;
    
    fin.open("input-classify.txt",std::fstream::in | std::fstream::out);
   
    
    
    fout.open("output-classify.txt", std::fstream::out);
    
}


int main(int argc, char* argv[]) {
    classify();
}

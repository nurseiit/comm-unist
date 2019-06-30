#include <fstream>
#include <iostream>

using namespace std;


void classify(void) {

    ifstream fin;
    ofstream fout;
    fin.open("input.txt",std::fstream::in | std::fstream::out);
    fout.open("output.txt", std::fstream::out);
    int buffer;
    while(!fin.eof()) {
        fin >> buffer;
        if(fin.eof()) break;
        fout << buffer << " " << endl;
    }

}


int main(int argc, char* argv[]) {
    classify();
}

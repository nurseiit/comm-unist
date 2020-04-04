#include "SplayTree.h"
#include <iostream>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
using namespace std;


struct Op {
  long key, data;
  short kind;
};

template<typename T>
string drive_one(vector<Op>& ops) {
  T t;
  string ret;
  for(auto op: ops) {
    switch(op.kind) {
      case 0:
        t.insert(op.key,op.data);
        ret += t.to_string_pre_order();
        ret += "\n";
        break;
      case 1:
        t.remove(op.key);
        ret += t.to_string_pre_order();
        ret += "\n";
        break;
      default:
        t.search(op.key);
        ret += t.to_string_pre_order();
        ret += "\n";
    }
  }
  return ret;
}

string drive(vector<Op>& ops) {
  return drive_one<SplayTree_t>(ops);
}

int main(int argc, char* argv[]) {
  if(argc != 3 && argc != 2) return 1;
  /* opcode:1 operand:16 */
  string fname(argv[1]);
  std::ifstream fin(fname,ios::binary);
  std::vector<uint8_t> buf(istreambuf_iterator<char>(fin),{});
  std::vector<Op> ops;
  for(size_t i = buf.size(); i > 8; i-=8) {
    size_t base = buf.size() - i;
    Op o;
    o.kind = buf[base];
    o.key = o.data = 0;
    for(size_t j = 4; j > 0; j-=1) {
      o.key |= buf[base + 1 + (4-j)] << (8 * (j-1));
    }
    for(size_t j = 3; j > 0; j-=1) {
      o.data |= buf[base + 5 + (3-j)] << (8 * (j-1));
    }
    ops.push_back(o);
  }
  string out = drive(ops);

  if(argc == 2) {
    cout << out;
    return 0;
  }
  ofstream fout(argv[2]);
  fout << out;
  fout.close();
  return 0;
}

#include <fstream>
#include <iostream>
#include <list>
#include <queue>
#include <stack>
#include <vector>
#include "MyTree.h"

using namespace std;

struct Vertex {
  string raw;
  BigInt val;
  Vertex(string raw = "") : raw(raw) {}

  bool isOperation() {
    return raw == "-" || raw == "+" || raw == "*";
  }

  bool isRawNumber() {
    for (auto it : raw)
      if ('0' > it || it > '9') return false;
    return true;
  }

  bool isVariable() {
    return isOperation() == false && isRawNumber() == false;
  }
};

class MyTreeImpl : public MyTree {
 private:
  vector<int> value;
  vector<Vertex> tree;
  int root;

  string post, pre;

  ifstream cin;

  void openFile(string inFile) {
    if (cin.is_open())
      cin.close();
    cin.open(inFile);
  }

  bool verify(int v) {
    if (v >= tree.size()) return false;
    int count = 0;
    count += verify(v + v);
    count += verify(v + v + 1);
    if (count == 0 && tree[v].isOperation())
      throw runtime_error("An operation with no children – invalid!");
    if (count == 1)
      throw runtime_error("Vertex with single child – invalid!");
    if (count != 0 && tree[v].isOperation() == false)
      throw runtime_error("Non-operation vertex has a child – invalid!");
    return true;
  }

  BigInt calculate(int v) {
    if (v >= tree.size()) throw runtime_error("Tree is invalid!");
    if (tree[v].isOperation()) {
      BigInt left = calculate(v + v);
      BigInt right = calculate(v + v + 1);
      BigInt result;
      if (tree[v].raw == "+")
        result = left + right;
      else if (tree[v].raw == "-")
        result = left - right;
      else if (tree[v].raw == "*")
        result = left * right;
      else
        throw runtime_error("Unknown operation { " + tree[v].raw + " }!");
      return result;
    } else {
      return tree[v].val;
    }
  }

  void build_post(int v) {
    if (v >= tree.size()) return;
    build_post(v + v);
    build_post(v + v + 1);
    post += (post.empty() ? "" : " ") + tree[v].raw;
  }

  void build_pre(int v) {
    if (v >= tree.size()) return;
    pre += (pre.empty() ? "" : " ") + tree[v].raw;
    build_pre(v + v);
    build_pre(v + v + 1);
  }
  // TODO
  void rebuild(int v) {
    if (v >= tree.size()) return;
  }

 public:
  MyTreeImpl() : MyTree() {
    tree.clear();
    tree.push_back(Vertex());
    root = 1;
  }

  void load(string& input_name) {
    openFile(input_name);
    string next;
    while (cin >> next)
      tree.push_back(Vertex(next));
    verify(root);
  }

  string traverse_post(void) {
    post = "";
    build_post(root);
    return post;
  }
  string traverse_pre(void) {
    pre = "";
    build_pre(root);
    return pre;
  }
  BigInt eval(string& assign_file_name) {
    openFile(assign_file_name);
    string name;
    int val;
    while (cin >> name >> val)
      value.push_back(val);
    int index = 0;
    for (auto& vertex : tree) {
      if (vertex.isVariable()) {
        if (index < value.size())
          vertex.val = BigInt(value[index]);
        else
          throw runtime_error("Too many variables to assign!");
        index++;
      } else if (vertex.isRawNumber()) {
        vertex.val = BigInt(vertex.raw);
      }
    }
    if (index != value.size())
      throw runtime_error("Not enough variables to assign!");
    return calculate(root);
  }
  void simplify(void) {
    rebuild(root);
  }
};

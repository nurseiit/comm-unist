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
    if (isOperation() == true) return false;
    for (auto it : raw) {
      if (it == '-') continue;
      if ('0' > it || it > '9') return false;
    }
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

  /*
   * Opens file for `cin`.
   */
  void openFile(string inFile) {
    if (cin.is_open())
      cin.close();
    cin.open(inFile);
  }

  /*
   * Recursively validates the `tree` for correctness.
   * Throws `runtime_error`.
   */
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

  /*
   * Applies `operation` on `left` and `right` variables.
   * Throws `runtime_error`.
   */
  BigInt evaluateBy(string operation, BigInt left, BigInt right) {
    BigInt result;
    if (operation == "+")
      result = left + right;
    else if (operation == "-")
      result = left - right;
    else if (operation == "*")
      result = left * right;
    else
      throw runtime_error("Unknown operation { " + operation + " }!");
    return result;
  }

  /*
   * Recursively evaluates the operations on `tree`.
   * Throws `runtime_error`.
   */
  BigInt calculate(int v) {
    if (v >= tree.size()) throw runtime_error("Tree is invalid!");
    if (tree[v].isOperation()) {
      BigInt left = calculate(v + v);
      BigInt right = calculate(v + v + 1);
      BigInt result = evaluateBy(tree[v].raw, left, right);
      return result;
    } else {
      return tree[v].val;
    }
  }

  /*
   * Recursively obtains post-order
   * traversal of the `tree`.
   * Usually called from `root`.
   */
  void build_post(int v) {
    if (v >= tree.size()) return;
    if (tree[v].isRawNumber() == false) {
      build_post(v + v);
      build_post(v + v + 1);
    }
    post += (post.empty() ? "" : " ") + tree[v].raw;
  }

  /*
   * Recursively obtains pre-order
   * traversal of the `tree`.
   * Usually called from `root`.
   */
  void build_pre(int v) {
    if (v >= tree.size()) return;
    pre += (pre.empty() ? "" : " ") + tree[v].raw;
    if (tree[v].isRawNumber() == false) {
      build_pre(v + v);
      build_pre(v + v + 1);
    }
  }

  /*
   * Recursively simplifies the `tree`.
   */
  void rebuild(int v) {
    if (v >= tree.size()) return;
    if (!tree[v].isOperation()) return;
    rebuild(v + v);
    rebuild(v + v + 1);
    if (v + v + 1 >= tree.size()) return;
    bool isLeftSimple = tree[v + v].isRawNumber();
    bool isRightSimple = tree[v + v + 1].isRawNumber();
    if (isLeftSimple && isRightSimple) {
      tree[v].val = evaluateBy(tree[v].raw, tree[v + v].val, tree[v + v + 1].val);
      tree[v].raw = tree[v].val.to_string();
    }
  }

 public:
  MyTreeImpl() : MyTree() {
    value.clear();
    tree.clear();
    tree.push_back(Vertex());
    root = 1;
  }

  /*
   * Loads the tree from file `input_name`.
   * Throws `runtime_error` if the tree is invalid.
   */
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

  /*
   * Evaluates the expression with the assignment
   * given in file `assign_file_name`.
   */
  BigInt eval(string& assign_file_name) {
    openFile(assign_file_name);

    // Read and Save the values.
    string name;
    int val;
    while (cin >> name >> val)
      value.push_back(val);

    // Try to match variables to assignments.
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

  /*
   * Simplifies the `tree` until it cannot be further simplified.
   */
  void simplify(void) {
    rebuild(root);
  }
};

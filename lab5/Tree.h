#ifndef __TREE_H__
#define __TREE_H__
#include <cassert>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

typedef long long int ll;

struct Node {
  ll key;
  ll data;
  Node *parent, *left, *right;
  short meta;  // To keep color for RB or balancing factor for AVL

  Node(ll key, ll data, short meta = 0)
    : key(key), data(data), meta(meta) {
      parent = left = right = NULL;
    }

  Node(Node* parent, Node* left, Node* right)
    : parent(parent), left(left), right(right) {}
};

typedef Node* pNode;

struct Data {
  ll data;
  bool valid;

  Data(ll data = 0, bool valid = false) 
    : data(data), valid(valid) {}
};

class Tree_t {
  protected:
    pNode root;

  string to_string(pNode node);
  string to_string_pre_order(pNode node);

  public:
    Tree_t() {
    }
    ~Tree_t() {
    }

    /*
     * insert, remove, search: The interfaces that you should implement.
     * When removing an internal node, we replace it with the smallest
     * one on its right subtree, to use a single reference output.
     */
    void insert(ll key, ll data) {
    }

    /*
     * Removes the key.
     * Returns `true` if successful or `false`.
     */
    bool remove(ll key) {
      return true;
    }

    void search(ll key) {
    }

    string to_string_pre_order(void) {
      return to_string_pre_order(root);
    }
};

/*
 * [GRADER]
 */
string Tree_t::to_string(pNode node) {
  if (!node) return string("EMPTY");
  stringstream ret;
  ret << "<" << node->key << "," << node->data << "> (" << node->meta << ")";
  return ret.str();
}

/*
 * [GRADER]
 */
string Tree_t::to_string_pre_order(pNode node) {
  stringstream ret;
  if (node) {
    ret << to_string(node) << endl;
    if (node->left) ret << to_string_pre_order(node->left);
    if (node->right) ret << to_string_pre_order(node->right);
  }
  return ret.str();
}
#endif

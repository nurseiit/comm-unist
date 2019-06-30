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
    : parent(parent), left(left), right(right) {
      meta = 0;
    }
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

    void add(pNode &node, ll key, ll data) {
      if (node == 0)
        node = new Node(key, data);
      else if (key < node->key)
        add(node->left, key, data);
      else if (key > node->key)
        add(node->right, key, data);
      else {
        node->data = data;
      }
    }

    pNode find(pNode node, ll key) {
      if (node == 0)
        return 0;
      else if (key < node->key)
        return find(node->left, key);
      else if (key > node->key)
        return find(node->right, key);
      else
        return node;
    }

    pNode leftest(pNode node) {
      if (node->left == 0)
        return node;
      return leftest(node->left);
    }

    pNode remove(pNode node, ll key) {
      if (node == 0)
        return node;
      if (key < node->key) {
        node->left = remove(node->left, key);
      } else if (key > node->key) {
        node->right = remove(node->right, key);
      } else {
        // key matches.
        if (node->left == 0 || node->right == 0) {
          // has one or no children.
          pNode foo = (node->left == 0 ? node->right : node->left);
          delete node;
          return foo;
        } else {
          // has both children.
          pNode foo = leftest(node->right);
          // copy leftest's key / data.
          node->key = foo->key;
          node->data = foo->data;
          // remove leftest.
          node->right = remove(node->right, foo->key);
        }
      }
      return node;
    }

    /*
     * Clean up the subtree of `node`.
     */
    void purge(pNode &node) {
      if (node == 0)
        return;
      purge(node->left);
      purge(node->right);
      delete node;
    }


  public:
    Tree_t() {
      root = 0;
    }
    ~Tree_t() {
      purge(root);
    }

    /*
     * Inserts key / data pair or updates if the key is present.
     */
    void insert(ll key, ll data) {
      add(root, key, data);
    }

    /*
     * Removes the key / data pair if exists.
     */
    void remove(ll key) {
      root = remove(root, key);
    }

    /*
     * Searches by key, returns:
     * `true` if exists,
     * `false` otherwise.
     */ 
    bool search(ll key) {
      pNode foo = find(root, key);
      if (foo == 0)
        return false;
      return true;
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

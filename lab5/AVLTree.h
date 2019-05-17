#include "Tree.h"

class AVLTree_t : public Tree_t {

  /*
   * Helper functions
   */
  short height(pNode node) {
    return node ? node->meta : 0;
  }
  short factor(pNode node) {
    return height(node->right) - height(node->left);
  }
  void fixHeight(pNode &node) {
    short hl = height(node->left);
    short hr = height(node->right);
    node->meta = (hl > hr ? hl : hr) + 1;
  }

  /*
   * Removes leftest node of the subtree
   */
  pNode removeLeftest(pNode node) {
    assert(node != 0);
    if (node->left == 0)
      return node->right;
    node->left = removeLeftest(node->left);
    return balance(node);
  }

  pNode rotateRight(pNode node) {
    assert(node && node->left);
    pNode foo = node->left;
    node->left = (foo ? foo->right : 0);
    foo->right = node;
    fixHeight(node);
    fixHeight(foo);
    return foo;
  }

  pNode rotateLeft(pNode node) {
    assert(node && node->right);
    pNode foo = node->right;
    node->right = foo->left;
    foo->left = node;
    fixHeight(node);
    fixHeight(foo);
    return foo;
  }

  pNode balance(pNode node) {
    assert(node != 0);
    fixHeight(node);
    if (factor(node) == 2) {
      if (factor(node->right) < 0)
        node->right = rotateRight(node->right);
      return rotateLeft(node);
    } else if (factor(node) == -2) {
      if (factor(node->left)> 0)
        node->left = rotateLeft(node->left);
      return rotateRight(node);
    }
    return node;
  }

  void add(pNode &node, ll key, ll data) {
    if (node == 0)
      node = new Node(key, data, 1);
    else if (key < node->key)
      add(node->left, key, data);
    else if (key > node->key)
      add(node->right, key, data);
    else
      node->data = data;
    node = balance(node);
  }

  pNode remove(pNode node, ll key) {
    if (node == 0)
      return node;
    if (key < node->key) {
      node->left = remove(node->left, key);
    } else if (key > node->key) {
      node->right = remove(node->right, key);
    } else {
      pNode left = node->left;
      pNode right = node->right;
      delete node;
      if (right == 0)
        return left;
      pNode leftest = Tree_t::leftest(right);
      leftest->right = removeLeftest(right);
      leftest->left = left;
      return balance(leftest);
    }
    return balance(node);
  }


  public: 

  void insert(ll key, ll data) {
    add(root, key, data);
  }

  void remove(ll key) {
    root = remove(root, key);
  }
  string to_string(pNode node);
  string to_string_pre_order(pNode node);

  string to_string_pre_order(void) {
    return to_string_pre_order(root);
  }
};

/*
 * [GRADER]
 */
string AVLTree_t::to_string(pNode node) {
  if (!node) return string("EMPTY");
  stringstream ret;
  ret << "<" << node->key << "," << node->data << "> (" << -factor(node) << ")";
  return ret.str();
}

/*
 * [GRADER]
 */
string AVLTree_t::to_string_pre_order(pNode node) {
  stringstream ret;
  if (node) {
    ret << to_string(node) << endl;
    if (node->left) ret << to_string_pre_order(node->left);
    if (node->right) ret << to_string_pre_order(node->right);
  }
  return ret.str();
}

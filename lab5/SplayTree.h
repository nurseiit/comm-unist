#include "Tree.h"

class SplayTree_t : public Tree_t {

  /*
   * Helper methods.
   */
  void setParent(pNode &node, pNode parent) {
    if (node != 0)
      node->parent = parent;
  }
  void keepParent(pNode &node) {
    assert(node != 0);

    setParent(node->left, node);
    setParent(node->right, node);
  }

  void rotate(pNode &parent, pNode &child) {
    assert(parent != 0);
    assert(child != 0);

    pNode grand = parent->parent;
    if (grand != 0) {
      if (grand->left == parent)
        grand->left = child;
      else
        grand->right = child;
    }
    if (parent->left == child) {
      parent->left = child->right;
      child->right = parent;
    } else {
      parent->right = child->left;
      child->left = parent;
    }
    keepParent(child);
    keepParent(parent);
    child->parent = grand;
  }

  pNode splay(pNode node) {
    assert(node != 0);
    if (node->parent == 0)
      return node;
    pNode parent = node->parent;
    pNode grand = parent->parent;
    if (grand == 0) {
      rotate(parent, node);
      return node;
    } else {
      bool flag = (grand->left == parent) == (parent->left == node);
      if (flag) {
        rotate(grand, parent);
        rotate(parent, node);
      } else {
        rotate(parent, node);
        rotate(grand, node);
      }
      return splay(node);
    }
  }

  pNode find(pNode node, ll key) {
    if (node == 0)
      return 0;
    if (node->key == key)
      return splay(node);
    if (key < node->key && node->left)
      return find(node->left, key);
    else if (key > node->key && node->right)
      return find(node->right, key);
    return splay(node);
  }

  void split(pNode node, ll key, pNode &left, pNode &right) {
    if (node == 0) {
      left = right = 0;
      return;
    }
    node = find(node, key);
    if (node->key == key) {
      left = node->left;
      right = node->right;
      setParent(left, 0);
      setParent(right, 0);
      return;
    }
    if (node->key < key) {
      right = node->right;
      node->right = 0;
      setParent(right, 0);
      left = node;
    } else {
      left = node->left;
      node->left = 0;
      setParent(left, 0);
      right = node;
    }
  }

  pNode merge(pNode left, pNode right) {
    if (left == 0 || right == 0)
      return left ? left : right;
    right = find(right, left->key);
    setParent(left, right);
    right->left = left;
    return right;
  }

  void add(pNode &node, ll key, ll data) {
    pNode left = 0, right = 0;
    split(node, key, left, right);
    node = new Node(0, left, right);
    node->key = key;
    node->data = data;
    keepParent(node);
  }

  public:

  SplayTree_t() : Tree_t() {
    root = 0;
  }

  void insert(ll key, ll data) {
    add(root, key, data);
  }

  void remove(ll key) {
    root = find(root, key);
    if (root) {
      setParent(root->left, 0);
      setParent(root->right, 0);
      root = merge(root->left, root->right);
    }
  }

  bool search(ll key) {
    pNode node = find(root, key);
    if (node == 0)
      return false;
    return node->key == key;
  }
};

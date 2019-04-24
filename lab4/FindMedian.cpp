#include <algorithm>
#include <fstream>
#include <functional>
#include <iostream>
#include <ostream>
#include <queue>
#include <sstream>
#include <string>
#include <vector>
using namespace std;

template <typename T, bool isMax>
class Rename {
  struct treap {
    treap *left, *right;
    T val;
    int y;
    size_t size;

    treap(T val, int y, treap *left = NULL, treap *right = NULL)
        : val(val), y(y), left(left), right(right) {
      size = 1 + (left ? left->size : 0) + (right ? right->size : 0);
    }
  };
  typedef treap *Treap;

  size_t size(Treap t) {
    return t ? t->size : 0;
  }

  void updateSize(Treap &t) {
    if (t == NULL) return;
    t->size = size(t->left) + size(t->right) + 1;
  }

  Treap merge(Treap a, Treap b) {
    if (a == NULL || b == NULL)
      return a ? a : b;
    if (a->y > b->y) {
      Treap now = merge(a->right, b);
      return new treap(a->val, a->y, a->left, now);
    } else {
      Treap now = merge(a, b->left);
      return new treap(b->val, b->y, now, b->right);
    }
  }

  void split(Treap t, T val, Treap &a, Treap &b) {
    if (t == NULL)
      a = b = NULL;
    else if (t->val > val) {
      split(t->left, val, a, t->left);
      b = t;
      updateSize(b);
    } else {
      split(t->right, val, t->right, b);
      a = t;
      updateSize(a);
    }
  }

  void add(Treap &t, T val) {
    Treap a, b;
    split(t, val, a, b);
    Treap c = new treap(val, rand());
    t = merge(merge(a, c), b);
    return;
  }
  void show(Treap t) {
    if (t == NULL) return;
    show(t->left);
    cout << (isMax ? -t->val : t->val) << " ";
    show(t->right);
  }

  void removeAll(Treap &t, T val) {
    Treap a, b, c;
    split(t, val - 1, a, b);
    split(b, val, c, b);
    t = merge(a, b);
    return;
  }

  T valueAt(Treap t, int index) {
    while (t) {
      size_t leftSize = size(t->left);
      if (leftSize == index) return t->val;
      t = leftSize > index ? t->left : t->right;
      if (leftSize < index)
        index -= leftSize + 1;
    }
    return -1;
  }

  Treap root;

 public:
  Rename() {
    root = NULL;
  }

  void add(T val) {
    add(root, isMax ? -val : val);
  }

  T valueAt(int index) {
    return isMax ? -valueAt(root, index) : valueAt(root, index);
  }

  T top() {
    return valueAt(0);
  }

  void removeAll(T val) {
    removeAll(root, isMax ? -val : val);
  }

  size_t size() {
    return size(root);
  }

  void show() {
    show(root);
    puts("");
  }
};

int main(int argc, char *argv[]) {
  if (argc > 1) {
    freopen(argv[0], "r", stdin);
    freopen(argv[1], "w", stdout);
  }
  Rename<int, false> tree;

  int val;

  while (cin >> val) {
    tree.add(val);
    int index = tree.size() / 2 - (tree.size() % 2 == 0);
    int med = tree.valueAt(index);
    cout << med << endl;
  }
  return 0;
}

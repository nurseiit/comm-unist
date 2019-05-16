#include "Tree.h"

class SplayTree_t : public Tree_t {
  void splay(pNode node) {
  }

  /*
   * Checks if the splayed node is at the root
   */
  bool isSplayed(ll key) {
    if (root == 0)
      return false;
    return root->key == key;
  }

  public:

  SplayTree_t() : Tree_t() {
    root = 0;
  }

  void insert(ll key, ll data) {}

  void remove(ll key) {}

  bool search(ll key) {
    return false;
  }
};

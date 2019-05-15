#include "Tree.h"

class SplayTree_t : public Tree_t {

  /*
   * It should be a good idea to implement separate splay function.
   */
  void splay(Node_t* n) {
  }

  /*
   * check if the splayed on is at the root
   */
  void check_splayed(my_key_t k) {
  }

  public:
  
  SplayTree_t() : Tree_t() {
    root = nullptr;
  }
  
  void insert(my_key_t key, data_t data) {
  }
  
  Return_t search(my_key_t key) {
  }
  
  bool remove(my_key_t key) {
  }
};

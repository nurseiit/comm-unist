#include "Tree.h"

class AVLTree_t : public Tree_t {

  /*
   * This is an optional helper function that you may want to implement
   * to check if the tree satisfies the condition of AVL tree
   */
  long check_bf(Node_t* n) {

    return 0;
  }


  /*
   * You may want to implement a balance function separately.
   */
  Node_t* balance(Node_t* a) {
    return nullptr;
  }

  /*
   * You may want to override the recursive insertion function.
   */
  Node_t* insert_internal(my_key_t key, data_t data) {
    return nullptr;
  }

  /*
   * You may want to override t he recursive remove function
   */
  void remove_node(Node_t* n) {
  }


  public: 
  /*
   * This time you may need to override these two only.
   * For debugging, you may want to uncomment the check functions.
   */
  void insert(my_key_t key, data_t data) {
    //check_bf(root);
    //check_order();
  }
  bool remove(my_key_t key) {
    //check_bf(root);
    //check_order();
    return false;
  }
};

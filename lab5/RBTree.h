#include "Tree.h"

/*
 * You may want these to set the meta field to make your code more readable.
 */
#define BLACK 0  
#define RED 1

class RBTree_t : public Tree_t {
    /* 
     * You may want to implement this for debugging
     */
    size_t check_rb(Node_t* n) {
        return 0;
    }

    /*
     * Unlike the AVL case, you may want to have a separate function
     * to balance the tree after an insertion and an removal.
     */
    void balance_insert(Node_t* n) {
    }

    void balance_remove(Node_t* n, bool left) {
    }

    /*
     * You may want to override the recursive removal function
     */
    void remove_node(Node_t* n) {
    }
    public:
    /*
     * This time you may need to override these two only.
     * For debugging, you may want to uncomment the check functions.
     */
    void insert(my_key_t key, data_t data) {
        //check_rb(root);
        //check_order();
    }
    bool remove(my_key_t key) {
        //check_rb(root);
        //check_order();
    }
};

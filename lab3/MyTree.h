#include <string>
#include "BigInt.hpp"
using namespace std;

class MyTree {
 public:
  /*
   * Load the tree from the file input_name.
   * Throw runtime_error if the tree is not valid.
   */
  virtual void load(string& input_name) = 0;
  /*
   * Print the post-order list from the tree.
   * Please refer to the test-case outputs for the exact format.
   */
  virtual string traverse_post(void) = 0;
  /*
   * Print the pre-order list from the tree.
   * Please refer to the test-case outputs for the exact format.
   */
  virtual string traverse_pre(void) = 0;
  /*
   * Evaluate the expression with the assignment given in the
   * assign_file_name.
   */
  virtual BigInt eval(string& assign_file_name) = 0;
  /*
   * Simplify the tree until it cannot be further simplified.
   */
  virtual void simplify(void) = 0;
};

#ifndef __DOUBLY_LINKED_LIST_H__
#define __DOUBLY_LINKED_LIST_H__

using namespace std;

#include "List.h"

class Linked {
  public:
    int value;
    Linked *left, *right;

    Linked(int value = 0) : value(value) {
      left = right = NULL;
    }
};

class DoublyLinkedList: public List {
  Linked* Front;
  Linked* Back;
  size_t length;

  public:
    DoublyLinkedList() {
      length = 0;
      Front = Back = NULL;
    }

    /*
     * returns –
     *    true: if empty
     *    false: otherwise
     */
    bool empty() const {
      return length == 0;
    }

    /*
     * returns the first element of the list
     * throws `runtime_error` exception if the list is empty
     */
    int& front() const {
      if (empty()) throw runtime_error("List is Empty!");
      return Front->value;
    };

    /*
     * returns the last element of the list
     * throws `runtime_error` exception if the list is empty
     */
    int& back() const {
      if (empty()) throw runtime_error("List is Empty!");
      return Back->value;
    }

    /*
     * inserts an item at the beginning of the list
     */
    void add_front(const int& e) {
      Linked *now = new Linked(e);
      if (empty()) {
        Front = Back = now;
      } else {
        now->right = Front;
        Front->left = now;
        Front = now;
      }
      length += 1;
    }

    /*
     * removes the first element 
     * throws `runtime_error` exception if the list is empty
     */
    void remove_front() {
      if (empty()) throw runtime_error("List is Empty!");
      Linked *temp = Front;
      Front = Front->right;
      if (Front)
        Front->left = NULL;
      length -= 1;
      free(temp);
    }

    /*
     * inserts an item at the back of the list
     */
    void add_back(const int& e) {
      Linked *now = new Linked(e);
      if (empty()) {
        Front = Back = now;
      } else {
        now->left = Back;
        Back->right = now;
        Back = now;
      }
      length += 1;
    }

    /*
     * removes the last element
     * throws `runtime_error` exception if the list is empty
     */
    void remove_back() {
      if (empty()) throw runtime_error("List is Empty!");
      Linked *temp = Back;
      Back = Back->left;
      if (Back)
        Back->right = NULL;
      length -= 1;
      free(temp);
    }

    /*
     * returns the number of items in the list
     */
    size_t get_size() const {
      return length;
    }

    /*
     * returns a string representation of the list in order.
     * e.g., for a list [1,2,3,4], 
     * 1 2 3 4
     */
    string to_string() {
      string result = "";
      Linked* now = Front;
      while (now) {
        result += ('0' + now->value);
        now = now->right;
      }
      return result;
    };

    /*
     * returns a string representation of the list in reverse order.
     * e.g., for a list [1,2,3,4], 
     * 4 3 2 1
     */
    string to_reverse_string() {
      string result = "";
      Linked* now = Back;
      while (now) {
        result += ('0' + now->value);
        now = now->left;
      }
      return result;
    };
};
#endif
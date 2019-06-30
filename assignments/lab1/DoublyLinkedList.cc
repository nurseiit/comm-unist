#include "DoublyLinkedList.h"
#include <stdexcept>
#include <string>

using namespace std;

DoublyLinkedList::DoublyLinkedList() {
  length = 0;
  Front = Back = NULL;
}

/*
 * returns –
 *    true: if empty
 *    false: otherwise
 */
bool DoublyLinkedList::empty() const {
  return length == 0;
}

/*
 * returns the first element of the list
 * throws `runtime_error` exception if the list is empty
 */
int& DoublyLinkedList::front() const {
  if (empty()) throw runtime_error("List is Empty!");
  return Front->value;
};

/*
 * returns the last element of the list
 * throws `runtime_error` exception if the list is empty
 */
int& DoublyLinkedList::back() const {
  if (empty()) throw runtime_error("List is Empty!");
  return Back->value;
}

/*
 * inserts an item at the beginning of the list
 */
void DoublyLinkedList::add_front(const int& e) {
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
void DoublyLinkedList::remove_front() {
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
void DoublyLinkedList::add_back(const int& e) {
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
void DoublyLinkedList::remove_back() {
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
size_t DoublyLinkedList::get_size() const {
  return length;
}

/*
 * returns a string representation of the list in order.
 * e.g., for a list [1,2,3,4], 
 * 1 2 3 4
 */
string DoublyLinkedList::to_string() {
  string result = "";
  Linked* now = Front;
  while (now) {
    result += intToStr(now->value) + " ";
    now = now->right;
  }
  return result;
};

/*
 * returns a string representation of the list in reverse order.
 * e.g., for a list [1,2,3,4], 
 * 4 3 2 1
 */
string DoublyLinkedList::to_reverse_string() {
  string result = "";
  Linked* now = Back;
  while (now) {
    result += intToStr(now->value) + " ";
    now = now->left;
  }
  return result;
};

string DoublyLinkedList::intToStr(int x) {
  string result = "";
  if (x < 0) {
    result += "-";
    x = -x;
  }
  do {
    result += (x % 10 + '0');
    x /= 10;
  } while (x > 0);
  return result;
}
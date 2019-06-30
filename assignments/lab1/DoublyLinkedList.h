#ifndef __DOUBLY_LINKED_LIST_H__
#define __DOUBLY_LINKED_LIST_H__

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
    DoublyLinkedList();

    bool empty() const;

    int& front() const;

    int& back() const;

    void add_front(const int& e);

    void remove_front();

    void add_back(const int& e);

    void remove_back();

    size_t get_size() const;

    string to_string();

    string to_reverse_string();

    string intToStr(int x);
};
#endif
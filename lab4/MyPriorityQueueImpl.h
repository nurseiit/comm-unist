#pragma once
#include <stdexcept>
#include <vector>
#include "MyPriorityQueue.h"

using namespace std;

template <typename T, bool isMax, size_t cap>
class MyPriorityQueueImpl : public MyPriorityQueue<T, isMax> {
  vector<T> array;
  size_t length;
  T* front;

 public:
  MyPriorityQueueImpl<T, isMax>() : MyPriorityQueue<T, isMax>() {
    array.clear();
    length = 0;
    front = new int[1];
  }

  /*
   * top:
   * returns the reference of the first element.
   * throws the runtime error if the queue is empty.
   */
  T& top() const {
    return front[0];
  }

  /*
   * size:
   * returns the number of elements in the queue.
   */
  size_t size() const {
    return length;
  }

  /*
	 * empty:
	 * returns whether the queue is empty or not.
	 */
  bool empty() const {
    return length == 0;
  }

  /*
 	 * push:
 	 * inserts the given item at the end of the queue.
 	 * throws the runtime_error if the queue is full
 	 */
  void push(const T& e) {
    length += 1;
  }

  /*
	 * pop:
	 * removes the item at the beginning of the queue.
	 * throws the runtime_error if the queue is empty
	 */
  void pop() {
    length -= 1;
  }
};

#pragma once
#include <queue>
#include <stdexcept>
#include <vector>
#include "MyPriorityQueue.h"

using namespace std;

template <typename T, bool isMax>
class MyPriorityQueueImpl : public MyPriorityQueue<T, isMax> {
  priority_queue<T> q;
  T* array;

 public:
  MyPriorityQueueImpl<T, isMax>() : MyPriorityQueue<T, isMax>() {
    while (!q.empty())
      q.pop();
    array = new T[2];
  }

  /*
   * top:
   * returns the reference of the first element.
   * throws the runtime error if the queue is empty.
   */
  T& top() const {
    return array[0];
  }

  /*
   * size:
   * returns the number of elements in the queue.
   */
  size_t size() const {
    return q.size();
  }

  /*
	 * empty:
	 * returns whether the queue is empty or not.
	 */
  bool empty() const {
    return q.empty();
  }

  /*
 	 * push:
 	 * inserts the given item at the end of the queue.
 	 * throws the runtime_error if the queue is full
 	 */
  void push(const T& e) {
    q.push(isMax ? e : -e);
  }

  /*
	 * pop:
	 * removes the item at the beginning of the queue.
	 * throws the runtime_error if the queue is empty
	 */
  void pop() {
    q.pop();
  }
};

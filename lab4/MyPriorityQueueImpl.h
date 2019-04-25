#pragma once
#include <stdexcept>
#include <vector>
#include "MyPriorityQueue.h"

using namespace std;

const int maxn = (1 << 20);
const int offset = (1 << 19);

class Fenwick {
  int t[maxn];

 public:
  void upd(int r, int v = 1) {
    r += offset;
    for (; r < maxn; r |= r + 1)
      t[r] += v;
  }

  int kth(int k) const {
    int sum = 0, res = 0;
    for (int i = maxn; i && i + res - 1 < maxn; i >>= 1)
      if (sum + t[i + res - 1] <= k)
        sum += t[i + res - 1], res += i;
    return res - offset;
  }
};

template <typename T, bool isMax, size_t capacity>
class MyPriorityQueueImpl : public MyPriorityQueue<T, isMax> {
  size_t length;
  T* front;
  Fenwick tree;

 public:
  MyPriorityQueueImpl<T, isMax>() : MyPriorityQueue<T, isMax>() {
    length = 0;
    front = new int[1];
    tree = Fenwick();
  }

  /*
   * top:
   * returns the reference of the first element.
   * throws the runtime error if the queue is empty.
   */
  T& top() const {
    if (empty()) throw runtime_error("Empty!");
    front[0] = tree.kth(isMax ? length - 1 : 0);
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
    if (capacity == length) throw runtime_error("Can't push – full!");
    tree.upd(e);
    length += 1;
  }

  /*
	 * pop:
	 * removes the item at the beginning of the queue.
	 * throws the runtime_error if the queue is empty
	 */
  void pop() {
    if (empty()) throw runtime_error("Can't pop – empty!");
    length -= 1;
    tree.upd(tree.kth(isMax ? length : 0), -1);
  }
};

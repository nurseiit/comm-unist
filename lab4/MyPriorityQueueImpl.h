#pragma once
#include "MyPriorityQueue.h"
#include <stdexcept>
#include <vector>
#include <queue>
using namespace std;
template<typename T, bool isMax>
/*
if "isMax" is True, this will be the priority queue with maxHeap.
otherwise, it will be with minHeap.
You need to implement both. 
*/
using namespace std;
class MyPriorityQueueImpl : public MyPriorityQueue<T, isMax> {

priority_queue<T> q;

public:
	MyPriorityQueueImpl<T, isMax>() : MyPriorityQueue<T, isMax>() q() {
	}

	T& top() const {
            return q.top();
	}
	size_t size() const {

            return q.size();
	}
	bool empty() const {
            return q.empty();
	}

	void push(const T& e) {
            q.push(e);
	}

	void pop() {
            q.pop();
	}
};


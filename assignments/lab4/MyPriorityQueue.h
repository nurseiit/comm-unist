using namespace std;

template<typename T, bool isMax, size_t Cap>

class MyPriorityQueue {
	
public:
	MyPriorityQueue<T, isMax, Cap>() {
	}

	/*
    * top:
    * returns the reference of the first element.
    * throws the runtime error if the queue is empty.
    */
	virtual T& top() const = 0;

	/*
    * size:
    * returns the number of elements in the queue.
    */
	virtual size_t size() const = 0;

	/*
	* empty:
	* returns whether the queue is empty or not.
	*/
	virtual bool empty() const = 0;

	/*
	* pop:
	* removes the item at the beginning of the queue.
	* throws the runtime_error if the queue is empty
	*/
	virtual void pop() = 0;

	/*
	* push:
	* inserts the given item at the end of the queue.
	* throws the runtime_error if the queue is full
	*/
	virtual void push(const T&) = 0;

};

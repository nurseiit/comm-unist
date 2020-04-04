#include <cstdio>
using namespace std;

template<typename T, size_t N>
class MyQueue {

    protected:
        T* array[N];

        T* alloc() {
            return new T();
        }
    public:
        MyQueue<T,N>(){};

    /*
     * front:
     * returns the reference of the first element.
     * throws the runtime error if the queue is empty.
     */
    virtual T& front() const = 0;

    /*
     * back:
     * returns the reference of the last element.
     * throws the runtime error if the queue is empty.
     */
    virtual T& back() const = 0;

    /*
     * size:
     * returns the number of elements in the queue.
     */
    virtual size_t size() const = 0;


    /*
     * push:
     * inserts the given item at the end of the queue.
     * throws the runtime_error if the queue is full
     */
    virtual void push(const T&) = 0;

    /*
     * pop:
     * removes the item at the beginning of the queue.
     * throws the runtime_error if the queue is empty
     */
    virtual void pop() = 0;

};

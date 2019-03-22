#include "MyQueue.h"
#include <stdexcept>

template<typename T, size_t N>
class MyQueueImpl : public MyQueue<T,N> {

    private:
        size_t end, begin;
        size_t length = 0;
        T* array[N];

        bool isFull() const {
            return size() == N;
        }
        bool isEmpty() const {
            return size() == 0;
        }

    public:
        MyQueueImpl<T,N>() : MyQueue<T,N>() {
            begin = end = 0;
            for (size_t i = 0; i < N; i++)
                array[i] = this->alloc();
        }

        T& front() const {
            if (isEmpty()) throw std::runtime_error("No element to show – empty!");
            return array[begin][0];
        }

        T& back() const {
            if (isEmpty()) throw std::runtime_error("No element to show – empty!");
            size_t end_mod = end + N - 1;
            if (end_mod >= N) end_mod -= N;
            return array[end_mod][0];
        }

        size_t size() const {
            return length;
        }

        void push(const T& e) {
            if (isFull()) throw std::runtime_error("Nowhere to push – queue is full!");
            array[end][0] = e;
            end += 1;
            length += 1;
            if (end >= N) end -= N;
        }

        void pop() {
            if (isEmpty()) throw std::runtime_error("No element to pop – empty!");
            begin += 1;
            length -= 1;
            if (begin >= N) begin -= N;
        }
};

#include "MyStack.h"
#include <stdexcept>

using namespace std;

template<typename T>
class MyStackImpl : public MyStack<T>{

    private:
        size_t length;
        size_t capacity;

        T *array;

        void resize(size_t new_capacity) {
            T *new_array = new T[new_capacity];
            for (size_t i = 0; i < length; i++)
                new_array[i] = array[i];
            swap(array, new_array);
            // Remove the useless array
            delete[] new_array;
            capacity = new_capacity;
        }

    public:
        MyStackImpl<T>()  : MyStack<T>() {
            capacity = 1;
            length = 0;
            array = new T[capacity];
        }

        T& top() const {
            if (length == 0) throw runtime_error("No element to show – empty!");
            return array[length - 1];
        }

        size_t size() const {
            return length;
        }

        void push(const T& e) {
            array[length] = e;
            length += 1;
            if (capacity == length)
                resize(capacity + capacity);
        }

        void pop() {
            if (length == 0) throw runtime_error("No element to pop – empty!");
            length -= 1;
            if (length > 8 && (length << 2) < capacity)
                resize(capacity >> 2);
        }

        ~MyStackImpl<T>()  {
            delete[] array;
        }

};

#include "MyQueue.h"
#include <stdexcept>
using namespace std;
template<typename T, size_t N>
class MyQueueImpl : public MyQueue<T,N> {

    private:

    public:
        MyQueueImpl<T,N>() : MyQueue<T,N>() {
        }

        T& front() const {
        }

        T& back() const {
        }

        size_t size() const {
        }

        void push(const T& e) {
        }

        void pop() {
        }
};

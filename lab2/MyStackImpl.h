#include "MyStack.h"
#include <stdexcept>
using namespace std;

template<typename T>
class MyStackImpl : public MyStack<T>{

    private:
    public:
        MyStackImpl<T>()  : MyStack<T>() {
        }

        T& top() const {
        }
        size_t size() const {
        }

        void push(const T& e) {
        }
        void pop() {
        }
        ~MyStackImpl<T>()  {
        }


};

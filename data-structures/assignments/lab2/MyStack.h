using namespace std;

template<typename T>
class MyStack {


    public:
        MyStack<T>() {}

        /*
         * top:
         * returns the reference to the topmost element from the stack.
         * throws the runtime_error if the stack is empty
         */
    virtual T& top() const = 0;
    /*
     * size:
     * returns the number of elements in the stack.
     */
    virtual size_t size() const = 0;

    /*
     * push:
     * inserts the given element to the top of the stack.
     * if the stack is full, it expands its array to make more room,
     * following the "doubling" strategy from the lecture slides.
     */
    virtual void push(const T&) = 0;

    /*
     * pop:
     * removes the topmost element from the stack.
     * throws the runtime_error if the stack is empty.
     * if the number of elements is smaller than 1/4 of the capacity,
     * it also shrinks its array by the factor of 4,
     * only when there are more than 8 elements.
     */
    virtual void pop() = 0;


};

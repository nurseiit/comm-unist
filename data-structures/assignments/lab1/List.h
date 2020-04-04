#ifndef __LIST_H__
#define __LIST_H__
#include <cstddef>
#include <string>


using namespace std;
class List {
    public:
    /*
     * return:
     * true: if empty
     * false: otherwise.
     */
    virtual bool empty() const = 0;

    /*
     * returns the first element of the list
     * throws runtime_error exception if the list is empty
     */
    virtual int& front() const = 0;

    /*
     * returns the last element of the list
     * throws runtime_error exception if the list is empty
     */
    virtual int& back() const = 0;

    /*
     * inserts an item at the beginning of the list
     */
    virtual void add_front(const int& e) = 0;

    /*
     * remove an item at the ith location
     * returns false if fails.
     */
    virtual void remove_front() = 0;

    /*
     * inserts an item at the beginning of the list
     * throws runtime_error exception if the list is empty
     */
    virtual void add_back(const int& e) = 0;

    /*
     * remove an item at the ith location
     * returns false if fails.
     */
    virtual void remove_back() = 0;
    /*
     * Returns the number of items in the list.
     */
    virtual size_t get_size() const = 0;

    /*
     * returns a string representation of the list in order.
     * e.g., for a list [1,2,3,4], 
     * 1 2 3 4
     *
     */

    virtual string to_string() = 0;

    /*
     * returns a string representation of the list in reverse order.
     * e.g., for a list [1,2,3,4], 
     * 4 3 2 1
     */

    virtual string to_reverse_string() = 0;


};

#endif

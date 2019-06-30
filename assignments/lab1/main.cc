#include <string>
#include <cstdio>
#include <iostream>
#include <list>
#include "DoublyLinkedList.h"

using namespace std;

/*
 * You can freely modify this file.
 * Grader will use its own main.cc
 */

int testDoublyLinkedList() {
    DoublyLinkedList myList;
    list<int> stdList(); 
    myList.add_front(1);
    myList.add_front(2);
    myList.add_front(3);
    cout << myList.to_string().c_str() << endl;
    cout << myList.to_reverse_string().c_str() << endl;

    while(myList.get_size() != 0) {
        cout << myList.front() << endl;
        myList.remove_front();
    }

}

int main(int argc, char* argv[]) {

    cout << "Hello!" << endl;
    testDoublyLinkedList();
}

#include <fstream>
#include <string>
#include <list>
#include <stack>
#include <sstream>
#include <iostream>
#include <stdexcept>
using namespace std;
class Textedit {

    private:
    public:

        
        Textedit() {
        }

    public:
        /*
         * left:
         * moves the cursor to the left.
         * do nothing if the cursor is already at the leftmost
         */
        void left() {
        }

        /*
         * right:
         * moves the cursor to the left.
         * do nothing if the cursor is already at the leftmost
         */
        void right() {
        }


        /*
         * insert
         * insert the character before the cursor.
         */
        void insert(char i) {
        }


        /*
         * del
         * delete the character before the cursor.
         * if the cursor if at the beginning or
         * the string is empty, do nothing (no runtime error!!)
         */
        char del() {
        }

        /*
         * write
         * This is not a command but a helper function.
         * Write the string to the file
         */
        void write(string outname) {
            ofstream fout(outname);
            fout.close();
        }


        /*
         * execute
         * This is an optional helper function.
         * Implementing this to execute one command by invoking
         * the individual operation will make your life easier.
         */
        void execute(string cmd) {
        }
        /*
         * undo:
         * reverts the last executed command.
         * To repeat undoing, all executed commands should be kept in the stack.
         * Note that we don't have "redo" command
         */
        void undo() {
        }
    public:
        /*
         * This is the only interface for this class.
         * It reads the input file line by line and
         * call appropriate operations to execute the commands.
         * At the end, it calls  the write function to write the
         * resulting string to the fname_out.
         */
        void process(string fname_in, string fname_out) {
        }

};

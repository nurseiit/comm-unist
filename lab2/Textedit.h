#include <fstream>
#include <string>
#include <list>
#include <stack>
#include <sstream>
#include <iostream>
#include <stdexcept>

using namespace std;

class Textedit {
    enum Commands {Left, Right, Insert, Delete, Undo};

    private:
        list <string> state_history;
        list <int> position_history;
        string state;
        int position;

        void fix_position() {
            if (position < 0)
                position = 0;
            if (position > state.length())
                position = state.length();
        }

        /*
         * left:
         * moves the cursor to the left.
         * do nothing if the cursor is already at the leftmost
         */
        void left() {
            position -= 1;
        }

        /*
         * right:
         * moves the cursor to the left.
         * do nothing if the cursor is already at the rightmost
         */
        void right() {
            position += 1;
        }

        /*
         * insert:
         * insert the character before the cursor.
         */
        void insert(char arg) {
            state += "@";
            for (int i = state.size() - 1; i - 1 >= position; i--)
                state[i] = state[i - 1];
            state[position] = arg;
            position += 1;
        }

        /*
         * del:
         * delete the character before the cursor.
         * if the cursor if at the beginning or
         * the string is empty, do nothing (no runtime error!!)
         */
        void del() {
            if (position == 0 || isEmpty()) return;
            position -= 1;
            for (int i = position; i + 1 < state.size(); i++)
                state[i] = state[i + 1];
            state.resize(state.size() - 1);
        }

        /*
         * undo:
         * reverts the last executed command.
         * To repeat undoing, all executed commands should be kept in the stack.
         * Note that we don't have "redo" command
         */
        void undo() {
            state_history.pop_back();
            state = state_history.back();

            position_history.pop_back();
            position = position_history.back();
        }

        /*
         * isEmpty:
         * returns `true` if state is empty,
         * `false` otherwise.
         */
        bool isEmpty() {
            return state.empty();
        }

        /*
         * execute:
         * This is an optional helper function.
         * Implementing this to execute one command by invoking
         * the individual operation will make your life easier.
         */
        void execute(Commands cmd, char arg = '\0') {
            switch(cmd) {
                case Insert:
                    insert(arg);
                    break;
                case Delete:
                    del();
                    break;
                case Left:
                    left();
                    break;
                case Right:
                    right();
                    break;
                case Undo:
                    undo();
                    break;
            }
            fix_position();
            save_state();
            // debug();
        }

        /*
         * save_state:
         * Saves state to history.
         */
        void save_state() {
            state_history.push_back(state);
            position_history.push_back(position);
        }

        /*
         * handle_file:
         * todo
         */
        void handle_files(string fname_in, string fname_out) {
            freopen(fname_in.c_str(), "r", stdin);
            freopen(fname_out.c_str(), "w", stdout);
        }

        /*
         * solve:
         * todo
         */
        void solve() {
            char cmd[20];
            while(scanf("%s", cmd) != EOF) {
                string cmd_str = string(cmd);
                // if (cmd_str != "right" && cmd_str != "left")
                //     cerr << "=> " << cmd_str << endl;
                Commands command = convert_command(cmd_str);
                if (command == Insert) {
                    char arg[1];
                    scanf("%s", arg);
                    execute(command, arg[0]);
                } else {
                    execute(command);
                }
            }
        }

        /*
         * convert_command:
         * converts char[] to Commands enum
         */
        Commands convert_command(string cmd) {
            Commands table[] = {Insert, Delete, Left, Right, Undo};
            string names[] = {"insert", "del", "left", "right", "undo"};
            for (int i = 0; i < 5; i++)
                if (names[i] == cmd)
                    return table[i];
            throw runtime_error("Unrecognized command: `" + cmd + "`!");
        }
        /*
         * write:
         * Writes state to output.
         */
        void write() {
            printf("%s", state.c_str());
            // cerr << state << endl;
        }

    public:
        Textedit() {
            state = "";
            position = 0;
            state_history.clear();
            position_history.clear();
        }

        /*
         * This is the only interface for this class.
         * It reads the input file line by line and
         * call appropriate operations to execute the commands.
         * At the end, it calls  the write function to write the
         * resulting string to the fname_out.
         */
        void process(string fname_in, string fname_out) {
            handle_files(fname_in, fname_out);
            solve();
            write();
        }

        void debug() {
            for (int i = 0; i < position; i++)
                cerr << state[i];
            cerr << "/";
            for (int i = position; i < state.size(); i++)
                cerr << state[i];
            cerr << endl;
        }
};

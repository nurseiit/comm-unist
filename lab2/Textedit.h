#include <fstream>
#include <iostream>
#include <list>
#include <sstream>
#include <stack>
#include <stdexcept>
#include <string>

using namespace std;

class Textedit {
  enum Commands {
    Left,
    Right,
    Insert,
    Delete,
    Undo
  };

  struct State {
    string left, right;
    State() {
      left = right = "";
    }
  };

 private:
  list<State> history;
  State state;

  /*
   * left:
   * moves the cursor to the left.
   * do nothing if the cursor is already at the leftmost
   */
  void left() {
    if (state.left.empty())
      return;
    char now = state.left.back();
    state.left.pop_back();
    state.right = now + state.right;
  }

  /*
   * right:
   * moves the cursor to the left.
   * do nothing if the cursor is already at the rightmost
   */
  void right() {
    if (state.right.empty())
      return;
    char now = state.right[0];
    state.right = (state.right.length() > 1 ? state.right.substr(1) : "");
    state.left += now;
  }

  /*
   * insert:
   * insert the character before the cursor.
   */
  void insert(char now) {
    state.left += now;
  }

  /*
   * del:
   * delete the character before the cursor.
   * if the cursor if at the beginning or
   * the string is empty, do nothing (no runtime error!!)
   */
  void del() {
    if (!state.left.empty())
      state.left.pop_back();
  }

  /*
   * undo:
   * reverts the last executed command.
   * To repeat undoing, all executed commands should be kept in the stack.
   * Note that we don't have "redo" command
   */
  void undo() {
    history.pop_back();
    state = history.back();
  }

  /*
   * execute:
   * This is an optional helper function.
   * Implementing this to execute one command by invoking
   * the individual operation will make your life easier.
   */
  void execute(Commands cmd, char arg = '\0') {
    switch (cmd) {
      case Insert:
        insert(arg);
        save_state();
        break;
      case Delete:
        del();
        save_state();
        break;
      case Left:
        left();
        save_state();
        break;
      case Right:
        right();
        save_state();
        break;
      case Undo:
        undo();
        break;
    }
  }

  void save_state() {
    history.push_back(state);
  }

  void handle_files(string fname_in, string fname_out) {
    freopen(fname_in.c_str(), "r", stdin);
    freopen(fname_out.c_str(), "w", stdout);
  }

  void solve() {
    char cmd[20];
    while (scanf("%s", cmd) != EOF) {
      string cmd_str = string(cmd);
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

  Commands convert_command(string cmd) {
    Commands table[] = {Insert, Delete, Left, Right, Undo};
    string names[] = {"insert", "del", "left", "right", "undo"};
    for (int i = 0; i < 5; i++)
      if (names[i] == cmd)
        return table[i];
    throw runtime_error("Unrecognized command: `" + cmd + "`!");
  }

  void write() {
    string result = state.left + state.right;
    printf("%s", result.c_str());
  }

 public:
  Textedit() {
    history.clear();
    state = State();
  }

  void process(string fname_in, string fname_out) {
    handle_files(fname_in, fname_out);
    solve();
    write();
  }
};

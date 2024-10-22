#include <fstream>
#include <iostream>
#include <list>
#include <sstream>
#include <stack>
#include <stdexcept>
#include <string>

using namespace std;

enum Command {
  Insert,
  Delete,
  Left,
  Right,
  Undo
};

class State {
  struct Action {
    Command command;
    char arg;
    Action(Command command = Undo, char arg = '\0')
        : command(command), arg(arg) {}
  };

 private:
  string left, right;
  list<Action> history;

  void doInsert(char arg, bool isUndo = false) {
    left += arg;
    if (!isUndo)
      history.push_back(Action(Delete));
  }
  void doDelete(bool isUndo = false) {
    if (left.empty()) return;
    char back = left.back();
    left.pop_back();
    if (!isUndo)
      history.push_back(Action(Insert, back));
  }
  void doLeft(bool isUndo = false) {
    if (left.empty()) return;
    char back = left.back();
    right += back;
    left.pop_back();
    if (!isUndo)
      history.push_back(Action(Right));
  }
  void doRight(bool isUndo = false) {
    if (right.empty()) return;
    char back = right.back();
    left += back;
    right.pop_back();
    if (!isUndo)
      history.push_back(Action(Left));
  }
  void doUndo() {
    if (history.empty()) return;
    Action now = history.back();
    history.pop_back();
    execute(now.command, now.arg, true);
  }

 public:
  State() {
    history.clear();
    left = right = "";
  }
  void execute(Command command, char arg = '\0', bool isUndo = false) {
    switch (command) {
      case Insert:
        doInsert(arg, isUndo);
        break;
      case Delete:
        doDelete(isUndo);
        break;
      case Left:
        doLeft(isUndo);
        break;
      case Right:
        doRight(isUndo);
        break;
      case Undo:
        doUndo();
        break;
    }
  }
  string toString() {
    string reversed;
    for (int i = (int)right.size() - 1; i >= 0; i--)
      reversed += right[i];
    return left + reversed;
  }
};

class Textedit {
  Command convert(string command) {
    if (command == "insert")
      return Insert;
    if (command == "del")
      return Delete;
    if (command == "left")
      return Left;
    if (command == "right")
      return Right;
    if (command == "undo")
      return Undo;
    throw runtime_error("Unrecognized command: `" + command + "`!");
  }

 private:
  State state;
  void solve() {
    while (!cin.eof()) {
      string cmd;
      cin >> cmd;
      if (cin.eof()) break;
      Command command = convert(cmd);
      if (command == Insert) {
        string arg;
        cin >> arg;
        state.execute(command, arg[0]);
      } else {
        state.execute(command);
      }
    }
  }
  void write() {
    cout << state.toString();
  }

 public:
  Textedit() {
    state = State();
  }
  void process(string inFile, string outFile) {
    freopen(inFile.c_str(), "r", stdin);
    freopen(outFile.c_str(), "w", stdout);
    solve();
    write();
  }
};
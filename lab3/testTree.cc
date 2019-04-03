#include "MyTreeImpl.h"

int main(int argc, char* argv[] ) {
    if(argc != 3) return 1;
    MyTreeImpl t;
    string s;
    try {
        s = string(argv[1]);
        t.load(s);
        cout << "loaded successfully" << endl;
    }
    catch (runtime_error e) {
        cout << "caught a runtime_error on load" << endl;
        return 0;
    }
    cout << t.traverse_pre() << endl;
    cout << t.traverse_post() << endl;
    //cout << t.traverse_in_order() << endl;
    s = string(argv[2]);
    cout << t.eval(s) << endl;
    t.simplify();
    cout << t.traverse_pre();
}

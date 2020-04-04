/*
 * Generates array of integers with given length.
 * Saves them as "[length or array]" file.
 */

#include "testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char* argv[]) {
  registerGen(argc, argv, 1);
  
  int n;
  if (argc > 1)
    n = atoi(argv[1]);
  else {
    cout << "Please specify the length of array as shown below!" << endl;
    cout << "./program 4" << endl;
    exit(1);
  }

  for (int i = 0; i < n; i++)
    cout << rnd.next(1, 1000000) << " ";
  cout << endl;

  return 0;
}

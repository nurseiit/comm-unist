#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

vector<int> readNumbers() {
  int x;
  vector<int> st;
  while (cin >> x) st.push_back(x);
  return st;
}

void printNumbers(vector<int> &st) {
  for (int v: st) cout << v << " ";
}

void mergeSort(vector<int> &st) {
  int len = st.size();
  if (len == 1) return;
  
  int mid = len / 2;
  vector<int> a, b;
  for (int i = 0; i < mid; i++)
    a.push_back(st[i]);
  for (int i = mid; i < len; i++)
    b.push_back(st[i]);

  mergeSort(a);
  mergeSort(b);
  st.clear();
  merge(a.begin(), a.end(), b.begin(), b.end(), back_inserter(st));
}

int main () {
  freopen("input.txt", "r", stdin);
  freopen("output.txt", "w", stdout);
  
  vector<int> a = readNumbers();
  
  mergeSort(a);

  printNumbers(a);
  return 0;
}

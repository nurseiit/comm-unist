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

void quickSort(vector<int> &st, int left, int right) {
  int i = left;
  int j = right;
  int mid = (right + left) / 2;
  int pivot = st[mid];
  while (i < right || j > left) {
    while (st[i] < pivot) i++;
    while (st[j] > pivot) j--;
    if (i <= j) {
      swap(st[i], st[j]);
      i++, j--;
    } else {
      if (i < right)
        quickSort(st, i, right);
      if (j > left)
        quickSort(st, left, j);
      return;
    }
  }
}

int main () {
  freopen("input.txt", "r", stdin);
  freopen("output.txt", "w", stdout);
  
  vector<int> a = readNumbers();
  
  quickSort(a, 0, (int)a.size() - 1);

  printNumbers(a);
  return 0;
}

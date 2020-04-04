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

void heapify(vector<int> &st, int len, int root) {
  int largest = root;
  int left = root * 2 + 1;
  int right = root * 2 + 2;
  if (left < len && st[left] > st[largest])
    largest = left;
  if (right < len && st[right] > st[largest])
    largest = right;
  if (largest != root) {
    swap(st[largest], st[root]);
    heapify(st, len, largest);
  }
}

void heapSort(vector<int> &st) {
  int len = st.size();
  for (int i = len / 2 - 1; i >= 0; i--)
    heapify(st, len, i);
  for (int i = len - 1; i >= 0; i--) {
    swap(st[0], st[i]);
    heapify(st, i, 0);
  }
}

int main () {
  freopen("input.txt", "r", stdin);
  freopen("output.txt", "w", stdout);
  
  vector<int> a = readNumbers();
  
  heapSort(a);

  printNumbers(a);
  return 0;
}

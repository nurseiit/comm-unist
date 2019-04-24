#include <algorithm>
#include <fstream>
#include <functional>
#include <iostream>
#include <ostream>
#include <queue>
#include <sstream>
#include <string>
#include <vector>
using namespace std;

const int maxn = (1 << 20);
const int offset = (1 << 19);

class Fenwick {
  int t[maxn];

 public:
  void upd(int r, int v = 1) {
    r += offset;
    for (; r < maxn; r |= r + 1)
      t[r] += v;
  }
  int get(int r) {
    r += offset;
    int res = 0;
    for (; r >= 0; r = (r & (r + 1)) - 1)
      res += t[r];
    return res;
  }

  int kth(int k) {
    int sum = 0, res = 0;
    for (int i = maxn; i && i + res - 1 < maxn; i >>= 1)
      if (sum + t[i + res - 1] <= k)
        sum += t[i + res - 1],
            res += i;
    return res - offset;
  }
};

int main(int argc, char *argv[]) {
  if (argc > 1) {
    freopen(argv[1], "r", stdin);
    freopen(argv[2], "w", stdout);
  }

  Fenwick tree;

  int val, size = 0;

  while (cin >> val) {
    tree.upd(val);
    size += 1;
    int index = size / 2 - (size % 2 == 0);
    int med = tree.kth(index);
    printf("%d\n", med);
  }
  size += 1;
  int index = size / 2 - (size % 2 == 0);
  int med = tree.kth(index);
  printf("%d\n", med);
  return 0;
}

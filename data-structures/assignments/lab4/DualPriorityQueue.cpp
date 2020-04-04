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

const int maxn = (1 << 19);
const int offset = (1 << 17);

class Fenwick {
  int t[maxn];

 public:
  Fenwick() {
    for (int i = 0; i < maxn; i++)
      t[i] = 0;
  }
  void upd(int r, int v = 1) {
    r += offset;
    for (; r < maxn; r |= r + 1)
      t[r] += v;
  }

  int kth(int k) {
    int sum = 0, res = 0;
    for (int i = maxn; i && i + res - 1 < maxn; i >>= 1)
      if (sum + t[i + res - 1] <= k)
        sum += t[i + res - 1], res += i;
    return res - offset;
  }
};

int main(int argc, char* argv[]) {
  if (argc > 1) {
    freopen(argv[1], "r", stdin);
    freopen(argv[2], "w", stdout);
  }
  char cmd;
  int val;

  Fenwick tree;

  int size = 0;
  int tests;
  scanf("%d\n", &tests);
  while (tests--) {
    scanf("%c %d\n", &cmd, &val);
    if (cmd == 'I') {
      tree.upd(val);
      size += 1;
    } else if (cmd == 'D') {
      if (size == 0) {
        continue;
      } else if (val == -1) {
        int front = tree.kth(0);
        tree.upd(front, -1);
        size -= 1;
      } else if (val == 1) {
        int back = tree.kth(size - 1);
        tree.upd(back, -1);
        size -= 1;
      }
    }
  }
  if (size == 0) {
    puts("EMPTY");
  } else {
    printf("%d %d\n", tree.kth(size - 1), tree.kth(0));
  }
  return 0;
}

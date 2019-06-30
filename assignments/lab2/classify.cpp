#include <fstream>
#include <iostream>
#include <list>

using namespace std;

void classify(void) {
  freopen("input-classify.txt", "r", stdin);
  freopen("output-classify.txt", "w", stdout);

  list<int> all[5];
  int n;

  // Read the input file and classify by mod 5
  while (scanf("%d", &n) != EOF)
    all[n % 5].push_back(n);

  // Print each group
  for (int i = 0; i < 5; i++) {
    int length = all[i].size();
    int cnt = 0;
    for (int val : all[i])
      printf("%d%c", val, " \n"[++cnt == length]);
  }
}

int main(int argc, char* argv[]) {
  classify();
}

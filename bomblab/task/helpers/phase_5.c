#include <stdio.h>

int array[61] = {0};

int solve(char s[]) {
  int i, ans = 0;
  for (i = 0; i < 6; i++) {
    // printf("%c - ", s[i]);
    int c = s[i];
    c &= 15;
    int ind = c * 4;
    ans += array[ind];
    // printf("%d => %d.\n", c, array[ind]);
  }
  return ans;
}

int main() {
  int result = 51;
  int top[] = {2, 6, 12, 9, 4, 14, 11, 15};
  int bot[] = {10, 1, 16, 3, 7, 5, 8, 13};
  int i;
  for (i = 0; i <= 56; i += 8) array[i] = top[i / 8];
  for (i = 4; i <= 60; i += 8) array[i] = bot[i / 8];

  char s[7];
  scanf("%s", s);
  printf("%d\n", solve(s));
  return 0;

  int a, b, c, d, e, f;
  for (a = 0; a < 26; a++)
    for (b = 0; b < 26; b++)
      for (c = 0; c < 26; c++)
        for (d = 0; d < 26; d++)
          for (e = 0; e < 26; e++)
            for (f = 0; f < 26; f++) {
              s[0] = a + 'a';
              s[1] = b + 'a';
              s[2] = c + 'a';
              s[3] = d + 'a';
              s[4] = e + 'a';
              s[5] = f + 'a';
              s[6] = '\0';
              if (solve(s) == 51) puts(s);
            }
}
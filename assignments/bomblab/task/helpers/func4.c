#include <stdio.h>
int counter, flag;
int edi, esi, edx, eax;
int func4 () {
  int ebx;
  eax = edx;
  eax = eax - esi;
  ebx = eax;
  ebx = (unsigned int)ebx >> 31;
  ebx = ebx + eax;
  ebx = ebx >> 1;
  ebx = ebx + esi;
  if (edi < ebx) {
    edx = ebx - 1;
    eax = func4 ();
    ebx = ebx + eax;

    eax = ebx;
    return eax;
  }
  if (edi > ebx) {
    esi = ebx + 1;
    eax = func4();
    ebx = ebx + eax;

    eax = ebx;
    return eax;
  }
  eax = ebx;
  return eax;
}

int main(void) {
  int x;
  scanf("%d", &x);
  edi = x;
  esi = 0;
  edx = 14;

  int y = func4();
  printf("f(%d) = %d\n", x, y);
	return 0;
}

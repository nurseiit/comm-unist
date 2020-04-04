#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  push  $0xb
  pop   %eax
  xor   %ecx, %ecx
  push  %ecx                /* mark the end as 00 00 00 00 (4-byte zero) */
  push  $0x41
  mov   %esp, %ebx
  int   $0x80

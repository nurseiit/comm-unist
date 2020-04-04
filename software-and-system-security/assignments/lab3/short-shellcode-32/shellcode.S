#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  // execve
  xor   %ecx, %ecx
  xor   %edx, %edx
  push  %ecx                  /* mark the end as 00 00 00 00 (4-byte zero) */
  push  $0x41
  push  $11
  pop   %eax
  mov   %esp, %ebx
  int   $0x80

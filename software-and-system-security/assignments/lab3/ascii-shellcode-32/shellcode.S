#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  // execve
  push   $0x0
  push   $0x0
  push   $0x0
  pop    %ecx
  pop    %edx
  push   $0x41
  push   $11
  pop    %eax
  push   %esp
  pop    %ebx
  push   %ecx
  push   %edx
  push   %ebp
  push   %esp
  pop    %ebp
  sysenter

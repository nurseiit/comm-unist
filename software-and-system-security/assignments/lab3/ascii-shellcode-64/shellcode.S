#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  // execve
  push   $0x0
  pop    %rsi
  push   $0x0
  pop    %rdx
  push   %rsi
  push   $0x3b
  push   %rsp
  pop    %rdi
  pop    %rax
  syscall

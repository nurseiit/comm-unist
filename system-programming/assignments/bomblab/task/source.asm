
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000e00 <_init>:
 e00:	48 83 ec 08          	sub    $0x8,%rsp
 e04:	48 8b 05 dd 31 20 00 	mov    0x2031dd(%rip),%rax        # 203fe8 <_GLOBAL_OFFSET_TABLE_+0x100>
 e0b:	48 85 c0             	test   %rax,%rax
 e0e:	74 02                	je     e12 <_init+0x12>
 e10:	ff d0                	callq  *%rax
 e12:	48 83 c4 08          	add    $0x8,%rsp
 e16:	c3                   	retq   

Disassembly of section .plt:

0000000000000e20 <getenv@plt-0x10>:
 e20:	ff 35 ca 30 20 00    	pushq  0x2030ca(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
 e26:	ff 25 cc 30 20 00    	jmpq   *0x2030cc(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
 e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000e30 <getenv@plt>:
 e30:	ff 25 ca 30 20 00    	jmpq   *0x2030ca(%rip)        # 203f00 <_GLOBAL_OFFSET_TABLE_+0x18>
 e36:	68 00 00 00 00       	pushq  $0x0
 e3b:	e9 e0 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000e40 <strcasecmp@plt>:
 e40:	ff 25 c2 30 20 00    	jmpq   *0x2030c2(%rip)        # 203f08 <_GLOBAL_OFFSET_TABLE_+0x20>
 e46:	68 01 00 00 00       	pushq  $0x1
 e4b:	e9 d0 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000e50 <__errno_location@plt>:
 e50:	ff 25 ba 30 20 00    	jmpq   *0x2030ba(%rip)        # 203f10 <_GLOBAL_OFFSET_TABLE_+0x28>
 e56:	68 02 00 00 00       	pushq  $0x2
 e5b:	e9 c0 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000e60 <strcpy@plt>:
 e60:	ff 25 b2 30 20 00    	jmpq   *0x2030b2(%rip)        # 203f18 <_GLOBAL_OFFSET_TABLE_+0x30>
 e66:	68 03 00 00 00       	pushq  $0x3
 e6b:	e9 b0 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000e70 <puts@plt>:
 e70:	ff 25 aa 30 20 00    	jmpq   *0x2030aa(%rip)        # 203f20 <_GLOBAL_OFFSET_TABLE_+0x38>
 e76:	68 04 00 00 00       	pushq  $0x4
 e7b:	e9 a0 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000e80 <write@plt>:
 e80:	ff 25 a2 30 20 00    	jmpq   *0x2030a2(%rip)        # 203f28 <_GLOBAL_OFFSET_TABLE_+0x40>
 e86:	68 05 00 00 00       	pushq  $0x5
 e8b:	e9 90 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000e90 <__stack_chk_fail@plt>:
 e90:	ff 25 9a 30 20 00    	jmpq   *0x20309a(%rip)        # 203f30 <_GLOBAL_OFFSET_TABLE_+0x48>
 e96:	68 06 00 00 00       	pushq  $0x6
 e9b:	e9 80 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000ea0 <alarm@plt>:
 ea0:	ff 25 92 30 20 00    	jmpq   *0x203092(%rip)        # 203f38 <_GLOBAL_OFFSET_TABLE_+0x50>
 ea6:	68 07 00 00 00       	pushq  $0x7
 eab:	e9 70 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000eb0 <close@plt>:
 eb0:	ff 25 8a 30 20 00    	jmpq   *0x20308a(%rip)        # 203f40 <_GLOBAL_OFFSET_TABLE_+0x58>
 eb6:	68 08 00 00 00       	pushq  $0x8
 ebb:	e9 60 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000ec0 <read@plt>:
 ec0:	ff 25 82 30 20 00    	jmpq   *0x203082(%rip)        # 203f48 <_GLOBAL_OFFSET_TABLE_+0x60>
 ec6:	68 09 00 00 00       	pushq  $0x9
 ecb:	e9 50 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000ed0 <fgets@plt>:
 ed0:	ff 25 7a 30 20 00    	jmpq   *0x20307a(%rip)        # 203f50 <_GLOBAL_OFFSET_TABLE_+0x68>
 ed6:	68 0a 00 00 00       	pushq  $0xa
 edb:	e9 40 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000ee0 <signal@plt>:
 ee0:	ff 25 72 30 20 00    	jmpq   *0x203072(%rip)        # 203f58 <_GLOBAL_OFFSET_TABLE_+0x70>
 ee6:	68 0b 00 00 00       	pushq  $0xb
 eeb:	e9 30 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000ef0 <gethostbyname@plt>:
 ef0:	ff 25 6a 30 20 00    	jmpq   *0x20306a(%rip)        # 203f60 <_GLOBAL_OFFSET_TABLE_+0x78>
 ef6:	68 0c 00 00 00       	pushq  $0xc
 efb:	e9 20 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000f00 <__memmove_chk@plt>:
 f00:	ff 25 62 30 20 00    	jmpq   *0x203062(%rip)        # 203f68 <_GLOBAL_OFFSET_TABLE_+0x80>
 f06:	68 0d 00 00 00       	pushq  $0xd
 f0b:	e9 10 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000f10 <strtol@plt>:
 f10:	ff 25 5a 30 20 00    	jmpq   *0x20305a(%rip)        # 203f70 <_GLOBAL_OFFSET_TABLE_+0x88>
 f16:	68 0e 00 00 00       	pushq  $0xe
 f1b:	e9 00 ff ff ff       	jmpq   e20 <_init+0x20>

0000000000000f20 <fflush@plt>:
 f20:	ff 25 52 30 20 00    	jmpq   *0x203052(%rip)        # 203f78 <_GLOBAL_OFFSET_TABLE_+0x90>
 f26:	68 0f 00 00 00       	pushq  $0xf
 f2b:	e9 f0 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f30 <__isoc99_sscanf@plt>:
 f30:	ff 25 4a 30 20 00    	jmpq   *0x20304a(%rip)        # 203f80 <_GLOBAL_OFFSET_TABLE_+0x98>
 f36:	68 10 00 00 00       	pushq  $0x10
 f3b:	e9 e0 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f40 <__printf_chk@plt>:
 f40:	ff 25 42 30 20 00    	jmpq   *0x203042(%rip)        # 203f88 <_GLOBAL_OFFSET_TABLE_+0xa0>
 f46:	68 11 00 00 00       	pushq  $0x11
 f4b:	e9 d0 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f50 <fopen@plt>:
 f50:	ff 25 3a 30 20 00    	jmpq   *0x20303a(%rip)        # 203f90 <_GLOBAL_OFFSET_TABLE_+0xa8>
 f56:	68 12 00 00 00       	pushq  $0x12
 f5b:	e9 c0 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f60 <gethostname@plt>:
 f60:	ff 25 32 30 20 00    	jmpq   *0x203032(%rip)        # 203f98 <_GLOBAL_OFFSET_TABLE_+0xb0>
 f66:	68 13 00 00 00       	pushq  $0x13
 f6b:	e9 b0 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f70 <exit@plt>:
 f70:	ff 25 2a 30 20 00    	jmpq   *0x20302a(%rip)        # 203fa0 <_GLOBAL_OFFSET_TABLE_+0xb8>
 f76:	68 14 00 00 00       	pushq  $0x14
 f7b:	e9 a0 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f80 <connect@plt>:
 f80:	ff 25 22 30 20 00    	jmpq   *0x203022(%rip)        # 203fa8 <_GLOBAL_OFFSET_TABLE_+0xc0>
 f86:	68 15 00 00 00       	pushq  $0x15
 f8b:	e9 90 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000f90 <__fprintf_chk@plt>:
 f90:	ff 25 1a 30 20 00    	jmpq   *0x20301a(%rip)        # 203fb0 <_GLOBAL_OFFSET_TABLE_+0xc8>
 f96:	68 16 00 00 00       	pushq  $0x16
 f9b:	e9 80 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000fa0 <sleep@plt>:
 fa0:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 203fb8 <_GLOBAL_OFFSET_TABLE_+0xd0>
 fa6:	68 17 00 00 00       	pushq  $0x17
 fab:	e9 70 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000fb0 <__ctype_b_loc@plt>:
 fb0:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 203fc0 <_GLOBAL_OFFSET_TABLE_+0xd8>
 fb6:	68 18 00 00 00       	pushq  $0x18
 fbb:	e9 60 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000fc0 <__sprintf_chk@plt>:
 fc0:	ff 25 02 30 20 00    	jmpq   *0x203002(%rip)        # 203fc8 <_GLOBAL_OFFSET_TABLE_+0xe0>
 fc6:	68 19 00 00 00       	pushq  $0x19
 fcb:	e9 50 fe ff ff       	jmpq   e20 <_init+0x20>

0000000000000fd0 <socket@plt>:
 fd0:	ff 25 fa 2f 20 00    	jmpq   *0x202ffa(%rip)        # 203fd0 <_GLOBAL_OFFSET_TABLE_+0xe8>
 fd6:	68 1a 00 00 00       	pushq  $0x1a
 fdb:	e9 40 fe ff ff       	jmpq   e20 <_init+0x20>

Disassembly of section .plt.got:

0000000000000fe0 <.plt.got>:
 fe0:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 203ff8 <_GLOBAL_OFFSET_TABLE_+0x110>
 fe6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000ff0 <_start>:
     ff0:	31 ed                	xor    %ebp,%ebp
     ff2:	49 89 d1             	mov    %rdx,%r9
     ff5:	5e                   	pop    %rsi
     ff6:	48 89 e2             	mov    %rsp,%rdx
     ff9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     ffd:	50                   	push   %rax
     ffe:	54                   	push   %rsp
     fff:	4c 8d 05 da 18 00 00 	lea    0x18da(%rip),%r8        # 28e0 <__libc_csu_fini>
    1006:	48 8d 0d 63 18 00 00 	lea    0x1863(%rip),%rcx        # 2870 <__libc_csu_init>
    100d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 10fa <main>
    1014:	ff 15 c6 2f 20 00    	callq  *0x202fc6(%rip)        # 203fe0 <_GLOBAL_OFFSET_TABLE_+0xf8>
    101a:	f4                   	hlt    
    101b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001020 <deregister_tm_clones>:
    1020:	48 8d 3d 59 36 20 00 	lea    0x203659(%rip),%rdi        # 204680 <__TMC_END__>
    1027:	55                   	push   %rbp
    1028:	48 8d 05 51 36 20 00 	lea    0x203651(%rip),%rax        # 204680 <__TMC_END__>
    102f:	48 39 f8             	cmp    %rdi,%rax
    1032:	48 89 e5             	mov    %rsp,%rbp
    1035:	74 19                	je     1050 <deregister_tm_clones+0x30>
    1037:	48 8b 05 9a 2f 20 00 	mov    0x202f9a(%rip),%rax        # 203fd8 <_GLOBAL_OFFSET_TABLE_+0xf0>
    103e:	48 85 c0             	test   %rax,%rax
    1041:	74 0d                	je     1050 <deregister_tm_clones+0x30>
    1043:	5d                   	pop    %rbp
    1044:	ff e0                	jmpq   *%rax
    1046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    104d:	00 00 00 
    1050:	5d                   	pop    %rbp
    1051:	c3                   	retq   
    1052:	0f 1f 40 00          	nopl   0x0(%rax)
    1056:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    105d:	00 00 00 

0000000000001060 <register_tm_clones>:
    1060:	48 8d 3d 19 36 20 00 	lea    0x203619(%rip),%rdi        # 204680 <__TMC_END__>
    1067:	48 8d 35 12 36 20 00 	lea    0x203612(%rip),%rsi        # 204680 <__TMC_END__>
    106e:	55                   	push   %rbp
    106f:	48 29 fe             	sub    %rdi,%rsi
    1072:	48 89 e5             	mov    %rsp,%rbp
    1075:	48 c1 fe 03          	sar    $0x3,%rsi
    1079:	48 89 f0             	mov    %rsi,%rax
    107c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1080:	48 01 c6             	add    %rax,%rsi
    1083:	48 d1 fe             	sar    %rsi
    1086:	74 18                	je     10a0 <register_tm_clones+0x40>
    1088:	48 8b 05 61 2f 20 00 	mov    0x202f61(%rip),%rax        # 203ff0 <_GLOBAL_OFFSET_TABLE_+0x108>
    108f:	48 85 c0             	test   %rax,%rax
    1092:	74 0c                	je     10a0 <register_tm_clones+0x40>
    1094:	5d                   	pop    %rbp
    1095:	ff e0                	jmpq   *%rax
    1097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    109e:	00 00 
    10a0:	5d                   	pop    %rbp
    10a1:	c3                   	retq   
    10a2:	0f 1f 40 00          	nopl   0x0(%rax)
    10a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <__do_global_dtors_aux>:
    10b0:	80 3d f1 35 20 00 00 	cmpb   $0x0,0x2035f1(%rip)        # 2046a8 <completed.7696>
    10b7:	75 2f                	jne    10e8 <__do_global_dtors_aux+0x38>
    10b9:	48 83 3d 37 2f 20 00 	cmpq   $0x0,0x202f37(%rip)        # 203ff8 <_GLOBAL_OFFSET_TABLE_+0x110>
    10c0:	00 
    10c1:	55                   	push   %rbp
    10c2:	48 89 e5             	mov    %rsp,%rbp
    10c5:	74 0c                	je     10d3 <__do_global_dtors_aux+0x23>
    10c7:	48 8b 3d 3a 2f 20 00 	mov    0x202f3a(%rip),%rdi        # 204008 <__dso_handle>
    10ce:	e8 0d ff ff ff       	callq  fe0 <socket@plt+0x10>
    10d3:	e8 48 ff ff ff       	callq  1020 <deregister_tm_clones>
    10d8:	c6 05 c9 35 20 00 01 	movb   $0x1,0x2035c9(%rip)        # 2046a8 <completed.7696>
    10df:	5d                   	pop    %rbp
    10e0:	c3                   	retq   
    10e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e8:	f3 c3                	repz retq 
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <frame_dummy>:
    10f0:	55                   	push   %rbp
    10f1:	48 89 e5             	mov    %rsp,%rbp
    10f4:	5d                   	pop    %rbp
    10f5:	e9 66 ff ff ff       	jmpq   1060 <register_tm_clones>

00000000000010fa <main>:
    10fa:	53                   	push   %rbx
    10fb:	83 ff 01             	cmp    $0x1,%edi
    10fe:	0f 84 f8 00 00 00    	je     11fc <main+0x102>
    1104:	48 89 f3             	mov    %rsi,%rbx
    1107:	83 ff 02             	cmp    $0x2,%edi
    110a:	0f 85 21 01 00 00    	jne    1231 <main+0x137>
    1110:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1114:	48 8d 35 e9 17 00 00 	lea    0x17e9(%rip),%rsi        # 2904 <_IO_stdin_used+0x4>
    111b:	e8 30 fe ff ff       	callq  f50 <fopen@plt>
    1120:	48 89 05 89 35 20 00 	mov    %rax,0x203589(%rip)        # 2046b0 <infile>
    1127:	48 85 c0             	test   %rax,%rax
    112a:	0f 84 df 00 00 00    	je     120f <main+0x115>
    1130:	e8 3c 06 00 00       	callq  1771 <initialize_bomb>
    1135:	48 8d 3d 4c 18 00 00 	lea    0x184c(%rip),%rdi        # 2988 <_IO_stdin_used+0x88>
    113c:	e8 2f fd ff ff       	callq  e70 <puts@plt>
    1141:	48 8d 3d 80 18 00 00 	lea    0x1880(%rip),%rdi        # 29c8 <_IO_stdin_used+0xc8>
    1148:	e8 23 fd ff ff       	callq  e70 <puts@plt>
    114d:	e8 39 09 00 00       	callq  1a8b <read_line>
    1152:	48 89 c7             	mov    %rax,%rdi
    1155:	e8 fa 00 00 00       	callq  1254 <phase_1>
    115a:	e8 70 0a 00 00       	callq  1bcf <phase_defused>
    115f:	48 8d 3d 92 18 00 00 	lea    0x1892(%rip),%rdi        # 29f8 <_IO_stdin_used+0xf8>
    1166:	e8 05 fd ff ff       	callq  e70 <puts@plt>
    116b:	e8 1b 09 00 00       	callq  1a8b <read_line>
    1170:	48 89 c7             	mov    %rax,%rdi
    1173:	e8 fc 00 00 00       	callq  1274 <phase_2>
    1178:	e8 52 0a 00 00       	callq  1bcf <phase_defused>
    117d:	48 8d 3d b9 17 00 00 	lea    0x17b9(%rip),%rdi        # 293d <_IO_stdin_used+0x3d>
    1184:	e8 e7 fc ff ff       	callq  e70 <puts@plt>
    1189:	e8 fd 08 00 00       	callq  1a8b <read_line>
    118e:	48 89 c7             	mov    %rax,%rdi
    1191:	e8 4c 01 00 00       	callq  12e2 <phase_3>
    1196:	e8 34 0a 00 00       	callq  1bcf <phase_defused>
    119b:	48 8d 3d b9 17 00 00 	lea    0x17b9(%rip),%rdi        # 295b <_IO_stdin_used+0x5b>
    11a2:	e8 c9 fc ff ff       	callq  e70 <puts@plt>
    11a7:	e8 df 08 00 00       	callq  1a8b <read_line>
    11ac:	48 89 c7             	mov    %rax,%rdi
    11af:	e8 43 02 00 00       	callq  13f7 <phase_4>
    11b4:	e8 16 0a 00 00       	callq  1bcf <phase_defused>
    11b9:	48 8d 3d 68 18 00 00 	lea    0x1868(%rip),%rdi        # 2a28 <_IO_stdin_used+0x128>
    11c0:	e8 ab fc ff ff       	callq  e70 <puts@plt>
    11c5:	e8 c1 08 00 00       	callq  1a8b <read_line>
    11ca:	48 89 c7             	mov    %rax,%rdi
    11cd:	e8 9a 02 00 00       	callq  146c <phase_5>
    11d2:	e8 f8 09 00 00       	callq  1bcf <phase_defused>
    11d7:	48 8d 3d 8c 17 00 00 	lea    0x178c(%rip),%rdi        # 296a <_IO_stdin_used+0x6a>
    11de:	e8 8d fc ff ff       	callq  e70 <puts@plt>
    11e3:	e8 a3 08 00 00       	callq  1a8b <read_line>
    11e8:	48 89 c7             	mov    %rax,%rdi
    11eb:	e8 c2 02 00 00       	callq  14b2 <phase_6>
    11f0:	e8 da 09 00 00       	callq  1bcf <phase_defused>
    11f5:	b8 00 00 00 00       	mov    $0x0,%eax
    11fa:	5b                   	pop    %rbx
    11fb:	c3                   	retq   
    11fc:	48 8b 05 8d 34 20 00 	mov    0x20348d(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1203:	48 89 05 a6 34 20 00 	mov    %rax,0x2034a6(%rip)        # 2046b0 <infile>
    120a:	e9 21 ff ff ff       	jmpq   1130 <main+0x36>
    120f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1213:	48 8b 13             	mov    (%rbx),%rdx
    1216:	48 8d 35 e9 16 00 00 	lea    0x16e9(%rip),%rsi        # 2906 <_IO_stdin_used+0x6>
    121d:	bf 01 00 00 00       	mov    $0x1,%edi
    1222:	e8 19 fd ff ff       	callq  f40 <__printf_chk@plt>
    1227:	bf 08 00 00 00       	mov    $0x8,%edi
    122c:	e8 3f fd ff ff       	callq  f70 <exit@plt>
    1231:	48 8b 16             	mov    (%rsi),%rdx
    1234:	48 8d 35 e8 16 00 00 	lea    0x16e8(%rip),%rsi        # 2923 <_IO_stdin_used+0x23>
    123b:	bf 01 00 00 00       	mov    $0x1,%edi
    1240:	b8 00 00 00 00       	mov    $0x0,%eax
    1245:	e8 f6 fc ff ff       	callq  f40 <__printf_chk@plt>
    124a:	bf 08 00 00 00       	mov    $0x8,%edi
    124f:	e8 1c fd ff ff       	callq  f70 <exit@plt>

0000000000001254 <phase_1>:
    1254:	48 83 ec 08          	sub    $0x8,%rsp
    1258:	48 8d 35 f1 17 00 00 	lea    0x17f1(%rip),%rsi        # 2a50 <_IO_stdin_used+0x150>
    125f:	e8 a6 04 00 00       	callq  170a <strings_not_equal>
    1264:	85 c0                	test   %eax,%eax
    1266:	75 05                	jne    126d <phase_1+0x19>
    1268:	48 83 c4 08          	add    $0x8,%rsp
    126c:	c3                   	retq   
    126d:	e8 9c 07 00 00       	callq  1a0e <explode_bomb>
    1272:	eb f4                	jmp    1268 <phase_1+0x14>

0000000000001274 <phase_2>:
    1274:	55                   	push   %rbp
    1275:	53                   	push   %rbx
    1276:	48 83 ec 28          	sub    $0x28,%rsp
    127a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1281:	00 00 
    1283:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1288:	31 c0                	xor    %eax,%eax
    128a:	48 89 e6             	mov    %rsp,%rsi
    128d:	e8 b8 07 00 00       	callq  1a4a <read_six_numbers>
    1292:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1296:	78 0a                	js     12a2 <phase_2+0x2e>
    1298:	bb 01 00 00 00       	mov    $0x1,%ebx
    129d:	48 89 e5             	mov    %rsp,%rbp
    12a0:	eb 11                	jmp    12b3 <phase_2+0x3f>
    12a2:	e8 67 07 00 00       	callq  1a0e <explode_bomb>
    12a7:	eb ef                	jmp    1298 <phase_2+0x24>
    12a9:	48 83 c3 01          	add    $0x1,%rbx
    12ad:	48 83 fb 06          	cmp    $0x6,%rbx
    12b1:	74 13                	je     12c6 <phase_2+0x52>
    12b3:	89 d8                	mov    %ebx,%eax
    12b5:	03 44 9d fc          	add    -0x4(%rbp,%rbx,4),%eax
    12b9:	39 44 9d 00          	cmp    %eax,0x0(%rbp,%rbx,4)
    12bd:	74 ea                	je     12a9 <phase_2+0x35>
    12bf:	e8 4a 07 00 00       	callq  1a0e <explode_bomb>
    12c4:	eb e3                	jmp    12a9 <phase_2+0x35>
    12c6:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12cb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    12d2:	00 00 
    12d4:	75 07                	jne    12dd <phase_2+0x69>
    12d6:	48 83 c4 28          	add    $0x28,%rsp
    12da:	5b                   	pop    %rbx
    12db:	5d                   	pop    %rbp
    12dc:	c3                   	retq   
    12dd:	e8 ae fb ff ff       	callq  e90 <__stack_chk_fail@plt>

00000000000012e2 <phase_3>:
    12e2:	48 83 ec 18          	sub    $0x18,%rsp
    12e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12ed:	00 00 
    12ef:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    12f4:	31 c0                	xor    %eax,%eax
    12f6:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    12fb:	48 89 e2             	mov    %rsp,%rdx
    12fe:	48 8d 35 68 1a 00 00 	lea    0x1a68(%rip),%rsi        # 2d6d <array.3417+0x28d>
    1305:	e8 26 fc ff ff       	callq  f30 <__isoc99_sscanf@plt>
    130a:	83 f8 01             	cmp    $0x1,%eax
    130d:	7e 1d                	jle    132c <phase_3+0x4a>
    130f:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1313:	0f 87 99 00 00 00    	ja     13b2 <phase_3+0xd0>
    1319:	8b 04 24             	mov    (%rsp),%eax
    131c:	48 8d 15 9d 17 00 00 	lea    0x179d(%rip),%rdx        # 2ac0 <_IO_stdin_used+0x1c0>
    1323:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1327:	48 01 d0             	add    %rdx,%rax
    132a:	ff e0                	jmpq   *%rax
    132c:	e8 dd 06 00 00       	callq  1a0e <explode_bomb>
    1331:	eb dc                	jmp    130f <phase_3+0x2d>
    1333:	b8 07 01 00 00       	mov    $0x107,%eax
    1338:	eb 05                	jmp    133f <phase_3+0x5d>
    133a:	b8 00 00 00 00       	mov    $0x0,%eax
    133f:	2d 62 02 00 00       	sub    $0x262,%eax
    1344:	05 26 01 00 00       	add    $0x126,%eax
    1349:	2d d0 03 00 00       	sub    $0x3d0,%eax
    134e:	05 d0 03 00 00       	add    $0x3d0,%eax
    1353:	2d d0 03 00 00       	sub    $0x3d0,%eax
    1358:	05 d0 03 00 00       	add    $0x3d0,%eax
    135d:	2d d0 03 00 00       	sub    $0x3d0,%eax
    1362:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    1366:	7f 06                	jg     136e <phase_3+0x8c>
    1368:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    136c:	74 05                	je     1373 <phase_3+0x91>
    136e:	e8 9b 06 00 00       	callq  1a0e <explode_bomb>
    1373:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1378:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    137f:	00 00 
    1381:	75 3b                	jne    13be <phase_3+0xdc>
    1383:	48 83 c4 18          	add    $0x18,%rsp
    1387:	c3                   	retq   
    1388:	b8 00 00 00 00       	mov    $0x0,%eax
    138d:	eb b5                	jmp    1344 <phase_3+0x62>
    138f:	b8 00 00 00 00       	mov    $0x0,%eax
    1394:	eb b3                	jmp    1349 <phase_3+0x67>
    1396:	b8 00 00 00 00       	mov    $0x0,%eax
    139b:	eb b1                	jmp    134e <phase_3+0x6c>
    139d:	b8 00 00 00 00       	mov    $0x0,%eax
    13a2:	eb af                	jmp    1353 <phase_3+0x71>
    13a4:	b8 00 00 00 00       	mov    $0x0,%eax
    13a9:	eb ad                	jmp    1358 <phase_3+0x76>
    13ab:	b8 00 00 00 00       	mov    $0x0,%eax
    13b0:	eb ab                	jmp    135d <phase_3+0x7b>
    13b2:	e8 57 06 00 00       	callq  1a0e <explode_bomb>
    13b7:	b8 00 00 00 00       	mov    $0x0,%eax
    13bc:	eb a4                	jmp    1362 <phase_3+0x80>
    13be:	e8 cd fa ff ff       	callq  e90 <__stack_chk_fail@plt>

00000000000013c3 <func4>:
    13c3:	53                   	push   %rbx
    13c4:	89 d0                	mov    %edx,%eax
    13c6:	29 f0                	sub    %esi,%eax
    13c8:	89 c3                	mov    %eax,%ebx
    13ca:	c1 eb 1f             	shr    $0x1f,%ebx
    13cd:	01 c3                	add    %eax,%ebx
    13cf:	d1 fb                	sar    %ebx
    13d1:	01 f3                	add    %esi,%ebx
    13d3:	39 fb                	cmp    %edi,%ebx
    13d5:	7f 08                	jg     13df <func4+0x1c>
    13d7:	39 fb                	cmp    %edi,%ebx
    13d9:	7c 10                	jl     13eb <func4+0x28>
    13db:	89 d8                	mov    %ebx,%eax
    13dd:	5b                   	pop    %rbx
    13de:	c3                   	retq   
    13df:	8d 53 ff             	lea    -0x1(%rbx),%edx
    13e2:	e8 dc ff ff ff       	callq  13c3 <func4>
    13e7:	01 c3                	add    %eax,%ebx
    13e9:	eb f0                	jmp    13db <func4+0x18>
    13eb:	8d 73 01             	lea    0x1(%rbx),%esi
    13ee:	e8 d0 ff ff ff       	callq  13c3 <func4>
    13f3:	01 c3                	add    %eax,%ebx
    13f5:	eb e4                	jmp    13db <func4+0x18>

00000000000013f7 <phase_4>:
    13f7:	48 83 ec 18          	sub    $0x18,%rsp
    13fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1402:	00 00 
    1404:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1409:	31 c0                	xor    %eax,%eax
    140b:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1410:	48 89 e2             	mov    %rsp,%rdx
    1413:	48 8d 35 53 19 00 00 	lea    0x1953(%rip),%rsi        # 2d6d <array.3417+0x28d>
    141a:	e8 11 fb ff ff       	callq  f30 <__isoc99_sscanf@plt>
    141f:	83 f8 02             	cmp    $0x2,%eax
    1422:	75 06                	jne    142a <phase_4+0x33>
    1424:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    1428:	76 05                	jbe    142f <phase_4+0x38>
    142a:	e8 df 05 00 00       	callq  1a0e <explode_bomb>
    142f:	ba 0e 00 00 00       	mov    $0xe,%edx
    1434:	be 00 00 00 00       	mov    $0x0,%esi
    1439:	8b 3c 24             	mov    (%rsp),%edi
    143c:	e8 82 ff ff ff       	callq  13c3 <func4>
    1441:	83 f8 0b             	cmp    $0xb,%eax
    1444:	75 07                	jne    144d <phase_4+0x56>
    1446:	83 7c 24 04 0b       	cmpl   $0xb,0x4(%rsp)
    144b:	74 05                	je     1452 <phase_4+0x5b>
    144d:	e8 bc 05 00 00       	callq  1a0e <explode_bomb>
    1452:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1457:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    145e:	00 00 
    1460:	75 05                	jne    1467 <phase_4+0x70>
    1462:	48 83 c4 18          	add    $0x18,%rsp
    1466:	c3                   	retq   
    1467:	e8 24 fa ff ff       	callq  e90 <__stack_chk_fail@plt>

000000000000146c <phase_5>:
    146c:	53                   	push   %rbx
    146d:	48 89 fb             	mov    %rdi,%rbx
    1470:	e8 78 02 00 00       	callq  16ed <string_length>
    1475:	83 f8 06             	cmp    $0x6,%eax
    1478:	75 31                	jne    14ab <phase_5+0x3f>
    147a:	48 89 d8             	mov    %rbx,%rax
    147d:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1481:	b9 00 00 00 00       	mov    $0x0,%ecx
    1486:	48 8d 35 53 16 00 00 	lea    0x1653(%rip),%rsi        # 2ae0 <array.3417>
    148d:	0f b6 10             	movzbl (%rax),%edx
    1490:	83 e2 0f             	and    $0xf,%edx
    1493:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1496:	48 83 c0 01          	add    $0x1,%rax
    149a:	48 39 f8             	cmp    %rdi,%rax
    149d:	75 ee                	jne    148d <phase_5+0x21>
    149f:	83 f9 33             	cmp    $0x33,%ecx
    14a2:	74 05                	je     14a9 <phase_5+0x3d>
    14a4:	e8 65 05 00 00       	callq  1a0e <explode_bomb>
    14a9:	5b                   	pop    %rbx
    14aa:	c3                   	retq   
    14ab:	e8 5e 05 00 00       	callq  1a0e <explode_bomb>
    14b0:	eb c8                	jmp    147a <phase_5+0xe>

00000000000014b2 <phase_6>:
    14b2:	41 55                	push   %r13
    14b4:	41 54                	push   %r12
    14b6:	55                   	push   %rbp
    14b7:	53                   	push   %rbx
    14b8:	48 83 ec 68          	sub    $0x68,%rsp
    14bc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14c3:	00 00 
    14c5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    14ca:	31 c0                	xor    %eax,%eax
    14cc:	49 89 e4             	mov    %rsp,%r12
    14cf:	4c 89 e6             	mov    %r12,%rsi
    14d2:	e8 73 05 00 00       	callq  1a4a <read_six_numbers>
    14d7:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    14dd:	eb 25                	jmp    1504 <phase_6+0x52>
    14df:	e8 2a 05 00 00       	callq  1a0e <explode_bomb>
    14e4:	eb 2d                	jmp    1513 <phase_6+0x61>
    14e6:	83 c3 01             	add    $0x1,%ebx
    14e9:	83 fb 05             	cmp    $0x5,%ebx
    14ec:	7f 12                	jg     1500 <phase_6+0x4e>
    14ee:	48 63 c3             	movslq %ebx,%rax
    14f1:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    14f4:	39 45 00             	cmp    %eax,0x0(%rbp)
    14f7:	75 ed                	jne    14e6 <phase_6+0x34>
    14f9:	e8 10 05 00 00       	callq  1a0e <explode_bomb>
    14fe:	eb e6                	jmp    14e6 <phase_6+0x34>
    1500:	49 83 c4 04          	add    $0x4,%r12
    1504:	4c 89 e5             	mov    %r12,%rbp
    1507:	41 8b 04 24          	mov    (%r12),%eax
    150b:	83 e8 01             	sub    $0x1,%eax
    150e:	83 f8 05             	cmp    $0x5,%eax
    1511:	77 cc                	ja     14df <phase_6+0x2d>
    1513:	41 83 c5 01          	add    $0x1,%r13d
    1517:	41 83 fd 06          	cmp    $0x6,%r13d
    151b:	74 35                	je     1552 <phase_6+0xa0>
    151d:	44 89 eb             	mov    %r13d,%ebx
    1520:	eb cc                	jmp    14ee <phase_6+0x3c>
    1522:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1526:	83 c0 01             	add    $0x1,%eax
    1529:	39 c8                	cmp    %ecx,%eax
    152b:	75 f5                	jne    1522 <phase_6+0x70>
    152d:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1532:	48 83 c6 01          	add    $0x1,%rsi
    1536:	48 83 fe 06          	cmp    $0x6,%rsi
    153a:	74 1d                	je     1559 <phase_6+0xa7>
    153c:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    153f:	b8 01 00 00 00       	mov    $0x1,%eax
    1544:	48 8d 15 e5 2c 20 00 	lea    0x202ce5(%rip),%rdx        # 204230 <node1>
    154b:	83 f9 01             	cmp    $0x1,%ecx
    154e:	7f d2                	jg     1522 <phase_6+0x70>
    1550:	eb db                	jmp    152d <phase_6+0x7b>
    1552:	be 00 00 00 00       	mov    $0x0,%esi
    1557:	eb e3                	jmp    153c <phase_6+0x8a>
    1559:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    155e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1563:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1567:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    156c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1570:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1575:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1579:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    157e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1582:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1587:	48 89 42 08          	mov    %rax,0x8(%rdx)
    158b:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1592:	00 
    1593:	bd 05 00 00 00       	mov    $0x5,%ebp
    1598:	eb 09                	jmp    15a3 <phase_6+0xf1>
    159a:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    159e:	83 ed 01             	sub    $0x1,%ebp
    15a1:	74 11                	je     15b4 <phase_6+0x102>
    15a3:	48 8b 43 08          	mov    0x8(%rbx),%rax
    15a7:	8b 00                	mov    (%rax),%eax
    15a9:	39 03                	cmp    %eax,(%rbx)
    15ab:	7d ed                	jge    159a <phase_6+0xe8>
    15ad:	e8 5c 04 00 00       	callq  1a0e <explode_bomb>
    15b2:	eb e6                	jmp    159a <phase_6+0xe8>
    15b4:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    15b9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    15c0:	00 00 
    15c2:	75 0b                	jne    15cf <phase_6+0x11d>
    15c4:	48 83 c4 68          	add    $0x68,%rsp
    15c8:	5b                   	pop    %rbx
    15c9:	5d                   	pop    %rbp
    15ca:	41 5c                	pop    %r12
    15cc:	41 5d                	pop    %r13
    15ce:	c3                   	retq   
    15cf:	e8 bc f8 ff ff       	callq  e90 <__stack_chk_fail@plt>

00000000000015d4 <fun7>:
    15d4:	48 85 ff             	test   %rdi,%rdi
    15d7:	74 34                	je     160d <fun7+0x39>
    15d9:	48 83 ec 08          	sub    $0x8,%rsp
    15dd:	8b 17                	mov    (%rdi),%edx
    15df:	39 f2                	cmp    %esi,%edx
    15e1:	7f 0e                	jg     15f1 <fun7+0x1d>
    15e3:	b8 00 00 00 00       	mov    $0x0,%eax
    15e8:	39 f2                	cmp    %esi,%edx
    15ea:	75 12                	jne    15fe <fun7+0x2a>
    15ec:	48 83 c4 08          	add    $0x8,%rsp
    15f0:	c3                   	retq   
    15f1:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    15f5:	e8 da ff ff ff       	callq  15d4 <fun7>
    15fa:	01 c0                	add    %eax,%eax
    15fc:	eb ee                	jmp    15ec <fun7+0x18>
    15fe:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1602:	e8 cd ff ff ff       	callq  15d4 <fun7>
    1607:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    160b:	eb df                	jmp    15ec <fun7+0x18>
    160d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1612:	c3                   	retq   

0000000000001613 <secret_phase>:
    1613:	53                   	push   %rbx
    1614:	e8 72 04 00 00       	callq  1a8b <read_line>
    1619:	ba 0a 00 00 00       	mov    $0xa,%edx
    161e:	be 00 00 00 00       	mov    $0x0,%esi
    1623:	48 89 c7             	mov    %rax,%rdi
    1626:	e8 e5 f8 ff ff       	callq  f10 <strtol@plt>
    162b:	48 89 c3             	mov    %rax,%rbx
    162e:	8d 40 ff             	lea    -0x1(%rax),%eax
    1631:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1636:	77 2b                	ja     1663 <secret_phase+0x50>
    1638:	89 de                	mov    %ebx,%esi
    163a:	48 8d 3d 0f 2b 20 00 	lea    0x202b0f(%rip),%rdi        # 204150 <n1>
    1641:	e8 8e ff ff ff       	callq  15d4 <fun7>
    1646:	83 f8 05             	cmp    $0x5,%eax
    1649:	74 05                	je     1650 <secret_phase+0x3d>
    164b:	e8 be 03 00 00       	callq  1a0e <explode_bomb>
    1650:	48 8d 3d 29 14 00 00 	lea    0x1429(%rip),%rdi        # 2a80 <_IO_stdin_used+0x180>
    1657:	e8 14 f8 ff ff       	callq  e70 <puts@plt>
    165c:	e8 6e 05 00 00       	callq  1bcf <phase_defused>
    1661:	5b                   	pop    %rbx
    1662:	c3                   	retq   
    1663:	e8 a6 03 00 00       	callq  1a0e <explode_bomb>
    1668:	eb ce                	jmp    1638 <secret_phase+0x25>

000000000000166a <sig_handler>:
    166a:	48 83 ec 08          	sub    $0x8,%rsp
    166e:	48 8d 3d ab 14 00 00 	lea    0x14ab(%rip),%rdi        # 2b20 <array.3417+0x40>
    1675:	e8 f6 f7 ff ff       	callq  e70 <puts@plt>
    167a:	bf 03 00 00 00       	mov    $0x3,%edi
    167f:	e8 1c f9 ff ff       	callq  fa0 <sleep@plt>
    1684:	48 8d 35 5e 16 00 00 	lea    0x165e(%rip),%rsi        # 2ce9 <array.3417+0x209>
    168b:	bf 01 00 00 00       	mov    $0x1,%edi
    1690:	b8 00 00 00 00       	mov    $0x0,%eax
    1695:	e8 a6 f8 ff ff       	callq  f40 <__printf_chk@plt>
    169a:	48 8b 3d df 2f 20 00 	mov    0x202fdf(%rip),%rdi        # 204680 <__TMC_END__>
    16a1:	e8 7a f8 ff ff       	callq  f20 <fflush@plt>
    16a6:	bf 01 00 00 00       	mov    $0x1,%edi
    16ab:	e8 f0 f8 ff ff       	callq  fa0 <sleep@plt>
    16b0:	48 8d 3d 3a 16 00 00 	lea    0x163a(%rip),%rdi        # 2cf1 <array.3417+0x211>
    16b7:	e8 b4 f7 ff ff       	callq  e70 <puts@plt>
    16bc:	bf 10 00 00 00       	mov    $0x10,%edi
    16c1:	e8 aa f8 ff ff       	callq  f70 <exit@plt>

00000000000016c6 <invalid_phase>:
    16c6:	48 83 ec 08          	sub    $0x8,%rsp
    16ca:	48 89 fa             	mov    %rdi,%rdx
    16cd:	48 8d 35 25 16 00 00 	lea    0x1625(%rip),%rsi        # 2cf9 <array.3417+0x219>
    16d4:	bf 01 00 00 00       	mov    $0x1,%edi
    16d9:	b8 00 00 00 00       	mov    $0x0,%eax
    16de:	e8 5d f8 ff ff       	callq  f40 <__printf_chk@plt>
    16e3:	bf 08 00 00 00       	mov    $0x8,%edi
    16e8:	e8 83 f8 ff ff       	callq  f70 <exit@plt>

00000000000016ed <string_length>:
    16ed:	80 3f 00             	cmpb   $0x0,(%rdi)
    16f0:	74 12                	je     1704 <string_length+0x17>
    16f2:	48 89 fa             	mov    %rdi,%rdx
    16f5:	48 83 c2 01          	add    $0x1,%rdx
    16f9:	89 d0                	mov    %edx,%eax
    16fb:	29 f8                	sub    %edi,%eax
    16fd:	80 3a 00             	cmpb   $0x0,(%rdx)
    1700:	75 f3                	jne    16f5 <string_length+0x8>
    1702:	f3 c3                	repz retq 
    1704:	b8 00 00 00 00       	mov    $0x0,%eax
    1709:	c3                   	retq   

000000000000170a <strings_not_equal>:
    170a:	41 54                	push   %r12
    170c:	55                   	push   %rbp
    170d:	53                   	push   %rbx
    170e:	48 89 fb             	mov    %rdi,%rbx
    1711:	48 89 f5             	mov    %rsi,%rbp
    1714:	e8 d4 ff ff ff       	callq  16ed <string_length>
    1719:	41 89 c4             	mov    %eax,%r12d
    171c:	48 89 ef             	mov    %rbp,%rdi
    171f:	e8 c9 ff ff ff       	callq  16ed <string_length>
    1724:	ba 01 00 00 00       	mov    $0x1,%edx
    1729:	41 39 c4             	cmp    %eax,%r12d
    172c:	74 07                	je     1735 <strings_not_equal+0x2b>
    172e:	89 d0                	mov    %edx,%eax
    1730:	5b                   	pop    %rbx
    1731:	5d                   	pop    %rbp
    1732:	41 5c                	pop    %r12
    1734:	c3                   	retq   
    1735:	0f b6 03             	movzbl (%rbx),%eax
    1738:	84 c0                	test   %al,%al
    173a:	74 27                	je     1763 <strings_not_equal+0x59>
    173c:	3a 45 00             	cmp    0x0(%rbp),%al
    173f:	75 29                	jne    176a <strings_not_equal+0x60>
    1741:	48 83 c3 01          	add    $0x1,%rbx
    1745:	48 83 c5 01          	add    $0x1,%rbp
    1749:	0f b6 03             	movzbl (%rbx),%eax
    174c:	84 c0                	test   %al,%al
    174e:	74 0c                	je     175c <strings_not_equal+0x52>
    1750:	38 45 00             	cmp    %al,0x0(%rbp)
    1753:	74 ec                	je     1741 <strings_not_equal+0x37>
    1755:	ba 01 00 00 00       	mov    $0x1,%edx
    175a:	eb d2                	jmp    172e <strings_not_equal+0x24>
    175c:	ba 00 00 00 00       	mov    $0x0,%edx
    1761:	eb cb                	jmp    172e <strings_not_equal+0x24>
    1763:	ba 00 00 00 00       	mov    $0x0,%edx
    1768:	eb c4                	jmp    172e <strings_not_equal+0x24>
    176a:	ba 01 00 00 00       	mov    $0x1,%edx
    176f:	eb bd                	jmp    172e <strings_not_equal+0x24>

0000000000001771 <initialize_bomb>:
    1771:	55                   	push   %rbp
    1772:	53                   	push   %rbx
    1773:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    177a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1781:	00 00 
    1783:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    178a:	00 
    178b:	31 c0                	xor    %eax,%eax
    178d:	48 8d 35 d6 fe ff ff 	lea    -0x12a(%rip),%rsi        # 166a <sig_handler>
    1794:	bf 02 00 00 00       	mov    $0x2,%edi
    1799:	e8 42 f7 ff ff       	callq  ee0 <signal@plt>
    179e:	48 89 e7             	mov    %rsp,%rdi
    17a1:	be 40 00 00 00       	mov    $0x40,%esi
    17a6:	e8 b5 f7 ff ff       	callq  f60 <gethostname@plt>
    17ab:	85 c0                	test   %eax,%eax
    17ad:	75 45                	jne    17f4 <initialize_bomb+0x83>
    17af:	48 8b 3d ca 2a 20 00 	mov    0x202aca(%rip),%rdi        # 204280 <host_table>
    17b6:	48 8d 1d cb 2a 20 00 	lea    0x202acb(%rip),%rbx        # 204288 <host_table+0x8>
    17bd:	48 89 e5             	mov    %rsp,%rbp
    17c0:	48 85 ff             	test   %rdi,%rdi
    17c3:	74 19                	je     17de <initialize_bomb+0x6d>
    17c5:	48 89 ee             	mov    %rbp,%rsi
    17c8:	e8 73 f6 ff ff       	callq  e40 <strcasecmp@plt>
    17cd:	85 c0                	test   %eax,%eax
    17cf:	74 5e                	je     182f <initialize_bomb+0xbe>
    17d1:	48 83 c3 08          	add    $0x8,%rbx
    17d5:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    17d9:	48 85 ff             	test   %rdi,%rdi
    17dc:	75 e7                	jne    17c5 <initialize_bomb+0x54>
    17de:	48 8d 3d ab 13 00 00 	lea    0x13ab(%rip),%rdi        # 2b90 <array.3417+0xb0>
    17e5:	e8 86 f6 ff ff       	callq  e70 <puts@plt>
    17ea:	bf 08 00 00 00       	mov    $0x8,%edi
    17ef:	e8 7c f7 ff ff       	callq  f70 <exit@plt>
    17f4:	48 8d 3d 5d 13 00 00 	lea    0x135d(%rip),%rdi        # 2b58 <array.3417+0x78>
    17fb:	e8 70 f6 ff ff       	callq  e70 <puts@plt>
    1800:	bf 08 00 00 00       	mov    $0x8,%edi
    1805:	e8 66 f7 ff ff       	callq  f70 <exit@plt>
    180a:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    180f:	48 8d 35 f4 14 00 00 	lea    0x14f4(%rip),%rsi        # 2d0a <array.3417+0x22a>
    1816:	bf 01 00 00 00       	mov    $0x1,%edi
    181b:	b8 00 00 00 00       	mov    $0x0,%eax
    1820:	e8 1b f7 ff ff       	callq  f40 <__printf_chk@plt>
    1825:	bf 08 00 00 00       	mov    $0x8,%edi
    182a:	e8 41 f7 ff ff       	callq  f70 <exit@plt>
    182f:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1834:	e8 b2 0d 00 00       	callq  25eb <init_driver>
    1839:	85 c0                	test   %eax,%eax
    183b:	78 cd                	js     180a <initialize_bomb+0x99>
    183d:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1844:	00 
    1845:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    184c:	00 00 
    184e:	75 0a                	jne    185a <initialize_bomb+0xe9>
    1850:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1857:	5b                   	pop    %rbx
    1858:	5d                   	pop    %rbp
    1859:	c3                   	retq   
    185a:	e8 31 f6 ff ff       	callq  e90 <__stack_chk_fail@plt>

000000000000185f <initialize_bomb_solve>:
    185f:	f3 c3                	repz retq 

0000000000001861 <blank_line>:
    1861:	55                   	push   %rbp
    1862:	53                   	push   %rbx
    1863:	48 83 ec 08          	sub    $0x8,%rsp
    1867:	48 89 fd             	mov    %rdi,%rbp
    186a:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    186e:	84 db                	test   %bl,%bl
    1870:	74 1e                	je     1890 <blank_line+0x2f>
    1872:	e8 39 f7 ff ff       	callq  fb0 <__ctype_b_loc@plt>
    1877:	48 83 c5 01          	add    $0x1,%rbp
    187b:	48 0f be db          	movsbq %bl,%rbx
    187f:	48 8b 00             	mov    (%rax),%rax
    1882:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1887:	75 e1                	jne    186a <blank_line+0x9>
    1889:	b8 00 00 00 00       	mov    $0x0,%eax
    188e:	eb 05                	jmp    1895 <blank_line+0x34>
    1890:	b8 01 00 00 00       	mov    $0x1,%eax
    1895:	48 83 c4 08          	add    $0x8,%rsp
    1899:	5b                   	pop    %rbx
    189a:	5d                   	pop    %rbp
    189b:	c3                   	retq   

000000000000189c <skip>:
    189c:	55                   	push   %rbp
    189d:	53                   	push   %rbx
    189e:	48 83 ec 08          	sub    $0x8,%rsp
    18a2:	48 8d 2d 17 2e 20 00 	lea    0x202e17(%rip),%rbp        # 2046c0 <input_strings>
    18a9:	48 63 05 fc 2d 20 00 	movslq 0x202dfc(%rip),%rax        # 2046ac <num_input_strings>
    18b0:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    18b4:	48 c1 e7 04          	shl    $0x4,%rdi
    18b8:	48 01 ef             	add    %rbp,%rdi
    18bb:	48 8b 15 ee 2d 20 00 	mov    0x202dee(%rip),%rdx        # 2046b0 <infile>
    18c2:	be 50 00 00 00       	mov    $0x50,%esi
    18c7:	e8 04 f6 ff ff       	callq  ed0 <fgets@plt>
    18cc:	48 89 c3             	mov    %rax,%rbx
    18cf:	48 85 c0             	test   %rax,%rax
    18d2:	74 0c                	je     18e0 <skip+0x44>
    18d4:	48 89 c7             	mov    %rax,%rdi
    18d7:	e8 85 ff ff ff       	callq  1861 <blank_line>
    18dc:	85 c0                	test   %eax,%eax
    18de:	75 c9                	jne    18a9 <skip+0xd>
    18e0:	48 89 d8             	mov    %rbx,%rax
    18e3:	48 83 c4 08          	add    $0x8,%rsp
    18e7:	5b                   	pop    %rbx
    18e8:	5d                   	pop    %rbp
    18e9:	c3                   	retq   

00000000000018ea <send_msg>:
    18ea:	53                   	push   %rbx
    18eb:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    18f2:	41 89 f8             	mov    %edi,%r8d
    18f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18fc:	00 00 
    18fe:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1905:	00 
    1906:	31 c0                	xor    %eax,%eax
    1908:	8b 35 9e 2d 20 00    	mov    0x202d9e(%rip),%esi        # 2046ac <num_input_strings>
    190e:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1911:	48 98                	cltq   
    1913:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1917:	48 c1 e2 04          	shl    $0x4,%rdx
    191b:	48 8d 05 9e 2d 20 00 	lea    0x202d9e(%rip),%rax        # 2046c0 <input_strings>
    1922:	48 01 c2             	add    %rax,%rdx
    1925:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    192c:	b8 00 00 00 00       	mov    $0x0,%eax
    1931:	48 89 d7             	mov    %rdx,%rdi
    1934:	f2 ae                	repnz scas %es:(%rdi),%al
    1936:	48 89 c8             	mov    %rcx,%rax
    1939:	48 f7 d0             	not    %rax
    193c:	48 83 c0 63          	add    $0x63,%rax
    1940:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1946:	0f 87 86 00 00 00    	ja     19d2 <send_msg+0xe8>
    194c:	45 85 c0             	test   %r8d,%r8d
    194f:	4c 8d 0d ce 13 00 00 	lea    0x13ce(%rip),%r9        # 2d24 <array.3417+0x244>
    1956:	48 8d 05 cf 13 00 00 	lea    0x13cf(%rip),%rax        # 2d2c <array.3417+0x24c>
    195d:	4c 0f 44 c8          	cmove  %rax,%r9
    1961:	48 89 e3             	mov    %rsp,%rbx
    1964:	52                   	push   %rdx
    1965:	56                   	push   %rsi
    1966:	44 8b 05 d7 27 20 00 	mov    0x2027d7(%rip),%r8d        # 204144 <bomb_id>
    196d:	48 8d 0d c1 13 00 00 	lea    0x13c1(%rip),%rcx        # 2d35 <array.3417+0x255>
    1974:	ba 00 20 00 00       	mov    $0x2000,%edx
    1979:	be 01 00 00 00       	mov    $0x1,%esi
    197e:	48 89 df             	mov    %rbx,%rdi
    1981:	b8 00 00 00 00       	mov    $0x0,%eax
    1986:	e8 35 f6 ff ff       	callq  fc0 <__sprintf_chk@plt>
    198b:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1992:	00 
    1993:	b9 00 00 00 00       	mov    $0x0,%ecx
    1998:	48 89 da             	mov    %rbx,%rdx
    199b:	48 8d 35 7e 27 20 00 	lea    0x20277e(%rip),%rsi        # 204120 <user_password>
    19a2:	48 8d 3d 8f 27 20 00 	lea    0x20278f(%rip),%rdi        # 204138 <userid>
    19a9:	e8 46 0e 00 00       	callq  27f4 <driver_post>
    19ae:	48 83 c4 10          	add    $0x10,%rsp
    19b2:	85 c0                	test   %eax,%eax
    19b4:	78 3c                	js     19f2 <send_msg+0x108>
    19b6:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    19bd:	00 
    19be:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    19c5:	00 00 
    19c7:	75 40                	jne    1a09 <send_msg+0x11f>
    19c9:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    19d0:	5b                   	pop    %rbx
    19d1:	c3                   	retq   
    19d2:	48 8d 35 ef 11 00 00 	lea    0x11ef(%rip),%rsi        # 2bc8 <array.3417+0xe8>
    19d9:	bf 01 00 00 00       	mov    $0x1,%edi
    19de:	b8 00 00 00 00       	mov    $0x0,%eax
    19e3:	e8 58 f5 ff ff       	callq  f40 <__printf_chk@plt>
    19e8:	bf 08 00 00 00       	mov    $0x8,%edi
    19ed:	e8 7e f5 ff ff       	callq  f70 <exit@plt>
    19f2:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    19f9:	00 
    19fa:	e8 71 f4 ff ff       	callq  e70 <puts@plt>
    19ff:	bf 00 00 00 00       	mov    $0x0,%edi
    1a04:	e8 67 f5 ff ff       	callq  f70 <exit@plt>
    1a09:	e8 82 f4 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000001a0e <explode_bomb>:
    1a0e:	48 83 ec 08          	sub    $0x8,%rsp
    1a12:	48 8d 3d 28 13 00 00 	lea    0x1328(%rip),%rdi        # 2d41 <array.3417+0x261>
    1a19:	e8 52 f4 ff ff       	callq  e70 <puts@plt>
    1a1e:	48 8d 3d 25 13 00 00 	lea    0x1325(%rip),%rdi        # 2d4a <array.3417+0x26a>
    1a25:	e8 46 f4 ff ff       	callq  e70 <puts@plt>
    1a2a:	bf 00 00 00 00       	mov    $0x0,%edi
    1a2f:	e8 b6 fe ff ff       	callq  18ea <send_msg>
    1a34:	48 8d 3d b5 11 00 00 	lea    0x11b5(%rip),%rdi        # 2bf0 <array.3417+0x110>
    1a3b:	e8 30 f4 ff ff       	callq  e70 <puts@plt>
    1a40:	bf 08 00 00 00       	mov    $0x8,%edi
    1a45:	e8 26 f5 ff ff       	callq  f70 <exit@plt>

0000000000001a4a <read_six_numbers>:
    1a4a:	48 83 ec 08          	sub    $0x8,%rsp
    1a4e:	48 89 f2             	mov    %rsi,%rdx
    1a51:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1a55:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1a59:	50                   	push   %rax
    1a5a:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1a5e:	50                   	push   %rax
    1a5f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1a63:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1a67:	48 8d 35 f3 12 00 00 	lea    0x12f3(%rip),%rsi        # 2d61 <array.3417+0x281>
    1a6e:	b8 00 00 00 00       	mov    $0x0,%eax
    1a73:	e8 b8 f4 ff ff       	callq  f30 <__isoc99_sscanf@plt>
    1a78:	48 83 c4 10          	add    $0x10,%rsp
    1a7c:	83 f8 05             	cmp    $0x5,%eax
    1a7f:	7e 05                	jle    1a86 <read_six_numbers+0x3c>
    1a81:	48 83 c4 08          	add    $0x8,%rsp
    1a85:	c3                   	retq   
    1a86:	e8 83 ff ff ff       	callq  1a0e <explode_bomb>

0000000000001a8b <read_line>:
    1a8b:	48 83 ec 08          	sub    $0x8,%rsp
    1a8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a94:	e8 03 fe ff ff       	callq  189c <skip>
    1a99:	48 85 c0             	test   %rax,%rax
    1a9c:	74 6f                	je     1b0d <read_line+0x82>
    1a9e:	8b 35 08 2c 20 00    	mov    0x202c08(%rip),%esi        # 2046ac <num_input_strings>
    1aa4:	48 63 c6             	movslq %esi,%rax
    1aa7:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1aab:	48 c1 e2 04          	shl    $0x4,%rdx
    1aaf:	48 8d 05 0a 2c 20 00 	lea    0x202c0a(%rip),%rax        # 2046c0 <input_strings>
    1ab6:	48 01 c2             	add    %rax,%rdx
    1ab9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1ac0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ac5:	48 89 d7             	mov    %rdx,%rdi
    1ac8:	f2 ae                	repnz scas %es:(%rdi),%al
    1aca:	48 f7 d1             	not    %rcx
    1acd:	48 83 e9 01          	sub    $0x1,%rcx
    1ad1:	83 f9 4e             	cmp    $0x4e,%ecx
    1ad4:	0f 8f ab 00 00 00    	jg     1b85 <read_line+0xfa>
    1ada:	83 e9 01             	sub    $0x1,%ecx
    1add:	48 63 c9             	movslq %ecx,%rcx
    1ae0:	48 63 c6             	movslq %esi,%rax
    1ae3:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1ae7:	48 c1 e0 04          	shl    $0x4,%rax
    1aeb:	48 89 c7             	mov    %rax,%rdi
    1aee:	48 8d 05 cb 2b 20 00 	lea    0x202bcb(%rip),%rax        # 2046c0 <input_strings>
    1af5:	48 01 f8             	add    %rdi,%rax
    1af8:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1afc:	83 c6 01             	add    $0x1,%esi
    1aff:	89 35 a7 2b 20 00    	mov    %esi,0x202ba7(%rip)        # 2046ac <num_input_strings>
    1b05:	48 89 d0             	mov    %rdx,%rax
    1b08:	48 83 c4 08          	add    $0x8,%rsp
    1b0c:	c3                   	retq   
    1b0d:	48 8b 05 7c 2b 20 00 	mov    0x202b7c(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1b14:	48 39 05 95 2b 20 00 	cmp    %rax,0x202b95(%rip)        # 2046b0 <infile>
    1b1b:	74 1b                	je     1b38 <read_line+0xad>
    1b1d:	48 8d 3d 6d 12 00 00 	lea    0x126d(%rip),%rdi        # 2d91 <array.3417+0x2b1>
    1b24:	e8 07 f3 ff ff       	callq  e30 <getenv@plt>
    1b29:	48 85 c0             	test   %rax,%rax
    1b2c:	74 20                	je     1b4e <read_line+0xc3>
    1b2e:	bf 00 00 00 00       	mov    $0x0,%edi
    1b33:	e8 38 f4 ff ff       	callq  f70 <exit@plt>
    1b38:	48 8d 3d 34 12 00 00 	lea    0x1234(%rip),%rdi        # 2d73 <array.3417+0x293>
    1b3f:	e8 2c f3 ff ff       	callq  e70 <puts@plt>
    1b44:	bf 08 00 00 00       	mov    $0x8,%edi
    1b49:	e8 22 f4 ff ff       	callq  f70 <exit@plt>
    1b4e:	48 8b 05 3b 2b 20 00 	mov    0x202b3b(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1b55:	48 89 05 54 2b 20 00 	mov    %rax,0x202b54(%rip)        # 2046b0 <infile>
    1b5c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b61:	e8 36 fd ff ff       	callq  189c <skip>
    1b66:	48 85 c0             	test   %rax,%rax
    1b69:	0f 85 2f ff ff ff    	jne    1a9e <read_line+0x13>
    1b6f:	48 8d 3d fd 11 00 00 	lea    0x11fd(%rip),%rdi        # 2d73 <array.3417+0x293>
    1b76:	e8 f5 f2 ff ff       	callq  e70 <puts@plt>
    1b7b:	bf 00 00 00 00       	mov    $0x0,%edi
    1b80:	e8 eb f3 ff ff       	callq  f70 <exit@plt>
    1b85:	48 8d 3d 10 12 00 00 	lea    0x1210(%rip),%rdi        # 2d9c <array.3417+0x2bc>
    1b8c:	e8 df f2 ff ff       	callq  e70 <puts@plt>
    1b91:	8b 05 15 2b 20 00    	mov    0x202b15(%rip),%eax        # 2046ac <num_input_strings>
    1b97:	8d 50 01             	lea    0x1(%rax),%edx
    1b9a:	89 15 0c 2b 20 00    	mov    %edx,0x202b0c(%rip)        # 2046ac <num_input_strings>
    1ba0:	48 98                	cltq   
    1ba2:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1ba6:	48 8d 15 13 2b 20 00 	lea    0x202b13(%rip),%rdx        # 2046c0 <input_strings>
    1bad:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1bb4:	75 6e 63 
    1bb7:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1bbe:	2a 2a 00 
    1bc1:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1bc5:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1bca:	e8 3f fe ff ff       	callq  1a0e <explode_bomb>

0000000000001bcf <phase_defused>:
    1bcf:	48 83 ec 78          	sub    $0x78,%rsp
    1bd3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bda:	00 00 
    1bdc:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1be1:	31 c0                	xor    %eax,%eax
    1be3:	bf 01 00 00 00       	mov    $0x1,%edi
    1be8:	e8 fd fc ff ff       	callq  18ea <send_msg>
    1bed:	83 3d b8 2a 20 00 06 	cmpl   $0x6,0x202ab8(%rip)        # 2046ac <num_input_strings>
    1bf4:	74 19                	je     1c0f <phase_defused+0x40>
    1bf6:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1bfb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c02:	00 00 
    1c04:	0f 85 84 00 00 00    	jne    1c8e <phase_defused+0xbf>
    1c0a:	48 83 c4 78          	add    $0x78,%rsp
    1c0e:	c3                   	retq   
    1c0f:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1c14:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1c19:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1c1e:	48 8d 35 92 11 00 00 	lea    0x1192(%rip),%rsi        # 2db7 <array.3417+0x2d7>
    1c25:	48 8d 3d 84 2b 20 00 	lea    0x202b84(%rip),%rdi        # 2047b0 <input_strings+0xf0>
    1c2c:	b8 00 00 00 00       	mov    $0x0,%eax
    1c31:	e8 fa f2 ff ff       	callq  f30 <__isoc99_sscanf@plt>
    1c36:	83 f8 03             	cmp    $0x3,%eax
    1c39:	74 1a                	je     1c55 <phase_defused+0x86>
    1c3b:	48 8d 3d 36 10 00 00 	lea    0x1036(%rip),%rdi        # 2c78 <array.3417+0x198>
    1c42:	e8 29 f2 ff ff       	callq  e70 <puts@plt>
    1c47:	48 8d 3d 5a 10 00 00 	lea    0x105a(%rip),%rdi        # 2ca8 <array.3417+0x1c8>
    1c4e:	e8 1d f2 ff ff       	callq  e70 <puts@plt>
    1c53:	eb a1                	jmp    1bf6 <phase_defused+0x27>
    1c55:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1c5a:	48 8d 35 5f 11 00 00 	lea    0x115f(%rip),%rsi        # 2dc0 <array.3417+0x2e0>
    1c61:	e8 a4 fa ff ff       	callq  170a <strings_not_equal>
    1c66:	85 c0                	test   %eax,%eax
    1c68:	75 d1                	jne    1c3b <phase_defused+0x6c>
    1c6a:	48 8d 3d a7 0f 00 00 	lea    0xfa7(%rip),%rdi        # 2c18 <array.3417+0x138>
    1c71:	e8 fa f1 ff ff       	callq  e70 <puts@plt>
    1c76:	48 8d 3d c3 0f 00 00 	lea    0xfc3(%rip),%rdi        # 2c40 <array.3417+0x160>
    1c7d:	e8 ee f1 ff ff       	callq  e70 <puts@plt>
    1c82:	b8 00 00 00 00       	mov    $0x0,%eax
    1c87:	e8 87 f9 ff ff       	callq  1613 <secret_phase>
    1c8c:	eb ad                	jmp    1c3b <phase_defused+0x6c>
    1c8e:	e8 fd f1 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000001c93 <sigalrm_handler>:
    1c93:	48 83 ec 08          	sub    $0x8,%rsp
    1c97:	b9 00 00 00 00       	mov    $0x0,%ecx
    1c9c:	48 8d 15 2d 11 00 00 	lea    0x112d(%rip),%rdx        # 2dd0 <array.3417+0x2f0>
    1ca3:	be 01 00 00 00       	mov    $0x1,%esi
    1ca8:	48 8b 3d f1 29 20 00 	mov    0x2029f1(%rip),%rdi        # 2046a0 <stderr@@GLIBC_2.2.5>
    1caf:	b8 00 00 00 00       	mov    $0x0,%eax
    1cb4:	e8 d7 f2 ff ff       	callq  f90 <__fprintf_chk@plt>
    1cb9:	bf 01 00 00 00       	mov    $0x1,%edi
    1cbe:	e8 ad f2 ff ff       	callq  f70 <exit@plt>

0000000000001cc3 <rio_readlineb>:
    1cc3:	41 56                	push   %r14
    1cc5:	41 55                	push   %r13
    1cc7:	41 54                	push   %r12
    1cc9:	55                   	push   %rbp
    1cca:	53                   	push   %rbx
    1ccb:	48 89 fb             	mov    %rdi,%rbx
    1cce:	49 89 f4             	mov    %rsi,%r12
    1cd1:	49 89 d6             	mov    %rdx,%r14
    1cd4:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1cda:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1cde:	48 83 fa 01          	cmp    $0x1,%rdx
    1ce2:	77 0c                	ja     1cf0 <rio_readlineb+0x2d>
    1ce4:	eb 60                	jmp    1d46 <rio_readlineb+0x83>
    1ce6:	e8 65 f1 ff ff       	callq  e50 <__errno_location@plt>
    1ceb:	83 38 04             	cmpl   $0x4,(%rax)
    1cee:	75 67                	jne    1d57 <rio_readlineb+0x94>
    1cf0:	8b 43 04             	mov    0x4(%rbx),%eax
    1cf3:	85 c0                	test   %eax,%eax
    1cf5:	7f 20                	jg     1d17 <rio_readlineb+0x54>
    1cf7:	ba 00 20 00 00       	mov    $0x2000,%edx
    1cfc:	48 89 ee             	mov    %rbp,%rsi
    1cff:	8b 3b                	mov    (%rbx),%edi
    1d01:	e8 ba f1 ff ff       	callq  ec0 <read@plt>
    1d06:	89 43 04             	mov    %eax,0x4(%rbx)
    1d09:	85 c0                	test   %eax,%eax
    1d0b:	78 d9                	js     1ce6 <rio_readlineb+0x23>
    1d0d:	85 c0                	test   %eax,%eax
    1d0f:	74 4f                	je     1d60 <rio_readlineb+0x9d>
    1d11:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1d15:	eb d9                	jmp    1cf0 <rio_readlineb+0x2d>
    1d17:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1d1b:	0f b6 0a             	movzbl (%rdx),%ecx
    1d1e:	48 83 c2 01          	add    $0x1,%rdx
    1d22:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1d26:	83 e8 01             	sub    $0x1,%eax
    1d29:	89 43 04             	mov    %eax,0x4(%rbx)
    1d2c:	49 83 c4 01          	add    $0x1,%r12
    1d30:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1d35:	80 f9 0a             	cmp    $0xa,%cl
    1d38:	74 0c                	je     1d46 <rio_readlineb+0x83>
    1d3a:	41 83 c5 01          	add    $0x1,%r13d
    1d3e:	49 63 c5             	movslq %r13d,%rax
    1d41:	4c 39 f0             	cmp    %r14,%rax
    1d44:	72 aa                	jb     1cf0 <rio_readlineb+0x2d>
    1d46:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1d4b:	49 63 c5             	movslq %r13d,%rax
    1d4e:	5b                   	pop    %rbx
    1d4f:	5d                   	pop    %rbp
    1d50:	41 5c                	pop    %r12
    1d52:	41 5d                	pop    %r13
    1d54:	41 5e                	pop    %r14
    1d56:	c3                   	retq   
    1d57:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1d5e:	eb 05                	jmp    1d65 <rio_readlineb+0xa2>
    1d60:	b8 00 00 00 00       	mov    $0x0,%eax
    1d65:	85 c0                	test   %eax,%eax
    1d67:	75 0d                	jne    1d76 <rio_readlineb+0xb3>
    1d69:	b8 00 00 00 00       	mov    $0x0,%eax
    1d6e:	41 83 fd 01          	cmp    $0x1,%r13d
    1d72:	75 d2                	jne    1d46 <rio_readlineb+0x83>
    1d74:	eb d8                	jmp    1d4e <rio_readlineb+0x8b>
    1d76:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1d7d:	eb cf                	jmp    1d4e <rio_readlineb+0x8b>

0000000000001d7f <submitr>:
    1d7f:	41 57                	push   %r15
    1d81:	41 56                	push   %r14
    1d83:	41 55                	push   %r13
    1d85:	41 54                	push   %r12
    1d87:	55                   	push   %rbp
    1d88:	53                   	push   %rbx
    1d89:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1d90:	49 89 fd             	mov    %rdi,%r13
    1d93:	89 f5                	mov    %esi,%ebp
    1d95:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1d9a:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1d9f:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1da4:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1da9:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1db0:	00 
    1db1:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1db8:	00 
    1db9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dc0:	00 00 
    1dc2:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1dc9:	00 
    1dca:	31 c0                	xor    %eax,%eax
    1dcc:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1dd3:	00 
    1dd4:	ba 00 00 00 00       	mov    $0x0,%edx
    1dd9:	be 01 00 00 00       	mov    $0x1,%esi
    1dde:	bf 02 00 00 00       	mov    $0x2,%edi
    1de3:	e8 e8 f1 ff ff       	callq  fd0 <socket@plt>
    1de8:	85 c0                	test   %eax,%eax
    1dea:	0f 88 35 01 00 00    	js     1f25 <submitr+0x1a6>
    1df0:	41 89 c4             	mov    %eax,%r12d
    1df3:	4c 89 ef             	mov    %r13,%rdi
    1df6:	e8 f5 f0 ff ff       	callq  ef0 <gethostbyname@plt>
    1dfb:	48 85 c0             	test   %rax,%rax
    1dfe:	0f 84 71 01 00 00    	je     1f75 <submitr+0x1f6>
    1e04:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    1e09:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    1e10:	00 00 
    1e12:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    1e19:	00 
    1e1a:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    1e21:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    1e28:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1e2c:	48 8b 40 18          	mov    0x18(%rax),%rax
    1e30:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1e35:	b9 0c 00 00 00       	mov    $0xc,%ecx
    1e3a:	48 8b 30             	mov    (%rax),%rsi
    1e3d:	e8 be f0 ff ff       	callq  f00 <__memmove_chk@plt>
    1e42:	66 c1 cd 08          	ror    $0x8,%bp
    1e46:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    1e4b:	ba 10 00 00 00       	mov    $0x10,%edx
    1e50:	4c 89 ee             	mov    %r13,%rsi
    1e53:	44 89 e7             	mov    %r12d,%edi
    1e56:	e8 25 f1 ff ff       	callq  f80 <connect@plt>
    1e5b:	85 c0                	test   %eax,%eax
    1e5d:	0f 88 7d 01 00 00    	js     1fe0 <submitr+0x261>
    1e63:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    1e6a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e6f:	4c 89 c9             	mov    %r9,%rcx
    1e72:	48 89 df             	mov    %rbx,%rdi
    1e75:	f2 ae                	repnz scas %es:(%rdi),%al
    1e77:	48 89 ce             	mov    %rcx,%rsi
    1e7a:	48 f7 d6             	not    %rsi
    1e7d:	4c 89 c9             	mov    %r9,%rcx
    1e80:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1e85:	f2 ae                	repnz scas %es:(%rdi),%al
    1e87:	49 89 c8             	mov    %rcx,%r8
    1e8a:	4c 89 c9             	mov    %r9,%rcx
    1e8d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1e92:	f2 ae                	repnz scas %es:(%rdi),%al
    1e94:	48 89 ca             	mov    %rcx,%rdx
    1e97:	48 f7 d2             	not    %rdx
    1e9a:	4c 89 c9             	mov    %r9,%rcx
    1e9d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1ea2:	f2 ae                	repnz scas %es:(%rdi),%al
    1ea4:	4c 29 c2             	sub    %r8,%rdx
    1ea7:	48 29 ca             	sub    %rcx,%rdx
    1eaa:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    1eaf:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    1eb4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1eba:	0f 87 7d 01 00 00    	ja     203d <submitr+0x2be>
    1ec0:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    1ec7:	00 
    1ec8:	b9 00 04 00 00       	mov    $0x400,%ecx
    1ecd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ed2:	48 89 d7             	mov    %rdx,%rdi
    1ed5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1ed8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1edf:	48 89 df             	mov    %rbx,%rdi
    1ee2:	f2 ae                	repnz scas %es:(%rdi),%al
    1ee4:	48 89 ca             	mov    %rcx,%rdx
    1ee7:	48 f7 d2             	not    %rdx
    1eea:	48 89 d1             	mov    %rdx,%rcx
    1eed:	48 83 e9 01          	sub    $0x1,%rcx
    1ef1:	85 c9                	test   %ecx,%ecx
    1ef3:	0f 84 3f 06 00 00    	je     2538 <submitr+0x7b9>
    1ef9:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1efc:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    1f01:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    1f08:	00 
    1f09:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    1f10:	00 
    1f11:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1f16:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    1f1d:	00 20 00 
    1f20:	e9 a6 01 00 00       	jmpq   20cb <submitr+0x34c>
    1f25:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1f2c:	3a 20 43 
    1f2f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1f36:	20 75 6e 
    1f39:	49 89 07             	mov    %rax,(%r15)
    1f3c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1f40:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1f47:	74 6f 20 
    1f4a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    1f51:	65 20 73 
    1f54:	49 89 47 10          	mov    %rax,0x10(%r15)
    1f58:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1f5c:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    1f63:	65 
    1f64:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    1f6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f70:	e9 9a 04 00 00       	jmpq   240f <submitr+0x690>
    1f75:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    1f7c:	3a 20 44 
    1f7f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    1f86:	20 75 6e 
    1f89:	49 89 07             	mov    %rax,(%r15)
    1f8c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1f90:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1f97:	74 6f 20 
    1f9a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    1fa1:	76 65 20 
    1fa4:	49 89 47 10          	mov    %rax,0x10(%r15)
    1fa8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1fac:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    1fb3:	72 20 61 
    1fb6:	49 89 47 20          	mov    %rax,0x20(%r15)
    1fba:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    1fc1:	65 
    1fc2:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    1fc9:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    1fce:	44 89 e7             	mov    %r12d,%edi
    1fd1:	e8 da ee ff ff       	callq  eb0 <close@plt>
    1fd6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1fdb:	e9 2f 04 00 00       	jmpq   240f <submitr+0x690>
    1fe0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    1fe7:	3a 20 55 
    1fea:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    1ff1:	20 74 6f 
    1ff4:	49 89 07             	mov    %rax,(%r15)
    1ff7:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1ffb:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2002:	65 63 74 
    2005:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    200c:	68 65 20 
    200f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2013:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2017:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    201e:	76 
    201f:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2026:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    202b:	44 89 e7             	mov    %r12d,%edi
    202e:	e8 7d ee ff ff       	callq  eb0 <close@plt>
    2033:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2038:	e9 d2 03 00 00       	jmpq   240f <submitr+0x690>
    203d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2044:	3a 20 52 
    2047:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    204e:	20 73 74 
    2051:	49 89 07             	mov    %rax,(%r15)
    2054:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2058:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    205f:	74 6f 6f 
    2062:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2069:	65 2e 20 
    206c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2070:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2074:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    207b:	61 73 65 
    207e:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2085:	49 54 52 
    2088:	49 89 47 20          	mov    %rax,0x20(%r15)
    208c:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2090:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2097:	55 46 00 
    209a:	49 89 47 30          	mov    %rax,0x30(%r15)
    209e:	44 89 e7             	mov    %r12d,%edi
    20a1:	e8 0a ee ff ff       	callq  eb0 <close@plt>
    20a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    20ab:	e9 5f 03 00 00       	jmpq   240f <submitr+0x690>
    20b0:	49 0f a3 c5          	bt     %rax,%r13
    20b4:	73 21                	jae    20d7 <submitr+0x358>
    20b6:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    20ba:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    20be:	48 83 c3 01          	add    $0x1,%rbx
    20c2:	4c 39 f3             	cmp    %r14,%rbx
    20c5:	0f 84 6d 04 00 00    	je     2538 <submitr+0x7b9>
    20cb:	44 0f b6 03          	movzbl (%rbx),%r8d
    20cf:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    20d3:	3c 35                	cmp    $0x35,%al
    20d5:	76 d9                	jbe    20b0 <submitr+0x331>
    20d7:	44 89 c0             	mov    %r8d,%eax
    20da:	83 e0 df             	and    $0xffffffdf,%eax
    20dd:	83 e8 41             	sub    $0x41,%eax
    20e0:	3c 19                	cmp    $0x19,%al
    20e2:	76 d2                	jbe    20b6 <submitr+0x337>
    20e4:	41 80 f8 20          	cmp    $0x20,%r8b
    20e8:	74 60                	je     214a <submitr+0x3cb>
    20ea:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    20ee:	3c 5f                	cmp    $0x5f,%al
    20f0:	76 0a                	jbe    20fc <submitr+0x37d>
    20f2:	41 80 f8 09          	cmp    $0x9,%r8b
    20f6:	0f 85 af 03 00 00    	jne    24ab <submitr+0x72c>
    20fc:	45 0f b6 c0          	movzbl %r8b,%r8d
    2100:	48 8d 0d a1 0d 00 00 	lea    0xda1(%rip),%rcx        # 2ea8 <array.3417+0x3c8>
    2107:	ba 08 00 00 00       	mov    $0x8,%edx
    210c:	be 01 00 00 00       	mov    $0x1,%esi
    2111:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2116:	b8 00 00 00 00       	mov    $0x0,%eax
    211b:	e8 a0 ee ff ff       	callq  fc0 <__sprintf_chk@plt>
    2120:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2127:	00 
    2128:	88 45 00             	mov    %al,0x0(%rbp)
    212b:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2132:	00 
    2133:	88 45 01             	mov    %al,0x1(%rbp)
    2136:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    213d:	00 
    213e:	88 45 02             	mov    %al,0x2(%rbp)
    2141:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2145:	e9 74 ff ff ff       	jmpq   20be <submitr+0x33f>
    214a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    214e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2152:	e9 67 ff ff ff       	jmpq   20be <submitr+0x33f>
    2157:	49 01 c5             	add    %rax,%r13
    215a:	48 29 c5             	sub    %rax,%rbp
    215d:	74 26                	je     2185 <submitr+0x406>
    215f:	48 89 ea             	mov    %rbp,%rdx
    2162:	4c 89 ee             	mov    %r13,%rsi
    2165:	44 89 e7             	mov    %r12d,%edi
    2168:	e8 13 ed ff ff       	callq  e80 <write@plt>
    216d:	48 85 c0             	test   %rax,%rax
    2170:	7f e5                	jg     2157 <submitr+0x3d8>
    2172:	e8 d9 ec ff ff       	callq  e50 <__errno_location@plt>
    2177:	83 38 04             	cmpl   $0x4,(%rax)
    217a:	0f 85 31 01 00 00    	jne    22b1 <submitr+0x532>
    2180:	4c 89 f0             	mov    %r14,%rax
    2183:	eb d2                	jmp    2157 <submitr+0x3d8>
    2185:	48 85 db             	test   %rbx,%rbx
    2188:	0f 88 23 01 00 00    	js     22b1 <submitr+0x532>
    218e:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2193:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    219a:	00 
    219b:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    21a0:	48 8d 47 10          	lea    0x10(%rdi),%rax
    21a4:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    21a9:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    21b0:	00 
    21b1:	ba 00 20 00 00       	mov    $0x2000,%edx
    21b6:	e8 08 fb ff ff       	callq  1cc3 <rio_readlineb>
    21bb:	48 85 c0             	test   %rax,%rax
    21be:	0f 8e 4c 01 00 00    	jle    2310 <submitr+0x591>
    21c4:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    21c9:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    21d0:	00 
    21d1:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    21d8:	00 
    21d9:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    21e0:	00 
    21e1:	48 8d 35 c7 0c 00 00 	lea    0xcc7(%rip),%rsi        # 2eaf <array.3417+0x3cf>
    21e8:	b8 00 00 00 00       	mov    $0x0,%eax
    21ed:	e8 3e ed ff ff       	callq  f30 <__isoc99_sscanf@plt>
    21f2:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    21f7:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    21fe:	0f 85 80 01 00 00    	jne    2384 <submitr+0x605>
    2204:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    220b:	00 
    220c:	48 8d 2d ad 0c 00 00 	lea    0xcad(%rip),%rbp        # 2ec0 <array.3417+0x3e0>
    2213:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    2218:	b9 03 00 00 00       	mov    $0x3,%ecx
    221d:	48 89 de             	mov    %rbx,%rsi
    2220:	48 89 ef             	mov    %rbp,%rdi
    2223:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2225:	0f 97 c0             	seta   %al
    2228:	1c 00                	sbb    $0x0,%al
    222a:	84 c0                	test   %al,%al
    222c:	0f 84 89 01 00 00    	je     23bb <submitr+0x63c>
    2232:	ba 00 20 00 00       	mov    $0x2000,%edx
    2237:	48 89 de             	mov    %rbx,%rsi
    223a:	4c 89 ef             	mov    %r13,%rdi
    223d:	e8 81 fa ff ff       	callq  1cc3 <rio_readlineb>
    2242:	48 85 c0             	test   %rax,%rax
    2245:	7f d1                	jg     2218 <submitr+0x499>
    2247:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    224e:	3a 20 43 
    2251:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2258:	20 75 6e 
    225b:	49 89 07             	mov    %rax,(%r15)
    225e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2262:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2269:	74 6f 20 
    226c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2273:	68 65 61 
    2276:	49 89 47 10          	mov    %rax,0x10(%r15)
    227a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    227e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2285:	66 72 6f 
    2288:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    228f:	76 65 72 
    2292:	49 89 47 20          	mov    %rax,0x20(%r15)
    2296:	49 89 57 28          	mov    %rdx,0x28(%r15)
    229a:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    229f:	44 89 e7             	mov    %r12d,%edi
    22a2:	e8 09 ec ff ff       	callq  eb0 <close@plt>
    22a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22ac:	e9 5e 01 00 00       	jmpq   240f <submitr+0x690>
    22b1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    22b8:	3a 20 43 
    22bb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    22c2:	20 75 6e 
    22c5:	49 89 07             	mov    %rax,(%r15)
    22c8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22cc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    22d3:	74 6f 20 
    22d6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    22dd:	20 74 6f 
    22e0:	49 89 47 10          	mov    %rax,0x10(%r15)
    22e4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22e8:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    22ef:	73 65 72 
    22f2:	49 89 47 20          	mov    %rax,0x20(%r15)
    22f6:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    22fd:	00 
    22fe:	44 89 e7             	mov    %r12d,%edi
    2301:	e8 aa eb ff ff       	callq  eb0 <close@plt>
    2306:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    230b:	e9 ff 00 00 00       	jmpq   240f <submitr+0x690>
    2310:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2317:	3a 20 43 
    231a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2321:	20 75 6e 
    2324:	49 89 07             	mov    %rax,(%r15)
    2327:	49 89 57 08          	mov    %rdx,0x8(%r15)
    232b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2332:	74 6f 20 
    2335:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    233c:	66 69 72 
    233f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2343:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2347:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    234e:	61 64 65 
    2351:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2358:	6d 20 73 
    235b:	49 89 47 20          	mov    %rax,0x20(%r15)
    235f:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2363:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    236a:	65 
    236b:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2372:	44 89 e7             	mov    %r12d,%edi
    2375:	e8 36 eb ff ff       	callq  eb0 <close@plt>
    237a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    237f:	e9 8b 00 00 00       	jmpq   240f <submitr+0x690>
    2384:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    238b:	00 
    238c:	48 8d 0d 65 0a 00 00 	lea    0xa65(%rip),%rcx        # 2df8 <array.3417+0x318>
    2393:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    239a:	be 01 00 00 00       	mov    $0x1,%esi
    239f:	4c 89 ff             	mov    %r15,%rdi
    23a2:	b8 00 00 00 00       	mov    $0x0,%eax
    23a7:	e8 14 ec ff ff       	callq  fc0 <__sprintf_chk@plt>
    23ac:	44 89 e7             	mov    %r12d,%edi
    23af:	e8 fc ea ff ff       	callq  eb0 <close@plt>
    23b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23b9:	eb 54                	jmp    240f <submitr+0x690>
    23bb:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    23c2:	00 
    23c3:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    23c8:	ba 00 20 00 00       	mov    $0x2000,%edx
    23cd:	e8 f1 f8 ff ff       	callq  1cc3 <rio_readlineb>
    23d2:	48 85 c0             	test   %rax,%rax
    23d5:	7e 61                	jle    2438 <submitr+0x6b9>
    23d7:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    23de:	00 
    23df:	4c 89 ff             	mov    %r15,%rdi
    23e2:	e8 79 ea ff ff       	callq  e60 <strcpy@plt>
    23e7:	44 89 e7             	mov    %r12d,%edi
    23ea:	e8 c1 ea ff ff       	callq  eb0 <close@plt>
    23ef:	b9 03 00 00 00       	mov    $0x3,%ecx
    23f4:	48 8d 3d c8 0a 00 00 	lea    0xac8(%rip),%rdi        # 2ec3 <array.3417+0x3e3>
    23fb:	4c 89 fe             	mov    %r15,%rsi
    23fe:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2400:	0f 97 c0             	seta   %al
    2403:	1c 00                	sbb    $0x0,%al
    2405:	84 c0                	test   %al,%al
    2407:	0f 95 c0             	setne  %al
    240a:	0f b6 c0             	movzbl %al,%eax
    240d:	f7 d8                	neg    %eax
    240f:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2416:	00 
    2417:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    241e:	00 00 
    2420:	0f 85 95 01 00 00    	jne    25bb <submitr+0x83c>
    2426:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    242d:	5b                   	pop    %rbx
    242e:	5d                   	pop    %rbp
    242f:	41 5c                	pop    %r12
    2431:	41 5d                	pop    %r13
    2433:	41 5e                	pop    %r14
    2435:	41 5f                	pop    %r15
    2437:	c3                   	retq   
    2438:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    243f:	3a 20 43 
    2442:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2449:	20 75 6e 
    244c:	49 89 07             	mov    %rax,(%r15)
    244f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2453:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    245a:	74 6f 20 
    245d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2464:	73 74 61 
    2467:	49 89 47 10          	mov    %rax,0x10(%r15)
    246b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    246f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2476:	65 73 73 
    2479:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2480:	72 6f 6d 
    2483:	49 89 47 20          	mov    %rax,0x20(%r15)
    2487:	49 89 57 28          	mov    %rdx,0x28(%r15)
    248b:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2492:	65 72 00 
    2495:	49 89 47 30          	mov    %rax,0x30(%r15)
    2499:	44 89 e7             	mov    %r12d,%edi
    249c:	e8 0f ea ff ff       	callq  eb0 <close@plt>
    24a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24a6:	e9 64 ff ff ff       	jmpq   240f <submitr+0x690>
    24ab:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    24b2:	3a 20 52 
    24b5:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    24bc:	20 73 74 
    24bf:	49 89 07             	mov    %rax,(%r15)
    24c2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24c6:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    24cd:	63 6f 6e 
    24d0:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    24d7:	20 61 6e 
    24da:	49 89 47 10          	mov    %rax,0x10(%r15)
    24de:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24e2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    24e9:	67 61 6c 
    24ec:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    24f3:	6e 70 72 
    24f6:	49 89 47 20          	mov    %rax,0x20(%r15)
    24fa:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24fe:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2505:	6c 65 20 
    2508:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    250f:	63 74 65 
    2512:	49 89 47 30          	mov    %rax,0x30(%r15)
    2516:	49 89 57 38          	mov    %rdx,0x38(%r15)
    251a:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2521:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2526:	44 89 e7             	mov    %r12d,%edi
    2529:	e8 82 e9 ff ff       	callq  eb0 <close@plt>
    252e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2533:	e9 d7 fe ff ff       	jmpq   240f <submitr+0x690>
    2538:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    253f:	00 
    2540:	48 83 ec 08          	sub    $0x8,%rsp
    2544:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    254b:	00 
    254c:	50                   	push   %rax
    254d:	ff 74 24 28          	pushq  0x28(%rsp)
    2551:	ff 74 24 38          	pushq  0x38(%rsp)
    2555:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    255a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    255f:	48 8d 0d c2 08 00 00 	lea    0x8c2(%rip),%rcx        # 2e28 <array.3417+0x348>
    2566:	ba 00 20 00 00       	mov    $0x2000,%edx
    256b:	be 01 00 00 00       	mov    $0x1,%esi
    2570:	48 89 df             	mov    %rbx,%rdi
    2573:	b8 00 00 00 00       	mov    $0x0,%eax
    2578:	e8 43 ea ff ff       	callq  fc0 <__sprintf_chk@plt>
    257d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2584:	b8 00 00 00 00       	mov    $0x0,%eax
    2589:	48 89 df             	mov    %rbx,%rdi
    258c:	f2 ae                	repnz scas %es:(%rdi),%al
    258e:	48 f7 d1             	not    %rcx
    2591:	48 89 cb             	mov    %rcx,%rbx
    2594:	48 83 eb 01          	sub    $0x1,%rbx
    2598:	48 83 c4 20          	add    $0x20,%rsp
    259c:	48 89 dd             	mov    %rbx,%rbp
    259f:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    25a6:	00 
    25a7:	41 be 00 00 00 00    	mov    $0x0,%r14d
    25ad:	48 85 db             	test   %rbx,%rbx
    25b0:	0f 85 a9 fb ff ff    	jne    215f <submitr+0x3e0>
    25b6:	e9 d3 fb ff ff       	jmpq   218e <submitr+0x40f>
    25bb:	e8 d0 e8 ff ff       	callq  e90 <__stack_chk_fail@plt>

00000000000025c0 <init_timeout>:
    25c0:	85 ff                	test   %edi,%edi
    25c2:	74 25                	je     25e9 <init_timeout+0x29>
    25c4:	53                   	push   %rbx
    25c5:	89 fb                	mov    %edi,%ebx
    25c7:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 1c93 <sigalrm_handler>
    25ce:	bf 0e 00 00 00       	mov    $0xe,%edi
    25d3:	e8 08 e9 ff ff       	callq  ee0 <signal@plt>
    25d8:	85 db                	test   %ebx,%ebx
    25da:	bf 00 00 00 00       	mov    $0x0,%edi
    25df:	0f 49 fb             	cmovns %ebx,%edi
    25e2:	e8 b9 e8 ff ff       	callq  ea0 <alarm@plt>
    25e7:	5b                   	pop    %rbx
    25e8:	c3                   	retq   
    25e9:	f3 c3                	repz retq 

00000000000025eb <init_driver>:
    25eb:	41 54                	push   %r12
    25ed:	55                   	push   %rbp
    25ee:	53                   	push   %rbx
    25ef:	48 83 ec 20          	sub    $0x20,%rsp
    25f3:	49 89 fc             	mov    %rdi,%r12
    25f6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25fd:	00 00 
    25ff:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2604:	31 c0                	xor    %eax,%eax
    2606:	be 01 00 00 00       	mov    $0x1,%esi
    260b:	bf 0d 00 00 00       	mov    $0xd,%edi
    2610:	e8 cb e8 ff ff       	callq  ee0 <signal@plt>
    2615:	be 01 00 00 00       	mov    $0x1,%esi
    261a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    261f:	e8 bc e8 ff ff       	callq  ee0 <signal@plt>
    2624:	be 01 00 00 00       	mov    $0x1,%esi
    2629:	bf 1d 00 00 00       	mov    $0x1d,%edi
    262e:	e8 ad e8 ff ff       	callq  ee0 <signal@plt>
    2633:	ba 00 00 00 00       	mov    $0x0,%edx
    2638:	be 01 00 00 00       	mov    $0x1,%esi
    263d:	bf 02 00 00 00       	mov    $0x2,%edi
    2642:	e8 89 e9 ff ff       	callq  fd0 <socket@plt>
    2647:	85 c0                	test   %eax,%eax
    2649:	0f 88 a3 00 00 00    	js     26f2 <init_driver+0x107>
    264f:	89 c3                	mov    %eax,%ebx
    2651:	48 8d 3d 6e 08 00 00 	lea    0x86e(%rip),%rdi        # 2ec6 <array.3417+0x3e6>
    2658:	e8 93 e8 ff ff       	callq  ef0 <gethostbyname@plt>
    265d:	48 85 c0             	test   %rax,%rax
    2660:	0f 84 df 00 00 00    	je     2745 <init_driver+0x15a>
    2666:	48 89 e5             	mov    %rsp,%rbp
    2669:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2670:	00 00 
    2672:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2679:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    267f:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2685:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2689:	48 8b 40 18          	mov    0x18(%rax),%rax
    268d:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2691:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2696:	48 8b 30             	mov    (%rax),%rsi
    2699:	e8 62 e8 ff ff       	callq  f00 <__memmove_chk@plt>
    269e:	66 c7 44 24 02 13 25 	movw   $0x2513,0x2(%rsp)
    26a5:	ba 10 00 00 00       	mov    $0x10,%edx
    26aa:	48 89 ee             	mov    %rbp,%rsi
    26ad:	89 df                	mov    %ebx,%edi
    26af:	e8 cc e8 ff ff       	callq  f80 <connect@plt>
    26b4:	85 c0                	test   %eax,%eax
    26b6:	0f 88 fb 00 00 00    	js     27b7 <init_driver+0x1cc>
    26bc:	89 df                	mov    %ebx,%edi
    26be:	e8 ed e7 ff ff       	callq  eb0 <close@plt>
    26c3:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    26ca:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    26d0:	b8 00 00 00 00       	mov    $0x0,%eax
    26d5:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    26da:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    26e1:	00 00 
    26e3:	0f 85 06 01 00 00    	jne    27ef <init_driver+0x204>
    26e9:	48 83 c4 20          	add    $0x20,%rsp
    26ed:	5b                   	pop    %rbx
    26ee:	5d                   	pop    %rbp
    26ef:	41 5c                	pop    %r12
    26f1:	c3                   	retq   
    26f2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26f9:	3a 20 43 
    26fc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2703:	20 75 6e 
    2706:	49 89 04 24          	mov    %rax,(%r12)
    270a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    270f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2716:	74 6f 20 
    2719:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2720:	65 20 73 
    2723:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2728:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    272d:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2734:	6b 65 
    2736:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    273d:	00 
    273e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2743:	eb 90                	jmp    26d5 <init_driver+0xea>
    2745:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    274c:	3a 20 44 
    274f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2756:	20 75 6e 
    2759:	49 89 04 24          	mov    %rax,(%r12)
    275d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2762:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2769:	74 6f 20 
    276c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2773:	76 65 20 
    2776:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    277b:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2780:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2787:	72 20 61 
    278a:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    278f:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2796:	72 65 
    2798:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    279f:	73 
    27a0:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    27a6:	89 df                	mov    %ebx,%edi
    27a8:	e8 03 e7 ff ff       	callq  eb0 <close@plt>
    27ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27b2:	e9 1e ff ff ff       	jmpq   26d5 <init_driver+0xea>
    27b7:	4c 8d 05 08 07 00 00 	lea    0x708(%rip),%r8        # 2ec6 <array.3417+0x3e6>
    27be:	48 8d 0d bb 06 00 00 	lea    0x6bb(%rip),%rcx        # 2e80 <array.3417+0x3a0>
    27c5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    27cc:	be 01 00 00 00       	mov    $0x1,%esi
    27d1:	4c 89 e7             	mov    %r12,%rdi
    27d4:	b8 00 00 00 00       	mov    $0x0,%eax
    27d9:	e8 e2 e7 ff ff       	callq  fc0 <__sprintf_chk@plt>
    27de:	89 df                	mov    %ebx,%edi
    27e0:	e8 cb e6 ff ff       	callq  eb0 <close@plt>
    27e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27ea:	e9 e6 fe ff ff       	jmpq   26d5 <init_driver+0xea>
    27ef:	e8 9c e6 ff ff       	callq  e90 <__stack_chk_fail@plt>

00000000000027f4 <driver_post>:
    27f4:	53                   	push   %rbx
    27f5:	4c 89 c3             	mov    %r8,%rbx
    27f8:	85 c9                	test   %ecx,%ecx
    27fa:	75 17                	jne    2813 <driver_post+0x1f>
    27fc:	48 85 ff             	test   %rdi,%rdi
    27ff:	74 05                	je     2806 <driver_post+0x12>
    2801:	80 3f 00             	cmpb   $0x0,(%rdi)
    2804:	75 33                	jne    2839 <driver_post+0x45>
    2806:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    280b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    280f:	89 c8                	mov    %ecx,%eax
    2811:	5b                   	pop    %rbx
    2812:	c3                   	retq   
    2813:	48 8d 35 bc 06 00 00 	lea    0x6bc(%rip),%rsi        # 2ed6 <array.3417+0x3f6>
    281a:	bf 01 00 00 00       	mov    $0x1,%edi
    281f:	b8 00 00 00 00       	mov    $0x0,%eax
    2824:	e8 17 e7 ff ff       	callq  f40 <__printf_chk@plt>
    2829:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    282e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2832:	b8 00 00 00 00       	mov    $0x0,%eax
    2837:	eb d8                	jmp    2811 <driver_post+0x1d>
    2839:	41 50                	push   %r8
    283b:	52                   	push   %rdx
    283c:	4c 8d 0d aa 06 00 00 	lea    0x6aa(%rip),%r9        # 2eed <array.3417+0x40d>
    2843:	49 89 f0             	mov    %rsi,%r8
    2846:	48 89 f9             	mov    %rdi,%rcx
    2849:	48 8d 15 a1 06 00 00 	lea    0x6a1(%rip),%rdx        # 2ef1 <array.3417+0x411>
    2850:	be 25 13 00 00       	mov    $0x1325,%esi
    2855:	48 8d 3d 6a 06 00 00 	lea    0x66a(%rip),%rdi        # 2ec6 <array.3417+0x3e6>
    285c:	e8 1e f5 ff ff       	callq  1d7f <submitr>
    2861:	48 83 c4 10          	add    $0x10,%rsp
    2865:	eb aa                	jmp    2811 <driver_post+0x1d>
    2867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    286e:	00 00 

0000000000002870 <__libc_csu_init>:
    2870:	41 57                	push   %r15
    2872:	41 56                	push   %r14
    2874:	49 89 d7             	mov    %rdx,%r15
    2877:	41 55                	push   %r13
    2879:	41 54                	push   %r12
    287b:	4c 8d 25 66 14 20 00 	lea    0x201466(%rip),%r12        # 203ce8 <__frame_dummy_init_array_entry>
    2882:	55                   	push   %rbp
    2883:	48 8d 2d 66 14 20 00 	lea    0x201466(%rip),%rbp        # 203cf0 <__init_array_end>
    288a:	53                   	push   %rbx
    288b:	41 89 fd             	mov    %edi,%r13d
    288e:	49 89 f6             	mov    %rsi,%r14
    2891:	4c 29 e5             	sub    %r12,%rbp
    2894:	48 83 ec 08          	sub    $0x8,%rsp
    2898:	48 c1 fd 03          	sar    $0x3,%rbp
    289c:	e8 5f e5 ff ff       	callq  e00 <_init>
    28a1:	48 85 ed             	test   %rbp,%rbp
    28a4:	74 20                	je     28c6 <__libc_csu_init+0x56>
    28a6:	31 db                	xor    %ebx,%ebx
    28a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    28af:	00 
    28b0:	4c 89 fa             	mov    %r15,%rdx
    28b3:	4c 89 f6             	mov    %r14,%rsi
    28b6:	44 89 ef             	mov    %r13d,%edi
    28b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    28bd:	48 83 c3 01          	add    $0x1,%rbx
    28c1:	48 39 dd             	cmp    %rbx,%rbp
    28c4:	75 ea                	jne    28b0 <__libc_csu_init+0x40>
    28c6:	48 83 c4 08          	add    $0x8,%rsp
    28ca:	5b                   	pop    %rbx
    28cb:	5d                   	pop    %rbp
    28cc:	41 5c                	pop    %r12
    28ce:	41 5d                	pop    %r13
    28d0:	41 5e                	pop    %r14
    28d2:	41 5f                	pop    %r15
    28d4:	c3                   	retq   
    28d5:	90                   	nop
    28d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    28dd:	00 00 00 

00000000000028e0 <__libc_csu_fini>:
    28e0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000028e4 <_fini>:
    28e4:	48 83 ec 08          	sub    $0x8,%rsp
    28e8:	48 83 c4 08          	add    $0x8,%rsp
    28ec:	c3                   	retq   

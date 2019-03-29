
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000000e28 <_init>:
 e28:	48 83 ec 08          	sub    $0x8,%rsp
 e2c:	48 8b 05 b5 41 20 00 	mov    0x2041b5(%rip),%rax        # 204fe8 <_GLOBAL_OFFSET_TABLE_+0x130>
 e33:	48 85 c0             	test   %rax,%rax
 e36:	74 02                	je     e3a <_init+0x12>
 e38:	ff d0                	callq  *%rax
 e3a:	48 83 c4 08          	add    $0x8,%rsp
 e3e:	c3                   	retq   

Disassembly of section .plt:

0000000000000e40 <strcasecmp@plt-0x10>:
     e40:	ff 35 7a 40 20 00    	pushq  0x20407a(%rip)        # 204ec0 <_GLOBAL_OFFSET_TABLE_+0x8>
     e46:	ff 25 7c 40 20 00    	jmpq   *0x20407c(%rip)        # 204ec8 <_GLOBAL_OFFSET_TABLE_+0x10>
     e4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000e50 <strcasecmp@plt>:
     e50:	ff 25 7a 40 20 00    	jmpq   *0x20407a(%rip)        # 204ed0 <_GLOBAL_OFFSET_TABLE_+0x18>
     e56:	68 00 00 00 00       	pushq  $0x0
     e5b:	e9 e0 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000e60 <__errno_location@plt>:
     e60:	ff 25 72 40 20 00    	jmpq   *0x204072(%rip)        # 204ed8 <_GLOBAL_OFFSET_TABLE_+0x20>
     e66:	68 01 00 00 00       	pushq  $0x1
     e6b:	e9 d0 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000e70 <srandom@plt>:
     e70:	ff 25 6a 40 20 00    	jmpq   *0x20406a(%rip)        # 204ee0 <_GLOBAL_OFFSET_TABLE_+0x28>
     e76:	68 02 00 00 00       	pushq  $0x2
     e7b:	e9 c0 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000e80 <strncmp@plt>:
     e80:	ff 25 62 40 20 00    	jmpq   *0x204062(%rip)        # 204ee8 <_GLOBAL_OFFSET_TABLE_+0x30>
     e86:	68 03 00 00 00       	pushq  $0x3
     e8b:	e9 b0 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000e90 <strcpy@plt>:
     e90:	ff 25 5a 40 20 00    	jmpq   *0x20405a(%rip)        # 204ef0 <_GLOBAL_OFFSET_TABLE_+0x38>
     e96:	68 04 00 00 00       	pushq  $0x4
     e9b:	e9 a0 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000ea0 <puts@plt>:
     ea0:	ff 25 52 40 20 00    	jmpq   *0x204052(%rip)        # 204ef8 <_GLOBAL_OFFSET_TABLE_+0x40>
     ea6:	68 05 00 00 00       	pushq  $0x5
     eab:	e9 90 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000eb0 <write@plt>:
     eb0:	ff 25 4a 40 20 00    	jmpq   *0x20404a(%rip)        # 204f00 <_GLOBAL_OFFSET_TABLE_+0x48>
     eb6:	68 06 00 00 00       	pushq  $0x6
     ebb:	e9 80 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000ec0 <__stack_chk_fail@plt>:
     ec0:	ff 25 42 40 20 00    	jmpq   *0x204042(%rip)        # 204f08 <_GLOBAL_OFFSET_TABLE_+0x50>
     ec6:	68 07 00 00 00       	pushq  $0x7
     ecb:	e9 70 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000ed0 <mmap@plt>:
     ed0:	ff 25 3a 40 20 00    	jmpq   *0x20403a(%rip)        # 204f10 <_GLOBAL_OFFSET_TABLE_+0x58>
     ed6:	68 08 00 00 00       	pushq  $0x8
     edb:	e9 60 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000ee0 <memset@plt>:
     ee0:	ff 25 32 40 20 00    	jmpq   *0x204032(%rip)        # 204f18 <_GLOBAL_OFFSET_TABLE_+0x60>
     ee6:	68 09 00 00 00       	pushq  $0x9
     eeb:	e9 50 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000ef0 <alarm@plt>:
     ef0:	ff 25 2a 40 20 00    	jmpq   *0x20402a(%rip)        # 204f20 <_GLOBAL_OFFSET_TABLE_+0x68>
     ef6:	68 0a 00 00 00       	pushq  $0xa
     efb:	e9 40 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000f00 <close@plt>:
     f00:	ff 25 22 40 20 00    	jmpq   *0x204022(%rip)        # 204f28 <_GLOBAL_OFFSET_TABLE_+0x70>
     f06:	68 0b 00 00 00       	pushq  $0xb
     f0b:	e9 30 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000f10 <read@plt>:
     f10:	ff 25 1a 40 20 00    	jmpq   *0x20401a(%rip)        # 204f30 <_GLOBAL_OFFSET_TABLE_+0x78>
     f16:	68 0c 00 00 00       	pushq  $0xc
     f1b:	e9 20 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000f20 <signal@plt>:
     f20:	ff 25 12 40 20 00    	jmpq   *0x204012(%rip)        # 204f38 <_GLOBAL_OFFSET_TABLE_+0x80>
     f26:	68 0d 00 00 00       	pushq  $0xd
     f2b:	e9 10 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000f30 <gethostbyname@plt>:
     f30:	ff 25 0a 40 20 00    	jmpq   *0x20400a(%rip)        # 204f40 <_GLOBAL_OFFSET_TABLE_+0x88>
     f36:	68 0e 00 00 00       	pushq  $0xe
     f3b:	e9 00 ff ff ff       	jmpq   e40 <_init+0x18>

0000000000000f40 <__memmove_chk@plt>:
     f40:	ff 25 02 40 20 00    	jmpq   *0x204002(%rip)        # 204f48 <_GLOBAL_OFFSET_TABLE_+0x90>
     f46:	68 0f 00 00 00       	pushq  $0xf
     f4b:	e9 f0 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000f50 <strtol@plt>:
     f50:	ff 25 fa 3f 20 00    	jmpq   *0x203ffa(%rip)        # 204f50 <_GLOBAL_OFFSET_TABLE_+0x98>
     f56:	68 10 00 00 00       	pushq  $0x10
     f5b:	e9 e0 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000f60 <memcpy@plt>:
     f60:	ff 25 f2 3f 20 00    	jmpq   *0x203ff2(%rip)        # 204f58 <_GLOBAL_OFFSET_TABLE_+0xa0>
     f66:	68 11 00 00 00       	pushq  $0x11
     f6b:	e9 d0 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000f70 <time@plt>:
     f70:	ff 25 ea 3f 20 00    	jmpq   *0x203fea(%rip)        # 204f60 <_GLOBAL_OFFSET_TABLE_+0xa8>
     f76:	68 12 00 00 00       	pushq  $0x12
     f7b:	e9 c0 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000f80 <random@plt>:
     f80:	ff 25 e2 3f 20 00    	jmpq   *0x203fe2(%rip)        # 204f68 <_GLOBAL_OFFSET_TABLE_+0xb0>
     f86:	68 13 00 00 00       	pushq  $0x13
     f8b:	e9 b0 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000f90 <_IO_getc@plt>:
     f90:	ff 25 da 3f 20 00    	jmpq   *0x203fda(%rip)        # 204f70 <_GLOBAL_OFFSET_TABLE_+0xb8>
     f96:	68 14 00 00 00       	pushq  $0x14
     f9b:	e9 a0 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000fa0 <__isoc99_sscanf@plt>:
     fa0:	ff 25 d2 3f 20 00    	jmpq   *0x203fd2(%rip)        # 204f78 <_GLOBAL_OFFSET_TABLE_+0xc0>
     fa6:	68 15 00 00 00       	pushq  $0x15
     fab:	e9 90 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000fb0 <munmap@plt>:
     fb0:	ff 25 ca 3f 20 00    	jmpq   *0x203fca(%rip)        # 204f80 <_GLOBAL_OFFSET_TABLE_+0xc8>
     fb6:	68 16 00 00 00       	pushq  $0x16
     fbb:	e9 80 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000fc0 <__printf_chk@plt>:
     fc0:	ff 25 c2 3f 20 00    	jmpq   *0x203fc2(%rip)        # 204f88 <_GLOBAL_OFFSET_TABLE_+0xd0>
     fc6:	68 17 00 00 00       	pushq  $0x17
     fcb:	e9 70 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000fd0 <fopen@plt>:
     fd0:	ff 25 ba 3f 20 00    	jmpq   *0x203fba(%rip)        # 204f90 <_GLOBAL_OFFSET_TABLE_+0xd8>
     fd6:	68 18 00 00 00       	pushq  $0x18
     fdb:	e9 60 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000fe0 <getopt@plt>:
     fe0:	ff 25 b2 3f 20 00    	jmpq   *0x203fb2(%rip)        # 204f98 <_GLOBAL_OFFSET_TABLE_+0xe0>
     fe6:	68 19 00 00 00       	pushq  $0x19
     feb:	e9 50 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000000ff0 <strtoul@plt>:
     ff0:	ff 25 aa 3f 20 00    	jmpq   *0x203faa(%rip)        # 204fa0 <_GLOBAL_OFFSET_TABLE_+0xe8>
     ff6:	68 1a 00 00 00       	pushq  $0x1a
     ffb:	e9 40 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000001000 <gethostname@plt>:
    1000:	ff 25 a2 3f 20 00    	jmpq   *0x203fa2(%rip)        # 204fa8 <_GLOBAL_OFFSET_TABLE_+0xf0>
    1006:	68 1b 00 00 00       	pushq  $0x1b
    100b:	e9 30 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000001010 <exit@plt>:
    1010:	ff 25 9a 3f 20 00    	jmpq   *0x203f9a(%rip)        # 204fb0 <_GLOBAL_OFFSET_TABLE_+0xf8>
    1016:	68 1c 00 00 00       	pushq  $0x1c
    101b:	e9 20 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000001020 <connect@plt>:
    1020:	ff 25 92 3f 20 00    	jmpq   *0x203f92(%rip)        # 204fb8 <_GLOBAL_OFFSET_TABLE_+0x100>
    1026:	68 1d 00 00 00       	pushq  $0x1d
    102b:	e9 10 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000001030 <__fprintf_chk@plt>:
    1030:	ff 25 8a 3f 20 00    	jmpq   *0x203f8a(%rip)        # 204fc0 <_GLOBAL_OFFSET_TABLE_+0x108>
    1036:	68 1e 00 00 00       	pushq  $0x1e
    103b:	e9 00 fe ff ff       	jmpq   e40 <_init+0x18>

0000000000001040 <__sprintf_chk@plt>:
    1040:	ff 25 82 3f 20 00    	jmpq   *0x203f82(%rip)        # 204fc8 <_GLOBAL_OFFSET_TABLE_+0x110>
    1046:	68 1f 00 00 00       	pushq  $0x1f
    104b:	e9 f0 fd ff ff       	jmpq   e40 <_init+0x18>

0000000000001050 <socket@plt>:
    1050:	ff 25 7a 3f 20 00    	jmpq   *0x203f7a(%rip)        # 204fd0 <_GLOBAL_OFFSET_TABLE_+0x118>
    1056:	68 20 00 00 00       	pushq  $0x20
    105b:	e9 e0 fd ff ff       	jmpq   e40 <_init+0x18>

Disassembly of section .plt.got:

0000000000001060 <.plt.got>:
    1060:	ff 25 92 3f 20 00    	jmpq   *0x203f92(%rip)        # 204ff8 <_GLOBAL_OFFSET_TABLE_+0x140>
    1066:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001070 <_start>:
    1070:	31 ed                	xor    %ebp,%ebp
    1072:	49 89 d1             	mov    %rdx,%r9
    1075:	5e                   	pop    %rsi
    1076:	48 89 e2             	mov    %rsp,%rdx
    1079:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    107d:	50                   	push   %rax
    107e:	54                   	push   %rsp
    107f:	4c 8d 05 5a 21 00 00 	lea    0x215a(%rip),%r8        # 31e0 <__libc_csu_fini>
    1086:	48 8d 0d e3 20 00 00 	lea    0x20e3(%rip),%rcx        # 3170 <__libc_csu_init>
    108d:	48 8d 3d 0d 03 00 00 	lea    0x30d(%rip),%rdi        # 13a1 <main>
    1094:	ff 15 46 3f 20 00    	callq  *0x203f46(%rip)        # 204fe0 <_GLOBAL_OFFSET_TABLE_+0x128>
    109a:	f4                   	hlt    
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <deregister_tm_clones>:
    10a0:	48 8d 3d c9 42 20 00 	lea    0x2042c9(%rip),%rdi        # 205370 <__TMC_END__>
    10a7:	55                   	push   %rbp
    10a8:	48 8d 05 c1 42 20 00 	lea    0x2042c1(%rip),%rax        # 205370 <__TMC_END__>
    10af:	48 39 f8             	cmp    %rdi,%rax
    10b2:	48 89 e5             	mov    %rsp,%rbp
    10b5:	74 19                	je     10d0 <deregister_tm_clones+0x30>
    10b7:	48 8b 05 1a 3f 20 00 	mov    0x203f1a(%rip),%rax        # 204fd8 <_GLOBAL_OFFSET_TABLE_+0x120>
    10be:	48 85 c0             	test   %rax,%rax
    10c1:	74 0d                	je     10d0 <deregister_tm_clones+0x30>
    10c3:	5d                   	pop    %rbp
    10c4:	ff e0                	jmpq   *%rax
    10c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10cd:	00 00 00 
    10d0:	5d                   	pop    %rbp
    10d1:	c3                   	retq   
    10d2:	0f 1f 40 00          	nopl   0x0(%rax)
    10d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10dd:	00 00 00 

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 89 42 20 00 	lea    0x204289(%rip),%rdi        # 205370 <__TMC_END__>
    10e7:	48 8d 35 82 42 20 00 	lea    0x204282(%rip),%rsi        # 205370 <__TMC_END__>
    10ee:	55                   	push   %rbp
    10ef:	48 29 fe             	sub    %rdi,%rsi
    10f2:	48 89 e5             	mov    %rsp,%rbp
    10f5:	48 c1 fe 03          	sar    $0x3,%rsi
    10f9:	48 89 f0             	mov    %rsi,%rax
    10fc:	48 c1 e8 3f          	shr    $0x3f,%rax
    1100:	48 01 c6             	add    %rax,%rsi
    1103:	48 d1 fe             	sar    %rsi
    1106:	74 18                	je     1120 <register_tm_clones+0x40>
    1108:	48 8b 05 e1 3e 20 00 	mov    0x203ee1(%rip),%rax        # 204ff0 <_GLOBAL_OFFSET_TABLE_+0x138>
    110f:	48 85 c0             	test   %rax,%rax
    1112:	74 0c                	je     1120 <register_tm_clones+0x40>
    1114:	5d                   	pop    %rbp
    1115:	ff e0                	jmpq   *%rax
    1117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    111e:	00 00 
    1120:	5d                   	pop    %rbp
    1121:	c3                   	retq   
    1122:	0f 1f 40 00          	nopl   0x0(%rax)
    1126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <__do_global_dtors_aux>:
    1130:	80 3d 71 42 20 00 00 	cmpb   $0x0,0x204271(%rip)        # 2053a8 <completed.7696>
    1137:	75 2f                	jne    1168 <__do_global_dtors_aux+0x38>
    1139:	48 83 3d b7 3e 20 00 	cmpq   $0x0,0x203eb7(%rip)        # 204ff8 <_GLOBAL_OFFSET_TABLE_+0x140>
    1140:	00 
    1141:	55                   	push   %rbp
    1142:	48 89 e5             	mov    %rsp,%rbp
    1145:	74 0c                	je     1153 <__do_global_dtors_aux+0x23>
    1147:	48 8b 3d ba 3e 20 00 	mov    0x203eba(%rip),%rdi        # 205008 <__dso_handle>
    114e:	e8 0d ff ff ff       	callq  1060 <socket@plt+0x10>
    1153:	e8 48 ff ff ff       	callq  10a0 <deregister_tm_clones>
    1158:	c6 05 49 42 20 00 01 	movb   $0x1,0x204249(%rip)        # 2053a8 <completed.7696>
    115f:	5d                   	pop    %rbp
    1160:	c3                   	retq   
    1161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1168:	f3 c3                	repz retq 
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001170 <frame_dummy>:
    1170:	55                   	push   %rbp
    1171:	48 89 e5             	mov    %rsp,%rbp
    1174:	5d                   	pop    %rbp
    1175:	e9 66 ff ff ff       	jmpq   10e0 <register_tm_clones>

000000000000117a <usage>:
    117a:	48 83 ec 08          	sub    $0x8,%rsp
    117e:	48 89 fa             	mov    %rdi,%rdx
    1181:	83 3d 60 42 20 00 00 	cmpl   $0x0,0x204260(%rip)        # 2053e8 <is_checker>
    1188:	74 50                	je     11da <usage+0x60>
    118a:	48 8d 35 67 20 00 00 	lea    0x2067(%rip),%rsi        # 31f8 <_IO_stdin_used+0x8>
    1191:	bf 01 00 00 00       	mov    $0x1,%edi
    1196:	b8 00 00 00 00       	mov    $0x0,%eax
    119b:	e8 20 fe ff ff       	callq  fc0 <__printf_chk@plt>
    11a0:	48 8d 3d 89 20 00 00 	lea    0x2089(%rip),%rdi        # 3230 <_IO_stdin_used+0x40>
    11a7:	e8 f4 fc ff ff       	callq  ea0 <puts@plt>
    11ac:	48 8d 3d f5 21 00 00 	lea    0x21f5(%rip),%rdi        # 33a8 <_IO_stdin_used+0x1b8>
    11b3:	e8 e8 fc ff ff       	callq  ea0 <puts@plt>
    11b8:	48 8d 3d 99 20 00 00 	lea    0x2099(%rip),%rdi        # 3258 <_IO_stdin_used+0x68>
    11bf:	e8 dc fc ff ff       	callq  ea0 <puts@plt>
    11c4:	48 8d 3d f7 21 00 00 	lea    0x21f7(%rip),%rdi        # 33c2 <_IO_stdin_used+0x1d2>
    11cb:	e8 d0 fc ff ff       	callq  ea0 <puts@plt>
    11d0:	bf 00 00 00 00       	mov    $0x0,%edi
    11d5:	e8 36 fe ff ff       	callq  1010 <exit@plt>
    11da:	48 8d 35 fd 21 00 00 	lea    0x21fd(%rip),%rsi        # 33de <_IO_stdin_used+0x1ee>
    11e1:	bf 01 00 00 00       	mov    $0x1,%edi
    11e6:	b8 00 00 00 00       	mov    $0x0,%eax
    11eb:	e8 d0 fd ff ff       	callq  fc0 <__printf_chk@plt>
    11f0:	48 8d 3d 89 20 00 00 	lea    0x2089(%rip),%rdi        # 3280 <_IO_stdin_used+0x90>
    11f7:	e8 a4 fc ff ff       	callq  ea0 <puts@plt>
    11fc:	48 8d 3d a5 20 00 00 	lea    0x20a5(%rip),%rdi        # 32a8 <_IO_stdin_used+0xb8>
    1203:	e8 98 fc ff ff       	callq  ea0 <puts@plt>
    1208:	48 8d 3d ed 21 00 00 	lea    0x21ed(%rip),%rdi        # 33fc <_IO_stdin_used+0x20c>
    120f:	e8 8c fc ff ff       	callq  ea0 <puts@plt>
    1214:	eb ba                	jmp    11d0 <usage+0x56>

0000000000001216 <initialize_target>:
    1216:	55                   	push   %rbp
    1217:	53                   	push   %rbx
    1218:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
    121f:	89 f5                	mov    %esi,%ebp
    1221:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1228:	00 00 
    122a:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
    1231:	00 
    1232:	31 c0                	xor    %eax,%eax
    1234:	89 3d 9e 41 20 00    	mov    %edi,0x20419e(%rip)        # 2053d8 <check_level>
    123a:	8b 3d d0 3d 20 00    	mov    0x203dd0(%rip),%edi        # 205010 <target_id>
    1240:	e8 fe 1e 00 00       	callq  3143 <gencookie>
    1245:	89 05 99 41 20 00    	mov    %eax,0x204199(%rip)        # 2053e4 <cookie>
    124b:	89 c7                	mov    %eax,%edi
    124d:	e8 f1 1e 00 00       	callq  3143 <gencookie>
    1252:	89 05 88 41 20 00    	mov    %eax,0x204188(%rip)        # 2053e0 <authkey>
    1258:	8b 05 b2 3d 20 00    	mov    0x203db2(%rip),%eax        # 205010 <target_id>
    125e:	8d 78 01             	lea    0x1(%rax),%edi
    1261:	e8 0a fc ff ff       	callq  e70 <srandom@plt>
    1266:	e8 15 fd ff ff       	callq  f80 <random@plt>
    126b:	89 c7                	mov    %eax,%edi
    126d:	e8 1a 03 00 00       	callq  158c <scramble>
    1272:	89 c3                	mov    %eax,%ebx
    1274:	85 ed                	test   %ebp,%ebp
    1276:	75 54                	jne    12cc <initialize_target+0xb6>
    1278:	b8 00 00 00 00       	mov    $0x0,%eax
    127d:	01 d8                	add    %ebx,%eax
    127f:	0f b7 c0             	movzwl %ax,%eax
    1282:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
    1289:	89 c0                	mov    %eax,%eax
    128b:	48 89 05 ce 40 20 00 	mov    %rax,0x2040ce(%rip)        # 205360 <buf_offset>
    1292:	c6 05 6f 4d 20 00 63 	movb   $0x63,0x204d6f(%rip)        # 206008 <target_prefix>
    1299:	83 3d c8 40 20 00 00 	cmpl   $0x0,0x2040c8(%rip)        # 205368 <notify>
    12a0:	74 09                	je     12ab <initialize_target+0x95>
    12a2:	83 3d 3f 41 20 00 00 	cmpl   $0x0,0x20413f(%rip)        # 2053e8 <is_checker>
    12a9:	74 39                	je     12e4 <initialize_target+0xce>
    12ab:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
    12b2:	00 
    12b3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    12ba:	00 00 
    12bc:	0f 85 da 00 00 00    	jne    139c <initialize_target+0x186>
    12c2:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
    12c9:	5b                   	pop    %rbx
    12ca:	5d                   	pop    %rbp
    12cb:	c3                   	retq   
    12cc:	bf 00 00 00 00       	mov    $0x0,%edi
    12d1:	e8 9a fc ff ff       	callq  f70 <time@plt>
    12d6:	89 c7                	mov    %eax,%edi
    12d8:	e8 93 fb ff ff       	callq  e70 <srandom@plt>
    12dd:	e8 9e fc ff ff       	callq  f80 <random@plt>
    12e2:	eb 99                	jmp    127d <initialize_target+0x67>
    12e4:	48 89 e7             	mov    %rsp,%rdi
    12e7:	be 00 01 00 00       	mov    $0x100,%esi
    12ec:	e8 0f fd ff ff       	callq  1000 <gethostname@plt>
    12f1:	89 c5                	mov    %eax,%ebp
    12f3:	85 c0                	test   %eax,%eax
    12f5:	75 26                	jne    131d <initialize_target+0x107>
    12f7:	89 c3                	mov    %eax,%ebx
    12f9:	48 63 c3             	movslq %ebx,%rax
    12fc:	48 8d 15 3d 3d 20 00 	lea    0x203d3d(%rip),%rdx        # 205040 <host_table>
    1303:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    1307:	48 85 ff             	test   %rdi,%rdi
    130a:	74 2c                	je     1338 <initialize_target+0x122>
    130c:	48 89 e6             	mov    %rsp,%rsi
    130f:	e8 3c fb ff ff       	callq  e50 <strcasecmp@plt>
    1314:	85 c0                	test   %eax,%eax
    1316:	74 1b                	je     1333 <initialize_target+0x11d>
    1318:	83 c3 01             	add    $0x1,%ebx
    131b:	eb dc                	jmp    12f9 <initialize_target+0xe3>
    131d:	48 8d 3d b4 1f 00 00 	lea    0x1fb4(%rip),%rdi        # 32d8 <_IO_stdin_used+0xe8>
    1324:	e8 77 fb ff ff       	callq  ea0 <puts@plt>
    1329:	bf 08 00 00 00       	mov    $0x8,%edi
    132e:	e8 dd fc ff ff       	callq  1010 <exit@plt>
    1333:	bd 01 00 00 00       	mov    $0x1,%ebp
    1338:	85 ed                	test   %ebp,%ebp
    133a:	74 3d                	je     1379 <initialize_target+0x163>
    133c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    1343:	00 
    1344:	e8 2a 1b 00 00       	callq  2e73 <init_driver>
    1349:	85 c0                	test   %eax,%eax
    134b:	0f 89 5a ff ff ff    	jns    12ab <initialize_target+0x95>
    1351:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    1358:	00 
    1359:	48 8d 35 f0 1f 00 00 	lea    0x1ff0(%rip),%rsi        # 3350 <_IO_stdin_used+0x160>
    1360:	bf 01 00 00 00       	mov    $0x1,%edi
    1365:	b8 00 00 00 00       	mov    $0x0,%eax
    136a:	e8 51 fc ff ff       	callq  fc0 <__printf_chk@plt>
    136f:	bf 08 00 00 00       	mov    $0x8,%edi
    1374:	e8 97 fc ff ff       	callq  1010 <exit@plt>
    1379:	48 89 e2             	mov    %rsp,%rdx
    137c:	48 8d 35 8d 1f 00 00 	lea    0x1f8d(%rip),%rsi        # 3310 <_IO_stdin_used+0x120>
    1383:	bf 01 00 00 00       	mov    $0x1,%edi
    1388:	b8 00 00 00 00       	mov    $0x0,%eax
    138d:	e8 2e fc ff ff       	callq  fc0 <__printf_chk@plt>
    1392:	bf 08 00 00 00       	mov    $0x8,%edi
    1397:	e8 74 fc ff ff       	callq  1010 <exit@plt>
    139c:	e8 1f fb ff ff       	callq  ec0 <__stack_chk_fail@plt>

00000000000013a1 <main>:
    13a1:	41 56                	push   %r14
    13a3:	41 55                	push   %r13
    13a5:	41 54                	push   %r12
    13a7:	55                   	push   %rbp
    13a8:	53                   	push   %rbx
    13a9:	41 89 fc             	mov    %edi,%r12d
    13ac:	48 89 f3             	mov    %rsi,%rbx
    13af:	48 8d 35 c4 0d 00 00 	lea    0xdc4(%rip),%rsi        # 217a <seghandler>
    13b6:	bf 0b 00 00 00       	mov    $0xb,%edi
    13bb:	e8 60 fb ff ff       	callq  f20 <signal@plt>
    13c0:	48 8d 35 5f 0d 00 00 	lea    0xd5f(%rip),%rsi        # 2126 <bushandler>
    13c7:	bf 07 00 00 00       	mov    $0x7,%edi
    13cc:	e8 4f fb ff ff       	callq  f20 <signal@plt>
    13d1:	48 8d 35 f6 0d 00 00 	lea    0xdf6(%rip),%rsi        # 21ce <illegalhandler>
    13d8:	bf 04 00 00 00       	mov    $0x4,%edi
    13dd:	e8 3e fb ff ff       	callq  f20 <signal@plt>
    13e2:	83 3d ff 3f 20 00 00 	cmpl   $0x0,0x203fff(%rip)        # 2053e8 <is_checker>
    13e9:	75 26                	jne    1411 <main+0x70>
    13eb:	48 8d 2d 23 20 00 00 	lea    0x2023(%rip),%rbp        # 3415 <_IO_stdin_used+0x225>
    13f2:	48 8b 05 87 3f 20 00 	mov    0x203f87(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    13f9:	48 89 05 d0 3f 20 00 	mov    %rax,0x203fd0(%rip)        # 2053d0 <infile>
    1400:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    1406:	41 be 00 00 00 00    	mov    $0x0,%r14d
    140c:	e9 8d 00 00 00       	jmpq   149e <main+0xfd>
    1411:	48 8d 35 0a 0e 00 00 	lea    0xe0a(%rip),%rsi        # 2222 <sigalrmhandler>
    1418:	bf 0e 00 00 00       	mov    $0xe,%edi
    141d:	e8 fe fa ff ff       	callq  f20 <signal@plt>
    1422:	bf 05 00 00 00       	mov    $0x5,%edi
    1427:	e8 c4 fa ff ff       	callq  ef0 <alarm@plt>
    142c:	48 8d 2d e7 1f 00 00 	lea    0x1fe7(%rip),%rbp        # 341a <_IO_stdin_used+0x22a>
    1433:	eb bd                	jmp    13f2 <main+0x51>
    1435:	48 8b 3b             	mov    (%rbx),%rdi
    1438:	e8 3d fd ff ff       	callq  117a <usage>
    143d:	48 8d 35 59 22 00 00 	lea    0x2259(%rip),%rsi        # 369d <_IO_stdin_used+0x4ad>
    1444:	48 8b 3d 3d 3f 20 00 	mov    0x203f3d(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    144b:	e8 80 fb ff ff       	callq  fd0 <fopen@plt>
    1450:	48 89 05 79 3f 20 00 	mov    %rax,0x203f79(%rip)        # 2053d0 <infile>
    1457:	48 85 c0             	test   %rax,%rax
    145a:	75 42                	jne    149e <main+0xfd>
    145c:	48 8b 0d 25 3f 20 00 	mov    0x203f25(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    1463:	48 8d 15 b8 1f 00 00 	lea    0x1fb8(%rip),%rdx        # 3422 <_IO_stdin_used+0x232>
    146a:	be 01 00 00 00       	mov    $0x1,%esi
    146f:	48 8b 3d 2a 3f 20 00 	mov    0x203f2a(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    1476:	e8 b5 fb ff ff       	callq  1030 <__fprintf_chk@plt>
    147b:	b8 01 00 00 00       	mov    $0x1,%eax
    1480:	e9 d9 00 00 00       	jmpq   155e <main+0x1bd>
    1485:	ba 10 00 00 00       	mov    $0x10,%edx
    148a:	be 00 00 00 00       	mov    $0x0,%esi
    148f:	48 8b 3d f2 3e 20 00 	mov    0x203ef2(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1496:	e8 55 fb ff ff       	callq  ff0 <strtoul@plt>
    149b:	41 89 c6             	mov    %eax,%r14d
    149e:	48 89 ea             	mov    %rbp,%rdx
    14a1:	48 89 de             	mov    %rbx,%rsi
    14a4:	44 89 e7             	mov    %r12d,%edi
    14a7:	e8 34 fb ff ff       	callq  fe0 <getopt@plt>
    14ac:	3c ff                	cmp    $0xff,%al
    14ae:	74 62                	je     1512 <main+0x171>
    14b0:	0f be d0             	movsbl %al,%edx
    14b3:	83 e8 61             	sub    $0x61,%eax
    14b6:	3c 10                	cmp    $0x10,%al
    14b8:	77 3a                	ja     14f4 <main+0x153>
    14ba:	0f b6 c0             	movzbl %al,%eax
    14bd:	48 8d 0d 9c 1f 00 00 	lea    0x1f9c(%rip),%rcx        # 3460 <_IO_stdin_used+0x270>
    14c4:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    14c8:	48 01 c8             	add    %rcx,%rax
    14cb:	ff e0                	jmpq   *%rax
    14cd:	ba 0a 00 00 00       	mov    $0xa,%edx
    14d2:	be 00 00 00 00       	mov    $0x0,%esi
    14d7:	48 8b 3d aa 3e 20 00 	mov    0x203eaa(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    14de:	e8 6d fa ff ff       	callq  f50 <strtol@plt>
    14e3:	41 89 c5             	mov    %eax,%r13d
    14e6:	eb b6                	jmp    149e <main+0xfd>
    14e8:	c7 05 76 3e 20 00 00 	movl   $0x0,0x203e76(%rip)        # 205368 <notify>
    14ef:	00 00 00 
    14f2:	eb aa                	jmp    149e <main+0xfd>
    14f4:	48 8d 35 44 1f 00 00 	lea    0x1f44(%rip),%rsi        # 343f <_IO_stdin_used+0x24f>
    14fb:	bf 01 00 00 00       	mov    $0x1,%edi
    1500:	b8 00 00 00 00       	mov    $0x0,%eax
    1505:	e8 b6 fa ff ff       	callq  fc0 <__printf_chk@plt>
    150a:	48 8b 3b             	mov    (%rbx),%rdi
    150d:	e8 68 fc ff ff       	callq  117a <usage>
    1512:	be 00 00 00 00       	mov    $0x0,%esi
    1517:	44 89 ef             	mov    %r13d,%edi
    151a:	e8 f7 fc ff ff       	callq  1216 <initialize_target>
    151f:	83 3d c2 3e 20 00 00 	cmpl   $0x0,0x203ec2(%rip)        # 2053e8 <is_checker>
    1526:	74 09                	je     1531 <main+0x190>
    1528:	44 39 35 b1 3e 20 00 	cmp    %r14d,0x203eb1(%rip)        # 2053e0 <authkey>
    152f:	75 36                	jne    1567 <main+0x1c6>
    1531:	8b 15 ad 3e 20 00    	mov    0x203ead(%rip),%edx        # 2053e4 <cookie>
    1537:	48 8d 35 14 1f 00 00 	lea    0x1f14(%rip),%rsi        # 3452 <_IO_stdin_used+0x262>
    153e:	bf 01 00 00 00       	mov    $0x1,%edi
    1543:	b8 00 00 00 00       	mov    $0x0,%eax
    1548:	e8 73 fa ff ff       	callq  fc0 <__printf_chk@plt>
    154d:	48 8b 3d 0c 3e 20 00 	mov    0x203e0c(%rip),%rdi        # 205360 <buf_offset>
    1554:	e8 d5 0d 00 00       	callq  232e <stable_launch>
    1559:	b8 00 00 00 00       	mov    $0x0,%eax
    155e:	5b                   	pop    %rbx
    155f:	5d                   	pop    %rbp
    1560:	41 5c                	pop    %r12
    1562:	41 5d                	pop    %r13
    1564:	41 5e                	pop    %r14
    1566:	c3                   	retq   
    1567:	44 89 f2             	mov    %r14d,%edx
    156a:	48 8d 35 07 1e 00 00 	lea    0x1e07(%rip),%rsi        # 3378 <_IO_stdin_used+0x188>
    1571:	bf 01 00 00 00       	mov    $0x1,%edi
    1576:	b8 00 00 00 00       	mov    $0x0,%eax
    157b:	e8 40 fa ff ff       	callq  fc0 <__printf_chk@plt>
    1580:	b8 00 00 00 00       	mov    $0x0,%eax
    1585:	e8 fc 07 00 00       	callq  1d86 <check_fail>
    158a:	eb a5                	jmp    1531 <main+0x190>

000000000000158c <scramble>:
    158c:	48 83 ec 38          	sub    $0x38,%rsp
    1590:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1597:	00 00 
    1599:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    159e:	31 c0                	xor    %eax,%eax
    15a0:	eb 10                	jmp    15b2 <scramble+0x26>
    15a2:	69 d0 98 f3 00 00    	imul   $0xf398,%eax,%edx
    15a8:	01 fa                	add    %edi,%edx
    15aa:	89 c1                	mov    %eax,%ecx
    15ac:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    15af:	83 c0 01             	add    $0x1,%eax
    15b2:	83 f8 09             	cmp    $0x9,%eax
    15b5:	76 eb                	jbe    15a2 <scramble+0x16>
    15b7:	8b 44 24 14          	mov    0x14(%rsp),%eax
    15bb:	69 c0 26 02 00 00    	imul   $0x226,%eax,%eax
    15c1:	89 44 24 14          	mov    %eax,0x14(%rsp)
    15c5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    15c9:	69 c0 02 2d 00 00    	imul   $0x2d02,%eax,%eax
    15cf:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    15d3:	8b 44 24 04          	mov    0x4(%rsp),%eax
    15d7:	69 c0 83 e8 00 00    	imul   $0xe883,%eax,%eax
    15dd:	89 44 24 04          	mov    %eax,0x4(%rsp)
    15e1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    15e5:	69 c0 8b 26 00 00    	imul   $0x268b,%eax,%eax
    15eb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    15ef:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    15f3:	69 c0 f7 e5 00 00    	imul   $0xe5f7,%eax,%eax
    15f9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    15fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1601:	69 c0 20 7c 00 00    	imul   $0x7c20,%eax,%eax
    1607:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    160b:	8b 44 24 04          	mov    0x4(%rsp),%eax
    160f:	69 c0 48 98 00 00    	imul   $0x9848,%eax,%eax
    1615:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1619:	8b 44 24 20          	mov    0x20(%rsp),%eax
    161d:	69 c0 c0 36 00 00    	imul   $0x36c0,%eax,%eax
    1623:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1627:	8b 44 24 20          	mov    0x20(%rsp),%eax
    162b:	69 c0 f7 66 00 00    	imul   $0x66f7,%eax,%eax
    1631:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1635:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1639:	69 c0 14 06 00 00    	imul   $0x614,%eax,%eax
    163f:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1643:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1647:	69 c0 ab e1 00 00    	imul   $0xe1ab,%eax,%eax
    164d:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1651:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1655:	69 c0 62 c1 00 00    	imul   $0xc162,%eax,%eax
    165b:	89 44 24 20          	mov    %eax,0x20(%rsp)
    165f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1663:	69 c0 f8 c0 00 00    	imul   $0xc0f8,%eax,%eax
    1669:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    166d:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1671:	69 c0 98 ff 00 00    	imul   $0xff98,%eax,%eax
    1677:	89 44 24 18          	mov    %eax,0x18(%rsp)
    167b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    167f:	69 c0 7d 90 00 00    	imul   $0x907d,%eax,%eax
    1685:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1689:	8b 44 24 20          	mov    0x20(%rsp),%eax
    168d:	69 c0 0f 45 00 00    	imul   $0x450f,%eax,%eax
    1693:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1697:	8b 44 24 14          	mov    0x14(%rsp),%eax
    169b:	69 c0 3c 27 00 00    	imul   $0x273c,%eax,%eax
    16a1:	89 44 24 14          	mov    %eax,0x14(%rsp)
    16a5:	8b 44 24 14          	mov    0x14(%rsp),%eax
    16a9:	69 c0 6d 92 00 00    	imul   $0x926d,%eax,%eax
    16af:	89 44 24 14          	mov    %eax,0x14(%rsp)
    16b3:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16b7:	69 c0 e9 a7 00 00    	imul   $0xa7e9,%eax,%eax
    16bd:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16c1:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16c5:	69 c0 83 41 00 00    	imul   $0x4183,%eax,%eax
    16cb:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16cf:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    16d3:	69 c0 ad 0f 00 00    	imul   $0xfad,%eax,%eax
    16d9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    16dd:	8b 44 24 04          	mov    0x4(%rsp),%eax
    16e1:	69 c0 6d 91 00 00    	imul   $0x916d,%eax,%eax
    16e7:	89 44 24 04          	mov    %eax,0x4(%rsp)
    16eb:	8b 44 24 20          	mov    0x20(%rsp),%eax
    16ef:	69 c0 30 f6 00 00    	imul   $0xf630,%eax,%eax
    16f5:	89 44 24 20          	mov    %eax,0x20(%rsp)
    16f9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    16fd:	69 c0 2c 65 00 00    	imul   $0x652c,%eax,%eax
    1703:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1707:	8b 44 24 20          	mov    0x20(%rsp),%eax
    170b:	69 c0 ea 2d 00 00    	imul   $0x2dea,%eax,%eax
    1711:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1715:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1719:	69 c0 5f 38 00 00    	imul   $0x385f,%eax,%eax
    171f:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1723:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1727:	69 c0 95 d1 00 00    	imul   $0xd195,%eax,%eax
    172d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1731:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1735:	69 c0 a1 14 00 00    	imul   $0x14a1,%eax,%eax
    173b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    173f:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1743:	69 c0 bc 65 00 00    	imul   $0x65bc,%eax,%eax
    1749:	89 44 24 08          	mov    %eax,0x8(%rsp)
    174d:	8b 04 24             	mov    (%rsp),%eax
    1750:	69 c0 04 e4 00 00    	imul   $0xe404,%eax,%eax
    1756:	89 04 24             	mov    %eax,(%rsp)
    1759:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    175d:	69 c0 41 90 00 00    	imul   $0x9041,%eax,%eax
    1763:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1767:	8b 44 24 20          	mov    0x20(%rsp),%eax
    176b:	69 c0 de 88 00 00    	imul   $0x88de,%eax,%eax
    1771:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1775:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1779:	69 c0 24 9b 00 00    	imul   $0x9b24,%eax,%eax
    177f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1783:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1787:	69 c0 3d c7 00 00    	imul   $0xc73d,%eax,%eax
    178d:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1791:	8b 04 24             	mov    (%rsp),%eax
    1794:	69 c0 43 d4 00 00    	imul   $0xd443,%eax,%eax
    179a:	89 04 24             	mov    %eax,(%rsp)
    179d:	8b 44 24 08          	mov    0x8(%rsp),%eax
    17a1:	69 c0 ed d0 00 00    	imul   $0xd0ed,%eax,%eax
    17a7:	89 44 24 08          	mov    %eax,0x8(%rsp)
    17ab:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    17af:	69 c0 63 c6 00 00    	imul   $0xc663,%eax,%eax
    17b5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    17b9:	8b 44 24 08          	mov    0x8(%rsp),%eax
    17bd:	69 c0 e6 8b 00 00    	imul   $0x8be6,%eax,%eax
    17c3:	89 44 24 08          	mov    %eax,0x8(%rsp)
    17c7:	8b 44 24 18          	mov    0x18(%rsp),%eax
    17cb:	69 c0 89 2a 00 00    	imul   $0x2a89,%eax,%eax
    17d1:	89 44 24 18          	mov    %eax,0x18(%rsp)
    17d5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    17d9:	69 c0 bb 19 00 00    	imul   $0x19bb,%eax,%eax
    17df:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    17e3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    17e7:	69 c0 52 5c 00 00    	imul   $0x5c52,%eax,%eax
    17ed:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    17f1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    17f5:	69 c0 08 68 00 00    	imul   $0x6808,%eax,%eax
    17fb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    17ff:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1803:	69 c0 dc 4b 00 00    	imul   $0x4bdc,%eax,%eax
    1809:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    180d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1811:	69 c0 75 c0 00 00    	imul   $0xc075,%eax,%eax
    1817:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    181b:	8b 44 24 04          	mov    0x4(%rsp),%eax
    181f:	69 c0 e3 90 00 00    	imul   $0x90e3,%eax,%eax
    1825:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1829:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    182d:	69 c0 d3 a7 00 00    	imul   $0xa7d3,%eax,%eax
    1833:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1837:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    183b:	69 c0 8c cd 00 00    	imul   $0xcd8c,%eax,%eax
    1841:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1845:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1849:	69 c0 a3 d8 00 00    	imul   $0xd8a3,%eax,%eax
    184f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1853:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1857:	69 c0 fc 4b 00 00    	imul   $0x4bfc,%eax,%eax
    185d:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1861:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1865:	69 c0 be ab 00 00    	imul   $0xabbe,%eax,%eax
    186b:	89 44 24 24          	mov    %eax,0x24(%rsp)
    186f:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1873:	69 c0 a1 a8 00 00    	imul   $0xa8a1,%eax,%eax
    1879:	89 44 24 04          	mov    %eax,0x4(%rsp)
    187d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1881:	69 c0 2f 04 00 00    	imul   $0x42f,%eax,%eax
    1887:	89 44 24 20          	mov    %eax,0x20(%rsp)
    188b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    188f:	69 c0 06 df 00 00    	imul   $0xdf06,%eax,%eax
    1895:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1899:	8b 44 24 14          	mov    0x14(%rsp),%eax
    189d:	69 c0 98 2b 00 00    	imul   $0x2b98,%eax,%eax
    18a3:	89 44 24 14          	mov    %eax,0x14(%rsp)
    18a7:	8b 44 24 10          	mov    0x10(%rsp),%eax
    18ab:	69 c0 27 81 00 00    	imul   $0x8127,%eax,%eax
    18b1:	89 44 24 10          	mov    %eax,0x10(%rsp)
    18b5:	8b 44 24 24          	mov    0x24(%rsp),%eax
    18b9:	69 c0 02 62 00 00    	imul   $0x6202,%eax,%eax
    18bf:	89 44 24 24          	mov    %eax,0x24(%rsp)
    18c3:	8b 04 24             	mov    (%rsp),%eax
    18c6:	69 c0 6f 97 00 00    	imul   $0x976f,%eax,%eax
    18cc:	89 04 24             	mov    %eax,(%rsp)
    18cf:	8b 44 24 14          	mov    0x14(%rsp),%eax
    18d3:	69 c0 61 0b 00 00    	imul   $0xb61,%eax,%eax
    18d9:	89 44 24 14          	mov    %eax,0x14(%rsp)
    18dd:	8b 44 24 20          	mov    0x20(%rsp),%eax
    18e1:	69 c0 b4 46 00 00    	imul   $0x46b4,%eax,%eax
    18e7:	89 44 24 20          	mov    %eax,0x20(%rsp)
    18eb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    18ef:	69 c0 e4 94 00 00    	imul   $0x94e4,%eax,%eax
    18f5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    18f9:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18fd:	69 c0 4f 70 00 00    	imul   $0x704f,%eax,%eax
    1903:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1907:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    190b:	69 c0 bc f8 00 00    	imul   $0xf8bc,%eax,%eax
    1911:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1915:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1919:	69 c0 68 6d 00 00    	imul   $0x6d68,%eax,%eax
    191f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1923:	8b 04 24             	mov    (%rsp),%eax
    1926:	69 c0 8b a6 00 00    	imul   $0xa68b,%eax,%eax
    192c:	89 04 24             	mov    %eax,(%rsp)
    192f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1933:	69 c0 40 71 00 00    	imul   $0x7140,%eax,%eax
    1939:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    193d:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1941:	69 c0 a3 d9 00 00    	imul   $0xd9a3,%eax,%eax
    1947:	89 44 24 14          	mov    %eax,0x14(%rsp)
    194b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    194f:	69 c0 f5 ce 00 00    	imul   $0xcef5,%eax,%eax
    1955:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1959:	8b 44 24 14          	mov    0x14(%rsp),%eax
    195d:	69 c0 e5 88 00 00    	imul   $0x88e5,%eax,%eax
    1963:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1967:	8b 44 24 20          	mov    0x20(%rsp),%eax
    196b:	69 c0 e8 6d 00 00    	imul   $0x6de8,%eax,%eax
    1971:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1975:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1979:	69 c0 8b b7 00 00    	imul   $0xb78b,%eax,%eax
    197f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1983:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1987:	69 c0 d2 f9 00 00    	imul   $0xf9d2,%eax,%eax
    198d:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1991:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1995:	69 c0 89 cc 00 00    	imul   $0xcc89,%eax,%eax
    199b:	89 44 24 14          	mov    %eax,0x14(%rsp)
    199f:	8b 44 24 10          	mov    0x10(%rsp),%eax
    19a3:	69 c0 98 e3 00 00    	imul   $0xe398,%eax,%eax
    19a9:	89 44 24 10          	mov    %eax,0x10(%rsp)
    19ad:	8b 44 24 20          	mov    0x20(%rsp),%eax
    19b1:	69 c0 8c 74 00 00    	imul   $0x748c,%eax,%eax
    19b7:	89 44 24 20          	mov    %eax,0x20(%rsp)
    19bb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    19bf:	69 c0 c0 a3 00 00    	imul   $0xa3c0,%eax,%eax
    19c5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    19c9:	8b 44 24 14          	mov    0x14(%rsp),%eax
    19cd:	69 c0 e3 01 00 00    	imul   $0x1e3,%eax,%eax
    19d3:	89 44 24 14          	mov    %eax,0x14(%rsp)
    19d7:	8b 44 24 10          	mov    0x10(%rsp),%eax
    19db:	69 c0 28 46 00 00    	imul   $0x4628,%eax,%eax
    19e1:	89 44 24 10          	mov    %eax,0x10(%rsp)
    19e5:	8b 44 24 24          	mov    0x24(%rsp),%eax
    19e9:	69 c0 ea 51 00 00    	imul   $0x51ea,%eax,%eax
    19ef:	89 44 24 24          	mov    %eax,0x24(%rsp)
    19f3:	8b 04 24             	mov    (%rsp),%eax
    19f6:	69 c0 ff cb 00 00    	imul   $0xcbff,%eax,%eax
    19fc:	89 04 24             	mov    %eax,(%rsp)
    19ff:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1a03:	69 c0 f5 6c 00 00    	imul   $0x6cf5,%eax,%eax
    1a09:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1a0d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1a11:	69 c0 bf 4a 00 00    	imul   $0x4abf,%eax,%eax
    1a17:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1a1b:	8b 04 24             	mov    (%rsp),%eax
    1a1e:	69 c0 20 57 00 00    	imul   $0x5720,%eax,%eax
    1a24:	89 04 24             	mov    %eax,(%rsp)
    1a27:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1a2b:	69 c0 6c 24 00 00    	imul   $0x246c,%eax,%eax
    1a31:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1a35:	8b 04 24             	mov    (%rsp),%eax
    1a38:	69 c0 b0 c7 00 00    	imul   $0xc7b0,%eax,%eax
    1a3e:	89 04 24             	mov    %eax,(%rsp)
    1a41:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1a45:	69 c0 84 94 00 00    	imul   $0x9484,%eax,%eax
    1a4b:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1a4f:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1a53:	69 c0 64 81 00 00    	imul   $0x8164,%eax,%eax
    1a59:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1a5d:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1a61:	69 c0 c8 98 00 00    	imul   $0x98c8,%eax,%eax
    1a67:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1a6b:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1a6f:	69 c0 97 1f 00 00    	imul   $0x1f97,%eax,%eax
    1a75:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1a79:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1a7d:	69 c0 d8 25 00 00    	imul   $0x25d8,%eax,%eax
    1a83:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1a87:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1a8b:	69 c0 ac a6 00 00    	imul   $0xa6ac,%eax,%eax
    1a91:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1a95:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1a99:	69 c0 94 9d 00 00    	imul   $0x9d94,%eax,%eax
    1a9f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1aa3:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1aa7:	69 c0 a8 dd 00 00    	imul   $0xdda8,%eax,%eax
    1aad:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1ab1:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1ab5:	69 c0 30 a3 00 00    	imul   $0xa330,%eax,%eax
    1abb:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1abf:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1ac3:	69 c0 4e 97 00 00    	imul   $0x974e,%eax,%eax
    1ac9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1acd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1ad1:	69 c0 09 28 00 00    	imul   $0x2809,%eax,%eax
    1ad7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1adb:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1adf:	69 c0 6f ac 00 00    	imul   $0xac6f,%eax,%eax
    1ae5:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1ae9:	ba 00 00 00 00       	mov    $0x0,%edx
    1aee:	b8 00 00 00 00       	mov    $0x0,%eax
    1af3:	eb 0a                	jmp    1aff <scramble+0x573>
    1af5:	89 d1                	mov    %edx,%ecx
    1af7:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
    1afa:	01 c8                	add    %ecx,%eax
    1afc:	83 c2 01             	add    $0x1,%edx
    1aff:	83 fa 09             	cmp    $0x9,%edx
    1b02:	76 f1                	jbe    1af5 <scramble+0x569>
    1b04:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    1b09:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1b10:	00 00 
    1b12:	75 05                	jne    1b19 <scramble+0x58d>
    1b14:	48 83 c4 38          	add    $0x38,%rsp
    1b18:	c3                   	retq   
    1b19:	e8 a2 f3 ff ff       	callq  ec0 <__stack_chk_fail@plt>

0000000000001b1e <getbuf>:
    1b1e:	48 83 ec 18          	sub    $0x18,%rsp
    1b22:	48 89 e7             	mov    %rsp,%rdi
    1b25:	e8 94 02 00 00       	callq  1dbe <Gets>
    1b2a:	b8 01 00 00 00       	mov    $0x1,%eax
    1b2f:	48 83 c4 18          	add    $0x18,%rsp
    1b33:	c3                   	retq   

0000000000001b34 <touch1>:
    1b34:	48 83 ec 08          	sub    $0x8,%rsp
    1b38:	c7 05 9a 38 20 00 01 	movl   $0x1,0x20389a(%rip)        # 2053dc <vlevel>
    1b3f:	00 00 00 
    1b42:	48 8d 3d ad 19 00 00 	lea    0x19ad(%rip),%rdi        # 34f6 <_IO_stdin_used+0x306>
    1b49:	e8 52 f3 ff ff       	callq  ea0 <puts@plt>
    1b4e:	bf 01 00 00 00       	mov    $0x1,%edi
    1b53:	e8 d6 04 00 00       	callq  202e <validate>
    1b58:	bf 00 00 00 00       	mov    $0x0,%edi
    1b5d:	e8 ae f4 ff ff       	callq  1010 <exit@plt>

0000000000001b62 <touch2>:
    1b62:	48 83 ec 08          	sub    $0x8,%rsp
    1b66:	89 fa                	mov    %edi,%edx
    1b68:	c7 05 6a 38 20 00 02 	movl   $0x2,0x20386a(%rip)        # 2053dc <vlevel>
    1b6f:	00 00 00 
    1b72:	39 3d 6c 38 20 00    	cmp    %edi,0x20386c(%rip)        # 2053e4 <cookie>
    1b78:	74 2a                	je     1ba4 <touch2+0x42>
    1b7a:	48 8d 35 bf 19 00 00 	lea    0x19bf(%rip),%rsi        # 3540 <_IO_stdin_used+0x350>
    1b81:	bf 01 00 00 00       	mov    $0x1,%edi
    1b86:	b8 00 00 00 00       	mov    $0x0,%eax
    1b8b:	e8 30 f4 ff ff       	callq  fc0 <__printf_chk@plt>
    1b90:	bf 02 00 00 00       	mov    $0x2,%edi
    1b95:	e8 64 05 00 00       	callq  20fe <fail>
    1b9a:	bf 00 00 00 00       	mov    $0x0,%edi
    1b9f:	e8 6c f4 ff ff       	callq  1010 <exit@plt>
    1ba4:	48 8d 35 6d 19 00 00 	lea    0x196d(%rip),%rsi        # 3518 <_IO_stdin_used+0x328>
    1bab:	bf 01 00 00 00       	mov    $0x1,%edi
    1bb0:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb5:	e8 06 f4 ff ff       	callq  fc0 <__printf_chk@plt>
    1bba:	bf 02 00 00 00       	mov    $0x2,%edi
    1bbf:	e8 6a 04 00 00       	callq  202e <validate>
    1bc4:	eb d4                	jmp    1b9a <touch2+0x38>

0000000000001bc6 <hexmatch>:
    1bc6:	41 54                	push   %r12
    1bc8:	55                   	push   %rbp
    1bc9:	53                   	push   %rbx
    1bca:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1bce:	89 fd                	mov    %edi,%ebp
    1bd0:	48 89 f3             	mov    %rsi,%rbx
    1bd3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bda:	00 00 
    1bdc:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    1be1:	31 c0                	xor    %eax,%eax
    1be3:	e8 98 f3 ff ff       	callq  f80 <random@plt>
    1be8:	48 89 c1             	mov    %rax,%rcx
    1beb:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
    1bf2:	0a d7 a3 
    1bf5:	48 f7 ea             	imul   %rdx
    1bf8:	48 01 ca             	add    %rcx,%rdx
    1bfb:	48 c1 fa 06          	sar    $0x6,%rdx
    1bff:	48 89 c8             	mov    %rcx,%rax
    1c02:	48 c1 f8 3f          	sar    $0x3f,%rax
    1c06:	48 29 c2             	sub    %rax,%rdx
    1c09:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    1c0d:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1c11:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
    1c18:	00 
    1c19:	48 29 c1             	sub    %rax,%rcx
    1c1c:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
    1c20:	41 89 e8             	mov    %ebp,%r8d
    1c23:	48 8d 0d e9 18 00 00 	lea    0x18e9(%rip),%rcx        # 3513 <_IO_stdin_used+0x323>
    1c2a:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    1c31:	be 01 00 00 00       	mov    $0x1,%esi
    1c36:	4c 89 e7             	mov    %r12,%rdi
    1c39:	b8 00 00 00 00       	mov    $0x0,%eax
    1c3e:	e8 fd f3 ff ff       	callq  1040 <__sprintf_chk@plt>
    1c43:	ba 09 00 00 00       	mov    $0x9,%edx
    1c48:	4c 89 e6             	mov    %r12,%rsi
    1c4b:	48 89 df             	mov    %rbx,%rdi
    1c4e:	e8 2d f2 ff ff       	callq  e80 <strncmp@plt>
    1c53:	85 c0                	test   %eax,%eax
    1c55:	0f 94 c0             	sete   %al
    1c58:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
    1c5d:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    1c64:	00 00 
    1c66:	75 0c                	jne    1c74 <hexmatch+0xae>
    1c68:	0f b6 c0             	movzbl %al,%eax
    1c6b:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    1c6f:	5b                   	pop    %rbx
    1c70:	5d                   	pop    %rbp
    1c71:	41 5c                	pop    %r12
    1c73:	c3                   	retq   
    1c74:	e8 47 f2 ff ff       	callq  ec0 <__stack_chk_fail@plt>

0000000000001c79 <touch3>:
    1c79:	53                   	push   %rbx
    1c7a:	48 89 fb             	mov    %rdi,%rbx
    1c7d:	c7 05 55 37 20 00 03 	movl   $0x3,0x203755(%rip)        # 2053dc <vlevel>
    1c84:	00 00 00 
    1c87:	48 89 fe             	mov    %rdi,%rsi
    1c8a:	8b 3d 54 37 20 00    	mov    0x203754(%rip),%edi        # 2053e4 <cookie>
    1c90:	e8 31 ff ff ff       	callq  1bc6 <hexmatch>
    1c95:	85 c0                	test   %eax,%eax
    1c97:	74 2d                	je     1cc6 <touch3+0x4d>
    1c99:	48 89 da             	mov    %rbx,%rdx
    1c9c:	48 8d 35 c5 18 00 00 	lea    0x18c5(%rip),%rsi        # 3568 <_IO_stdin_used+0x378>
    1ca3:	bf 01 00 00 00       	mov    $0x1,%edi
    1ca8:	b8 00 00 00 00       	mov    $0x0,%eax
    1cad:	e8 0e f3 ff ff       	callq  fc0 <__printf_chk@plt>
    1cb2:	bf 03 00 00 00       	mov    $0x3,%edi
    1cb7:	e8 72 03 00 00       	callq  202e <validate>
    1cbc:	bf 00 00 00 00       	mov    $0x0,%edi
    1cc1:	e8 4a f3 ff ff       	callq  1010 <exit@plt>
    1cc6:	48 89 da             	mov    %rbx,%rdx
    1cc9:	48 8d 35 c0 18 00 00 	lea    0x18c0(%rip),%rsi        # 3590 <_IO_stdin_used+0x3a0>
    1cd0:	bf 01 00 00 00       	mov    $0x1,%edi
    1cd5:	b8 00 00 00 00       	mov    $0x0,%eax
    1cda:	e8 e1 f2 ff ff       	callq  fc0 <__printf_chk@plt>
    1cdf:	bf 03 00 00 00       	mov    $0x3,%edi
    1ce4:	e8 15 04 00 00       	callq  20fe <fail>
    1ce9:	eb d1                	jmp    1cbc <touch3+0x43>

0000000000001ceb <test>:
    1ceb:	48 83 ec 08          	sub    $0x8,%rsp
    1cef:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf4:	e8 25 fe ff ff       	callq  1b1e <getbuf>
    1cf9:	89 c2                	mov    %eax,%edx
    1cfb:	48 8d 35 b6 18 00 00 	lea    0x18b6(%rip),%rsi        # 35b8 <_IO_stdin_used+0x3c8>
    1d02:	bf 01 00 00 00       	mov    $0x1,%edi
    1d07:	b8 00 00 00 00       	mov    $0x0,%eax
    1d0c:	e8 af f2 ff ff       	callq  fc0 <__printf_chk@plt>
    1d11:	48 83 c4 08          	add    $0x8,%rsp
    1d15:	c3                   	retq   

0000000000001d16 <save_char>:
    1d16:	8b 05 e8 42 20 00    	mov    0x2042e8(%rip),%eax        # 206004 <gets_cnt>
    1d1c:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    1d21:	7f 4a                	jg     1d6d <save_char+0x57>
    1d23:	89 f9                	mov    %edi,%ecx
    1d25:	c0 e9 04             	shr    $0x4,%cl
    1d28:	8d 14 40             	lea    (%rax,%rax,2),%edx
    1d2b:	4c 8d 05 ae 1b 00 00 	lea    0x1bae(%rip),%r8        # 38e0 <trans_char>
    1d32:	83 e1 0f             	and    $0xf,%ecx
    1d35:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
    1d3a:	48 8d 0d bf 36 20 00 	lea    0x2036bf(%rip),%rcx        # 205400 <gets_buf>
    1d41:	48 63 f2             	movslq %edx,%rsi
    1d44:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
    1d48:	8d 72 01             	lea    0x1(%rdx),%esi
    1d4b:	83 e7 0f             	and    $0xf,%edi
    1d4e:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
    1d53:	48 63 f6             	movslq %esi,%rsi
    1d56:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
    1d5a:	83 c2 02             	add    $0x2,%edx
    1d5d:	48 63 d2             	movslq %edx,%rdx
    1d60:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
    1d64:	83 c0 01             	add    $0x1,%eax
    1d67:	89 05 97 42 20 00    	mov    %eax,0x204297(%rip)        # 206004 <gets_cnt>
    1d6d:	f3 c3                	repz retq 

0000000000001d6f <save_term>:
    1d6f:	8b 05 8f 42 20 00    	mov    0x20428f(%rip),%eax        # 206004 <gets_cnt>
    1d75:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1d78:	48 98                	cltq   
    1d7a:	48 8d 15 7f 36 20 00 	lea    0x20367f(%rip),%rdx        # 205400 <gets_buf>
    1d81:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d85:	c3                   	retq   

0000000000001d86 <check_fail>:
    1d86:	48 83 ec 08          	sub    $0x8,%rsp
    1d8a:	0f be 15 77 42 20 00 	movsbl 0x204277(%rip),%edx        # 206008 <target_prefix>
    1d91:	4c 8d 05 68 36 20 00 	lea    0x203668(%rip),%r8        # 205400 <gets_buf>
    1d98:	8b 0d 3a 36 20 00    	mov    0x20363a(%rip),%ecx        # 2053d8 <check_level>
    1d9e:	48 8d 35 36 18 00 00 	lea    0x1836(%rip),%rsi        # 35db <_IO_stdin_used+0x3eb>
    1da5:	bf 01 00 00 00       	mov    $0x1,%edi
    1daa:	b8 00 00 00 00       	mov    $0x0,%eax
    1daf:	e8 0c f2 ff ff       	callq  fc0 <__printf_chk@plt>
    1db4:	bf 01 00 00 00       	mov    $0x1,%edi
    1db9:	e8 52 f2 ff ff       	callq  1010 <exit@plt>

0000000000001dbe <Gets>:
    1dbe:	41 54                	push   %r12
    1dc0:	55                   	push   %rbp
    1dc1:	53                   	push   %rbx
    1dc2:	49 89 fc             	mov    %rdi,%r12
    1dc5:	c7 05 35 42 20 00 00 	movl   $0x0,0x204235(%rip)        # 206004 <gets_cnt>
    1dcc:	00 00 00 
    1dcf:	48 89 fb             	mov    %rdi,%rbx
    1dd2:	eb 11                	jmp    1de5 <Gets+0x27>
    1dd4:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    1dd8:	88 03                	mov    %al,(%rbx)
    1dda:	0f b6 f8             	movzbl %al,%edi
    1ddd:	e8 34 ff ff ff       	callq  1d16 <save_char>
    1de2:	48 89 eb             	mov    %rbp,%rbx
    1de5:	48 8b 3d e4 35 20 00 	mov    0x2035e4(%rip),%rdi        # 2053d0 <infile>
    1dec:	e8 9f f1 ff ff       	callq  f90 <_IO_getc@plt>
    1df1:	83 f8 ff             	cmp    $0xffffffff,%eax
    1df4:	74 05                	je     1dfb <Gets+0x3d>
    1df6:	83 f8 0a             	cmp    $0xa,%eax
    1df9:	75 d9                	jne    1dd4 <Gets+0x16>
    1dfb:	c6 03 00             	movb   $0x0,(%rbx)
    1dfe:	b8 00 00 00 00       	mov    $0x0,%eax
    1e03:	e8 67 ff ff ff       	callq  1d6f <save_term>
    1e08:	4c 89 e0             	mov    %r12,%rax
    1e0b:	5b                   	pop    %rbx
    1e0c:	5d                   	pop    %rbp
    1e0d:	41 5c                	pop    %r12
    1e0f:	c3                   	retq   

0000000000001e10 <notify_server>:
    1e10:	55                   	push   %rbp
    1e11:	53                   	push   %rbx
    1e12:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1e19:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e20:	00 00 
    1e22:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1e29:	00 
    1e2a:	31 c0                	xor    %eax,%eax
    1e2c:	83 3d b5 35 20 00 00 	cmpl   $0x0,0x2035b5(%rip)        # 2053e8 <is_checker>
    1e33:	0f 85 d2 00 00 00    	jne    1f0b <notify_server+0xfb>
    1e39:	89 fb                	mov    %edi,%ebx
    1e3b:	8b 05 c3 41 20 00    	mov    0x2041c3(%rip),%eax        # 206004 <gets_cnt>
    1e41:	83 c0 64             	add    $0x64,%eax
    1e44:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1e49:	0f 8f dd 00 00 00    	jg     1f2c <notify_server+0x11c>
    1e4f:	0f be 05 b2 41 20 00 	movsbl 0x2041b2(%rip),%eax        # 206008 <target_prefix>
    1e56:	83 3d 0b 35 20 00 00 	cmpl   $0x0,0x20350b(%rip)        # 205368 <notify>
    1e5d:	0f 84 e9 00 00 00    	je     1f4c <notify_server+0x13c>
    1e63:	8b 15 77 35 20 00    	mov    0x203577(%rip),%edx        # 2053e0 <authkey>
    1e69:	85 db                	test   %ebx,%ebx
    1e6b:	0f 84 e5 00 00 00    	je     1f56 <notify_server+0x146>
    1e71:	48 8d 2d 79 17 00 00 	lea    0x1779(%rip),%rbp        # 35f1 <_IO_stdin_used+0x401>
    1e78:	48 89 e7             	mov    %rsp,%rdi
    1e7b:	48 8d 0d 7e 35 20 00 	lea    0x20357e(%rip),%rcx        # 205400 <gets_buf>
    1e82:	51                   	push   %rcx
    1e83:	56                   	push   %rsi
    1e84:	50                   	push   %rax
    1e85:	52                   	push   %rdx
    1e86:	49 89 e9             	mov    %rbp,%r9
    1e89:	44 8b 05 80 31 20 00 	mov    0x203180(%rip),%r8d        # 205010 <target_id>
    1e90:	48 8d 0d 64 17 00 00 	lea    0x1764(%rip),%rcx        # 35fb <_IO_stdin_used+0x40b>
    1e97:	ba 00 20 00 00       	mov    $0x2000,%edx
    1e9c:	be 01 00 00 00       	mov    $0x1,%esi
    1ea1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea6:	e8 95 f1 ff ff       	callq  1040 <__sprintf_chk@plt>
    1eab:	48 83 c4 20          	add    $0x20,%rsp
    1eaf:	83 3d b2 34 20 00 00 	cmpl   $0x0,0x2034b2(%rip)        # 205368 <notify>
    1eb6:	0f 84 df 00 00 00    	je     1f9b <notify_server+0x18b>
    1ebc:	85 db                	test   %ebx,%ebx
    1ebe:	0f 84 c6 00 00 00    	je     1f8a <notify_server+0x17a>
    1ec4:	48 89 e1             	mov    %rsp,%rcx
    1ec7:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1ece:	00 
    1ecf:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1ed5:	48 8b 15 4c 31 20 00 	mov    0x20314c(%rip),%rdx        # 205028 <lab>
    1edc:	48 8b 35 4d 31 20 00 	mov    0x20314d(%rip),%rsi        # 205030 <course>
    1ee3:	48 8b 3d 36 31 20 00 	mov    0x203136(%rip),%rdi        # 205020 <user_id>
    1eea:	e8 af 11 00 00       	callq  309e <driver_post>
    1eef:	85 c0                	test   %eax,%eax
    1ef1:	78 6f                	js     1f62 <notify_server+0x152>
    1ef3:	48 8d 3d 46 18 00 00 	lea    0x1846(%rip),%rdi        # 3740 <_IO_stdin_used+0x550>
    1efa:	e8 a1 ef ff ff       	callq  ea0 <puts@plt>
    1eff:	48 8d 3d 1d 17 00 00 	lea    0x171d(%rip),%rdi        # 3623 <_IO_stdin_used+0x433>
    1f06:	e8 95 ef ff ff       	callq  ea0 <puts@plt>
    1f0b:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1f12:	00 
    1f13:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1f1a:	00 00 
    1f1c:	0f 85 07 01 00 00    	jne    2029 <notify_server+0x219>
    1f22:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1f29:	5b                   	pop    %rbx
    1f2a:	5d                   	pop    %rbp
    1f2b:	c3                   	retq   
    1f2c:	48 8d 35 dd 17 00 00 	lea    0x17dd(%rip),%rsi        # 3710 <_IO_stdin_used+0x520>
    1f33:	bf 01 00 00 00       	mov    $0x1,%edi
    1f38:	b8 00 00 00 00       	mov    $0x0,%eax
    1f3d:	e8 7e f0 ff ff       	callq  fc0 <__printf_chk@plt>
    1f42:	bf 01 00 00 00       	mov    $0x1,%edi
    1f47:	e8 c4 f0 ff ff       	callq  1010 <exit@plt>
    1f4c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1f51:	e9 13 ff ff ff       	jmpq   1e69 <notify_server+0x59>
    1f56:	48 8d 2d 99 16 00 00 	lea    0x1699(%rip),%rbp        # 35f6 <_IO_stdin_used+0x406>
    1f5d:	e9 16 ff ff ff       	jmpq   1e78 <notify_server+0x68>
    1f62:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
    1f69:	00 
    1f6a:	48 8d 35 a6 16 00 00 	lea    0x16a6(%rip),%rsi        # 3617 <_IO_stdin_used+0x427>
    1f71:	bf 01 00 00 00       	mov    $0x1,%edi
    1f76:	b8 00 00 00 00       	mov    $0x0,%eax
    1f7b:	e8 40 f0 ff ff       	callq  fc0 <__printf_chk@plt>
    1f80:	bf 01 00 00 00       	mov    $0x1,%edi
    1f85:	e8 86 f0 ff ff       	callq  1010 <exit@plt>
    1f8a:	48 8d 3d 9c 16 00 00 	lea    0x169c(%rip),%rdi        # 362d <_IO_stdin_used+0x43d>
    1f91:	e8 0a ef ff ff       	callq  ea0 <puts@plt>
    1f96:	e9 70 ff ff ff       	jmpq   1f0b <notify_server+0xfb>
    1f9b:	48 89 ea             	mov    %rbp,%rdx
    1f9e:	48 8d 35 d3 17 00 00 	lea    0x17d3(%rip),%rsi        # 3778 <_IO_stdin_used+0x588>
    1fa5:	bf 01 00 00 00       	mov    $0x1,%edi
    1faa:	b8 00 00 00 00       	mov    $0x0,%eax
    1faf:	e8 0c f0 ff ff       	callq  fc0 <__printf_chk@plt>
    1fb4:	48 8b 15 65 30 20 00 	mov    0x203065(%rip),%rdx        # 205020 <user_id>
    1fbb:	48 8d 35 72 16 00 00 	lea    0x1672(%rip),%rsi        # 3634 <_IO_stdin_used+0x444>
    1fc2:	bf 01 00 00 00       	mov    $0x1,%edi
    1fc7:	b8 00 00 00 00       	mov    $0x0,%eax
    1fcc:	e8 ef ef ff ff       	callq  fc0 <__printf_chk@plt>
    1fd1:	48 8b 15 58 30 20 00 	mov    0x203058(%rip),%rdx        # 205030 <course>
    1fd8:	48 8d 35 62 16 00 00 	lea    0x1662(%rip),%rsi        # 3641 <_IO_stdin_used+0x451>
    1fdf:	bf 01 00 00 00       	mov    $0x1,%edi
    1fe4:	b8 00 00 00 00       	mov    $0x0,%eax
    1fe9:	e8 d2 ef ff ff       	callq  fc0 <__printf_chk@plt>
    1fee:	48 8b 15 33 30 20 00 	mov    0x203033(%rip),%rdx        # 205028 <lab>
    1ff5:	48 8d 35 51 16 00 00 	lea    0x1651(%rip),%rsi        # 364d <_IO_stdin_used+0x45d>
    1ffc:	bf 01 00 00 00       	mov    $0x1,%edi
    2001:	b8 00 00 00 00       	mov    $0x0,%eax
    2006:	e8 b5 ef ff ff       	callq  fc0 <__printf_chk@plt>
    200b:	48 89 e2             	mov    %rsp,%rdx
    200e:	48 8d 35 41 16 00 00 	lea    0x1641(%rip),%rsi        # 3656 <_IO_stdin_used+0x466>
    2015:	bf 01 00 00 00       	mov    $0x1,%edi
    201a:	b8 00 00 00 00       	mov    $0x0,%eax
    201f:	e8 9c ef ff ff       	callq  fc0 <__printf_chk@plt>
    2024:	e9 e2 fe ff ff       	jmpq   1f0b <notify_server+0xfb>
    2029:	e8 92 ee ff ff       	callq  ec0 <__stack_chk_fail@plt>

000000000000202e <validate>:
    202e:	53                   	push   %rbx
    202f:	89 fb                	mov    %edi,%ebx
    2031:	83 3d b0 33 20 00 00 	cmpl   $0x0,0x2033b0(%rip)        # 2053e8 <is_checker>
    2038:	74 72                	je     20ac <validate+0x7e>
    203a:	39 3d 9c 33 20 00    	cmp    %edi,0x20339c(%rip)        # 2053dc <vlevel>
    2040:	75 32                	jne    2074 <validate+0x46>
    2042:	8b 15 90 33 20 00    	mov    0x203390(%rip),%edx        # 2053d8 <check_level>
    2048:	39 fa                	cmp    %edi,%edx
    204a:	75 3e                	jne    208a <validate+0x5c>
    204c:	0f be 15 b5 3f 20 00 	movsbl 0x203fb5(%rip),%edx        # 206008 <target_prefix>
    2053:	4c 8d 05 a6 33 20 00 	lea    0x2033a6(%rip),%r8        # 205400 <gets_buf>
    205a:	89 f9                	mov    %edi,%ecx
    205c:	48 8d 35 1d 16 00 00 	lea    0x161d(%rip),%rsi        # 3680 <_IO_stdin_used+0x490>
    2063:	bf 01 00 00 00       	mov    $0x1,%edi
    2068:	b8 00 00 00 00       	mov    $0x0,%eax
    206d:	e8 4e ef ff ff       	callq  fc0 <__printf_chk@plt>
    2072:	5b                   	pop    %rbx
    2073:	c3                   	retq   
    2074:	48 8d 3d e7 15 00 00 	lea    0x15e7(%rip),%rdi        # 3662 <_IO_stdin_used+0x472>
    207b:	e8 20 ee ff ff       	callq  ea0 <puts@plt>
    2080:	b8 00 00 00 00       	mov    $0x0,%eax
    2085:	e8 fc fc ff ff       	callq  1d86 <check_fail>
    208a:	89 f9                	mov    %edi,%ecx
    208c:	48 8d 35 0d 17 00 00 	lea    0x170d(%rip),%rsi        # 37a0 <_IO_stdin_used+0x5b0>
    2093:	bf 01 00 00 00       	mov    $0x1,%edi
    2098:	b8 00 00 00 00       	mov    $0x0,%eax
    209d:	e8 1e ef ff ff       	callq  fc0 <__printf_chk@plt>
    20a2:	b8 00 00 00 00       	mov    $0x0,%eax
    20a7:	e8 da fc ff ff       	callq  1d86 <check_fail>
    20ac:	39 3d 2a 33 20 00    	cmp    %edi,0x20332a(%rip)        # 2053dc <vlevel>
    20b2:	74 1a                	je     20ce <validate+0xa0>
    20b4:	48 8d 3d a7 15 00 00 	lea    0x15a7(%rip),%rdi        # 3662 <_IO_stdin_used+0x472>
    20bb:	e8 e0 ed ff ff       	callq  ea0 <puts@plt>
    20c0:	89 de                	mov    %ebx,%esi
    20c2:	bf 00 00 00 00       	mov    $0x0,%edi
    20c7:	e8 44 fd ff ff       	callq  1e10 <notify_server>
    20cc:	eb a4                	jmp    2072 <validate+0x44>
    20ce:	0f be 0d 33 3f 20 00 	movsbl 0x203f33(%rip),%ecx        # 206008 <target_prefix>
    20d5:	89 fa                	mov    %edi,%edx
    20d7:	48 8d 35 ea 16 00 00 	lea    0x16ea(%rip),%rsi        # 37c8 <_IO_stdin_used+0x5d8>
    20de:	bf 01 00 00 00       	mov    $0x1,%edi
    20e3:	b8 00 00 00 00       	mov    $0x0,%eax
    20e8:	e8 d3 ee ff ff       	callq  fc0 <__printf_chk@plt>
    20ed:	89 de                	mov    %ebx,%esi
    20ef:	bf 01 00 00 00       	mov    $0x1,%edi
    20f4:	e8 17 fd ff ff       	callq  1e10 <notify_server>
    20f9:	e9 74 ff ff ff       	jmpq   2072 <validate+0x44>

00000000000020fe <fail>:
    20fe:	48 83 ec 08          	sub    $0x8,%rsp
    2102:	83 3d df 32 20 00 00 	cmpl   $0x0,0x2032df(%rip)        # 2053e8 <is_checker>
    2109:	75 11                	jne    211c <fail+0x1e>
    210b:	89 fe                	mov    %edi,%esi
    210d:	bf 00 00 00 00       	mov    $0x0,%edi
    2112:	e8 f9 fc ff ff       	callq  1e10 <notify_server>
    2117:	48 83 c4 08          	add    $0x8,%rsp
    211b:	c3                   	retq   
    211c:	b8 00 00 00 00       	mov    $0x0,%eax
    2121:	e8 60 fc ff ff       	callq  1d86 <check_fail>

0000000000002126 <bushandler>:
    2126:	48 83 ec 08          	sub    $0x8,%rsp
    212a:	83 3d b7 32 20 00 00 	cmpl   $0x0,0x2032b7(%rip)        # 2053e8 <is_checker>
    2131:	74 16                	je     2149 <bushandler+0x23>
    2133:	48 8d 3d 5b 15 00 00 	lea    0x155b(%rip),%rdi        # 3695 <_IO_stdin_used+0x4a5>
    213a:	e8 61 ed ff ff       	callq  ea0 <puts@plt>
    213f:	b8 00 00 00 00       	mov    $0x0,%eax
    2144:	e8 3d fc ff ff       	callq  1d86 <check_fail>
    2149:	48 8d 3d b0 16 00 00 	lea    0x16b0(%rip),%rdi        # 3800 <_IO_stdin_used+0x610>
    2150:	e8 4b ed ff ff       	callq  ea0 <puts@plt>
    2155:	48 8d 3d 43 15 00 00 	lea    0x1543(%rip),%rdi        # 369f <_IO_stdin_used+0x4af>
    215c:	e8 3f ed ff ff       	callq  ea0 <puts@plt>
    2161:	be 00 00 00 00       	mov    $0x0,%esi
    2166:	bf 00 00 00 00       	mov    $0x0,%edi
    216b:	e8 a0 fc ff ff       	callq  1e10 <notify_server>
    2170:	bf 01 00 00 00       	mov    $0x1,%edi
    2175:	e8 96 ee ff ff       	callq  1010 <exit@plt>

000000000000217a <seghandler>:
    217a:	48 83 ec 08          	sub    $0x8,%rsp
    217e:	83 3d 63 32 20 00 00 	cmpl   $0x0,0x203263(%rip)        # 2053e8 <is_checker>
    2185:	74 16                	je     219d <seghandler+0x23>
    2187:	48 8d 3d 27 15 00 00 	lea    0x1527(%rip),%rdi        # 36b5 <_IO_stdin_used+0x4c5>
    218e:	e8 0d ed ff ff       	callq  ea0 <puts@plt>
    2193:	b8 00 00 00 00       	mov    $0x0,%eax
    2198:	e8 e9 fb ff ff       	callq  1d86 <check_fail>
    219d:	48 8d 3d 7c 16 00 00 	lea    0x167c(%rip),%rdi        # 3820 <_IO_stdin_used+0x630>
    21a4:	e8 f7 ec ff ff       	callq  ea0 <puts@plt>
    21a9:	48 8d 3d ef 14 00 00 	lea    0x14ef(%rip),%rdi        # 369f <_IO_stdin_used+0x4af>
    21b0:	e8 eb ec ff ff       	callq  ea0 <puts@plt>
    21b5:	be 00 00 00 00       	mov    $0x0,%esi
    21ba:	bf 00 00 00 00       	mov    $0x0,%edi
    21bf:	e8 4c fc ff ff       	callq  1e10 <notify_server>
    21c4:	bf 01 00 00 00       	mov    $0x1,%edi
    21c9:	e8 42 ee ff ff       	callq  1010 <exit@plt>

00000000000021ce <illegalhandler>:
    21ce:	48 83 ec 08          	sub    $0x8,%rsp
    21d2:	83 3d 0f 32 20 00 00 	cmpl   $0x0,0x20320f(%rip)        # 2053e8 <is_checker>
    21d9:	74 16                	je     21f1 <illegalhandler+0x23>
    21db:	48 8d 3d e6 14 00 00 	lea    0x14e6(%rip),%rdi        # 36c8 <_IO_stdin_used+0x4d8>
    21e2:	e8 b9 ec ff ff       	callq  ea0 <puts@plt>
    21e7:	b8 00 00 00 00       	mov    $0x0,%eax
    21ec:	e8 95 fb ff ff       	callq  1d86 <check_fail>
    21f1:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 3848 <_IO_stdin_used+0x658>
    21f8:	e8 a3 ec ff ff       	callq  ea0 <puts@plt>
    21fd:	48 8d 3d 9b 14 00 00 	lea    0x149b(%rip),%rdi        # 369f <_IO_stdin_used+0x4af>
    2204:	e8 97 ec ff ff       	callq  ea0 <puts@plt>
    2209:	be 00 00 00 00       	mov    $0x0,%esi
    220e:	bf 00 00 00 00       	mov    $0x0,%edi
    2213:	e8 f8 fb ff ff       	callq  1e10 <notify_server>
    2218:	bf 01 00 00 00       	mov    $0x1,%edi
    221d:	e8 ee ed ff ff       	callq  1010 <exit@plt>

0000000000002222 <sigalrmhandler>:
    2222:	48 83 ec 08          	sub    $0x8,%rsp
    2226:	83 3d bb 31 20 00 00 	cmpl   $0x0,0x2031bb(%rip)        # 2053e8 <is_checker>
    222d:	74 16                	je     2245 <sigalrmhandler+0x23>
    222f:	48 8d 3d a6 14 00 00 	lea    0x14a6(%rip),%rdi        # 36dc <_IO_stdin_used+0x4ec>
    2236:	e8 65 ec ff ff       	callq  ea0 <puts@plt>
    223b:	b8 00 00 00 00       	mov    $0x0,%eax
    2240:	e8 41 fb ff ff       	callq  1d86 <check_fail>
    2245:	ba 05 00 00 00       	mov    $0x5,%edx
    224a:	48 8d 35 27 16 00 00 	lea    0x1627(%rip),%rsi        # 3878 <_IO_stdin_used+0x688>
    2251:	bf 01 00 00 00       	mov    $0x1,%edi
    2256:	b8 00 00 00 00       	mov    $0x0,%eax
    225b:	e8 60 ed ff ff       	callq  fc0 <__printf_chk@plt>
    2260:	be 00 00 00 00       	mov    $0x0,%esi
    2265:	bf 00 00 00 00       	mov    $0x0,%edi
    226a:	e8 a1 fb ff ff       	callq  1e10 <notify_server>
    226f:	bf 01 00 00 00       	mov    $0x1,%edi
    2274:	e8 97 ed ff ff       	callq  1010 <exit@plt>

0000000000002279 <launch>:
    2279:	55                   	push   %rbp
    227a:	48 89 e5             	mov    %rsp,%rbp
    227d:	48 83 ec 10          	sub    $0x10,%rsp
    2281:	48 89 fa             	mov    %rdi,%rdx
    2284:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    228b:	00 00 
    228d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2291:	31 c0                	xor    %eax,%eax
    2293:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
    2297:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    229b:	48 29 c4             	sub    %rax,%rsp
    229e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
    22a3:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    22a7:	be f4 00 00 00       	mov    $0xf4,%esi
    22ac:	e8 2f ec ff ff       	callq  ee0 <memset@plt>
    22b1:	48 8b 05 c8 30 20 00 	mov    0x2030c8(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    22b8:	48 39 05 11 31 20 00 	cmp    %rax,0x203111(%rip)        # 2053d0 <infile>
    22bf:	74 3a                	je     22fb <launch+0x82>
    22c1:	c7 05 11 31 20 00 00 	movl   $0x0,0x203111(%rip)        # 2053dc <vlevel>
    22c8:	00 00 00 
    22cb:	b8 00 00 00 00       	mov    $0x0,%eax
    22d0:	e8 16 fa ff ff       	callq  1ceb <test>
    22d5:	83 3d 0c 31 20 00 00 	cmpl   $0x0,0x20310c(%rip)        # 2053e8 <is_checker>
    22dc:	75 35                	jne    2313 <launch+0x9a>
    22de:	48 8d 3d 17 14 00 00 	lea    0x1417(%rip),%rdi        # 36fc <_IO_stdin_used+0x50c>
    22e5:	e8 b6 eb ff ff       	callq  ea0 <puts@plt>
    22ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    22ee:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    22f5:	00 00 
    22f7:	75 30                	jne    2329 <launch+0xb0>
    22f9:	c9                   	leaveq 
    22fa:	c3                   	retq   
    22fb:	48 8d 35 e2 13 00 00 	lea    0x13e2(%rip),%rsi        # 36e4 <_IO_stdin_used+0x4f4>
    2302:	bf 01 00 00 00       	mov    $0x1,%edi
    2307:	b8 00 00 00 00       	mov    $0x0,%eax
    230c:	e8 af ec ff ff       	callq  fc0 <__printf_chk@plt>
    2311:	eb ae                	jmp    22c1 <launch+0x48>
    2313:	48 8d 3d d7 13 00 00 	lea    0x13d7(%rip),%rdi        # 36f1 <_IO_stdin_used+0x501>
    231a:	e8 81 eb ff ff       	callq  ea0 <puts@plt>
    231f:	b8 00 00 00 00       	mov    $0x0,%eax
    2324:	e8 5d fa ff ff       	callq  1d86 <check_fail>
    2329:	e8 92 eb ff ff       	callq  ec0 <__stack_chk_fail@plt>

000000000000232e <stable_launch>:
    232e:	53                   	push   %rbx
    232f:	48 89 3d 92 30 20 00 	mov    %rdi,0x203092(%rip)        # 2053c8 <global_offset>
    2336:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    233c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2342:	b9 32 01 00 00       	mov    $0x132,%ecx
    2347:	ba 07 00 00 00       	mov    $0x7,%edx
    234c:	be 00 00 10 00       	mov    $0x100000,%esi
    2351:	bf 00 60 58 55       	mov    $0x55586000,%edi
    2356:	e8 75 eb ff ff       	callq  ed0 <mmap@plt>
    235b:	48 89 c3             	mov    %rax,%rbx
    235e:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
    2364:	75 43                	jne    23a9 <stable_launch+0x7b>
    2366:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
    236d:	48 89 15 9c 3c 20 00 	mov    %rdx,0x203c9c(%rip)        # 206010 <stack_top>
    2374:	48 89 e0             	mov    %rsp,%rax
    2377:	48 89 d4             	mov    %rdx,%rsp
    237a:	48 89 c2             	mov    %rax,%rdx
    237d:	48 89 15 3c 30 20 00 	mov    %rdx,0x20303c(%rip)        # 2053c0 <global_save_stack>
    2384:	48 8b 3d 3d 30 20 00 	mov    0x20303d(%rip),%rdi        # 2053c8 <global_offset>
    238b:	e8 e9 fe ff ff       	callq  2279 <launch>
    2390:	48 8b 05 29 30 20 00 	mov    0x203029(%rip),%rax        # 2053c0 <global_save_stack>
    2397:	48 89 c4             	mov    %rax,%rsp
    239a:	be 00 00 10 00       	mov    $0x100000,%esi
    239f:	48 89 df             	mov    %rbx,%rdi
    23a2:	e8 09 ec ff ff       	callq  fb0 <munmap@plt>
    23a7:	5b                   	pop    %rbx
    23a8:	c3                   	retq   
    23a9:	be 00 00 10 00       	mov    $0x100000,%esi
    23ae:	48 89 c7             	mov    %rax,%rdi
    23b1:	e8 fa eb ff ff       	callq  fb0 <munmap@plt>
    23b6:	b9 00 60 58 55       	mov    $0x55586000,%ecx
    23bb:	48 8d 15 ee 14 00 00 	lea    0x14ee(%rip),%rdx        # 38b0 <_IO_stdin_used+0x6c0>
    23c2:	be 01 00 00 00       	mov    $0x1,%esi
    23c7:	48 8b 3d d2 2f 20 00 	mov    0x202fd2(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    23ce:	b8 00 00 00 00       	mov    $0x0,%eax
    23d3:	e8 58 ec ff ff       	callq  1030 <__fprintf_chk@plt>
    23d8:	bf 01 00 00 00       	mov    $0x1,%edi
    23dd:	e8 2e ec ff ff       	callq  1010 <exit@plt>

00000000000023e2 <rio_readinitb>:
    23e2:	89 37                	mov    %esi,(%rdi)
    23e4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    23eb:	48 8d 47 10          	lea    0x10(%rdi),%rax
    23ef:	48 89 47 08          	mov    %rax,0x8(%rdi)
    23f3:	c3                   	retq   

00000000000023f4 <sigalrm_handler>:
    23f4:	48 83 ec 08          	sub    $0x8,%rsp
    23f8:	b9 00 00 00 00       	mov    $0x0,%ecx
    23fd:	48 8d 15 ec 14 00 00 	lea    0x14ec(%rip),%rdx        # 38f0 <trans_char+0x10>
    2404:	be 01 00 00 00       	mov    $0x1,%esi
    2409:	48 8b 3d 90 2f 20 00 	mov    0x202f90(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    2410:	b8 00 00 00 00       	mov    $0x0,%eax
    2415:	e8 16 ec ff ff       	callq  1030 <__fprintf_chk@plt>
    241a:	bf 01 00 00 00       	mov    $0x1,%edi
    241f:	e8 ec eb ff ff       	callq  1010 <exit@plt>

0000000000002424 <rio_writen>:
    2424:	41 55                	push   %r13
    2426:	41 54                	push   %r12
    2428:	55                   	push   %rbp
    2429:	53                   	push   %rbx
    242a:	48 83 ec 08          	sub    $0x8,%rsp
    242e:	41 89 fc             	mov    %edi,%r12d
    2431:	48 89 f5             	mov    %rsi,%rbp
    2434:	49 89 d5             	mov    %rdx,%r13
    2437:	48 89 d3             	mov    %rdx,%rbx
    243a:	eb 06                	jmp    2442 <rio_writen+0x1e>
    243c:	48 29 c3             	sub    %rax,%rbx
    243f:	48 01 c5             	add    %rax,%rbp
    2442:	48 85 db             	test   %rbx,%rbx
    2445:	74 24                	je     246b <rio_writen+0x47>
    2447:	48 89 da             	mov    %rbx,%rdx
    244a:	48 89 ee             	mov    %rbp,%rsi
    244d:	44 89 e7             	mov    %r12d,%edi
    2450:	e8 5b ea ff ff       	callq  eb0 <write@plt>
    2455:	48 85 c0             	test   %rax,%rax
    2458:	7f e2                	jg     243c <rio_writen+0x18>
    245a:	e8 01 ea ff ff       	callq  e60 <__errno_location@plt>
    245f:	83 38 04             	cmpl   $0x4,(%rax)
    2462:	75 15                	jne    2479 <rio_writen+0x55>
    2464:	b8 00 00 00 00       	mov    $0x0,%eax
    2469:	eb d1                	jmp    243c <rio_writen+0x18>
    246b:	4c 89 e8             	mov    %r13,%rax
    246e:	48 83 c4 08          	add    $0x8,%rsp
    2472:	5b                   	pop    %rbx
    2473:	5d                   	pop    %rbp
    2474:	41 5c                	pop    %r12
    2476:	41 5d                	pop    %r13
    2478:	c3                   	retq   
    2479:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2480:	eb ec                	jmp    246e <rio_writen+0x4a>

0000000000002482 <rio_read>:
    2482:	41 55                	push   %r13
    2484:	41 54                	push   %r12
    2486:	55                   	push   %rbp
    2487:	53                   	push   %rbx
    2488:	48 83 ec 08          	sub    $0x8,%rsp
    248c:	48 89 fb             	mov    %rdi,%rbx
    248f:	49 89 f5             	mov    %rsi,%r13
    2492:	49 89 d4             	mov    %rdx,%r12
    2495:	eb 0a                	jmp    24a1 <rio_read+0x1f>
    2497:	e8 c4 e9 ff ff       	callq  e60 <__errno_location@plt>
    249c:	83 38 04             	cmpl   $0x4,(%rax)
    249f:	75 5c                	jne    24fd <rio_read+0x7b>
    24a1:	8b 6b 04             	mov    0x4(%rbx),%ebp
    24a4:	85 ed                	test   %ebp,%ebp
    24a6:	7f 24                	jg     24cc <rio_read+0x4a>
    24a8:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    24ac:	8b 3b                	mov    (%rbx),%edi
    24ae:	ba 00 20 00 00       	mov    $0x2000,%edx
    24b3:	48 89 ee             	mov    %rbp,%rsi
    24b6:	e8 55 ea ff ff       	callq  f10 <read@plt>
    24bb:	89 43 04             	mov    %eax,0x4(%rbx)
    24be:	85 c0                	test   %eax,%eax
    24c0:	78 d5                	js     2497 <rio_read+0x15>
    24c2:	85 c0                	test   %eax,%eax
    24c4:	74 40                	je     2506 <rio_read+0x84>
    24c6:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    24ca:	eb d5                	jmp    24a1 <rio_read+0x1f>
    24cc:	89 e8                	mov    %ebp,%eax
    24ce:	4c 39 e0             	cmp    %r12,%rax
    24d1:	72 03                	jb     24d6 <rio_read+0x54>
    24d3:	44 89 e5             	mov    %r12d,%ebp
    24d6:	4c 63 e5             	movslq %ebp,%r12
    24d9:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    24dd:	4c 89 e2             	mov    %r12,%rdx
    24e0:	4c 89 ef             	mov    %r13,%rdi
    24e3:	e8 78 ea ff ff       	callq  f60 <memcpy@plt>
    24e8:	4c 01 63 08          	add    %r12,0x8(%rbx)
    24ec:	29 6b 04             	sub    %ebp,0x4(%rbx)
    24ef:	4c 89 e0             	mov    %r12,%rax
    24f2:	48 83 c4 08          	add    $0x8,%rsp
    24f6:	5b                   	pop    %rbx
    24f7:	5d                   	pop    %rbp
    24f8:	41 5c                	pop    %r12
    24fa:	41 5d                	pop    %r13
    24fc:	c3                   	retq   
    24fd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2504:	eb ec                	jmp    24f2 <rio_read+0x70>
    2506:	b8 00 00 00 00       	mov    $0x0,%eax
    250b:	eb e5                	jmp    24f2 <rio_read+0x70>

000000000000250d <rio_readlineb>:
    250d:	41 55                	push   %r13
    250f:	41 54                	push   %r12
    2511:	55                   	push   %rbp
    2512:	53                   	push   %rbx
    2513:	48 83 ec 18          	sub    $0x18,%rsp
    2517:	49 89 fd             	mov    %rdi,%r13
    251a:	48 89 f5             	mov    %rsi,%rbp
    251d:	49 89 d4             	mov    %rdx,%r12
    2520:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2527:	00 00 
    2529:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    252e:	31 c0                	xor    %eax,%eax
    2530:	bb 01 00 00 00       	mov    $0x1,%ebx
    2535:	4c 39 e3             	cmp    %r12,%rbx
    2538:	73 47                	jae    2581 <rio_readlineb+0x74>
    253a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    253f:	ba 01 00 00 00       	mov    $0x1,%edx
    2544:	4c 89 ef             	mov    %r13,%rdi
    2547:	e8 36 ff ff ff       	callq  2482 <rio_read>
    254c:	83 f8 01             	cmp    $0x1,%eax
    254f:	75 1c                	jne    256d <rio_readlineb+0x60>
    2551:	48 8d 45 01          	lea    0x1(%rbp),%rax
    2555:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    255a:	88 55 00             	mov    %dl,0x0(%rbp)
    255d:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    2562:	74 1a                	je     257e <rio_readlineb+0x71>
    2564:	48 83 c3 01          	add    $0x1,%rbx
    2568:	48 89 c5             	mov    %rax,%rbp
    256b:	eb c8                	jmp    2535 <rio_readlineb+0x28>
    256d:	85 c0                	test   %eax,%eax
    256f:	75 32                	jne    25a3 <rio_readlineb+0x96>
    2571:	48 83 fb 01          	cmp    $0x1,%rbx
    2575:	75 0a                	jne    2581 <rio_readlineb+0x74>
    2577:	b8 00 00 00 00       	mov    $0x0,%eax
    257c:	eb 0a                	jmp    2588 <rio_readlineb+0x7b>
    257e:	48 89 c5             	mov    %rax,%rbp
    2581:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2585:	48 89 d8             	mov    %rbx,%rax
    2588:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    258d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2594:	00 00 
    2596:	75 14                	jne    25ac <rio_readlineb+0x9f>
    2598:	48 83 c4 18          	add    $0x18,%rsp
    259c:	5b                   	pop    %rbx
    259d:	5d                   	pop    %rbp
    259e:	41 5c                	pop    %r12
    25a0:	41 5d                	pop    %r13
    25a2:	c3                   	retq   
    25a3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    25aa:	eb dc                	jmp    2588 <rio_readlineb+0x7b>
    25ac:	e8 0f e9 ff ff       	callq  ec0 <__stack_chk_fail@plt>

00000000000025b1 <urlencode>:
    25b1:	41 54                	push   %r12
    25b3:	55                   	push   %rbp
    25b4:	53                   	push   %rbx
    25b5:	48 83 ec 10          	sub    $0x10,%rsp
    25b9:	48 89 fb             	mov    %rdi,%rbx
    25bc:	48 89 f5             	mov    %rsi,%rbp
    25bf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25c6:	00 00 
    25c8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    25cd:	31 c0                	xor    %eax,%eax
    25cf:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    25d6:	f2 ae                	repnz scas %es:(%rdi),%al
    25d8:	48 89 ce             	mov    %rcx,%rsi
    25db:	48 f7 d6             	not    %rsi
    25de:	8d 46 ff             	lea    -0x1(%rsi),%eax
    25e1:	eb 0f                	jmp    25f2 <urlencode+0x41>
    25e3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    25e7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    25eb:	48 83 c3 01          	add    $0x1,%rbx
    25ef:	44 89 e0             	mov    %r12d,%eax
    25f2:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    25f6:	85 c0                	test   %eax,%eax
    25f8:	0f 84 a8 00 00 00    	je     26a6 <urlencode+0xf5>
    25fe:	44 0f b6 03          	movzbl (%rbx),%r8d
    2602:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2606:	0f 94 c2             	sete   %dl
    2609:	41 80 f8 2d          	cmp    $0x2d,%r8b
    260d:	0f 94 c0             	sete   %al
    2610:	08 c2                	or     %al,%dl
    2612:	75 cf                	jne    25e3 <urlencode+0x32>
    2614:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2618:	74 c9                	je     25e3 <urlencode+0x32>
    261a:	41 80 f8 5f          	cmp    $0x5f,%r8b
    261e:	74 c3                	je     25e3 <urlencode+0x32>
    2620:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2624:	3c 09                	cmp    $0x9,%al
    2626:	76 bb                	jbe    25e3 <urlencode+0x32>
    2628:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    262c:	3c 19                	cmp    $0x19,%al
    262e:	76 b3                	jbe    25e3 <urlencode+0x32>
    2630:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2634:	3c 19                	cmp    $0x19,%al
    2636:	76 ab                	jbe    25e3 <urlencode+0x32>
    2638:	41 80 f8 20          	cmp    $0x20,%r8b
    263c:	74 56                	je     2694 <urlencode+0xe3>
    263e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2642:	3c 5f                	cmp    $0x5f,%al
    2644:	0f 96 c2             	setbe  %dl
    2647:	41 80 f8 09          	cmp    $0x9,%r8b
    264b:	0f 94 c0             	sete   %al
    264e:	08 c2                	or     %al,%dl
    2650:	74 4f                	je     26a1 <urlencode+0xf0>
    2652:	48 89 e7             	mov    %rsp,%rdi
    2655:	45 0f b6 c0          	movzbl %r8b,%r8d
    2659:	48 8d 0d 28 13 00 00 	lea    0x1328(%rip),%rcx        # 3988 <trans_char+0xa8>
    2660:	ba 08 00 00 00       	mov    $0x8,%edx
    2665:	be 01 00 00 00       	mov    $0x1,%esi
    266a:	b8 00 00 00 00       	mov    $0x0,%eax
    266f:	e8 cc e9 ff ff       	callq  1040 <__sprintf_chk@plt>
    2674:	0f b6 04 24          	movzbl (%rsp),%eax
    2678:	88 45 00             	mov    %al,0x0(%rbp)
    267b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    2680:	88 45 01             	mov    %al,0x1(%rbp)
    2683:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2688:	88 45 02             	mov    %al,0x2(%rbp)
    268b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    268f:	e9 57 ff ff ff       	jmpq   25eb <urlencode+0x3a>
    2694:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2698:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    269c:	e9 4a ff ff ff       	jmpq   25eb <urlencode+0x3a>
    26a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26a6:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    26ab:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    26b2:	00 00 
    26b4:	75 09                	jne    26bf <urlencode+0x10e>
    26b6:	48 83 c4 10          	add    $0x10,%rsp
    26ba:	5b                   	pop    %rbx
    26bb:	5d                   	pop    %rbp
    26bc:	41 5c                	pop    %r12
    26be:	c3                   	retq   
    26bf:	e8 fc e7 ff ff       	callq  ec0 <__stack_chk_fail@plt>

00000000000026c4 <submitr>:
    26c4:	41 57                	push   %r15
    26c6:	41 56                	push   %r14
    26c8:	41 55                	push   %r13
    26ca:	41 54                	push   %r12
    26cc:	55                   	push   %rbp
    26cd:	53                   	push   %rbx
    26ce:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    26d5:	49 89 fd             	mov    %rdi,%r13
    26d8:	89 74 24 14          	mov    %esi,0x14(%rsp)
    26dc:	49 89 d7             	mov    %rdx,%r15
    26df:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    26e4:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    26e9:	4d 89 ce             	mov    %r9,%r14
    26ec:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    26f3:	00 
    26f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26fb:	00 00 
    26fd:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    2704:	00 
    2705:	31 c0                	xor    %eax,%eax
    2707:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    270e:	00 
    270f:	ba 00 00 00 00       	mov    $0x0,%edx
    2714:	be 01 00 00 00       	mov    $0x1,%esi
    2719:	bf 02 00 00 00       	mov    $0x2,%edi
    271e:	e8 2d e9 ff ff       	callq  1050 <socket@plt>
    2723:	85 c0                	test   %eax,%eax
    2725:	0f 88 a9 02 00 00    	js     29d4 <submitr+0x310>
    272b:	89 c3                	mov    %eax,%ebx
    272d:	4c 89 ef             	mov    %r13,%rdi
    2730:	e8 fb e7 ff ff       	callq  f30 <gethostbyname@plt>
    2735:	48 85 c0             	test   %rax,%rax
    2738:	0f 84 e2 02 00 00    	je     2a20 <submitr+0x35c>
    273e:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    2743:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    274a:	00 00 
    274c:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    2753:	00 
    2754:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    275b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2762:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2766:	48 8b 40 18          	mov    0x18(%rax),%rax
    276a:	48 8b 30             	mov    (%rax),%rsi
    276d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2772:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2777:	e8 c4 e7 ff ff       	callq  f40 <__memmove_chk@plt>
    277c:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
    2781:	66 c1 c8 08          	ror    $0x8,%ax
    2785:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    278a:	ba 10 00 00 00       	mov    $0x10,%edx
    278f:	4c 89 e6             	mov    %r12,%rsi
    2792:	89 df                	mov    %ebx,%edi
    2794:	e8 87 e8 ff ff       	callq  1020 <connect@plt>
    2799:	85 c0                	test   %eax,%eax
    279b:	0f 88 e7 02 00 00    	js     2a88 <submitr+0x3c4>
    27a1:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    27a8:	b8 00 00 00 00       	mov    $0x0,%eax
    27ad:	48 89 f1             	mov    %rsi,%rcx
    27b0:	4c 89 f7             	mov    %r14,%rdi
    27b3:	f2 ae                	repnz scas %es:(%rdi),%al
    27b5:	48 89 ca             	mov    %rcx,%rdx
    27b8:	48 f7 d2             	not    %rdx
    27bb:	48 89 f1             	mov    %rsi,%rcx
    27be:	4c 89 ff             	mov    %r15,%rdi
    27c1:	f2 ae                	repnz scas %es:(%rdi),%al
    27c3:	48 f7 d1             	not    %rcx
    27c6:	49 89 c8             	mov    %rcx,%r8
    27c9:	48 89 f1             	mov    %rsi,%rcx
    27cc:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    27d1:	f2 ae                	repnz scas %es:(%rdi),%al
    27d3:	48 f7 d1             	not    %rcx
    27d6:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    27db:	48 89 f1             	mov    %rsi,%rcx
    27de:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    27e3:	f2 ae                	repnz scas %es:(%rdi),%al
    27e5:	48 89 c8             	mov    %rcx,%rax
    27e8:	48 f7 d0             	not    %rax
    27eb:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    27f0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    27f5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    27fc:	00 
    27fd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2803:	0f 87 d9 02 00 00    	ja     2ae2 <submitr+0x41e>
    2809:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    2810:	00 
    2811:	b9 00 04 00 00       	mov    $0x400,%ecx
    2816:	b8 00 00 00 00       	mov    $0x0,%eax
    281b:	48 89 f7             	mov    %rsi,%rdi
    281e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2821:	4c 89 f7             	mov    %r14,%rdi
    2824:	e8 88 fd ff ff       	callq  25b1 <urlencode>
    2829:	85 c0                	test   %eax,%eax
    282b:	0f 88 24 03 00 00    	js     2b55 <submitr+0x491>
    2831:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    2838:	00 
    2839:	41 55                	push   %r13
    283b:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    2842:	00 
    2843:	50                   	push   %rax
    2844:	4d 89 f9             	mov    %r15,%r9
    2847:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    284c:	48 8d 0d c5 10 00 00 	lea    0x10c5(%rip),%rcx        # 3918 <trans_char+0x38>
    2853:	ba 00 20 00 00       	mov    $0x2000,%edx
    2858:	be 01 00 00 00       	mov    $0x1,%esi
    285d:	4c 89 e7             	mov    %r12,%rdi
    2860:	b8 00 00 00 00       	mov    $0x0,%eax
    2865:	e8 d6 e7 ff ff       	callq  1040 <__sprintf_chk@plt>
    286a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2871:	b8 00 00 00 00       	mov    $0x0,%eax
    2876:	4c 89 e7             	mov    %r12,%rdi
    2879:	f2 ae                	repnz scas %es:(%rdi),%al
    287b:	48 89 ca             	mov    %rcx,%rdx
    287e:	48 f7 d2             	not    %rdx
    2881:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    2885:	4c 89 e6             	mov    %r12,%rsi
    2888:	89 df                	mov    %ebx,%edi
    288a:	e8 95 fb ff ff       	callq  2424 <rio_writen>
    288f:	48 83 c4 10          	add    $0x10,%rsp
    2893:	48 85 c0             	test   %rax,%rax
    2896:	0f 88 44 03 00 00    	js     2be0 <submitr+0x51c>
    289c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    28a1:	89 de                	mov    %ebx,%esi
    28a3:	4c 89 e7             	mov    %r12,%rdi
    28a6:	e8 37 fb ff ff       	callq  23e2 <rio_readinitb>
    28ab:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    28b2:	00 
    28b3:	ba 00 20 00 00       	mov    $0x2000,%edx
    28b8:	4c 89 e7             	mov    %r12,%rdi
    28bb:	e8 4d fc ff ff       	callq  250d <rio_readlineb>
    28c0:	48 85 c0             	test   %rax,%rax
    28c3:	0f 8e 86 03 00 00    	jle    2c4f <submitr+0x58b>
    28c9:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    28ce:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    28d5:	00 
    28d6:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    28dd:	00 
    28de:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    28e5:	00 
    28e6:	48 8d 35 a2 10 00 00 	lea    0x10a2(%rip),%rsi        # 398f <trans_char+0xaf>
    28ed:	b8 00 00 00 00       	mov    $0x0,%eax
    28f2:	e8 a9 e6 ff ff       	callq  fa0 <__isoc99_sscanf@plt>
    28f7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    28fe:	00 
    28ff:	b9 03 00 00 00       	mov    $0x3,%ecx
    2904:	48 8d 3d 9b 10 00 00 	lea    0x109b(%rip),%rdi        # 39a6 <trans_char+0xc6>
    290b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    290d:	0f 97 c0             	seta   %al
    2910:	1c 00                	sbb    $0x0,%al
    2912:	84 c0                	test   %al,%al
    2914:	0f 84 b3 03 00 00    	je     2ccd <submitr+0x609>
    291a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2921:	00 
    2922:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2927:	ba 00 20 00 00       	mov    $0x2000,%edx
    292c:	e8 dc fb ff ff       	callq  250d <rio_readlineb>
    2931:	48 85 c0             	test   %rax,%rax
    2934:	7f c1                	jg     28f7 <submitr+0x233>
    2936:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    293d:	3a 20 43 
    2940:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2947:	20 75 6e 
    294a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    294e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2952:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2959:	74 6f 20 
    295c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2963:	68 65 61 
    2966:	48 89 45 10          	mov    %rax,0x10(%rbp)
    296a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    296e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2975:	66 72 6f 
    2978:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
    297f:	20 72 65 
    2982:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2986:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    298a:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
    2991:	73 65 72 
    2994:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2998:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
    299f:	89 df                	mov    %ebx,%edi
    29a1:	e8 5a e5 ff ff       	callq  f00 <close@plt>
    29a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29ab:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    29b2:	00 
    29b3:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    29ba:	00 00 
    29bc:	0f 85 7e 04 00 00    	jne    2e40 <submitr+0x77c>
    29c2:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    29c9:	5b                   	pop    %rbx
    29ca:	5d                   	pop    %rbp
    29cb:	41 5c                	pop    %r12
    29cd:	41 5d                	pop    %r13
    29cf:	41 5e                	pop    %r14
    29d1:	41 5f                	pop    %r15
    29d3:	c3                   	retq   
    29d4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    29db:	3a 20 43 
    29de:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    29e5:	20 75 6e 
    29e8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29ec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29f7:	74 6f 20 
    29fa:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2a01:	65 20 73 
    2a04:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a08:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a0c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2a13:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2a19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a1e:	eb 8b                	jmp    29ab <submitr+0x2e7>
    2a20:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2a27:	3a 20 44 
    2a2a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2a31:	20 75 6e 
    2a34:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a38:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a3c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a43:	74 6f 20 
    2a46:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a4d:	76 65 20 
    2a50:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a54:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a58:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2a5f:	72 20 61 
    2a62:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a66:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2a6d:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2a73:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a77:	89 df                	mov    %ebx,%edi
    2a79:	e8 82 e4 ff ff       	callq  f00 <close@plt>
    2a7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a83:	e9 23 ff ff ff       	jmpq   29ab <submitr+0x2e7>
    2a88:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2a8f:	3a 20 55 
    2a92:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2a99:	20 74 6f 
    2a9c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2aa0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2aa4:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2aab:	65 63 74 
    2aae:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2ab5:	68 65 20 
    2ab8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2abc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ac0:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
    2ac7:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
    2acd:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
    2ad1:	89 df                	mov    %ebx,%edi
    2ad3:	e8 28 e4 ff ff       	callq  f00 <close@plt>
    2ad8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2add:	e9 c9 fe ff ff       	jmpq   29ab <submitr+0x2e7>
    2ae2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2ae9:	3a 20 52 
    2aec:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2af3:	20 73 74 
    2af6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2afa:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2afe:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2b05:	74 6f 6f 
    2b08:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2b0f:	65 2e 20 
    2b12:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b16:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b1a:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2b21:	61 73 65 
    2b24:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2b2b:	49 54 52 
    2b2e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b32:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b36:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2b3d:	55 46 00 
    2b40:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b44:	89 df                	mov    %ebx,%edi
    2b46:	e8 b5 e3 ff ff       	callq  f00 <close@plt>
    2b4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b50:	e9 56 fe ff ff       	jmpq   29ab <submitr+0x2e7>
    2b55:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2b5c:	3a 20 52 
    2b5f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2b66:	20 73 74 
    2b69:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b6d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b71:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2b78:	63 6f 6e 
    2b7b:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b82:	20 61 6e 
    2b85:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b89:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b8d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b94:	67 61 6c 
    2b97:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b9e:	6e 70 72 
    2ba1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ba5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ba9:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2bb0:	6c 65 20 
    2bb3:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2bba:	63 74 65 
    2bbd:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2bc1:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2bc5:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2bcb:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2bcf:	89 df                	mov    %ebx,%edi
    2bd1:	e8 2a e3 ff ff       	callq  f00 <close@plt>
    2bd6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bdb:	e9 cb fd ff ff       	jmpq   29ab <submitr+0x2e7>
    2be0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2be7:	3a 20 43 
    2bea:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2bf1:	20 75 6e 
    2bf4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bf8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bfc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c03:	74 6f 20 
    2c06:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2c0d:	20 74 6f 
    2c10:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c14:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c18:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
    2c1f:	72 65 73 
    2c22:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
    2c29:	65 72 76 
    2c2c:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c30:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c34:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
    2c3a:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
    2c3e:	89 df                	mov    %ebx,%edi
    2c40:	e8 bb e2 ff ff       	callq  f00 <close@plt>
    2c45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c4a:	e9 5c fd ff ff       	jmpq   29ab <submitr+0x2e7>
    2c4f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c56:	3a 20 43 
    2c59:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c60:	20 75 6e 
    2c63:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c67:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c6b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c72:	74 6f 20 
    2c75:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c7c:	66 69 72 
    2c7f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c83:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c87:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c8e:	61 64 65 
    2c91:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
    2c98:	6d 20 72 
    2c9b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c9f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ca3:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
    2caa:	20 73 65 
    2cad:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2cb1:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
    2cb8:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
    2cbc:	89 df                	mov    %ebx,%edi
    2cbe:	e8 3d e2 ff ff       	callq  f00 <close@plt>
    2cc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cc8:	e9 de fc ff ff       	jmpq   29ab <submitr+0x2e7>
    2ccd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2cd4:	00 
    2cd5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2cda:	ba 00 20 00 00       	mov    $0x2000,%edx
    2cdf:	e8 29 f8 ff ff       	callq  250d <rio_readlineb>
    2ce4:	48 85 c0             	test   %rax,%rax
    2ce7:	0f 8e 96 00 00 00    	jle    2d83 <submitr+0x6bf>
    2ced:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2cf2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2cf9:	0f 85 08 01 00 00    	jne    2e07 <submitr+0x743>
    2cff:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2d06:	00 
    2d07:	48 89 ef             	mov    %rbp,%rdi
    2d0a:	e8 81 e1 ff ff       	callq  e90 <strcpy@plt>
    2d0f:	89 df                	mov    %ebx,%edi
    2d11:	e8 ea e1 ff ff       	callq  f00 <close@plt>
    2d16:	b9 04 00 00 00       	mov    $0x4,%ecx
    2d1b:	48 8d 3d 7e 0c 00 00 	lea    0xc7e(%rip),%rdi        # 39a0 <trans_char+0xc0>
    2d22:	48 89 ee             	mov    %rbp,%rsi
    2d25:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d27:	0f 97 c0             	seta   %al
    2d2a:	1c 00                	sbb    $0x0,%al
    2d2c:	0f be c0             	movsbl %al,%eax
    2d2f:	85 c0                	test   %eax,%eax
    2d31:	0f 84 74 fc ff ff    	je     29ab <submitr+0x2e7>
    2d37:	b9 05 00 00 00       	mov    $0x5,%ecx
    2d3c:	48 8d 3d 61 0c 00 00 	lea    0xc61(%rip),%rdi        # 39a4 <trans_char+0xc4>
    2d43:	48 89 ee             	mov    %rbp,%rsi
    2d46:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d48:	0f 97 c0             	seta   %al
    2d4b:	1c 00                	sbb    $0x0,%al
    2d4d:	0f be c0             	movsbl %al,%eax
    2d50:	85 c0                	test   %eax,%eax
    2d52:	0f 84 53 fc ff ff    	je     29ab <submitr+0x2e7>
    2d58:	b9 03 00 00 00       	mov    $0x3,%ecx
    2d5d:	48 8d 3d 45 0c 00 00 	lea    0xc45(%rip),%rdi        # 39a9 <trans_char+0xc9>
    2d64:	48 89 ee             	mov    %rbp,%rsi
    2d67:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d69:	0f 97 c0             	seta   %al
    2d6c:	1c 00                	sbb    $0x0,%al
    2d6e:	0f be c0             	movsbl %al,%eax
    2d71:	85 c0                	test   %eax,%eax
    2d73:	0f 84 32 fc ff ff    	je     29ab <submitr+0x2e7>
    2d79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d7e:	e9 28 fc ff ff       	jmpq   29ab <submitr+0x2e7>
    2d83:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d8a:	3a 20 43 
    2d8d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d94:	20 75 6e 
    2d97:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d9b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d9f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2da6:	74 6f 20 
    2da9:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2db0:	73 74 61 
    2db3:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2db7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2dbb:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2dc2:	65 73 73 
    2dc5:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2dcc:	72 6f 6d 
    2dcf:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2dd3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2dd7:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
    2dde:	6c 74 20 
    2de1:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2de5:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
    2dec:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
    2df2:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
    2df6:	89 df                	mov    %ebx,%edi
    2df8:	e8 03 e1 ff ff       	callq  f00 <close@plt>
    2dfd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e02:	e9 a4 fb ff ff       	jmpq   29ab <submitr+0x2e7>
    2e07:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2e0e:	00 
    2e0f:	48 8d 0d 42 0b 00 00 	lea    0xb42(%rip),%rcx        # 3958 <trans_char+0x78>
    2e16:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2e1d:	be 01 00 00 00       	mov    $0x1,%esi
    2e22:	48 89 ef             	mov    %rbp,%rdi
    2e25:	b8 00 00 00 00       	mov    $0x0,%eax
    2e2a:	e8 11 e2 ff ff       	callq  1040 <__sprintf_chk@plt>
    2e2f:	89 df                	mov    %ebx,%edi
    2e31:	e8 ca e0 ff ff       	callq  f00 <close@plt>
    2e36:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e3b:	e9 6b fb ff ff       	jmpq   29ab <submitr+0x2e7>
    2e40:	e8 7b e0 ff ff       	callq  ec0 <__stack_chk_fail@plt>

0000000000002e45 <init_timeout>:
    2e45:	85 ff                	test   %edi,%edi
    2e47:	74 28                	je     2e71 <init_timeout+0x2c>
    2e49:	53                   	push   %rbx
    2e4a:	89 fb                	mov    %edi,%ebx
    2e4c:	85 ff                	test   %edi,%edi
    2e4e:	78 1a                	js     2e6a <init_timeout+0x25>
    2e50:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 23f4 <sigalrm_handler>
    2e57:	bf 0e 00 00 00       	mov    $0xe,%edi
    2e5c:	e8 bf e0 ff ff       	callq  f20 <signal@plt>
    2e61:	89 df                	mov    %ebx,%edi
    2e63:	e8 88 e0 ff ff       	callq  ef0 <alarm@plt>
    2e68:	5b                   	pop    %rbx
    2e69:	c3                   	retq   
    2e6a:	bb 00 00 00 00       	mov    $0x0,%ebx
    2e6f:	eb df                	jmp    2e50 <init_timeout+0xb>
    2e71:	f3 c3                	repz retq 

0000000000002e73 <init_driver>:
    2e73:	41 54                	push   %r12
    2e75:	55                   	push   %rbp
    2e76:	53                   	push   %rbx
    2e77:	48 83 ec 20          	sub    $0x20,%rsp
    2e7b:	49 89 fc             	mov    %rdi,%r12
    2e7e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e85:	00 00 
    2e87:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e8c:	31 c0                	xor    %eax,%eax
    2e8e:	be 01 00 00 00       	mov    $0x1,%esi
    2e93:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e98:	e8 83 e0 ff ff       	callq  f20 <signal@plt>
    2e9d:	be 01 00 00 00       	mov    $0x1,%esi
    2ea2:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2ea7:	e8 74 e0 ff ff       	callq  f20 <signal@plt>
    2eac:	be 01 00 00 00       	mov    $0x1,%esi
    2eb1:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2eb6:	e8 65 e0 ff ff       	callq  f20 <signal@plt>
    2ebb:	ba 00 00 00 00       	mov    $0x0,%edx
    2ec0:	be 01 00 00 00       	mov    $0x1,%esi
    2ec5:	bf 02 00 00 00       	mov    $0x2,%edi
    2eca:	e8 81 e1 ff ff       	callq  1050 <socket@plt>
    2ecf:	85 c0                	test   %eax,%eax
    2ed1:	0f 88 a3 00 00 00    	js     2f7a <init_driver+0x107>
    2ed7:	89 c3                	mov    %eax,%ebx
    2ed9:	48 8d 3d 04 06 00 00 	lea    0x604(%rip),%rdi        # 34e4 <_IO_stdin_used+0x2f4>
    2ee0:	e8 4b e0 ff ff       	callq  f30 <gethostbyname@plt>
    2ee5:	48 85 c0             	test   %rax,%rax
    2ee8:	0f 84 df 00 00 00    	je     2fcd <init_driver+0x15a>
    2eee:	48 89 e5             	mov    %rsp,%rbp
    2ef1:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2ef8:	00 00 
    2efa:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2f01:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2f07:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2f0d:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2f11:	48 8b 40 18          	mov    0x18(%rax),%rax
    2f15:	48 8b 30             	mov    (%rax),%rsi
    2f18:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2f1c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2f21:	e8 1a e0 ff ff       	callq  f40 <__memmove_chk@plt>
    2f26:	66 c7 44 24 02 13 57 	movw   $0x5713,0x2(%rsp)
    2f2d:	ba 10 00 00 00       	mov    $0x10,%edx
    2f32:	48 89 ee             	mov    %rbp,%rsi
    2f35:	89 df                	mov    %ebx,%edi
    2f37:	e8 e4 e0 ff ff       	callq  1020 <connect@plt>
    2f3c:	85 c0                	test   %eax,%eax
    2f3e:	0f 88 fb 00 00 00    	js     303f <init_driver+0x1cc>
    2f44:	89 df                	mov    %ebx,%edi
    2f46:	e8 b5 df ff ff       	callq  f00 <close@plt>
    2f4b:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2f52:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2f58:	b8 00 00 00 00       	mov    $0x0,%eax
    2f5d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2f62:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2f69:	00 00 
    2f6b:	0f 85 28 01 00 00    	jne    3099 <init_driver+0x226>
    2f71:	48 83 c4 20          	add    $0x20,%rsp
    2f75:	5b                   	pop    %rbx
    2f76:	5d                   	pop    %rbp
    2f77:	41 5c                	pop    %r12
    2f79:	c3                   	retq   
    2f7a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f81:	3a 20 43 
    2f84:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f8b:	20 75 6e 
    2f8e:	49 89 04 24          	mov    %rax,(%r12)
    2f92:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2f97:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f9e:	74 6f 20 
    2fa1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2fa8:	65 20 73 
    2fab:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2fb0:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2fb5:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2fbc:	6b 65 
    2fbe:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2fc5:	00 
    2fc6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fcb:	eb 90                	jmp    2f5d <init_driver+0xea>
    2fcd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2fd4:	3a 20 44 
    2fd7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2fde:	20 75 6e 
    2fe1:	49 89 04 24          	mov    %rax,(%r12)
    2fe5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2fea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ff1:	74 6f 20 
    2ff4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2ffb:	76 65 20 
    2ffe:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    3003:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    3008:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    300f:	72 20 61 
    3012:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    3017:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    301e:	72 65 
    3020:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    3027:	73 
    3028:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    302e:	89 df                	mov    %ebx,%edi
    3030:	e8 cb de ff ff       	callq  f00 <close@plt>
    3035:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    303a:	e9 1e ff ff ff       	jmpq   2f5d <init_driver+0xea>
    303f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3046:	3a 20 55 
    3049:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3050:	20 74 6f 
    3053:	49 89 04 24          	mov    %rax,(%r12)
    3057:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    305c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3063:	65 63 74 
    3066:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    306d:	65 72 76 
    3070:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    3075:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    307a:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    3081:	72 
    3082:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    3088:	89 df                	mov    %ebx,%edi
    308a:	e8 71 de ff ff       	callq  f00 <close@plt>
    308f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3094:	e9 c4 fe ff ff       	jmpq   2f5d <init_driver+0xea>
    3099:	e8 22 de ff ff       	callq  ec0 <__stack_chk_fail@plt>

000000000000309e <driver_post>:
    309e:	53                   	push   %rbx
    309f:	4c 89 cb             	mov    %r9,%rbx
    30a2:	45 85 c0             	test   %r8d,%r8d
    30a5:	75 18                	jne    30bf <driver_post+0x21>
    30a7:	48 85 ff             	test   %rdi,%rdi
    30aa:	74 05                	je     30b1 <driver_post+0x13>
    30ac:	80 3f 00             	cmpb   $0x0,(%rdi)
    30af:	75 37                	jne    30e8 <driver_post+0x4a>
    30b1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    30b6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    30ba:	44 89 c0             	mov    %r8d,%eax
    30bd:	5b                   	pop    %rbx
    30be:	c3                   	retq   
    30bf:	48 89 ca             	mov    %rcx,%rdx
    30c2:	48 8d 35 e3 08 00 00 	lea    0x8e3(%rip),%rsi        # 39ac <trans_char+0xcc>
    30c9:	bf 01 00 00 00       	mov    $0x1,%edi
    30ce:	b8 00 00 00 00       	mov    $0x0,%eax
    30d3:	e8 e8 de ff ff       	callq  fc0 <__printf_chk@plt>
    30d8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    30dd:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    30e1:	b8 00 00 00 00       	mov    $0x0,%eax
    30e6:	eb d5                	jmp    30bd <driver_post+0x1f>
    30e8:	48 83 ec 08          	sub    $0x8,%rsp
    30ec:	41 51                	push   %r9
    30ee:	49 89 c9             	mov    %rcx,%r9
    30f1:	49 89 d0             	mov    %rdx,%r8
    30f4:	48 89 f9             	mov    %rdi,%rcx
    30f7:	48 89 f2             	mov    %rsi,%rdx
    30fa:	be 57 13 00 00       	mov    $0x1357,%esi
    30ff:	48 8d 3d de 03 00 00 	lea    0x3de(%rip),%rdi        # 34e4 <_IO_stdin_used+0x2f4>
    3106:	e8 b9 f5 ff ff       	callq  26c4 <submitr>
    310b:	48 83 c4 10          	add    $0x10,%rsp
    310f:	eb ac                	jmp    30bd <driver_post+0x1f>

0000000000003111 <check>:
    3111:	89 f8                	mov    %edi,%eax
    3113:	c1 e8 1c             	shr    $0x1c,%eax
    3116:	85 c0                	test   %eax,%eax
    3118:	74 1d                	je     3137 <check+0x26>
    311a:	b9 00 00 00 00       	mov    $0x0,%ecx
    311f:	83 f9 1f             	cmp    $0x1f,%ecx
    3122:	7f 0d                	jg     3131 <check+0x20>
    3124:	89 f8                	mov    %edi,%eax
    3126:	d3 e8                	shr    %cl,%eax
    3128:	3c 0a                	cmp    $0xa,%al
    312a:	74 11                	je     313d <check+0x2c>
    312c:	83 c1 08             	add    $0x8,%ecx
    312f:	eb ee                	jmp    311f <check+0xe>
    3131:	b8 01 00 00 00       	mov    $0x1,%eax
    3136:	c3                   	retq   
    3137:	b8 00 00 00 00       	mov    $0x0,%eax
    313c:	c3                   	retq   
    313d:	b8 00 00 00 00       	mov    $0x0,%eax
    3142:	c3                   	retq   

0000000000003143 <gencookie>:
    3143:	53                   	push   %rbx
    3144:	83 c7 01             	add    $0x1,%edi
    3147:	e8 24 dd ff ff       	callq  e70 <srandom@plt>
    314c:	e8 2f de ff ff       	callq  f80 <random@plt>
    3151:	89 c3                	mov    %eax,%ebx
    3153:	89 c7                	mov    %eax,%edi
    3155:	e8 b7 ff ff ff       	callq  3111 <check>
    315a:	85 c0                	test   %eax,%eax
    315c:	74 ee                	je     314c <gencookie+0x9>
    315e:	89 d8                	mov    %ebx,%eax
    3160:	5b                   	pop    %rbx
    3161:	c3                   	retq   
    3162:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3169:	00 00 00 
    316c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003170 <__libc_csu_init>:
    3170:	41 57                	push   %r15
    3172:	41 56                	push   %r14
    3174:	49 89 d7             	mov    %rdx,%r15
    3177:	41 55                	push   %r13
    3179:	41 54                	push   %r12
    317b:	4c 8d 25 36 1b 20 00 	lea    0x201b36(%rip),%r12        # 204cb8 <__frame_dummy_init_array_entry>
    3182:	55                   	push   %rbp
    3183:	48 8d 2d 36 1b 20 00 	lea    0x201b36(%rip),%rbp        # 204cc0 <__init_array_end>
    318a:	53                   	push   %rbx
    318b:	41 89 fd             	mov    %edi,%r13d
    318e:	49 89 f6             	mov    %rsi,%r14
    3191:	4c 29 e5             	sub    %r12,%rbp
    3194:	48 83 ec 08          	sub    $0x8,%rsp
    3198:	48 c1 fd 03          	sar    $0x3,%rbp
    319c:	e8 87 dc ff ff       	callq  e28 <_init>
    31a1:	48 85 ed             	test   %rbp,%rbp
    31a4:	74 20                	je     31c6 <__libc_csu_init+0x56>
    31a6:	31 db                	xor    %ebx,%ebx
    31a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    31af:	00 
    31b0:	4c 89 fa             	mov    %r15,%rdx
    31b3:	4c 89 f6             	mov    %r14,%rsi
    31b6:	44 89 ef             	mov    %r13d,%edi
    31b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    31bd:	48 83 c3 01          	add    $0x1,%rbx
    31c1:	48 39 dd             	cmp    %rbx,%rbp
    31c4:	75 ea                	jne    31b0 <__libc_csu_init+0x40>
    31c6:	48 83 c4 08          	add    $0x8,%rsp
    31ca:	5b                   	pop    %rbx
    31cb:	5d                   	pop    %rbp
    31cc:	41 5c                	pop    %r12
    31ce:	41 5d                	pop    %r13
    31d0:	41 5e                	pop    %r14
    31d2:	41 5f                	pop    %r15
    31d4:	c3                   	retq   
    31d5:	90                   	nop
    31d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    31dd:	00 00 00 

00000000000031e0 <__libc_csu_fini>:
    31e0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000031e4 <_fini>:
    31e4:	48 83 ec 08          	sub    $0x8,%rsp
    31e8:	48 83 c4 08          	add    $0x8,%rsp
    31ec:	c3                   	retq   

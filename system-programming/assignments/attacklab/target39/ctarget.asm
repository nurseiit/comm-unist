
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 43 20 00 	mov    0x2043a5(%rip),%rax        # 604ff8 <_DYNAMIC+0x1d8>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <strcasecmp@plt-0x10>:
  400c60:	ff 35 a2 43 20 00    	pushq  0x2043a2(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 43 20 00    	jmpq   *0x2043a4(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e30 <exit@plt>:
  400e30:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e40 <connect@plt>:
  400e40:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e50 <__fprintf_chk@plt>:
  400e50:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e60 <__sprintf_chk@plt>:
  400e60:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <_init+0x18>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e76:	68 20 00 00 00       	pushq  $0x20
  400e7b:	e9 e0 fd ff ff       	jmpq   400c60 <_init+0x18>

Disassembly of section .text:

0000000000400e80 <_start>:
  400e80:	31 ed                	xor    %ebp,%ebp
  400e82:	49 89 d1             	mov    %rdx,%r9
  400e85:	5e                   	pop    %rsi
  400e86:	48 89 e2             	mov    %rsp,%rdx
  400e89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e8d:	50                   	push   %rax
  400e8e:	54                   	push   %rsp
  400e8f:	49 c7 c0 d0 2f 40 00 	mov    $0x402fd0,%r8
  400e96:	48 c7 c1 60 2f 40 00 	mov    $0x402f60,%rcx
  400e9d:	48 c7 c7 8e 11 40 00 	mov    $0x40118e,%rdi
  400ea4:	ff 15 46 41 20 00    	callq  *0x204146(%rip)        # 604ff0 <_DYNAMIC+0x1d0>
  400eaa:	f4                   	hlt    
  400eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 c3                	repz retq 
  400eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400eb9:	00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	55                   	push   %rbp
  400ec1:	b8 90 54 60 00       	mov    $0x605490,%eax
  400ec6:	48 3d 90 54 60 00    	cmp    $0x605490,%rax
  400ecc:	48 89 e5             	mov    %rsp,%rbp
  400ecf:	74 17                	je     400ee8 <deregister_tm_clones+0x28>
  400ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed6:	48 85 c0             	test   %rax,%rax
  400ed9:	74 0d                	je     400ee8 <deregister_tm_clones+0x28>
  400edb:	5d                   	pop    %rbp
  400edc:	bf 90 54 60 00       	mov    $0x605490,%edi
  400ee1:	ff e0                	jmpq   *%rax
  400ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ee8:	5d                   	pop    %rbp
  400ee9:	c3                   	retq   
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <register_tm_clones>:
  400ef0:	be 90 54 60 00       	mov    $0x605490,%esi
  400ef5:	55                   	push   %rbp
  400ef6:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
  400efd:	48 89 e5             	mov    %rsp,%rbp
  400f00:	48 c1 fe 03          	sar    $0x3,%rsi
  400f04:	48 89 f0             	mov    %rsi,%rax
  400f07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f0b:	48 01 c6             	add    %rax,%rsi
  400f0e:	48 d1 fe             	sar    %rsi
  400f11:	74 15                	je     400f28 <register_tm_clones+0x38>
  400f13:	b8 00 00 00 00       	mov    $0x0,%eax
  400f18:	48 85 c0             	test   %rax,%rax
  400f1b:	74 0b                	je     400f28 <register_tm_clones+0x38>
  400f1d:	5d                   	pop    %rbp
  400f1e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400f23:	ff e0                	jmpq   *%rax
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	5d                   	pop    %rbp
  400f29:	c3                   	retq   
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	80 3d 91 45 20 00 00 	cmpb   $0x0,0x204591(%rip)        # 6054c8 <completed.7696>
  400f37:	75 17                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f39:	55                   	push   %rbp
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	e8 7e ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f42:	c6 05 7f 45 20 00 01 	movb   $0x1,0x20457f(%rip)        # 6054c8 <completed.7696>
  400f49:	5d                   	pop    %rbp
  400f4a:	c3                   	retq   
  400f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f50:	f3 c3                	repz retq 
  400f52:	0f 1f 40 00          	nopl   0x0(%rax)
  400f56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f5d:	00 00 00 

0000000000400f60 <frame_dummy>:
  400f60:	55                   	push   %rbp
  400f61:	48 89 e5             	mov    %rsp,%rbp
  400f64:	5d                   	pop    %rbp
  400f65:	eb 89                	jmp    400ef0 <register_tm_clones>

0000000000400f67 <usage>:
  400f67:	48 83 ec 08          	sub    $0x8,%rsp
  400f6b:	48 89 fa             	mov    %rdi,%rdx
  400f6e:	83 3d 93 45 20 00 00 	cmpl   $0x0,0x204593(%rip)        # 605508 <is_checker>
  400f75:	74 50                	je     400fc7 <usage+0x60>
  400f77:	48 8d 35 6a 20 00 00 	lea    0x206a(%rip),%rsi        # 402fe8 <_IO_stdin_used+0x8>
  400f7e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f83:	b8 00 00 00 00       	mov    $0x0,%eax
  400f88:	e8 53 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8d:	48 8d 3d 8c 20 00 00 	lea    0x208c(%rip),%rdi        # 403020 <_IO_stdin_used+0x40>
  400f94:	e8 27 fd ff ff       	callq  400cc0 <puts@plt>
  400f99:	48 8d 3d f8 21 00 00 	lea    0x21f8(%rip),%rdi        # 403198 <_IO_stdin_used+0x1b8>
  400fa0:	e8 1b fd ff ff       	callq  400cc0 <puts@plt>
  400fa5:	48 8d 3d 9c 20 00 00 	lea    0x209c(%rip),%rdi        # 403048 <_IO_stdin_used+0x68>
  400fac:	e8 0f fd ff ff       	callq  400cc0 <puts@plt>
  400fb1:	48 8d 3d fa 21 00 00 	lea    0x21fa(%rip),%rdi        # 4031b2 <_IO_stdin_used+0x1d2>
  400fb8:	e8 03 fd ff ff       	callq  400cc0 <puts@plt>
  400fbd:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc2:	e8 69 fe ff ff       	callq  400e30 <exit@plt>
  400fc7:	48 8d 35 00 22 00 00 	lea    0x2200(%rip),%rsi        # 4031ce <_IO_stdin_used+0x1ee>
  400fce:	bf 01 00 00 00       	mov    $0x1,%edi
  400fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd8:	e8 03 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fdd:	48 8d 3d 8c 20 00 00 	lea    0x208c(%rip),%rdi        # 403070 <_IO_stdin_used+0x90>
  400fe4:	e8 d7 fc ff ff       	callq  400cc0 <puts@plt>
  400fe9:	48 8d 3d a8 20 00 00 	lea    0x20a8(%rip),%rdi        # 403098 <_IO_stdin_used+0xb8>
  400ff0:	e8 cb fc ff ff       	callq  400cc0 <puts@plt>
  400ff5:	48 8d 3d f0 21 00 00 	lea    0x21f0(%rip),%rdi        # 4031ec <_IO_stdin_used+0x20c>
  400ffc:	e8 bf fc ff ff       	callq  400cc0 <puts@plt>
  401001:	eb ba                	jmp    400fbd <usage+0x56>

0000000000401003 <initialize_target>:
  401003:	55                   	push   %rbp
  401004:	53                   	push   %rbx
  401005:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40100c:	89 f5                	mov    %esi,%ebp
  40100e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401015:	00 00 
  401017:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40101e:	00 
  40101f:	31 c0                	xor    %eax,%eax
  401021:	89 3d d1 44 20 00    	mov    %edi,0x2044d1(%rip)        # 6054f8 <check_level>
  401027:	8b 3d 03 41 20 00    	mov    0x204103(%rip),%edi        # 605130 <target_id>
  40102d:	e8 00 1f 00 00       	callq  402f32 <gencookie>
  401032:	89 05 cc 44 20 00    	mov    %eax,0x2044cc(%rip)        # 605504 <cookie>
  401038:	89 c7                	mov    %eax,%edi
  40103a:	e8 f3 1e 00 00       	callq  402f32 <gencookie>
  40103f:	89 05 bb 44 20 00    	mov    %eax,0x2044bb(%rip)        # 605500 <authkey>
  401045:	8b 05 e5 40 20 00    	mov    0x2040e5(%rip),%eax        # 605130 <target_id>
  40104b:	8d 78 01             	lea    0x1(%rax),%edi
  40104e:	e8 3d fc ff ff       	callq  400c90 <srandom@plt>
  401053:	e8 48 fd ff ff       	callq  400da0 <random@plt>
  401058:	89 c7                	mov    %eax,%edi
  40105a:	e8 1a 03 00 00       	callq  401379 <scramble>
  40105f:	89 c3                	mov    %eax,%ebx
  401061:	85 ed                	test   %ebp,%ebp
  401063:	75 54                	jne    4010b9 <initialize_target+0xb6>
  401065:	b8 00 00 00 00       	mov    $0x0,%eax
  40106a:	01 d8                	add    %ebx,%eax
  40106c:	0f b7 c0             	movzwl %ax,%eax
  40106f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401076:	89 c0                	mov    %eax,%eax
  401078:	48 89 05 01 44 20 00 	mov    %rax,0x204401(%rip)        # 605480 <buf_offset>
  40107f:	c6 05 a2 50 20 00 63 	movb   $0x63,0x2050a2(%rip)        # 606128 <target_prefix>
  401086:	83 3d fb 43 20 00 00 	cmpl   $0x0,0x2043fb(%rip)        # 605488 <notify>
  40108d:	74 09                	je     401098 <initialize_target+0x95>
  40108f:	83 3d 72 44 20 00 00 	cmpl   $0x0,0x204472(%rip)        # 605508 <is_checker>
  401096:	74 39                	je     4010d1 <initialize_target+0xce>
  401098:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40109f:	00 
  4010a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4010a7:	00 00 
  4010a9:	0f 85 da 00 00 00    	jne    401189 <initialize_target+0x186>
  4010af:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4010b6:	5b                   	pop    %rbx
  4010b7:	5d                   	pop    %rbp
  4010b8:	c3                   	retq   
  4010b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4010be:	e8 cd fc ff ff       	callq  400d90 <time@plt>
  4010c3:	89 c7                	mov    %eax,%edi
  4010c5:	e8 c6 fb ff ff       	callq  400c90 <srandom@plt>
  4010ca:	e8 d1 fc ff ff       	callq  400da0 <random@plt>
  4010cf:	eb 99                	jmp    40106a <initialize_target+0x67>
  4010d1:	48 89 e7             	mov    %rsp,%rdi
  4010d4:	be 00 01 00 00       	mov    $0x100,%esi
  4010d9:	e8 42 fd ff ff       	callq  400e20 <gethostname@plt>
  4010de:	89 c5                	mov    %eax,%ebp
  4010e0:	85 c0                	test   %eax,%eax
  4010e2:	75 26                	jne    40110a <initialize_target+0x107>
  4010e4:	89 c3                	mov    %eax,%ebx
  4010e6:	48 63 c3             	movslq %ebx,%rax
  4010e9:	48 8d 15 70 40 20 00 	lea    0x204070(%rip),%rdx        # 605160 <host_table>
  4010f0:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4010f4:	48 85 ff             	test   %rdi,%rdi
  4010f7:	74 2c                	je     401125 <initialize_target+0x122>
  4010f9:	48 89 e6             	mov    %rsp,%rsi
  4010fc:	e8 6f fb ff ff       	callq  400c70 <strcasecmp@plt>
  401101:	85 c0                	test   %eax,%eax
  401103:	74 1b                	je     401120 <initialize_target+0x11d>
  401105:	83 c3 01             	add    $0x1,%ebx
  401108:	eb dc                	jmp    4010e6 <initialize_target+0xe3>
  40110a:	48 8d 3d b7 1f 00 00 	lea    0x1fb7(%rip),%rdi        # 4030c8 <_IO_stdin_used+0xe8>
  401111:	e8 aa fb ff ff       	callq  400cc0 <puts@plt>
  401116:	bf 08 00 00 00       	mov    $0x8,%edi
  40111b:	e8 10 fd ff ff       	callq  400e30 <exit@plt>
  401120:	bd 01 00 00 00       	mov    $0x1,%ebp
  401125:	85 ed                	test   %ebp,%ebp
  401127:	74 3d                	je     401166 <initialize_target+0x163>
  401129:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401130:	00 
  401131:	e8 2c 1b 00 00       	callq  402c62 <init_driver>
  401136:	85 c0                	test   %eax,%eax
  401138:	0f 89 5a ff ff ff    	jns    401098 <initialize_target+0x95>
  40113e:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401145:	00 
  401146:	48 8d 35 f3 1f 00 00 	lea    0x1ff3(%rip),%rsi        # 403140 <_IO_stdin_used+0x160>
  40114d:	bf 01 00 00 00       	mov    $0x1,%edi
  401152:	b8 00 00 00 00       	mov    $0x0,%eax
  401157:	e8 84 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 ca fc ff ff       	callq  400e30 <exit@plt>
  401166:	48 89 e2             	mov    %rsp,%rdx
  401169:	48 8d 35 90 1f 00 00 	lea    0x1f90(%rip),%rsi        # 403100 <_IO_stdin_used+0x120>
  401170:	bf 01 00 00 00       	mov    $0x1,%edi
  401175:	b8 00 00 00 00       	mov    $0x0,%eax
  40117a:	e8 61 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40117f:	bf 08 00 00 00       	mov    $0x8,%edi
  401184:	e8 a7 fc ff ff       	callq  400e30 <exit@plt>
  401189:	e8 52 fb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040118e <main>:
  40118e:	41 56                	push   %r14
  401190:	41 55                	push   %r13
  401192:	41 54                	push   %r12
  401194:	55                   	push   %rbp
  401195:	53                   	push   %rbx
  401196:	41 89 fc             	mov    %edi,%r12d
  401199:	48 89 f3             	mov    %rsi,%rbx
  40119c:	48 c7 c6 69 1f 40 00 	mov    $0x401f69,%rsi
  4011a3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011a8:	e8 93 fb ff ff       	callq  400d40 <signal@plt>
  4011ad:	48 c7 c6 15 1f 40 00 	mov    $0x401f15,%rsi
  4011b4:	bf 07 00 00 00       	mov    $0x7,%edi
  4011b9:	e8 82 fb ff ff       	callq  400d40 <signal@plt>
  4011be:	48 c7 c6 bd 1f 40 00 	mov    $0x401fbd,%rsi
  4011c5:	bf 04 00 00 00       	mov    $0x4,%edi
  4011ca:	e8 71 fb ff ff       	callq  400d40 <signal@plt>
  4011cf:	83 3d 32 43 20 00 00 	cmpl   $0x0,0x204332(%rip)        # 605508 <is_checker>
  4011d6:	75 26                	jne    4011fe <main+0x70>
  4011d8:	48 8d 2d 26 20 00 00 	lea    0x2026(%rip),%rbp        # 403205 <_IO_stdin_used+0x225>
  4011df:	48 8b 05 ba 42 20 00 	mov    0x2042ba(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4011e6:	48 89 05 03 43 20 00 	mov    %rax,0x204303(%rip)        # 6054f0 <infile>
  4011ed:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011f3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011f9:	e9 8d 00 00 00       	jmpq   40128b <main+0xfd>
  4011fe:	48 c7 c6 11 20 40 00 	mov    $0x402011,%rsi
  401205:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120a:	e8 31 fb ff ff       	callq  400d40 <signal@plt>
  40120f:	bf 05 00 00 00       	mov    $0x5,%edi
  401214:	e8 f7 fa ff ff       	callq  400d10 <alarm@plt>
  401219:	48 8d 2d ea 1f 00 00 	lea    0x1fea(%rip),%rbp        # 40320a <_IO_stdin_used+0x22a>
  401220:	eb bd                	jmp    4011df <main+0x51>
  401222:	48 8b 3b             	mov    (%rbx),%rdi
  401225:	e8 3d fd ff ff       	callq  400f67 <usage>
  40122a:	48 8d 35 5c 22 00 00 	lea    0x225c(%rip),%rsi        # 40348d <_IO_stdin_used+0x4ad>
  401231:	48 8b 3d 70 42 20 00 	mov    0x204270(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401238:	e8 b3 fb ff ff       	callq  400df0 <fopen@plt>
  40123d:	48 89 05 ac 42 20 00 	mov    %rax,0x2042ac(%rip)        # 6054f0 <infile>
  401244:	48 85 c0             	test   %rax,%rax
  401247:	75 42                	jne    40128b <main+0xfd>
  401249:	48 8b 0d 58 42 20 00 	mov    0x204258(%rip),%rcx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401250:	48 8d 15 bb 1f 00 00 	lea    0x1fbb(%rip),%rdx        # 403212 <_IO_stdin_used+0x232>
  401257:	be 01 00 00 00       	mov    $0x1,%esi
  40125c:	48 8b 3d 5d 42 20 00 	mov    0x20425d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401263:	e8 e8 fb ff ff       	callq  400e50 <__fprintf_chk@plt>
  401268:	b8 01 00 00 00       	mov    $0x1,%eax
  40126d:	e9 d9 00 00 00       	jmpq   40134b <main+0x1bd>
  401272:	ba 10 00 00 00       	mov    $0x10,%edx
  401277:	be 00 00 00 00       	mov    $0x0,%esi
  40127c:	48 8b 3d 25 42 20 00 	mov    0x204225(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401283:	e8 88 fb ff ff       	callq  400e10 <strtoul@plt>
  401288:	41 89 c6             	mov    %eax,%r14d
  40128b:	48 89 ea             	mov    %rbp,%rdx
  40128e:	48 89 de             	mov    %rbx,%rsi
  401291:	44 89 e7             	mov    %r12d,%edi
  401294:	e8 67 fb ff ff       	callq  400e00 <getopt@plt>
  401299:	3c ff                	cmp    $0xff,%al
  40129b:	74 62                	je     4012ff <main+0x171>
  40129d:	0f be d0             	movsbl %al,%edx
  4012a0:	83 e8 61             	sub    $0x61,%eax
  4012a3:	3c 10                	cmp    $0x10,%al
  4012a5:	77 3a                	ja     4012e1 <main+0x153>
  4012a7:	0f b6 c0             	movzbl %al,%eax
  4012aa:	48 8d 0d 9f 1f 00 00 	lea    0x1f9f(%rip),%rcx        # 403250 <_IO_stdin_used+0x270>
  4012b1:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  4012b5:	48 01 c8             	add    %rcx,%rax
  4012b8:	ff e0                	jmpq   *%rax
  4012ba:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012bf:	be 00 00 00 00       	mov    $0x0,%esi
  4012c4:	48 8b 3d dd 41 20 00 	mov    0x2041dd(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4012cb:	e8 a0 fa ff ff       	callq  400d70 <strtol@plt>
  4012d0:	41 89 c5             	mov    %eax,%r13d
  4012d3:	eb b6                	jmp    40128b <main+0xfd>
  4012d5:	c7 05 a9 41 20 00 00 	movl   $0x0,0x2041a9(%rip)        # 605488 <notify>
  4012dc:	00 00 00 
  4012df:	eb aa                	jmp    40128b <main+0xfd>
  4012e1:	48 8d 35 47 1f 00 00 	lea    0x1f47(%rip),%rsi        # 40322f <_IO_stdin_used+0x24f>
  4012e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f2:	e8 e9 fa ff ff       	callq  400de0 <__printf_chk@plt>
  4012f7:	48 8b 3b             	mov    (%rbx),%rdi
  4012fa:	e8 68 fc ff ff       	callq  400f67 <usage>
  4012ff:	be 00 00 00 00       	mov    $0x0,%esi
  401304:	44 89 ef             	mov    %r13d,%edi
  401307:	e8 f7 fc ff ff       	callq  401003 <initialize_target>
  40130c:	83 3d f5 41 20 00 00 	cmpl   $0x0,0x2041f5(%rip)        # 605508 <is_checker>
  401313:	74 09                	je     40131e <main+0x190>
  401315:	44 39 35 e4 41 20 00 	cmp    %r14d,0x2041e4(%rip)        # 605500 <authkey>
  40131c:	75 36                	jne    401354 <main+0x1c6>
  40131e:	8b 15 e0 41 20 00    	mov    0x2041e0(%rip),%edx        # 605504 <cookie>
  401324:	48 8d 35 17 1f 00 00 	lea    0x1f17(%rip),%rsi        # 403242 <_IO_stdin_used+0x262>
  40132b:	bf 01 00 00 00       	mov    $0x1,%edi
  401330:	b8 00 00 00 00       	mov    $0x0,%eax
  401335:	e8 a6 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40133a:	48 8b 3d 3f 41 20 00 	mov    0x20413f(%rip),%rdi        # 605480 <buf_offset>
  401341:	e8 d7 0d 00 00       	callq  40211d <stable_launch>
  401346:	b8 00 00 00 00       	mov    $0x0,%eax
  40134b:	5b                   	pop    %rbx
  40134c:	5d                   	pop    %rbp
  40134d:	41 5c                	pop    %r12
  40134f:	41 5d                	pop    %r13
  401351:	41 5e                	pop    %r14
  401353:	c3                   	retq   
  401354:	44 89 f2             	mov    %r14d,%edx
  401357:	48 8d 35 0a 1e 00 00 	lea    0x1e0a(%rip),%rsi        # 403168 <_IO_stdin_used+0x188>
  40135e:	bf 01 00 00 00       	mov    $0x1,%edi
  401363:	b8 00 00 00 00       	mov    $0x0,%eax
  401368:	e8 73 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40136d:	b8 00 00 00 00       	mov    $0x0,%eax
  401372:	e8 fe 07 00 00       	callq  401b75 <check_fail>
  401377:	eb a5                	jmp    40131e <main+0x190>

0000000000401379 <scramble>:
  401379:	48 83 ec 38          	sub    $0x38,%rsp
  40137d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401384:	00 00 
  401386:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40138b:	31 c0                	xor    %eax,%eax
  40138d:	eb 10                	jmp    40139f <scramble+0x26>
  40138f:	69 d0 a9 1e 00 00    	imul   $0x1ea9,%eax,%edx
  401395:	01 fa                	add    %edi,%edx
  401397:	89 c1                	mov    %eax,%ecx
  401399:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40139c:	83 c0 01             	add    $0x1,%eax
  40139f:	83 f8 09             	cmp    $0x9,%eax
  4013a2:	76 eb                	jbe    40138f <scramble+0x16>
  4013a4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4013a8:	69 c0 05 e0 00 00    	imul   $0xe005,%eax,%eax
  4013ae:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4013b2:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4013b6:	69 c0 83 b4 00 00    	imul   $0xb483,%eax,%eax
  4013bc:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4013c0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4013c4:	69 c0 df 62 00 00    	imul   $0x62df,%eax,%eax
  4013ca:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4013ce:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4013d2:	69 c0 18 c5 00 00    	imul   $0xc518,%eax,%eax
  4013d8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4013dc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013e0:	69 c0 b5 f5 00 00    	imul   $0xf5b5,%eax,%eax
  4013e6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013ea:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4013ee:	69 c0 b5 88 00 00    	imul   $0x88b5,%eax,%eax
  4013f4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4013f8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4013fc:	69 c0 2a 6d 00 00    	imul   $0x6d2a,%eax,%eax
  401402:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401406:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40140a:	69 c0 07 c2 00 00    	imul   $0xc207,%eax,%eax
  401410:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401414:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401418:	69 c0 eb e7 00 00    	imul   $0xe7eb,%eax,%eax
  40141e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401422:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401426:	69 c0 69 2b 00 00    	imul   $0x2b69,%eax,%eax
  40142c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401430:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401434:	69 c0 83 c0 00 00    	imul   $0xc083,%eax,%eax
  40143a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40143e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401442:	69 c0 08 36 00 00    	imul   $0x3608,%eax,%eax
  401448:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40144c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401450:	69 c0 0d 6b 00 00    	imul   $0x6b0d,%eax,%eax
  401456:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40145a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40145e:	69 c0 64 d1 00 00    	imul   $0xd164,%eax,%eax
  401464:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401468:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40146c:	69 c0 a7 e5 00 00    	imul   $0xe5a7,%eax,%eax
  401472:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401476:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40147a:	69 c0 cf ba 00 00    	imul   $0xbacf,%eax,%eax
  401480:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401484:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401488:	69 c0 58 0e 00 00    	imul   $0xe58,%eax,%eax
  40148e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401492:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401496:	69 c0 a2 c4 00 00    	imul   $0xc4a2,%eax,%eax
  40149c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014a0:	8b 04 24             	mov    (%rsp),%eax
  4014a3:	69 c0 96 bd 00 00    	imul   $0xbd96,%eax,%eax
  4014a9:	89 04 24             	mov    %eax,(%rsp)
  4014ac:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014b0:	69 c0 43 13 00 00    	imul   $0x1343,%eax,%eax
  4014b6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014ba:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014be:	69 c0 d4 e2 00 00    	imul   $0xe2d4,%eax,%eax
  4014c4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014c8:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014cc:	69 c0 d0 c5 00 00    	imul   $0xc5d0,%eax,%eax
  4014d2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014d6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014da:	69 c0 ac 50 00 00    	imul   $0x50ac,%eax,%eax
  4014e0:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014e4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014e8:	69 c0 bc a1 00 00    	imul   $0xa1bc,%eax,%eax
  4014ee:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014f2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014f6:	69 c0 7a 74 00 00    	imul   $0x747a,%eax,%eax
  4014fc:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401500:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401504:	69 c0 69 14 00 00    	imul   $0x1469,%eax,%eax
  40150a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40150e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401512:	69 c0 b4 92 00 00    	imul   $0x92b4,%eax,%eax
  401518:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40151c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401520:	69 c0 df 4e 00 00    	imul   $0x4edf,%eax,%eax
  401526:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40152a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40152e:	69 c0 b9 19 00 00    	imul   $0x19b9,%eax,%eax
  401534:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401538:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40153c:	69 c0 e8 99 00 00    	imul   $0x99e8,%eax,%eax
  401542:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401546:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40154a:	69 c0 42 cb 00 00    	imul   $0xcb42,%eax,%eax
  401550:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401554:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401558:	69 c0 0d c5 00 00    	imul   $0xc50d,%eax,%eax
  40155e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401562:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401566:	69 c0 0a c4 00 00    	imul   $0xc40a,%eax,%eax
  40156c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401570:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401574:	69 c0 d2 4a 00 00    	imul   $0x4ad2,%eax,%eax
  40157a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40157e:	8b 04 24             	mov    (%rsp),%eax
  401581:	69 c0 6a 13 00 00    	imul   $0x136a,%eax,%eax
  401587:	89 04 24             	mov    %eax,(%rsp)
  40158a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40158e:	69 c0 eb 34 00 00    	imul   $0x34eb,%eax,%eax
  401594:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401598:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40159c:	69 c0 0e fa 00 00    	imul   $0xfa0e,%eax,%eax
  4015a2:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015a6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015aa:	69 c0 3d 46 00 00    	imul   $0x463d,%eax,%eax
  4015b0:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015b4:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015b8:	69 c0 92 82 00 00    	imul   $0x8292,%eax,%eax
  4015be:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015c2:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015c6:	69 c0 52 83 00 00    	imul   $0x8352,%eax,%eax
  4015cc:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015d0:	8b 04 24             	mov    (%rsp),%eax
  4015d3:	69 c0 1e b5 00 00    	imul   $0xb51e,%eax,%eax
  4015d9:	89 04 24             	mov    %eax,(%rsp)
  4015dc:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015e0:	69 c0 09 2c 00 00    	imul   $0x2c09,%eax,%eax
  4015e6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015ea:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015ee:	69 c0 2e e2 00 00    	imul   $0xe22e,%eax,%eax
  4015f4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015f8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015fc:	69 c0 94 45 00 00    	imul   $0x4594,%eax,%eax
  401602:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401606:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40160a:	69 c0 2c 9b 00 00    	imul   $0x9b2c,%eax,%eax
  401610:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401614:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401618:	69 c0 47 fb 00 00    	imul   $0xfb47,%eax,%eax
  40161e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401622:	8b 04 24             	mov    (%rsp),%eax
  401625:	69 c0 34 34 00 00    	imul   $0x3434,%eax,%eax
  40162b:	89 04 24             	mov    %eax,(%rsp)
  40162e:	8b 04 24             	mov    (%rsp),%eax
  401631:	69 c0 09 40 00 00    	imul   $0x4009,%eax,%eax
  401637:	89 04 24             	mov    %eax,(%rsp)
  40163a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40163e:	69 c0 04 4a 00 00    	imul   $0x4a04,%eax,%eax
  401644:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401648:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40164c:	69 c0 de 79 00 00    	imul   $0x79de,%eax,%eax
  401652:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401656:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40165a:	69 c0 f1 e8 00 00    	imul   $0xe8f1,%eax,%eax
  401660:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401664:	8b 04 24             	mov    (%rsp),%eax
  401667:	69 c0 ac 53 00 00    	imul   $0x53ac,%eax,%eax
  40166d:	89 04 24             	mov    %eax,(%rsp)
  401670:	8b 04 24             	mov    (%rsp),%eax
  401673:	69 c0 84 a9 00 00    	imul   $0xa984,%eax,%eax
  401679:	89 04 24             	mov    %eax,(%rsp)
  40167c:	8b 04 24             	mov    (%rsp),%eax
  40167f:	69 c0 bb 2d 00 00    	imul   $0x2dbb,%eax,%eax
  401685:	89 04 24             	mov    %eax,(%rsp)
  401688:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40168c:	69 c0 e3 81 00 00    	imul   $0x81e3,%eax,%eax
  401692:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401696:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40169a:	69 c0 23 23 00 00    	imul   $0x2323,%eax,%eax
  4016a0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016a4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016a8:	69 c0 c9 48 00 00    	imul   $0x48c9,%eax,%eax
  4016ae:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016b2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016b6:	69 c0 d5 7e 00 00    	imul   $0x7ed5,%eax,%eax
  4016bc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016c0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016c4:	69 c0 15 ca 00 00    	imul   $0xca15,%eax,%eax
  4016ca:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016ce:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016d2:	69 c0 de 26 00 00    	imul   $0x26de,%eax,%eax
  4016d8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016dc:	8b 04 24             	mov    (%rsp),%eax
  4016df:	69 c0 e6 a3 00 00    	imul   $0xa3e6,%eax,%eax
  4016e5:	89 04 24             	mov    %eax,(%rsp)
  4016e8:	8b 04 24             	mov    (%rsp),%eax
  4016eb:	69 c0 b0 cb 00 00    	imul   $0xcbb0,%eax,%eax
  4016f1:	89 04 24             	mov    %eax,(%rsp)
  4016f4:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016f8:	69 c0 7a e2 00 00    	imul   $0xe27a,%eax,%eax
  4016fe:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401702:	8b 04 24             	mov    (%rsp),%eax
  401705:	69 c0 58 d0 00 00    	imul   $0xd058,%eax,%eax
  40170b:	89 04 24             	mov    %eax,(%rsp)
  40170e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401712:	69 c0 95 96 00 00    	imul   $0x9695,%eax,%eax
  401718:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40171c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401720:	69 c0 ec 89 00 00    	imul   $0x89ec,%eax,%eax
  401726:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40172a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40172e:	69 c0 ff f8 00 00    	imul   $0xf8ff,%eax,%eax
  401734:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401738:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40173c:	69 c0 86 62 00 00    	imul   $0x6286,%eax,%eax
  401742:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401746:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40174a:	69 c0 83 77 00 00    	imul   $0x7783,%eax,%eax
  401750:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401754:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401758:	69 c0 99 ce 00 00    	imul   $0xce99,%eax,%eax
  40175e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401762:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401766:	69 c0 4f 41 00 00    	imul   $0x414f,%eax,%eax
  40176c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401770:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401774:	69 c0 68 30 00 00    	imul   $0x3068,%eax,%eax
  40177a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40177e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401782:	69 c0 e9 40 00 00    	imul   $0x40e9,%eax,%eax
  401788:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40178c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401790:	69 c0 10 b5 00 00    	imul   $0xb510,%eax,%eax
  401796:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40179a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40179e:	69 c0 a7 73 00 00    	imul   $0x73a7,%eax,%eax
  4017a4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017a8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017ac:	69 c0 40 70 00 00    	imul   $0x7040,%eax,%eax
  4017b2:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017b6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017ba:	69 c0 14 fe 00 00    	imul   $0xfe14,%eax,%eax
  4017c0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017c4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017c8:	69 c0 a7 ef 00 00    	imul   $0xefa7,%eax,%eax
  4017ce:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017d2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017d6:	69 c0 aa 47 00 00    	imul   $0x47aa,%eax,%eax
  4017dc:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017e0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017e4:	69 c0 0d 0d 00 00    	imul   $0xd0d,%eax,%eax
  4017ea:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017ee:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017f2:	69 c0 35 0a 00 00    	imul   $0xa35,%eax,%eax
  4017f8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017fc:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401800:	69 c0 c6 5d 00 00    	imul   $0x5dc6,%eax,%eax
  401806:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40180a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40180e:	69 c0 93 74 00 00    	imul   $0x7493,%eax,%eax
  401814:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401818:	8b 04 24             	mov    (%rsp),%eax
  40181b:	69 c0 b7 a5 00 00    	imul   $0xa5b7,%eax,%eax
  401821:	89 04 24             	mov    %eax,(%rsp)
  401824:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401828:	69 c0 8e 50 00 00    	imul   $0x508e,%eax,%eax
  40182e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401832:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401836:	69 c0 7c e5 00 00    	imul   $0xe57c,%eax,%eax
  40183c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401840:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401844:	69 c0 0d 66 00 00    	imul   $0x660d,%eax,%eax
  40184a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40184e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401852:	69 c0 f5 1b 00 00    	imul   $0x1bf5,%eax,%eax
  401858:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40185c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401860:	69 c0 22 c5 00 00    	imul   $0xc522,%eax,%eax
  401866:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40186a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40186e:	69 c0 f4 b1 00 00    	imul   $0xb1f4,%eax,%eax
  401874:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401878:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40187c:	69 c0 f4 ac 00 00    	imul   $0xacf4,%eax,%eax
  401882:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401886:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40188a:	69 c0 56 50 00 00    	imul   $0x5056,%eax,%eax
  401890:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401894:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401898:	69 c0 26 5e 00 00    	imul   $0x5e26,%eax,%eax
  40189e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018a2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018a6:	69 c0 97 8b 00 00    	imul   $0x8b97,%eax,%eax
  4018ac:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018b0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018b4:	69 c0 fc ff 00 00    	imul   $0xfffc,%eax,%eax
  4018ba:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018be:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018c2:	69 c0 10 84 00 00    	imul   $0x8410,%eax,%eax
  4018c8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018cc:	8b 04 24             	mov    (%rsp),%eax
  4018cf:	69 c0 9f 2f 00 00    	imul   $0x2f9f,%eax,%eax
  4018d5:	89 04 24             	mov    %eax,(%rsp)
  4018d8:	ba 00 00 00 00       	mov    $0x0,%edx
  4018dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e2:	eb 0a                	jmp    4018ee <scramble+0x575>
  4018e4:	89 d1                	mov    %edx,%ecx
  4018e6:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4018e9:	01 c8                	add    %ecx,%eax
  4018eb:	83 c2 01             	add    $0x1,%edx
  4018ee:	83 fa 09             	cmp    $0x9,%edx
  4018f1:	76 f1                	jbe    4018e4 <scramble+0x56b>
  4018f3:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4018f8:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4018ff:	00 00 
  401901:	75 05                	jne    401908 <scramble+0x58f>
  401903:	48 83 c4 38          	add    $0x38,%rsp
  401907:	c3                   	retq   
  401908:	e8 d3 f3 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040190d <getbuf>:
  40190d:	48 83 ec 18          	sub    $0x18,%rsp
  401911:	48 89 e7             	mov    %rsp,%rdi
  401914:	e8 94 02 00 00       	callq  401bad <Gets>
  401919:	b8 01 00 00 00       	mov    $0x1,%eax
  40191e:	48 83 c4 18          	add    $0x18,%rsp
  401922:	c3                   	retq   

0000000000401923 <touch1>:
  401923:	48 83 ec 08          	sub    $0x8,%rsp
  401927:	c7 05 cb 3b 20 00 01 	movl   $0x1,0x203bcb(%rip)        # 6054fc <vlevel>
  40192e:	00 00 00 
  401931:	48 8d 3d ae 19 00 00 	lea    0x19ae(%rip),%rdi        # 4032e6 <_IO_stdin_used+0x306>
  401938:	e8 83 f3 ff ff       	callq  400cc0 <puts@plt>
  40193d:	bf 01 00 00 00       	mov    $0x1,%edi
  401942:	e8 d6 04 00 00       	callq  401e1d <validate>
  401947:	bf 00 00 00 00       	mov    $0x0,%edi
  40194c:	e8 df f4 ff ff       	callq  400e30 <exit@plt>

0000000000401951 <touch2>:
  401951:	48 83 ec 08          	sub    $0x8,%rsp
  401955:	89 fa                	mov    %edi,%edx
  401957:	c7 05 9b 3b 20 00 02 	movl   $0x2,0x203b9b(%rip)        # 6054fc <vlevel>
  40195e:	00 00 00 
  401961:	39 3d 9d 3b 20 00    	cmp    %edi,0x203b9d(%rip)        # 605504 <cookie>
  401967:	74 2a                	je     401993 <touch2+0x42>
  401969:	48 8d 35 c0 19 00 00 	lea    0x19c0(%rip),%rsi        # 403330 <_IO_stdin_used+0x350>
  401970:	bf 01 00 00 00       	mov    $0x1,%edi
  401975:	b8 00 00 00 00       	mov    $0x0,%eax
  40197a:	e8 61 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  40197f:	bf 02 00 00 00       	mov    $0x2,%edi
  401984:	e8 64 05 00 00       	callq  401eed <fail>
  401989:	bf 00 00 00 00       	mov    $0x0,%edi
  40198e:	e8 9d f4 ff ff       	callq  400e30 <exit@plt>
  401993:	48 8d 35 6e 19 00 00 	lea    0x196e(%rip),%rsi        # 403308 <_IO_stdin_used+0x328>
  40199a:	bf 01 00 00 00       	mov    $0x1,%edi
  40199f:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a4:	e8 37 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  4019a9:	bf 02 00 00 00       	mov    $0x2,%edi
  4019ae:	e8 6a 04 00 00       	callq  401e1d <validate>
  4019b3:	eb d4                	jmp    401989 <touch2+0x38>

00000000004019b5 <hexmatch>:
  4019b5:	41 54                	push   %r12
  4019b7:	55                   	push   %rbp
  4019b8:	53                   	push   %rbx
  4019b9:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4019bd:	89 fd                	mov    %edi,%ebp
  4019bf:	48 89 f3             	mov    %rsi,%rbx
  4019c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019c9:	00 00 
  4019cb:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4019d0:	31 c0                	xor    %eax,%eax
  4019d2:	e8 c9 f3 ff ff       	callq  400da0 <random@plt>
  4019d7:	48 89 c1             	mov    %rax,%rcx
  4019da:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4019e1:	0a d7 a3 
  4019e4:	48 f7 ea             	imul   %rdx
  4019e7:	48 01 ca             	add    %rcx,%rdx
  4019ea:	48 c1 fa 06          	sar    $0x6,%rdx
  4019ee:	48 89 c8             	mov    %rcx,%rax
  4019f1:	48 c1 f8 3f          	sar    $0x3f,%rax
  4019f5:	48 29 c2             	sub    %rax,%rdx
  4019f8:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4019fc:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a00:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a07:	00 
  401a08:	48 29 c1             	sub    %rax,%rcx
  401a0b:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a0f:	41 89 e8             	mov    %ebp,%r8d
  401a12:	48 8d 0d ea 18 00 00 	lea    0x18ea(%rip),%rcx        # 403303 <_IO_stdin_used+0x323>
  401a19:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a20:	be 01 00 00 00       	mov    $0x1,%esi
  401a25:	4c 89 e7             	mov    %r12,%rdi
  401a28:	b8 00 00 00 00       	mov    $0x0,%eax
  401a2d:	e8 2e f4 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401a32:	ba 09 00 00 00       	mov    $0x9,%edx
  401a37:	4c 89 e6             	mov    %r12,%rsi
  401a3a:	48 89 df             	mov    %rbx,%rdi
  401a3d:	e8 5e f2 ff ff       	callq  400ca0 <strncmp@plt>
  401a42:	85 c0                	test   %eax,%eax
  401a44:	0f 94 c0             	sete   %al
  401a47:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a4c:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401a53:	00 00 
  401a55:	75 0c                	jne    401a63 <hexmatch+0xae>
  401a57:	0f b6 c0             	movzbl %al,%eax
  401a5a:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401a5e:	5b                   	pop    %rbx
  401a5f:	5d                   	pop    %rbp
  401a60:	41 5c                	pop    %r12
  401a62:	c3                   	retq   
  401a63:	e8 78 f2 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401a68 <touch3>:
  401a68:	53                   	push   %rbx
  401a69:	48 89 fb             	mov    %rdi,%rbx
  401a6c:	c7 05 86 3a 20 00 03 	movl   $0x3,0x203a86(%rip)        # 6054fc <vlevel>
  401a73:	00 00 00 
  401a76:	48 89 fe             	mov    %rdi,%rsi
  401a79:	8b 3d 85 3a 20 00    	mov    0x203a85(%rip),%edi        # 605504 <cookie>
  401a7f:	e8 31 ff ff ff       	callq  4019b5 <hexmatch>
  401a84:	85 c0                	test   %eax,%eax
  401a86:	74 2d                	je     401ab5 <touch3+0x4d>
  401a88:	48 89 da             	mov    %rbx,%rdx
  401a8b:	48 8d 35 c6 18 00 00 	lea    0x18c6(%rip),%rsi        # 403358 <_IO_stdin_used+0x378>
  401a92:	bf 01 00 00 00       	mov    $0x1,%edi
  401a97:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9c:	e8 3f f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401aa1:	bf 03 00 00 00       	mov    $0x3,%edi
  401aa6:	e8 72 03 00 00       	callq  401e1d <validate>
  401aab:	bf 00 00 00 00       	mov    $0x0,%edi
  401ab0:	e8 7b f3 ff ff       	callq  400e30 <exit@plt>
  401ab5:	48 89 da             	mov    %rbx,%rdx
  401ab8:	48 8d 35 c1 18 00 00 	lea    0x18c1(%rip),%rsi        # 403380 <_IO_stdin_used+0x3a0>
  401abf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac9:	e8 12 f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401ace:	bf 03 00 00 00       	mov    $0x3,%edi
  401ad3:	e8 15 04 00 00       	callq  401eed <fail>
  401ad8:	eb d1                	jmp    401aab <touch3+0x43>

0000000000401ada <test>:
  401ada:	48 83 ec 08          	sub    $0x8,%rsp
  401ade:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae3:	e8 25 fe ff ff       	callq  40190d <getbuf>
  401ae8:	89 c2                	mov    %eax,%edx
  401aea:	48 8d 35 b7 18 00 00 	lea    0x18b7(%rip),%rsi        # 4033a8 <_IO_stdin_used+0x3c8>
  401af1:	bf 01 00 00 00       	mov    $0x1,%edi
  401af6:	b8 00 00 00 00       	mov    $0x0,%eax
  401afb:	e8 e0 f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401b00:	48 83 c4 08          	add    $0x8,%rsp
  401b04:	c3                   	retq   

0000000000401b05 <save_char>:
  401b05:	8b 05 19 46 20 00    	mov    0x204619(%rip),%eax        # 606124 <gets_cnt>
  401b0b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b10:	7f 4a                	jg     401b5c <save_char+0x57>
  401b12:	89 f9                	mov    %edi,%ecx
  401b14:	c0 e9 04             	shr    $0x4,%cl
  401b17:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401b1a:	4c 8d 05 af 1b 00 00 	lea    0x1baf(%rip),%r8        # 4036d0 <trans_char>
  401b21:	83 e1 0f             	and    $0xf,%ecx
  401b24:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401b29:	48 8d 0d f0 39 20 00 	lea    0x2039f0(%rip),%rcx        # 605520 <gets_buf>
  401b30:	48 63 f2             	movslq %edx,%rsi
  401b33:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401b37:	8d 72 01             	lea    0x1(%rdx),%esi
  401b3a:	83 e7 0f             	and    $0xf,%edi
  401b3d:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401b42:	48 63 f6             	movslq %esi,%rsi
  401b45:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401b49:	83 c2 02             	add    $0x2,%edx
  401b4c:	48 63 d2             	movslq %edx,%rdx
  401b4f:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401b53:	83 c0 01             	add    $0x1,%eax
  401b56:	89 05 c8 45 20 00    	mov    %eax,0x2045c8(%rip)        # 606124 <gets_cnt>
  401b5c:	f3 c3                	repz retq 

0000000000401b5e <save_term>:
  401b5e:	8b 05 c0 45 20 00    	mov    0x2045c0(%rip),%eax        # 606124 <gets_cnt>
  401b64:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b67:	48 98                	cltq   
  401b69:	48 8d 15 b0 39 20 00 	lea    0x2039b0(%rip),%rdx        # 605520 <gets_buf>
  401b70:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401b74:	c3                   	retq   

0000000000401b75 <check_fail>:
  401b75:	48 83 ec 08          	sub    $0x8,%rsp
  401b79:	0f be 15 a8 45 20 00 	movsbl 0x2045a8(%rip),%edx        # 606128 <target_prefix>
  401b80:	4c 8d 05 99 39 20 00 	lea    0x203999(%rip),%r8        # 605520 <gets_buf>
  401b87:	8b 0d 6b 39 20 00    	mov    0x20396b(%rip),%ecx        # 6054f8 <check_level>
  401b8d:	48 8d 35 37 18 00 00 	lea    0x1837(%rip),%rsi        # 4033cb <_IO_stdin_used+0x3eb>
  401b94:	bf 01 00 00 00       	mov    $0x1,%edi
  401b99:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9e:	e8 3d f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401ba3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ba8:	e8 83 f2 ff ff       	callq  400e30 <exit@plt>

0000000000401bad <Gets>:
  401bad:	41 54                	push   %r12
  401baf:	55                   	push   %rbp
  401bb0:	53                   	push   %rbx
  401bb1:	49 89 fc             	mov    %rdi,%r12
  401bb4:	c7 05 66 45 20 00 00 	movl   $0x0,0x204566(%rip)        # 606124 <gets_cnt>
  401bbb:	00 00 00 
  401bbe:	48 89 fb             	mov    %rdi,%rbx
  401bc1:	eb 11                	jmp    401bd4 <Gets+0x27>
  401bc3:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401bc7:	88 03                	mov    %al,(%rbx)
  401bc9:	0f b6 f8             	movzbl %al,%edi
  401bcc:	e8 34 ff ff ff       	callq  401b05 <save_char>
  401bd1:	48 89 eb             	mov    %rbp,%rbx
  401bd4:	48 8b 3d 15 39 20 00 	mov    0x203915(%rip),%rdi        # 6054f0 <infile>
  401bdb:	e8 d0 f1 ff ff       	callq  400db0 <_IO_getc@plt>
  401be0:	83 f8 ff             	cmp    $0xffffffff,%eax
  401be3:	74 05                	je     401bea <Gets+0x3d>
  401be5:	83 f8 0a             	cmp    $0xa,%eax
  401be8:	75 d9                	jne    401bc3 <Gets+0x16>
  401bea:	c6 03 00             	movb   $0x0,(%rbx)
  401bed:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf2:	e8 67 ff ff ff       	callq  401b5e <save_term>
  401bf7:	4c 89 e0             	mov    %r12,%rax
  401bfa:	5b                   	pop    %rbx
  401bfb:	5d                   	pop    %rbp
  401bfc:	41 5c                	pop    %r12
  401bfe:	c3                   	retq   

0000000000401bff <notify_server>:
  401bff:	55                   	push   %rbp
  401c00:	53                   	push   %rbx
  401c01:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401c08:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c0f:	00 00 
  401c11:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401c18:	00 
  401c19:	31 c0                	xor    %eax,%eax
  401c1b:	83 3d e6 38 20 00 00 	cmpl   $0x0,0x2038e6(%rip)        # 605508 <is_checker>
  401c22:	0f 85 d2 00 00 00    	jne    401cfa <notify_server+0xfb>
  401c28:	89 fb                	mov    %edi,%ebx
  401c2a:	8b 05 f4 44 20 00    	mov    0x2044f4(%rip),%eax        # 606124 <gets_cnt>
  401c30:	83 c0 64             	add    $0x64,%eax
  401c33:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c38:	0f 8f dd 00 00 00    	jg     401d1b <notify_server+0x11c>
  401c3e:	0f be 05 e3 44 20 00 	movsbl 0x2044e3(%rip),%eax        # 606128 <target_prefix>
  401c45:	83 3d 3c 38 20 00 00 	cmpl   $0x0,0x20383c(%rip)        # 605488 <notify>
  401c4c:	0f 84 e9 00 00 00    	je     401d3b <notify_server+0x13c>
  401c52:	8b 15 a8 38 20 00    	mov    0x2038a8(%rip),%edx        # 605500 <authkey>
  401c58:	85 db                	test   %ebx,%ebx
  401c5a:	0f 84 e5 00 00 00    	je     401d45 <notify_server+0x146>
  401c60:	48 8d 2d 7a 17 00 00 	lea    0x177a(%rip),%rbp        # 4033e1 <_IO_stdin_used+0x401>
  401c67:	48 89 e7             	mov    %rsp,%rdi
  401c6a:	48 8d 0d af 38 20 00 	lea    0x2038af(%rip),%rcx        # 605520 <gets_buf>
  401c71:	51                   	push   %rcx
  401c72:	56                   	push   %rsi
  401c73:	50                   	push   %rax
  401c74:	52                   	push   %rdx
  401c75:	49 89 e9             	mov    %rbp,%r9
  401c78:	44 8b 05 b1 34 20 00 	mov    0x2034b1(%rip),%r8d        # 605130 <target_id>
  401c7f:	48 8d 0d 65 17 00 00 	lea    0x1765(%rip),%rcx        # 4033eb <_IO_stdin_used+0x40b>
  401c86:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c8b:	be 01 00 00 00       	mov    $0x1,%esi
  401c90:	b8 00 00 00 00       	mov    $0x0,%eax
  401c95:	e8 c6 f1 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401c9a:	48 83 c4 20          	add    $0x20,%rsp
  401c9e:	83 3d e3 37 20 00 00 	cmpl   $0x0,0x2037e3(%rip)        # 605488 <notify>
  401ca5:	0f 84 df 00 00 00    	je     401d8a <notify_server+0x18b>
  401cab:	85 db                	test   %ebx,%ebx
  401cad:	0f 84 c6 00 00 00    	je     401d79 <notify_server+0x17a>
  401cb3:	48 89 e1             	mov    %rsp,%rcx
  401cb6:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401cbd:	00 
  401cbe:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401cc4:	48 8b 15 7d 34 20 00 	mov    0x20347d(%rip),%rdx        # 605148 <lab>
  401ccb:	48 8b 35 7e 34 20 00 	mov    0x20347e(%rip),%rsi        # 605150 <course>
  401cd2:	48 8b 3d 67 34 20 00 	mov    0x203467(%rip),%rdi        # 605140 <user_id>
  401cd9:	e8 af 11 00 00       	callq  402e8d <driver_post>
  401cde:	85 c0                	test   %eax,%eax
  401ce0:	78 6f                	js     401d51 <notify_server+0x152>
  401ce2:	48 8d 3d 47 18 00 00 	lea    0x1847(%rip),%rdi        # 403530 <_IO_stdin_used+0x550>
  401ce9:	e8 d2 ef ff ff       	callq  400cc0 <puts@plt>
  401cee:	48 8d 3d 1e 17 00 00 	lea    0x171e(%rip),%rdi        # 403413 <_IO_stdin_used+0x433>
  401cf5:	e8 c6 ef ff ff       	callq  400cc0 <puts@plt>
  401cfa:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401d01:	00 
  401d02:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d09:	00 00 
  401d0b:	0f 85 07 01 00 00    	jne    401e18 <notify_server+0x219>
  401d11:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401d18:	5b                   	pop    %rbx
  401d19:	5d                   	pop    %rbp
  401d1a:	c3                   	retq   
  401d1b:	48 8d 35 de 17 00 00 	lea    0x17de(%rip),%rsi        # 403500 <_IO_stdin_used+0x520>
  401d22:	bf 01 00 00 00       	mov    $0x1,%edi
  401d27:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2c:	e8 af f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d31:	bf 01 00 00 00       	mov    $0x1,%edi
  401d36:	e8 f5 f0 ff ff       	callq  400e30 <exit@plt>
  401d3b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401d40:	e9 13 ff ff ff       	jmpq   401c58 <notify_server+0x59>
  401d45:	48 8d 2d 9a 16 00 00 	lea    0x169a(%rip),%rbp        # 4033e6 <_IO_stdin_used+0x406>
  401d4c:	e9 16 ff ff ff       	jmpq   401c67 <notify_server+0x68>
  401d51:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401d58:	00 
  401d59:	48 8d 35 a7 16 00 00 	lea    0x16a7(%rip),%rsi        # 403407 <_IO_stdin_used+0x427>
  401d60:	bf 01 00 00 00       	mov    $0x1,%edi
  401d65:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6a:	e8 71 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d74:	e8 b7 f0 ff ff       	callq  400e30 <exit@plt>
  401d79:	48 8d 3d 9d 16 00 00 	lea    0x169d(%rip),%rdi        # 40341d <_IO_stdin_used+0x43d>
  401d80:	e8 3b ef ff ff       	callq  400cc0 <puts@plt>
  401d85:	e9 70 ff ff ff       	jmpq   401cfa <notify_server+0xfb>
  401d8a:	48 89 ea             	mov    %rbp,%rdx
  401d8d:	48 8d 35 d4 17 00 00 	lea    0x17d4(%rip),%rsi        # 403568 <_IO_stdin_used+0x588>
  401d94:	bf 01 00 00 00       	mov    $0x1,%edi
  401d99:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9e:	e8 3d f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401da3:	48 8b 15 96 33 20 00 	mov    0x203396(%rip),%rdx        # 605140 <user_id>
  401daa:	48 8d 35 73 16 00 00 	lea    0x1673(%rip),%rsi        # 403424 <_IO_stdin_used+0x444>
  401db1:	bf 01 00 00 00       	mov    $0x1,%edi
  401db6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dbb:	e8 20 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401dc0:	48 8b 15 89 33 20 00 	mov    0x203389(%rip),%rdx        # 605150 <course>
  401dc7:	48 8d 35 63 16 00 00 	lea    0x1663(%rip),%rsi        # 403431 <_IO_stdin_used+0x451>
  401dce:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd8:	e8 03 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401ddd:	48 8b 15 64 33 20 00 	mov    0x203364(%rip),%rdx        # 605148 <lab>
  401de4:	48 8d 35 52 16 00 00 	lea    0x1652(%rip),%rsi        # 40343d <_IO_stdin_used+0x45d>
  401deb:	bf 01 00 00 00       	mov    $0x1,%edi
  401df0:	b8 00 00 00 00       	mov    $0x0,%eax
  401df5:	e8 e6 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401dfa:	48 89 e2             	mov    %rsp,%rdx
  401dfd:	48 8d 35 42 16 00 00 	lea    0x1642(%rip),%rsi        # 403446 <_IO_stdin_used+0x466>
  401e04:	bf 01 00 00 00       	mov    $0x1,%edi
  401e09:	b8 00 00 00 00       	mov    $0x0,%eax
  401e0e:	e8 cd ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e13:	e9 e2 fe ff ff       	jmpq   401cfa <notify_server+0xfb>
  401e18:	e8 c3 ee ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401e1d <validate>:
  401e1d:	53                   	push   %rbx
  401e1e:	89 fb                	mov    %edi,%ebx
  401e20:	83 3d e1 36 20 00 00 	cmpl   $0x0,0x2036e1(%rip)        # 605508 <is_checker>
  401e27:	74 72                	je     401e9b <validate+0x7e>
  401e29:	39 3d cd 36 20 00    	cmp    %edi,0x2036cd(%rip)        # 6054fc <vlevel>
  401e2f:	75 32                	jne    401e63 <validate+0x46>
  401e31:	8b 15 c1 36 20 00    	mov    0x2036c1(%rip),%edx        # 6054f8 <check_level>
  401e37:	39 fa                	cmp    %edi,%edx
  401e39:	75 3e                	jne    401e79 <validate+0x5c>
  401e3b:	0f be 15 e6 42 20 00 	movsbl 0x2042e6(%rip),%edx        # 606128 <target_prefix>
  401e42:	4c 8d 05 d7 36 20 00 	lea    0x2036d7(%rip),%r8        # 605520 <gets_buf>
  401e49:	89 f9                	mov    %edi,%ecx
  401e4b:	48 8d 35 1e 16 00 00 	lea    0x161e(%rip),%rsi        # 403470 <_IO_stdin_used+0x490>
  401e52:	bf 01 00 00 00       	mov    $0x1,%edi
  401e57:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5c:	e8 7f ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e61:	5b                   	pop    %rbx
  401e62:	c3                   	retq   
  401e63:	48 8d 3d e8 15 00 00 	lea    0x15e8(%rip),%rdi        # 403452 <_IO_stdin_used+0x472>
  401e6a:	e8 51 ee ff ff       	callq  400cc0 <puts@plt>
  401e6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e74:	e8 fc fc ff ff       	callq  401b75 <check_fail>
  401e79:	89 f9                	mov    %edi,%ecx
  401e7b:	48 8d 35 0e 17 00 00 	lea    0x170e(%rip),%rsi        # 403590 <_IO_stdin_used+0x5b0>
  401e82:	bf 01 00 00 00       	mov    $0x1,%edi
  401e87:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8c:	e8 4f ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e91:	b8 00 00 00 00       	mov    $0x0,%eax
  401e96:	e8 da fc ff ff       	callq  401b75 <check_fail>
  401e9b:	39 3d 5b 36 20 00    	cmp    %edi,0x20365b(%rip)        # 6054fc <vlevel>
  401ea1:	74 1a                	je     401ebd <validate+0xa0>
  401ea3:	48 8d 3d a8 15 00 00 	lea    0x15a8(%rip),%rdi        # 403452 <_IO_stdin_used+0x472>
  401eaa:	e8 11 ee ff ff       	callq  400cc0 <puts@plt>
  401eaf:	89 de                	mov    %ebx,%esi
  401eb1:	bf 00 00 00 00       	mov    $0x0,%edi
  401eb6:	e8 44 fd ff ff       	callq  401bff <notify_server>
  401ebb:	eb a4                	jmp    401e61 <validate+0x44>
  401ebd:	0f be 0d 64 42 20 00 	movsbl 0x204264(%rip),%ecx        # 606128 <target_prefix>
  401ec4:	89 fa                	mov    %edi,%edx
  401ec6:	48 8d 35 eb 16 00 00 	lea    0x16eb(%rip),%rsi        # 4035b8 <_IO_stdin_used+0x5d8>
  401ecd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 04 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401edc:	89 de                	mov    %ebx,%esi
  401ede:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee3:	e8 17 fd ff ff       	callq  401bff <notify_server>
  401ee8:	e9 74 ff ff ff       	jmpq   401e61 <validate+0x44>

0000000000401eed <fail>:
  401eed:	48 83 ec 08          	sub    $0x8,%rsp
  401ef1:	83 3d 10 36 20 00 00 	cmpl   $0x0,0x203610(%rip)        # 605508 <is_checker>
  401ef8:	75 11                	jne    401f0b <fail+0x1e>
  401efa:	89 fe                	mov    %edi,%esi
  401efc:	bf 00 00 00 00       	mov    $0x0,%edi
  401f01:	e8 f9 fc ff ff       	callq  401bff <notify_server>
  401f06:	48 83 c4 08          	add    $0x8,%rsp
  401f0a:	c3                   	retq   
  401f0b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f10:	e8 60 fc ff ff       	callq  401b75 <check_fail>

0000000000401f15 <bushandler>:
  401f15:	48 83 ec 08          	sub    $0x8,%rsp
  401f19:	83 3d e8 35 20 00 00 	cmpl   $0x0,0x2035e8(%rip)        # 605508 <is_checker>
  401f20:	74 16                	je     401f38 <bushandler+0x23>
  401f22:	48 8d 3d 5c 15 00 00 	lea    0x155c(%rip),%rdi        # 403485 <_IO_stdin_used+0x4a5>
  401f29:	e8 92 ed ff ff       	callq  400cc0 <puts@plt>
  401f2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f33:	e8 3d fc ff ff       	callq  401b75 <check_fail>
  401f38:	48 8d 3d b1 16 00 00 	lea    0x16b1(%rip),%rdi        # 4035f0 <_IO_stdin_used+0x610>
  401f3f:	e8 7c ed ff ff       	callq  400cc0 <puts@plt>
  401f44:	48 8d 3d 44 15 00 00 	lea    0x1544(%rip),%rdi        # 40348f <_IO_stdin_used+0x4af>
  401f4b:	e8 70 ed ff ff       	callq  400cc0 <puts@plt>
  401f50:	be 00 00 00 00       	mov    $0x0,%esi
  401f55:	bf 00 00 00 00       	mov    $0x0,%edi
  401f5a:	e8 a0 fc ff ff       	callq  401bff <notify_server>
  401f5f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f64:	e8 c7 ee ff ff       	callq  400e30 <exit@plt>

0000000000401f69 <seghandler>:
  401f69:	48 83 ec 08          	sub    $0x8,%rsp
  401f6d:	83 3d 94 35 20 00 00 	cmpl   $0x0,0x203594(%rip)        # 605508 <is_checker>
  401f74:	74 16                	je     401f8c <seghandler+0x23>
  401f76:	48 8d 3d 28 15 00 00 	lea    0x1528(%rip),%rdi        # 4034a5 <_IO_stdin_used+0x4c5>
  401f7d:	e8 3e ed ff ff       	callq  400cc0 <puts@plt>
  401f82:	b8 00 00 00 00       	mov    $0x0,%eax
  401f87:	e8 e9 fb ff ff       	callq  401b75 <check_fail>
  401f8c:	48 8d 3d 7d 16 00 00 	lea    0x167d(%rip),%rdi        # 403610 <_IO_stdin_used+0x630>
  401f93:	e8 28 ed ff ff       	callq  400cc0 <puts@plt>
  401f98:	48 8d 3d f0 14 00 00 	lea    0x14f0(%rip),%rdi        # 40348f <_IO_stdin_used+0x4af>
  401f9f:	e8 1c ed ff ff       	callq  400cc0 <puts@plt>
  401fa4:	be 00 00 00 00       	mov    $0x0,%esi
  401fa9:	bf 00 00 00 00       	mov    $0x0,%edi
  401fae:	e8 4c fc ff ff       	callq  401bff <notify_server>
  401fb3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb8:	e8 73 ee ff ff       	callq  400e30 <exit@plt>

0000000000401fbd <illegalhandler>:
  401fbd:	48 83 ec 08          	sub    $0x8,%rsp
  401fc1:	83 3d 40 35 20 00 00 	cmpl   $0x0,0x203540(%rip)        # 605508 <is_checker>
  401fc8:	74 16                	je     401fe0 <illegalhandler+0x23>
  401fca:	48 8d 3d e7 14 00 00 	lea    0x14e7(%rip),%rdi        # 4034b8 <_IO_stdin_used+0x4d8>
  401fd1:	e8 ea ec ff ff       	callq  400cc0 <puts@plt>
  401fd6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdb:	e8 95 fb ff ff       	callq  401b75 <check_fail>
  401fe0:	48 8d 3d 51 16 00 00 	lea    0x1651(%rip),%rdi        # 403638 <_IO_stdin_used+0x658>
  401fe7:	e8 d4 ec ff ff       	callq  400cc0 <puts@plt>
  401fec:	48 8d 3d 9c 14 00 00 	lea    0x149c(%rip),%rdi        # 40348f <_IO_stdin_used+0x4af>
  401ff3:	e8 c8 ec ff ff       	callq  400cc0 <puts@plt>
  401ff8:	be 00 00 00 00       	mov    $0x0,%esi
  401ffd:	bf 00 00 00 00       	mov    $0x0,%edi
  402002:	e8 f8 fb ff ff       	callq  401bff <notify_server>
  402007:	bf 01 00 00 00       	mov    $0x1,%edi
  40200c:	e8 1f ee ff ff       	callq  400e30 <exit@plt>

0000000000402011 <sigalrmhandler>:
  402011:	48 83 ec 08          	sub    $0x8,%rsp
  402015:	83 3d ec 34 20 00 00 	cmpl   $0x0,0x2034ec(%rip)        # 605508 <is_checker>
  40201c:	74 16                	je     402034 <sigalrmhandler+0x23>
  40201e:	48 8d 3d a7 14 00 00 	lea    0x14a7(%rip),%rdi        # 4034cc <_IO_stdin_used+0x4ec>
  402025:	e8 96 ec ff ff       	callq  400cc0 <puts@plt>
  40202a:	b8 00 00 00 00       	mov    $0x0,%eax
  40202f:	e8 41 fb ff ff       	callq  401b75 <check_fail>
  402034:	ba 05 00 00 00       	mov    $0x5,%edx
  402039:	48 8d 35 28 16 00 00 	lea    0x1628(%rip),%rsi        # 403668 <_IO_stdin_used+0x688>
  402040:	bf 01 00 00 00       	mov    $0x1,%edi
  402045:	b8 00 00 00 00       	mov    $0x0,%eax
  40204a:	e8 91 ed ff ff       	callq  400de0 <__printf_chk@plt>
  40204f:	be 00 00 00 00       	mov    $0x0,%esi
  402054:	bf 00 00 00 00       	mov    $0x0,%edi
  402059:	e8 a1 fb ff ff       	callq  401bff <notify_server>
  40205e:	bf 01 00 00 00       	mov    $0x1,%edi
  402063:	e8 c8 ed ff ff       	callq  400e30 <exit@plt>

0000000000402068 <launch>:
  402068:	55                   	push   %rbp
  402069:	48 89 e5             	mov    %rsp,%rbp
  40206c:	48 83 ec 10          	sub    $0x10,%rsp
  402070:	48 89 fa             	mov    %rdi,%rdx
  402073:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40207a:	00 00 
  40207c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402080:	31 c0                	xor    %eax,%eax
  402082:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402086:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40208a:	48 29 c4             	sub    %rax,%rsp
  40208d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402092:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402096:	be f4 00 00 00       	mov    $0xf4,%esi
  40209b:	e8 60 ec ff ff       	callq  400d00 <memset@plt>
  4020a0:	48 8b 05 f9 33 20 00 	mov    0x2033f9(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4020a7:	48 39 05 42 34 20 00 	cmp    %rax,0x203442(%rip)        # 6054f0 <infile>
  4020ae:	74 3a                	je     4020ea <launch+0x82>
  4020b0:	c7 05 42 34 20 00 00 	movl   $0x0,0x203442(%rip)        # 6054fc <vlevel>
  4020b7:	00 00 00 
  4020ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4020bf:	e8 16 fa ff ff       	callq  401ada <test>
  4020c4:	83 3d 3d 34 20 00 00 	cmpl   $0x0,0x20343d(%rip)        # 605508 <is_checker>
  4020cb:	75 35                	jne    402102 <launch+0x9a>
  4020cd:	48 8d 3d 18 14 00 00 	lea    0x1418(%rip),%rdi        # 4034ec <_IO_stdin_used+0x50c>
  4020d4:	e8 e7 eb ff ff       	callq  400cc0 <puts@plt>
  4020d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020dd:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4020e4:	00 00 
  4020e6:	75 30                	jne    402118 <launch+0xb0>
  4020e8:	c9                   	leaveq 
  4020e9:	c3                   	retq   
  4020ea:	48 8d 35 e3 13 00 00 	lea    0x13e3(%rip),%rsi        # 4034d4 <_IO_stdin_used+0x4f4>
  4020f1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fb:	e8 e0 ec ff ff       	callq  400de0 <__printf_chk@plt>
  402100:	eb ae                	jmp    4020b0 <launch+0x48>
  402102:	48 8d 3d d8 13 00 00 	lea    0x13d8(%rip),%rdi        # 4034e1 <_IO_stdin_used+0x501>
  402109:	e8 b2 eb ff ff       	callq  400cc0 <puts@plt>
  40210e:	b8 00 00 00 00       	mov    $0x0,%eax
  402113:	e8 5d fa ff ff       	callq  401b75 <check_fail>
  402118:	e8 c3 eb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040211d <stable_launch>:
  40211d:	53                   	push   %rbx
  40211e:	48 89 3d c3 33 20 00 	mov    %rdi,0x2033c3(%rip)        # 6054e8 <global_offset>
  402125:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40212b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402131:	b9 32 01 00 00       	mov    $0x132,%ecx
  402136:	ba 07 00 00 00       	mov    $0x7,%edx
  40213b:	be 00 00 10 00       	mov    $0x100000,%esi
  402140:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402145:	e8 a6 eb ff ff       	callq  400cf0 <mmap@plt>
  40214a:	48 89 c3             	mov    %rax,%rbx
  40214d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402153:	75 43                	jne    402198 <stable_launch+0x7b>
  402155:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40215c:	48 89 15 cd 3f 20 00 	mov    %rdx,0x203fcd(%rip)        # 606130 <stack_top>
  402163:	48 89 e0             	mov    %rsp,%rax
  402166:	48 89 d4             	mov    %rdx,%rsp
  402169:	48 89 c2             	mov    %rax,%rdx
  40216c:	48 89 15 6d 33 20 00 	mov    %rdx,0x20336d(%rip)        # 6054e0 <global_save_stack>
  402173:	48 8b 3d 6e 33 20 00 	mov    0x20336e(%rip),%rdi        # 6054e8 <global_offset>
  40217a:	e8 e9 fe ff ff       	callq  402068 <launch>
  40217f:	48 8b 05 5a 33 20 00 	mov    0x20335a(%rip),%rax        # 6054e0 <global_save_stack>
  402186:	48 89 c4             	mov    %rax,%rsp
  402189:	be 00 00 10 00       	mov    $0x100000,%esi
  40218e:	48 89 df             	mov    %rbx,%rdi
  402191:	e8 3a ec ff ff       	callq  400dd0 <munmap@plt>
  402196:	5b                   	pop    %rbx
  402197:	c3                   	retq   
  402198:	be 00 00 10 00       	mov    $0x100000,%esi
  40219d:	48 89 c7             	mov    %rax,%rdi
  4021a0:	e8 2b ec ff ff       	callq  400dd0 <munmap@plt>
  4021a5:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4021aa:	48 8d 15 ef 14 00 00 	lea    0x14ef(%rip),%rdx        # 4036a0 <_IO_stdin_used+0x6c0>
  4021b1:	be 01 00 00 00       	mov    $0x1,%esi
  4021b6:	48 8b 3d 03 33 20 00 	mov    0x203303(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  4021bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c2:	e8 89 ec ff ff       	callq  400e50 <__fprintf_chk@plt>
  4021c7:	bf 01 00 00 00       	mov    $0x1,%edi
  4021cc:	e8 5f ec ff ff       	callq  400e30 <exit@plt>

00000000004021d1 <rio_readinitb>:
  4021d1:	89 37                	mov    %esi,(%rdi)
  4021d3:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4021da:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4021de:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4021e2:	c3                   	retq   

00000000004021e3 <sigalrm_handler>:
  4021e3:	48 83 ec 08          	sub    $0x8,%rsp
  4021e7:	b9 00 00 00 00       	mov    $0x0,%ecx
  4021ec:	48 8d 15 ed 14 00 00 	lea    0x14ed(%rip),%rdx        # 4036e0 <trans_char+0x10>
  4021f3:	be 01 00 00 00       	mov    $0x1,%esi
  4021f8:	48 8b 3d c1 32 20 00 	mov    0x2032c1(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  4021ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402204:	e8 47 ec ff ff       	callq  400e50 <__fprintf_chk@plt>
  402209:	bf 01 00 00 00       	mov    $0x1,%edi
  40220e:	e8 1d ec ff ff       	callq  400e30 <exit@plt>

0000000000402213 <rio_writen>:
  402213:	41 55                	push   %r13
  402215:	41 54                	push   %r12
  402217:	55                   	push   %rbp
  402218:	53                   	push   %rbx
  402219:	48 83 ec 08          	sub    $0x8,%rsp
  40221d:	41 89 fc             	mov    %edi,%r12d
  402220:	48 89 f5             	mov    %rsi,%rbp
  402223:	49 89 d5             	mov    %rdx,%r13
  402226:	48 89 d3             	mov    %rdx,%rbx
  402229:	eb 06                	jmp    402231 <rio_writen+0x1e>
  40222b:	48 29 c3             	sub    %rax,%rbx
  40222e:	48 01 c5             	add    %rax,%rbp
  402231:	48 85 db             	test   %rbx,%rbx
  402234:	74 24                	je     40225a <rio_writen+0x47>
  402236:	48 89 da             	mov    %rbx,%rdx
  402239:	48 89 ee             	mov    %rbp,%rsi
  40223c:	44 89 e7             	mov    %r12d,%edi
  40223f:	e8 8c ea ff ff       	callq  400cd0 <write@plt>
  402244:	48 85 c0             	test   %rax,%rax
  402247:	7f e2                	jg     40222b <rio_writen+0x18>
  402249:	e8 32 ea ff ff       	callq  400c80 <__errno_location@plt>
  40224e:	83 38 04             	cmpl   $0x4,(%rax)
  402251:	75 15                	jne    402268 <rio_writen+0x55>
  402253:	b8 00 00 00 00       	mov    $0x0,%eax
  402258:	eb d1                	jmp    40222b <rio_writen+0x18>
  40225a:	4c 89 e8             	mov    %r13,%rax
  40225d:	48 83 c4 08          	add    $0x8,%rsp
  402261:	5b                   	pop    %rbx
  402262:	5d                   	pop    %rbp
  402263:	41 5c                	pop    %r12
  402265:	41 5d                	pop    %r13
  402267:	c3                   	retq   
  402268:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40226f:	eb ec                	jmp    40225d <rio_writen+0x4a>

0000000000402271 <rio_read>:
  402271:	41 55                	push   %r13
  402273:	41 54                	push   %r12
  402275:	55                   	push   %rbp
  402276:	53                   	push   %rbx
  402277:	48 83 ec 08          	sub    $0x8,%rsp
  40227b:	48 89 fb             	mov    %rdi,%rbx
  40227e:	49 89 f5             	mov    %rsi,%r13
  402281:	49 89 d4             	mov    %rdx,%r12
  402284:	eb 0a                	jmp    402290 <rio_read+0x1f>
  402286:	e8 f5 e9 ff ff       	callq  400c80 <__errno_location@plt>
  40228b:	83 38 04             	cmpl   $0x4,(%rax)
  40228e:	75 5c                	jne    4022ec <rio_read+0x7b>
  402290:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402293:	85 ed                	test   %ebp,%ebp
  402295:	7f 24                	jg     4022bb <rio_read+0x4a>
  402297:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40229b:	8b 3b                	mov    (%rbx),%edi
  40229d:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022a2:	48 89 ee             	mov    %rbp,%rsi
  4022a5:	e8 86 ea ff ff       	callq  400d30 <read@plt>
  4022aa:	89 43 04             	mov    %eax,0x4(%rbx)
  4022ad:	85 c0                	test   %eax,%eax
  4022af:	78 d5                	js     402286 <rio_read+0x15>
  4022b1:	85 c0                	test   %eax,%eax
  4022b3:	74 40                	je     4022f5 <rio_read+0x84>
  4022b5:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4022b9:	eb d5                	jmp    402290 <rio_read+0x1f>
  4022bb:	89 e8                	mov    %ebp,%eax
  4022bd:	4c 39 e0             	cmp    %r12,%rax
  4022c0:	72 03                	jb     4022c5 <rio_read+0x54>
  4022c2:	44 89 e5             	mov    %r12d,%ebp
  4022c5:	4c 63 e5             	movslq %ebp,%r12
  4022c8:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4022cc:	4c 89 e2             	mov    %r12,%rdx
  4022cf:	4c 89 ef             	mov    %r13,%rdi
  4022d2:	e8 a9 ea ff ff       	callq  400d80 <memcpy@plt>
  4022d7:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4022db:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4022de:	4c 89 e0             	mov    %r12,%rax
  4022e1:	48 83 c4 08          	add    $0x8,%rsp
  4022e5:	5b                   	pop    %rbx
  4022e6:	5d                   	pop    %rbp
  4022e7:	41 5c                	pop    %r12
  4022e9:	41 5d                	pop    %r13
  4022eb:	c3                   	retq   
  4022ec:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022f3:	eb ec                	jmp    4022e1 <rio_read+0x70>
  4022f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4022fa:	eb e5                	jmp    4022e1 <rio_read+0x70>

00000000004022fc <rio_readlineb>:
  4022fc:	41 55                	push   %r13
  4022fe:	41 54                	push   %r12
  402300:	55                   	push   %rbp
  402301:	53                   	push   %rbx
  402302:	48 83 ec 18          	sub    $0x18,%rsp
  402306:	49 89 fd             	mov    %rdi,%r13
  402309:	48 89 f5             	mov    %rsi,%rbp
  40230c:	49 89 d4             	mov    %rdx,%r12
  40230f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402316:	00 00 
  402318:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40231d:	31 c0                	xor    %eax,%eax
  40231f:	bb 01 00 00 00       	mov    $0x1,%ebx
  402324:	4c 39 e3             	cmp    %r12,%rbx
  402327:	73 47                	jae    402370 <rio_readlineb+0x74>
  402329:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40232e:	ba 01 00 00 00       	mov    $0x1,%edx
  402333:	4c 89 ef             	mov    %r13,%rdi
  402336:	e8 36 ff ff ff       	callq  402271 <rio_read>
  40233b:	83 f8 01             	cmp    $0x1,%eax
  40233e:	75 1c                	jne    40235c <rio_readlineb+0x60>
  402340:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402344:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402349:	88 55 00             	mov    %dl,0x0(%rbp)
  40234c:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402351:	74 1a                	je     40236d <rio_readlineb+0x71>
  402353:	48 83 c3 01          	add    $0x1,%rbx
  402357:	48 89 c5             	mov    %rax,%rbp
  40235a:	eb c8                	jmp    402324 <rio_readlineb+0x28>
  40235c:	85 c0                	test   %eax,%eax
  40235e:	75 32                	jne    402392 <rio_readlineb+0x96>
  402360:	48 83 fb 01          	cmp    $0x1,%rbx
  402364:	75 0a                	jne    402370 <rio_readlineb+0x74>
  402366:	b8 00 00 00 00       	mov    $0x0,%eax
  40236b:	eb 0a                	jmp    402377 <rio_readlineb+0x7b>
  40236d:	48 89 c5             	mov    %rax,%rbp
  402370:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402374:	48 89 d8             	mov    %rbx,%rax
  402377:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40237c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402383:	00 00 
  402385:	75 14                	jne    40239b <rio_readlineb+0x9f>
  402387:	48 83 c4 18          	add    $0x18,%rsp
  40238b:	5b                   	pop    %rbx
  40238c:	5d                   	pop    %rbp
  40238d:	41 5c                	pop    %r12
  40238f:	41 5d                	pop    %r13
  402391:	c3                   	retq   
  402392:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402399:	eb dc                	jmp    402377 <rio_readlineb+0x7b>
  40239b:	e8 40 e9 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004023a0 <urlencode>:
  4023a0:	41 54                	push   %r12
  4023a2:	55                   	push   %rbp
  4023a3:	53                   	push   %rbx
  4023a4:	48 83 ec 10          	sub    $0x10,%rsp
  4023a8:	48 89 fb             	mov    %rdi,%rbx
  4023ab:	48 89 f5             	mov    %rsi,%rbp
  4023ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023b5:	00 00 
  4023b7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4023bc:	31 c0                	xor    %eax,%eax
  4023be:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023c5:	f2 ae                	repnz scas %es:(%rdi),%al
  4023c7:	48 89 ce             	mov    %rcx,%rsi
  4023ca:	48 f7 d6             	not    %rsi
  4023cd:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4023d0:	eb 0f                	jmp    4023e1 <urlencode+0x41>
  4023d2:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4023d6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023da:	48 83 c3 01          	add    $0x1,%rbx
  4023de:	44 89 e0             	mov    %r12d,%eax
  4023e1:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4023e5:	85 c0                	test   %eax,%eax
  4023e7:	0f 84 a8 00 00 00    	je     402495 <urlencode+0xf5>
  4023ed:	44 0f b6 03          	movzbl (%rbx),%r8d
  4023f1:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4023f5:	0f 94 c2             	sete   %dl
  4023f8:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4023fc:	0f 94 c0             	sete   %al
  4023ff:	08 c2                	or     %al,%dl
  402401:	75 cf                	jne    4023d2 <urlencode+0x32>
  402403:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402407:	74 c9                	je     4023d2 <urlencode+0x32>
  402409:	41 80 f8 5f          	cmp    $0x5f,%r8b
  40240d:	74 c3                	je     4023d2 <urlencode+0x32>
  40240f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402413:	3c 09                	cmp    $0x9,%al
  402415:	76 bb                	jbe    4023d2 <urlencode+0x32>
  402417:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40241b:	3c 19                	cmp    $0x19,%al
  40241d:	76 b3                	jbe    4023d2 <urlencode+0x32>
  40241f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402423:	3c 19                	cmp    $0x19,%al
  402425:	76 ab                	jbe    4023d2 <urlencode+0x32>
  402427:	41 80 f8 20          	cmp    $0x20,%r8b
  40242b:	74 56                	je     402483 <urlencode+0xe3>
  40242d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402431:	3c 5f                	cmp    $0x5f,%al
  402433:	0f 96 c2             	setbe  %dl
  402436:	41 80 f8 09          	cmp    $0x9,%r8b
  40243a:	0f 94 c0             	sete   %al
  40243d:	08 c2                	or     %al,%dl
  40243f:	74 4f                	je     402490 <urlencode+0xf0>
  402441:	48 89 e7             	mov    %rsp,%rdi
  402444:	45 0f b6 c0          	movzbl %r8b,%r8d
  402448:	48 8d 0d 29 13 00 00 	lea    0x1329(%rip),%rcx        # 403778 <trans_char+0xa8>
  40244f:	ba 08 00 00 00       	mov    $0x8,%edx
  402454:	be 01 00 00 00       	mov    $0x1,%esi
  402459:	b8 00 00 00 00       	mov    $0x0,%eax
  40245e:	e8 fd e9 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402463:	0f b6 04 24          	movzbl (%rsp),%eax
  402467:	88 45 00             	mov    %al,0x0(%rbp)
  40246a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40246f:	88 45 01             	mov    %al,0x1(%rbp)
  402472:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402477:	88 45 02             	mov    %al,0x2(%rbp)
  40247a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40247e:	e9 57 ff ff ff       	jmpq   4023da <urlencode+0x3a>
  402483:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402487:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40248b:	e9 4a ff ff ff       	jmpq   4023da <urlencode+0x3a>
  402490:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402495:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40249a:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4024a1:	00 00 
  4024a3:	75 09                	jne    4024ae <urlencode+0x10e>
  4024a5:	48 83 c4 10          	add    $0x10,%rsp
  4024a9:	5b                   	pop    %rbx
  4024aa:	5d                   	pop    %rbp
  4024ab:	41 5c                	pop    %r12
  4024ad:	c3                   	retq   
  4024ae:	e8 2d e8 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004024b3 <submitr>:
  4024b3:	41 57                	push   %r15
  4024b5:	41 56                	push   %r14
  4024b7:	41 55                	push   %r13
  4024b9:	41 54                	push   %r12
  4024bb:	55                   	push   %rbp
  4024bc:	53                   	push   %rbx
  4024bd:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4024c4:	49 89 fd             	mov    %rdi,%r13
  4024c7:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4024cb:	49 89 d7             	mov    %rdx,%r15
  4024ce:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  4024d3:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4024d8:	4d 89 ce             	mov    %r9,%r14
  4024db:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  4024e2:	00 
  4024e3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024ea:	00 00 
  4024ec:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4024f3:	00 
  4024f4:	31 c0                	xor    %eax,%eax
  4024f6:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4024fd:	00 
  4024fe:	ba 00 00 00 00       	mov    $0x0,%edx
  402503:	be 01 00 00 00       	mov    $0x1,%esi
  402508:	bf 02 00 00 00       	mov    $0x2,%edi
  40250d:	e8 5e e9 ff ff       	callq  400e70 <socket@plt>
  402512:	85 c0                	test   %eax,%eax
  402514:	0f 88 a9 02 00 00    	js     4027c3 <submitr+0x310>
  40251a:	89 c3                	mov    %eax,%ebx
  40251c:	4c 89 ef             	mov    %r13,%rdi
  40251f:	e8 2c e8 ff ff       	callq  400d50 <gethostbyname@plt>
  402524:	48 85 c0             	test   %rax,%rax
  402527:	0f 84 e2 02 00 00    	je     40280f <submitr+0x35c>
  40252d:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402532:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  402539:	00 00 
  40253b:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  402542:	00 
  402543:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  40254a:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402551:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402555:	48 8b 40 18          	mov    0x18(%rax),%rax
  402559:	48 8b 30             	mov    (%rax),%rsi
  40255c:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402561:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402566:	e8 f5 e7 ff ff       	callq  400d60 <__memmove_chk@plt>
  40256b:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402570:	66 c1 c8 08          	ror    $0x8,%ax
  402574:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402579:	ba 10 00 00 00       	mov    $0x10,%edx
  40257e:	4c 89 e6             	mov    %r12,%rsi
  402581:	89 df                	mov    %ebx,%edi
  402583:	e8 b8 e8 ff ff       	callq  400e40 <connect@plt>
  402588:	85 c0                	test   %eax,%eax
  40258a:	0f 88 e7 02 00 00    	js     402877 <submitr+0x3c4>
  402590:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402597:	b8 00 00 00 00       	mov    $0x0,%eax
  40259c:	48 89 f1             	mov    %rsi,%rcx
  40259f:	4c 89 f7             	mov    %r14,%rdi
  4025a2:	f2 ae                	repnz scas %es:(%rdi),%al
  4025a4:	48 89 ca             	mov    %rcx,%rdx
  4025a7:	48 f7 d2             	not    %rdx
  4025aa:	48 89 f1             	mov    %rsi,%rcx
  4025ad:	4c 89 ff             	mov    %r15,%rdi
  4025b0:	f2 ae                	repnz scas %es:(%rdi),%al
  4025b2:	48 f7 d1             	not    %rcx
  4025b5:	49 89 c8             	mov    %rcx,%r8
  4025b8:	48 89 f1             	mov    %rsi,%rcx
  4025bb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4025c0:	f2 ae                	repnz scas %es:(%rdi),%al
  4025c2:	48 f7 d1             	not    %rcx
  4025c5:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4025ca:	48 89 f1             	mov    %rsi,%rcx
  4025cd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4025d2:	f2 ae                	repnz scas %es:(%rdi),%al
  4025d4:	48 89 c8             	mov    %rcx,%rax
  4025d7:	48 f7 d0             	not    %rax
  4025da:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4025df:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4025e4:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4025eb:	00 
  4025ec:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4025f2:	0f 87 d9 02 00 00    	ja     4028d1 <submitr+0x41e>
  4025f8:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4025ff:	00 
  402600:	b9 00 04 00 00       	mov    $0x400,%ecx
  402605:	b8 00 00 00 00       	mov    $0x0,%eax
  40260a:	48 89 f7             	mov    %rsi,%rdi
  40260d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402610:	4c 89 f7             	mov    %r14,%rdi
  402613:	e8 88 fd ff ff       	callq  4023a0 <urlencode>
  402618:	85 c0                	test   %eax,%eax
  40261a:	0f 88 24 03 00 00    	js     402944 <submitr+0x491>
  402620:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  402627:	00 
  402628:	41 55                	push   %r13
  40262a:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402631:	00 
  402632:	50                   	push   %rax
  402633:	4d 89 f9             	mov    %r15,%r9
  402636:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40263b:	48 8d 0d c6 10 00 00 	lea    0x10c6(%rip),%rcx        # 403708 <trans_char+0x38>
  402642:	ba 00 20 00 00       	mov    $0x2000,%edx
  402647:	be 01 00 00 00       	mov    $0x1,%esi
  40264c:	4c 89 e7             	mov    %r12,%rdi
  40264f:	b8 00 00 00 00       	mov    $0x0,%eax
  402654:	e8 07 e8 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402659:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402660:	b8 00 00 00 00       	mov    $0x0,%eax
  402665:	4c 89 e7             	mov    %r12,%rdi
  402668:	f2 ae                	repnz scas %es:(%rdi),%al
  40266a:	48 89 ca             	mov    %rcx,%rdx
  40266d:	48 f7 d2             	not    %rdx
  402670:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402674:	4c 89 e6             	mov    %r12,%rsi
  402677:	89 df                	mov    %ebx,%edi
  402679:	e8 95 fb ff ff       	callq  402213 <rio_writen>
  40267e:	48 83 c4 10          	add    $0x10,%rsp
  402682:	48 85 c0             	test   %rax,%rax
  402685:	0f 88 44 03 00 00    	js     4029cf <submitr+0x51c>
  40268b:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402690:	89 de                	mov    %ebx,%esi
  402692:	4c 89 e7             	mov    %r12,%rdi
  402695:	e8 37 fb ff ff       	callq  4021d1 <rio_readinitb>
  40269a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4026a1:	00 
  4026a2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026a7:	4c 89 e7             	mov    %r12,%rdi
  4026aa:	e8 4d fc ff ff       	callq  4022fc <rio_readlineb>
  4026af:	48 85 c0             	test   %rax,%rax
  4026b2:	0f 8e 86 03 00 00    	jle    402a3e <submitr+0x58b>
  4026b8:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4026bd:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  4026c4:	00 
  4026c5:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  4026cc:	00 
  4026cd:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4026d4:	00 
  4026d5:	48 8d 35 a3 10 00 00 	lea    0x10a3(%rip),%rsi        # 40377f <trans_char+0xaf>
  4026dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4026e1:	e8 da e6 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  4026e6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4026ed:	00 
  4026ee:	b9 03 00 00 00       	mov    $0x3,%ecx
  4026f3:	48 8d 3d 9c 10 00 00 	lea    0x109c(%rip),%rdi        # 403796 <trans_char+0xc6>
  4026fa:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4026fc:	0f 97 c0             	seta   %al
  4026ff:	1c 00                	sbb    $0x0,%al
  402701:	84 c0                	test   %al,%al
  402703:	0f 84 b3 03 00 00    	je     402abc <submitr+0x609>
  402709:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402710:	00 
  402711:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402716:	ba 00 20 00 00       	mov    $0x2000,%edx
  40271b:	e8 dc fb ff ff       	callq  4022fc <rio_readlineb>
  402720:	48 85 c0             	test   %rax,%rax
  402723:	7f c1                	jg     4026e6 <submitr+0x233>
  402725:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40272c:	3a 20 43 
  40272f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402736:	20 75 6e 
  402739:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40273d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402741:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402748:	74 6f 20 
  40274b:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402752:	68 65 61 
  402755:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402759:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40275d:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402764:	66 72 6f 
  402767:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  40276e:	20 72 65 
  402771:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402775:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402779:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402780:	73 65 72 
  402783:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402787:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  40278e:	89 df                	mov    %ebx,%edi
  402790:	e8 8b e5 ff ff       	callq  400d20 <close@plt>
  402795:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40279a:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  4027a1:	00 
  4027a2:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4027a9:	00 00 
  4027ab:	0f 85 7e 04 00 00    	jne    402c2f <submitr+0x77c>
  4027b1:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  4027b8:	5b                   	pop    %rbx
  4027b9:	5d                   	pop    %rbp
  4027ba:	41 5c                	pop    %r12
  4027bc:	41 5d                	pop    %r13
  4027be:	41 5e                	pop    %r14
  4027c0:	41 5f                	pop    %r15
  4027c2:	c3                   	retq   
  4027c3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027ca:	3a 20 43 
  4027cd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4027d4:	20 75 6e 
  4027d7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027db:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027df:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027e6:	74 6f 20 
  4027e9:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4027f0:	65 20 73 
  4027f3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027f7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027fb:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402802:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402808:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40280d:	eb 8b                	jmp    40279a <submitr+0x2e7>
  40280f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402816:	3a 20 44 
  402819:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402820:	20 75 6e 
  402823:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402827:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40282b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402832:	74 6f 20 
  402835:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40283c:	76 65 20 
  40283f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402843:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402847:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40284e:	72 20 61 
  402851:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402855:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40285c:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402862:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402866:	89 df                	mov    %ebx,%edi
  402868:	e8 b3 e4 ff ff       	callq  400d20 <close@plt>
  40286d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402872:	e9 23 ff ff ff       	jmpq   40279a <submitr+0x2e7>
  402877:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40287e:	3a 20 55 
  402881:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402888:	20 74 6f 
  40288b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40288f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402893:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40289a:	65 63 74 
  40289d:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4028a4:	68 65 20 
  4028a7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028ab:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028af:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4028b6:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  4028bc:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  4028c0:	89 df                	mov    %ebx,%edi
  4028c2:	e8 59 e4 ff ff       	callq  400d20 <close@plt>
  4028c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028cc:	e9 c9 fe ff ff       	jmpq   40279a <submitr+0x2e7>
  4028d1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4028d8:	3a 20 52 
  4028db:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4028e2:	20 73 74 
  4028e5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028e9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028ed:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4028f4:	74 6f 6f 
  4028f7:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4028fe:	65 2e 20 
  402901:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402905:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402909:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402910:	61 73 65 
  402913:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40291a:	49 54 52 
  40291d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402921:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402925:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40292c:	55 46 00 
  40292f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402933:	89 df                	mov    %ebx,%edi
  402935:	e8 e6 e3 ff ff       	callq  400d20 <close@plt>
  40293a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40293f:	e9 56 fe ff ff       	jmpq   40279a <submitr+0x2e7>
  402944:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40294b:	3a 20 52 
  40294e:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402955:	20 73 74 
  402958:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40295c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402960:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402967:	63 6f 6e 
  40296a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402971:	20 61 6e 
  402974:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402978:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40297c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402983:	67 61 6c 
  402986:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40298d:	6e 70 72 
  402990:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402994:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402998:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40299f:	6c 65 20 
  4029a2:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4029a9:	63 74 65 
  4029ac:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029b0:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4029b4:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  4029ba:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4029be:	89 df                	mov    %ebx,%edi
  4029c0:	e8 5b e3 ff ff       	callq  400d20 <close@plt>
  4029c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ca:	e9 cb fd ff ff       	jmpq   40279a <submitr+0x2e7>
  4029cf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029d6:	3a 20 43 
  4029d9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029e0:	20 75 6e 
  4029e3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029e7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029eb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029f2:	74 6f 20 
  4029f5:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4029fc:	20 74 6f 
  4029ff:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a03:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a07:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402a0e:	72 65 73 
  402a11:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402a18:	65 72 76 
  402a1b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a1f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a23:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402a29:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402a2d:	89 df                	mov    %ebx,%edi
  402a2f:	e8 ec e2 ff ff       	callq  400d20 <close@plt>
  402a34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a39:	e9 5c fd ff ff       	jmpq   40279a <submitr+0x2e7>
  402a3e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a45:	3a 20 43 
  402a48:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a4f:	20 75 6e 
  402a52:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a56:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a5a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a61:	74 6f 20 
  402a64:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402a6b:	66 69 72 
  402a6e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a72:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a76:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402a7d:	61 64 65 
  402a80:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402a87:	6d 20 72 
  402a8a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a8e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a92:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402a99:	20 73 65 
  402a9c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402aa0:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402aa7:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402aab:	89 df                	mov    %ebx,%edi
  402aad:	e8 6e e2 ff ff       	callq  400d20 <close@plt>
  402ab2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ab7:	e9 de fc ff ff       	jmpq   40279a <submitr+0x2e7>
  402abc:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ac3:	00 
  402ac4:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402ac9:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ace:	e8 29 f8 ff ff       	callq  4022fc <rio_readlineb>
  402ad3:	48 85 c0             	test   %rax,%rax
  402ad6:	0f 8e 96 00 00 00    	jle    402b72 <submitr+0x6bf>
  402adc:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402ae1:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402ae8:	0f 85 08 01 00 00    	jne    402bf6 <submitr+0x743>
  402aee:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402af5:	00 
  402af6:	48 89 ef             	mov    %rbp,%rdi
  402af9:	e8 b2 e1 ff ff       	callq  400cb0 <strcpy@plt>
  402afe:	89 df                	mov    %ebx,%edi
  402b00:	e8 1b e2 ff ff       	callq  400d20 <close@plt>
  402b05:	b9 04 00 00 00       	mov    $0x4,%ecx
  402b0a:	48 8d 3d 7f 0c 00 00 	lea    0xc7f(%rip),%rdi        # 403790 <trans_char+0xc0>
  402b11:	48 89 ee             	mov    %rbp,%rsi
  402b14:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b16:	0f 97 c0             	seta   %al
  402b19:	1c 00                	sbb    $0x0,%al
  402b1b:	0f be c0             	movsbl %al,%eax
  402b1e:	85 c0                	test   %eax,%eax
  402b20:	0f 84 74 fc ff ff    	je     40279a <submitr+0x2e7>
  402b26:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b2b:	48 8d 3d 62 0c 00 00 	lea    0xc62(%rip),%rdi        # 403794 <trans_char+0xc4>
  402b32:	48 89 ee             	mov    %rbp,%rsi
  402b35:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b37:	0f 97 c0             	seta   %al
  402b3a:	1c 00                	sbb    $0x0,%al
  402b3c:	0f be c0             	movsbl %al,%eax
  402b3f:	85 c0                	test   %eax,%eax
  402b41:	0f 84 53 fc ff ff    	je     40279a <submitr+0x2e7>
  402b47:	b9 03 00 00 00       	mov    $0x3,%ecx
  402b4c:	48 8d 3d 46 0c 00 00 	lea    0xc46(%rip),%rdi        # 403799 <trans_char+0xc9>
  402b53:	48 89 ee             	mov    %rbp,%rsi
  402b56:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b58:	0f 97 c0             	seta   %al
  402b5b:	1c 00                	sbb    $0x0,%al
  402b5d:	0f be c0             	movsbl %al,%eax
  402b60:	85 c0                	test   %eax,%eax
  402b62:	0f 84 32 fc ff ff    	je     40279a <submitr+0x2e7>
  402b68:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b6d:	e9 28 fc ff ff       	jmpq   40279a <submitr+0x2e7>
  402b72:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b79:	3a 20 43 
  402b7c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b83:	20 75 6e 
  402b86:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b8a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b8e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b95:	74 6f 20 
  402b98:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402b9f:	73 74 61 
  402ba2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ba6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402baa:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402bb1:	65 73 73 
  402bb4:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402bbb:	72 6f 6d 
  402bbe:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bc2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bc6:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402bcd:	6c 74 20 
  402bd0:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402bd4:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402bdb:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402be1:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402be5:	89 df                	mov    %ebx,%edi
  402be7:	e8 34 e1 ff ff       	callq  400d20 <close@plt>
  402bec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf1:	e9 a4 fb ff ff       	jmpq   40279a <submitr+0x2e7>
  402bf6:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402bfd:	00 
  402bfe:	48 8d 0d 43 0b 00 00 	lea    0xb43(%rip),%rcx        # 403748 <trans_char+0x78>
  402c05:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402c0c:	be 01 00 00 00       	mov    $0x1,%esi
  402c11:	48 89 ef             	mov    %rbp,%rdi
  402c14:	b8 00 00 00 00       	mov    $0x0,%eax
  402c19:	e8 42 e2 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402c1e:	89 df                	mov    %ebx,%edi
  402c20:	e8 fb e0 ff ff       	callq  400d20 <close@plt>
  402c25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c2a:	e9 6b fb ff ff       	jmpq   40279a <submitr+0x2e7>
  402c2f:	e8 ac e0 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402c34 <init_timeout>:
  402c34:	85 ff                	test   %edi,%edi
  402c36:	74 28                	je     402c60 <init_timeout+0x2c>
  402c38:	53                   	push   %rbx
  402c39:	89 fb                	mov    %edi,%ebx
  402c3b:	85 ff                	test   %edi,%edi
  402c3d:	78 1a                	js     402c59 <init_timeout+0x25>
  402c3f:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 4021e3 <sigalrm_handler>
  402c46:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c4b:	e8 f0 e0 ff ff       	callq  400d40 <signal@plt>
  402c50:	89 df                	mov    %ebx,%edi
  402c52:	e8 b9 e0 ff ff       	callq  400d10 <alarm@plt>
  402c57:	5b                   	pop    %rbx
  402c58:	c3                   	retq   
  402c59:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c5e:	eb df                	jmp    402c3f <init_timeout+0xb>
  402c60:	f3 c3                	repz retq 

0000000000402c62 <init_driver>:
  402c62:	41 54                	push   %r12
  402c64:	55                   	push   %rbp
  402c65:	53                   	push   %rbx
  402c66:	48 83 ec 20          	sub    $0x20,%rsp
  402c6a:	49 89 fc             	mov    %rdi,%r12
  402c6d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c74:	00 00 
  402c76:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c7b:	31 c0                	xor    %eax,%eax
  402c7d:	be 01 00 00 00       	mov    $0x1,%esi
  402c82:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c87:	e8 b4 e0 ff ff       	callq  400d40 <signal@plt>
  402c8c:	be 01 00 00 00       	mov    $0x1,%esi
  402c91:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c96:	e8 a5 e0 ff ff       	callq  400d40 <signal@plt>
  402c9b:	be 01 00 00 00       	mov    $0x1,%esi
  402ca0:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ca5:	e8 96 e0 ff ff       	callq  400d40 <signal@plt>
  402caa:	ba 00 00 00 00       	mov    $0x0,%edx
  402caf:	be 01 00 00 00       	mov    $0x1,%esi
  402cb4:	bf 02 00 00 00       	mov    $0x2,%edi
  402cb9:	e8 b2 e1 ff ff       	callq  400e70 <socket@plt>
  402cbe:	85 c0                	test   %eax,%eax
  402cc0:	0f 88 a3 00 00 00    	js     402d69 <init_driver+0x107>
  402cc6:	89 c3                	mov    %eax,%ebx
  402cc8:	48 8d 3d 05 06 00 00 	lea    0x605(%rip),%rdi        # 4032d4 <_IO_stdin_used+0x2f4>
  402ccf:	e8 7c e0 ff ff       	callq  400d50 <gethostbyname@plt>
  402cd4:	48 85 c0             	test   %rax,%rax
  402cd7:	0f 84 df 00 00 00    	je     402dbc <init_driver+0x15a>
  402cdd:	48 89 e5             	mov    %rsp,%rbp
  402ce0:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402ce7:	00 00 
  402ce9:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402cf0:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402cf6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402cfc:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d00:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d04:	48 8b 30             	mov    (%rax),%rsi
  402d07:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402d0b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d10:	e8 4b e0 ff ff       	callq  400d60 <__memmove_chk@plt>
  402d15:	66 c7 44 24 02 13 57 	movw   $0x5713,0x2(%rsp)
  402d1c:	ba 10 00 00 00       	mov    $0x10,%edx
  402d21:	48 89 ee             	mov    %rbp,%rsi
  402d24:	89 df                	mov    %ebx,%edi
  402d26:	e8 15 e1 ff ff       	callq  400e40 <connect@plt>
  402d2b:	85 c0                	test   %eax,%eax
  402d2d:	0f 88 fb 00 00 00    	js     402e2e <init_driver+0x1cc>
  402d33:	89 df                	mov    %ebx,%edi
  402d35:	e8 e6 df ff ff       	callq  400d20 <close@plt>
  402d3a:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402d41:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402d47:	b8 00 00 00 00       	mov    $0x0,%eax
  402d4c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402d51:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d58:	00 00 
  402d5a:	0f 85 28 01 00 00    	jne    402e88 <init_driver+0x226>
  402d60:	48 83 c4 20          	add    $0x20,%rsp
  402d64:	5b                   	pop    %rbx
  402d65:	5d                   	pop    %rbp
  402d66:	41 5c                	pop    %r12
  402d68:	c3                   	retq   
  402d69:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d70:	3a 20 43 
  402d73:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d7a:	20 75 6e 
  402d7d:	49 89 04 24          	mov    %rax,(%r12)
  402d81:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d86:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d8d:	74 6f 20 
  402d90:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402d97:	65 20 73 
  402d9a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d9f:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402da4:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402dab:	6b 65 
  402dad:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402db4:	00 
  402db5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dba:	eb 90                	jmp    402d4c <init_driver+0xea>
  402dbc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402dc3:	3a 20 44 
  402dc6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402dcd:	20 75 6e 
  402dd0:	49 89 04 24          	mov    %rax,(%r12)
  402dd4:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402dd9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402de0:	74 6f 20 
  402de3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402dea:	76 65 20 
  402ded:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402df2:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402df7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402dfe:	72 20 61 
  402e01:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402e06:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402e0d:	72 65 
  402e0f:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402e16:	73 
  402e17:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402e1d:	89 df                	mov    %ebx,%edi
  402e1f:	e8 fc de ff ff       	callq  400d20 <close@plt>
  402e24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e29:	e9 1e ff ff ff       	jmpq   402d4c <init_driver+0xea>
  402e2e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e35:	3a 20 55 
  402e38:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402e3f:	20 74 6f 
  402e42:	49 89 04 24          	mov    %rax,(%r12)
  402e46:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402e4b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e52:	65 63 74 
  402e55:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402e5c:	65 72 76 
  402e5f:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e64:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e69:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402e70:	72 
  402e71:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402e77:	89 df                	mov    %ebx,%edi
  402e79:	e8 a2 de ff ff       	callq  400d20 <close@plt>
  402e7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e83:	e9 c4 fe ff ff       	jmpq   402d4c <init_driver+0xea>
  402e88:	e8 53 de ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402e8d <driver_post>:
  402e8d:	53                   	push   %rbx
  402e8e:	4c 89 cb             	mov    %r9,%rbx
  402e91:	45 85 c0             	test   %r8d,%r8d
  402e94:	75 18                	jne    402eae <driver_post+0x21>
  402e96:	48 85 ff             	test   %rdi,%rdi
  402e99:	74 05                	je     402ea0 <driver_post+0x13>
  402e9b:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e9e:	75 37                	jne    402ed7 <driver_post+0x4a>
  402ea0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ea5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ea9:	44 89 c0             	mov    %r8d,%eax
  402eac:	5b                   	pop    %rbx
  402ead:	c3                   	retq   
  402eae:	48 89 ca             	mov    %rcx,%rdx
  402eb1:	48 8d 35 e4 08 00 00 	lea    0x8e4(%rip),%rsi        # 40379c <trans_char+0xcc>
  402eb8:	bf 01 00 00 00       	mov    $0x1,%edi
  402ebd:	b8 00 00 00 00       	mov    $0x0,%eax
  402ec2:	e8 19 df ff ff       	callq  400de0 <__printf_chk@plt>
  402ec7:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ecc:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ed0:	b8 00 00 00 00       	mov    $0x0,%eax
  402ed5:	eb d5                	jmp    402eac <driver_post+0x1f>
  402ed7:	48 83 ec 08          	sub    $0x8,%rsp
  402edb:	41 51                	push   %r9
  402edd:	49 89 c9             	mov    %rcx,%r9
  402ee0:	49 89 d0             	mov    %rdx,%r8
  402ee3:	48 89 f9             	mov    %rdi,%rcx
  402ee6:	48 89 f2             	mov    %rsi,%rdx
  402ee9:	be 57 13 00 00       	mov    $0x1357,%esi
  402eee:	48 8d 3d df 03 00 00 	lea    0x3df(%rip),%rdi        # 4032d4 <_IO_stdin_used+0x2f4>
  402ef5:	e8 b9 f5 ff ff       	callq  4024b3 <submitr>
  402efa:	48 83 c4 10          	add    $0x10,%rsp
  402efe:	eb ac                	jmp    402eac <driver_post+0x1f>

0000000000402f00 <check>:
  402f00:	89 f8                	mov    %edi,%eax
  402f02:	c1 e8 1c             	shr    $0x1c,%eax
  402f05:	85 c0                	test   %eax,%eax
  402f07:	74 1d                	je     402f26 <check+0x26>
  402f09:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f0e:	83 f9 1f             	cmp    $0x1f,%ecx
  402f11:	7f 0d                	jg     402f20 <check+0x20>
  402f13:	89 f8                	mov    %edi,%eax
  402f15:	d3 e8                	shr    %cl,%eax
  402f17:	3c 0a                	cmp    $0xa,%al
  402f19:	74 11                	je     402f2c <check+0x2c>
  402f1b:	83 c1 08             	add    $0x8,%ecx
  402f1e:	eb ee                	jmp    402f0e <check+0xe>
  402f20:	b8 01 00 00 00       	mov    $0x1,%eax
  402f25:	c3                   	retq   
  402f26:	b8 00 00 00 00       	mov    $0x0,%eax
  402f2b:	c3                   	retq   
  402f2c:	b8 00 00 00 00       	mov    $0x0,%eax
  402f31:	c3                   	retq   

0000000000402f32 <gencookie>:
  402f32:	53                   	push   %rbx
  402f33:	83 c7 01             	add    $0x1,%edi
  402f36:	e8 55 dd ff ff       	callq  400c90 <srandom@plt>
  402f3b:	e8 60 de ff ff       	callq  400da0 <random@plt>
  402f40:	89 c3                	mov    %eax,%ebx
  402f42:	89 c7                	mov    %eax,%edi
  402f44:	e8 b7 ff ff ff       	callq  402f00 <check>
  402f49:	85 c0                	test   %eax,%eax
  402f4b:	74 ee                	je     402f3b <gencookie+0x9>
  402f4d:	89 d8                	mov    %ebx,%eax
  402f4f:	5b                   	pop    %rbx
  402f50:	c3                   	retq   
  402f51:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f58:	00 00 00 
  402f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402f60 <__libc_csu_init>:
  402f60:	41 57                	push   %r15
  402f62:	41 56                	push   %r14
  402f64:	49 89 d7             	mov    %rdx,%r15
  402f67:	41 55                	push   %r13
  402f69:	41 54                	push   %r12
  402f6b:	4c 8d 25 9e 1e 20 00 	lea    0x201e9e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402f72:	55                   	push   %rbp
  402f73:	48 8d 2d 9e 1e 20 00 	lea    0x201e9e(%rip),%rbp        # 604e18 <__init_array_end>
  402f7a:	53                   	push   %rbx
  402f7b:	41 89 fd             	mov    %edi,%r13d
  402f7e:	49 89 f6             	mov    %rsi,%r14
  402f81:	4c 29 e5             	sub    %r12,%rbp
  402f84:	48 83 ec 08          	sub    $0x8,%rsp
  402f88:	48 c1 fd 03          	sar    $0x3,%rbp
  402f8c:	e8 b7 dc ff ff       	callq  400c48 <_init>
  402f91:	48 85 ed             	test   %rbp,%rbp
  402f94:	74 20                	je     402fb6 <__libc_csu_init+0x56>
  402f96:	31 db                	xor    %ebx,%ebx
  402f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f9f:	00 
  402fa0:	4c 89 fa             	mov    %r15,%rdx
  402fa3:	4c 89 f6             	mov    %r14,%rsi
  402fa6:	44 89 ef             	mov    %r13d,%edi
  402fa9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402fad:	48 83 c3 01          	add    $0x1,%rbx
  402fb1:	48 39 dd             	cmp    %rbx,%rbp
  402fb4:	75 ea                	jne    402fa0 <__libc_csu_init+0x40>
  402fb6:	48 83 c4 08          	add    $0x8,%rsp
  402fba:	5b                   	pop    %rbx
  402fbb:	5d                   	pop    %rbp
  402fbc:	41 5c                	pop    %r12
  402fbe:	41 5d                	pop    %r13
  402fc0:	41 5e                	pop    %r14
  402fc2:	41 5f                	pop    %r15
  402fc4:	c3                   	retq   
  402fc5:	90                   	nop
  402fc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fcd:	00 00 00 

0000000000402fd0 <__libc_csu_fini>:
  402fd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402fd4 <_fini>:
  402fd4:	48 83 ec 08          	sub    $0x8,%rsp
  402fd8:	48 83 c4 08          	add    $0x8,%rsp
  402fdc:	c3                   	retq   


rtarget:     file format elf64-x86-64


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
  400e8f:	49 c7 c0 f0 30 40 00 	mov    $0x4030f0,%r8
  400e96:	48 c7 c1 80 30 40 00 	mov    $0x403080,%rcx
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
  400f77:	48 8d 35 8a 21 00 00 	lea    0x218a(%rip),%rsi        # 403108 <_IO_stdin_used+0x8>
  400f7e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f83:	b8 00 00 00 00       	mov    $0x0,%eax
  400f88:	e8 53 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8d:	48 8d 3d ac 21 00 00 	lea    0x21ac(%rip),%rdi        # 403140 <_IO_stdin_used+0x40>
  400f94:	e8 27 fd ff ff       	callq  400cc0 <puts@plt>
  400f99:	48 8d 3d 18 23 00 00 	lea    0x2318(%rip),%rdi        # 4032b8 <_IO_stdin_used+0x1b8>
  400fa0:	e8 1b fd ff ff       	callq  400cc0 <puts@plt>
  400fa5:	48 8d 3d bc 21 00 00 	lea    0x21bc(%rip),%rdi        # 403168 <_IO_stdin_used+0x68>
  400fac:	e8 0f fd ff ff       	callq  400cc0 <puts@plt>
  400fb1:	48 8d 3d 1a 23 00 00 	lea    0x231a(%rip),%rdi        # 4032d2 <_IO_stdin_used+0x1d2>
  400fb8:	e8 03 fd ff ff       	callq  400cc0 <puts@plt>
  400fbd:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc2:	e8 69 fe ff ff       	callq  400e30 <exit@plt>
  400fc7:	48 8d 35 20 23 00 00 	lea    0x2320(%rip),%rsi        # 4032ee <_IO_stdin_used+0x1ee>
  400fce:	bf 01 00 00 00       	mov    $0x1,%edi
  400fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd8:	e8 03 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fdd:	48 8d 3d ac 21 00 00 	lea    0x21ac(%rip),%rdi        # 403190 <_IO_stdin_used+0x90>
  400fe4:	e8 d7 fc ff ff       	callq  400cc0 <puts@plt>
  400fe9:	48 8d 3d c8 21 00 00 	lea    0x21c8(%rip),%rdi        # 4031b8 <_IO_stdin_used+0xb8>
  400ff0:	e8 cb fc ff ff       	callq  400cc0 <puts@plt>
  400ff5:	48 8d 3d 10 23 00 00 	lea    0x2310(%rip),%rdi        # 40330c <_IO_stdin_used+0x20c>
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
  40102d:	e8 23 20 00 00       	callq  403055 <gencookie>
  401032:	89 05 cc 44 20 00    	mov    %eax,0x2044cc(%rip)        # 605504 <cookie>
  401038:	89 c7                	mov    %eax,%edi
  40103a:	e8 16 20 00 00       	callq  403055 <gencookie>
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
  40107f:	c6 05 a2 50 20 00 72 	movb   $0x72,0x2050a2(%rip)        # 606128 <target_prefix>
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
  40110a:	48 8d 3d d7 20 00 00 	lea    0x20d7(%rip),%rdi        # 4031e8 <_IO_stdin_used+0xe8>
  401111:	e8 aa fb ff ff       	callq  400cc0 <puts@plt>
  401116:	bf 08 00 00 00       	mov    $0x8,%edi
  40111b:	e8 10 fd ff ff       	callq  400e30 <exit@plt>
  401120:	bd 01 00 00 00       	mov    $0x1,%ebp
  401125:	85 ed                	test   %ebp,%ebp
  401127:	74 3d                	je     401166 <initialize_target+0x163>
  401129:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401130:	00 
  401131:	e8 4f 1c 00 00       	callq  402d85 <init_driver>
  401136:	85 c0                	test   %eax,%eax
  401138:	0f 89 5a ff ff ff    	jns    401098 <initialize_target+0x95>
  40113e:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401145:	00 
  401146:	48 8d 35 13 21 00 00 	lea    0x2113(%rip),%rsi        # 403260 <_IO_stdin_used+0x160>
  40114d:	bf 01 00 00 00       	mov    $0x1,%edi
  401152:	b8 00 00 00 00       	mov    $0x0,%eax
  401157:	e8 84 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 ca fc ff ff       	callq  400e30 <exit@plt>
  401166:	48 89 e2             	mov    %rsp,%rdx
  401169:	48 8d 35 b0 20 00 00 	lea    0x20b0(%rip),%rsi        # 403220 <_IO_stdin_used+0x120>
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
  40119c:	48 c7 c6 8c 20 40 00 	mov    $0x40208c,%rsi
  4011a3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011a8:	e8 93 fb ff ff       	callq  400d40 <signal@plt>
  4011ad:	48 c7 c6 38 20 40 00 	mov    $0x402038,%rsi
  4011b4:	bf 07 00 00 00       	mov    $0x7,%edi
  4011b9:	e8 82 fb ff ff       	callq  400d40 <signal@plt>
  4011be:	48 c7 c6 e0 20 40 00 	mov    $0x4020e0,%rsi
  4011c5:	bf 04 00 00 00       	mov    $0x4,%edi
  4011ca:	e8 71 fb ff ff       	callq  400d40 <signal@plt>
  4011cf:	83 3d 32 43 20 00 00 	cmpl   $0x0,0x204332(%rip)        # 605508 <is_checker>
  4011d6:	75 26                	jne    4011fe <main+0x70>
  4011d8:	48 8d 2d 46 21 00 00 	lea    0x2146(%rip),%rbp        # 403325 <_IO_stdin_used+0x225>
  4011df:	48 8b 05 ba 42 20 00 	mov    0x2042ba(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4011e6:	48 89 05 03 43 20 00 	mov    %rax,0x204303(%rip)        # 6054f0 <infile>
  4011ed:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011f3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011f9:	e9 8d 00 00 00       	jmpq   40128b <main+0xfd>
  4011fe:	48 c7 c6 34 21 40 00 	mov    $0x402134,%rsi
  401205:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120a:	e8 31 fb ff ff       	callq  400d40 <signal@plt>
  40120f:	bf 05 00 00 00       	mov    $0x5,%edi
  401214:	e8 f7 fa ff ff       	callq  400d10 <alarm@plt>
  401219:	48 8d 2d 0a 21 00 00 	lea    0x210a(%rip),%rbp        # 40332a <_IO_stdin_used+0x22a>
  401220:	eb bd                	jmp    4011df <main+0x51>
  401222:	48 8b 3b             	mov    (%rbx),%rdi
  401225:	e8 3d fd ff ff       	callq  400f67 <usage>
  40122a:	48 8d 35 7c 23 00 00 	lea    0x237c(%rip),%rsi        # 4035ad <_IO_stdin_used+0x4ad>
  401231:	48 8b 3d 70 42 20 00 	mov    0x204270(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401238:	e8 b3 fb ff ff       	callq  400df0 <fopen@plt>
  40123d:	48 89 05 ac 42 20 00 	mov    %rax,0x2042ac(%rip)        # 6054f0 <infile>
  401244:	48 85 c0             	test   %rax,%rax
  401247:	75 42                	jne    40128b <main+0xfd>
  401249:	48 8b 0d 58 42 20 00 	mov    0x204258(%rip),%rcx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401250:	48 8d 15 db 20 00 00 	lea    0x20db(%rip),%rdx        # 403332 <_IO_stdin_used+0x232>
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
  4012aa:	48 8d 0d bf 20 00 00 	lea    0x20bf(%rip),%rcx        # 403370 <_IO_stdin_used+0x270>
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
  4012e1:	48 8d 35 67 20 00 00 	lea    0x2067(%rip),%rsi        # 40334f <_IO_stdin_used+0x24f>
  4012e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f2:	e8 e9 fa ff ff       	callq  400de0 <__printf_chk@plt>
  4012f7:	48 8b 3b             	mov    (%rbx),%rdi
  4012fa:	e8 68 fc ff ff       	callq  400f67 <usage>
  4012ff:	be 01 00 00 00       	mov    $0x1,%esi
  401304:	44 89 ef             	mov    %r13d,%edi
  401307:	e8 f7 fc ff ff       	callq  401003 <initialize_target>
  40130c:	83 3d f5 41 20 00 00 	cmpl   $0x0,0x2041f5(%rip)        # 605508 <is_checker>
  401313:	74 09                	je     40131e <main+0x190>
  401315:	44 39 35 e4 41 20 00 	cmp    %r14d,0x2041e4(%rip)        # 605500 <authkey>
  40131c:	75 36                	jne    401354 <main+0x1c6>
  40131e:	8b 15 e0 41 20 00    	mov    0x2041e0(%rip),%edx        # 605504 <cookie>
  401324:	48 8d 35 37 20 00 00 	lea    0x2037(%rip),%rsi        # 403362 <_IO_stdin_used+0x262>
  40132b:	bf 01 00 00 00       	mov    $0x1,%edi
  401330:	b8 00 00 00 00       	mov    $0x0,%eax
  401335:	e8 a6 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40133a:	48 8b 3d 3f 41 20 00 	mov    0x20413f(%rip),%rdi        # 605480 <buf_offset>
  401341:	e8 45 0e 00 00       	callq  40218b <launch>
  401346:	b8 00 00 00 00       	mov    $0x0,%eax
  40134b:	5b                   	pop    %rbx
  40134c:	5d                   	pop    %rbp
  40134d:	41 5c                	pop    %r12
  40134f:	41 5d                	pop    %r13
  401351:	41 5e                	pop    %r14
  401353:	c3                   	retq   
  401354:	44 89 f2             	mov    %r14d,%edx
  401357:	48 8d 35 2a 1f 00 00 	lea    0x1f2a(%rip),%rsi        # 403288 <_IO_stdin_used+0x188>
  40135e:	bf 01 00 00 00       	mov    $0x1,%edi
  401363:	b8 00 00 00 00       	mov    $0x0,%eax
  401368:	e8 73 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40136d:	b8 00 00 00 00       	mov    $0x0,%eax
  401372:	e8 21 09 00 00       	callq  401c98 <check_fail>
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
  401914:	e8 b7 03 00 00       	callq  401cd0 <Gets>
  401919:	b8 01 00 00 00       	mov    $0x1,%eax
  40191e:	48 83 c4 18          	add    $0x18,%rsp
  401922:	c3                   	retq   

0000000000401923 <touch1>:
  401923:	48 83 ec 08          	sub    $0x8,%rsp
  401927:	c7 05 cb 3b 20 00 01 	movl   $0x1,0x203bcb(%rip)        # 6054fc <vlevel>
  40192e:	00 00 00 
  401931:	48 8d 3d ce 1a 00 00 	lea    0x1ace(%rip),%rdi        # 403406 <_IO_stdin_used+0x306>
  401938:	e8 83 f3 ff ff       	callq  400cc0 <puts@plt>
  40193d:	bf 01 00 00 00       	mov    $0x1,%edi
  401942:	e8 f9 05 00 00       	callq  401f40 <validate>
  401947:	bf 00 00 00 00       	mov    $0x0,%edi
  40194c:	e8 df f4 ff ff       	callq  400e30 <exit@plt>

0000000000401951 <touch2>:
  401951:	48 83 ec 08          	sub    $0x8,%rsp
  401955:	89 fa                	mov    %edi,%edx
  401957:	c7 05 9b 3b 20 00 02 	movl   $0x2,0x203b9b(%rip)        # 6054fc <vlevel>
  40195e:	00 00 00 
  401961:	39 3d 9d 3b 20 00    	cmp    %edi,0x203b9d(%rip)        # 605504 <cookie>
  401967:	74 2a                	je     401993 <touch2+0x42>
  401969:	48 8d 35 e0 1a 00 00 	lea    0x1ae0(%rip),%rsi        # 403450 <_IO_stdin_used+0x350>
  401970:	bf 01 00 00 00       	mov    $0x1,%edi
  401975:	b8 00 00 00 00       	mov    $0x0,%eax
  40197a:	e8 61 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  40197f:	bf 02 00 00 00       	mov    $0x2,%edi
  401984:	e8 87 06 00 00       	callq  402010 <fail>
  401989:	bf 00 00 00 00       	mov    $0x0,%edi
  40198e:	e8 9d f4 ff ff       	callq  400e30 <exit@plt>
  401993:	48 8d 35 8e 1a 00 00 	lea    0x1a8e(%rip),%rsi        # 403428 <_IO_stdin_used+0x328>
  40199a:	bf 01 00 00 00       	mov    $0x1,%edi
  40199f:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a4:	e8 37 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  4019a9:	bf 02 00 00 00       	mov    $0x2,%edi
  4019ae:	e8 8d 05 00 00       	callq  401f40 <validate>
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
  401a12:	48 8d 0d 0a 1a 00 00 	lea    0x1a0a(%rip),%rcx        # 403423 <_IO_stdin_used+0x323>
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
  401a8b:	48 8d 35 e6 19 00 00 	lea    0x19e6(%rip),%rsi        # 403478 <_IO_stdin_used+0x378>
  401a92:	bf 01 00 00 00       	mov    $0x1,%edi
  401a97:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9c:	e8 3f f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401aa1:	bf 03 00 00 00       	mov    $0x3,%edi
  401aa6:	e8 95 04 00 00       	callq  401f40 <validate>
  401aab:	bf 00 00 00 00       	mov    $0x0,%edi
  401ab0:	e8 7b f3 ff ff       	callq  400e30 <exit@plt>
  401ab5:	48 89 da             	mov    %rbx,%rdx
  401ab8:	48 8d 35 e1 19 00 00 	lea    0x19e1(%rip),%rsi        # 4034a0 <_IO_stdin_used+0x3a0>
  401abf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac9:	e8 12 f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401ace:	bf 03 00 00 00       	mov    $0x3,%edi
  401ad3:	e8 38 05 00 00       	callq  402010 <fail>
  401ad8:	eb d1                	jmp    401aab <touch3+0x43>

0000000000401ada <test>:
  401ada:	48 83 ec 08          	sub    $0x8,%rsp
  401ade:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae3:	e8 25 fe ff ff       	callq  40190d <getbuf>
  401ae8:	89 c2                	mov    %eax,%edx
  401aea:	48 8d 35 d7 19 00 00 	lea    0x19d7(%rip),%rsi        # 4034c8 <_IO_stdin_used+0x3c8>
  401af1:	bf 01 00 00 00       	mov    $0x1,%edi
  401af6:	b8 00 00 00 00       	mov    $0x0,%eax
  401afb:	e8 e0 f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401b00:	48 83 c4 08          	add    $0x8,%rsp
  401b04:	c3                   	retq   

0000000000401b05 <start_farm>:
  401b05:	b8 01 00 00 00       	mov    $0x1,%eax
  401b0a:	c3                   	retq   

0000000000401b0b <addval_447>:
  401b0b:	8d 87 13 c8 58 90    	lea    -0x6fa737ed(%rdi),%eax
  401b11:	c3                   	retq   

0000000000401b12 <addval_320>:
  401b12:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  401b18:	c3                   	retq   

0000000000401b19 <addval_194>:
  401b19:	8d 87 1a 48 89 c7    	lea    -0x3876b7e6(%rdi),%eax
  401b1f:	c3                   	retq   

0000000000401b20 <addval_106>:
  401b20:	8d 87 48 89 c7 c2    	lea    -0x3d3876b8(%rdi),%eax
  401b26:	c3                   	retq   

0000000000401b27 <getval_427>:
  401b27:	b8 f4 48 90 c3       	mov    $0xc39048f4,%eax
  401b2c:	c3                   	retq   

0000000000401b2d <setval_211>:
  401b2d:	c7 07 48 89 c7 94    	movl   $0x94c78948,(%rdi)
  401b33:	c3                   	retq   

0000000000401b34 <getval_151>:
  401b34:	b8 58 91 90 90       	mov    $0x90909158,%eax
  401b39:	c3                   	retq   

0000000000401b3a <setval_181>:
  401b3a:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  401b40:	c3                   	retq   

0000000000401b41 <mid_farm>:
  401b41:	b8 01 00 00 00       	mov    $0x1,%eax
  401b46:	c3                   	retq   

0000000000401b47 <add_xy>:
  401b47:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401b4b:	c3                   	retq   

0000000000401b4c <getval_249>:
  401b4c:	b8 cb 09 89 d6       	mov    $0xd68909cb,%eax
  401b51:	c3                   	retq   

0000000000401b52 <setval_385>:
  401b52:	c7 07 c9 d6 90 90    	movl   $0x9090d6c9,(%rdi)
  401b58:	c3                   	retq   

0000000000401b59 <setval_474>:
  401b59:	c7 07 48 c9 e0 90    	movl   $0x90e0c948,(%rdi)
  401b5f:	c3                   	retq   

0000000000401b60 <getval_408>:
  401b60:	b8 08 89 e0 c3       	mov    $0xc3e08908,%eax
  401b65:	c3                   	retq   

0000000000401b66 <addval_245>:
  401b66:	8d 87 a9 d6 20 c9    	lea    -0x36df2957(%rdi),%eax
  401b6c:	c3                   	retq   

0000000000401b6d <setval_379>:
  401b6d:	c7 07 a9 ca 84 db    	movl   $0xdb84caa9,(%rdi)
  401b73:	c3                   	retq   

0000000000401b74 <addval_406>:
  401b74:	8d 87 89 c1 92 c3    	lea    -0x3c6d3e77(%rdi),%eax
  401b7a:	c3                   	retq   

0000000000401b7b <addval_298>:
  401b7b:	8d 87 89 c1 78 c9    	lea    -0x36873e77(%rdi),%eax
  401b81:	c3                   	retq   

0000000000401b82 <getval_312>:
  401b82:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401b87:	c3                   	retq   

0000000000401b88 <addval_139>:
  401b88:	8d 87 89 ca 78 db    	lea    -0x24873577(%rdi),%eax
  401b8e:	c3                   	retq   

0000000000401b8f <addval_420>:
  401b8f:	8d 87 fd 68 89 e0    	lea    -0x1f769703(%rdi),%eax
  401b95:	c3                   	retq   

0000000000401b96 <getval_145>:
  401b96:	b8 88 af 89 ca       	mov    $0xca89af88,%eax
  401b9b:	c3                   	retq   

0000000000401b9c <getval_376>:
  401b9c:	b8 e7 98 8d d6       	mov    $0xd68d98e7,%eax
  401ba1:	c3                   	retq   

0000000000401ba2 <setval_433>:
  401ba2:	c7 07 89 d6 90 c7    	movl   $0xc790d689,(%rdi)
  401ba8:	c3                   	retq   

0000000000401ba9 <setval_390>:
  401ba9:	c7 07 e5 49 89 e0    	movl   $0xe08949e5,(%rdi)
  401baf:	c3                   	retq   

0000000000401bb0 <addval_103>:
  401bb0:	8d 87 89 c1 48 d2    	lea    -0x2db73e77(%rdi),%eax
  401bb6:	c3                   	retq   

0000000000401bb7 <addval_303>:
  401bb7:	8d 87 89 c1 c3 14    	lea    0x14c3c189(%rdi),%eax
  401bbd:	c3                   	retq   

0000000000401bbe <getval_277>:
  401bbe:	b8 99 d6 90 c3       	mov    $0xc390d699,%eax
  401bc3:	c3                   	retq   

0000000000401bc4 <addval_153>:
  401bc4:	8d 87 89 d6 08 c0    	lea    -0x3ff72977(%rdi),%eax
  401bca:	c3                   	retq   

0000000000401bcb <setval_231>:
  401bcb:	c7 07 64 89 ca 92    	movl   $0x92ca8964,(%rdi)
  401bd1:	c3                   	retq   

0000000000401bd2 <addval_287>:
  401bd2:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  401bd8:	c3                   	retq   

0000000000401bd9 <addval_209>:
  401bd9:	8d 87 89 ca 92 90    	lea    -0x6f6d3577(%rdi),%eax
  401bdf:	c3                   	retq   

0000000000401be0 <getval_365>:
  401be0:	b8 89 c1 90 c1       	mov    $0xc190c189,%eax
  401be5:	c3                   	retq   

0000000000401be6 <setval_480>:
  401be6:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401bec:	c3                   	retq   

0000000000401bed <setval_461>:
  401bed:	c7 07 c9 ca 84 db    	movl   $0xdb84cac9,(%rdi)
  401bf3:	c3                   	retq   

0000000000401bf4 <setval_363>:
  401bf4:	c7 07 75 48 89 e0    	movl   $0xe0894875,(%rdi)
  401bfa:	c3                   	retq   

0000000000401bfb <getval_187>:
  401bfb:	b8 89 ca 20 c9       	mov    $0xc920ca89,%eax
  401c00:	c3                   	retq   

0000000000401c01 <addval_285>:
  401c01:	8d 87 ab 45 88 ca    	lea    -0x3577ba55(%rdi),%eax
  401c07:	c3                   	retq   

0000000000401c08 <setval_250>:
  401c08:	c7 07 db 89 d6 c7    	movl   $0xc7d689db,(%rdi)
  401c0e:	c3                   	retq   

0000000000401c0f <getval_117>:
  401c0f:	b8 88 c1 90 c3       	mov    $0xc390c188,%eax
  401c14:	c3                   	retq   

0000000000401c15 <getval_487>:
  401c15:	b8 89 c1 20 d2       	mov    $0xd220c189,%eax
  401c1a:	c3                   	retq   

0000000000401c1b <addval_435>:
  401c1b:	8d 87 88 c1 90 c3    	lea    -0x3c6f3e78(%rdi),%eax
  401c21:	c3                   	retq   

0000000000401c22 <end_farm>:
  401c22:	b8 01 00 00 00       	mov    $0x1,%eax
  401c27:	c3                   	retq   

0000000000401c28 <save_char>:
  401c28:	8b 05 f6 44 20 00    	mov    0x2044f6(%rip),%eax        # 606124 <gets_cnt>
  401c2e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c33:	7f 4a                	jg     401c7f <save_char+0x57>
  401c35:	89 f9                	mov    %edi,%ecx
  401c37:	c0 e9 04             	shr    $0x4,%cl
  401c3a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c3d:	4c 8d 05 ac 1b 00 00 	lea    0x1bac(%rip),%r8        # 4037f0 <trans_char>
  401c44:	83 e1 0f             	and    $0xf,%ecx
  401c47:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c4c:	48 8d 0d cd 38 20 00 	lea    0x2038cd(%rip),%rcx        # 605520 <gets_buf>
  401c53:	48 63 f2             	movslq %edx,%rsi
  401c56:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401c5a:	8d 72 01             	lea    0x1(%rdx),%esi
  401c5d:	83 e7 0f             	and    $0xf,%edi
  401c60:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401c65:	48 63 f6             	movslq %esi,%rsi
  401c68:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401c6c:	83 c2 02             	add    $0x2,%edx
  401c6f:	48 63 d2             	movslq %edx,%rdx
  401c72:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401c76:	83 c0 01             	add    $0x1,%eax
  401c79:	89 05 a5 44 20 00    	mov    %eax,0x2044a5(%rip)        # 606124 <gets_cnt>
  401c7f:	f3 c3                	repz retq 

0000000000401c81 <save_term>:
  401c81:	8b 05 9d 44 20 00    	mov    0x20449d(%rip),%eax        # 606124 <gets_cnt>
  401c87:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c8a:	48 98                	cltq   
  401c8c:	48 8d 15 8d 38 20 00 	lea    0x20388d(%rip),%rdx        # 605520 <gets_buf>
  401c93:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401c97:	c3                   	retq   

0000000000401c98 <check_fail>:
  401c98:	48 83 ec 08          	sub    $0x8,%rsp
  401c9c:	0f be 15 85 44 20 00 	movsbl 0x204485(%rip),%edx        # 606128 <target_prefix>
  401ca3:	4c 8d 05 76 38 20 00 	lea    0x203876(%rip),%r8        # 605520 <gets_buf>
  401caa:	8b 0d 48 38 20 00    	mov    0x203848(%rip),%ecx        # 6054f8 <check_level>
  401cb0:	48 8d 35 34 18 00 00 	lea    0x1834(%rip),%rsi        # 4034eb <_IO_stdin_used+0x3eb>
  401cb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401cbc:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc1:	e8 1a f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401cc6:	bf 01 00 00 00       	mov    $0x1,%edi
  401ccb:	e8 60 f1 ff ff       	callq  400e30 <exit@plt>

0000000000401cd0 <Gets>:
  401cd0:	41 54                	push   %r12
  401cd2:	55                   	push   %rbp
  401cd3:	53                   	push   %rbx
  401cd4:	49 89 fc             	mov    %rdi,%r12
  401cd7:	c7 05 43 44 20 00 00 	movl   $0x0,0x204443(%rip)        # 606124 <gets_cnt>
  401cde:	00 00 00 
  401ce1:	48 89 fb             	mov    %rdi,%rbx
  401ce4:	eb 11                	jmp    401cf7 <Gets+0x27>
  401ce6:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401cea:	88 03                	mov    %al,(%rbx)
  401cec:	0f b6 f8             	movzbl %al,%edi
  401cef:	e8 34 ff ff ff       	callq  401c28 <save_char>
  401cf4:	48 89 eb             	mov    %rbp,%rbx
  401cf7:	48 8b 3d f2 37 20 00 	mov    0x2037f2(%rip),%rdi        # 6054f0 <infile>
  401cfe:	e8 ad f0 ff ff       	callq  400db0 <_IO_getc@plt>
  401d03:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d06:	74 05                	je     401d0d <Gets+0x3d>
  401d08:	83 f8 0a             	cmp    $0xa,%eax
  401d0b:	75 d9                	jne    401ce6 <Gets+0x16>
  401d0d:	c6 03 00             	movb   $0x0,(%rbx)
  401d10:	b8 00 00 00 00       	mov    $0x0,%eax
  401d15:	e8 67 ff ff ff       	callq  401c81 <save_term>
  401d1a:	4c 89 e0             	mov    %r12,%rax
  401d1d:	5b                   	pop    %rbx
  401d1e:	5d                   	pop    %rbp
  401d1f:	41 5c                	pop    %r12
  401d21:	c3                   	retq   

0000000000401d22 <notify_server>:
  401d22:	55                   	push   %rbp
  401d23:	53                   	push   %rbx
  401d24:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401d2b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d32:	00 00 
  401d34:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d3b:	00 
  401d3c:	31 c0                	xor    %eax,%eax
  401d3e:	83 3d c3 37 20 00 00 	cmpl   $0x0,0x2037c3(%rip)        # 605508 <is_checker>
  401d45:	0f 85 d2 00 00 00    	jne    401e1d <notify_server+0xfb>
  401d4b:	89 fb                	mov    %edi,%ebx
  401d4d:	8b 05 d1 43 20 00    	mov    0x2043d1(%rip),%eax        # 606124 <gets_cnt>
  401d53:	83 c0 64             	add    $0x64,%eax
  401d56:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d5b:	0f 8f dd 00 00 00    	jg     401e3e <notify_server+0x11c>
  401d61:	0f be 05 c0 43 20 00 	movsbl 0x2043c0(%rip),%eax        # 606128 <target_prefix>
  401d68:	83 3d 19 37 20 00 00 	cmpl   $0x0,0x203719(%rip)        # 605488 <notify>
  401d6f:	0f 84 e9 00 00 00    	je     401e5e <notify_server+0x13c>
  401d75:	8b 15 85 37 20 00    	mov    0x203785(%rip),%edx        # 605500 <authkey>
  401d7b:	85 db                	test   %ebx,%ebx
  401d7d:	0f 84 e5 00 00 00    	je     401e68 <notify_server+0x146>
  401d83:	48 8d 2d 77 17 00 00 	lea    0x1777(%rip),%rbp        # 403501 <_IO_stdin_used+0x401>
  401d8a:	48 89 e7             	mov    %rsp,%rdi
  401d8d:	48 8d 0d 8c 37 20 00 	lea    0x20378c(%rip),%rcx        # 605520 <gets_buf>
  401d94:	51                   	push   %rcx
  401d95:	56                   	push   %rsi
  401d96:	50                   	push   %rax
  401d97:	52                   	push   %rdx
  401d98:	49 89 e9             	mov    %rbp,%r9
  401d9b:	44 8b 05 8e 33 20 00 	mov    0x20338e(%rip),%r8d        # 605130 <target_id>
  401da2:	48 8d 0d 62 17 00 00 	lea    0x1762(%rip),%rcx        # 40350b <_IO_stdin_used+0x40b>
  401da9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401dae:	be 01 00 00 00       	mov    $0x1,%esi
  401db3:	b8 00 00 00 00       	mov    $0x0,%eax
  401db8:	e8 a3 f0 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401dbd:	48 83 c4 20          	add    $0x20,%rsp
  401dc1:	83 3d c0 36 20 00 00 	cmpl   $0x0,0x2036c0(%rip)        # 605488 <notify>
  401dc8:	0f 84 df 00 00 00    	je     401ead <notify_server+0x18b>
  401dce:	85 db                	test   %ebx,%ebx
  401dd0:	0f 84 c6 00 00 00    	je     401e9c <notify_server+0x17a>
  401dd6:	48 89 e1             	mov    %rsp,%rcx
  401dd9:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401de0:	00 
  401de1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401de7:	48 8b 15 5a 33 20 00 	mov    0x20335a(%rip),%rdx        # 605148 <lab>
  401dee:	48 8b 35 5b 33 20 00 	mov    0x20335b(%rip),%rsi        # 605150 <course>
  401df5:	48 8b 3d 44 33 20 00 	mov    0x203344(%rip),%rdi        # 605140 <user_id>
  401dfc:	e8 af 11 00 00       	callq  402fb0 <driver_post>
  401e01:	85 c0                	test   %eax,%eax
  401e03:	78 6f                	js     401e74 <notify_server+0x152>
  401e05:	48 8d 3d 44 18 00 00 	lea    0x1844(%rip),%rdi        # 403650 <_IO_stdin_used+0x550>
  401e0c:	e8 af ee ff ff       	callq  400cc0 <puts@plt>
  401e11:	48 8d 3d 1b 17 00 00 	lea    0x171b(%rip),%rdi        # 403533 <_IO_stdin_used+0x433>
  401e18:	e8 a3 ee ff ff       	callq  400cc0 <puts@plt>
  401e1d:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401e24:	00 
  401e25:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e2c:	00 00 
  401e2e:	0f 85 07 01 00 00    	jne    401f3b <notify_server+0x219>
  401e34:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401e3b:	5b                   	pop    %rbx
  401e3c:	5d                   	pop    %rbp
  401e3d:	c3                   	retq   
  401e3e:	48 8d 35 db 17 00 00 	lea    0x17db(%rip),%rsi        # 403620 <_IO_stdin_used+0x520>
  401e45:	bf 01 00 00 00       	mov    $0x1,%edi
  401e4a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e4f:	e8 8c ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e54:	bf 01 00 00 00       	mov    $0x1,%edi
  401e59:	e8 d2 ef ff ff       	callq  400e30 <exit@plt>
  401e5e:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e63:	e9 13 ff ff ff       	jmpq   401d7b <notify_server+0x59>
  401e68:	48 8d 2d 97 16 00 00 	lea    0x1697(%rip),%rbp        # 403506 <_IO_stdin_used+0x406>
  401e6f:	e9 16 ff ff ff       	jmpq   401d8a <notify_server+0x68>
  401e74:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e7b:	00 
  401e7c:	48 8d 35 a4 16 00 00 	lea    0x16a4(%rip),%rsi        # 403527 <_IO_stdin_used+0x427>
  401e83:	bf 01 00 00 00       	mov    $0x1,%edi
  401e88:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8d:	e8 4e ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e92:	bf 01 00 00 00       	mov    $0x1,%edi
  401e97:	e8 94 ef ff ff       	callq  400e30 <exit@plt>
  401e9c:	48 8d 3d 9a 16 00 00 	lea    0x169a(%rip),%rdi        # 40353d <_IO_stdin_used+0x43d>
  401ea3:	e8 18 ee ff ff       	callq  400cc0 <puts@plt>
  401ea8:	e9 70 ff ff ff       	jmpq   401e1d <notify_server+0xfb>
  401ead:	48 89 ea             	mov    %rbp,%rdx
  401eb0:	48 8d 35 d1 17 00 00 	lea    0x17d1(%rip),%rsi        # 403688 <_IO_stdin_used+0x588>
  401eb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 1a ef ff ff       	callq  400de0 <__printf_chk@plt>
  401ec6:	48 8b 15 73 32 20 00 	mov    0x203273(%rip),%rdx        # 605140 <user_id>
  401ecd:	48 8d 35 70 16 00 00 	lea    0x1670(%rip),%rsi        # 403544 <_IO_stdin_used+0x444>
  401ed4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ede:	e8 fd ee ff ff       	callq  400de0 <__printf_chk@plt>
  401ee3:	48 8b 15 66 32 20 00 	mov    0x203266(%rip),%rdx        # 605150 <course>
  401eea:	48 8d 35 60 16 00 00 	lea    0x1660(%rip),%rsi        # 403551 <_IO_stdin_used+0x451>
  401ef1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef6:	b8 00 00 00 00       	mov    $0x0,%eax
  401efb:	e8 e0 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f00:	48 8b 15 41 32 20 00 	mov    0x203241(%rip),%rdx        # 605148 <lab>
  401f07:	48 8d 35 4f 16 00 00 	lea    0x164f(%rip),%rsi        # 40355d <_IO_stdin_used+0x45d>
  401f0e:	bf 01 00 00 00       	mov    $0x1,%edi
  401f13:	b8 00 00 00 00       	mov    $0x0,%eax
  401f18:	e8 c3 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f1d:	48 89 e2             	mov    %rsp,%rdx
  401f20:	48 8d 35 3f 16 00 00 	lea    0x163f(%rip),%rsi        # 403566 <_IO_stdin_used+0x466>
  401f27:	bf 01 00 00 00       	mov    $0x1,%edi
  401f2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f31:	e8 aa ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f36:	e9 e2 fe ff ff       	jmpq   401e1d <notify_server+0xfb>
  401f3b:	e8 a0 ed ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401f40 <validate>:
  401f40:	53                   	push   %rbx
  401f41:	89 fb                	mov    %edi,%ebx
  401f43:	83 3d be 35 20 00 00 	cmpl   $0x0,0x2035be(%rip)        # 605508 <is_checker>
  401f4a:	74 72                	je     401fbe <validate+0x7e>
  401f4c:	39 3d aa 35 20 00    	cmp    %edi,0x2035aa(%rip)        # 6054fc <vlevel>
  401f52:	75 32                	jne    401f86 <validate+0x46>
  401f54:	8b 15 9e 35 20 00    	mov    0x20359e(%rip),%edx        # 6054f8 <check_level>
  401f5a:	39 fa                	cmp    %edi,%edx
  401f5c:	75 3e                	jne    401f9c <validate+0x5c>
  401f5e:	0f be 15 c3 41 20 00 	movsbl 0x2041c3(%rip),%edx        # 606128 <target_prefix>
  401f65:	4c 8d 05 b4 35 20 00 	lea    0x2035b4(%rip),%r8        # 605520 <gets_buf>
  401f6c:	89 f9                	mov    %edi,%ecx
  401f6e:	48 8d 35 1b 16 00 00 	lea    0x161b(%rip),%rsi        # 403590 <_IO_stdin_used+0x490>
  401f75:	bf 01 00 00 00       	mov    $0x1,%edi
  401f7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7f:	e8 5c ee ff ff       	callq  400de0 <__printf_chk@plt>
  401f84:	5b                   	pop    %rbx
  401f85:	c3                   	retq   
  401f86:	48 8d 3d e5 15 00 00 	lea    0x15e5(%rip),%rdi        # 403572 <_IO_stdin_used+0x472>
  401f8d:	e8 2e ed ff ff       	callq  400cc0 <puts@plt>
  401f92:	b8 00 00 00 00       	mov    $0x0,%eax
  401f97:	e8 fc fc ff ff       	callq  401c98 <check_fail>
  401f9c:	89 f9                	mov    %edi,%ecx
  401f9e:	48 8d 35 0b 17 00 00 	lea    0x170b(%rip),%rsi        # 4036b0 <_IO_stdin_used+0x5b0>
  401fa5:	bf 01 00 00 00       	mov    $0x1,%edi
  401faa:	b8 00 00 00 00       	mov    $0x0,%eax
  401faf:	e8 2c ee ff ff       	callq  400de0 <__printf_chk@plt>
  401fb4:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb9:	e8 da fc ff ff       	callq  401c98 <check_fail>
  401fbe:	39 3d 38 35 20 00    	cmp    %edi,0x203538(%rip)        # 6054fc <vlevel>
  401fc4:	74 1a                	je     401fe0 <validate+0xa0>
  401fc6:	48 8d 3d a5 15 00 00 	lea    0x15a5(%rip),%rdi        # 403572 <_IO_stdin_used+0x472>
  401fcd:	e8 ee ec ff ff       	callq  400cc0 <puts@plt>
  401fd2:	89 de                	mov    %ebx,%esi
  401fd4:	bf 00 00 00 00       	mov    $0x0,%edi
  401fd9:	e8 44 fd ff ff       	callq  401d22 <notify_server>
  401fde:	eb a4                	jmp    401f84 <validate+0x44>
  401fe0:	0f be 0d 41 41 20 00 	movsbl 0x204141(%rip),%ecx        # 606128 <target_prefix>
  401fe7:	89 fa                	mov    %edi,%edx
  401fe9:	48 8d 35 e8 16 00 00 	lea    0x16e8(%rip),%rsi        # 4036d8 <_IO_stdin_used+0x5d8>
  401ff0:	bf 01 00 00 00       	mov    $0x1,%edi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 e1 ed ff ff       	callq  400de0 <__printf_chk@plt>
  401fff:	89 de                	mov    %ebx,%esi
  402001:	bf 01 00 00 00       	mov    $0x1,%edi
  402006:	e8 17 fd ff ff       	callq  401d22 <notify_server>
  40200b:	e9 74 ff ff ff       	jmpq   401f84 <validate+0x44>

0000000000402010 <fail>:
  402010:	48 83 ec 08          	sub    $0x8,%rsp
  402014:	83 3d ed 34 20 00 00 	cmpl   $0x0,0x2034ed(%rip)        # 605508 <is_checker>
  40201b:	75 11                	jne    40202e <fail+0x1e>
  40201d:	89 fe                	mov    %edi,%esi
  40201f:	bf 00 00 00 00       	mov    $0x0,%edi
  402024:	e8 f9 fc ff ff       	callq  401d22 <notify_server>
  402029:	48 83 c4 08          	add    $0x8,%rsp
  40202d:	c3                   	retq   
  40202e:	b8 00 00 00 00       	mov    $0x0,%eax
  402033:	e8 60 fc ff ff       	callq  401c98 <check_fail>

0000000000402038 <bushandler>:
  402038:	48 83 ec 08          	sub    $0x8,%rsp
  40203c:	83 3d c5 34 20 00 00 	cmpl   $0x0,0x2034c5(%rip)        # 605508 <is_checker>
  402043:	74 16                	je     40205b <bushandler+0x23>
  402045:	48 8d 3d 59 15 00 00 	lea    0x1559(%rip),%rdi        # 4035a5 <_IO_stdin_used+0x4a5>
  40204c:	e8 6f ec ff ff       	callq  400cc0 <puts@plt>
  402051:	b8 00 00 00 00       	mov    $0x0,%eax
  402056:	e8 3d fc ff ff       	callq  401c98 <check_fail>
  40205b:	48 8d 3d ae 16 00 00 	lea    0x16ae(%rip),%rdi        # 403710 <_IO_stdin_used+0x610>
  402062:	e8 59 ec ff ff       	callq  400cc0 <puts@plt>
  402067:	48 8d 3d 41 15 00 00 	lea    0x1541(%rip),%rdi        # 4035af <_IO_stdin_used+0x4af>
  40206e:	e8 4d ec ff ff       	callq  400cc0 <puts@plt>
  402073:	be 00 00 00 00       	mov    $0x0,%esi
  402078:	bf 00 00 00 00       	mov    $0x0,%edi
  40207d:	e8 a0 fc ff ff       	callq  401d22 <notify_server>
  402082:	bf 01 00 00 00       	mov    $0x1,%edi
  402087:	e8 a4 ed ff ff       	callq  400e30 <exit@plt>

000000000040208c <seghandler>:
  40208c:	48 83 ec 08          	sub    $0x8,%rsp
  402090:	83 3d 71 34 20 00 00 	cmpl   $0x0,0x203471(%rip)        # 605508 <is_checker>
  402097:	74 16                	je     4020af <seghandler+0x23>
  402099:	48 8d 3d 25 15 00 00 	lea    0x1525(%rip),%rdi        # 4035c5 <_IO_stdin_used+0x4c5>
  4020a0:	e8 1b ec ff ff       	callq  400cc0 <puts@plt>
  4020a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4020aa:	e8 e9 fb ff ff       	callq  401c98 <check_fail>
  4020af:	48 8d 3d 7a 16 00 00 	lea    0x167a(%rip),%rdi        # 403730 <_IO_stdin_used+0x630>
  4020b6:	e8 05 ec ff ff       	callq  400cc0 <puts@plt>
  4020bb:	48 8d 3d ed 14 00 00 	lea    0x14ed(%rip),%rdi        # 4035af <_IO_stdin_used+0x4af>
  4020c2:	e8 f9 eb ff ff       	callq  400cc0 <puts@plt>
  4020c7:	be 00 00 00 00       	mov    $0x0,%esi
  4020cc:	bf 00 00 00 00       	mov    $0x0,%edi
  4020d1:	e8 4c fc ff ff       	callq  401d22 <notify_server>
  4020d6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020db:	e8 50 ed ff ff       	callq  400e30 <exit@plt>

00000000004020e0 <illegalhandler>:
  4020e0:	48 83 ec 08          	sub    $0x8,%rsp
  4020e4:	83 3d 1d 34 20 00 00 	cmpl   $0x0,0x20341d(%rip)        # 605508 <is_checker>
  4020eb:	74 16                	je     402103 <illegalhandler+0x23>
  4020ed:	48 8d 3d e4 14 00 00 	lea    0x14e4(%rip),%rdi        # 4035d8 <_IO_stdin_used+0x4d8>
  4020f4:	e8 c7 eb ff ff       	callq  400cc0 <puts@plt>
  4020f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fe:	e8 95 fb ff ff       	callq  401c98 <check_fail>
  402103:	48 8d 3d 4e 16 00 00 	lea    0x164e(%rip),%rdi        # 403758 <_IO_stdin_used+0x658>
  40210a:	e8 b1 eb ff ff       	callq  400cc0 <puts@plt>
  40210f:	48 8d 3d 99 14 00 00 	lea    0x1499(%rip),%rdi        # 4035af <_IO_stdin_used+0x4af>
  402116:	e8 a5 eb ff ff       	callq  400cc0 <puts@plt>
  40211b:	be 00 00 00 00       	mov    $0x0,%esi
  402120:	bf 00 00 00 00       	mov    $0x0,%edi
  402125:	e8 f8 fb ff ff       	callq  401d22 <notify_server>
  40212a:	bf 01 00 00 00       	mov    $0x1,%edi
  40212f:	e8 fc ec ff ff       	callq  400e30 <exit@plt>

0000000000402134 <sigalrmhandler>:
  402134:	48 83 ec 08          	sub    $0x8,%rsp
  402138:	83 3d c9 33 20 00 00 	cmpl   $0x0,0x2033c9(%rip)        # 605508 <is_checker>
  40213f:	74 16                	je     402157 <sigalrmhandler+0x23>
  402141:	48 8d 3d a4 14 00 00 	lea    0x14a4(%rip),%rdi        # 4035ec <_IO_stdin_used+0x4ec>
  402148:	e8 73 eb ff ff       	callq  400cc0 <puts@plt>
  40214d:	b8 00 00 00 00       	mov    $0x0,%eax
  402152:	e8 41 fb ff ff       	callq  401c98 <check_fail>
  402157:	ba 05 00 00 00       	mov    $0x5,%edx
  40215c:	48 8d 35 25 16 00 00 	lea    0x1625(%rip),%rsi        # 403788 <_IO_stdin_used+0x688>
  402163:	bf 01 00 00 00       	mov    $0x1,%edi
  402168:	b8 00 00 00 00       	mov    $0x0,%eax
  40216d:	e8 6e ec ff ff       	callq  400de0 <__printf_chk@plt>
  402172:	be 00 00 00 00       	mov    $0x0,%esi
  402177:	bf 00 00 00 00       	mov    $0x0,%edi
  40217c:	e8 a1 fb ff ff       	callq  401d22 <notify_server>
  402181:	bf 01 00 00 00       	mov    $0x1,%edi
  402186:	e8 a5 ec ff ff       	callq  400e30 <exit@plt>

000000000040218b <launch>:
  40218b:	55                   	push   %rbp
  40218c:	48 89 e5             	mov    %rsp,%rbp
  40218f:	48 83 ec 10          	sub    $0x10,%rsp
  402193:	48 89 fa             	mov    %rdi,%rdx
  402196:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40219d:	00 00 
  40219f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021a3:	31 c0                	xor    %eax,%eax
  4021a5:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4021a9:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4021ad:	48 29 c4             	sub    %rax,%rsp
  4021b0:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4021b5:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4021b9:	be f4 00 00 00       	mov    $0xf4,%esi
  4021be:	e8 3d eb ff ff       	callq  400d00 <memset@plt>
  4021c3:	48 8b 05 d6 32 20 00 	mov    0x2032d6(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4021ca:	48 39 05 1f 33 20 00 	cmp    %rax,0x20331f(%rip)        # 6054f0 <infile>
  4021d1:	74 3a                	je     40220d <launch+0x82>
  4021d3:	c7 05 1f 33 20 00 00 	movl   $0x0,0x20331f(%rip)        # 6054fc <vlevel>
  4021da:	00 00 00 
  4021dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e2:	e8 f3 f8 ff ff       	callq  401ada <test>
  4021e7:	83 3d 1a 33 20 00 00 	cmpl   $0x0,0x20331a(%rip)        # 605508 <is_checker>
  4021ee:	75 35                	jne    402225 <launch+0x9a>
  4021f0:	48 8d 3d 15 14 00 00 	lea    0x1415(%rip),%rdi        # 40360c <_IO_stdin_used+0x50c>
  4021f7:	e8 c4 ea ff ff       	callq  400cc0 <puts@plt>
  4021fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402200:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402207:	00 00 
  402209:	75 30                	jne    40223b <launch+0xb0>
  40220b:	c9                   	leaveq 
  40220c:	c3                   	retq   
  40220d:	48 8d 35 e0 13 00 00 	lea    0x13e0(%rip),%rsi        # 4035f4 <_IO_stdin_used+0x4f4>
  402214:	bf 01 00 00 00       	mov    $0x1,%edi
  402219:	b8 00 00 00 00       	mov    $0x0,%eax
  40221e:	e8 bd eb ff ff       	callq  400de0 <__printf_chk@plt>
  402223:	eb ae                	jmp    4021d3 <launch+0x48>
  402225:	48 8d 3d d5 13 00 00 	lea    0x13d5(%rip),%rdi        # 403601 <_IO_stdin_used+0x501>
  40222c:	e8 8f ea ff ff       	callq  400cc0 <puts@plt>
  402231:	b8 00 00 00 00       	mov    $0x0,%eax
  402236:	e8 5d fa ff ff       	callq  401c98 <check_fail>
  40223b:	e8 a0 ea ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402240 <stable_launch>:
  402240:	53                   	push   %rbx
  402241:	48 89 3d a0 32 20 00 	mov    %rdi,0x2032a0(%rip)        # 6054e8 <global_offset>
  402248:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40224e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402254:	b9 32 01 00 00       	mov    $0x132,%ecx
  402259:	ba 07 00 00 00       	mov    $0x7,%edx
  40225e:	be 00 00 10 00       	mov    $0x100000,%esi
  402263:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402268:	e8 83 ea ff ff       	callq  400cf0 <mmap@plt>
  40226d:	48 89 c3             	mov    %rax,%rbx
  402270:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402276:	75 43                	jne    4022bb <stable_launch+0x7b>
  402278:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40227f:	48 89 15 aa 3e 20 00 	mov    %rdx,0x203eaa(%rip)        # 606130 <stack_top>
  402286:	48 89 e0             	mov    %rsp,%rax
  402289:	48 89 d4             	mov    %rdx,%rsp
  40228c:	48 89 c2             	mov    %rax,%rdx
  40228f:	48 89 15 4a 32 20 00 	mov    %rdx,0x20324a(%rip)        # 6054e0 <global_save_stack>
  402296:	48 8b 3d 4b 32 20 00 	mov    0x20324b(%rip),%rdi        # 6054e8 <global_offset>
  40229d:	e8 e9 fe ff ff       	callq  40218b <launch>
  4022a2:	48 8b 05 37 32 20 00 	mov    0x203237(%rip),%rax        # 6054e0 <global_save_stack>
  4022a9:	48 89 c4             	mov    %rax,%rsp
  4022ac:	be 00 00 10 00       	mov    $0x100000,%esi
  4022b1:	48 89 df             	mov    %rbx,%rdi
  4022b4:	e8 17 eb ff ff       	callq  400dd0 <munmap@plt>
  4022b9:	5b                   	pop    %rbx
  4022ba:	c3                   	retq   
  4022bb:	be 00 00 10 00       	mov    $0x100000,%esi
  4022c0:	48 89 c7             	mov    %rax,%rdi
  4022c3:	e8 08 eb ff ff       	callq  400dd0 <munmap@plt>
  4022c8:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4022cd:	48 8d 15 ec 14 00 00 	lea    0x14ec(%rip),%rdx        # 4037c0 <_IO_stdin_used+0x6c0>
  4022d4:	be 01 00 00 00       	mov    $0x1,%esi
  4022d9:	48 8b 3d e0 31 20 00 	mov    0x2031e0(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  4022e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e5:	e8 66 eb ff ff       	callq  400e50 <__fprintf_chk@plt>
  4022ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4022ef:	e8 3c eb ff ff       	callq  400e30 <exit@plt>

00000000004022f4 <rio_readinitb>:
  4022f4:	89 37                	mov    %esi,(%rdi)
  4022f6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4022fd:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402301:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402305:	c3                   	retq   

0000000000402306 <sigalrm_handler>:
  402306:	48 83 ec 08          	sub    $0x8,%rsp
  40230a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40230f:	48 8d 15 ea 14 00 00 	lea    0x14ea(%rip),%rdx        # 403800 <trans_char+0x10>
  402316:	be 01 00 00 00       	mov    $0x1,%esi
  40231b:	48 8b 3d 9e 31 20 00 	mov    0x20319e(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402322:	b8 00 00 00 00       	mov    $0x0,%eax
  402327:	e8 24 eb ff ff       	callq  400e50 <__fprintf_chk@plt>
  40232c:	bf 01 00 00 00       	mov    $0x1,%edi
  402331:	e8 fa ea ff ff       	callq  400e30 <exit@plt>

0000000000402336 <rio_writen>:
  402336:	41 55                	push   %r13
  402338:	41 54                	push   %r12
  40233a:	55                   	push   %rbp
  40233b:	53                   	push   %rbx
  40233c:	48 83 ec 08          	sub    $0x8,%rsp
  402340:	41 89 fc             	mov    %edi,%r12d
  402343:	48 89 f5             	mov    %rsi,%rbp
  402346:	49 89 d5             	mov    %rdx,%r13
  402349:	48 89 d3             	mov    %rdx,%rbx
  40234c:	eb 06                	jmp    402354 <rio_writen+0x1e>
  40234e:	48 29 c3             	sub    %rax,%rbx
  402351:	48 01 c5             	add    %rax,%rbp
  402354:	48 85 db             	test   %rbx,%rbx
  402357:	74 24                	je     40237d <rio_writen+0x47>
  402359:	48 89 da             	mov    %rbx,%rdx
  40235c:	48 89 ee             	mov    %rbp,%rsi
  40235f:	44 89 e7             	mov    %r12d,%edi
  402362:	e8 69 e9 ff ff       	callq  400cd0 <write@plt>
  402367:	48 85 c0             	test   %rax,%rax
  40236a:	7f e2                	jg     40234e <rio_writen+0x18>
  40236c:	e8 0f e9 ff ff       	callq  400c80 <__errno_location@plt>
  402371:	83 38 04             	cmpl   $0x4,(%rax)
  402374:	75 15                	jne    40238b <rio_writen+0x55>
  402376:	b8 00 00 00 00       	mov    $0x0,%eax
  40237b:	eb d1                	jmp    40234e <rio_writen+0x18>
  40237d:	4c 89 e8             	mov    %r13,%rax
  402380:	48 83 c4 08          	add    $0x8,%rsp
  402384:	5b                   	pop    %rbx
  402385:	5d                   	pop    %rbp
  402386:	41 5c                	pop    %r12
  402388:	41 5d                	pop    %r13
  40238a:	c3                   	retq   
  40238b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402392:	eb ec                	jmp    402380 <rio_writen+0x4a>

0000000000402394 <rio_read>:
  402394:	41 55                	push   %r13
  402396:	41 54                	push   %r12
  402398:	55                   	push   %rbp
  402399:	53                   	push   %rbx
  40239a:	48 83 ec 08          	sub    $0x8,%rsp
  40239e:	48 89 fb             	mov    %rdi,%rbx
  4023a1:	49 89 f5             	mov    %rsi,%r13
  4023a4:	49 89 d4             	mov    %rdx,%r12
  4023a7:	eb 0a                	jmp    4023b3 <rio_read+0x1f>
  4023a9:	e8 d2 e8 ff ff       	callq  400c80 <__errno_location@plt>
  4023ae:	83 38 04             	cmpl   $0x4,(%rax)
  4023b1:	75 5c                	jne    40240f <rio_read+0x7b>
  4023b3:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4023b6:	85 ed                	test   %ebp,%ebp
  4023b8:	7f 24                	jg     4023de <rio_read+0x4a>
  4023ba:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4023be:	8b 3b                	mov    (%rbx),%edi
  4023c0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4023c5:	48 89 ee             	mov    %rbp,%rsi
  4023c8:	e8 63 e9 ff ff       	callq  400d30 <read@plt>
  4023cd:	89 43 04             	mov    %eax,0x4(%rbx)
  4023d0:	85 c0                	test   %eax,%eax
  4023d2:	78 d5                	js     4023a9 <rio_read+0x15>
  4023d4:	85 c0                	test   %eax,%eax
  4023d6:	74 40                	je     402418 <rio_read+0x84>
  4023d8:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4023dc:	eb d5                	jmp    4023b3 <rio_read+0x1f>
  4023de:	89 e8                	mov    %ebp,%eax
  4023e0:	4c 39 e0             	cmp    %r12,%rax
  4023e3:	72 03                	jb     4023e8 <rio_read+0x54>
  4023e5:	44 89 e5             	mov    %r12d,%ebp
  4023e8:	4c 63 e5             	movslq %ebp,%r12
  4023eb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4023ef:	4c 89 e2             	mov    %r12,%rdx
  4023f2:	4c 89 ef             	mov    %r13,%rdi
  4023f5:	e8 86 e9 ff ff       	callq  400d80 <memcpy@plt>
  4023fa:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4023fe:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402401:	4c 89 e0             	mov    %r12,%rax
  402404:	48 83 c4 08          	add    $0x8,%rsp
  402408:	5b                   	pop    %rbx
  402409:	5d                   	pop    %rbp
  40240a:	41 5c                	pop    %r12
  40240c:	41 5d                	pop    %r13
  40240e:	c3                   	retq   
  40240f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402416:	eb ec                	jmp    402404 <rio_read+0x70>
  402418:	b8 00 00 00 00       	mov    $0x0,%eax
  40241d:	eb e5                	jmp    402404 <rio_read+0x70>

000000000040241f <rio_readlineb>:
  40241f:	41 55                	push   %r13
  402421:	41 54                	push   %r12
  402423:	55                   	push   %rbp
  402424:	53                   	push   %rbx
  402425:	48 83 ec 18          	sub    $0x18,%rsp
  402429:	49 89 fd             	mov    %rdi,%r13
  40242c:	48 89 f5             	mov    %rsi,%rbp
  40242f:	49 89 d4             	mov    %rdx,%r12
  402432:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402439:	00 00 
  40243b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402440:	31 c0                	xor    %eax,%eax
  402442:	bb 01 00 00 00       	mov    $0x1,%ebx
  402447:	4c 39 e3             	cmp    %r12,%rbx
  40244a:	73 47                	jae    402493 <rio_readlineb+0x74>
  40244c:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402451:	ba 01 00 00 00       	mov    $0x1,%edx
  402456:	4c 89 ef             	mov    %r13,%rdi
  402459:	e8 36 ff ff ff       	callq  402394 <rio_read>
  40245e:	83 f8 01             	cmp    $0x1,%eax
  402461:	75 1c                	jne    40247f <rio_readlineb+0x60>
  402463:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402467:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40246c:	88 55 00             	mov    %dl,0x0(%rbp)
  40246f:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402474:	74 1a                	je     402490 <rio_readlineb+0x71>
  402476:	48 83 c3 01          	add    $0x1,%rbx
  40247a:	48 89 c5             	mov    %rax,%rbp
  40247d:	eb c8                	jmp    402447 <rio_readlineb+0x28>
  40247f:	85 c0                	test   %eax,%eax
  402481:	75 32                	jne    4024b5 <rio_readlineb+0x96>
  402483:	48 83 fb 01          	cmp    $0x1,%rbx
  402487:	75 0a                	jne    402493 <rio_readlineb+0x74>
  402489:	b8 00 00 00 00       	mov    $0x0,%eax
  40248e:	eb 0a                	jmp    40249a <rio_readlineb+0x7b>
  402490:	48 89 c5             	mov    %rax,%rbp
  402493:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402497:	48 89 d8             	mov    %rbx,%rax
  40249a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40249f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4024a6:	00 00 
  4024a8:	75 14                	jne    4024be <rio_readlineb+0x9f>
  4024aa:	48 83 c4 18          	add    $0x18,%rsp
  4024ae:	5b                   	pop    %rbx
  4024af:	5d                   	pop    %rbp
  4024b0:	41 5c                	pop    %r12
  4024b2:	41 5d                	pop    %r13
  4024b4:	c3                   	retq   
  4024b5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024bc:	eb dc                	jmp    40249a <rio_readlineb+0x7b>
  4024be:	e8 1d e8 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004024c3 <urlencode>:
  4024c3:	41 54                	push   %r12
  4024c5:	55                   	push   %rbp
  4024c6:	53                   	push   %rbx
  4024c7:	48 83 ec 10          	sub    $0x10,%rsp
  4024cb:	48 89 fb             	mov    %rdi,%rbx
  4024ce:	48 89 f5             	mov    %rsi,%rbp
  4024d1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024d8:	00 00 
  4024da:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024df:	31 c0                	xor    %eax,%eax
  4024e1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4024e8:	f2 ae                	repnz scas %es:(%rdi),%al
  4024ea:	48 89 ce             	mov    %rcx,%rsi
  4024ed:	48 f7 d6             	not    %rsi
  4024f0:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4024f3:	eb 0f                	jmp    402504 <urlencode+0x41>
  4024f5:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4024f9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024fd:	48 83 c3 01          	add    $0x1,%rbx
  402501:	44 89 e0             	mov    %r12d,%eax
  402504:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402508:	85 c0                	test   %eax,%eax
  40250a:	0f 84 a8 00 00 00    	je     4025b8 <urlencode+0xf5>
  402510:	44 0f b6 03          	movzbl (%rbx),%r8d
  402514:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402518:	0f 94 c2             	sete   %dl
  40251b:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40251f:	0f 94 c0             	sete   %al
  402522:	08 c2                	or     %al,%dl
  402524:	75 cf                	jne    4024f5 <urlencode+0x32>
  402526:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40252a:	74 c9                	je     4024f5 <urlencode+0x32>
  40252c:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402530:	74 c3                	je     4024f5 <urlencode+0x32>
  402532:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402536:	3c 09                	cmp    $0x9,%al
  402538:	76 bb                	jbe    4024f5 <urlencode+0x32>
  40253a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40253e:	3c 19                	cmp    $0x19,%al
  402540:	76 b3                	jbe    4024f5 <urlencode+0x32>
  402542:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402546:	3c 19                	cmp    $0x19,%al
  402548:	76 ab                	jbe    4024f5 <urlencode+0x32>
  40254a:	41 80 f8 20          	cmp    $0x20,%r8b
  40254e:	74 56                	je     4025a6 <urlencode+0xe3>
  402550:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402554:	3c 5f                	cmp    $0x5f,%al
  402556:	0f 96 c2             	setbe  %dl
  402559:	41 80 f8 09          	cmp    $0x9,%r8b
  40255d:	0f 94 c0             	sete   %al
  402560:	08 c2                	or     %al,%dl
  402562:	74 4f                	je     4025b3 <urlencode+0xf0>
  402564:	48 89 e7             	mov    %rsp,%rdi
  402567:	45 0f b6 c0          	movzbl %r8b,%r8d
  40256b:	48 8d 0d 26 13 00 00 	lea    0x1326(%rip),%rcx        # 403898 <trans_char+0xa8>
  402572:	ba 08 00 00 00       	mov    $0x8,%edx
  402577:	be 01 00 00 00       	mov    $0x1,%esi
  40257c:	b8 00 00 00 00       	mov    $0x0,%eax
  402581:	e8 da e8 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402586:	0f b6 04 24          	movzbl (%rsp),%eax
  40258a:	88 45 00             	mov    %al,0x0(%rbp)
  40258d:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402592:	88 45 01             	mov    %al,0x1(%rbp)
  402595:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40259a:	88 45 02             	mov    %al,0x2(%rbp)
  40259d:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4025a1:	e9 57 ff ff ff       	jmpq   4024fd <urlencode+0x3a>
  4025a6:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4025aa:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4025ae:	e9 4a ff ff ff       	jmpq   4024fd <urlencode+0x3a>
  4025b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b8:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4025bd:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4025c4:	00 00 
  4025c6:	75 09                	jne    4025d1 <urlencode+0x10e>
  4025c8:	48 83 c4 10          	add    $0x10,%rsp
  4025cc:	5b                   	pop    %rbx
  4025cd:	5d                   	pop    %rbp
  4025ce:	41 5c                	pop    %r12
  4025d0:	c3                   	retq   
  4025d1:	e8 0a e7 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004025d6 <submitr>:
  4025d6:	41 57                	push   %r15
  4025d8:	41 56                	push   %r14
  4025da:	41 55                	push   %r13
  4025dc:	41 54                	push   %r12
  4025de:	55                   	push   %rbp
  4025df:	53                   	push   %rbx
  4025e0:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4025e7:	49 89 fd             	mov    %rdi,%r13
  4025ea:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4025ee:	49 89 d7             	mov    %rdx,%r15
  4025f1:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  4025f6:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4025fb:	4d 89 ce             	mov    %r9,%r14
  4025fe:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402605:	00 
  402606:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40260d:	00 00 
  40260f:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402616:	00 
  402617:	31 c0                	xor    %eax,%eax
  402619:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402620:	00 
  402621:	ba 00 00 00 00       	mov    $0x0,%edx
  402626:	be 01 00 00 00       	mov    $0x1,%esi
  40262b:	bf 02 00 00 00       	mov    $0x2,%edi
  402630:	e8 3b e8 ff ff       	callq  400e70 <socket@plt>
  402635:	85 c0                	test   %eax,%eax
  402637:	0f 88 a9 02 00 00    	js     4028e6 <submitr+0x310>
  40263d:	89 c3                	mov    %eax,%ebx
  40263f:	4c 89 ef             	mov    %r13,%rdi
  402642:	e8 09 e7 ff ff       	callq  400d50 <gethostbyname@plt>
  402647:	48 85 c0             	test   %rax,%rax
  40264a:	0f 84 e2 02 00 00    	je     402932 <submitr+0x35c>
  402650:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402655:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  40265c:	00 00 
  40265e:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  402665:	00 
  402666:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  40266d:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402674:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402678:	48 8b 40 18          	mov    0x18(%rax),%rax
  40267c:	48 8b 30             	mov    (%rax),%rsi
  40267f:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402684:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402689:	e8 d2 e6 ff ff       	callq  400d60 <__memmove_chk@plt>
  40268e:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402693:	66 c1 c8 08          	ror    $0x8,%ax
  402697:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40269c:	ba 10 00 00 00       	mov    $0x10,%edx
  4026a1:	4c 89 e6             	mov    %r12,%rsi
  4026a4:	89 df                	mov    %ebx,%edi
  4026a6:	e8 95 e7 ff ff       	callq  400e40 <connect@plt>
  4026ab:	85 c0                	test   %eax,%eax
  4026ad:	0f 88 e7 02 00 00    	js     40299a <submitr+0x3c4>
  4026b3:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4026ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4026bf:	48 89 f1             	mov    %rsi,%rcx
  4026c2:	4c 89 f7             	mov    %r14,%rdi
  4026c5:	f2 ae                	repnz scas %es:(%rdi),%al
  4026c7:	48 89 ca             	mov    %rcx,%rdx
  4026ca:	48 f7 d2             	not    %rdx
  4026cd:	48 89 f1             	mov    %rsi,%rcx
  4026d0:	4c 89 ff             	mov    %r15,%rdi
  4026d3:	f2 ae                	repnz scas %es:(%rdi),%al
  4026d5:	48 f7 d1             	not    %rcx
  4026d8:	49 89 c8             	mov    %rcx,%r8
  4026db:	48 89 f1             	mov    %rsi,%rcx
  4026de:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4026e3:	f2 ae                	repnz scas %es:(%rdi),%al
  4026e5:	48 f7 d1             	not    %rcx
  4026e8:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4026ed:	48 89 f1             	mov    %rsi,%rcx
  4026f0:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4026f5:	f2 ae                	repnz scas %es:(%rdi),%al
  4026f7:	48 89 c8             	mov    %rcx,%rax
  4026fa:	48 f7 d0             	not    %rax
  4026fd:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402702:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402707:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40270e:	00 
  40270f:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402715:	0f 87 d9 02 00 00    	ja     4029f4 <submitr+0x41e>
  40271b:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402722:	00 
  402723:	b9 00 04 00 00       	mov    $0x400,%ecx
  402728:	b8 00 00 00 00       	mov    $0x0,%eax
  40272d:	48 89 f7             	mov    %rsi,%rdi
  402730:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402733:	4c 89 f7             	mov    %r14,%rdi
  402736:	e8 88 fd ff ff       	callq  4024c3 <urlencode>
  40273b:	85 c0                	test   %eax,%eax
  40273d:	0f 88 24 03 00 00    	js     402a67 <submitr+0x491>
  402743:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  40274a:	00 
  40274b:	41 55                	push   %r13
  40274d:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402754:	00 
  402755:	50                   	push   %rax
  402756:	4d 89 f9             	mov    %r15,%r9
  402759:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40275e:	48 8d 0d c3 10 00 00 	lea    0x10c3(%rip),%rcx        # 403828 <trans_char+0x38>
  402765:	ba 00 20 00 00       	mov    $0x2000,%edx
  40276a:	be 01 00 00 00       	mov    $0x1,%esi
  40276f:	4c 89 e7             	mov    %r12,%rdi
  402772:	b8 00 00 00 00       	mov    $0x0,%eax
  402777:	e8 e4 e6 ff ff       	callq  400e60 <__sprintf_chk@plt>
  40277c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402783:	b8 00 00 00 00       	mov    $0x0,%eax
  402788:	4c 89 e7             	mov    %r12,%rdi
  40278b:	f2 ae                	repnz scas %es:(%rdi),%al
  40278d:	48 89 ca             	mov    %rcx,%rdx
  402790:	48 f7 d2             	not    %rdx
  402793:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402797:	4c 89 e6             	mov    %r12,%rsi
  40279a:	89 df                	mov    %ebx,%edi
  40279c:	e8 95 fb ff ff       	callq  402336 <rio_writen>
  4027a1:	48 83 c4 10          	add    $0x10,%rsp
  4027a5:	48 85 c0             	test   %rax,%rax
  4027a8:	0f 88 44 03 00 00    	js     402af2 <submitr+0x51c>
  4027ae:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  4027b3:	89 de                	mov    %ebx,%esi
  4027b5:	4c 89 e7             	mov    %r12,%rdi
  4027b8:	e8 37 fb ff ff       	callq  4022f4 <rio_readinitb>
  4027bd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4027c4:	00 
  4027c5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027ca:	4c 89 e7             	mov    %r12,%rdi
  4027cd:	e8 4d fc ff ff       	callq  40241f <rio_readlineb>
  4027d2:	48 85 c0             	test   %rax,%rax
  4027d5:	0f 8e 86 03 00 00    	jle    402b61 <submitr+0x58b>
  4027db:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4027e0:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  4027e7:	00 
  4027e8:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  4027ef:	00 
  4027f0:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4027f7:	00 
  4027f8:	48 8d 35 a0 10 00 00 	lea    0x10a0(%rip),%rsi        # 40389f <trans_char+0xaf>
  4027ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402804:	e8 b7 e5 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  402809:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402810:	00 
  402811:	b9 03 00 00 00       	mov    $0x3,%ecx
  402816:	48 8d 3d 99 10 00 00 	lea    0x1099(%rip),%rdi        # 4038b6 <trans_char+0xc6>
  40281d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40281f:	0f 97 c0             	seta   %al
  402822:	1c 00                	sbb    $0x0,%al
  402824:	84 c0                	test   %al,%al
  402826:	0f 84 b3 03 00 00    	je     402bdf <submitr+0x609>
  40282c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402833:	00 
  402834:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402839:	ba 00 20 00 00       	mov    $0x2000,%edx
  40283e:	e8 dc fb ff ff       	callq  40241f <rio_readlineb>
  402843:	48 85 c0             	test   %rax,%rax
  402846:	7f c1                	jg     402809 <submitr+0x233>
  402848:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40284f:	3a 20 43 
  402852:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402859:	20 75 6e 
  40285c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402860:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402864:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40286b:	74 6f 20 
  40286e:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402875:	68 65 61 
  402878:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40287c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402880:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402887:	66 72 6f 
  40288a:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402891:	20 72 65 
  402894:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402898:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40289c:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4028a3:	73 65 72 
  4028a6:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028aa:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4028b1:	89 df                	mov    %ebx,%edi
  4028b3:	e8 68 e4 ff ff       	callq  400d20 <close@plt>
  4028b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028bd:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  4028c4:	00 
  4028c5:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4028cc:	00 00 
  4028ce:	0f 85 7e 04 00 00    	jne    402d52 <submitr+0x77c>
  4028d4:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  4028db:	5b                   	pop    %rbx
  4028dc:	5d                   	pop    %rbp
  4028dd:	41 5c                	pop    %r12
  4028df:	41 5d                	pop    %r13
  4028e1:	41 5e                	pop    %r14
  4028e3:	41 5f                	pop    %r15
  4028e5:	c3                   	retq   
  4028e6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028ed:	3a 20 43 
  4028f0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028f7:	20 75 6e 
  4028fa:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028fe:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402902:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402909:	74 6f 20 
  40290c:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402913:	65 20 73 
  402916:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40291a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40291e:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402925:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40292b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402930:	eb 8b                	jmp    4028bd <submitr+0x2e7>
  402932:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402939:	3a 20 44 
  40293c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402943:	20 75 6e 
  402946:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40294a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40294e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402955:	74 6f 20 
  402958:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40295f:	76 65 20 
  402962:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402966:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40296a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402971:	72 20 61 
  402974:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402978:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40297f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402985:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402989:	89 df                	mov    %ebx,%edi
  40298b:	e8 90 e3 ff ff       	callq  400d20 <close@plt>
  402990:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402995:	e9 23 ff ff ff       	jmpq   4028bd <submitr+0x2e7>
  40299a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4029a1:	3a 20 55 
  4029a4:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4029ab:	20 74 6f 
  4029ae:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029b2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029b6:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029bd:	65 63 74 
  4029c0:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4029c7:	68 65 20 
  4029ca:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029ce:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029d2:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4029d9:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  4029df:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  4029e3:	89 df                	mov    %ebx,%edi
  4029e5:	e8 36 e3 ff ff       	callq  400d20 <close@plt>
  4029ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ef:	e9 c9 fe ff ff       	jmpq   4028bd <submitr+0x2e7>
  4029f4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4029fb:	3a 20 52 
  4029fe:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a05:	20 73 74 
  402a08:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a0c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a10:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402a17:	74 6f 6f 
  402a1a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402a21:	65 2e 20 
  402a24:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a28:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a2c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402a33:	61 73 65 
  402a36:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402a3d:	49 54 52 
  402a40:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a44:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a48:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402a4f:	55 46 00 
  402a52:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a56:	89 df                	mov    %ebx,%edi
  402a58:	e8 c3 e2 ff ff       	callq  400d20 <close@plt>
  402a5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a62:	e9 56 fe ff ff       	jmpq   4028bd <submitr+0x2e7>
  402a67:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a6e:	3a 20 52 
  402a71:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a78:	20 73 74 
  402a7b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a7f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a83:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402a8a:	63 6f 6e 
  402a8d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402a94:	20 61 6e 
  402a97:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a9b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a9f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402aa6:	67 61 6c 
  402aa9:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402ab0:	6e 70 72 
  402ab3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ab7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402abb:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402ac2:	6c 65 20 
  402ac5:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402acc:	63 74 65 
  402acf:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ad3:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402ad7:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402add:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402ae1:	89 df                	mov    %ebx,%edi
  402ae3:	e8 38 e2 ff ff       	callq  400d20 <close@plt>
  402ae8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aed:	e9 cb fd ff ff       	jmpq   4028bd <submitr+0x2e7>
  402af2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402af9:	3a 20 43 
  402afc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b03:	20 75 6e 
  402b06:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b0a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b0e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b15:	74 6f 20 
  402b18:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402b1f:	20 74 6f 
  402b22:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b26:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b2a:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402b31:	72 65 73 
  402b34:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402b3b:	65 72 76 
  402b3e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b42:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b46:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402b4c:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402b50:	89 df                	mov    %ebx,%edi
  402b52:	e8 c9 e1 ff ff       	callq  400d20 <close@plt>
  402b57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b5c:	e9 5c fd ff ff       	jmpq   4028bd <submitr+0x2e7>
  402b61:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b68:	3a 20 43 
  402b6b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b72:	20 75 6e 
  402b75:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b79:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b7d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b84:	74 6f 20 
  402b87:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402b8e:	66 69 72 
  402b91:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b95:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b99:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402ba0:	61 64 65 
  402ba3:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402baa:	6d 20 72 
  402bad:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bb1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bb5:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402bbc:	20 73 65 
  402bbf:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402bc3:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402bca:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402bce:	89 df                	mov    %ebx,%edi
  402bd0:	e8 4b e1 ff ff       	callq  400d20 <close@plt>
  402bd5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bda:	e9 de fc ff ff       	jmpq   4028bd <submitr+0x2e7>
  402bdf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402be6:	00 
  402be7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402bec:	ba 00 20 00 00       	mov    $0x2000,%edx
  402bf1:	e8 29 f8 ff ff       	callq  40241f <rio_readlineb>
  402bf6:	48 85 c0             	test   %rax,%rax
  402bf9:	0f 8e 96 00 00 00    	jle    402c95 <submitr+0x6bf>
  402bff:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402c04:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402c0b:	0f 85 08 01 00 00    	jne    402d19 <submitr+0x743>
  402c11:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c18:	00 
  402c19:	48 89 ef             	mov    %rbp,%rdi
  402c1c:	e8 8f e0 ff ff       	callq  400cb0 <strcpy@plt>
  402c21:	89 df                	mov    %ebx,%edi
  402c23:	e8 f8 e0 ff ff       	callq  400d20 <close@plt>
  402c28:	b9 04 00 00 00       	mov    $0x4,%ecx
  402c2d:	48 8d 3d 7c 0c 00 00 	lea    0xc7c(%rip),%rdi        # 4038b0 <trans_char+0xc0>
  402c34:	48 89 ee             	mov    %rbp,%rsi
  402c37:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c39:	0f 97 c0             	seta   %al
  402c3c:	1c 00                	sbb    $0x0,%al
  402c3e:	0f be c0             	movsbl %al,%eax
  402c41:	85 c0                	test   %eax,%eax
  402c43:	0f 84 74 fc ff ff    	je     4028bd <submitr+0x2e7>
  402c49:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c4e:	48 8d 3d 5f 0c 00 00 	lea    0xc5f(%rip),%rdi        # 4038b4 <trans_char+0xc4>
  402c55:	48 89 ee             	mov    %rbp,%rsi
  402c58:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c5a:	0f 97 c0             	seta   %al
  402c5d:	1c 00                	sbb    $0x0,%al
  402c5f:	0f be c0             	movsbl %al,%eax
  402c62:	85 c0                	test   %eax,%eax
  402c64:	0f 84 53 fc ff ff    	je     4028bd <submitr+0x2e7>
  402c6a:	b9 03 00 00 00       	mov    $0x3,%ecx
  402c6f:	48 8d 3d 43 0c 00 00 	lea    0xc43(%rip),%rdi        # 4038b9 <trans_char+0xc9>
  402c76:	48 89 ee             	mov    %rbp,%rsi
  402c79:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c7b:	0f 97 c0             	seta   %al
  402c7e:	1c 00                	sbb    $0x0,%al
  402c80:	0f be c0             	movsbl %al,%eax
  402c83:	85 c0                	test   %eax,%eax
  402c85:	0f 84 32 fc ff ff    	je     4028bd <submitr+0x2e7>
  402c8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c90:	e9 28 fc ff ff       	jmpq   4028bd <submitr+0x2e7>
  402c95:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c9c:	3a 20 43 
  402c9f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ca6:	20 75 6e 
  402ca9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402cb1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cb8:	74 6f 20 
  402cbb:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402cc2:	73 74 61 
  402cc5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cc9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ccd:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402cd4:	65 73 73 
  402cd7:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402cde:	72 6f 6d 
  402ce1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ce5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ce9:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402cf0:	6c 74 20 
  402cf3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402cf7:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402cfe:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402d04:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402d08:	89 df                	mov    %ebx,%edi
  402d0a:	e8 11 e0 ff ff       	callq  400d20 <close@plt>
  402d0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d14:	e9 a4 fb ff ff       	jmpq   4028bd <submitr+0x2e7>
  402d19:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402d20:	00 
  402d21:	48 8d 0d 40 0b 00 00 	lea    0xb40(%rip),%rcx        # 403868 <trans_char+0x78>
  402d28:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402d2f:	be 01 00 00 00       	mov    $0x1,%esi
  402d34:	48 89 ef             	mov    %rbp,%rdi
  402d37:	b8 00 00 00 00       	mov    $0x0,%eax
  402d3c:	e8 1f e1 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402d41:	89 df                	mov    %ebx,%edi
  402d43:	e8 d8 df ff ff       	callq  400d20 <close@plt>
  402d48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d4d:	e9 6b fb ff ff       	jmpq   4028bd <submitr+0x2e7>
  402d52:	e8 89 df ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402d57 <init_timeout>:
  402d57:	85 ff                	test   %edi,%edi
  402d59:	74 28                	je     402d83 <init_timeout+0x2c>
  402d5b:	53                   	push   %rbx
  402d5c:	89 fb                	mov    %edi,%ebx
  402d5e:	85 ff                	test   %edi,%edi
  402d60:	78 1a                	js     402d7c <init_timeout+0x25>
  402d62:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 402306 <sigalrm_handler>
  402d69:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d6e:	e8 cd df ff ff       	callq  400d40 <signal@plt>
  402d73:	89 df                	mov    %ebx,%edi
  402d75:	e8 96 df ff ff       	callq  400d10 <alarm@plt>
  402d7a:	5b                   	pop    %rbx
  402d7b:	c3                   	retq   
  402d7c:	bb 00 00 00 00       	mov    $0x0,%ebx
  402d81:	eb df                	jmp    402d62 <init_timeout+0xb>
  402d83:	f3 c3                	repz retq 

0000000000402d85 <init_driver>:
  402d85:	41 54                	push   %r12
  402d87:	55                   	push   %rbp
  402d88:	53                   	push   %rbx
  402d89:	48 83 ec 20          	sub    $0x20,%rsp
  402d8d:	49 89 fc             	mov    %rdi,%r12
  402d90:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d97:	00 00 
  402d99:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402d9e:	31 c0                	xor    %eax,%eax
  402da0:	be 01 00 00 00       	mov    $0x1,%esi
  402da5:	bf 0d 00 00 00       	mov    $0xd,%edi
  402daa:	e8 91 df ff ff       	callq  400d40 <signal@plt>
  402daf:	be 01 00 00 00       	mov    $0x1,%esi
  402db4:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402db9:	e8 82 df ff ff       	callq  400d40 <signal@plt>
  402dbe:	be 01 00 00 00       	mov    $0x1,%esi
  402dc3:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402dc8:	e8 73 df ff ff       	callq  400d40 <signal@plt>
  402dcd:	ba 00 00 00 00       	mov    $0x0,%edx
  402dd2:	be 01 00 00 00       	mov    $0x1,%esi
  402dd7:	bf 02 00 00 00       	mov    $0x2,%edi
  402ddc:	e8 8f e0 ff ff       	callq  400e70 <socket@plt>
  402de1:	85 c0                	test   %eax,%eax
  402de3:	0f 88 a3 00 00 00    	js     402e8c <init_driver+0x107>
  402de9:	89 c3                	mov    %eax,%ebx
  402deb:	48 8d 3d 02 06 00 00 	lea    0x602(%rip),%rdi        # 4033f4 <_IO_stdin_used+0x2f4>
  402df2:	e8 59 df ff ff       	callq  400d50 <gethostbyname@plt>
  402df7:	48 85 c0             	test   %rax,%rax
  402dfa:	0f 84 df 00 00 00    	je     402edf <init_driver+0x15a>
  402e00:	48 89 e5             	mov    %rsp,%rbp
  402e03:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402e0a:	00 00 
  402e0c:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402e13:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402e19:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e1f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e23:	48 8b 40 18          	mov    0x18(%rax),%rax
  402e27:	48 8b 30             	mov    (%rax),%rsi
  402e2a:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402e2e:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402e33:	e8 28 df ff ff       	callq  400d60 <__memmove_chk@plt>
  402e38:	66 c7 44 24 02 13 57 	movw   $0x5713,0x2(%rsp)
  402e3f:	ba 10 00 00 00       	mov    $0x10,%edx
  402e44:	48 89 ee             	mov    %rbp,%rsi
  402e47:	89 df                	mov    %ebx,%edi
  402e49:	e8 f2 df ff ff       	callq  400e40 <connect@plt>
  402e4e:	85 c0                	test   %eax,%eax
  402e50:	0f 88 fb 00 00 00    	js     402f51 <init_driver+0x1cc>
  402e56:	89 df                	mov    %ebx,%edi
  402e58:	e8 c3 de ff ff       	callq  400d20 <close@plt>
  402e5d:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402e64:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402e6a:	b8 00 00 00 00       	mov    $0x0,%eax
  402e6f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402e74:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402e7b:	00 00 
  402e7d:	0f 85 28 01 00 00    	jne    402fab <init_driver+0x226>
  402e83:	48 83 c4 20          	add    $0x20,%rsp
  402e87:	5b                   	pop    %rbx
  402e88:	5d                   	pop    %rbp
  402e89:	41 5c                	pop    %r12
  402e8b:	c3                   	retq   
  402e8c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e93:	3a 20 43 
  402e96:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e9d:	20 75 6e 
  402ea0:	49 89 04 24          	mov    %rax,(%r12)
  402ea4:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ea9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eb0:	74 6f 20 
  402eb3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402eba:	65 20 73 
  402ebd:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402ec2:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ec7:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402ece:	6b 65 
  402ed0:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402ed7:	00 
  402ed8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402edd:	eb 90                	jmp    402e6f <init_driver+0xea>
  402edf:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ee6:	3a 20 44 
  402ee9:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402ef0:	20 75 6e 
  402ef3:	49 89 04 24          	mov    %rax,(%r12)
  402ef7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402efc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f03:	74 6f 20 
  402f06:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f0d:	76 65 20 
  402f10:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f15:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f1a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402f21:	72 20 61 
  402f24:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402f29:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402f30:	72 65 
  402f32:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402f39:	73 
  402f3a:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402f40:	89 df                	mov    %ebx,%edi
  402f42:	e8 d9 dd ff ff       	callq  400d20 <close@plt>
  402f47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f4c:	e9 1e ff ff ff       	jmpq   402e6f <init_driver+0xea>
  402f51:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f58:	3a 20 55 
  402f5b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f62:	20 74 6f 
  402f65:	49 89 04 24          	mov    %rax,(%r12)
  402f69:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f6e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f75:	65 63 74 
  402f78:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402f7f:	65 72 76 
  402f82:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f87:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f8c:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402f93:	72 
  402f94:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402f9a:	89 df                	mov    %ebx,%edi
  402f9c:	e8 7f dd ff ff       	callq  400d20 <close@plt>
  402fa1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fa6:	e9 c4 fe ff ff       	jmpq   402e6f <init_driver+0xea>
  402fab:	e8 30 dd ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402fb0 <driver_post>:
  402fb0:	53                   	push   %rbx
  402fb1:	4c 89 cb             	mov    %r9,%rbx
  402fb4:	45 85 c0             	test   %r8d,%r8d
  402fb7:	75 18                	jne    402fd1 <driver_post+0x21>
  402fb9:	48 85 ff             	test   %rdi,%rdi
  402fbc:	74 05                	je     402fc3 <driver_post+0x13>
  402fbe:	80 3f 00             	cmpb   $0x0,(%rdi)
  402fc1:	75 37                	jne    402ffa <driver_post+0x4a>
  402fc3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fc8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402fcc:	44 89 c0             	mov    %r8d,%eax
  402fcf:	5b                   	pop    %rbx
  402fd0:	c3                   	retq   
  402fd1:	48 89 ca             	mov    %rcx,%rdx
  402fd4:	48 8d 35 e1 08 00 00 	lea    0x8e1(%rip),%rsi        # 4038bc <trans_char+0xcc>
  402fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  402fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  402fe5:	e8 f6 dd ff ff       	callq  400de0 <__printf_chk@plt>
  402fea:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fef:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ff8:	eb d5                	jmp    402fcf <driver_post+0x1f>
  402ffa:	48 83 ec 08          	sub    $0x8,%rsp
  402ffe:	41 51                	push   %r9
  403000:	49 89 c9             	mov    %rcx,%r9
  403003:	49 89 d0             	mov    %rdx,%r8
  403006:	48 89 f9             	mov    %rdi,%rcx
  403009:	48 89 f2             	mov    %rsi,%rdx
  40300c:	be 57 13 00 00       	mov    $0x1357,%esi
  403011:	48 8d 3d dc 03 00 00 	lea    0x3dc(%rip),%rdi        # 4033f4 <_IO_stdin_used+0x2f4>
  403018:	e8 b9 f5 ff ff       	callq  4025d6 <submitr>
  40301d:	48 83 c4 10          	add    $0x10,%rsp
  403021:	eb ac                	jmp    402fcf <driver_post+0x1f>

0000000000403023 <check>:
  403023:	89 f8                	mov    %edi,%eax
  403025:	c1 e8 1c             	shr    $0x1c,%eax
  403028:	85 c0                	test   %eax,%eax
  40302a:	74 1d                	je     403049 <check+0x26>
  40302c:	b9 00 00 00 00       	mov    $0x0,%ecx
  403031:	83 f9 1f             	cmp    $0x1f,%ecx
  403034:	7f 0d                	jg     403043 <check+0x20>
  403036:	89 f8                	mov    %edi,%eax
  403038:	d3 e8                	shr    %cl,%eax
  40303a:	3c 0a                	cmp    $0xa,%al
  40303c:	74 11                	je     40304f <check+0x2c>
  40303e:	83 c1 08             	add    $0x8,%ecx
  403041:	eb ee                	jmp    403031 <check+0xe>
  403043:	b8 01 00 00 00       	mov    $0x1,%eax
  403048:	c3                   	retq   
  403049:	b8 00 00 00 00       	mov    $0x0,%eax
  40304e:	c3                   	retq   
  40304f:	b8 00 00 00 00       	mov    $0x0,%eax
  403054:	c3                   	retq   

0000000000403055 <gencookie>:
  403055:	53                   	push   %rbx
  403056:	83 c7 01             	add    $0x1,%edi
  403059:	e8 32 dc ff ff       	callq  400c90 <srandom@plt>
  40305e:	e8 3d dd ff ff       	callq  400da0 <random@plt>
  403063:	89 c3                	mov    %eax,%ebx
  403065:	89 c7                	mov    %eax,%edi
  403067:	e8 b7 ff ff ff       	callq  403023 <check>
  40306c:	85 c0                	test   %eax,%eax
  40306e:	74 ee                	je     40305e <gencookie+0x9>
  403070:	89 d8                	mov    %ebx,%eax
  403072:	5b                   	pop    %rbx
  403073:	c3                   	retq   
  403074:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40307b:	00 00 00 
  40307e:	66 90                	xchg   %ax,%ax

0000000000403080 <__libc_csu_init>:
  403080:	41 57                	push   %r15
  403082:	41 56                	push   %r14
  403084:	49 89 d7             	mov    %rdx,%r15
  403087:	41 55                	push   %r13
  403089:	41 54                	push   %r12
  40308b:	4c 8d 25 7e 1d 20 00 	lea    0x201d7e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  403092:	55                   	push   %rbp
  403093:	48 8d 2d 7e 1d 20 00 	lea    0x201d7e(%rip),%rbp        # 604e18 <__init_array_end>
  40309a:	53                   	push   %rbx
  40309b:	41 89 fd             	mov    %edi,%r13d
  40309e:	49 89 f6             	mov    %rsi,%r14
  4030a1:	4c 29 e5             	sub    %r12,%rbp
  4030a4:	48 83 ec 08          	sub    $0x8,%rsp
  4030a8:	48 c1 fd 03          	sar    $0x3,%rbp
  4030ac:	e8 97 db ff ff       	callq  400c48 <_init>
  4030b1:	48 85 ed             	test   %rbp,%rbp
  4030b4:	74 20                	je     4030d6 <__libc_csu_init+0x56>
  4030b6:	31 db                	xor    %ebx,%ebx
  4030b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030bf:	00 
  4030c0:	4c 89 fa             	mov    %r15,%rdx
  4030c3:	4c 89 f6             	mov    %r14,%rsi
  4030c6:	44 89 ef             	mov    %r13d,%edi
  4030c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4030cd:	48 83 c3 01          	add    $0x1,%rbx
  4030d1:	48 39 dd             	cmp    %rbx,%rbp
  4030d4:	75 ea                	jne    4030c0 <__libc_csu_init+0x40>
  4030d6:	48 83 c4 08          	add    $0x8,%rsp
  4030da:	5b                   	pop    %rbx
  4030db:	5d                   	pop    %rbp
  4030dc:	41 5c                	pop    %r12
  4030de:	41 5d                	pop    %r13
  4030e0:	41 5e                	pop    %r14
  4030e2:	41 5f                	pop    %r15
  4030e4:	c3                   	retq   
  4030e5:	90                   	nop
  4030e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4030ed:	00 00 00 

00000000004030f0 <__libc_csu_fini>:
  4030f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004030f4 <_fini>:
  4030f4:	48 83 ec 08          	sub    $0x8,%rsp
  4030f8:	48 83 c4 08          	add    $0x8,%rsp
  4030fc:	c3                   	retq   

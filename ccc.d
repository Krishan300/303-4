
banker:     file format elf64-x86-64


Disassembly of section .init:

0000000000400d38 <_init>:
  400d38:	48 83 ec 08          	sub    $0x8,%rsp
  400d3c:	e8 e3 02 00 00       	callq  401024 <call_gmon_start>
  400d41:	e8 ea 03 00 00       	callq  401130 <frame_dummy>
  400d46:	e8 85 26 00 00       	callq  4033d0 <__do_global_ctors_aux>
  400d4b:	48 83 c4 08          	add    $0x8,%rsp
  400d4f:	c3                   	retq   

Disassembly of section .plt:

0000000000400d50 <pipe2@plt-0x10>:
  400d50:	ff 35 6a 34 20 00    	pushq  0x20346a(%rip)        # 6041c0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400d56:	ff 25 6c 34 20 00    	jmpq   *0x20346c(%rip)        # 6041c8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400d5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400d60 <pipe2@plt>:
  400d60:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 6041d0 <_GLOBAL_OFFSET_TABLE_+0x18>
  400d66:	68 00 00 00 00       	pushq  $0x0
  400d6b:	e9 e0 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400d70 <fileno@plt>:
  400d70:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 6041d8 <_GLOBAL_OFFSET_TABLE_+0x20>
  400d76:	68 01 00 00 00       	pushq  $0x1
  400d7b:	e9 d0 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400d80 <printf@plt>:
  400d80:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6041e0 <_GLOBAL_OFFSET_TABLE_+0x28>
  400d86:	68 02 00 00 00       	pushq  $0x2
  400d8b:	e9 c0 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400d90 <close@plt>:
  400d90:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6041e8 <_GLOBAL_OFFSET_TABLE_+0x30>
  400d96:	68 03 00 00 00       	pushq  $0x3
  400d9b:	e9 b0 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400da0 <wait@plt>:
  400da0:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6041f0 <_GLOBAL_OFFSET_TABLE_+0x38>
  400da6:	68 04 00 00 00       	pushq  $0x4
  400dab:	e9 a0 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400db0 <getlogin@plt>:
  400db0:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6041f8 <_GLOBAL_OFFSET_TABLE_+0x40>
  400db6:	68 05 00 00 00       	pushq  $0x5
  400dbb:	e9 90 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400dc0 <puts@plt>:
  400dc0:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604200 <_GLOBAL_OFFSET_TABLE_+0x48>
  400dc6:	68 06 00 00 00       	pushq  $0x6
  400dcb:	e9 80 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400dd0 <execvp@plt>:
  400dd0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604208 <_GLOBAL_OFFSET_TABLE_+0x50>
  400dd6:	68 07 00 00 00       	pushq  $0x7
  400ddb:	e9 70 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400de0 <exit@plt>:
  400de0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604210 <_GLOBAL_OFFSET_TABLE_+0x58>
  400de6:	68 08 00 00 00       	pushq  $0x8
  400deb:	e9 60 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400df0 <read@plt>:
  400df0:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604218 <_GLOBAL_OFFSET_TABLE_+0x60>
  400df6:	68 09 00 00 00       	pushq  $0x9
  400dfb:	e9 50 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e00 <malloc@plt>:
  400e00:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604220 <_GLOBAL_OFFSET_TABLE_+0x68>
  400e06:	68 0a 00 00 00       	pushq  $0xa
  400e0b:	e9 40 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604228 <_GLOBAL_OFFSET_TABLE_+0x70>
  400e16:	68 0b 00 00 00       	pushq  $0xb
  400e1b:	e9 30 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e20 <__libc_start_main@plt>:
  400e20:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604230 <_GLOBAL_OFFSET_TABLE_+0x78>
  400e26:	68 0c 00 00 00       	pushq  $0xc
  400e2b:	e9 20 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e30 <unlink@plt>:
  400e30:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604238 <_GLOBAL_OFFSET_TABLE_+0x80>
  400e36:	68 0d 00 00 00       	pushq  $0xd
  400e3b:	e9 10 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e40 <_exit@plt>:
  400e40:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604240 <_GLOBAL_OFFSET_TABLE_+0x88>
  400e46:	68 0e 00 00 00       	pushq  $0xe
  400e4b:	e9 00 ff ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e50 <srandom@plt>:
  400e50:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604248 <_GLOBAL_OFFSET_TABLE_+0x90>
  400e56:	68 0f 00 00 00       	pushq  $0xf
  400e5b:	e9 f0 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e60 <free@plt>:
  400e60:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604250 <_GLOBAL_OFFSET_TABLE_+0x98>
  400e66:	68 10 00 00 00       	pushq  $0x10
  400e6b:	e9 e0 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e70 <sprintf@plt>:
  400e70:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604258 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400e76:	68 11 00 00 00       	pushq  $0x11
  400e7b:	e9 d0 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e80 <sscanf@plt>:
  400e80:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604260 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400e86:	68 12 00 00 00       	pushq  $0x12
  400e8b:	e9 c0 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400e90 <strerror@plt>:
  400e90:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604268 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400e96:	68 13 00 00 00       	pushq  $0x13
  400e9b:	e9 b0 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400ea0 <lseek@plt>:
  400ea0:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604270 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ea6:	68 14 00 00 00       	pushq  $0x14
  400eab:	e9 a0 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400eb0 <strtol@plt>:
  400eb0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604278 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400eb6:	68 15 00 00 00       	pushq  $0x15
  400ebb:	e9 90 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400ec0 <memcpy@plt>:
  400ec0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604280 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400ec6:	68 16 00 00 00       	pushq  $0x16
  400ecb:	e9 80 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400ed0 <signal@plt>:
  400ed0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604288 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400ed6:	68 17 00 00 00       	pushq  $0x17
  400edb:	e9 70 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400ee0 <__errno_location@plt>:
  400ee0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 604290 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400ee6:	68 18 00 00 00       	pushq  $0x18
  400eeb:	e9 60 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400ef0 <strcmp@plt>:
  400ef0:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604298 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400ef6:	68 19 00 00 00       	pushq  $0x19
  400efb:	e9 50 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f00 <getuid@plt>:
  400f00:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 6042a0 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400f06:	68 1a 00 00 00       	pushq  $0x1a
  400f0b:	e9 40 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f10 <fclose@plt>:
  400f10:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 6042a8 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400f16:	68 1b 00 00 00       	pushq  $0x1b
  400f1b:	e9 30 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f20 <random@plt>:
  400f20:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6042b0 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400f26:	68 1c 00 00 00       	pushq  $0x1c
  400f2b:	e9 20 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f30 <fscanf@plt>:
  400f30:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6042b8 <_GLOBAL_OFFSET_TABLE_+0x100>
  400f36:	68 1d 00 00 00       	pushq  $0x1d
  400f3b:	e9 10 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f40 <ftruncate@plt>:
  400f40:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6042c0 <_GLOBAL_OFFSET_TABLE_+0x108>
  400f46:	68 1e 00 00 00       	pushq  $0x1e
  400f4b:	e9 00 fe ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f50 <fork@plt>:
  400f50:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6042c8 <_GLOBAL_OFFSET_TABLE_+0x110>
  400f56:	68 1f 00 00 00       	pushq  $0x1f
  400f5b:	e9 f0 fd ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f60 <fwrite@plt>:
  400f60:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6042d0 <_GLOBAL_OFFSET_TABLE_+0x118>
  400f66:	68 20 00 00 00       	pushq  $0x20
  400f6b:	e9 e0 fd ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f70 <fprintf@plt>:
  400f70:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6042d8 <_GLOBAL_OFFSET_TABLE_+0x120>
  400f76:	68 21 00 00 00       	pushq  $0x21
  400f7b:	e9 d0 fd ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f80 <write@plt>:
  400f80:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6042e0 <_GLOBAL_OFFSET_TABLE_+0x128>
  400f86:	68 22 00 00 00       	pushq  $0x22
  400f8b:	e9 c0 fd ff ff       	jmpq   400d50 <_init+0x18>

0000000000400f90 <fcntl@plt>:
  400f90:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6042e8 <_GLOBAL_OFFSET_TABLE_+0x130>
  400f96:	68 23 00 00 00       	pushq  $0x23
  400f9b:	e9 b0 fd ff ff       	jmpq   400d50 <_init+0x18>

0000000000400fa0 <open@plt>:
  400fa0:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 6042f0 <_GLOBAL_OFFSET_TABLE_+0x138>
  400fa6:	68 24 00 00 00       	pushq  $0x24
  400fab:	e9 a0 fd ff ff       	jmpq   400d50 <_init+0x18>

0000000000400fb0 <time@plt>:
  400fb0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 6042f8 <_GLOBAL_OFFSET_TABLE_+0x140>
  400fb6:	68 25 00 00 00       	pushq  $0x25
  400fbb:	e9 90 fd ff ff       	jmpq   400d50 <_init+0x18>

Disassembly of section .text:

0000000000400fc0 <closeAccount.part.3>:
  400fc0:	55                   	push   %rbp
  400fc1:	53                   	push   %rbx
  400fc2:	89 fd                	mov    %edi,%ebp
  400fc4:	48 83 ec 08          	sub    $0x8,%rsp
  400fc8:	e8 13 ff ff ff       	callq  400ee0 <__errno_location@plt>
  400fcd:	8b 38                	mov    (%rax),%edi
  400fcf:	48 89 c3             	mov    %rax,%rbx
  400fd2:	e8 b9 fe ff ff       	callq  400e90 <strerror@plt>
  400fd7:	48 8b 3d 3a 33 20 00 	mov    0x20333a(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  400fde:	8b 13                	mov    (%rbx),%edx
  400fe0:	48 89 c1             	mov    %rax,%rcx
  400fe3:	be 58 34 40 00       	mov    $0x403458,%esi
  400fe8:	31 c0                	xor    %eax,%eax
  400fea:	e8 81 ff ff ff       	callq  400f70 <fprintf@plt>
  400fef:	89 ef                	mov    %ebp,%edi
  400ff1:	e8 ea fd ff ff       	callq  400de0 <exit@plt>
  400ff6:	90                   	nop
  400ff7:	90                   	nop

0000000000400ff8 <_start>:
  400ff8:	31 ed                	xor    %ebp,%ebp
  400ffa:	49 89 d1             	mov    %rdx,%r9
  400ffd:	5e                   	pop    %rsi
  400ffe:	48 89 e2             	mov    %rsp,%rdx
  401001:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401005:	50                   	push   %rax
  401006:	54                   	push   %rsp
  401007:	49 c7 c0 30 33 40 00 	mov    $0x403330,%r8
  40100e:	48 c7 c1 40 33 40 00 	mov    $0x403340,%rcx
  401015:	48 c7 c7 70 14 40 00 	mov    $0x401470,%rdi
  40101c:	e8 ff fd ff ff       	callq  400e20 <__libc_start_main@plt>
  401021:	f4                   	hlt    
  401022:	90                   	nop
  401023:	90                   	nop

0000000000401024 <call_gmon_start>:
  401024:	48 83 ec 08          	sub    $0x8,%rsp
  401028:	48 8b 05 81 31 20 00 	mov    0x203181(%rip),%rax        # 6041b0 <_DYNAMIC+0x190>
  40102f:	48 85 c0             	test   %rax,%rax
  401032:	74 02                	je     401036 <call_gmon_start+0x12>
  401034:	ff d0                	callq  *%rax
  401036:	48 83 c4 08          	add    $0x8,%rsp
  40103a:	c3                   	retq   
  40103b:	90                   	nop
  40103c:	90                   	nop
  40103d:	90                   	nop
  40103e:	90                   	nop
  40103f:	90                   	nop

0000000000401040 <deregister_tm_clones>:
  401040:	55                   	push   %rbp
  401041:	b8 10 43 60 00       	mov    $0x604310,%eax
  401046:	48 3d 10 43 60 00    	cmp    $0x604310,%rax
  40104c:	48 89 e5             	mov    %rsp,%rbp
  40104f:	74 17                	je     401068 <deregister_tm_clones+0x28>
  401051:	b8 00 00 00 00       	mov    $0x0,%eax
  401056:	48 85 c0             	test   %rax,%rax
  401059:	74 0d                	je     401068 <deregister_tm_clones+0x28>
  40105b:	5d                   	pop    %rbp
  40105c:	bf 10 43 60 00       	mov    $0x604310,%edi
  401061:	ff e0                	jmpq   *%rax
  401063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401068:	5d                   	pop    %rbp
  401069:	c3                   	retq   
  40106a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401070 <register_tm_clones>:
  401070:	be 10 43 60 00       	mov    $0x604310,%esi
  401075:	55                   	push   %rbp
  401076:	48 81 ee 10 43 60 00 	sub    $0x604310,%rsi
  40107d:	48 89 e5             	mov    %rsp,%rbp
  401080:	48 c1 fe 03          	sar    $0x3,%rsi
  401084:	48 89 f0             	mov    %rsi,%rax
  401087:	48 c1 e8 3f          	shr    $0x3f,%rax
  40108b:	48 01 c6             	add    %rax,%rsi
  40108e:	48 d1 fe             	sar    %rsi
  401091:	74 15                	je     4010a8 <register_tm_clones+0x38>
  401093:	b8 00 00 00 00       	mov    $0x0,%eax
  401098:	48 85 c0             	test   %rax,%rax
  40109b:	74 0b                	je     4010a8 <register_tm_clones+0x38>
  40109d:	5d                   	pop    %rbp
  40109e:	bf 10 43 60 00       	mov    $0x604310,%edi
  4010a3:	ff e0                	jmpq   *%rax
  4010a5:	0f 1f 00             	nopl   (%rax)
  4010a8:	5d                   	pop    %rbp
  4010a9:	c3                   	retq   
  4010aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004010b0 <__do_global_dtors_aux>:
  4010b0:	80 3d 71 32 20 00 00 	cmpb   $0x0,0x203271(%rip)        # 604328 <completed.6865>
  4010b7:	75 67                	jne    401120 <__do_global_dtors_aux+0x70>
  4010b9:	55                   	push   %rbp
  4010ba:	48 8b 05 6f 32 20 00 	mov    0x20326f(%rip),%rax        # 604330 <dtor_idx.6867>
  4010c1:	48 89 e5             	mov    %rsp,%rbp
  4010c4:	41 54                	push   %r12
  4010c6:	53                   	push   %rbx
  4010c7:	bb 18 40 60 00       	mov    $0x604018,%ebx
  4010cc:	41 bc 10 40 60 00    	mov    $0x604010,%r12d
  4010d2:	48 81 eb 10 40 60 00 	sub    $0x604010,%rbx
  4010d9:	48 c1 fb 03          	sar    $0x3,%rbx
  4010dd:	48 83 eb 01          	sub    $0x1,%rbx
  4010e1:	48 39 d8             	cmp    %rbx,%rax
  4010e4:	73 25                	jae    40110b <__do_global_dtors_aux+0x5b>
  4010e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010ed:	00 00 00 
  4010f0:	48 83 c0 01          	add    $0x1,%rax
  4010f4:	48 89 05 35 32 20 00 	mov    %rax,0x203235(%rip)        # 604330 <dtor_idx.6867>
  4010fb:	41 ff 14 c4          	callq  *(%r12,%rax,8)
  4010ff:	48 8b 05 2a 32 20 00 	mov    0x20322a(%rip),%rax        # 604330 <dtor_idx.6867>
  401106:	48 39 d8             	cmp    %rbx,%rax
  401109:	72 e5                	jb     4010f0 <__do_global_dtors_aux+0x40>
  40110b:	e8 30 ff ff ff       	callq  401040 <deregister_tm_clones>
  401110:	5b                   	pop    %rbx
  401111:	c6 05 10 32 20 00 01 	movb   $0x1,0x203210(%rip)        # 604328 <completed.6865>
  401118:	41 5c                	pop    %r12
  40111a:	5d                   	pop    %rbp
  40111b:	c3                   	retq   
  40111c:	0f 1f 40 00          	nopl   0x0(%rax)
  401120:	f3 c3                	repz retq 
  401122:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  401129:	1f 84 00 00 00 00 00 

0000000000401130 <frame_dummy>:
  401130:	55                   	push   %rbp
  401131:	48 89 e5             	mov    %rsp,%rbp
  401134:	5d                   	pop    %rbp
  401135:	e9 36 ff ff ff       	jmpq   401070 <register_tm_clones>
  40113a:	90                   	nop
  40113b:	90                   	nop
  40113c:	90                   	nop
  40113d:	90                   	nop
  40113e:	90                   	nop
  40113f:	90                   	nop

0000000000401140 <sigchldHandler>:
  401140:	48 83 ec 18          	sub    $0x18,%rsp
  401144:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  40114b:	00 
  40114c:	eb 11                	jmp    40115f <sigchldHandler+0x1f>
  40114e:	66 90                	xchg   %ax,%ax
  401150:	8b 05 e2 31 20 00    	mov    0x2031e2(%rip),%eax        # 604338 <reaped>
  401156:	83 c0 01             	add    $0x1,%eax
  401159:	89 05 d9 31 20 00    	mov    %eax,0x2031d9(%rip)        # 604338 <reaped>
  40115f:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  401164:	e8 37 fc ff ff       	callq  400da0 <wait@plt>
  401169:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  40116c:	75 e2                	jne    401150 <sigchldHandler+0x10>
  40116e:	e8 6d fd ff ff       	callq  400ee0 <__errno_location@plt>
  401173:	83 38 0a             	cmpl   $0xa,(%rax)
  401176:	75 05                	jne    40117d <sigchldHandler+0x3d>
  401178:	48 83 c4 18          	add    $0x18,%rsp
  40117c:	c3                   	retq   
  40117d:	bf 01 00 00 00       	mov    $0x1,%edi
  401182:	ba 1f 00 00 00       	mov    $0x1f,%edx
  401187:	be 38 34 40 00       	mov    $0x403438,%esi
  40118c:	e8 ef fd ff ff       	callq  400f80 <write@plt>
  401191:	bf c8 00 00 00       	mov    $0xc8,%edi
  401196:	e8 a5 fc ff ff       	callq  400e40 <_exit@plt>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <getBalance>:
  4011a0:	53                   	push   %rbx
  4011a1:	31 d2                	xor    %edx,%edx
  4011a3:	31 f6                	xor    %esi,%esi
  4011a5:	89 fb                	mov    %edi,%ebx
  4011a7:	48 83 ec 30          	sub    $0x30,%rsp
  4011ab:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4011b2:	00 00 
  4011b4:	e8 e7 fc ff ff       	callq  400ea0 <lseek@plt>
  4011b9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4011bd:	74 3d                	je     4011fc <getBalance+0x5c>
  4011bf:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4011c4:	ba 14 00 00 00       	mov    $0x14,%edx
  4011c9:	89 df                	mov    %ebx,%edi
  4011cb:	e8 20 fc ff ff       	callq  400df0 <read@plt>
  4011d0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4011d4:	74 57                	je     40122d <getBalance+0x8d>
  4011d6:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4011db:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4011e0:	c6 44 04 10 00       	movb   $0x0,0x10(%rsp,%rax,1)
  4011e5:	be f8 3b 40 00       	mov    $0x403bf8,%esi
  4011ea:	31 c0                	xor    %eax,%eax
  4011ec:	e8 8f fc ff ff       	callq  400e80 <sscanf@plt>
  4011f1:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011f6:	48 83 c4 30          	add    $0x30,%rsp
  4011fa:	5b                   	pop    %rbx
  4011fb:	c3                   	retq   
  4011fc:	e8 df fc ff ff       	callq  400ee0 <__errno_location@plt>
  401201:	8b 38                	mov    (%rax),%edi
  401203:	48 89 c3             	mov    %rax,%rbx
  401206:	e8 85 fc ff ff       	callq  400e90 <strerror@plt>
  40120b:	48 8b 3d 06 31 20 00 	mov    0x203106(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401212:	8b 13                	mov    (%rbx),%edx
  401214:	48 89 c1             	mov    %rax,%rcx
  401217:	be 88 34 40 00       	mov    $0x403488,%esi
  40121c:	31 c0                	xor    %eax,%eax
  40121e:	e8 4d fd ff ff       	callq  400f70 <fprintf@plt>
  401223:	bf bc 02 00 00       	mov    $0x2bc,%edi
  401228:	e8 b3 fb ff ff       	callq  400de0 <exit@plt>
  40122d:	e8 ae fc ff ff       	callq  400ee0 <__errno_location@plt>
  401232:	8b 38                	mov    (%rax),%edi
  401234:	48 89 c3             	mov    %rax,%rbx
  401237:	e8 54 fc ff ff       	callq  400e90 <strerror@plt>
  40123c:	48 8b 3d d5 30 20 00 	mov    0x2030d5(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401243:	8b 13                	mov    (%rbx),%edx
  401245:	48 89 c1             	mov    %rax,%rcx
  401248:	be b0 34 40 00       	mov    $0x4034b0,%esi
  40124d:	31 c0                	xor    %eax,%eax
  40124f:	e8 1c fd ff ff       	callq  400f70 <fprintf@plt>
  401254:	bf 2c 01 00 00       	mov    $0x12c,%edi
  401259:	e8 82 fb ff ff       	callq  400de0 <exit@plt>
  40125e:	66 90                	xchg   %ax,%ax

0000000000401260 <setBalance>:
  401260:	41 54                	push   %r12
  401262:	55                   	push   %rbp
  401263:	49 89 f4             	mov    %rsi,%r12
  401266:	53                   	push   %rbx
  401267:	31 f6                	xor    %esi,%esi
  401269:	89 fd                	mov    %edi,%ebp
  40126b:	48 83 ec 20          	sub    $0x20,%rsp
  40126f:	e8 cc fc ff ff       	callq  400f40 <ftruncate@plt>
  401274:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  401277:	0f 84 e0 00 00 00    	je     40135d <setBalance+0xfd>
  40127d:	31 d2                	xor    %edx,%edx
  40127f:	31 f6                	xor    %esi,%esi
  401281:	89 ef                	mov    %ebp,%edi
  401283:	e8 18 fc ff ff       	callq  400ea0 <lseek@plt>
  401288:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40128c:	0f 84 9a 00 00 00    	je     40132c <setBalance+0xcc>
  401292:	48 89 e3             	mov    %rsp,%rbx
  401295:	4c 89 e2             	mov    %r12,%rdx
  401298:	be fb 3b 40 00       	mov    $0x403bfb,%esi
  40129d:	48 89 df             	mov    %rbx,%rdi
  4012a0:	31 c0                	xor    %eax,%eax
  4012a2:	e8 c9 fb ff ff       	callq  400e70 <sprintf@plt>
  4012a7:	48 89 da             	mov    %rbx,%rdx
  4012aa:	8b 0a                	mov    (%rdx),%ecx
  4012ac:	48 83 c2 04          	add    $0x4,%rdx
  4012b0:	8d 81 ff fe fe fe    	lea    -0x1010101(%rcx),%eax
  4012b6:	f7 d1                	not    %ecx
  4012b8:	21 c8                	and    %ecx,%eax
  4012ba:	25 80 80 80 80       	and    $0x80808080,%eax
  4012bf:	74 e9                	je     4012aa <setBalance+0x4a>
  4012c1:	89 c1                	mov    %eax,%ecx
  4012c3:	89 ef                	mov    %ebp,%edi
  4012c5:	c1 e9 10             	shr    $0x10,%ecx
  4012c8:	a9 80 80 00 00       	test   $0x8080,%eax
  4012cd:	0f 44 c1             	cmove  %ecx,%eax
  4012d0:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  4012d4:	89 c6                	mov    %eax,%esi
  4012d6:	48 0f 44 d1          	cmove  %rcx,%rdx
  4012da:	40 00 c6             	add    %al,%sil
  4012dd:	48 89 de             	mov    %rbx,%rsi
  4012e0:	48 83 da 03          	sbb    $0x3,%rdx
  4012e4:	48 29 da             	sub    %rbx,%rdx
  4012e7:	e8 94 fc ff ff       	callq  400f80 <write@plt>
  4012ec:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4012f0:	74 09                	je     4012fb <setBalance+0x9b>
  4012f2:	48 83 c4 20          	add    $0x20,%rsp
  4012f6:	5b                   	pop    %rbx
  4012f7:	5d                   	pop    %rbp
  4012f8:	41 5c                	pop    %r12
  4012fa:	c3                   	retq   
  4012fb:	e8 e0 fb ff ff       	callq  400ee0 <__errno_location@plt>
  401300:	8b 38                	mov    (%rax),%edi
  401302:	48 89 c3             	mov    %rax,%rbx
  401305:	e8 86 fb ff ff       	callq  400e90 <strerror@plt>
  40130a:	48 8b 3d 07 30 20 00 	mov    0x203007(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401311:	8b 13                	mov    (%rbx),%edx
  401313:	48 89 c1             	mov    %rax,%rcx
  401316:	be 00 35 40 00       	mov    $0x403500,%esi
  40131b:	31 c0                	xor    %eax,%eax
  40131d:	e8 4e fc ff ff       	callq  400f70 <fprintf@plt>
  401322:	bf 90 01 00 00       	mov    $0x190,%edi
  401327:	e8 b4 fa ff ff       	callq  400de0 <exit@plt>
  40132c:	e8 af fb ff ff       	callq  400ee0 <__errno_location@plt>
  401331:	8b 38                	mov    (%rax),%edi
  401333:	48 89 c3             	mov    %rax,%rbx
  401336:	e8 55 fb ff ff       	callq  400e90 <strerror@plt>
  40133b:	48 8b 3d d6 2f 20 00 	mov    0x202fd6(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401342:	8b 13                	mov    (%rbx),%edx
  401344:	48 89 c1             	mov    %rax,%rcx
  401347:	be 88 34 40 00       	mov    $0x403488,%esi
  40134c:	31 c0                	xor    %eax,%eax
  40134e:	e8 1d fc ff ff       	callq  400f70 <fprintf@plt>
  401353:	bf 58 02 00 00       	mov    $0x258,%edi
  401358:	e8 83 fa ff ff       	callq  400de0 <exit@plt>
  40135d:	e8 7e fb ff ff       	callq  400ee0 <__errno_location@plt>
  401362:	8b 38                	mov    (%rax),%edi
  401364:	48 89 c3             	mov    %rax,%rbx
  401367:	e8 24 fb ff ff       	callq  400e90 <strerror@plt>
  40136c:	48 8b 3d a5 2f 20 00 	mov    0x202fa5(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401373:	8b 13                	mov    (%rbx),%edx
  401375:	48 89 c1             	mov    %rax,%rcx
  401378:	be d8 34 40 00       	mov    $0x4034d8,%esi
  40137d:	31 c0                	xor    %eax,%eax
  40137f:	e8 ec fb ff ff       	callq  400f70 <fprintf@plt>
  401384:	bf f4 01 00 00       	mov    $0x1f4,%edi
  401389:	e8 52 fa ff ff       	callq  400de0 <exit@plt>
  40138e:	66 90                	xchg   %ax,%ax

0000000000401390 <transfer>:
  401390:	41 56                	push   %r14
  401392:	41 55                	push   %r13
  401394:	49 89 d6             	mov    %rdx,%r14
  401397:	41 54                	push   %r12
  401399:	55                   	push   %rbp
  40139a:	41 89 f4             	mov    %esi,%r12d
  40139d:	53                   	push   %rbx
  40139e:	41 89 fd             	mov    %edi,%r13d
  4013a1:	e8 fa fd ff ff       	callq  4011a0 <getBalance>
  4013a6:	44 89 e7             	mov    %r12d,%edi
  4013a9:	48 89 c5             	mov    %rax,%rbp
  4013ac:	89 c3                	mov    %eax,%ebx
  4013ae:	e8 ed fd ff ff       	callq  4011a0 <getBalance>
  4013b3:	48 63 d5             	movslq %ebp,%rdx
  4013b6:	31 f6                	xor    %esi,%esi
  4013b8:	4c 39 f2             	cmp    %r14,%rdx
  4013bb:	72 09                	jb     4013c6 <transfer+0x36>
  4013bd:	44 29 f5             	sub    %r14d,%ebp
  4013c0:	44 89 f3             	mov    %r14d,%ebx
  4013c3:	48 63 f5             	movslq %ebp,%rsi
  4013c6:	01 c3                	add    %eax,%ebx
  4013c8:	44 89 ef             	mov    %r13d,%edi
  4013cb:	e8 90 fe ff ff       	callq  401260 <setBalance>
  4013d0:	48 63 f3             	movslq %ebx,%rsi
  4013d3:	44 89 e7             	mov    %r12d,%edi
  4013d6:	5b                   	pop    %rbx
  4013d7:	5d                   	pop    %rbp
  4013d8:	41 5c                	pop    %r12
  4013da:	41 5d                	pop    %r13
  4013dc:	41 5e                	pop    %r14
  4013de:	e9 7d fe ff ff       	jmpq   401260 <setBalance>
  4013e3:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4013ea:	84 00 00 00 00 00 

00000000004013f0 <openAccount>:
  4013f0:	55                   	push   %rbp
  4013f1:	53                   	push   %rbx
  4013f2:	31 c0                	xor    %eax,%eax
  4013f4:	89 f3                	mov    %esi,%ebx
  4013f6:	ba 80 01 00 00       	mov    $0x180,%edx
  4013fb:	be 02 00 00 00       	mov    $0x2,%esi
  401400:	48 83 ec 08          	sub    $0x8,%rsp
  401404:	e8 97 fb ff ff       	callq  400fa0 <open@plt>
  401409:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  40140c:	74 07                	je     401415 <openAccount+0x25>
  40140e:	48 83 c4 08          	add    $0x8,%rsp
  401412:	5b                   	pop    %rbx
  401413:	5d                   	pop    %rbp
  401414:	c3                   	retq   
  401415:	e8 c6 fa ff ff       	callq  400ee0 <__errno_location@plt>
  40141a:	8b 38                	mov    (%rax),%edi
  40141c:	48 89 c5             	mov    %rax,%rbp
  40141f:	e8 6c fa ff ff       	callq  400e90 <strerror@plt>
  401424:	48 8b 3d ed 2e 20 00 	mov    0x202eed(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  40142b:	8b 55 00             	mov    0x0(%rbp),%edx
  40142e:	48 89 c1             	mov    %rax,%rcx
  401431:	be 28 35 40 00       	mov    $0x403528,%esi
  401436:	31 c0                	xor    %eax,%eax
  401438:	e8 33 fb ff ff       	callq  400f70 <fprintf@plt>
  40143d:	89 df                	mov    %ebx,%edi
  40143f:	e8 9c f9 ff ff       	callq  400de0 <exit@plt>
  401444:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40144b:	00 00 00 00 00 

0000000000401450 <closeAccount>:
  401450:	53                   	push   %rbx
  401451:	89 f3                	mov    %esi,%ebx
  401453:	e8 38 f9 ff ff       	callq  400d90 <close@plt>
  401458:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  40145b:	74 02                	je     40145f <closeAccount+0xf>
  40145d:	5b                   	pop    %rbx
  40145e:	c3                   	retq   
  40145f:	89 df                	mov    %ebx,%edi
  401461:	e8 5a fb ff ff       	callq  400fc0 <closeAccount.part.3>
  401466:	90                   	nop
  401467:	90                   	nop
  401468:	90                   	nop
  401469:	90                   	nop
  40146a:	90                   	nop
  40146b:	90                   	nop
  40146c:	90                   	nop
  40146d:	90                   	nop
  40146e:	90                   	nop
  40146f:	90                   	nop

0000000000401470 <main>:
  401470:	41 57                	push   %r15
  401472:	8d 47 fe             	lea    -0x2(%rdi),%eax
  401475:	41 56                	push   %r14
  401477:	41 55                	push   %r13
  401479:	41 54                	push   %r12
  40147b:	55                   	push   %rbp
  40147c:	53                   	push   %rbx
  40147d:	48 89 f3             	mov    %rsi,%rbx
  401480:	48 81 ec d8 01 00 00 	sub    $0x1d8,%rsp
  401487:	83 f8 01             	cmp    $0x1,%eax
  40148a:	0f 87 0c 01 00 00    	ja     40159c <main+0x12c>
  401490:	83 ff 02             	cmp    $0x2,%edi
  401493:	41 89 fc             	mov    %edi,%r12d
  401496:	74 44                	je     4014dc <main+0x6c>
  401498:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  40149c:	ba 0a 00 00 00       	mov    $0xa,%edx
  4014a1:	31 f6                	xor    %esi,%esi
  4014a3:	e8 08 fa ff ff       	callq  400eb0 <strtol@plt>
  4014a8:	83 f8 06             	cmp    $0x6,%eax
  4014ab:	74 2f                	je     4014dc <main+0x6c>
  4014ad:	48 8b 13             	mov    (%rbx),%rdx
  4014b0:	48 8b 3d 61 2e 20 00 	mov    0x202e61(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4014b7:	be 58 35 40 00       	mov    $0x403558,%esi
  4014bc:	31 c0                	xor    %eax,%eax
  4014be:	bd 01 00 00 00       	mov    $0x1,%ebp
  4014c3:	e8 a8 fa ff ff       	callq  400f70 <fprintf@plt>
  4014c8:	48 81 c4 d8 01 00 00 	add    $0x1d8,%rsp
  4014cf:	89 e8                	mov    %ebp,%eax
  4014d1:	5b                   	pop    %rbx
  4014d2:	5d                   	pop    %rbp
  4014d3:	41 5c                	pop    %r12
  4014d5:	41 5d                	pop    %r13
  4014d7:	41 5e                	pop    %r14
  4014d9:	41 5f                	pop    %r15
  4014db:	c3                   	retq   
  4014dc:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4014e0:	31 f6                	xor    %esi,%esi
  4014e2:	ba 0a 00 00 00       	mov    $0xa,%edx
  4014e7:	e8 c4 f9 ff ff       	callq  400eb0 <strtol@plt>
  4014ec:	83 f8 09             	cmp    $0x9,%eax
  4014ef:	49 89 c5             	mov    %rax,%r13
  4014f2:	89 c5                	mov    %eax,%ebp
  4014f4:	0f 87 c2 00 00 00    	ja     4015bc <main+0x14c>
  4014fa:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4014fe:	31 d2                	xor    %edx,%edx
  401500:	31 f6                	xor    %esi,%esi
  401502:	31 c0                	xor    %eax,%eax
  401504:	e8 97 fa ff ff       	callq  400fa0 <open@plt>
  401509:	41 83 fd 03          	cmp    $0x3,%r13d
  40150d:	7e 09                	jle    401518 <main+0xa8>
  40150f:	83 c0 01             	add    $0x1,%eax
  401512:	0f 85 c4 00 00 00    	jne    4015dc <main+0x16c>
  401518:	31 ff                	xor    %edi,%edi
  40151a:	e8 91 fa ff ff       	callq  400fb0 <time@plt>
  40151f:	89 c7                	mov    %eax,%edi
  401521:	e8 2a f9 ff ff       	callq  400e50 <srandom@plt>
  401526:	45 85 ed             	test   %r13d,%r13d
  401529:	0f 84 d2 00 00 00    	je     401601 <main+0x191>
  40152f:	41 83 fd 09          	cmp    $0x9,%r13d
  401533:	0f 84 b7 06 00 00    	je     401bf0 <main+0x780>
  401539:	41 83 fd 01          	cmp    $0x1,%r13d
  40153d:	0f 84 0c 0d 00 00    	je     40224f <main+0xddf>
  401543:	41 83 fd 02          	cmp    $0x2,%r13d
  401547:	0f 84 da 0d 00 00    	je     402327 <main+0xeb7>
  40154d:	41 83 fd 03          	cmp    $0x3,%r13d
  401551:	0f 84 c3 03 00 00    	je     40191a <main+0x4aa>
  401557:	41 83 fd 07          	cmp    $0x7,%r13d
  40155b:	0f 94 44 24 18       	sete   0x18(%rsp)
  401560:	41 83 fd 04          	cmp    $0x4,%r13d
  401564:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  401569:	0f 84 f0 09 00 00    	je     401f5f <main+0xaef>
  40156f:	84 c0                	test   %al,%al
  401571:	0f 85 e8 09 00 00    	jne    401f5f <main+0xaef>
  401577:	41 83 fd 05          	cmp    $0x5,%r13d
  40157b:	0f 84 36 10 00 00    	je     4025b7 <main+0x1147>
  401581:	41 83 fd 06          	cmp    $0x6,%r13d
  401585:	0f 84 f7 13 00 00    	je     402982 <main+0x1512>
  40158b:	41 83 fd 08          	cmp    $0x8,%r13d
  40158f:	0f 84 a2 05 00 00    	je     401b37 <main+0x6c7>
  401595:	31 ed                	xor    %ebp,%ebp
  401597:	e9 2c ff ff ff       	jmpq   4014c8 <main+0x58>
  40159c:	48 8b 16             	mov    (%rsi),%rdx
  40159f:	48 8b 3d 72 2d 20 00 	mov    0x202d72(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4015a6:	be 58 35 40 00       	mov    $0x403558,%esi
  4015ab:	31 c0                	xor    %eax,%eax
  4015ad:	bd d1 07 00 00       	mov    $0x7d1,%ebp
  4015b2:	e8 b9 f9 ff ff       	callq  400f70 <fprintf@plt>
  4015b7:	e9 0c ff ff ff       	jmpq   4014c8 <main+0x58>
  4015bc:	48 8b 3d 55 2d 20 00 	mov    0x202d55(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4015c3:	44 89 ea             	mov    %r13d,%edx
  4015c6:	be 98 35 40 00       	mov    $0x403598,%esi
  4015cb:	31 c0                	xor    %eax,%eax
  4015cd:	bd 02 00 00 00       	mov    $0x2,%ebp
  4015d2:	e8 99 f9 ff ff       	callq  400f70 <fprintf@plt>
  4015d7:	e9 ec fe ff ff       	jmpq   4014c8 <main+0x58>
  4015dc:	48 8b 0d 35 2d 20 00 	mov    0x202d35(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  4015e3:	ba 37 00 00 00       	mov    $0x37,%edx
  4015e8:	be 01 00 00 00       	mov    $0x1,%esi
  4015ed:	bf d0 35 40 00       	mov    $0x4035d0,%edi
  4015f2:	bd 03 00 00 00       	mov    $0x3,%ebp
  4015f7:	e8 64 f9 ff ff       	callq  400f60 <fwrite@plt>
  4015fc:	e9 c7 fe ff ff       	jmpq   4014c8 <main+0x58>
  401601:	48 8b 0d 10 2d 20 00 	mov    0x202d10(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  401608:	ba 27 00 00 00       	mov    $0x27,%edx
  40160d:	be 01 00 00 00       	mov    $0x1,%esi
  401612:	bf 08 36 40 00       	mov    $0x403608,%edi
  401617:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
  40161c:	48 8d 9c 24 90 00 00 	lea    0x90(%rsp),%rbx
  401623:	00 
  401624:	45 31 e4             	xor    %r12d,%r12d
  401627:	49 83 ce ff          	or     $0xffffffffffffffff,%r14
  40162b:	e8 30 f9 ff ff       	callq  400f60 <fwrite@plt>
  401630:	66 0f 6f 05 98 26 00 	movdqa 0x2698(%rip),%xmm0        # 403cd0 <_IO_stdin_used+0x8a0>
  401637:	00 
  401638:	48 b8 62 6f 62 2e 64 	mov    $0x617461642e626f62,%rax
  40163f:	61 74 61 
  401642:	31 d2                	xor    %edx,%edx
  401644:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40164b:	00 
  40164c:	c7 84 24 a0 00 00 00 	movl   $0x0,0xa0(%rsp)
  401653:	00 00 00 00 
  401657:	0f 11 84 24 a4 00 00 	movups %xmm0,0xa4(%rsp)
  40165e:	00 
  40165f:	48 89 94 24 98 00 00 	mov    %rdx,0x98(%rsp)
  401666:	00 
  401667:	c7 84 24 b4 00 00 00 	movl   $0x0,0xb4(%rsp)
  40166e:	00 00 00 00 
  401672:	48 b8 62 6f 62 2e 65 	mov    $0x636e652e626f62,%rax
  401679:	6e 63 00 
  40167c:	31 d2                	xor    %edx,%edx
  40167e:	66 0f 6f 05 5a 26 00 	movdqa 0x265a(%rip),%xmm0        # 403ce0 <_IO_stdin_used+0x8b0>
  401685:	00 
  401686:	c7 84 24 c8 00 00 00 	movl   $0x0,0xc8(%rsp)
  40168d:	00 00 00 00 
  401691:	c7 84 24 dc 00 00 00 	movl   $0x0,0xdc(%rsp)
  401698:	00 00 00 00 
  40169c:	0f 11 84 24 b8 00 00 	movups %xmm0,0xb8(%rsp)
  4016a3:	00 
  4016a4:	c7 84 24 f0 00 00 00 	movl   $0x0,0xf0(%rsp)
  4016ab:	00 00 00 00 
  4016af:	c7 84 24 04 01 00 00 	movl   $0x0,0x104(%rsp)
  4016b6:	00 00 00 00 
  4016ba:	66 0f 6f 05 2e 26 00 	movdqa 0x262e(%rip),%xmm0        # 403cf0 <_IO_stdin_used+0x8c0>
  4016c1:	00 
  4016c2:	c7 84 24 18 01 00 00 	movl   $0x0,0x118(%rsp)
  4016c9:	00 00 00 00 
  4016cd:	c7 84 24 2c 01 00 00 	movl   $0x0,0x12c(%rsp)
  4016d4:	00 00 00 00 
  4016d8:	0f 11 84 24 cc 00 00 	movups %xmm0,0xcc(%rsp)
  4016df:	00 
  4016e0:	48 c7 44 24 40 32 30 	movq   $0x303032,0x40(%rsp)
  4016e7:	30 00 
  4016e9:	66 c7 44 24 48 00 00 	movw   $0x0,0x48(%rsp)
  4016f0:	66 0f 6f 05 08 26 00 	movdqa 0x2608(%rip),%xmm0        # 403d00 <_IO_stdin_used+0x8d0>
  4016f7:	00 
  4016f8:	48 c7 44 24 4a 33 30 	movq   $0x303033,0x4a(%rsp)
  4016ff:	30 00 
  401701:	66 c7 44 24 52 00 00 	movw   $0x0,0x52(%rsp)
  401708:	0f 29 84 24 e0 00 00 	movaps %xmm0,0xe0(%rsp)
  40170f:	00 
  401710:	48 c7 44 24 54 31 35 	movq   $0x30303531,0x54(%rsp)
  401717:	30 30 
  401719:	66 c7 44 24 5c 00 00 	movw   $0x0,0x5c(%rsp)
  401720:	66 0f 6f 05 e8 25 00 	movdqa 0x25e8(%rip),%xmm0        # 403d10 <_IO_stdin_used+0x8e0>
  401727:	00 
  401728:	48 c7 44 24 5e 35 35 	movq   $0x3535,0x5e(%rsp)
  40172f:	00 00 
  401731:	66 c7 44 24 66 00 00 	movw   $0x0,0x66(%rsp)
  401738:	0f 11 84 24 f4 00 00 	movups %xmm0,0xf4(%rsp)
  40173f:	00 
  401740:	66 0f 6f 05 d8 25 00 	movdqa 0x25d8(%rip),%xmm0        # 403d20 <_IO_stdin_used+0x8f0>
  401747:	00 
  401748:	0f 11 84 24 08 01 00 	movups %xmm0,0x108(%rsp)
  40174f:	00 
  401750:	66 0f 6f 05 d8 25 00 	movdqa 0x25d8(%rip),%xmm0        # 403d30 <_IO_stdin_used+0x900>
  401757:	00 
  401758:	0f 11 84 24 1c 01 00 	movups %xmm0,0x11c(%rsp)
  40175f:	00 
  401760:	48 c7 44 24 68 35 30 	movq   $0x303035,0x68(%rsp)
  401767:	30 00 
  401769:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  401770:	00 
  401771:	48 b8 72 69 63 6b 2e 	mov    $0x636e652e6b636972,%rax
  401778:	65 6e 63 
  40177b:	66 0f 6f 05 bd 25 00 	movdqa 0x25bd(%rip),%xmm0        # 403d40 <_IO_stdin_used+0x910>
  401782:	00 
  401783:	48 89 94 24 38 01 00 	mov    %rdx,0x138(%rsp)
  40178a:	00 
  40178b:	31 d2                	xor    %edx,%edx
  40178d:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  401794:	00 
  401795:	0f 11 84 24 44 01 00 	movups %xmm0,0x144(%rsp)
  40179c:	00 
  40179d:	48 89 94 24 60 01 00 	mov    %rdx,0x160(%rsp)
  4017a4:	00 
  4017a5:	48 b8 6b 69 72 6b 2e 	mov    $0x636e652e6b72696b,%rax
  4017ac:	65 6e 63 
  4017af:	31 d2                	xor    %edx,%edx
  4017b1:	66 0f 6f 05 97 25 00 	movdqa 0x2597(%rip),%xmm0        # 403d50 <_IO_stdin_used+0x920>
  4017b8:	00 
  4017b9:	66 c7 44 24 70 00 00 	movw   $0x0,0x70(%rsp)
  4017c0:	48 c7 44 24 72 35 30 	movq   $0x303035,0x72(%rsp)
  4017c7:	30 00 
  4017c9:	0f 11 84 24 6c 01 00 	movups %xmm0,0x16c(%rsp)
  4017d0:	00 
  4017d1:	66 c7 44 24 7a 00 00 	movw   $0x0,0x7a(%rsp)
  4017d8:	48 c7 44 24 7c 31 32 	movq   $0x353231,0x7c(%rsp)
  4017df:	35 00 
  4017e1:	66 0f 6f 05 77 25 00 	movdqa 0x2577(%rip),%xmm0        # 403d60 <_IO_stdin_used+0x930>
  4017e8:	00 
  4017e9:	66 c7 84 24 84 00 00 	movw   $0x0,0x84(%rsp)
  4017f0:	00 00 00 
  4017f3:	48 c7 84 24 86 00 00 	movq   $0x30,0x86(%rsp)
  4017fa:	00 30 00 00 00 
  4017ff:	0f 29 84 24 80 01 00 	movaps %xmm0,0x180(%rsp)
  401806:	00 
  401807:	66 c7 84 24 8e 00 00 	movw   $0x0,0x8e(%rsp)
  40180e:	00 00 00 
  401811:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  401818:	00 00 00 00 
  40181c:	66 0f 6f 05 4c 25 00 	movdqa 0x254c(%rip),%xmm0        # 403d70 <_IO_stdin_used+0x940>
  401823:	00 
  401824:	c7 84 24 54 01 00 00 	movl   $0x0,0x154(%rsp)
  40182b:	00 00 00 00 
  40182f:	c7 84 24 68 01 00 00 	movl   $0x0,0x168(%rsp)
  401836:	00 00 00 00 
  40183a:	0f 11 84 24 a8 01 00 	movups %xmm0,0x1a8(%rsp)
  401841:	00 
  401842:	c7 84 24 7c 01 00 00 	movl   $0x0,0x17c(%rsp)
  401849:	00 00 00 00 
  40184d:	c7 84 24 90 01 00 00 	movl   $0x0,0x190(%rsp)
  401854:	00 00 00 00 
  401858:	66 0f 6f 05 20 25 00 	movdqa 0x2520(%rip),%xmm0        # 403d80 <_IO_stdin_used+0x950>
  40185f:	00 
  401860:	48 89 84 24 94 01 00 	mov    %rax,0x194(%rsp)
  401867:	00 
  401868:	48 89 94 24 9c 01 00 	mov    %rdx,0x19c(%rsp)
  40186f:	00 
  401870:	0f 11 84 24 bc 01 00 	movups %xmm0,0x1bc(%rsp)
  401877:	00 
  401878:	c7 84 24 a4 01 00 00 	movl   $0x0,0x1a4(%rsp)
  40187f:	00 00 00 00 
  401883:	c7 84 24 b8 01 00 00 	movl   $0x0,0x1b8(%rsp)
  40188a:	00 00 00 00 
  40188e:	c7 84 24 cc 01 00 00 	movl   $0x0,0x1cc(%rsp)
  401895:	00 00 00 00 
  401899:	4a 8d 3c 23          	lea    (%rbx,%r12,1),%rdi
  40189d:	31 c0                	xor    %eax,%eax
  40189f:	ba 80 01 00 00       	mov    $0x180,%edx
  4018a4:	be 41 02 00 00       	mov    $0x241,%esi
  4018a9:	e8 f2 f6 ff ff       	callq  400fa0 <open@plt>
  4018ae:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  4018b1:	41 89 c7             	mov    %eax,%r15d
  4018b4:	0f 84 95 0b 00 00    	je     40244f <main+0xfdf>
  4018ba:	31 c0                	xor    %eax,%eax
  4018bc:	4c 89 ef             	mov    %r13,%rdi
  4018bf:	4c 89 f1             	mov    %r14,%rcx
  4018c2:	f2 ae                	repnz scas %es:(%rdi),%al
  4018c4:	4c 89 ee             	mov    %r13,%rsi
  4018c7:	44 89 ff             	mov    %r15d,%edi
  4018ca:	48 89 c8             	mov    %rcx,%rax
  4018cd:	48 f7 d0             	not    %rax
  4018d0:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  4018d4:	e8 a7 f6 ff ff       	callq  400f80 <write@plt>
  4018d9:	48 85 c0             	test   %rax,%rax
  4018dc:	0f 88 7d 0c 00 00    	js     40255f <main+0x10ef>
  4018e2:	44 89 ff             	mov    %r15d,%edi
  4018e5:	e8 a6 f4 ff ff       	callq  400d90 <close@plt>
  4018ea:	83 c0 01             	add    $0x1,%eax
  4018ed:	0f 84 98 0c 00 00    	je     40258b <main+0x111b>
  4018f3:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4018fa:	00 
  4018fb:	49 83 c5 0a          	add    $0xa,%r13
  4018ff:	4a 8d 3c 20          	lea    (%rax,%r12,1),%rdi
  401903:	49 83 c4 14          	add    $0x14,%r12
  401907:	e8 24 f5 ff ff       	callq  400e30 <unlink@plt>
  40190c:	49 81 fc a0 00 00 00 	cmp    $0xa0,%r12
  401913:	75 84                	jne    401899 <main+0x429>
  401915:	e9 ae fb ff ff       	jmpq   4014c8 <main+0x58>
  40191a:	66 0f 6f 05 ae 23 00 	movdqa 0x23ae(%rip),%xmm0        # 403cd0 <_IO_stdin_used+0x8a0>
  401921:	00 
  401922:	48 b8 62 6f 62 2e 64 	mov    $0x617461642e626f62,%rax
  401929:	61 74 61 
  40192c:	31 d2                	xor    %edx,%edx
  40192e:	4c 8d a4 24 30 01 00 	lea    0x130(%rsp),%r12
  401935:	00 
  401936:	48 8d 9c 24 90 00 00 	lea    0x90(%rsp),%rbx
  40193d:	00 
  40193e:	0f 11 84 24 44 01 00 	movups %xmm0,0x144(%rsp)
  401945:	00 
  401946:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40194d:	00 
  40194e:	48 89 94 24 38 01 00 	mov    %rdx,0x138(%rsp)
  401955:	00 
  401956:	31 ed                	xor    %ebp,%ebp
  401958:	66 0f 6f 05 80 23 00 	movdqa 0x2380(%rip),%xmm0        # 403ce0 <_IO_stdin_used+0x8b0>
  40195f:	00 
  401960:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  401967:	00 00 00 00 
  40196b:	c7 84 24 54 01 00 00 	movl   $0x0,0x154(%rsp)
  401972:	00 00 00 00 
  401976:	0f 11 84 24 58 01 00 	movups %xmm0,0x158(%rsp)
  40197d:	00 
  40197e:	c7 84 24 68 01 00 00 	movl   $0x0,0x168(%rsp)
  401985:	00 00 00 00 
  401989:	c7 84 24 7c 01 00 00 	movl   $0x0,0x17c(%rsp)
  401990:	00 00 00 00 
  401994:	66 0f 6f 05 54 23 00 	movdqa 0x2354(%rip),%xmm0        # 403cf0 <_IO_stdin_used+0x8c0>
  40199b:	00 
  40199c:	c7 84 24 90 01 00 00 	movl   $0x0,0x190(%rsp)
  4019a3:	00 00 00 00 
  4019a7:	c7 84 24 a4 01 00 00 	movl   $0x0,0x1a4(%rsp)
  4019ae:	00 00 00 00 
  4019b2:	0f 11 84 24 6c 01 00 	movups %xmm0,0x16c(%rsp)
  4019b9:	00 
  4019ba:	c7 84 24 b8 01 00 00 	movl   $0x0,0x1b8(%rsp)
  4019c1:	00 00 00 00 
  4019c5:	66 0f 6f 05 33 23 00 	movdqa 0x2333(%rip),%xmm0        # 403d00 <_IO_stdin_used+0x8d0>
  4019cc:	00 
  4019cd:	0f 29 84 24 80 01 00 	movaps %xmm0,0x180(%rsp)
  4019d4:	00 
  4019d5:	66 0f 6f 05 33 23 00 	movdqa 0x2333(%rip),%xmm0        # 403d10 <_IO_stdin_used+0x8e0>
  4019dc:	00 
  4019dd:	0f 11 84 24 94 01 00 	movups %xmm0,0x194(%rsp)
  4019e4:	00 
  4019e5:	66 0f 6f 05 33 23 00 	movdqa 0x2333(%rip),%xmm0        # 403d20 <_IO_stdin_used+0x8f0>
  4019ec:	00 
  4019ed:	0f 11 84 24 a8 01 00 	movups %xmm0,0x1a8(%rsp)
  4019f4:	00 
  4019f5:	4c 89 e7             	mov    %r12,%rdi
  4019f8:	be 11 00 00 00       	mov    $0x11,%esi
  4019fd:	49 83 c4 14          	add    $0x14,%r12
  401a01:	e8 ea f9 ff ff       	callq  4013f0 <openAccount>
  401a06:	89 04 ab             	mov    %eax,(%rbx,%rbp,4)
  401a09:	48 83 c5 01          	add    $0x1,%rbp
  401a0d:	48 83 fd 07          	cmp    $0x7,%rbp
  401a11:	75 e2                	jne    4019f5 <main+0x585>
  401a13:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  401a1a:	00 00 
  401a1c:	45 31 f6             	xor    %r14d,%r14d
  401a1f:	c7 04 24 01 00 00 00 	movl   $0x1,(%rsp)
  401a26:	42 8b 2c b3          	mov    (%rbx,%r14,4),%ebp
  401a2a:	31 c0                	xor    %eax,%eax
  401a2c:	be 03 00 00 00       	mov    $0x3,%esi
  401a31:	89 ef                	mov    %ebp,%edi
  401a33:	e8 58 f5 ff ff       	callq  400f90 <fcntl@plt>
  401a38:	83 c0 01             	add    $0x1,%eax
  401a3b:	0f 85 7c 0e 00 00    	jne    4028bd <main+0x144d>
  401a41:	e8 9a f4 ff ff       	callq  400ee0 <__errno_location@plt>
  401a46:	83 38 09             	cmpl   $0x9,(%rax)
  401a49:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  401a4e:	0f 85 b3 0e 00 00    	jne    402907 <main+0x1497>
  401a54:	4c 63 24 24          	movslq (%rsp),%r12
  401a58:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  401a5d:	49 89 f7             	mov    %rsi,%r15
  401a60:	45 89 e5             	mov    %r12d,%r13d
  401a63:	49 83 c4 33          	add    $0x33,%r12
  401a67:	45 29 f5             	sub    %r14d,%r13d
  401a6a:	49 29 f4             	sub    %rsi,%r12
  401a6d:	eb 21                	jmp    401a90 <main+0x620>
  401a6f:	43 8d 54 3d 00       	lea    0x0(%r13,%r15,1),%edx
  401a74:	42 8b 34 bb          	mov    (%rbx,%r15,4),%esi
  401a78:	89 ef                	mov    %ebp,%edi
  401a7a:	80 e2 01             	and    $0x1,%dl
  401a7d:	74 04                	je     401a83 <main+0x613>
  401a7f:	89 f7                	mov    %esi,%edi
  401a81:	89 ee                	mov    %ebp,%esi
  401a83:	4b 8d 14 3c          	lea    (%r12,%r15,1),%rdx
  401a87:	49 83 c7 01          	add    $0x1,%r15
  401a8b:	e8 00 f9 ff ff       	callq  401390 <transfer>
  401a90:	41 83 ff 07          	cmp    $0x7,%r15d
  401a94:	75 d9                	jne    401a6f <main+0x5ff>
  401a96:	8b 04 24             	mov    (%rsp),%eax
  401a99:	48 83 44 24 08 01    	addq   $0x1,0x8(%rsp)
  401a9f:	83 c0 06             	add    $0x6,%eax
  401aa2:	44 29 f0             	sub    %r14d,%eax
  401aa5:	49 83 c6 01          	add    $0x1,%r14
  401aa9:	49 83 fe 07          	cmp    $0x7,%r14
  401aad:	89 04 24             	mov    %eax,(%rsp)
  401ab0:	0f 85 70 ff ff ff    	jne    401a26 <main+0x5b6>
  401ab6:	48 8b 0d 5b 28 20 00 	mov    0x20285b(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  401abd:	ba 0c 00 00 00       	mov    $0xc,%edx
  401ac2:	be 01 00 00 00       	mov    $0x1,%esi
  401ac7:	bf a4 3c 40 00       	mov    $0x403ca4,%edi
  401acc:	31 ed                	xor    %ebp,%ebp
  401ace:	e8 8d f4 ff ff       	callq  400f60 <fwrite@plt>
  401ad3:	44 8b 24 ab          	mov    (%rbx,%rbp,4),%r12d
  401ad7:	31 c0                	xor    %eax,%eax
  401ad9:	be 03 00 00 00       	mov    $0x3,%esi
  401ade:	44 89 e7             	mov    %r12d,%edi
  401ae1:	e8 aa f4 ff ff       	callq  400f90 <fcntl@plt>
  401ae6:	83 c0 01             	add    $0x1,%eax
  401ae9:	0f 85 ce 0d 00 00    	jne    4028bd <main+0x144d>
  401aef:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  401af4:	83 38 09             	cmpl   $0x9,(%rax)
  401af7:	0f 85 0a 0e 00 00    	jne    402907 <main+0x1497>
  401afd:	44 89 e7             	mov    %r12d,%edi
  401b00:	e8 8b f2 ff ff       	callq  400d90 <close@plt>
  401b05:	83 c0 01             	add    $0x1,%eax
  401b08:	0f 84 bc 17 00 00    	je     4032ca <main+0x1e5a>
  401b0e:	31 c0                	xor    %eax,%eax
  401b10:	be 03 00 00 00       	mov    $0x3,%esi
  401b15:	44 89 e7             	mov    %r12d,%edi
  401b18:	e8 73 f4 ff ff       	callq  400f90 <fcntl@plt>
  401b1d:	83 c0 01             	add    $0x1,%eax
  401b20:	0f 85 42 14 00 00    	jne    402f68 <main+0x1af8>
  401b26:	48 83 c5 01          	add    $0x1,%rbp
  401b2a:	48 83 fd 07          	cmp    $0x7,%rbp
  401b2e:	75 a3                	jne    401ad3 <main+0x663>
  401b30:	31 ed                	xor    %ebp,%ebp
  401b32:	e9 91 f9 ff ff       	jmpq   4014c8 <main+0x58>
  401b37:	be 40 11 40 00       	mov    $0x401140,%esi
  401b3c:	bf 11 00 00 00       	mov    $0x11,%edi
  401b41:	66 c7 84 24 90 00 00 	movw   $0x31,0x90(%rsp)
  401b48:	00 31 00 
  401b4b:	e8 80 f3 ff ff       	callq  400ed0 <signal@plt>
  401b50:	e8 cb f3 ff ff       	callq  400f20 <random@plt>
  401b55:	b9 1e 00 00 00       	mov    $0x1e,%ecx
  401b5a:	48 99                	cqto   
  401b5c:	31 ed                	xor    %ebp,%ebp
  401b5e:	48 f7 f9             	idiv   %rcx
  401b61:	44 8d 62 0a          	lea    0xa(%rdx),%r12d
  401b65:	eb 19                	jmp    401b80 <main+0x710>
  401b67:	e8 e4 f3 ff ff       	callq  400f50 <fork@plt>
  401b6c:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  401b6f:	0f 84 73 14 00 00    	je     402fe8 <main+0x1b78>
  401b75:	85 c0                	test   %eax,%eax
  401b77:	0f 84 9c 14 00 00    	je     403019 <main+0x1ba9>
  401b7d:	83 c5 01             	add    $0x1,%ebp
  401b80:	44 39 e5             	cmp    %r12d,%ebp
  401b83:	7c e2                	jl     401b67 <main+0x6f7>
  401b85:	c7 84 24 30 01 00 00 	movl   $0x0,0x130(%rsp)
  401b8c:	00 00 00 00 
  401b90:	4c 8d bc 24 30 01 00 	lea    0x130(%rsp),%r15
  401b97:	00 
  401b98:	eb 0f                	jmp    401ba9 <main+0x739>
  401b9a:	8b 05 98 27 20 00    	mov    0x202798(%rip),%eax        # 604338 <reaped>
  401ba0:	83 c0 01             	add    $0x1,%eax
  401ba3:	89 05 8f 27 20 00    	mov    %eax,0x20278f(%rip)        # 604338 <reaped>
  401ba9:	4c 89 ff             	mov    %r15,%rdi
  401bac:	e8 ef f1 ff ff       	callq  400da0 <wait@plt>
  401bb1:	83 c0 01             	add    $0x1,%eax
  401bb4:	75 e4                	jne    401b9a <main+0x72a>
  401bb6:	e8 25 f3 ff ff       	callq  400ee0 <__errno_location@plt>
  401bbb:	8b 38                	mov    (%rax),%edi
  401bbd:	48 89 c3             	mov    %rax,%rbx
  401bc0:	83 ff 0a             	cmp    $0xa,%edi
  401bc3:	0f 84 e0 14 00 00    	je     4030a9 <main+0x1c39>
  401bc9:	e8 c2 f2 ff ff       	callq  400e90 <strerror@plt>
  401bce:	8b 13                	mov    (%rbx),%edx
  401bd0:	48 8b 3d 41 27 20 00 	mov    0x202741(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401bd7:	48 89 c1             	mov    %rax,%rcx
  401bda:	be 70 3b 40 00       	mov    $0x403b70,%esi
  401bdf:	31 c0                	xor    %eax,%eax
  401be1:	bd 36 00 00 00       	mov    $0x36,%ebp
  401be6:	e8 85 f3 ff ff       	callq  400f70 <fprintf@plt>
  401beb:	e9 d8 f8 ff ff       	jmpq   4014c8 <main+0x58>
  401bf0:	48 8b 0d 21 27 20 00 	mov    0x202721(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  401bf7:	ba 28 00 00 00       	mov    $0x28,%edx
  401bfc:	be 01 00 00 00       	mov    $0x1,%esi
  401c01:	bf c8 36 40 00       	mov    $0x4036c8,%edi
  401c06:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
  401c0d:	00 
  401c0e:	4c 8d ac 24 30 01 00 	lea    0x130(%rsp),%r13
  401c15:	00 
  401c16:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
  401c1b:	45 31 ff             	xor    %r15d,%r15d
  401c1e:	45 31 f6             	xor    %r14d,%r14d
  401c21:	e8 3a f3 ff ff       	callq  400f60 <fwrite@plt>
  401c26:	66 0f 6f 05 a2 20 00 	movdqa 0x20a2(%rip),%xmm0        # 403cd0 <_IO_stdin_used+0x8a0>
  401c2d:	00 
  401c2e:	48 b8 62 6f 62 2e 64 	mov    $0x617461642e626f62,%rax
  401c35:	61 74 61 
  401c38:	31 d2                	xor    %edx,%edx
  401c3a:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  401c41:	00 
  401c42:	48 b8 62 6f 62 2e 65 	mov    $0x636e652e626f62,%rax
  401c49:	6e 63 00 
  401c4c:	0f 11 84 24 a4 00 00 	movups %xmm0,0xa4(%rsp)
  401c53:	00 
  401c54:	48 89 94 24 98 00 00 	mov    %rdx,0x98(%rsp)
  401c5b:	00 
  401c5c:	31 d2                	xor    %edx,%edx
  401c5e:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  401c65:	00 
  401c66:	48 b8 72 69 63 6b 2e 	mov    $0x636e652e6b636972,%rax
  401c6d:	65 6e 63 
  401c70:	66 0f 6f 05 68 20 00 	movdqa 0x2068(%rip),%xmm0        # 403ce0 <_IO_stdin_used+0x8b0>
  401c77:	00 
  401c78:	48 89 94 24 38 01 00 	mov    %rdx,0x138(%rsp)
  401c7f:	00 
  401c80:	31 d2                	xor    %edx,%edx
  401c82:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  401c89:	00 
  401c8a:	0f 11 84 24 b8 00 00 	movups %xmm0,0xb8(%rsp)
  401c91:	00 
  401c92:	48 89 94 24 60 01 00 	mov    %rdx,0x160(%rsp)
  401c99:	00 
  401c9a:	c7 84 24 a0 00 00 00 	movl   $0x0,0xa0(%rsp)
  401ca1:	00 00 00 00 
  401ca5:	48 b8 6b 69 72 6b 2e 	mov    $0x636e652e6b72696b,%rax
  401cac:	65 6e 63 
  401caf:	31 d2                	xor    %edx,%edx
  401cb1:	66 0f 6f 05 37 20 00 	movdqa 0x2037(%rip),%xmm0        # 403cf0 <_IO_stdin_used+0x8c0>
  401cb8:	00 
  401cb9:	c7 84 24 b4 00 00 00 	movl   $0x0,0xb4(%rsp)
  401cc0:	00 00 00 00 
  401cc4:	c7 84 24 c8 00 00 00 	movl   $0x0,0xc8(%rsp)
  401ccb:	00 00 00 00 
  401ccf:	0f 11 84 24 cc 00 00 	movups %xmm0,0xcc(%rsp)
  401cd6:	00 
  401cd7:	c7 84 24 dc 00 00 00 	movl   $0x0,0xdc(%rsp)
  401cde:	00 00 00 00 
  401ce2:	c7 84 24 f0 00 00 00 	movl   $0x0,0xf0(%rsp)
  401ce9:	00 00 00 00 
  401ced:	66 0f 6f 05 0b 20 00 	movdqa 0x200b(%rip),%xmm0        # 403d00 <_IO_stdin_used+0x8d0>
  401cf4:	00 
  401cf5:	c7 84 24 04 01 00 00 	movl   $0x0,0x104(%rsp)
  401cfc:	00 00 00 00 
  401d00:	c7 84 24 18 01 00 00 	movl   $0x0,0x118(%rsp)
  401d07:	00 00 00 00 
  401d0b:	0f 29 84 24 e0 00 00 	movaps %xmm0,0xe0(%rsp)
  401d12:	00 
  401d13:	c7 84 24 2c 01 00 00 	movl   $0x0,0x12c(%rsp)
  401d1a:	00 00 00 00 
  401d1e:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  401d25:	00 00 00 00 
  401d29:	66 0f 6f 05 df 1f 00 	movdqa 0x1fdf(%rip),%xmm0        # 403d10 <_IO_stdin_used+0x8e0>
  401d30:	00 
  401d31:	c7 84 24 54 01 00 00 	movl   $0x0,0x154(%rsp)
  401d38:	00 00 00 00 
  401d3c:	0f 11 84 24 f4 00 00 	movups %xmm0,0xf4(%rsp)
  401d43:	00 
  401d44:	66 0f 6f 05 d4 1f 00 	movdqa 0x1fd4(%rip),%xmm0        # 403d20 <_IO_stdin_used+0x8f0>
  401d4b:	00 
  401d4c:	0f 11 84 24 08 01 00 	movups %xmm0,0x108(%rsp)
  401d53:	00 
  401d54:	66 0f 6f 05 d4 1f 00 	movdqa 0x1fd4(%rip),%xmm0        # 403d30 <_IO_stdin_used+0x900>
  401d5b:	00 
  401d5c:	0f 11 84 24 1c 01 00 	movups %xmm0,0x11c(%rsp)
  401d63:	00 
  401d64:	66 0f 6f 05 d4 1f 00 	movdqa 0x1fd4(%rip),%xmm0        # 403d40 <_IO_stdin_used+0x910>
  401d6b:	00 
  401d6c:	0f 11 84 24 44 01 00 	movups %xmm0,0x144(%rsp)
  401d73:	00 
  401d74:	c7 84 24 68 01 00 00 	movl   $0x0,0x168(%rsp)
  401d7b:	00 00 00 00 
  401d7f:	48 89 84 24 94 01 00 	mov    %rax,0x194(%rsp)
  401d86:	00 
  401d87:	48 8d 85 a0 00 00 00 	lea    0xa0(%rbp),%rax
  401d8e:	66 0f 6f 05 ba 1f 00 	movdqa 0x1fba(%rip),%xmm0        # 403d50 <_IO_stdin_used+0x920>
  401d95:	00 
  401d96:	c7 84 24 7c 01 00 00 	movl   $0x0,0x17c(%rsp)
  401d9d:	00 00 00 00 
  401da1:	c7 84 24 90 01 00 00 	movl   $0x0,0x190(%rsp)
  401da8:	00 00 00 00 
  401dac:	0f 11 84 24 6c 01 00 	movups %xmm0,0x16c(%rsp)
  401db3:	00 
  401db4:	48 89 94 24 9c 01 00 	mov    %rdx,0x19c(%rsp)
  401dbb:	00 
  401dbc:	c7 84 24 a4 01 00 00 	movl   $0x0,0x1a4(%rsp)
  401dc3:	00 00 00 00 
  401dc7:	66 0f 6f 05 91 1f 00 	movdqa 0x1f91(%rip),%xmm0        # 403d60 <_IO_stdin_used+0x930>
  401dce:	00 
  401dcf:	c7 84 24 b8 01 00 00 	movl   $0x0,0x1b8(%rsp)
  401dd6:	00 00 00 00 
  401dda:	c7 84 24 cc 01 00 00 	movl   $0x0,0x1cc(%rsp)
  401de1:	00 00 00 00 
  401de5:	0f 29 84 24 80 01 00 	movaps %xmm0,0x180(%rsp)
  401dec:	00 
  401ded:	48 89 04 24          	mov    %rax,(%rsp)
  401df1:	66 0f 6f 05 77 1f 00 	movdqa 0x1f77(%rip),%xmm0        # 403d70 <_IO_stdin_used+0x940>
  401df8:	00 
  401df9:	0f 11 84 24 a8 01 00 	movups %xmm0,0x1a8(%rsp)
  401e00:	00 
  401e01:	66 0f 6f 05 77 1f 00 	movdqa 0x1f77(%rip),%xmm0        # 403d80 <_IO_stdin_used+0x950>
  401e08:	00 
  401e09:	0f 11 84 24 bc 01 00 	movups %xmm0,0x1bc(%rsp)
  401e10:	00 
  401e11:	31 f6                	xor    %esi,%esi
  401e13:	31 c0                	xor    %eax,%eax
  401e15:	48 89 ef             	mov    %rbp,%rdi
  401e18:	e8 83 f1 ff ff       	callq  400fa0 <open@plt>
  401e1d:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  401e20:	41 89 c4             	mov    %eax,%r12d
  401e23:	0f 84 26 06 00 00    	je     40244f <main+0xfdf>
  401e29:	ba 14 00 00 00       	mov    $0x14,%edx
  401e2e:	48 89 de             	mov    %rbx,%rsi
  401e31:	89 c7                	mov    %eax,%edi
  401e33:	e8 b8 ef ff ff       	callq  400df0 <read@plt>
  401e38:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401e3c:	0f 84 9d 0e 00 00    	je     402cdf <main+0x186f>
  401e42:	44 89 e7             	mov    %r12d,%edi
  401e45:	c6 44 04 40 00       	movb   $0x0,0x40(%rsp,%rax,1)
  401e4a:	e8 41 ef ff ff       	callq  400d90 <close@plt>
  401e4f:	83 c0 01             	add    $0x1,%eax
  401e52:	0f 84 f9 0a 00 00    	je     402951 <main+0x14e1>
  401e58:	ba 0a 00 00 00       	mov    $0xa,%edx
  401e5d:	31 f6                	xor    %esi,%esi
  401e5f:	48 89 df             	mov    %rbx,%rdi
  401e62:	e8 49 f0 ff ff       	callq  400eb0 <strtol@plt>
  401e67:	48 98                	cltq   
  401e69:	31 f6                	xor    %esi,%esi
  401e6b:	4c 89 ef             	mov    %r13,%rdi
  401e6e:	49 01 c6             	add    %rax,%r14
  401e71:	31 c0                	xor    %eax,%eax
  401e73:	e8 28 f1 ff ff       	callq  400fa0 <open@plt>
  401e78:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  401e7b:	41 89 c4             	mov    %eax,%r12d
  401e7e:	48 89 d9             	mov    %rbx,%rcx
  401e81:	48 89 ea             	mov    %rbp,%rdx
  401e84:	0f 84 ad 03 00 00    	je     402237 <main+0xdc7>
  401e8a:	48 8b 3d 87 24 20 00 	mov    0x202487(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401e91:	be 28 37 40 00       	mov    $0x403728,%esi
  401e96:	31 c0                	xor    %eax,%eax
  401e98:	e8 d3 f0 ff ff       	callq  400f70 <fprintf@plt>
  401e9d:	ba 14 00 00 00       	mov    $0x14,%edx
  401ea2:	48 89 de             	mov    %rbx,%rsi
  401ea5:	44 89 e7             	mov    %r12d,%edi
  401ea8:	e8 43 ef ff ff       	callq  400df0 <read@plt>
  401ead:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401eb1:	0f 84 78 05 00 00    	je     40242f <main+0xfbf>
  401eb7:	c6 44 04 40 00       	movb   $0x0,0x40(%rsp,%rax,1)
  401ebc:	31 c9                	xor    %ecx,%ecx
  401ebe:	31 f6                	xor    %esi,%esi
  401ec0:	eb 06                	jmp    401ec8 <main+0xa58>
  401ec2:	31 d6                	xor    %edx,%esi
  401ec4:	48 83 c1 01          	add    $0x1,%rcx
  401ec8:	0f b6 54 0d 00       	movzbl 0x0(%rbp,%rcx,1),%edx
  401ecd:	80 fa 2e             	cmp    $0x2e,%dl
  401ed0:	75 f0                	jne    401ec2 <main+0xa52>
  401ed2:	48 89 da             	mov    %rbx,%rdx
  401ed5:	eb 07                	jmp    401ede <main+0xa6e>
  401ed7:	40 30 32             	xor    %sil,(%rdx)
  401eda:	48 83 c2 01          	add    $0x1,%rdx
  401ede:	48 89 d1             	mov    %rdx,%rcx
  401ee1:	48 29 d9             	sub    %rbx,%rcx
  401ee4:	48 39 c8             	cmp    %rcx,%rax
  401ee7:	77 ee                	ja     401ed7 <main+0xa67>
  401ee9:	31 f6                	xor    %esi,%esi
  401eeb:	ba 0a 00 00 00       	mov    $0xa,%edx
  401ef0:	48 89 df             	mov    %rbx,%rdi
  401ef3:	e8 b8 ef ff ff       	callq  400eb0 <strtol@plt>
  401ef8:	48 8b 3d 19 24 20 00 	mov    0x202419(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401eff:	48 98                	cltq   
  401f01:	48 89 da             	mov    %rbx,%rdx
  401f04:	49 01 c7             	add    %rax,%r15
  401f07:	be 15 3c 40 00       	mov    $0x403c15,%esi
  401f0c:	31 c0                	xor    %eax,%eax
  401f0e:	e8 5d f0 ff ff       	callq  400f70 <fprintf@plt>
  401f13:	44 89 e7             	mov    %r12d,%edi
  401f16:	e8 75 ee ff ff       	callq  400d90 <close@plt>
  401f1b:	83 c0 01             	add    $0x1,%eax
  401f1e:	0f 84 2d 0a 00 00    	je     402951 <main+0x14e1>
  401f24:	48 83 c5 14          	add    $0x14,%rbp
  401f28:	49 83 c5 14          	add    $0x14,%r13
  401f2c:	48 3b 2c 24          	cmp    (%rsp),%rbp
  401f30:	0f 85 db fe ff ff    	jne    401e11 <main+0x9a1>
  401f36:	4d 85 ff             	test   %r15,%r15
  401f39:	48 8b 3d d8 23 20 00 	mov    0x2023d8(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  401f40:	0f 84 61 09 00 00    	je     4028a7 <main+0x1437>
  401f46:	4c 89 f9             	mov    %r15,%rcx
  401f49:	4c 89 f2             	mov    %r14,%rdx
  401f4c:	be 70 37 40 00       	mov    $0x403770,%esi
  401f51:	31 c0                	xor    %eax,%eax
  401f53:	31 ed                	xor    %ebp,%ebp
  401f55:	e8 16 f0 ff ff       	callq  400f70 <fprintf@plt>
  401f5a:	e9 69 f5 ff ff       	jmpq   4014c8 <main+0x58>
  401f5f:	66 0f 6f 05 69 1d 00 	movdqa 0x1d69(%rip),%xmm0        # 403cd0 <_IO_stdin_used+0x8a0>
  401f66:	00 
  401f67:	48 b8 62 6f 62 2e 64 	mov    $0x617461642e626f62,%rax
  401f6e:	61 74 61 
  401f71:	31 d2                	xor    %edx,%edx
  401f73:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  401f7a:	00 
  401f7b:	4c 8d bc 24 30 01 00 	lea    0x130(%rsp),%r15
  401f82:	00 
  401f83:	0f 11 84 24 44 01 00 	movups %xmm0,0x144(%rsp)
  401f8a:	00 
  401f8b:	48 83 c8 ff          	or     $0xffffffffffffffff,%rax
  401f8f:	48 89 94 24 38 01 00 	mov    %rdx,0x138(%rsp)
  401f96:	00 
  401f97:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  401f9e:	00 00 00 00 
  401fa2:	49 bc 25 49 92 24 49 	mov    $0x4924924924924925,%r12
  401fa9:	92 24 49 
  401fac:	66 0f 6f 05 2c 1d 00 	movdqa 0x1d2c(%rip),%xmm0        # 403ce0 <_IO_stdin_used+0x8b0>
  401fb3:	00 
  401fb4:	c7 84 24 54 01 00 00 	movl   $0x0,0x154(%rsp)
  401fbb:	00 00 00 00 
  401fbf:	c7 84 24 68 01 00 00 	movl   $0x0,0x168(%rsp)
  401fc6:	00 00 00 00 
  401fca:	0f 11 84 24 58 01 00 	movups %xmm0,0x158(%rsp)
  401fd1:	00 
  401fd2:	c7 84 24 7c 01 00 00 	movl   $0x0,0x17c(%rsp)
  401fd9:	00 00 00 00 
  401fdd:	c7 84 24 90 01 00 00 	movl   $0x0,0x190(%rsp)
  401fe4:	00 00 00 00 
  401fe8:	66 0f 6f 05 00 1d 00 	movdqa 0x1d00(%rip),%xmm0        # 403cf0 <_IO_stdin_used+0x8c0>
  401fef:	00 
  401ff0:	c7 84 24 a4 01 00 00 	movl   $0x0,0x1a4(%rsp)
  401ff7:	00 00 00 00 
  401ffb:	c7 84 24 b8 01 00 00 	movl   $0x0,0x1b8(%rsp)
  402002:	00 00 00 00 
  402006:	0f 11 84 24 6c 01 00 	movups %xmm0,0x16c(%rsp)
  40200d:	00 
  40200e:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  402015:	00 
  402016:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  40201d:	00 
  40201e:	66 0f 6f 05 da 1c 00 	movdqa 0x1cda(%rip),%xmm0        # 403d00 <_IO_stdin_used+0x8d0>
  402025:	00 
  402026:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40202d:	00 
  40202e:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
  402035:	00 
  402036:	0f 29 84 24 80 01 00 	movaps %xmm0,0x180(%rsp)
  40203d:	00 
  40203e:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  402045:	00 
  402046:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
  40204d:	00 
  40204e:	66 0f 6f 05 ba 1c 00 	movdqa 0x1cba(%rip),%xmm0        # 403d10 <_IO_stdin_used+0x8e0>
  402055:	00 
  402056:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  40205d:	00 
  40205e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402062:	0f 11 84 24 94 01 00 	movups %xmm0,0x194(%rsp)
  402069:	00 
  40206a:	66 0f 6f 05 ae 1c 00 	movdqa 0x1cae(%rip),%xmm0        # 403d20 <_IO_stdin_used+0x8f0>
  402071:	00 
  402072:	0f 11 84 24 a8 01 00 	movups %xmm0,0x1a8(%rsp)
  402079:	00 
  40207a:	e8 a1 ee ff ff       	callq  400f20 <random@plt>
  40207f:	bb 07 00 00 00       	mov    $0x7,%ebx
  402084:	48 99                	cqto   
  402086:	48 f7 fb             	idiv   %rbx
  402089:	48 89 d5             	mov    %rdx,%rbp
  40208c:	41 89 d5             	mov    %edx,%r13d
  40208f:	e8 8c ee ff ff       	callq  400f20 <random@plt>
  402094:	48 99                	cqto   
  402096:	48 f7 fb             	idiv   %rbx
  402099:	39 d5                	cmp    %edx,%ebp
  40209b:	48 63 da             	movslq %edx,%rbx
  40209e:	75 2e                	jne    4020ce <main+0xc5e>
  4020a0:	e8 7b ee ff ff       	callq  400f20 <random@plt>
  4020a5:	48 89 c1             	mov    %rax,%rcx
  4020a8:	49 f7 ec             	imul   %r12
  4020ab:	48 89 c8             	mov    %rcx,%rax
  4020ae:	48 c1 f8 3f          	sar    $0x3f,%rax
  4020b2:	48 d1 fa             	sar    %rdx
  4020b5:	48 29 c2             	sub    %rax,%rdx
  4020b8:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
  4020bf:	00 
  4020c0:	48 29 d0             	sub    %rdx,%rax
  4020c3:	48 29 c1             	sub    %rax,%rcx
  4020c6:	41 39 cd             	cmp    %ecx,%r13d
  4020c9:	48 63 d9             	movslq %ecx,%rbx
  4020cc:	74 d2                	je     4020a0 <main+0xc30>
  4020ce:	48 6b fd 14          	imul   $0x14,%rbp,%rdi
  4020d2:	be 16 00 00 00       	mov    $0x16,%esi
  4020d7:	4c 01 ff             	add    %r15,%rdi
  4020da:	e8 11 f3 ff ff       	callq  4013f0 <openAccount>
  4020df:	48 6b fb 14          	imul   $0x14,%rbx,%rdi
  4020e3:	be 17 00 00 00       	mov    $0x17,%esi
  4020e8:	41 89 c6             	mov    %eax,%r14d
  4020eb:	4c 01 ff             	add    %r15,%rdi
  4020ee:	e8 fd f2 ff ff       	callq  4013f0 <openAccount>
  4020f3:	44 89 f7             	mov    %r14d,%edi
  4020f6:	41 89 c5             	mov    %eax,%r13d
  4020f9:	e8 a2 f0 ff ff       	callq  4011a0 <getBalance>
  4020fe:	44 89 ef             	mov    %r13d,%edi
  402101:	48 89 04 24          	mov    %rax,(%rsp)
  402105:	e8 96 f0 ff ff       	callq  4011a0 <getBalance>
  40210a:	4c 63 c5             	movslq %ebp,%r8
  40210d:	48 8b 14 24          	mov    (%rsp),%rdx
  402111:	4a 8b 8c c4 90 00 00 	mov    0x90(%rsp,%r8,8),%rcx
  402118:	00 
  402119:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  40211d:	74 1f                	je     40213e <main+0xcce>
  40211f:	29 d1                	sub    %edx,%ecx
  402121:	89 ce                	mov    %ecx,%esi
  402123:	c1 fe 1f             	sar    $0x1f,%esi
  402126:	31 f1                	xor    %esi,%ecx
  402128:	29 f1                	sub    %esi,%ecx
  40212a:	83 f9 04             	cmp    $0x4,%ecx
  40212d:	0f 8f af 07 00 00    	jg     4028e2 <main+0x1472>
  402133:	48 63 ca             	movslq %edx,%rcx
  402136:	4a 89 8c c4 90 00 00 	mov    %rcx,0x90(%rsp,%r8,8)
  40213d:	00 
  40213e:	48 8b 8c dc 90 00 00 	mov    0x90(%rsp,%rbx,8),%rcx
  402145:	00 
  402146:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  40214a:	74 14                	je     402160 <main+0xcf0>
  40214c:	29 c1                	sub    %eax,%ecx
  40214e:	89 ce                	mov    %ecx,%esi
  402150:	c1 fe 1f             	sar    $0x1f,%esi
  402153:	31 f1                	xor    %esi,%ecx
  402155:	29 f1                	sub    %esi,%ecx
  402157:	83 f9 04             	cmp    $0x4,%ecx
  40215a:	0f 8f cc 07 00 00    	jg     40292c <main+0x14bc>
  402160:	83 fa 09             	cmp    $0x9,%edx
  402163:	0f 8e c5 00 00 00    	jle    40222e <main+0xdbe>
  402169:	81 fa f4 01 00 00    	cmp    $0x1f4,%edx
  40216f:	b9 28 00 00 00       	mov    $0x28,%ecx
  402174:	be 0a 00 00 00       	mov    $0xa,%esi
  402179:	0f 4e ce             	cmovle %esi,%ecx
  40217c:	bd 01 00 00 00       	mov    $0x1,%ebp
  402181:	83 f8 63             	cmp    $0x63,%eax
  402184:	7f 0d                	jg     402193 <main+0xd23>
  402186:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
  40218b:	be 00 00 00 00       	mov    $0x0,%esi
  402190:	0f 45 ce             	cmovne %esi,%ecx
  402193:	29 ca                	sub    %ecx,%edx
  402195:	01 c8                	add    %ecx,%eax
  402197:	44 89 f7             	mov    %r14d,%edi
  40219a:	48 63 d2             	movslq %edx,%rdx
  40219d:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  4021a2:	89 04 24             	mov    %eax,(%rsp)
  4021a5:	48 89 d6             	mov    %rdx,%rsi
  4021a8:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  4021ad:	e8 ae f0 ff ff       	callq  401260 <setBalance>
  4021b2:	48 63 04 24          	movslq (%rsp),%rax
  4021b6:	44 89 ef             	mov    %r13d,%edi
  4021b9:	48 89 c6             	mov    %rax,%rsi
  4021bc:	48 89 04 24          	mov    %rax,(%rsp)
  4021c0:	e8 9b f0 ff ff       	callq  401260 <setBalance>
  4021c5:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4021ca:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  4021cf:	44 89 f7             	mov    %r14d,%edi
  4021d2:	48 8b 04 24          	mov    (%rsp),%rax
  4021d6:	4a 89 94 c4 90 00 00 	mov    %rdx,0x90(%rsp,%r8,8)
  4021dd:	00 
  4021de:	48 89 84 dc 90 00 00 	mov    %rax,0x90(%rsp,%rbx,8)
  4021e5:	00 
  4021e6:	e8 a5 eb ff ff       	callq  400d90 <close@plt>
  4021eb:	83 c0 01             	add    $0x1,%eax
  4021ee:	0f 84 cc 10 00 00    	je     4032c0 <main+0x1e50>
  4021f4:	44 89 ef             	mov    %r13d,%edi
  4021f7:	e8 94 eb ff ff       	callq  400d90 <close@plt>
  4021fc:	83 c0 01             	add    $0x1,%eax
  4021ff:	0f 84 b1 10 00 00    	je     4032b6 <main+0x1e46>
  402205:	83 44 24 1c 01       	addl   $0x1,0x1c(%rsp)
  40220a:	85 ed                	test   %ebp,%ebp
  40220c:	0f 85 68 fe ff ff    	jne    40207a <main+0xc0a>
  402212:	8b 54 24 1c          	mov    0x1c(%rsp),%edx
  402216:	48 8b 3d 03 21 20 00 	mov    0x202103(%rip),%rdi        # 604320 <stdout@@GLIBC_2.2.5>
  40221d:	be b1 3c 40 00       	mov    $0x403cb1,%esi
  402222:	31 c0                	xor    %eax,%eax
  402224:	e8 47 ed ff ff       	callq  400f70 <fprintf@plt>
  402229:	e9 9a f2 ff ff       	jmpq   4014c8 <main+0x58>
  40222e:	31 c9                	xor    %ecx,%ecx
  402230:	31 ed                	xor    %ebp,%ebp
  402232:	e9 4a ff ff ff       	jmpq   402181 <main+0xd11>
  402237:	48 8b 3d da 20 20 00 	mov    0x2020da(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  40223e:	be ff 3b 40 00       	mov    $0x403bff,%esi
  402243:	31 c0                	xor    %eax,%eax
  402245:	e8 26 ed ff ff       	callq  400f70 <fprintf@plt>
  40224a:	e9 d5 fc ff ff       	jmpq   401f24 <main+0xab4>
  40224f:	bf 0a 00 00 00       	mov    $0xa,%edi
  402254:	49 83 ce ff          	or     $0xffffffffffffffff,%r14
  402258:	31 db                	xor    %ebx,%ebx
  40225a:	e8 a1 eb ff ff       	callq  400e00 <malloc@plt>
  40225f:	49 89 c4             	mov    %rax,%r12
  402262:	48 b8 73 74 75 64 65 	mov    $0x746e6564757473,%rax
  402269:	6e 74 00 
  40226c:	49 89 04 24          	mov    %rax,(%r12)
  402270:	e8 3b eb ff ff       	callq  400db0 <getlogin@plt>
  402275:	4c 89 f1             	mov    %r14,%rcx
  402278:	49 89 c7             	mov    %rax,%r15
  40227b:	48 89 c7             	mov    %rax,%rdi
  40227e:	89 d8                	mov    %ebx,%eax
  402280:	f2 ae                	repnz scas %es:(%rdi),%al
  402282:	48 f7 d1             	not    %rcx
  402285:	48 8d 79 06          	lea    0x6(%rcx),%rdi
  402289:	48 89 cd             	mov    %rcx,%rbp
  40228c:	e8 6f eb ff ff       	callq  400e00 <malloc@plt>
  402291:	48 8d 78 06          	lea    0x6(%rax),%rdi
  402295:	48 89 ea             	mov    %rbp,%rdx
  402298:	4c 89 fe             	mov    %r15,%rsi
  40229b:	c7 00 74 75 72 74    	movl   $0x74727574,(%rax)
  4022a1:	66 c7 40 04 6c 65    	movw   $0x656c,0x4(%rax)
  4022a7:	49 89 c5             	mov    %rax,%r13
  4022aa:	e8 11 ec ff ff       	callq  400ec0 <memcpy@plt>
  4022af:	4c 89 e6             	mov    %r12,%rsi
  4022b2:	bf a0 37 40 00       	mov    $0x4037a0,%edi
  4022b7:	31 c0                	xor    %eax,%eax
  4022b9:	e8 c2 ea ff ff       	callq  400d80 <printf@plt>
  4022be:	48 8b 3d 4b 20 20 00 	mov    0x20204b(%rip),%rdi        # 604310 <__bss_start>
  4022c5:	48 8d 94 24 30 01 00 	lea    0x130(%rsp),%rdx
  4022cc:	00 
  4022cd:	be 37 3c 40 00       	mov    $0x403c37,%esi
  4022d2:	31 c0                	xor    %eax,%eax
  4022d4:	48 c7 84 24 30 01 00 	movq   $0x0,0x130(%rsp)
  4022db:	00 00 00 00 00 
  4022e0:	e8 4b ec ff ff       	callq  400f30 <fscanf@plt>
  4022e5:	4c 8b bc 24 30 01 00 	mov    0x130(%rsp),%r15
  4022ec:	00 
  4022ed:	4c 89 ee             	mov    %r13,%rsi
  4022f0:	4c 89 ff             	mov    %r15,%rdi
  4022f3:	e8 f8 eb ff ff       	callq  400ef0 <strcmp@plt>
  4022f8:	85 c0                	test   %eax,%eax
  4022fa:	89 c5                	mov    %eax,%ebp
  4022fc:	0f 84 7e 01 00 00    	je     402480 <main+0x1010>
  402302:	48 8b 0d 0f 20 20 00 	mov    0x20200f(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402309:	ba 1d 00 00 00       	mov    $0x1d,%edx
  40230e:	be 01 00 00 00       	mov    $0x1,%esi
  402313:	bf 3b 3c 40 00       	mov    $0x403c3b,%edi
  402318:	bd 0c 00 00 00       	mov    $0xc,%ebp
  40231d:	e8 3e ec ff ff       	callq  400f60 <fwrite@plt>
  402322:	e9 a1 f1 ff ff       	jmpq   4014c8 <main+0x58>
  402327:	bf a8 38 40 00       	mov    $0x4038a8,%edi
  40232c:	e8 8f ea ff ff       	callq  400dc0 <puts@plt>
  402331:	be 71 3c 40 00       	mov    $0x403c71,%esi
  402336:	bf 74 3c 40 00       	mov    $0x403c74,%edi
  40233b:	e8 d0 ea ff ff       	callq  400e10 <fopen@plt>
  402340:	48 85 c0             	test   %rax,%rax
  402343:	49 89 c4             	mov    %rax,%r12
  402346:	0f 84 f7 09 00 00    	je     402d43 <main+0x18d3>
  40234c:	be 71 3c 40 00       	mov    $0x403c71,%esi
  402351:	bf 7d 3c 40 00       	mov    $0x403c7d,%edi
  402356:	e8 b5 ea ff ff       	callq  400e10 <fopen@plt>
  40235b:	48 85 c0             	test   %rax,%rax
  40235e:	49 89 c5             	mov    %rax,%r13
  402361:	0f 84 0d 0a 00 00    	je     402d74 <main+0x1904>
  402367:	4c 89 e7             	mov    %r12,%rdi
  40236a:	bb 64 00 00 00       	mov    $0x64,%ebx
  40236f:	e8 fc e9 ff ff       	callq  400d70 <fileno@plt>
  402374:	89 c7                	mov    %eax,%edi
  402376:	e8 25 ee ff ff       	callq  4011a0 <getBalance>
  40237b:	4c 89 ef             	mov    %r13,%rdi
  40237e:	49 89 c6             	mov    %rax,%r14
  402381:	e8 ea e9 ff ff       	callq  400d70 <fileno@plt>
  402386:	89 c7                	mov    %eax,%edi
  402388:	e8 13 ee ff ff       	callq  4011a0 <getBalance>
  40238d:	4c 89 f2             	mov    %r14,%rdx
  402390:	48 89 c5             	mov    %rax,%rbp
  402393:	48 89 c6             	mov    %rax,%rsi
  402396:	bf 88 3c 40 00       	mov    $0x403c88,%edi
  40239b:	31 c0                	xor    %eax,%eax
  40239d:	e8 de e9 ff ff       	callq  400d80 <printf@plt>
  4023a2:	48 83 fd 64          	cmp    $0x64,%rbp
  4023a6:	bf 38 39 40 00       	mov    $0x403938,%edi
  4023ab:	48 0f 42 dd          	cmovb  %rbp,%rbx
  4023af:	31 c0                	xor    %eax,%eax
  4023b1:	48 89 de             	mov    %rbx,%rsi
  4023b4:	48 29 dd             	sub    %rbx,%rbp
  4023b7:	4c 01 f3             	add    %r14,%rbx
  4023ba:	e8 c1 e9 ff ff       	callq  400d80 <printf@plt>
  4023bf:	4c 89 e7             	mov    %r12,%rdi
  4023c2:	e8 a9 e9 ff ff       	callq  400d70 <fileno@plt>
  4023c7:	48 89 de             	mov    %rbx,%rsi
  4023ca:	89 c7                	mov    %eax,%edi
  4023cc:	e8 8f ee ff ff       	callq  401260 <setBalance>
  4023d1:	4c 89 ef             	mov    %r13,%rdi
  4023d4:	e8 97 e9 ff ff       	callq  400d70 <fileno@plt>
  4023d9:	48 89 ee             	mov    %rbp,%rsi
  4023dc:	89 c7                	mov    %eax,%edi
  4023de:	e8 7d ee ff ff       	callq  401260 <setBalance>
  4023e3:	48 89 da             	mov    %rbx,%rdx
  4023e6:	48 89 ee             	mov    %rbp,%rsi
  4023e9:	bf 60 39 40 00       	mov    $0x403960,%edi
  4023ee:	31 c0                	xor    %eax,%eax
  4023f0:	e8 8b e9 ff ff       	callq  400d80 <printf@plt>
  4023f5:	4c 89 e7             	mov    %r12,%rdi
  4023f8:	e8 73 e9 ff ff       	callq  400d70 <fileno@plt>
  4023fd:	89 c7                	mov    %eax,%edi
  4023ff:	e8 8c e9 ff ff       	callq  400d90 <close@plt>
  402404:	83 c0 01             	add    $0x1,%eax
  402407:	0f 84 c7 0e 00 00    	je     4032d4 <main+0x1e64>
  40240d:	4c 89 ef             	mov    %r13,%rdi
  402410:	e8 5b e9 ff ff       	callq  400d70 <fileno@plt>
  402415:	89 c7                	mov    %eax,%edi
  402417:	e8 74 e9 ff ff       	callq  400d90 <close@plt>
  40241c:	83 c0 01             	add    $0x1,%eax
  40241f:	0f 85 70 f1 ff ff    	jne    401595 <main+0x125>
  402425:	bf 0b 00 00 00       	mov    $0xb,%edi
  40242a:	e8 91 eb ff ff       	callq  400fc0 <closeAccount.part.3>
  40242f:	48 8b 0d e2 1e 20 00 	mov    0x201ee2(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402436:	ba 1f 00 00 00       	mov    $0x1f,%edx
  40243b:	be 01 00 00 00       	mov    $0x1,%esi
  402440:	bf 50 37 40 00       	mov    $0x403750,%edi
  402445:	e8 16 eb ff ff       	callq  400f60 <fwrite@plt>
  40244a:	e9 d5 fa ff ff       	jmpq   401f24 <main+0xab4>
  40244f:	e8 8c ea ff ff       	callq  400ee0 <__errno_location@plt>
  402454:	8b 38                	mov    (%rax),%edi
  402456:	48 89 c3             	mov    %rax,%rbx
  402459:	e8 32 ea ff ff       	callq  400e90 <strerror@plt>
  40245e:	8b 13                	mov    (%rbx),%edx
  402460:	48 8b 3d b1 1e 20 00 	mov    0x201eb1(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402467:	48 89 c1             	mov    %rax,%rcx
  40246a:	be 30 36 40 00       	mov    $0x403630,%esi
  40246f:	31 c0                	xor    %eax,%eax
  402471:	e8 fa ea ff ff       	callq  400f70 <fprintf@plt>
  402476:	bd 04 00 00 00       	mov    $0x4,%ebp
  40247b:	e9 48 f0 ff ff       	jmpq   4014c8 <main+0x58>
  402480:	4c 89 ff             	mov    %r15,%rdi
  402483:	e8 d8 e9 ff ff       	callq  400e60 <free@plt>
  402488:	4c 89 ef             	mov    %r13,%rdi
  40248b:	48 c7 84 24 30 01 00 	movq   $0x0,0x130(%rsp)
  402492:	00 00 00 00 00 
  402497:	e8 c4 e9 ff ff       	callq  400e60 <free@plt>
  40249c:	89 d8                	mov    %ebx,%eax
  40249e:	4c 89 e7             	mov    %r12,%rdi
  4024a1:	4c 89 f1             	mov    %r14,%rcx
  4024a4:	f2 ae                	repnz scas %es:(%rdi),%al
  4024a6:	48 f7 d1             	not    %rcx
  4024a9:	48 8d 79 05          	lea    0x5(%rcx),%rdi
  4024ad:	48 8d 59 ff          	lea    -0x1(%rcx),%rbx
  4024b1:	e8 4a e9 ff ff       	callq  400e00 <malloc@plt>
  4024b6:	49 89 c5             	mov    %rax,%r13
  4024b9:	48 89 da             	mov    %rbx,%rdx
  4024bc:	4c 89 e6             	mov    %r12,%rsi
  4024bf:	4c 01 eb             	add    %r13,%rbx
  4024c2:	48 89 c7             	mov    %rax,%rdi
  4024c5:	e8 f6 e9 ff ff       	callq  400ec0 <memcpy@plt>
  4024ca:	c7 03 2e 64 61 74    	movl   $0x7461642e,(%rbx)
  4024d0:	66 c7 43 04 61 00    	movw   $0x61,0x4(%rbx)
  4024d6:	4c 89 e7             	mov    %r12,%rdi
  4024d9:	e8 82 e9 ff ff       	callq  400e60 <free@plt>
  4024de:	be 59 3c 40 00       	mov    $0x403c59,%esi
  4024e3:	4c 89 ef             	mov    %r13,%rdi
  4024e6:	e8 25 e9 ff ff       	callq  400e10 <fopen@plt>
  4024eb:	48 85 c0             	test   %rax,%rax
  4024ee:	48 89 c3             	mov    %rax,%rbx
  4024f1:	0f 84 19 08 00 00    	je     402d10 <main+0x18a0>
  4024f7:	48 8d 94 24 90 00 00 	lea    0x90(%rsp),%rdx
  4024fe:	00 
  4024ff:	48 89 c7             	mov    %rax,%rdi
  402502:	be f8 3b 40 00       	mov    $0x403bf8,%esi
  402507:	31 c0                	xor    %eax,%eax
  402509:	c7 84 24 90 00 00 00 	movl   $0x0,0x90(%rsp)
  402510:	00 00 00 00 
  402514:	e8 17 ea ff ff       	callq  400f30 <fscanf@plt>
  402519:	4c 89 ef             	mov    %r13,%rdi
  40251c:	41 89 c4             	mov    %eax,%r12d
  40251f:	e8 3c e9 ff ff       	callq  400e60 <free@plt>
  402524:	41 83 ec 01          	sub    $0x1,%r12d
  402528:	0f 84 32 07 00 00    	je     402c60 <main+0x17f0>
  40252e:	e8 ad e9 ff ff       	callq  400ee0 <__errno_location@plt>
  402533:	8b 38                	mov    (%rax),%edi
  402535:	48 89 c3             	mov    %rax,%rbx
  402538:	bd 06 00 00 00       	mov    $0x6,%ebp
  40253d:	e8 4e e9 ff ff       	callq  400e90 <strerror@plt>
  402542:	8b 13                	mov    (%rbx),%edx
  402544:	48 8b 3d cd 1d 20 00 	mov    0x201dcd(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  40254b:	48 89 c1             	mov    %rax,%rcx
  40254e:	be f0 37 40 00       	mov    $0x4037f0,%esi
  402553:	31 c0                	xor    %eax,%eax
  402555:	e8 16 ea ff ff       	callq  400f70 <fprintf@plt>
  40255a:	e9 69 ef ff ff       	jmpq   4014c8 <main+0x58>
  40255f:	e8 7c e9 ff ff       	callq  400ee0 <__errno_location@plt>
  402564:	8b 38                	mov    (%rax),%edi
  402566:	48 89 c3             	mov    %rax,%rbx
  402569:	e8 22 e9 ff ff       	callq  400e90 <strerror@plt>
  40256e:	8b 13                	mov    (%rbx),%edx
  402570:	48 8b 3d a1 1d 20 00 	mov    0x201da1(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402577:	48 89 c1             	mov    %rax,%rcx
  40257a:	be 60 36 40 00       	mov    $0x403660,%esi
  40257f:	31 c0                	xor    %eax,%eax
  402581:	e8 ea e9 ff ff       	callq  400f70 <fprintf@plt>
  402586:	e9 eb fe ff ff       	jmpq   402476 <main+0x1006>
  40258b:	e8 50 e9 ff ff       	callq  400ee0 <__errno_location@plt>
  402590:	8b 38                	mov    (%rax),%edi
  402592:	48 89 c3             	mov    %rax,%rbx
  402595:	e8 f6 e8 ff ff       	callq  400e90 <strerror@plt>
  40259a:	8b 13                	mov    (%rbx),%edx
  40259c:	48 8b 3d 75 1d 20 00 	mov    0x201d75(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4025a3:	48 89 c1             	mov    %rax,%rcx
  4025a6:	be 98 36 40 00       	mov    $0x403698,%esi
  4025ab:	31 c0                	xor    %eax,%eax
  4025ad:	e8 be e9 ff ff       	callq  400f70 <fprintf@plt>
  4025b2:	e9 bf fe ff ff       	jmpq   402476 <main+0x1006>
  4025b7:	66 0f 6f 05 11 17 00 	movdqa 0x1711(%rip),%xmm0        # 403cd0 <_IO_stdin_used+0x8a0>
  4025be:	00 
  4025bf:	48 b8 62 6f 62 2e 64 	mov    $0x617461642e626f62,%rax
  4025c6:	61 74 61 
  4025c9:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4025d0:	00 
  4025d1:	31 d2                	xor    %edx,%edx
  4025d3:	48 83 c8 ff          	or     $0xffffffffffffffff,%rax
  4025d7:	0f 11 84 24 44 01 00 	movups %xmm0,0x144(%rsp)
  4025de:	00 
  4025df:	4c 8d bc 24 30 01 00 	lea    0x130(%rsp),%r15
  4025e6:	00 
  4025e7:	48 89 94 24 38 01 00 	mov    %rdx,0x138(%rsp)
  4025ee:	00 
  4025ef:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  4025f6:	00 00 00 00 
  4025fa:	41 bc 08 00 00 00    	mov    $0x8,%r12d
  402600:	66 0f 6f 05 d8 16 00 	movdqa 0x16d8(%rip),%xmm0        # 403ce0 <_IO_stdin_used+0x8b0>
  402607:	00 
  402608:	c7 84 24 54 01 00 00 	movl   $0x0,0x154(%rsp)
  40260f:	00 00 00 00 
  402613:	c7 84 24 68 01 00 00 	movl   $0x0,0x168(%rsp)
  40261a:	00 00 00 00 
  40261e:	0f 11 84 24 58 01 00 	movups %xmm0,0x158(%rsp)
  402625:	00 
  402626:	c7 84 24 7c 01 00 00 	movl   $0x0,0x17c(%rsp)
  40262d:	00 00 00 00 
  402631:	c7 84 24 90 01 00 00 	movl   $0x0,0x190(%rsp)
  402638:	00 00 00 00 
  40263c:	66 0f 6f 05 ac 16 00 	movdqa 0x16ac(%rip),%xmm0        # 403cf0 <_IO_stdin_used+0x8c0>
  402643:	00 
  402644:	c7 84 24 a4 01 00 00 	movl   $0x0,0x1a4(%rsp)
  40264b:	00 00 00 00 
  40264f:	c7 84 24 b8 01 00 00 	movl   $0x0,0x1b8(%rsp)
  402656:	00 00 00 00 
  40265a:	0f 11 84 24 6c 01 00 	movups %xmm0,0x16c(%rsp)
  402661:	00 
  402662:	c7 84 24 cc 01 00 00 	movl   $0x0,0x1cc(%rsp)
  402669:	00 00 00 00 
  40266d:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  402674:	00 
  402675:	66 0f 6f 05 83 16 00 	movdqa 0x1683(%rip),%xmm0        # 403d00 <_IO_stdin_used+0x8d0>
  40267c:	00 
  40267d:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  402684:	00 
  402685:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40268c:	00 
  40268d:	0f 29 84 24 80 01 00 	movaps %xmm0,0x180(%rsp)
  402694:	00 
  402695:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
  40269c:	00 
  40269d:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  4026a4:	00 
  4026a5:	66 0f 6f 05 63 16 00 	movdqa 0x1663(%rip),%xmm0        # 403d10 <_IO_stdin_used+0x8e0>
  4026ac:	00 
  4026ad:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
  4026b4:	00 
  4026b5:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  4026bc:	00 
  4026bd:	0f 11 84 24 94 01 00 	movups %xmm0,0x194(%rsp)
  4026c4:	00 
  4026c5:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  4026cc:	00 
  4026cd:	66 0f 6f 05 4b 16 00 	movdqa 0x164b(%rip),%xmm0        # 403d20 <_IO_stdin_used+0x8f0>
  4026d4:	00 
  4026d5:	0f 11 84 24 a8 01 00 	movups %xmm0,0x1a8(%rsp)
  4026dc:	00 
  4026dd:	66 0f 6f 05 4b 16 00 	movdqa 0x164b(%rip),%xmm0        # 403d30 <_IO_stdin_used+0x900>
  4026e4:	00 
  4026e5:	0f 11 84 24 bc 01 00 	movups %xmm0,0x1bc(%rsp)
  4026ec:	00 
  4026ed:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4026f1:	e8 2a e8 ff ff       	callq  400f20 <random@plt>
  4026f6:	49 89 c5             	mov    %rax,%r13
  4026f9:	e8 02 e8 ff ff       	callq  400f00 <getuid@plt>
  4026fe:	89 c0                	mov    %eax,%eax
  402700:	4c 01 e8             	add    %r13,%rax
  402703:	48 99                	cqto   
  402705:	49 f7 fc             	idiv   %r12
  402708:	49 89 d5             	mov    %rdx,%r13
  40270b:	89 d5                	mov    %edx,%ebp
  40270d:	e8 0e e8 ff ff       	callq  400f20 <random@plt>
  402712:	49 89 c6             	mov    %rax,%r14
  402715:	e8 e6 e7 ff ff       	callq  400f00 <getuid@plt>
  40271a:	89 c0                	mov    %eax,%eax
  40271c:	4c 01 f0             	add    %r14,%rax
  40271f:	48 99                	cqto   
  402721:	49 f7 fc             	idiv   %r12
  402724:	48 89 d3             	mov    %rdx,%rbx
  402727:	eb 0d                	jmp    402736 <main+0x12c6>
  402729:	e8 f2 e7 ff ff       	callq  400f20 <random@plt>
  40272e:	48 99                	cqto   
  402730:	49 f7 fc             	idiv   %r12
  402733:	48 89 d3             	mov    %rdx,%rbx
  402736:	39 eb                	cmp    %ebp,%ebx
  402738:	74 ef                	je     402729 <main+0x12b9>
  40273a:	4d 63 ed             	movslq %r13d,%r13
  40273d:	be 23 00 00 00       	mov    $0x23,%esi
  402742:	48 63 db             	movslq %ebx,%rbx
  402745:	49 6b fd 14          	imul   $0x14,%r13,%rdi
  402749:	4c 01 ff             	add    %r15,%rdi
  40274c:	e8 9f ec ff ff       	callq  4013f0 <openAccount>
  402751:	48 6b fb 14          	imul   $0x14,%rbx,%rdi
  402755:	be 24 00 00 00       	mov    $0x24,%esi
  40275a:	41 89 c6             	mov    %eax,%r14d
  40275d:	4c 01 ff             	add    %r15,%rdi
  402760:	e8 8b ec ff ff       	callq  4013f0 <openAccount>
  402765:	44 89 f7             	mov    %r14d,%edi
  402768:	89 c5                	mov    %eax,%ebp
  40276a:	89 04 24             	mov    %eax,(%rsp)
  40276d:	e8 2e ea ff ff       	callq  4011a0 <getBalance>
  402772:	89 ef                	mov    %ebp,%edi
  402774:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402779:	e8 22 ea ff ff       	callq  4011a0 <getBalance>
  40277e:	4a 8b 8c ec 90 00 00 	mov    0x90(%rsp,%r13,8),%rcx
  402785:	00 
  402786:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40278b:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  40278f:	74 13                	je     4027a4 <main+0x1334>
  402791:	39 d1                	cmp    %edx,%ecx
  402793:	0f 85 05 08 00 00    	jne    402f9e <main+0x1b2e>
  402799:	48 63 ca             	movslq %edx,%rcx
  40279c:	4a 89 8c ec 90 00 00 	mov    %rcx,0x90(%rsp,%r13,8)
  4027a3:	00 
  4027a4:	48 8b 8c dc 90 00 00 	mov    0x90(%rsp,%rbx,8),%rcx
  4027ab:	00 
  4027ac:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  4027b0:	74 13                	je     4027c5 <main+0x1355>
  4027b2:	39 c1                	cmp    %eax,%ecx
  4027b4:	0f 85 09 08 00 00    	jne    402fc3 <main+0x1b53>
  4027ba:	48 63 c8             	movslq %eax,%rcx
  4027bd:	48 89 8c dc 90 00 00 	mov    %rcx,0x90(%rsp,%rbx,8)
  4027c4:	00 
  4027c5:	83 fa 09             	cmp    $0x9,%edx
  4027c8:	0f 8e d0 00 00 00    	jle    40289e <main+0x142e>
  4027ce:	81 fa f4 01 00 00    	cmp    $0x1f4,%edx
  4027d4:	b9 28 00 00 00       	mov    $0x28,%ecx
  4027d9:	be 0a 00 00 00       	mov    $0xa,%esi
  4027de:	0f 4e ce             	cmovle %esi,%ecx
  4027e1:	bd 01 00 00 00       	mov    $0x1,%ebp
  4027e6:	01 c8                	add    %ecx,%eax
  4027e8:	29 ca                	sub    %ecx,%edx
  4027ea:	44 89 f7             	mov    %r14d,%edi
  4027ed:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4027f1:	48 63 c2             	movslq %edx,%rax
  4027f4:	48 89 c6             	mov    %rax,%rsi
  4027f7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4027fc:	e8 5f ea ff ff       	callq  401260 <setBalance>
  402801:	48 63 74 24 10       	movslq 0x10(%rsp),%rsi
  402806:	8b 3c 24             	mov    (%rsp),%edi
  402809:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40280e:	e8 4d ea ff ff       	callq  401260 <setBalance>
  402813:	44 89 f7             	mov    %r14d,%edi
  402816:	e8 85 e9 ff ff       	callq  4011a0 <getBalance>
  40281b:	48 39 44 24 08       	cmp    %rax,0x8(%rsp)
  402820:	0f 85 1d 07 00 00    	jne    402f43 <main+0x1ad3>
  402826:	8b 3c 24             	mov    (%rsp),%edi
  402829:	e8 72 e9 ff ff       	callq  4011a0 <getBalance>
  40282e:	48 39 44 24 10       	cmp    %rax,0x10(%rsp)
  402833:	0f 85 e5 06 00 00    	jne    402f1e <main+0x1aae>
  402839:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40283e:	44 89 f7             	mov    %r14d,%edi
  402841:	4a 89 84 ec 90 00 00 	mov    %rax,0x90(%rsp,%r13,8)
  402848:	00 
  402849:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40284e:	48 89 84 dc 90 00 00 	mov    %rax,0x90(%rsp,%rbx,8)
  402855:	00 
  402856:	e8 35 e5 ff ff       	callq  400d90 <close@plt>
  40285b:	83 c0 01             	add    $0x1,%eax
  40285e:	0f 84 bb 0a 00 00    	je     40331f <main+0x1eaf>
  402864:	8b 3c 24             	mov    (%rsp),%edi
  402867:	e8 24 e5 ff ff       	callq  400d90 <close@plt>
  40286c:	83 c0 01             	add    $0x1,%eax
  40286f:	0f 84 a0 0a 00 00    	je     403315 <main+0x1ea5>
  402875:	83 44 24 18 01       	addl   $0x1,0x18(%rsp)
  40287a:	85 ed                	test   %ebp,%ebp
  40287c:	0f 85 6f fe ff ff    	jne    4026f1 <main+0x1281>
  402882:	8b 54 24 18          	mov    0x18(%rsp),%edx
  402886:	48 8b 3d 93 1a 20 00 	mov    0x201a93(%rip),%rdi        # 604320 <stdout@@GLIBC_2.2.5>
  40288d:	be b1 3c 40 00       	mov    $0x403cb1,%esi
  402892:	31 c0                	xor    %eax,%eax
  402894:	e8 d7 e6 ff ff       	callq  400f70 <fprintf@plt>
  402899:	e9 2a ec ff ff       	jmpq   4014c8 <main+0x58>
  40289e:	31 c9                	xor    %ecx,%ecx
  4028a0:	31 ed                	xor    %ebp,%ebp
  4028a2:	e9 3f ff ff ff       	jmpq   4027e6 <main+0x1376>
  4028a7:	4c 89 f2             	mov    %r14,%rdx
  4028aa:	be 1a 3c 40 00       	mov    $0x403c1a,%esi
  4028af:	31 c0                	xor    %eax,%eax
  4028b1:	e8 ba e6 ff ff       	callq  400f70 <fprintf@plt>
  4028b6:	31 ed                	xor    %ebp,%ebp
  4028b8:	e9 0b ec ff ff       	jmpq   4014c8 <main+0x58>
  4028bd:	48 8b 0d 54 1a 20 00 	mov    0x201a54(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  4028c4:	ba 2d 00 00 00       	mov    $0x2d,%edx
  4028c9:	be 01 00 00 00       	mov    $0x1,%esi
  4028ce:	bf b8 39 40 00       	mov    $0x4039b8,%edi
  4028d3:	bd 0e 00 00 00       	mov    $0xe,%ebp
  4028d8:	e8 83 e6 ff ff       	callq  400f60 <fwrite@plt>
  4028dd:	e9 e6 eb ff ff       	jmpq   4014c8 <main+0x58>
  4028e2:	48 8b 0d 2f 1a 20 00 	mov    0x201a2f(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  4028e9:	ba 30 00 00 00       	mov    $0x30,%edx
  4028ee:	be 01 00 00 00       	mov    $0x1,%esi
  4028f3:	bf 18 3a 40 00       	mov    $0x403a18,%edi
  4028f8:	bd 1a 00 00 00       	mov    $0x1a,%ebp
  4028fd:	e8 5e e6 ff ff       	callq  400f60 <fwrite@plt>
  402902:	e9 c1 eb ff ff       	jmpq   4014c8 <main+0x58>
  402907:	48 8b 0d 0a 1a 20 00 	mov    0x201a0a(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  40290e:	ba 2e 00 00 00       	mov    $0x2e,%edx
  402913:	be 01 00 00 00       	mov    $0x1,%esi
  402918:	bf 88 39 40 00       	mov    $0x403988,%edi
  40291d:	bd 0f 00 00 00       	mov    $0xf,%ebp
  402922:	e8 39 e6 ff ff       	callq  400f60 <fwrite@plt>
  402927:	e9 9c eb ff ff       	jmpq   4014c8 <main+0x58>
  40292c:	48 8b 0d e5 19 20 00 	mov    0x2019e5(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402933:	ba 30 00 00 00       	mov    $0x30,%edx
  402938:	be 01 00 00 00       	mov    $0x1,%esi
  40293d:	bf 18 3a 40 00       	mov    $0x403a18,%edi
  402942:	bd 1b 00 00 00       	mov    $0x1b,%ebp
  402947:	e8 14 e6 ff ff       	callq  400f60 <fwrite@plt>
  40294c:	e9 77 eb ff ff       	jmpq   4014c8 <main+0x58>
  402951:	e8 8a e5 ff ff       	callq  400ee0 <__errno_location@plt>
  402956:	8b 38                	mov    (%rax),%edi
  402958:	48 89 c3             	mov    %rax,%rbx
  40295b:	bd 04 00 00 00       	mov    $0x4,%ebp
  402960:	e8 2b e5 ff ff       	callq  400e90 <strerror@plt>
  402965:	8b 13                	mov    (%rbx),%edx
  402967:	48 8b 3d aa 19 20 00 	mov    0x2019aa(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  40296e:	48 89 c1             	mov    %rax,%rcx
  402971:	be 98 36 40 00       	mov    $0x403698,%esi
  402976:	31 c0                	xor    %eax,%eax
  402978:	e8 f3 e5 ff ff       	callq  400f70 <fprintf@plt>
  40297d:	e9 46 eb ff ff       	jmpq   4014c8 <main+0x58>
  402982:	41 83 fc 02          	cmp    $0x2,%r12d
  402986:	0f 84 25 05 00 00    	je     402eb1 <main+0x1a41>
  40298c:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  402990:	ba 0a 00 00 00       	mov    $0xa,%edx
  402995:	31 f6                	xor    %esi,%esi
  402997:	48 8d 9c 24 90 00 00 	lea    0x90(%rsp),%rbx
  40299e:	00 
  40299f:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
  4029a4:	45 31 e4             	xor    %r12d,%r12d
  4029a7:	e8 04 e5 ff ff       	callq  400eb0 <strtol@plt>
  4029ac:	66 0f 6f 05 1c 13 00 	movdqa 0x131c(%rip),%xmm0        # 403cd0 <_IO_stdin_used+0x8a0>
  4029b3:	00 
  4029b4:	49 89 c5             	mov    %rax,%r13
  4029b7:	31 d2                	xor    %edx,%edx
  4029b9:	48 b8 62 6f 62 2e 64 	mov    $0x617461642e626f62,%rax
  4029c0:	61 74 61 
  4029c3:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  4029ca:	00 00 00 00 
  4029ce:	0f 11 84 24 44 01 00 	movups %xmm0,0x144(%rsp)
  4029d5:	00 
  4029d6:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4029dd:	00 
  4029de:	48 89 94 24 38 01 00 	mov    %rdx,0x138(%rsp)
  4029e5:	00 
  4029e6:	49 89 de             	mov    %rbx,%r14
  4029e9:	66 0f 6f 05 ef 12 00 	movdqa 0x12ef(%rip),%xmm0        # 403ce0 <_IO_stdin_used+0x8b0>
  4029f0:	00 
  4029f1:	c7 84 24 54 01 00 00 	movl   $0x0,0x154(%rsp)
  4029f8:	00 00 00 00 
  4029fc:	c7 84 24 68 01 00 00 	movl   $0x0,0x168(%rsp)
  402a03:	00 00 00 00 
  402a07:	0f 11 84 24 58 01 00 	movups %xmm0,0x158(%rsp)
  402a0e:	00 
  402a0f:	c7 84 24 7c 01 00 00 	movl   $0x0,0x17c(%rsp)
  402a16:	00 00 00 00 
  402a1a:	c7 84 24 90 01 00 00 	movl   $0x0,0x190(%rsp)
  402a21:	00 00 00 00 
  402a25:	66 0f 6f 05 c3 12 00 	movdqa 0x12c3(%rip),%xmm0        # 403cf0 <_IO_stdin_used+0x8c0>
  402a2c:	00 
  402a2d:	c7 84 24 a4 01 00 00 	movl   $0x0,0x1a4(%rsp)
  402a34:	00 00 00 00 
  402a38:	c7 84 24 b8 01 00 00 	movl   $0x0,0x1b8(%rsp)
  402a3f:	00 00 00 00 
  402a43:	0f 11 84 24 6c 01 00 	movups %xmm0,0x16c(%rsp)
  402a4a:	00 
  402a4b:	c7 84 24 cc 01 00 00 	movl   $0x0,0x1cc(%rsp)
  402a52:	00 00 00 00 
  402a56:	66 0f 6f 05 a2 12 00 	movdqa 0x12a2(%rip),%xmm0        # 403d00 <_IO_stdin_used+0x8d0>
  402a5d:	00 
  402a5e:	0f 29 84 24 80 01 00 	movaps %xmm0,0x180(%rsp)
  402a65:	00 
  402a66:	66 0f 6f 05 a2 12 00 	movdqa 0x12a2(%rip),%xmm0        # 403d10 <_IO_stdin_used+0x8e0>
  402a6d:	00 
  402a6e:	0f 11 84 24 94 01 00 	movups %xmm0,0x194(%rsp)
  402a75:	00 
  402a76:	66 0f 6f 05 a2 12 00 	movdqa 0x12a2(%rip),%xmm0        # 403d20 <_IO_stdin_used+0x8f0>
  402a7d:	00 
  402a7e:	0f 11 84 24 a8 01 00 	movups %xmm0,0x1a8(%rsp)
  402a85:	00 
  402a86:	66 0f 6f 05 a2 12 00 	movdqa 0x12a2(%rip),%xmm0        # 403d30 <_IO_stdin_used+0x900>
  402a8d:	00 
  402a8e:	0f 11 84 24 bc 01 00 	movups %xmm0,0x1bc(%rsp)
  402a95:	00 
  402a96:	31 f6                	xor    %esi,%esi
  402a98:	4c 89 ff             	mov    %r15,%rdi
  402a9b:	44 89 e5             	mov    %r12d,%ebp
  402a9e:	e8 bd e2 ff ff       	callq  400d60 <pipe2@plt>
  402aa3:	83 c0 01             	add    $0x1,%eax
  402aa6:	0f 84 a7 07 00 00    	je     403253 <main+0x1de3>
  402aac:	31 f6                	xor    %esi,%esi
  402aae:	4c 89 f7             	mov    %r14,%rdi
  402ab1:	e8 aa e2 ff ff       	callq  400d60 <pipe2@plt>
  402ab6:	83 c0 01             	add    $0x1,%eax
  402ab9:	0f 84 63 07 00 00    	je     403222 <main+0x1db2>
  402abf:	e8 8c e4 ff ff       	callq  400f50 <fork@plt>
  402ac4:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  402ac7:	0f 84 24 07 00 00    	je     4031f1 <main+0x1d81>
  402acd:	85 c0                	test   %eax,%eax
  402acf:	0f 84 0b 06 00 00    	je     4030e0 <main+0x1c70>
  402ad5:	41 8b 3f             	mov    (%r15),%edi
  402ad8:	49 83 c4 01          	add    $0x1,%r12
  402adc:	49 83 c7 08          	add    $0x8,%r15
  402ae0:	49 83 c6 08          	add    $0x8,%r14
  402ae4:	e8 a7 e2 ff ff       	callq  400d90 <close@plt>
  402ae9:	41 8b 7e fc          	mov    -0x4(%r14),%edi
  402aed:	e8 9e e2 ff ff       	callq  400d90 <close@plt>
  402af2:	49 83 fc 08          	cmp    $0x8,%r12
  402af6:	75 9e                	jne    402a96 <main+0x1626>
  402af8:	45 31 e4             	xor    %r12d,%r12d
  402afb:	e9 28 01 00 00       	jmpq   402c28 <main+0x17b8>
  402b00:	e8 1b e4 ff ff       	callq  400f20 <random@plt>
  402b05:	b9 28 00 00 00       	mov    $0x28,%ecx
  402b0a:	48 99                	cqto   
  402b0c:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  402b13:	00 
  402b14:	48 f7 f9             	idiv   %rcx
  402b17:	8d 42 ec             	lea    -0x14(%rdx),%eax
  402b1a:	85 c0                	test   %eax,%eax
  402b1c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  402b20:	0f 8e 99 02 00 00    	jle    402dbf <main+0x194f>
  402b26:	48 63 ed             	movslq %ebp,%rbp
  402b29:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  402b2e:	ba 04 00 00 00       	mov    $0x4,%edx
  402b33:	8b 7c ec 44          	mov    0x44(%rsp,%rbp,8),%edi
  402b37:	e8 44 e4 ff ff       	callq  400f80 <write@plt>
  402b3c:	8b bc ec 90 00 00 00 	mov    0x90(%rsp,%rbp,8),%edi
  402b43:	48 8d 74 24 3c       	lea    0x3c(%rsp),%rsi
  402b48:	ba 04 00 00 00       	mov    $0x4,%edx
  402b4d:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
  402b54:	00 
  402b55:	e8 96 e2 ff ff       	callq  400df0 <read@plt>
  402b5a:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
  402b5e:	3b 44 24 2c          	cmp    0x2c(%rsp),%eax
  402b62:	0f 8c ad 02 00 00    	jl     402e15 <main+0x19a5>
  402b68:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  402b6c:	4d 63 f6             	movslq %r14d,%r14
  402b6f:	42 8b 7c f4 44       	mov    0x44(%rsp,%r14,8),%edi
  402b74:	48 8d 74 24 2c       	lea    0x2c(%rsp),%rsi
  402b79:	f7 d8                	neg    %eax
  402b7b:	ba 04 00 00 00       	mov    $0x4,%edx
  402b80:	89 44 24 34          	mov    %eax,0x34(%rsp)
  402b84:	e8 f7 e3 ff ff       	callq  400f80 <write@plt>
  402b89:	8b 7c ec 44          	mov    0x44(%rsp,%rbp,8),%edi
  402b8d:	48 8d 74 24 34       	lea    0x34(%rsp),%rsi
  402b92:	ba 04 00 00 00       	mov    $0x4,%edx
  402b97:	e8 e4 e3 ff ff       	callq  400f80 <write@plt>
  402b9c:	42 8b bc f4 90 00 00 	mov    0x90(%rsp,%r14,8),%edi
  402ba3:	00 
  402ba4:	48 8d 74 24 38       	lea    0x38(%rsp),%rsi
  402ba9:	ba 04 00 00 00       	mov    $0x4,%edx
  402bae:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
  402bb5:	00 
  402bb6:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
  402bbd:	00 
  402bbe:	e8 2d e2 ff ff       	callq  400df0 <read@plt>
  402bc3:	8b bc ec 90 00 00 00 	mov    0x90(%rsp,%rbp,8),%edi
  402bca:	48 8d 74 24 3c       	lea    0x3c(%rsp),%rsi
  402bcf:	ba 04 00 00 00       	mov    $0x4,%edx
  402bd4:	e8 17 e2 ff ff       	callq  400df0 <read@plt>
  402bd9:	48 6b c5 14          	imul   $0x14,%rbp,%rax
  402bdd:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
  402be1:	48 8d b4 24 30 01 00 	lea    0x130(%rsp),%rsi
  402be8:	00 
  402be9:	49 6b d6 14          	imul   $0x14,%r14,%rdx
  402bed:	48 01 f0             	add    %rsi,%rax
  402bf0:	48 01 f2             	add    %rsi,%rdx
  402bf3:	85 c9                	test   %ecx,%ecx
  402bf5:	0f 8e aa 01 00 00    	jle    402da5 <main+0x1935>
  402bfb:	48 83 ec 08          	sub    $0x8,%rsp
  402bff:	49 89 d1             	mov    %rdx,%r9
  402c02:	48 89 c2             	mov    %rax,%rdx
  402c05:	8b 74 24 40          	mov    0x40(%rsp),%esi
  402c09:	56                   	push   %rsi
  402c0a:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
  402c0f:	48 8b 3d 0a 17 20 00 	mov    0x20170a(%rip),%rdi        # 604320 <stdout@@GLIBC_2.2.5>
  402c16:	be f8 3a 40 00       	mov    $0x403af8,%esi
  402c1b:	31 c0                	xor    %eax,%eax
  402c1d:	e8 4e e3 ff ff       	callq  400f70 <fprintf@plt>
  402c22:	58                   	pop    %rax
  402c23:	5a                   	pop    %rdx
  402c24:	41 83 c4 01          	add    $0x1,%r12d
  402c28:	45 39 ec             	cmp    %r13d,%r12d
  402c2b:	0f 8d f0 01 00 00    	jge    402e21 <main+0x19b1>
  402c31:	e8 ea e2 ff ff       	callq  400f20 <random@plt>
  402c36:	41 bf 07 00 00 00    	mov    $0x7,%r15d
  402c3c:	48 99                	cqto   
  402c3e:	49 f7 ff             	idiv   %r15
  402c41:	49 89 d6             	mov    %rdx,%r14
  402c44:	e8 d7 e2 ff ff       	callq  400f20 <random@plt>
  402c49:	48 99                	cqto   
  402c4b:	49 f7 ff             	idiv   %r15
  402c4e:	41 39 d6             	cmp    %edx,%r14d
  402c51:	48 89 d5             	mov    %rdx,%rbp
  402c54:	0f 85 a6 fe ff ff    	jne    402b00 <main+0x1690>
  402c5a:	41 83 ec 01          	sub    $0x1,%r12d
  402c5e:	eb c4                	jmp    402c24 <main+0x17b4>
  402c60:	8b 94 24 90 00 00 00 	mov    0x90(%rsp),%edx
  402c67:	48 8b 3d b2 16 20 00 	mov    0x2016b2(%rip),%rdi        # 604320 <stdout@@GLIBC_2.2.5>
  402c6e:	83 fa 7d             	cmp    $0x7d,%edx
  402c71:	0f 84 16 03 00 00    	je     402f8d <main+0x1b1d>
  402c77:	be 18 38 40 00       	mov    $0x403818,%esi
  402c7c:	31 c0                	xor    %eax,%eax
  402c7e:	e8 ed e2 ff ff       	callq  400f70 <fprintf@plt>
  402c83:	8b 94 24 90 00 00 00 	mov    0x90(%rsp),%edx
  402c8a:	48 8b 3d 8f 16 20 00 	mov    0x20168f(%rip),%rdi        # 604320 <stdout@@GLIBC_2.2.5>
  402c91:	be 50 38 40 00       	mov    $0x403850,%esi
  402c96:	31 c0                	xor    %eax,%eax
  402c98:	e8 d3 e2 ff ff       	callq  400f70 <fprintf@plt>
  402c9d:	48 89 df             	mov    %rbx,%rdi
  402ca0:	e8 6b e2 ff ff       	callq  400f10 <fclose@plt>
  402ca5:	83 c0 01             	add    $0x1,%eax
  402ca8:	0f 85 1a e8 ff ff    	jne    4014c8 <main+0x58>
  402cae:	e8 2d e2 ff ff       	callq  400ee0 <__errno_location@plt>
  402cb3:	8b 38                	mov    (%rax),%edi
  402cb5:	48 89 c3             	mov    %rax,%rbx
  402cb8:	bd 09 00 00 00       	mov    $0x9,%ebp
  402cbd:	e8 ce e1 ff ff       	callq  400e90 <strerror@plt>
  402cc2:	8b 13                	mov    (%rbx),%edx
  402cc4:	48 8b 3d 4d 16 20 00 	mov    0x20164d(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402ccb:	48 89 c1             	mov    %rax,%rcx
  402cce:	be 80 38 40 00       	mov    $0x403880,%esi
  402cd3:	31 c0                	xor    %eax,%eax
  402cd5:	e8 96 e2 ff ff       	callq  400f70 <fprintf@plt>
  402cda:	e9 e9 e7 ff ff       	jmpq   4014c8 <main+0x58>
  402cdf:	e8 fc e1 ff ff       	callq  400ee0 <__errno_location@plt>
  402ce4:	8b 38                	mov    (%rax),%edi
  402ce6:	48 89 c3             	mov    %rax,%rbx
  402ce9:	bd dc 05 00 00       	mov    $0x5dc,%ebp
  402cee:	e8 9d e1 ff ff       	callq  400e90 <strerror@plt>
  402cf3:	8b 13                	mov    (%rbx),%edx
  402cf5:	48 8b 3d 1c 16 20 00 	mov    0x20161c(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402cfc:	48 89 c1             	mov    %rax,%rcx
  402cff:	be f8 36 40 00       	mov    $0x4036f8,%esi
  402d04:	31 c0                	xor    %eax,%eax
  402d06:	e8 65 e2 ff ff       	callq  400f70 <fprintf@plt>
  402d0b:	e9 b8 e7 ff ff       	jmpq   4014c8 <main+0x58>
  402d10:	e8 cb e1 ff ff       	callq  400ee0 <__errno_location@plt>
  402d15:	8b 38                	mov    (%rax),%edi
  402d17:	48 89 c3             	mov    %rax,%rbx
  402d1a:	bd 05 00 00 00       	mov    $0x5,%ebp
  402d1f:	e8 6c e1 ff ff       	callq  400e90 <strerror@plt>
  402d24:	8b 0b                	mov    (%rbx),%ecx
  402d26:	48 8b 3d eb 15 20 00 	mov    0x2015eb(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402d2d:	49 89 c0             	mov    %rax,%r8
  402d30:	31 d2                	xor    %edx,%edx
  402d32:	be c8 37 40 00       	mov    $0x4037c8,%esi
  402d37:	31 c0                	xor    %eax,%eax
  402d39:	e8 32 e2 ff ff       	callq  400f70 <fprintf@plt>
  402d3e:	e9 85 e7 ff ff       	jmpq   4014c8 <main+0x58>
  402d43:	e8 98 e1 ff ff       	callq  400ee0 <__errno_location@plt>
  402d48:	8b 38                	mov    (%rax),%edi
  402d4a:	48 89 c3             	mov    %rax,%rbx
  402d4d:	bd 07 00 00 00       	mov    $0x7,%ebp
  402d52:	e8 39 e1 ff ff       	callq  400e90 <strerror@plt>
  402d57:	8b 13                	mov    (%rbx),%edx
  402d59:	48 8b 3d b8 15 20 00 	mov    0x2015b8(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402d60:	48 89 c1             	mov    %rax,%rcx
  402d63:	be d0 38 40 00       	mov    $0x4038d0,%esi
  402d68:	31 c0                	xor    %eax,%eax
  402d6a:	e8 01 e2 ff ff       	callq  400f70 <fprintf@plt>
  402d6f:	e9 54 e7 ff ff       	jmpq   4014c8 <main+0x58>
  402d74:	e8 67 e1 ff ff       	callq  400ee0 <__errno_location@plt>
  402d79:	8b 38                	mov    (%rax),%edi
  402d7b:	48 89 c3             	mov    %rax,%rbx
  402d7e:	bd 08 00 00 00       	mov    $0x8,%ebp
  402d83:	e8 08 e1 ff ff       	callq  400e90 <strerror@plt>
  402d88:	8b 13                	mov    (%rbx),%edx
  402d8a:	48 8b 3d 87 15 20 00 	mov    0x201587(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402d91:	48 89 c1             	mov    %rax,%rcx
  402d94:	be 00 39 40 00       	mov    $0x403900,%esi
  402d99:	31 c0                	xor    %eax,%eax
  402d9b:	e8 d0 e1 ff ff       	callq  400f70 <fprintf@plt>
  402da0:	e9 23 e7 ff ff       	jmpq   4014c8 <main+0x58>
  402da5:	48 83 ec 08          	sub    $0x8,%rsp
  402da9:	49 89 c1             	mov    %rax,%r9
  402dac:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
  402db0:	51                   	push   %rcx
  402db1:	44 8b 44 24 48       	mov    0x48(%rsp),%r8d
  402db6:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
  402dba:	e9 50 fe ff ff       	jmpq   402c0f <main+0x179f>
  402dbf:	4d 63 f6             	movslq %r14d,%r14
  402dc2:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  402dc7:	ba 04 00 00 00       	mov    $0x4,%edx
  402dcc:	42 8b 7c f4 44       	mov    0x44(%rsp,%r14,8),%edi
  402dd1:	e8 aa e1 ff ff       	callq  400f80 <write@plt>
  402dd6:	42 8b bc f4 90 00 00 	mov    0x90(%rsp,%r14,8),%edi
  402ddd:	00 
  402dde:	48 8d 74 24 3c       	lea    0x3c(%rsp),%rsi
  402de3:	ba 04 00 00 00       	mov    $0x4,%edx
  402de8:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
  402def:	00 
  402df0:	e8 fb df ff ff       	callq  400df0 <read@plt>
  402df5:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  402df9:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
  402dfd:	89 c1                	mov    %eax,%ecx
  402dff:	f7 d9                	neg    %ecx
  402e01:	39 d1                	cmp    %edx,%ecx
  402e03:	7e 08                	jle    402e0d <main+0x199d>
  402e05:	89 d0                	mov    %edx,%eax
  402e07:	f7 d8                	neg    %eax
  402e09:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  402e0d:	48 63 ed             	movslq %ebp,%rbp
  402e10:	e9 5a fd ff ff       	jmpq   402b6f <main+0x16ff>
  402e15:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  402e19:	4d 63 f6             	movslq %r14d,%r14
  402e1c:	e9 4e fd ff ff       	jmpq   402b6f <main+0x16ff>
  402e21:	4c 8d 64 24 44       	lea    0x44(%rsp),%r12
  402e26:	31 ed                	xor    %ebp,%ebp
  402e28:	41 8b 3c 2c          	mov    (%r12,%rbp,1),%edi
  402e2c:	e8 5f df ff ff       	callq  400d90 <close@plt>
  402e31:	8b 3c 2b             	mov    (%rbx,%rbp,1),%edi
  402e34:	48 83 c5 08          	add    $0x8,%rbp
  402e38:	e8 53 df ff ff       	callq  400d90 <close@plt>
  402e3d:	48 83 fd 40          	cmp    $0x40,%rbp
  402e41:	75 e5                	jne    402e28 <main+0x19b8>
  402e43:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
  402e4a:	00 
  402e4b:	48 8d 7c 24 3c       	lea    0x3c(%rsp),%rdi
  402e50:	e8 4b df ff ff       	callq  400da0 <wait@plt>
  402e55:	83 c0 01             	add    $0x1,%eax
  402e58:	75 f1                	jne    402e4b <main+0x19db>
  402e5a:	48 8b 0d b7 14 20 00 	mov    0x2014b7(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402e61:	bf 30 3b 40 00       	mov    $0x403b30,%edi
  402e66:	ba 3a 00 00 00       	mov    $0x3a,%edx
  402e6b:	be 01 00 00 00       	mov    $0x1,%esi
  402e70:	31 ed                	xor    %ebp,%ebp
  402e72:	e8 e9 e0 ff ff       	callq  400f60 <fwrite@plt>
  402e77:	e8 64 e0 ff ff       	callq  400ee0 <__errno_location@plt>
  402e7c:	8b 38                	mov    (%rax),%edi
  402e7e:	48 89 c3             	mov    %rax,%rbx
  402e81:	83 ff 0a             	cmp    $0xa,%edi
  402e84:	0f 84 3e e6 ff ff    	je     4014c8 <main+0x58>
  402e8a:	e8 01 e0 ff ff       	callq  400e90 <strerror@plt>
  402e8f:	8b 13                	mov    (%rbx),%edx
  402e91:	48 8b 3d 80 14 20 00 	mov    0x201480(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402e98:	48 89 c1             	mov    %rax,%rcx
  402e9b:	be 70 3b 40 00       	mov    $0x403b70,%esi
  402ea0:	31 c0                	xor    %eax,%eax
  402ea2:	bd 35 00 00 00       	mov    $0x35,%ebp
  402ea7:	e8 c4 e0 ff ff       	callq  400f70 <fprintf@plt>
  402eac:	e9 17 e6 ff ff       	jmpq   4014c8 <main+0x58>
  402eb1:	48 8b 3b             	mov    (%rbx),%rdi
  402eb4:	48 8d b4 24 30 01 00 	lea    0x130(%rsp),%rsi
  402ebb:	00 
  402ebc:	48 c7 84 24 38 01 00 	movq   $0x403cc8,0x138(%rsp)
  402ec3:	00 c8 3c 40 00 
  402ec8:	48 c7 84 24 40 01 00 	movq   $0x403cca,0x140(%rsp)
  402ecf:	00 ca 3c 40 00 
  402ed4:	48 c7 84 24 48 01 00 	movq   $0x0,0x148(%rsp)
  402edb:	00 00 00 00 00 
  402ee0:	bd 2e 00 00 00       	mov    $0x2e,%ebp
  402ee5:	48 89 bc 24 30 01 00 	mov    %rdi,0x130(%rsp)
  402eec:	00 
  402eed:	e8 de de ff ff       	callq  400dd0 <execvp@plt>
  402ef2:	e8 e9 df ff ff       	callq  400ee0 <__errno_location@plt>
  402ef7:	8b 38                	mov    (%rax),%edi
  402ef9:	48 89 c3             	mov    %rax,%rbx
  402efc:	e8 8f df ff ff       	callq  400e90 <strerror@plt>
  402f01:	8b 13                	mov    (%rbx),%edx
  402f03:	48 8b 3d 0e 14 20 00 	mov    0x20140e(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  402f0a:	48 89 c1             	mov    %rax,%rcx
  402f0d:	be 50 3a 40 00       	mov    $0x403a50,%esi
  402f12:	31 c0                	xor    %eax,%eax
  402f14:	e8 57 e0 ff ff       	callq  400f70 <fprintf@plt>
  402f19:	e9 aa e5 ff ff       	jmpq   4014c8 <main+0x58>
  402f1e:	48 8b 0d f3 13 20 00 	mov    0x2013f3(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402f25:	ba 30 00 00 00       	mov    $0x30,%edx
  402f2a:	be 01 00 00 00       	mov    $0x1,%esi
  402f2f:	bf 18 3a 40 00       	mov    $0x403a18,%edi
  402f34:	bd 21 00 00 00       	mov    $0x21,%ebp
  402f39:	e8 22 e0 ff ff       	callq  400f60 <fwrite@plt>
  402f3e:	e9 85 e5 ff ff       	jmpq   4014c8 <main+0x58>
  402f43:	48 8b 0d ce 13 20 00 	mov    0x2013ce(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402f4a:	ba 30 00 00 00       	mov    $0x30,%edx
  402f4f:	be 01 00 00 00       	mov    $0x1,%esi
  402f54:	bf 18 3a 40 00       	mov    $0x403a18,%edi
  402f59:	bd 1c 00 00 00       	mov    $0x1c,%ebp
  402f5e:	e8 fd df ff ff       	callq  400f60 <fwrite@plt>
  402f63:	e9 60 e5 ff ff       	jmpq   4014c8 <main+0x58>
  402f68:	48 8b 0d a9 13 20 00 	mov    0x2013a9(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402f6f:	ba 2a 00 00 00       	mov    $0x2a,%edx
  402f74:	be 01 00 00 00       	mov    $0x1,%esi
  402f79:	bf e8 39 40 00       	mov    $0x4039e8,%edi
  402f7e:	bd 10 00 00 00       	mov    $0x10,%ebp
  402f83:	e8 d8 df ff ff       	callq  400f60 <fwrite@plt>
  402f88:	e9 3b e5 ff ff       	jmpq   4014c8 <main+0x58>
  402f8d:	be 5b 3c 40 00       	mov    $0x403c5b,%esi
  402f92:	31 c0                	xor    %eax,%eax
  402f94:	e8 d7 df ff ff       	callq  400f70 <fprintf@plt>
  402f99:	e9 ff fc ff ff       	jmpq   402c9d <main+0x182d>
  402f9e:	48 8b 0d 73 13 20 00 	mov    0x201373(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402fa5:	ba 30 00 00 00       	mov    $0x30,%edx
  402faa:	be 01 00 00 00       	mov    $0x1,%esi
  402faf:	bf 18 3a 40 00       	mov    $0x403a18,%edi
  402fb4:	bd 20 00 00 00       	mov    $0x20,%ebp
  402fb9:	e8 a2 df ff ff       	callq  400f60 <fwrite@plt>
  402fbe:	e9 05 e5 ff ff       	jmpq   4014c8 <main+0x58>
  402fc3:	48 8b 0d 4e 13 20 00 	mov    0x20134e(%rip),%rcx        # 604318 <stderr@@GLIBC_2.2.5>
  402fca:	ba 30 00 00 00       	mov    $0x30,%edx
  402fcf:	be 01 00 00 00       	mov    $0x1,%esi
  402fd4:	bf 18 3a 40 00       	mov    $0x403a18,%edi
  402fd9:	bd 1f 00 00 00       	mov    $0x1f,%ebp
  402fde:	e8 7d df ff ff       	callq  400f60 <fwrite@plt>
  402fe3:	e9 e0 e4 ff ff       	jmpq   4014c8 <main+0x58>
  402fe8:	e8 f3 de ff ff       	callq  400ee0 <__errno_location@plt>
  402fed:	8b 38                	mov    (%rax),%edi
  402fef:	48 89 c3             	mov    %rax,%rbx
  402ff2:	bd 30 00 00 00       	mov    $0x30,%ebp
  402ff7:	e8 94 de ff ff       	callq  400e90 <strerror@plt>
  402ffc:	8b 13                	mov    (%rbx),%edx
  402ffe:	48 8b 3d 13 13 20 00 	mov    0x201313(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  403005:	48 89 c1             	mov    %rax,%rcx
  403008:	be 98 3b 40 00       	mov    $0x403b98,%esi
  40300d:	31 c0                	xor    %eax,%eax
  40300f:	e8 5c df ff ff       	callq  400f70 <fprintf@plt>
  403014:	e9 af e4 ff ff       	jmpq   4014c8 <main+0x58>
  403019:	31 f6                	xor    %esi,%esi
  40301b:	bf 11 00 00 00       	mov    $0x11,%edi
  403020:	bd 07 00 00 00       	mov    $0x7,%ebp
  403025:	e8 a6 de ff ff       	callq  400ed0 <signal@plt>
  40302a:	48 8b 03             	mov    (%rbx),%rax
  40302d:	48 c7 84 24 40 01 00 	movq   $0x0,0x140(%rsp)
  403034:	00 00 00 00 00 
  403039:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  403040:	00 
  403041:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  403048:	00 
  403049:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  403050:	00 
  403051:	e8 ca de ff ff       	callq  400f20 <random@plt>
  403056:	48 99                	cqto   
  403058:	48 f7 fd             	idiv   %rbp
  40305b:	48 83 fa 02          	cmp    $0x2,%rdx
  40305f:	74 f0                	je     403051 <main+0x1be1>
  403061:	48 8b 3b             	mov    (%rbx),%rdi
  403064:	48 8d b4 24 30 01 00 	lea    0x130(%rsp),%rsi
  40306b:	00 
  40306c:	00 94 24 90 00 00 00 	add    %dl,0x90(%rsp)
  403073:	bd 34 00 00 00       	mov    $0x34,%ebp
  403078:	e8 53 dd ff ff       	callq  400dd0 <execvp@plt>
  40307d:	e8 5e de ff ff       	callq  400ee0 <__errno_location@plt>
  403082:	8b 38                	mov    (%rax),%edi
  403084:	48 89 c3             	mov    %rax,%rbx
  403087:	e8 04 de ff ff       	callq  400e90 <strerror@plt>
  40308c:	8b 13                	mov    (%rbx),%edx
  40308e:	48 8b 3d 83 12 20 00 	mov    0x201283(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  403095:	48 89 c1             	mov    %rax,%rcx
  403098:	be 50 3a 40 00       	mov    $0x403a50,%esi
  40309d:	31 c0                	xor    %eax,%eax
  40309f:	e8 cc de ff ff       	callq  400f70 <fprintf@plt>
  4030a4:	e9 1f e4 ff ff       	jmpq   4014c8 <main+0x58>
  4030a9:	8b 05 89 12 20 00    	mov    0x201289(%rip),%eax        # 604338 <reaped>
  4030af:	31 ed                	xor    %ebp,%ebp
  4030b1:	44 39 e0             	cmp    %r12d,%eax
  4030b4:	0f 84 0e e4 ff ff    	je     4014c8 <main+0x58>
  4030ba:	8b 0d 78 12 20 00    	mov    0x201278(%rip),%ecx        # 604338 <reaped>
  4030c0:	48 8b 3d 51 12 20 00 	mov    0x201251(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4030c7:	44 89 e2             	mov    %r12d,%edx
  4030ca:	be b8 3b 40 00       	mov    $0x403bb8,%esi
  4030cf:	31 c0                	xor    %eax,%eax
  4030d1:	bd 37 00 00 00       	mov    $0x37,%ebp
  4030d6:	e8 95 de ff ff       	callq  400f70 <fprintf@plt>
  4030db:	e9 e8 e3 ff ff       	jmpq   4014c8 <main+0x58>
  4030e0:	45 31 ed             	xor    %r13d,%r13d
  4030e3:	49 63 dc             	movslq %r12d,%rbx
  4030e6:	eb 15                	jmp    4030fd <main+0x1c8d>
  4030e8:	e8 a3 dc ff ff       	callq  400d90 <close@plt>
  4030ed:	8b bc dc 90 00 00 00 	mov    0x90(%rsp,%rbx,8),%edi
  4030f4:	41 83 c5 01          	add    $0x1,%r13d
  4030f8:	e8 93 dc ff ff       	callq  400d90 <close@plt>
  4030fd:	41 39 ed             	cmp    %ebp,%r13d
  403100:	8b 7c dc 44          	mov    0x44(%rsp,%rbx,8),%edi
  403104:	75 e2                	jne    4030e8 <main+0x1c78>
  403106:	e8 85 dc ff ff       	callq  400d90 <close@plt>
  40310b:	8b bc dc 90 00 00 00 	mov    0x90(%rsp,%rbx,8),%edi
  403112:	e8 79 dc ff ff       	callq  400d90 <close@plt>
  403117:	49 6b c4 14          	imul   $0x14,%r12,%rax
  40311b:	8d 75 64             	lea    0x64(%rbp),%esi
  40311e:	4c 8d b4 04 30 01 00 	lea    0x130(%rsp,%rax,1),%r14
  403125:	00 
  403126:	4c 89 f7             	mov    %r14,%rdi
  403129:	e8 c2 e2 ff ff       	callq  4013f0 <openAccount>
  40312e:	89 c7                	mov    %eax,%edi
  403130:	41 89 c5             	mov    %eax,%r13d
  403133:	e8 68 e0 ff ff       	callq  4011a0 <getBalance>
  403138:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
  40313f:	00 
  403140:	49 89 c4             	mov    %rax,%r12
  403143:	eb 3c                	jmp    403181 <main+0x1d11>
  403145:	48 63 54 24 38       	movslq 0x38(%rsp),%rdx
  40314a:	49 01 d4             	add    %rdx,%r12
  40314d:	48 89 d0             	mov    %rdx,%rax
  403150:	79 0a                	jns    40315c <main+0x1cec>
  403152:	44 29 e0             	sub    %r12d,%eax
  403155:	45 31 e4             	xor    %r12d,%r12d
  403158:	89 44 24 38          	mov    %eax,0x38(%rsp)
  40315c:	8b bc dc 94 00 00 00 	mov    0x94(%rsp,%rbx,8),%edi
  403163:	48 8d 74 24 3c       	lea    0x3c(%rsp),%rsi
  403168:	ba 04 00 00 00       	mov    $0x4,%edx
  40316d:	44 89 64 24 3c       	mov    %r12d,0x3c(%rsp)
  403172:	e8 09 de ff ff       	callq  400f80 <write@plt>
  403177:	48 83 f8 04          	cmp    $0x4,%rax
  40317b:	0f 85 03 01 00 00    	jne    403284 <main+0x1e14>
  403181:	8b 7c dc 40          	mov    0x40(%rsp,%rbx,8),%edi
  403185:	48 8d 74 24 38       	lea    0x38(%rsp),%rsi
  40318a:	ba 04 00 00 00       	mov    $0x4,%edx
  40318f:	e8 5c dc ff ff       	callq  400df0 <read@plt>
  403194:	48 85 c0             	test   %rax,%rax
  403197:	7f ac                	jg     403145 <main+0x1cd5>
  403199:	48 83 c0 01          	add    $0x1,%rax
  40319d:	0f 84 43 01 00 00    	je     4032e6 <main+0x1e76>
  4031a3:	4c 89 e6             	mov    %r12,%rsi
  4031a6:	44 89 ef             	mov    %r13d,%edi
  4031a9:	e8 b2 e0 ff ff       	callq  401260 <setBalance>
  4031ae:	48 8b 3d 63 11 20 00 	mov    0x201163(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4031b5:	4c 89 f2             	mov    %r14,%rdx
  4031b8:	be d0 3a 40 00       	mov    $0x403ad0,%esi
  4031bd:	31 c0                	xor    %eax,%eax
  4031bf:	e8 ac dd ff ff       	callq  400f70 <fprintf@plt>
  4031c4:	44 89 ef             	mov    %r13d,%edi
  4031c7:	e8 c4 db ff ff       	callq  400d90 <close@plt>
  4031cc:	83 c0 01             	add    $0x1,%eax
  4031cf:	0f 84 09 01 00 00    	je     4032de <main+0x1e6e>
  4031d5:	8b 7c dc 40          	mov    0x40(%rsp,%rbx,8),%edi
  4031d9:	e8 b2 db ff ff       	callq  400d90 <close@plt>
  4031de:	8b bc dc 94 00 00 00 	mov    0x94(%rsp,%rbx,8),%edi
  4031e5:	e8 a6 db ff ff       	callq  400d90 <close@plt>
  4031ea:	31 ff                	xor    %edi,%edi
  4031ec:	e8 ef db ff ff       	callq  400de0 <exit@plt>
  4031f1:	e8 ea dc ff ff       	callq  400ee0 <__errno_location@plt>
  4031f6:	8b 38                	mov    (%rax),%edi
  4031f8:	48 89 c3             	mov    %rax,%rbx
  4031fb:	bd 27 00 00 00       	mov    $0x27,%ebp
  403200:	e8 8b dc ff ff       	callq  400e90 <strerror@plt>
  403205:	8b 13                	mov    (%rbx),%edx
  403207:	48 8b 3d 0a 11 20 00 	mov    0x20110a(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  40320e:	48 89 c1             	mov    %rax,%rcx
  403211:	be 70 3a 40 00       	mov    $0x403a70,%esi
  403216:	31 c0                	xor    %eax,%eax
  403218:	e8 53 dd ff ff       	callq  400f70 <fprintf@plt>
  40321d:	e9 a6 e2 ff ff       	jmpq   4014c8 <main+0x58>
  403222:	e8 b9 dc ff ff       	callq  400ee0 <__errno_location@plt>
  403227:	8b 38                	mov    (%rax),%edi
  403229:	48 89 c3             	mov    %rax,%rbx
  40322c:	bd 2f 00 00 00       	mov    $0x2f,%ebp
  403231:	e8 5a dc ff ff       	callq  400e90 <strerror@plt>
  403236:	8b 13                	mov    (%rbx),%edx
  403238:	48 8b 3d d9 10 20 00 	mov    0x2010d9(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  40323f:	48 89 c1             	mov    %rax,%rcx
  403242:	be 70 3a 40 00       	mov    $0x403a70,%esi
  403247:	31 c0                	xor    %eax,%eax
  403249:	e8 22 dd ff ff       	callq  400f70 <fprintf@plt>
  40324e:	e9 75 e2 ff ff       	jmpq   4014c8 <main+0x58>
  403253:	e8 88 dc ff ff       	callq  400ee0 <__errno_location@plt>
  403258:	8b 38                	mov    (%rax),%edi
  40325a:	48 89 c3             	mov    %rax,%rbx
  40325d:	bd 26 00 00 00       	mov    $0x26,%ebp
  403262:	e8 29 dc ff ff       	callq  400e90 <strerror@plt>
  403267:	8b 13                	mov    (%rbx),%edx
  403269:	48 8b 3d a8 10 20 00 	mov    0x2010a8(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  403270:	48 89 c1             	mov    %rax,%rcx
  403273:	be 70 3a 40 00       	mov    $0x403a70,%esi
  403278:	31 c0                	xor    %eax,%eax
  40327a:	e8 f1 dc ff ff       	callq  400f70 <fprintf@plt>
  40327f:	e9 44 e2 ff ff       	jmpq   4014c8 <main+0x58>
  403284:	e8 57 dc ff ff       	callq  400ee0 <__errno_location@plt>
  403289:	8b 38                	mov    (%rax),%edi
  40328b:	48 89 c3             	mov    %rax,%rbx
  40328e:	81 c5 82 00 00 00    	add    $0x82,%ebp
  403294:	e8 f7 db ff ff       	callq  400e90 <strerror@plt>
  403299:	8b 13                	mov    (%rbx),%edx
  40329b:	48 8b 3d 76 10 20 00 	mov    0x201076(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  4032a2:	48 89 c1             	mov    %rax,%rcx
  4032a5:	be a0 3a 40 00       	mov    $0x403aa0,%esi
  4032aa:	31 c0                	xor    %eax,%eax
  4032ac:	e8 bf dc ff ff       	callq  400f70 <fprintf@plt>
  4032b1:	e9 12 e2 ff ff       	jmpq   4014c8 <main+0x58>
  4032b6:	bf 18 00 00 00       	mov    $0x18,%edi
  4032bb:	e8 00 dd ff ff       	callq  400fc0 <closeAccount.part.3>
  4032c0:	bf 19 00 00 00       	mov    $0x19,%edi
  4032c5:	e8 f6 dc ff ff       	callq  400fc0 <closeAccount.part.3>
  4032ca:	bf 0d 00 00 00       	mov    $0xd,%edi
  4032cf:	e8 ec dc ff ff       	callq  400fc0 <closeAccount.part.3>
  4032d4:	bf 0a 00 00 00       	mov    $0xa,%edi
  4032d9:	e8 e2 dc ff ff       	callq  400fc0 <closeAccount.part.3>
  4032de:	8d 7d 6e             	lea    0x6e(%rbp),%edi
  4032e1:	e8 da dc ff ff       	callq  400fc0 <closeAccount.part.3>
  4032e6:	e8 f5 db ff ff       	callq  400ee0 <__errno_location@plt>
  4032eb:	8b 38                	mov    (%rax),%edi
  4032ed:	48 89 c3             	mov    %rax,%rbx
  4032f0:	83 c5 78             	add    $0x78,%ebp
  4032f3:	e8 98 db ff ff       	callq  400e90 <strerror@plt>
  4032f8:	8b 13                	mov    (%rbx),%edx
  4032fa:	48 8b 3d 17 10 20 00 	mov    0x201017(%rip),%rdi        # 604318 <stderr@@GLIBC_2.2.5>
  403301:	48 89 c1             	mov    %rax,%rcx
  403304:	be a0 3a 40 00       	mov    $0x403aa0,%esi
  403309:	31 c0                	xor    %eax,%eax
  40330b:	e8 60 dc ff ff       	callq  400f70 <fprintf@plt>
  403310:	e9 b3 e1 ff ff       	jmpq   4014c8 <main+0x58>
  403315:	bf 1e 00 00 00       	mov    $0x1e,%edi
  40331a:	e8 a1 dc ff ff       	callq  400fc0 <closeAccount.part.3>
  40331f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403324:	e8 97 dc ff ff       	callq  400fc0 <closeAccount.part.3>
  403329:	90                   	nop
  40332a:	90                   	nop
  40332b:	90                   	nop
  40332c:	90                   	nop
  40332d:	90                   	nop
  40332e:	90                   	nop
  40332f:	90                   	nop

0000000000403330 <__libc_csu_fini>:
  403330:	f3 c3                	repz retq 
  403332:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403339:	1f 84 00 00 00 00 00 

0000000000403340 <__libc_csu_init>:
  403340:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  403345:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40334a:	48 8d 2d af 0c 20 00 	lea    0x200caf(%rip),%rbp        # 604000 <__CTOR_LIST__>
  403351:	4c 8d 25 a8 0c 20 00 	lea    0x200ca8(%rip),%r12        # 604000 <__CTOR_LIST__>
  403358:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40335d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  403362:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  403367:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40336c:	48 83 ec 38          	sub    $0x38,%rsp
  403370:	4c 29 e5             	sub    %r12,%rbp
  403373:	41 89 fd             	mov    %edi,%r13d
  403376:	49 89 f6             	mov    %rsi,%r14
  403379:	48 c1 fd 03          	sar    $0x3,%rbp
  40337d:	49 89 d7             	mov    %rdx,%r15
  403380:	e8 b3 d9 ff ff       	callq  400d38 <_init>
  403385:	48 85 ed             	test   %rbp,%rbp
  403388:	74 1c                	je     4033a6 <__libc_csu_init+0x66>
  40338a:	31 db                	xor    %ebx,%ebx
  40338c:	0f 1f 40 00          	nopl   0x0(%rax)
  403390:	4c 89 fa             	mov    %r15,%rdx
  403393:	4c 89 f6             	mov    %r14,%rsi
  403396:	44 89 ef             	mov    %r13d,%edi
  403399:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40339d:	48 83 c3 01          	add    $0x1,%rbx
  4033a1:	48 39 eb             	cmp    %rbp,%rbx
  4033a4:	72 ea                	jb     403390 <__libc_csu_init+0x50>
  4033a6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4033ab:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4033b0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4033b5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4033ba:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4033bf:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4033c4:	48 83 c4 38          	add    $0x38,%rsp
  4033c8:	c3                   	retq   
  4033c9:	90                   	nop
  4033ca:	90                   	nop
  4033cb:	90                   	nop
  4033cc:	90                   	nop
  4033cd:	90                   	nop
  4033ce:	90                   	nop
  4033cf:	90                   	nop

00000000004033d0 <__do_global_ctors_aux>:
  4033d0:	48 8b 05 29 0c 20 00 	mov    0x200c29(%rip),%rax        # 604000 <__CTOR_LIST__>
  4033d7:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4033db:	74 33                	je     403410 <__do_global_ctors_aux+0x40>
  4033dd:	55                   	push   %rbp
  4033de:	48 89 e5             	mov    %rsp,%rbp
  4033e1:	53                   	push   %rbx
  4033e2:	bb 00 40 60 00       	mov    $0x604000,%ebx
  4033e7:	48 83 ec 08          	sub    $0x8,%rsp
  4033eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4033f0:	48 83 eb 08          	sub    $0x8,%rbx
  4033f4:	ff d0                	callq  *%rax
  4033f6:	48 8b 03             	mov    (%rbx),%rax
  4033f9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4033fd:	75 f1                	jne    4033f0 <__do_global_ctors_aux+0x20>
  4033ff:	48 83 c4 08          	add    $0x8,%rsp
  403403:	5b                   	pop    %rbx
  403404:	5d                   	pop    %rbp
  403405:	c3                   	retq   
  403406:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40340d:	00 00 00 
  403410:	f3 c3                	repz retq 
  403412:	90                   	nop
  403413:	90                   	nop

Disassembly of section .fini:

0000000000403414 <_fini>:
  403414:	48 83 ec 08          	sub    $0x8,%rsp
  403418:	e8 93 dc ff ff       	callq  4010b0 <__do_global_dtors_aux>
  40341d:	48 83 c4 08          	add    $0x8,%rsp
  403421:	c3                   	retq   

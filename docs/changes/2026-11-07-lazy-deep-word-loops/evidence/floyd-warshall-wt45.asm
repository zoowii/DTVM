
/workspace/DTVM/work/pr642/wt-word-live-floyd-warshall/code-2.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	4c 8b 57 08          	mov    0x8(%rdi),%r10
   8:	4d 8b 52 18          	mov    0x18(%r10),%r10
   c:	49 81 c2 80 00 00 00 	add    $0x80,%r10
  13:	4c 3b d4             	cmp    %rsp,%r10
  16:	0f 87 ec 03 00 00    	ja     0x408
  1c:	48 83 ec 70          	sub    $0x70,%rsp
  20:	48 89 5c 24 40       	mov    %rbx,0x40(%rsp)
  25:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
  2a:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
  2f:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
  34:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
  39:	8b b7 40 01 00 00    	mov    0x140(%rdi),%esi
  3f:	49 89 f0             	mov    %rsi,%r8
  42:	41 83 e8 30          	sub    $0x30,%r8d
  46:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  4b:	44 89 87 40 01 00 00 	mov    %r8d,0x140(%rdi)
  52:	48 89 3c 24          	mov    %rdi,(%rsp)
  56:	ba 00 a1 77 00       	mov    $0x77a100,%edx
  5b:	b9 04 00 00 00       	mov    $0x4,%ecx
  60:	48 8b 34 24          	mov    (%rsp),%rsi
  64:	e8 d7 03 00 00       	call   0x440
  69:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  6e:	45 33 c0             	xor    %r8d,%r8d
  71:	4c 8b 0c 24          	mov    (%rsp),%r9
  75:	4d 8b 71 38          	mov    0x38(%r9),%r14
  79:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  7e:	4d 89 c1             	mov    %r8,%r9
  81:	33 ff                	xor    %edi,%edi
  83:	be 01 00 00 00       	mov    $0x1,%esi
  88:	4c 89 c2             	mov    %r8,%rdx
  8b:	4d 89 ca             	mov    %r9,%r10
  8e:	49 89 ff             	mov    %rdi,%r15
  91:	c4 62 23 f6 1d 76 03 	mulx   0x376(%rip),%r11d,%r11d        # 0x410
  98:	00 00 
  9a:	41 c1 eb 03          	shr    $0x3,%r11d
  9e:	45 6b db 0b          	imul   $0xb,%r11d,%r11d
  a2:	45 03 da             	add    %r10d,%r11d
  a5:	c4 e2 7b f6 05 6a 03 	mulx   0x36a(%rip),%eax,%eax        # 0x418
  ac:	00 00 
  ae:	c1 e8 02             	shr    $0x2,%eax
  b1:	6b c0 0d             	imul   $0xd,%eax,%eax
  b4:	41 03 c2             	add    %r10d,%eax
  b7:	c4 62 1b f6 25 60 03 	mulx   0x360(%rip),%r12d,%r12d        # 0x420
  be:	00 00 
  c0:	49 89 d5             	mov    %rdx,%r13
  c3:	45 2b ec             	sub    %r12d,%r13d
  c6:	48 89 d3             	mov    %rdx,%rbx
  c9:	41 d1 ed             	shr    $1,%r13d
  cc:	43 8d 14 2c          	lea    (%r12,%r13,1),%edx
  d0:	c1 ea 02             	shr    $0x2,%edx
  d3:	6b d2 07             	imul   $0x7,%edx,%edx
  d6:	45 8d 24 12          	lea    (%r10,%rdx,1),%r12d
  da:	4c 89 fa             	mov    %r15,%rdx
  dd:	c4 62 13 f6 2d 3a 03 	mulx   0x33a(%rip),%r13d,%r13d        # 0x420
  e4:	00 00 
  e6:	45 2b fd             	sub    %r13d,%r15d
  e9:	41 d1 ef             	shr    $1,%r15d
  ec:	45 03 ef             	add    %r15d,%r13d
  ef:	41 c1 ed 02          	shr    $0x2,%r13d
  f3:	45 6b ed 07          	imul   $0x7,%r13d,%r13d
  f7:	49 89 f7             	mov    %rsi,%r15
  fa:	45 2b fd             	sub    %r13d,%r15d
  fd:	41 bd e7 03 00 00    	mov    $0x3e7,%r13d
 103:	45 85 e4             	test   %r12d,%r12d
 106:	4d 89 ec             	mov    %r13,%r12
 109:	45 0f 45 e7          	cmovne %r15d,%r12d
 10d:	85 c0                	test   %eax,%eax
 10f:	4c 89 e8             	mov    %r13,%rax
 112:	41 0f 45 c4          	cmovne %r12d,%eax
 116:	45 85 db             	test   %r11d,%r11d
 119:	44 0f 45 e8          	cmovne %eax,%r13d
 11d:	44 8d 1c 39          	lea    (%rcx,%rdi,1),%r11d
 121:	47 89 2c 1e          	mov    %r13d,(%r14,%r11,1)
 125:	44 8d 5f 04          	lea    0x4(%rdi),%r11d
 129:	41 03 f0             	add    %r8d,%esi
 12c:	41 03 d0             	add    %r8d,%edx
 12f:	41 81 c2 ff ff ff ff 	add    $0xffffffff,%r10d
 136:	48 89 d8             	mov    %rbx,%rax
 139:	81 c0 01 00 00 00    	add    $0x1,%eax
 13f:	81 ff bc 2b 00 00    	cmp    $0x2bbc,%edi
 145:	0f 84 0e 00 00 00    	je     0x159
 14b:	49 89 d7             	mov    %rdx,%r15
 14e:	4c 89 df             	mov    %r11,%rdi
 151:	48 89 c2             	mov    %rax,%rdx
 154:	e9 38 ff ff ff       	jmp    0x91
 159:	41 8d 40 01          	lea    0x1(%r8),%eax
 15d:	41 81 c1 ff ff ff ff 	add    $0xffffffff,%r9d
 164:	81 c1 c0 2b 00 00    	add    $0x2bc0,%ecx
 16a:	41 81 f8 ef 0a 00 00 	cmp    $0xaef,%r8d
 171:	0f 84 08 00 00 00    	je     0x17f
 177:	49 89 c0             	mov    %rax,%r8
 17a:	e9 02 ff ff ff       	jmp    0x81
 17f:	45 33 c0             	xor    %r8d,%r8d
 182:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
 187:	33 d2                	xor    %edx,%edx
 189:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
 18e:	33 f6                	xor    %esi,%esi
 190:	69 fa c0 2b 00 00    	imul   $0x2bc0,%edx,%edi
 196:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
 19b:	41 03 f9             	add    %r9d,%edi
 19e:	42 8d 3c 87          	lea    (%rdi,%r8,4),%edi
 1a2:	44 8d 0c 31          	lea    (%rcx,%rsi,1),%r9d
 1a6:	47 8b 14 0e          	mov    (%r14,%r9,1),%r10d
 1aa:	44 8d 1c 30          	lea    (%rax,%rsi,1),%r11d
 1ae:	47 8b 1c 1e          	mov    (%r14,%r11,1),%r11d
 1b2:	45 03 1c 3e          	add    (%r14,%rdi,1),%r11d
 1b6:	45 3b da             	cmp    %r10d,%r11d
 1b9:	45 0f 4c d3          	cmovl  %r11d,%r10d
 1bd:	47 89 14 0e          	mov    %r10d,(%r14,%r9,1)
 1c1:	44 8d 4e 04          	lea    0x4(%rsi),%r9d
 1c5:	81 fe bc 2b 00 00    	cmp    $0x2bbc,%esi
 1cb:	0f 84 08 00 00 00    	je     0x1d9
 1d1:	4c 89 ce             	mov    %r9,%rsi
 1d4:	e9 c9 ff ff ff       	jmp    0x1a2
 1d9:	8d 72 01             	lea    0x1(%rdx),%esi
 1dc:	81 c1 c0 2b 00 00    	add    $0x2bc0,%ecx
 1e2:	81 fa ef 0a 00 00    	cmp    $0xaef,%edx
 1e8:	0f 84 08 00 00 00    	je     0x1f6
 1ee:	48 89 f2             	mov    %rsi,%rdx
 1f1:	e9 98 ff ff ff       	jmp    0x18e
 1f6:	41 8d 48 01          	lea    0x1(%r8),%ecx
 1fa:	81 c0 c0 2b 00 00    	add    $0x2bc0,%eax
 200:	41 81 f8 ef 0a 00 00 	cmp    $0xaef,%r8d
 207:	0f 84 08 00 00 00    	je     0x215
 20d:	49 89 c8             	mov    %rcx,%r8
 210:	e9 72 ff ff ff       	jmp    0x187
 215:	41 8b 9e 8c 04 00 00 	mov    0x48c(%r14),%ebx
 21c:	ba 00 04 00 00       	mov    $0x400,%edx
 221:	b9 16 00 00 00       	mov    $0x16,%ecx
 226:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 22c:	48 8b 34 24          	mov    (%rsp),%rsi
 230:	48 8b 3c 24          	mov    (%rsp),%rdi
 234:	49 89 d9             	mov    %rbx,%r9
 237:	e8 e4 3c 00 00       	call   0x3f20
 23c:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
 241:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
 246:	48 89 f1             	mov    %rsi,%rcx
 249:	83 e9 30             	sub    $0x30,%ecx
 24c:	41 c7 44 0e 20 26 04 	movl   $0x426,0x20(%r14,%rcx,1)
 253:	00 00 
 255:	48 89 cb             	mov    %rcx,%rbx
 258:	b9 17 04 00 00       	mov    $0x417,%ecx
 25d:	44 8d 46 f0          	lea    -0x10(%rsi),%r8d
 261:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
 266:	48 8b 34 24          	mov    (%rsp),%rsi
 26a:	48 8b 3c 24          	mov    (%rsp),%rdi
 26e:	e8 8d a9 00 00       	call   0xac00
 273:	33 d2                	xor    %edx,%edx
 275:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 27a:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 27f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 284:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 289:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 28e:	45 33 ed             	xor    %r13d,%r13d
 291:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 296:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 29b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 2a0:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
 2a5:	c4 e2 73 f6 0d 7a 01 	mulx   0x17a(%rip),%ecx,%ecx        # 0x428
 2ac:	00 00 
 2ae:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 2b3:	c1 e9 04             	shr    $0x4,%ecx
 2b6:	6b c9 14             	imul   $0x14,%ecx,%ecx
 2b9:	41 03 cc             	add    %r12d,%ecx
 2bc:	85 c9                	test   %ecx,%ecx
 2be:	0f 85 17 00 00 00    	jne    0x2db
 2c4:	ba 0a 00 00 00       	mov    $0xa,%edx
 2c9:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 2ce:	48 8b 34 24          	mov    (%rsp),%rsi
 2d2:	48 8b 3c 24          	mov    (%rsp),%rdi
 2d6:	e8 a5 4a 00 00       	call   0x4d80
 2db:	43 8d 04 2f          	lea    (%r15,%r13,1),%eax
 2df:	41 8b 04 06          	mov    (%r14,%rax,1),%eax
 2e3:	41 89 44 1e 10       	mov    %eax,0x10(%r14,%rbx,1)
 2e8:	b9 2b 04 00 00       	mov    $0x42b,%ecx
 2ed:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 2f2:	44 8d 40 e0          	lea    -0x20(%rax),%r8d
 2f6:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
 2fb:	48 8b 34 24          	mov    (%rsp),%rsi
 2ff:	48 8b 3c 24          	mov    (%rsp),%rdi
 303:	e8 f8 a8 00 00       	call   0xac00
 308:	41 81 c4 ff ff ff ff 	add    $0xffffffff,%r12d
 30f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 314:	81 c2 01 00 00 00    	add    $0x1,%edx
 31a:	41 8d 4d 04          	lea    0x4(%r13),%ecx
 31e:	41 81 fd bc 2b 00 00 	cmp    $0x2bbc,%r13d
 325:	0f 84 08 00 00 00    	je     0x333
 32b:	49 89 cd             	mov    %rcx,%r13
 32e:	e9 72 ff ff ff       	jmp    0x2a5
 333:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
 338:	41 8d 92 f0 0a 00 00 	lea    0xaf0(%r10),%edx
 33f:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
 344:	45 8d a3 10 f5 ff ff 	lea    -0xaf0(%r11),%r12d
 34b:	41 81 c7 c0 2b 00 00 	add    $0x2bc0,%r15d
 352:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 357:	8d 4e 01             	lea    0x1(%rsi),%ecx
 35a:	81 fe ef 0a 00 00    	cmp    $0xaef,%esi
 360:	0f 84 0f 00 00 00    	je     0x375
 366:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 36b:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
 370:	e9 19 ff ff ff       	jmp    0x28e
 375:	41 c7 04 1e 26 04 00 	movl   $0x426,(%r14,%rbx,1)
 37c:	00 
 37d:	b9 2f 04 00 00       	mov    $0x42f,%ecx
 382:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 387:	49 89 c0             	mov    %rax,%r8
 38a:	41 83 e8 30          	sub    $0x30,%r8d
 38e:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
 393:	48 8b 34 24          	mov    (%rsp),%rsi
 397:	48 8b 3c 24          	mov    (%rsp),%rdi
 39b:	e8 60 a8 00 00       	call   0xac00
 3a0:	ba 40 04 00 00       	mov    $0x440,%edx
 3a5:	b9 16 00 00 00       	mov    $0x16,%ecx
 3aa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 3b0:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
 3b5:	48 8b 34 24          	mov    (%rsp),%rsi
 3b9:	48 8b 3c 24          	mov    (%rsp),%rdi
 3bd:	e8 5e 3b 00 00       	call   0x3f20
 3c2:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 3c7:	48 8b 34 24          	mov    (%rsp),%rsi
 3cb:	48 8b 3c 24          	mov    (%rsp),%rdi
 3cf:	e8 8c 1f 00 00       	call   0x2360
 3d4:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
 3d9:	4c 8b 0c 24          	mov    (%rsp),%r9
 3dd:	41 89 81 40 01 00 00 	mov    %eax,0x140(%r9)
 3e4:	33 c0                	xor    %eax,%eax
 3e6:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
 3eb:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
 3f0:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
 3f5:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
 3fa:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
 3ff:	48 83 c4 70          	add    $0x70,%rsp
 403:	48 89 ec             	mov    %rbp,%rsp
 406:	5d                   	pop    %rbp
 407:	c3                   	ret
 408:	0f 0b                	ud2
 40a:	00 00                	add    %al,(%rax)
 40c:	00 00                	add    %al,(%rax)
 40e:	00 00                	add    %al,(%rax)
 410:	a3 8b 2e ba 00 00 00 	movabs %eax,0x4f00000000ba2e8b
 417:	00 4f 
 419:	ec                   	in     (%dx),%al
 41a:	c4                   	(bad)
 41b:	4e 00 00             	rex.WRX add %r8b,(%rax)
 41e:	00 00                	add    %al,(%rax)
 420:	25 49 92 24 00       	and    $0x249249,%eax
 425:	00 00                	add    %al,(%rax)
 427:	00 cd                	add    %cl,%ch
 429:	cc                   	int3
 42a:	cc                   	int3
 42b:	cc                   	int3
 42c:	00 00                	add    %al,(%rax)
	...

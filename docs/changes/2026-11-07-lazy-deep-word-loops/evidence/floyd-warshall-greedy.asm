
/workspace/DTVM/work/pr642/word-native-floyd-warshall-on/func-2-greedy.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	53                   	push   %rbx
   d:	48 83 ec 48          	sub    $0x48,%rsp
  11:	48 89 fb             	mov    %rdi,%rbx
  14:	31 c0                	xor    %eax,%eax
  16:	31 c0                	xor    %eax,%eax
  18:	31 c0                	xor    %eax,%eax
  1a:	31 c0                	xor    %eax,%eax
  1c:	31 c0                	xor    %eax,%eax
  1e:	31 c0                	xor    %eax,%eax
  20:	31 c0                	xor    %eax,%eax
  22:	31 c0                	xor    %eax,%eax
  24:	31 c0                	xor    %eax,%eax
  26:	31 c0                	xor    %eax,%eax
  28:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
  2f:	ff 
  30:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
  37:	8b 83 78 11 00 00    	mov    0x1178(%rbx),%eax
  3d:	8d 48 d0             	lea    -0x30(%rax),%ecx
  40:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  44:	8d 40 d0             	lea    -0x30(%rax),%eax
  47:	89 83 78 11 00 00    	mov    %eax,0x1178(%rbx)
  4d:	45 31 f6             	xor    %r14d,%r14d
  50:	be 00 a1 77 00       	mov    $0x77a100,%esi
  55:	ba 04 00 00 00       	mov    $0x4,%edx
  5a:	48 89 df             	mov    %rbx,%rdi
  5d:	e8 bc 1f ff ff       	call   0xffffffffffff201e
  62:	4c 89 f1             	mov    %r14,%rcx
  65:	89 c2                	mov    %eax,%edx
  67:	48 89 d8             	mov    %rbx,%rax
  6a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  6e:	4c 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%r8
  75:	89 d0                	mov    %edx,%eax
  77:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  7a:	41 89 d4             	mov    %edx,%r12d
  7d:	45 31 ed             	xor    %r13d,%r13d
  80:	4c 89 65 a8          	mov    %r12,-0x58(%rbp)
  84:	45 31 f6             	xor    %r14d,%r14d
  87:	45 31 e4             	xor    %r12d,%r12d
  8a:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  90:	45 89 ef             	mov    %r13d,%r15d
  93:	48 89 c8             	mov    %rcx,%rax
  96:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  9a:	89 cb                	mov    %ecx,%ebx
  9c:	44 89 e1             	mov    %r12d,%ecx
  9f:	48 69 c9 25 49 92 24 	imul   $0x24924925,%rcx,%rcx
  a6:	48 c1 e9 20          	shr    $0x20,%rcx
  aa:	89 ca                	mov    %ecx,%edx
  ac:	44 89 e1             	mov    %r12d,%ecx
  af:	29 d1                	sub    %edx,%ecx
  b1:	c1 e9 01             	shr    $0x1,%ecx
  b4:	01 d1                	add    %edx,%ecx
  b6:	c1 e9 02             	shr    $0x2,%ecx
  b9:	44 89 fa             	mov    %r15d,%edx
  bc:	48 69 d2 25 49 92 24 	imul   $0x24924925,%rdx,%rdx
  c3:	48 c1 ea 20          	shr    $0x20,%rdx
  c7:	89 d6                	mov    %edx,%esi
  c9:	44 89 fa             	mov    %r15d,%edx
  cc:	29 f2                	sub    %esi,%edx
  ce:	c1 ea 01             	shr    $0x1,%edx
  d1:	01 f2                	add    %esi,%edx
  d3:	c1 ea 02             	shr    $0x2,%edx
  d6:	44 89 fe             	mov    %r15d,%esi
  d9:	48 69 f6 4f ec c4 4e 	imul   $0x4ec4ec4f,%rsi,%rsi
  e0:	48 c1 ee 22          	shr    $0x22,%rsi
  e4:	89 f0                	mov    %esi,%eax
  e6:	89 45 9c             	mov    %eax,-0x64(%rbp)
  e9:	44 89 ff             	mov    %r15d,%edi
  ec:	48 b8 a3 8b 2e ba 00 	movabs $0xba2e8ba3,%rax
  f3:	00 00 00 
  f6:	48 0f af f8          	imul   %rax,%rdi
  fa:	48 c1 ef 23          	shr    $0x23,%rdi
  fe:	41 89 fa             	mov    %edi,%r10d
 101:	4c 8b 4d a8          	mov    -0x58(%rbp),%r9
 105:	45 01 f1             	add    %r14d,%r9d
 108:	6b c9 07             	imul   $0x7,%ecx,%ecx
 10b:	44 89 de             	mov    %r11d,%esi
 10e:	29 ce                	sub    %ecx,%esi
 110:	b9 e7 03 00 00       	mov    $0x3e7,%ecx
 115:	6b d2 07             	imul   $0x7,%edx,%edx
 118:	89 d8                	mov    %ebx,%eax
 11a:	01 d0                	add    %edx,%eax
 11c:	85 c0                	test   %eax,%eax
 11e:	0f 45 ce             	cmovne %esi,%ecx
 121:	b8 e7 03 00 00       	mov    $0x3e7,%eax
 126:	8b 55 9c             	mov    -0x64(%rbp),%edx
 129:	6b d2 0d             	imul   $0xd,%edx,%edx
 12c:	89 de                	mov    %ebx,%esi
 12e:	01 d6                	add    %edx,%esi
 130:	85 f6                	test   %esi,%esi
 132:	0f 45 c1             	cmovne %ecx,%eax
 135:	b9 e7 03 00 00       	mov    $0x3e7,%ecx
 13a:	41 6b d2 0b          	imul   $0xb,%r10d,%edx
 13e:	89 de                	mov    %ebx,%esi
 140:	01 d6                	add    %edx,%esi
 142:	85 f6                	test   %esi,%esi
 144:	0f 45 c8             	cmovne %eax,%ecx
 147:	43 89 0c 08          	mov    %ecx,(%r8,%r9,1)
 14b:	45 01 ec             	add    %r13d,%r12d
 14e:	45 01 eb             	add    %r13d,%r11d
 151:	45 8d 7f 01          	lea    0x1(%r15),%r15d
 155:	8d 5b ff             	lea    -0x1(%rbx),%ebx
 158:	45 8d 76 04          	lea    0x4(%r14),%r14d
 15c:	41 81 fe c0 2b 00 00 	cmp    $0x2bc0,%r14d
 163:	0f 85 33 ff ff ff    	jne    0x9c
 169:	4c 8b 65 a8          	mov    -0x58(%rbp),%r12
 16d:	45 8d a4 24 c0 2b 00 	lea    0x2bc0(%r12),%r12d
 174:	00 
 175:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
 179:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 17c:	45 8d 6d 01          	lea    0x1(%r13),%r13d
 180:	41 81 fd f0 0a 00 00 	cmp    $0xaf0,%r13d
 187:	0f 85 f3 fe ff ff    	jne    0x80
 18d:	45 31 c9             	xor    %r9d,%r9d
 190:	44 8b 65 c4          	mov    -0x3c(%rbp),%r12d
 194:	44 89 e2             	mov    %r12d,%edx
 197:	44 89 e3             	mov    %r12d,%ebx
 19a:	31 f6                	xor    %esi,%esi
 19c:	69 c6 c0 2b 00 00    	imul   $0x2bc0,%esi,%eax
 1a2:	44 89 e7             	mov    %r12d,%edi
 1a5:	01 c7                	add    %eax,%edi
 1a7:	44 89 c8             	mov    %r9d,%eax
 1aa:	c1 e0 02             	shl    $0x2,%eax
 1ad:	01 c7                	add    %eax,%edi
 1af:	45 31 ff             	xor    %r15d,%r15d
 1b2:	89 d9                	mov    %ebx,%ecx
 1b4:	44 01 f9             	add    %r15d,%ecx
 1b7:	41 89 cd             	mov    %ecx,%r13d
 1ba:	47 8b 2c 28          	mov    (%r8,%r13,1),%r13d
 1be:	89 d0                	mov    %edx,%eax
 1c0:	44 01 f8             	add    %r15d,%eax
 1c3:	45 8b 34 00          	mov    (%r8,%rax,1),%r14d
 1c7:	41 8b 04 38          	mov    (%r8,%rdi,1),%eax
 1cb:	41 01 c6             	add    %eax,%r14d
 1ce:	45 39 f5             	cmp    %r14d,%r13d
 1d1:	45 0f 4c f5          	cmovl  %r13d,%r14d
 1d5:	45 89 34 08          	mov    %r14d,(%r8,%rcx,1)
 1d9:	45 8d 7f 04          	lea    0x4(%r15),%r15d
 1dd:	41 81 ff c0 2b 00 00 	cmp    $0x2bc0,%r15d
 1e4:	75 cc                	jne    0x1b2
 1e6:	8d 9b c0 2b 00 00    	lea    0x2bc0(%rbx),%ebx
 1ec:	8d 76 01             	lea    0x1(%rsi),%esi
 1ef:	81 fe f0 0a 00 00    	cmp    $0xaf0,%esi
 1f5:	75 a5                	jne    0x19c
 1f7:	8d 92 c0 2b 00 00    	lea    0x2bc0(%rdx),%edx
 1fd:	45 8d 49 01          	lea    0x1(%r9),%r9d
 201:	41 81 f9 f0 0a 00 00 	cmp    $0xaf0,%r9d
 208:	75 8d                	jne    0x197
 20a:	45 31 ff             	xor    %r15d,%r15d
 20d:	45 8b b0 8c 04 00 00 	mov    0x48c(%r8),%r14d
 214:	be 00 04 00 00       	mov    $0x400,%esi
 219:	ba 16 00 00 00       	mov    $0x16,%edx
 21e:	b9 01 00 00 00       	mov    $0x1,%ecx
 223:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 227:	48 89 df             	mov    %rbx,%rdi
 22a:	45 89 f0             	mov    %r14d,%r8d
 22d:	e8 aa 1e ff ff       	call   0xffffffffffff20dc
 232:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 239:	b9 26 04 00 00       	mov    $0x426,%ecx
 23e:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 242:	48 89 d6             	mov    %rdx,%rsi
 245:	89 4c 30 20          	mov    %ecx,0x20(%rax,%rsi,1)
 249:	ba 17 04 00 00       	mov    $0x417,%edx
 24e:	8d 4e 20             	lea    0x20(%rsi),%ecx
 251:	48 89 df             	mov    %rbx,%rdi
 254:	44 89 f6             	mov    %r14d,%esi
 257:	e8 16 1f ff ff       	call   0xffffffffffff2172
 25c:	4c 89 f9             	mov    %r15,%rcx
 25f:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 266:	44 89 e6             	mov    %r12d,%esi
 269:	45 31 ed             	xor    %r13d,%r13d
 26c:	31 d2                	xor    %edx,%edx
 26e:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
 272:	44 89 65 c4          	mov    %r12d,-0x3c(%rbp)
 276:	45 31 ff             	xor    %r15d,%r15d
 279:	48 89 ca             	mov    %rcx,%rdx
 27c:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
 280:	89 cb                	mov    %ecx,%ebx
 282:	4c 89 e9             	mov    %r13,%rcx
 285:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
 289:	48 89 f1             	mov    %rsi,%rcx
 28c:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
 290:	89 d9                	mov    %ebx,%ecx
 292:	48 ba cd cc cc cc 00 	movabs $0xcccccccd,%rdx
 299:	00 00 00 
 29c:	48 0f af ca          	imul   %rdx,%rcx
 2a0:	48 c1 e9 24          	shr    $0x24,%rcx
 2a4:	89 c9                	mov    %ecx,%ecx
 2a6:	6b c9 14             	imul   $0x14,%ecx,%ecx
 2a9:	44 89 ea             	mov    %r13d,%edx
 2ac:	01 ca                	add    %ecx,%edx
 2ae:	85 d2                	test   %edx,%edx
 2b0:	75 20                	jne    0x2d2
 2b2:	be 0a 00 00 00       	mov    $0xa,%esi
 2b7:	4c 8b 65 d0          	mov    -0x30(%rbp),%r12
 2bb:	4c 89 e7             	mov    %r12,%rdi
 2be:	44 89 f2             	mov    %r14d,%edx
 2c1:	e8 66 1e ff ff       	call   0xffffffffffff212c
 2c6:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
 2ca:	49 8b 84 24 b8 11 00 	mov    0x11b8(%r12),%rax
 2d1:	00 
 2d2:	89 f1                	mov    %esi,%ecx
 2d4:	44 01 f9             	add    %r15d,%ecx
 2d7:	8b 0c 08             	mov    (%rax,%rcx,1),%ecx
 2da:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 2de:	48 89 d6             	mov    %rdx,%rsi
 2e1:	89 4c 30 10          	mov    %ecx,0x10(%rax,%rsi,1)
 2e5:	ba 2b 04 00 00       	mov    $0x42b,%edx
 2ea:	8d 4e 10             	lea    0x10(%rsi),%ecx
 2ed:	4c 8b 65 d0          	mov    -0x30(%rbp),%r12
 2f1:	4c 89 e7             	mov    %r12,%rdi
 2f4:	44 89 f6             	mov    %r14d,%esi
 2f7:	e8 76 1e ff ff       	call   0xffffffffffff2172
 2fc:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
 300:	49 8b 84 24 b8 11 00 	mov    0x11b8(%r12),%rax
 307:	00 
 308:	8d 5b 01             	lea    0x1(%rbx),%ebx
 30b:	45 8d 6d ff          	lea    -0x1(%r13),%r13d
 30f:	45 8d 7f 04          	lea    0x4(%r15),%r15d
 313:	41 81 ff c0 2b 00 00 	cmp    $0x2bc0,%r15d
 31a:	0f 85 70 ff ff ff    	jne    0x290
 320:	8d b6 c0 2b 00 00    	lea    0x2bc0(%rsi),%esi
 326:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
 32a:	8d 89 f0 0a 00 00    	lea    0xaf0(%rcx),%ecx
 330:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
 334:	45 8d ad 10 f5 ff ff 	lea    -0xaf0(%r13),%r13d
 33b:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
 33f:	8d 52 01             	lea    0x1(%rdx),%edx
 342:	81 fa f0 0a 00 00    	cmp    $0xaf0,%edx
 348:	44 8b 65 c4          	mov    -0x3c(%rbp),%r12d
 34c:	0f 85 1c ff ff ff    	jne    0x26e
 352:	b9 26 04 00 00       	mov    $0x426,%ecx
 357:	4c 8b 7d c8          	mov    -0x38(%rbp),%r15
 35b:	42 89 0c 38          	mov    %ecx,(%rax,%r15,1)
 35f:	ba 2f 04 00 00       	mov    $0x42f,%edx
 364:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 368:	48 89 df             	mov    %rbx,%rdi
 36b:	44 89 f6             	mov    %r14d,%esi
 36e:	44 89 f9             	mov    %r15d,%ecx
 371:	e8 fc 1d ff ff       	call   0xffffffffffff2172
 376:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 37d:	be 40 04 00 00       	mov    $0x440,%esi
 382:	ba 16 00 00 00       	mov    $0x16,%edx
 387:	b9 01 00 00 00       	mov    $0x1,%ecx
 38c:	48 89 df             	mov    %rbx,%rdi
 38f:	45 89 f0             	mov    %r14d,%r8d
 392:	e8 45 1d ff ff       	call   0xffffffffffff20dc
 397:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 39e:	48 89 df             	mov    %rbx,%rdi
 3a1:	44 89 e6             	mov    %r12d,%esi
 3a4:	e8 93 1c ff ff       	call   0xffffffffffff203c
 3a9:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 3b0:	41 8d 47 30          	lea    0x30(%r15),%eax
 3b4:	89 83 78 11 00 00    	mov    %eax,0x1178(%rbx)
 3ba:	31 c0                	xor    %eax,%eax
 3bc:	48 83 c4 48          	add    $0x48,%rsp
 3c0:	5b                   	pop    %rbx
 3c1:	41 5c                	pop    %r12
 3c3:	41 5d                	pop    %r13
 3c5:	41 5e                	pop    %r14
 3c7:	41 5f                	pop    %r15
 3c9:	5d                   	pop    %rbp
 3ca:	c3                   	ret

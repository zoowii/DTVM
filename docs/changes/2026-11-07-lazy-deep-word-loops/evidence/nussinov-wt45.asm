
/workspace/DTVM/work/pr642/wt-word-live-nussinov/code-2.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	4c 8b 57 08          	mov    0x8(%rdi),%r10
   8:	4d 8b 52 18          	mov    0x18(%r10),%r10
   c:	49 81 c2 90 00 00 00 	add    $0x90,%r10
  13:	4c 3b d4             	cmp    %rsp,%r10
  16:	0f 87 54 04 00 00    	ja     0x470
  1c:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  23:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
  28:	4c 89 64 24 58       	mov    %r12,0x58(%rsp)
  2d:	4c 89 6c 24 60       	mov    %r13,0x60(%rsp)
  32:	4c 89 74 24 68       	mov    %r14,0x68(%rsp)
  37:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  3c:	44 8b 87 40 01 00 00 	mov    0x140(%rdi),%r8d
  43:	4d 89 c1             	mov    %r8,%r9
  46:	41 83 e9 30          	sub    $0x30,%r9d
  4a:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
  4f:	44 89 8f 40 01 00 00 	mov    %r9d,0x140(%rdi)
  56:	48 89 3c 24          	mov    %rdi,(%rsp)
  5a:	ba c4 09 00 00       	mov    $0x9c4,%edx
  5f:	b9 01 00 00 00       	mov    $0x1,%ecx
  64:	48 8b 34 24          	mov    (%rsp),%rsi
  68:	e8 13 04 00 00       	call   0x480
  6d:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  72:	ba 10 5e 5f 00       	mov    $0x5f5e10,%edx
  77:	b9 04 00 00 00       	mov    $0x4,%ecx
  7c:	48 8b 34 24          	mov    (%rsp),%rsi
  80:	48 8b 3c 24          	mov    (%rsp),%rdi
  84:	e8 f7 03 00 00       	call   0x480
  89:	45 33 db             	xor    %r11d,%r11d
  8c:	48 8b 0c 24          	mov    (%rsp),%rcx
  90:	4c 8b 71 38          	mov    0x38(%rcx),%r14
  94:	45 8d 4b 01          	lea    0x1(%r11),%r9d
  98:	4d 89 ca             	mov    %r9,%r10
  9b:	41 83 e2 03          	and    $0x3,%r10d
  9f:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
  a4:	41 03 cb             	add    %r11d,%ecx
  a7:	45 88 14 0e          	mov    %r10b,(%r14,%rcx,1)
  ab:	41 81 fb c3 09 00 00 	cmp    $0x9c3,%r11d
  b2:	0f 84 08 00 00 00    	je     0xc0
  b8:	4d 89 cb             	mov    %r9,%r11
  bb:	e9 d4 ff ff ff       	jmp    0x94
  c0:	33 c9                	xor    %ecx,%ecx
  c2:	41 b8 40 78 7d 01    	mov    $0x17d7840,%r8d
  c8:	48 89 c2             	mov    %rax,%rdx
  cb:	48 8b 34 24          	mov    (%rsp),%rsi
  cf:	48 8b 3c 24          	mov    (%rsp),%rdi
  d3:	e8 48 b5 00 00       	call   0xb620
  d8:	ba c3 09 00 00       	mov    $0x9c3,%edx
  dd:	8d 88 60 c6 7d 01    	lea    0x17dc660(%rax),%ecx
  e3:	8d b0 40 78 7d 01    	lea    0x17d7840(%rax),%esi
  e9:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  ee:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  f3:	81 fa c2 09 00 00    	cmp    $0x9c2,%edx
  f9:	0f 87 5a 01 00 00    	ja     0x259
  ff:	8d 7a 01             	lea    0x1(%rdx),%edi
 102:	69 c7 10 27 00 00    	imul   $0x2710,%edi,%eax
 108:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
 10d:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 112:	45 8d 04 01          	lea    (%r9,%rax,1),%r8d
 116:	41 8d 04 90          	lea    (%r8,%rdx,4),%eax
 11a:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
 11f:	45 8b 24 06          	mov    (%r14,%rax,1),%r12d
 123:	69 c2 10 27 00 00    	imul   $0x2710,%edx,%eax
 129:	41 03 c1             	add    %r9d,%eax
 12c:	48 89 c6             	mov    %rax,%rsi
 12f:	8d 04 96             	lea    (%rsi,%rdx,4),%eax
 132:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
 137:	45 8b 2c 06          	mov    (%r14,%rax,1),%r13d
 13b:	45 33 c9             	xor    %r9d,%r9d
 13e:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
 143:	8d 34 10             	lea    (%rax,%rdx,1),%esi
 146:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
 14b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 150:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 155:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
 15a:	42 8d 34 b8          	lea    (%rax,%r15,4),%esi
 15e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 163:	45 8b 1c 36          	mov    (%r14,%rsi,1),%r11d
 167:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 16c:	42 8d 1c b8          	lea    (%rax,%r15,4),%ebx
 170:	41 8b 04 1e          	mov    (%r14,%rbx,1),%eax
 174:	44 3b e8             	cmp    %eax,%r13d
 177:	41 0f 4d c5          	cmovge %r13d,%eax
 17b:	44 3b d8             	cmp    %eax,%r11d
 17e:	41 0f 4d c3          	cmovge %r11d,%eax
 182:	41 89 04 1e          	mov    %eax,(%r14,%rbx,1)
 186:	41 8d 77 ff          	lea    -0x1(%r15),%esi
 18a:	3b d6                	cmp    %esi,%edx
 18c:	0f 83 28 00 00 00    	jae    0x1ba
 192:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 197:	41 03 f7             	add    %r15d,%esi
 19a:	49 0f be 34 36       	movsbq (%r14,%rsi,1),%rsi
 19f:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
 1a4:	4d 0f be 14 3e       	movsbq (%r14,%rdi,1),%r10
 1a9:	41 03 f2             	add    %r10d,%esi
 1ac:	83 fe 03             	cmp    $0x3,%esi
 1af:	40 0f 94 c6          	sete   %sil
 1b3:	40 0f b6 f6          	movzbl %sil,%esi
 1b7:	44 03 e6             	add    %esi,%r12d
 1ba:	44 3b e0             	cmp    %eax,%r12d
 1bd:	41 0f 4d c4          	cmovge %r12d,%eax
 1c1:	41 89 04 1e          	mov    %eax,(%r14,%rbx,1)
 1c5:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
 1ca:	41 3b ff             	cmp    %r15d,%edi
 1cd:	0f 82 08 00 00 00    	jb     0x1db
 1d3:	49 89 c5             	mov    %rax,%r13
 1d6:	e9 46 00 00 00       	jmp    0x221
 1db:	49 89 c5             	mov    %rax,%r13
 1de:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 1e3:	49 89 ca             	mov    %rcx,%r10
 1e6:	4c 89 c8             	mov    %r9,%rax
 1e9:	41 8b f2             	mov    %r10d,%esi
 1ec:	41 8b 34 36          	mov    (%r14,%rsi,1),%esi
 1f0:	45 8b c4             	mov    %r12d,%r8d
 1f3:	47 8b 04 06          	mov    (%r14,%r8,1),%r8d
 1f7:	41 03 f0             	add    %r8d,%esi
 1fa:	41 3b f5             	cmp    %r13d,%esi
 1fd:	44 0f 4d ee          	cmovge %esi,%r13d
 201:	45 89 2c 1e          	mov    %r13d,(%r14,%rbx,1)
 205:	81 c0 ff ff ff ff    	add    $0xffffffff,%eax
 20b:	41 81 c2 10 27 00 00 	add    $0x2710,%r10d
 212:	41 81 c4 04 00 00 00 	add    $0x4,%r12d
 219:	85 c0                	test   %eax,%eax
 21b:	0f 85 c8 ff ff ff    	jne    0x1e9
 221:	41 8d 47 01          	lea    0x1(%r15),%eax
 225:	81 c1 04 00 00 00    	add    $0x4,%ecx
 22b:	41 81 c1 01 00 00 00 	add    $0x1,%r9d
 232:	41 81 ff c3 09 00 00 	cmp    $0x9c3,%r15d
 239:	0f 84 15 00 00 00    	je     0x254
 23f:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 244:	49 89 c7             	mov    %rax,%r15
 247:	4d 89 dc             	mov    %r11,%r12
 24a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 24f:	e9 06 ff ff ff       	jmp    0x15a
 254:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 259:	8d 42 ff             	lea    -0x1(%rdx),%eax
 25c:	81 c1 ec d8 ff ff    	add    $0xffffd8ec,%ecx
 262:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
 267:	41 81 c3 ec d8 ff ff 	add    $0xffffd8ec,%r11d
 26e:	85 d2                	test   %edx,%edx
 270:	0f 84 0d 00 00 00    	je     0x283
 276:	48 89 c2             	mov    %rax,%rdx
 279:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
 27e:	e9 70 fe ff ff       	jmp    0xf3
 283:	41 8b 9e 8c 04 00 00 	mov    0x48c(%r14),%ebx
 28a:	ba 00 04 00 00       	mov    $0x400,%edx
 28f:	b9 16 00 00 00       	mov    $0x16,%ecx
 294:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 29a:	48 8b 34 24          	mov    (%rsp),%rsi
 29e:	48 8b 3c 24          	mov    (%rsp),%rdi
 2a2:	49 89 d9             	mov    %rbx,%r9
 2a5:	e8 b6 3c 00 00       	call   0x3f60
 2aa:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
 2af:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
 2b4:	48 89 f9             	mov    %rdi,%rcx
 2b7:	83 e9 30             	sub    $0x30,%ecx
 2ba:	41 c7 44 0e 20 26 04 	movl   $0x426,0x20(%r14,%rcx,1)
 2c1:	00 00 
 2c3:	48 89 cb             	mov    %rcx,%rbx
 2c6:	b9 17 04 00 00       	mov    $0x417,%ecx
 2cb:	44 8d 47 f0          	lea    -0x10(%rdi),%r8d
 2cf:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 2d4:	48 8b 34 24          	mov    (%rsp),%rsi
 2d8:	48 8b 3c 24          	mov    (%rsp),%rdi
 2dc:	e8 5f a9 00 00       	call   0xac40
 2e1:	45 33 e4             	xor    %r12d,%r12d
 2e4:	b8 c4 09 00 00       	mov    $0x9c4,%eax
 2e9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 2ee:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
 2f3:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
 2f8:	45 33 ff             	xor    %r15d,%r15d
 2fb:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
 300:	43 8d 0c 3c          	lea    (%r12,%r15,1),%ecx
 304:	48 89 c8             	mov    %rcx,%rax
 307:	f7 2d 6b 01 00 00    	imull  0x16b(%rip)        # 0x478
 30d:	c1 fa 03             	sar    $0x3,%edx
 310:	48 89 d0             	mov    %rdx,%rax
 313:	c1 e8 1f             	shr    $0x1f,%eax
 316:	03 c2                	add    %edx,%eax
 318:	6b c0 14             	imul   $0x14,%eax,%eax
 31b:	2b c8                	sub    %eax,%ecx
 31d:	85 c9                	test   %ecx,%ecx
 31f:	0f 85 17 00 00 00    	jne    0x33c
 325:	ba 0a 00 00 00       	mov    $0xa,%edx
 32a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
 32f:	48 8b 34 24          	mov    (%rsp),%rsi
 333:	48 8b 3c 24          	mov    (%rsp),%rdi
 337:	e8 84 4a 00 00       	call   0x4dc0
 33c:	41 8b c5             	mov    %r13d,%eax
 33f:	41 8b 0c 06          	mov    (%r14,%rax,1),%ecx
 343:	41 89 4c 1e 10       	mov    %ecx,0x10(%r14,%rbx,1)
 348:	b9 2c 04 00 00       	mov    $0x42c,%ecx
 34d:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 352:	44 8d 40 e0          	lea    -0x20(%rax),%r8d
 356:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 35b:	48 8b 34 24          	mov    (%rsp),%rsi
 35f:	48 8b 3c 24          	mov    (%rsp),%rdi
 363:	e8 d8 a8 00 00       	call   0xac40
 368:	41 81 c7 01 00 00 00 	add    $0x1,%r15d
 36f:	41 81 c5 04 00 00 00 	add    $0x4,%r13d
 376:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
 37b:	45 3b c7             	cmp    %r15d,%r8d
 37e:	0f 84 0a 00 00 00    	je     0x38e
 384:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
 389:	e9 72 ff ff ff       	jmp    0x300
 38e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 393:	44 8d a8 14 27 00 00 	lea    0x2714(%rax),%r13d
 39a:	45 03 e0             	add    %r8d,%r12d
 39d:	41 81 c0 ff ff ff ff 	add    $0xffffffff,%r8d
 3a4:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
 3a9:	41 8d 4f 01          	lea    0x1(%r15),%ecx
 3ad:	41 81 ff c3 09 00 00 	cmp    $0x9c3,%r15d
 3b4:	0f 84 0f 00 00 00    	je     0x3c9
 3ba:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
 3bf:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 3c4:	e9 2f ff ff ff       	jmp    0x2f8
 3c9:	41 c7 04 1e 26 04 00 	movl   $0x426,(%r14,%rbx,1)
 3d0:	00 
 3d1:	b9 30 04 00 00       	mov    $0x430,%ecx
 3d6:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 3db:	49 89 c0             	mov    %rax,%r8
 3de:	41 83 e8 30          	sub    $0x30,%r8d
 3e2:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 3e7:	48 8b 34 24          	mov    (%rsp),%rsi
 3eb:	48 8b 3c 24          	mov    (%rsp),%rdi
 3ef:	e8 4c a8 00 00       	call   0xac40
 3f4:	ba 41 04 00 00       	mov    $0x441,%edx
 3f9:	b9 16 00 00 00       	mov    $0x16,%ecx
 3fe:	41 b8 01 00 00 00    	mov    $0x1,%r8d
 404:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
 409:	48 8b 34 24          	mov    (%rsp),%rsi
 40d:	48 8b 3c 24          	mov    (%rsp),%rdi
 411:	e8 4a 3b 00 00       	call   0x3f60
 416:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
 41b:	48 8b 34 24          	mov    (%rsp),%rsi
 41f:	48 8b 3c 24          	mov    (%rsp),%rdi
 423:	e8 78 1f 00 00       	call   0x23a0
 428:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
 42d:	48 8b 34 24          	mov    (%rsp),%rsi
 431:	48 8b 3c 24          	mov    (%rsp),%rdi
 435:	e8 66 1f 00 00       	call   0x23a0
 43a:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 43f:	48 8b 0c 24          	mov    (%rsp),%rcx
 443:	89 81 40 01 00 00    	mov    %eax,0x140(%rcx)
 449:	33 c0                	xor    %eax,%eax
 44b:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
 450:	4c 8b 64 24 58       	mov    0x58(%rsp),%r12
 455:	4c 8b 6c 24 60       	mov    0x60(%rsp),%r13
 45a:	4c 8b 74 24 68       	mov    0x68(%rsp),%r14
 45f:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
 464:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
 46b:	48 89 ec             	mov    %rbp,%rsp
 46e:	5d                   	pop    %rbp
 46f:	c3                   	ret
 470:	0f 0b                	ud2
 472:	00 00                	add    %al,(%rax)
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	67 66 66 66 00 00    	data16 data16 data16 add %al,(%eax)
	...


/workspace/DTVM/work/pr642/word-native-floyd-warshall-off/func-2-fast.bin:     file format binary


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
  11:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  15:	31 c0                	xor    %eax,%eax
  17:	31 c0                	xor    %eax,%eax
  19:	31 c0                	xor    %eax,%eax
  1b:	31 c0                	xor    %eax,%eax
  1d:	31 c0                	xor    %eax,%eax
  1f:	31 c0                	xor    %eax,%eax
  21:	89 45 9c             	mov    %eax,-0x64(%rbp)
  24:	31 c0                	xor    %eax,%eax
  26:	89 45 a0             	mov    %eax,-0x60(%rbp)
  29:	31 c0                	xor    %eax,%eax
  2b:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  2e:	31 c0                	xor    %eax,%eax
  30:	89 45 a8             	mov    %eax,-0x58(%rbp)
  33:	31 c0                	xor    %eax,%eax
  35:	89 45 ac             	mov    %eax,-0x54(%rbp)
  38:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
  3f:	ff 
  40:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
  47:	8b 87 78 11 00 00    	mov    0x1178(%rdi),%eax
  4d:	89 c1                	mov    %eax,%ecx
  4f:	8d 49 d0             	lea    -0x30(%rcx),%ecx
  52:	89 4d b0             	mov    %ecx,-0x50(%rbp)
  55:	8d 40 d0             	lea    -0x30(%rax),%eax
  58:	89 87 78 11 00 00    	mov    %eax,0x1178(%rdi)
  5e:	31 c0                	xor    %eax,%eax
  60:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  63:	be 00 a1 77 00       	mov    $0x77a100,%esi
  68:	ba 04 00 00 00       	mov    $0x4,%edx
  6d:	e8 ac 1f ff ff       	call   0xffffffffffff201e
  72:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  76:	48 8b 8f b8 11 00 00 	mov    0x11b8(%rdi),%rcx
  7d:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  81:	89 c1                	mov    %eax,%ecx
  83:	89 4d cc             	mov    %ecx,-0x34(%rbp)
  86:	89 45 d0             	mov    %eax,-0x30(%rbp)
  89:	31 c0                	xor    %eax,%eax
  8b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  8e:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  91:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  94:	31 d2                	xor    %edx,%edx
  96:	89 55 9c             	mov    %edx,-0x64(%rbp)
  99:	31 d2                	xor    %edx,%edx
  9b:	89 55 a0             	mov    %edx,-0x60(%rbp)
  9e:	ba 01 00 00 00       	mov    $0x1,%edx
  a3:	89 55 a4             	mov    %edx,-0x5c(%rbp)
  a6:	89 4d a8             	mov    %ecx,-0x58(%rbp)
  a9:	89 45 ac             	mov    %eax,-0x54(%rbp)
  ac:	8b 55 9c             	mov    -0x64(%rbp),%edx
  af:	44 8b 75 ac          	mov    -0x54(%rbp),%r14d
  b3:	8b 75 a8             	mov    -0x58(%rbp),%esi
  b6:	8b 5d a4             	mov    -0x5c(%rbp),%ebx
  b9:	8b 7d d4             	mov    -0x2c(%rbp),%edi
  bc:	44 8b 45 a0          	mov    -0x60(%rbp),%r8d
  c0:	4c 8b 4d c0          	mov    -0x40(%rbp),%r9
  c4:	44 8b 55 d0          	mov    -0x30(%rbp),%r10d
  c8:	45 89 c3             	mov    %r8d,%r11d
  cb:	b8 07 00 00 00       	mov    $0x7,%eax
  d0:	44 89 d8             	mov    %r11d,%eax
  d3:	48 69 c0 25 49 92 24 	imul   $0x24924925,%rax,%rax
  da:	48 c1 e8 20          	shr    $0x20,%rax
  de:	89 c0                	mov    %eax,%eax
  e0:	41 29 c3             	sub    %eax,%r11d
  e3:	41 c1 eb 01          	shr    $0x1,%r11d
  e7:	41 01 c3             	add    %eax,%r11d
  ea:	41 c1 eb 02          	shr    $0x2,%r11d
  ee:	44 89 f0             	mov    %r14d,%eax
  f1:	89 f1                	mov    %esi,%ecx
  f3:	41 bf 07 00 00 00    	mov    $0x7,%r15d
  f9:	41 89 cf             	mov    %ecx,%r15d
  fc:	4d 69 ff 25 49 92 24 	imul   $0x24924925,%r15,%r15
 103:	49 c1 ef 20          	shr    $0x20,%r15
 107:	45 89 ff             	mov    %r15d,%r15d
 10a:	44 29 f9             	sub    %r15d,%ecx
 10d:	c1 e9 01             	shr    $0x1,%ecx
 110:	44 01 f9             	add    %r15d,%ecx
 113:	c1 e9 02             	shr    $0x2,%ecx
 116:	45 89 f4             	mov    %r14d,%r12d
 119:	41 89 f7             	mov    %esi,%r15d
 11c:	41 bd 0d 00 00 00    	mov    $0xd,%r13d
 122:	45 89 ff             	mov    %r15d,%r15d
 125:	4d 69 ff 4f ec c4 4e 	imul   $0x4ec4ec4f,%r15,%r15
 12c:	49 c1 ef 22          	shr    $0x22,%r15
 130:	45 89 fd             	mov    %r15d,%r13d
 133:	41 bf 0b 00 00 00    	mov    $0xb,%r15d
 139:	89 f6                	mov    %esi,%esi
 13b:	41 89 f7             	mov    %esi,%r15d
 13e:	48 be a3 8b 2e ba 00 	movabs $0xba2e8ba3,%rsi
 145:	00 00 00 
 148:	4c 0f af fe          	imul   %rsi,%r15
 14c:	8b 75 a4             	mov    -0x5c(%rbp),%esi
 14f:	49 c1 ef 23          	shr    $0x23,%r15
 153:	45 89 ff             	mov    %r15d,%r15d
 156:	41 01 d2             	add    %edx,%r10d
 159:	8b 55 a8             	mov    -0x58(%rbp),%edx
 15c:	45 6b db 07          	imul   $0x7,%r11d,%r11d
 160:	44 29 db             	sub    %r11d,%ebx
 163:	41 bb e7 03 00 00    	mov    $0x3e7,%r11d
 169:	6b c9 07             	imul   $0x7,%ecx,%ecx
 16c:	01 c8                	add    %ecx,%eax
 16e:	8b 4d ac             	mov    -0x54(%rbp),%ecx
 171:	85 c0                	test   %eax,%eax
 173:	8b 45 9c             	mov    -0x64(%rbp),%eax
 176:	44 0f 45 db          	cmovne %ebx,%r11d
 17a:	bb e7 03 00 00       	mov    $0x3e7,%ebx
 17f:	45 6b ed 0d          	imul   $0xd,%r13d,%r13d
 183:	45 01 ec             	add    %r13d,%r12d
 186:	45 85 e4             	test   %r12d,%r12d
 189:	41 0f 45 db          	cmovne %r11d,%ebx
 18d:	41 bb e7 03 00 00    	mov    $0x3e7,%r11d
 193:	45 6b ff 0b          	imul   $0xb,%r15d,%r15d
 197:	45 01 fe             	add    %r15d,%r14d
 19a:	45 85 f6             	test   %r14d,%r14d
 19d:	44 0f 45 db          	cmovne %ebx,%r11d
 1a1:	47 89 1c 11          	mov    %r11d,(%r9,%r10,1)
 1a5:	41 89 f9             	mov    %edi,%r9d
 1a8:	45 01 c8             	add    %r9d,%r8d
 1ab:	44 89 45 a0          	mov    %r8d,-0x60(%rbp)
 1af:	01 fe                	add    %edi,%esi
 1b1:	89 75 a4             	mov    %esi,-0x5c(%rbp)
 1b4:	8d 52 01             	lea    0x1(%rdx),%edx
 1b7:	89 55 a8             	mov    %edx,-0x58(%rbp)
 1ba:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 1bd:	89 4d ac             	mov    %ecx,-0x54(%rbp)
 1c0:	8d 40 04             	lea    0x4(%rax),%eax
 1c3:	89 c1                	mov    %eax,%ecx
 1c5:	89 4d 9c             	mov    %ecx,-0x64(%rbp)
 1c8:	3d c0 2b 00 00       	cmp    $0x2bc0,%eax
 1cd:	0f 85 d9 fe ff ff    	jne    0xac
 1d3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 1d6:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
 1d9:	8b 55 d0             	mov    -0x30(%rbp),%edx
 1dc:	8d 92 c0 2b 00 00    	lea    0x2bc0(%rdx),%edx
 1e2:	89 55 d0             	mov    %edx,-0x30(%rbp)
 1e5:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 1e8:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
 1eb:	8d 40 01             	lea    0x1(%rax),%eax
 1ee:	89 c1                	mov    %eax,%ecx
 1f0:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 1f3:	3d f0 0a 00 00       	cmp    $0xaf0,%eax
 1f8:	0f 85 90 fe ff ff    	jne    0x8e
 1fe:	8b 45 cc             	mov    -0x34(%rbp),%eax
 201:	31 c9                	xor    %ecx,%ecx
 203:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
 206:	89 45 a4             	mov    %eax,-0x5c(%rbp)
 209:	8b 45 cc             	mov    -0x34(%rbp),%eax
 20c:	89 45 ac             	mov    %eax,-0x54(%rbp)
 20f:	31 c0                	xor    %eax,%eax
 211:	89 45 a0             	mov    %eax,-0x60(%rbp)
 214:	8b 4d b4             	mov    -0x4c(%rbp),%ecx
 217:	8b 55 a0             	mov    -0x60(%rbp),%edx
 21a:	8b 45 cc             	mov    -0x34(%rbp),%eax
 21d:	69 d2 c0 2b 00 00    	imul   $0x2bc0,%edx,%edx
 223:	01 d0                	add    %edx,%eax
 225:	c1 e1 02             	shl    $0x2,%ecx
 228:	01 c8                	add    %ecx,%eax
 22a:	89 45 d0             	mov    %eax,-0x30(%rbp)
 22d:	31 c0                	xor    %eax,%eax
 22f:	89 45 a8             	mov    %eax,-0x58(%rbp)
 232:	8b 45 a8             	mov    -0x58(%rbp),%eax
 235:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
 239:	44 8b 4d d0          	mov    -0x30(%rbp),%r9d
 23d:	8b 75 a4             	mov    -0x5c(%rbp),%esi
 240:	8b 55 ac             	mov    -0x54(%rbp),%edx
 243:	89 c7                	mov    %eax,%edi
 245:	01 fa                	add    %edi,%edx
 247:	89 d7                	mov    %edx,%edi
 249:	8b 3c 39             	mov    (%rcx,%rdi,1),%edi
 24c:	41 89 f8             	mov    %edi,%r8d
 24f:	44 89 45 d4          	mov    %r8d,-0x2c(%rbp)
 253:	41 89 c2             	mov    %eax,%r10d
 256:	44 01 d6             	add    %r10d,%esi
 259:	8b 34 31             	mov    (%rcx,%rsi,1),%esi
 25c:	46 8b 0c 09          	mov    (%rcx,%r9,1),%r9d
 260:	44 01 ce             	add    %r9d,%esi
 263:	41 89 f1             	mov    %esi,%r9d
 266:	44 89 4d 9c          	mov    %r9d,-0x64(%rbp)
 26a:	45 39 c8             	cmp    %r9d,%r8d
 26d:	0f 4c f7             	cmovl  %edi,%esi
 270:	89 34 11             	mov    %esi,(%rcx,%rdx,1)
 273:	8d 40 04             	lea    0x4(%rax),%eax
 276:	89 c1                	mov    %eax,%ecx
 278:	89 4d a8             	mov    %ecx,-0x58(%rbp)
 27b:	3d c0 2b 00 00       	cmp    $0x2bc0,%eax
 280:	75 b0                	jne    0x232
 282:	8b 45 a0             	mov    -0x60(%rbp),%eax
 285:	8b 4d ac             	mov    -0x54(%rbp),%ecx
 288:	8d 89 c0 2b 00 00    	lea    0x2bc0(%rcx),%ecx
 28e:	89 4d ac             	mov    %ecx,-0x54(%rbp)
 291:	8d 40 01             	lea    0x1(%rax),%eax
 294:	89 c1                	mov    %eax,%ecx
 296:	89 4d a0             	mov    %ecx,-0x60(%rbp)
 299:	3d f0 0a 00 00       	cmp    $0xaf0,%eax
 29e:	0f 85 70 ff ff ff    	jne    0x214
 2a4:	8b 45 b4             	mov    -0x4c(%rbp),%eax
 2a7:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
 2aa:	8d 89 c0 2b 00 00    	lea    0x2bc0(%rcx),%ecx
 2b0:	89 4d a4             	mov    %ecx,-0x5c(%rbp)
 2b3:	8d 40 01             	lea    0x1(%rax),%eax
 2b6:	89 c1                	mov    %eax,%ecx
 2b8:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
 2bb:	3d f0 0a 00 00       	cmp    $0xaf0,%eax
 2c0:	0f 85 43 ff ff ff    	jne    0x209
 2c6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 2ca:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 2ce:	31 c9                	xor    %ecx,%ecx
 2d0:	89 4d a4             	mov    %ecx,-0x5c(%rbp)
 2d3:	44 8b 80 8c 04 00 00 	mov    0x48c(%rax),%r8d
 2da:	44 89 c0             	mov    %r8d,%eax
 2dd:	89 45 9c             	mov    %eax,-0x64(%rbp)
 2e0:	be 00 04 00 00       	mov    $0x400,%esi
 2e5:	ba 16 00 00 00       	mov    $0x16,%edx
 2ea:	b9 01 00 00 00       	mov    $0x1,%ecx
 2ef:	e8 e8 1d ff ff       	call   0xffffffffffff20dc
 2f4:	8b 75 9c             	mov    -0x64(%rbp),%esi
 2f7:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 2fb:	89 c1                	mov    %eax,%ecx
 2fd:	8b 45 b0             	mov    -0x50(%rbp),%eax
 300:	48 8b 8f b8 11 00 00 	mov    0x11b8(%rdi),%rcx
 307:	89 c2                	mov    %eax,%edx
 309:	41 b8 26 04 00 00    	mov    $0x426,%r8d
 30f:	44 89 44 11 20       	mov    %r8d,0x20(%rcx,%rdx,1)
 314:	ba 17 04 00 00       	mov    $0x417,%edx
 319:	8d 48 20             	lea    0x20(%rax),%ecx
 31c:	e8 51 1e ff ff       	call   0xffffffffffff2172
 321:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
 325:	89 c2                	mov    %eax,%edx
 327:	8b 45 cc             	mov    -0x34(%rbp),%eax
 32a:	48 8b 89 b8 11 00 00 	mov    0x11b8(%rcx),%rcx
 331:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
 335:	89 45 a0             	mov    %eax,-0x60(%rbp)
 338:	31 c0                	xor    %eax,%eax
 33a:	89 45 d0             	mov    %eax,-0x30(%rbp)
 33d:	31 c0                	xor    %eax,%eax
 33f:	89 45 b4             	mov    %eax,-0x4c(%rbp)
 342:	8b 45 d0             	mov    -0x30(%rbp),%eax
 345:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
 348:	31 d2                	xor    %edx,%edx
 34a:	89 55 a8             	mov    %edx,-0x58(%rbp)
 34d:	89 4d ac             	mov    %ecx,-0x54(%rbp)
 350:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 353:	8b 4d ac             	mov    -0x54(%rbp),%ecx
 356:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 359:	ba 14 00 00 00       	mov    $0x14,%edx
 35e:	89 c9                	mov    %ecx,%ecx
 360:	48 ba cd cc cc cc 00 	movabs $0xcccccccd,%rdx
 367:	00 00 00 
 36a:	48 0f af ca          	imul   %rdx,%rcx
 36e:	48 c1 e9 24          	shr    $0x24,%rcx
 372:	89 c9                	mov    %ecx,%ecx
 374:	6b c9 14             	imul   $0x14,%ecx,%ecx
 377:	01 c8                	add    %ecx,%eax
 379:	85 c0                	test   %eax,%eax
 37b:	75 22                	jne    0x39f
 37d:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 381:	8b 55 9c             	mov    -0x64(%rbp),%edx
 384:	be 0a 00 00 00       	mov    $0xa,%esi
 389:	e8 9e 1d ff ff       	call   0xffffffffffff212c
 38e:	89 c1                	mov    %eax,%ecx
 390:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 394:	48 8b 80 b8 11 00 00 	mov    0x11b8(%rax),%rax
 39b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 39f:	44 8b 4d a8          	mov    -0x58(%rbp),%r9d
 3a3:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
 3a7:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 3ab:	8b 45 b0             	mov    -0x50(%rbp),%eax
 3ae:	8b 75 9c             	mov    -0x64(%rbp),%esi
 3b1:	44 8b 45 a0          	mov    -0x60(%rbp),%r8d
 3b5:	89 c2                	mov    %eax,%edx
 3b7:	45 01 c8             	add    %r9d,%r8d
 3ba:	46 8b 04 01          	mov    (%rcx,%r8,1),%r8d
 3be:	44 89 44 11 10       	mov    %r8d,0x10(%rcx,%rdx,1)
 3c3:	ba 2b 04 00 00       	mov    $0x42b,%edx
 3c8:	8d 48 10             	lea    0x10(%rax),%ecx
 3cb:	e8 a2 1d ff ff       	call   0xffffffffffff2172
 3d0:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
 3d4:	8b 55 ac             	mov    -0x54(%rbp),%edx
 3d7:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
 3da:	89 c7                	mov    %eax,%edi
 3dc:	8b 45 a8             	mov    -0x58(%rbp),%eax
 3df:	48 8b b6 b8 11 00 00 	mov    0x11b8(%rsi),%rsi
 3e6:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 3ea:	8d 52 01             	lea    0x1(%rdx),%edx
 3ed:	89 55 ac             	mov    %edx,-0x54(%rbp)
 3f0:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 3f3:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 3f6:	8d 40 04             	lea    0x4(%rax),%eax
 3f9:	89 c1                	mov    %eax,%ecx
 3fb:	89 4d a8             	mov    %ecx,-0x58(%rbp)
 3fe:	3d c0 2b 00 00       	cmp    $0x2bc0,%eax
 403:	0f 85 4a ff ff ff    	jne    0x353
 409:	8b 45 b4             	mov    -0x4c(%rbp),%eax
 40c:	8b 4d d0             	mov    -0x30(%rbp),%ecx
 40f:	8b 55 a4             	mov    -0x5c(%rbp),%edx
 412:	8b 75 a0             	mov    -0x60(%rbp),%esi
 415:	8d b6 c0 2b 00 00    	lea    0x2bc0(%rsi),%esi
 41b:	89 75 a0             	mov    %esi,-0x60(%rbp)
 41e:	8d 92 f0 0a 00 00    	lea    0xaf0(%rdx),%edx
 424:	89 55 a4             	mov    %edx,-0x5c(%rbp)
 427:	8d 89 10 f5 ff ff    	lea    -0xaf0(%rcx),%ecx
 42d:	89 4d d0             	mov    %ecx,-0x30(%rbp)
 430:	8d 40 01             	lea    0x1(%rax),%eax
 433:	89 c1                	mov    %eax,%ecx
 435:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
 438:	3d f0 0a 00 00       	cmp    $0xaf0,%eax
 43d:	0f 85 ff fe ff ff    	jne    0x342
 443:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 447:	8b 4d b0             	mov    -0x50(%rbp),%ecx
 44a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 44e:	8b 75 9c             	mov    -0x64(%rbp),%esi
 451:	89 ca                	mov    %ecx,%edx
 453:	41 b8 26 04 00 00    	mov    $0x426,%r8d
 459:	44 89 04 10          	mov    %r8d,(%rax,%rdx,1)
 45d:	ba 2f 04 00 00       	mov    $0x42f,%edx
 462:	e8 0b 1d ff ff       	call   0xffffffffffff2172
 467:	44 8b 45 9c          	mov    -0x64(%rbp),%r8d
 46b:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 46f:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
 476:	be 40 04 00 00       	mov    $0x440,%esi
 47b:	ba 16 00 00 00       	mov    $0x16,%edx
 480:	b9 01 00 00 00       	mov    $0x1,%ecx
 485:	e8 52 1c ff ff       	call   0xffffffffffff20dc
 48a:	8b 75 cc             	mov    -0x34(%rbp),%esi
 48d:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
 491:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
 498:	e8 9f 1b ff ff       	call   0xffffffffffff203c
 49d:	8b 4d b0             	mov    -0x50(%rbp),%ecx
 4a0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 4a4:	48 8b 90 b8 11 00 00 	mov    0x11b8(%rax),%rdx
 4ab:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
 4af:	8d 49 30             	lea    0x30(%rcx),%ecx
 4b2:	89 88 78 11 00 00    	mov    %ecx,0x1178(%rax)
 4b8:	31 c0                	xor    %eax,%eax
 4ba:	89 45 98             	mov    %eax,-0x68(%rbp)
 4bd:	8b 45 98             	mov    -0x68(%rbp),%eax
 4c0:	48 83 c4 48          	add    $0x48,%rsp
 4c4:	5b                   	pop    %rbx
 4c5:	41 5c                	pop    %r12
 4c7:	41 5d                	pop    %r13
 4c9:	41 5e                	pop    %r14
 4cb:	41 5f                	pop    %r15
 4cd:	5d                   	pop    %rbp
 4ce:	c3                   	ret

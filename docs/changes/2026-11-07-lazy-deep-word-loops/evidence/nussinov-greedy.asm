
/workspace/DTVM/work/pr642/word-native-nussinov-on/func-2-greedy.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	53                   	push   %rbx
   d:	48 83 ec 58          	sub    $0x58,%rsp
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
  28:	31 c0                	xor    %eax,%eax
  2a:	31 c0                	xor    %eax,%eax
  2c:	31 c0                	xor    %eax,%eax
  2e:	31 c0                	xor    %eax,%eax
  30:	31 c0                	xor    %eax,%eax
  32:	31 c0                	xor    %eax,%eax
  34:	31 c0                	xor    %eax,%eax
  36:	31 c0                	xor    %eax,%eax
  38:	31 c0                	xor    %eax,%eax
  3a:	31 c0                	xor    %eax,%eax
  3c:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
  43:	ff 
  44:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
  4b:	8b 83 78 11 00 00    	mov    0x1178(%rbx),%eax
  51:	8d 48 d0             	lea    -0x30(%rax),%ecx
  54:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  58:	8d 40 d0             	lea    -0x30(%rax),%eax
  5b:	89 83 78 11 00 00    	mov    %eax,0x1178(%rbx)
  61:	45 31 ff             	xor    %r15d,%r15d
  64:	be c4 09 00 00       	mov    $0x9c4,%esi
  69:	ba 01 00 00 00       	mov    $0x1,%edx
  6e:	48 89 df             	mov    %rbx,%rdi
  71:	e8 a8 1f ff ff       	call   0xffffffffffff201e
  76:	41 89 c4             	mov    %eax,%r12d
  79:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
  80:	be 10 5e 5f 00       	mov    $0x5f5e10,%esi
  85:	ba 04 00 00 00       	mov    $0x4,%edx
  8a:	48 89 df             	mov    %rbx,%rdi
  8d:	e8 8c 1f ff ff       	call   0xffffffffffff201e
  92:	41 89 c6             	mov    %eax,%r14d
  95:	48 89 d8             	mov    %rbx,%rax
  98:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  9c:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
  a3:	44 89 f9             	mov    %r15d,%ecx
  a6:	45 8d 7f 01          	lea    0x1(%r15),%r15d
  aa:	44 89 e2             	mov    %r12d,%edx
  ad:	01 ca                	add    %ecx,%edx
  af:	44 89 f9             	mov    %r15d,%ecx
  b2:	83 e1 03             	and    $0x3,%ecx
  b5:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
  b8:	41 81 ff c4 09 00 00 	cmp    $0x9c4,%r15d
  bf:	75 e2                	jne    0xa3
  c1:	44 89 65 c4          	mov    %r12d,-0x3c(%rbp)
  c5:	31 d2                	xor    %edx,%edx
  c7:	b9 40 78 7d 01       	mov    $0x17d7840,%ecx
  cc:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
  d0:	48 89 df             	mov    %rbx,%rdi
  d3:	44 89 f6             	mov    %r14d,%esi
  d6:	e8 dd 20 ff ff       	call   0xffffffffffff21b8
  db:	4c 8b 9b b8 11 00 00 	mov    0x11b8(%rbx),%r11
  e2:	8d 90 40 78 7d 01    	lea    0x17d7840(%rax),%edx
  e8:	48 89 c1             	mov    %rax,%rcx
  eb:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  ef:	8d b0 60 c6 7d 01    	lea    0x17dc660(%rax),%esi
  f5:	41 bf c3 09 00 00    	mov    $0x9c3,%r15d
  fb:	8b 5d c4             	mov    -0x3c(%rbp),%ebx
  fe:	41 89 da             	mov    %ebx,%r10d
 101:	45 89 fe             	mov    %r15d,%r14d
 104:	41 81 ff c2 09 00 00 	cmp    $0x9c2,%r15d
 10b:	0f 87 2d 01 00 00    	ja     0x23e
 111:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
 115:	45 8d 4e 01          	lea    0x1(%r14),%r9d
 119:	41 69 c9 10 27 00 00 	imul   $0x2710,%r9d,%ecx
 120:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 124:	48 89 d0             	mov    %rdx,%rax
 127:	89 c2                	mov    %eax,%edx
 129:	01 ca                	add    %ecx,%edx
 12b:	45 89 f7             	mov    %r14d,%r15d
 12e:	41 c1 e7 02          	shl    $0x2,%r15d
 132:	89 d1                	mov    %edx,%ecx
 134:	89 4d 98             	mov    %ecx,-0x68(%rbp)
 137:	89 d1                	mov    %edx,%ecx
 139:	44 01 f9             	add    %r15d,%ecx
 13c:	41 8b 1c 0b          	mov    (%r11,%rcx,1),%ebx
 140:	41 69 ce 10 27 00 00 	imul   $0x2710,%r14d,%ecx
 147:	89 c2                	mov    %eax,%edx
 149:	01 ca                	add    %ecx,%edx
 14b:	89 d0                	mov    %edx,%eax
 14d:	89 45 94             	mov    %eax,-0x6c(%rbp)
 150:	89 d1                	mov    %edx,%ecx
 152:	44 01 f9             	add    %r15d,%ecx
 155:	45 8b 3c 0b          	mov    (%r11,%rcx,1),%r15d
 159:	44 89 d0             	mov    %r10d,%eax
 15c:	44 01 f0             	add    %r14d,%eax
 15f:	48 89 45 88          	mov    %rax,-0x78(%rbp)
 163:	45 31 c0             	xor    %r8d,%r8d
 166:	89 f1                	mov    %esi,%ecx
 168:	45 89 cd             	mov    %r9d,%r13d
 16b:	45 89 ec             	mov    %r13d,%r12d
 16e:	41 c1 e4 02          	shl    $0x2,%r12d
 172:	8b 45 94             	mov    -0x6c(%rbp),%eax
 175:	44 01 e0             	add    %r12d,%eax
 178:	8b 55 98             	mov    -0x68(%rbp),%edx
 17b:	44 01 e2             	add    %r12d,%edx
 17e:	41 8b 3c 13          	mov    (%r11,%rdx,1),%edi
 182:	45 8b 24 03          	mov    (%r11,%rax,1),%r12d
 186:	45 39 fc             	cmp    %r15d,%r12d
 189:	45 0f 4c e7          	cmovl  %r15d,%r12d
 18d:	45 89 e7             	mov    %r12d,%r15d
 190:	41 39 ff             	cmp    %edi,%r15d
 193:	89 fa                	mov    %edi,%edx
 195:	89 55 84             	mov    %edx,-0x7c(%rbp)
 198:	44 0f 4c e7          	cmovl  %edi,%r12d
 19c:	45 89 e7             	mov    %r12d,%r15d
 19f:	45 89 24 03          	mov    %r12d,(%r11,%rax,1)
 1a3:	41 8d 55 ff          	lea    -0x1(%r13),%edx
 1a7:	41 39 d6             	cmp    %edx,%r14d
 1aa:	73 21                	jae    0x1cd
 1ac:	44 89 d2             	mov    %r10d,%edx
 1af:	44 01 ea             	add    %r13d,%edx
 1b2:	41 0f be 14 13       	movsbl (%r11,%rdx,1),%edx
 1b7:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
 1bb:	41 0f be 3c 3b       	movsbl (%r11,%rdi,1),%edi
 1c0:	01 fa                	add    %edi,%edx
 1c2:	83 fa 03             	cmp    $0x3,%edx
 1c5:	0f 94 c2             	sete   %dl
 1c8:	0f b6 d2             	movzbl %dl,%edx
 1cb:	01 d3                	add    %edx,%ebx
 1cd:	41 39 df             	cmp    %ebx,%r15d
 1d0:	44 0f 4c fb          	cmovl  %ebx,%r15d
 1d4:	45 89 3c 03          	mov    %r15d,(%r11,%rax,1)
 1d8:	45 39 e9             	cmp    %r13d,%r9d
 1db:	73 40                	jae    0x21d
 1dd:	44 89 4d 9c          	mov    %r9d,-0x64(%rbp)
 1e1:	45 89 d1             	mov    %r10d,%r9d
 1e4:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
 1e8:	41 89 cc             	mov    %ecx,%r12d
 1eb:	44 89 c2             	mov    %r8d,%edx
 1ee:	43 8b 3c 23          	mov    (%r11,%r12,1),%edi
 1f2:	45 8b 14 1b          	mov    (%r11,%rbx,1),%r10d
 1f6:	44 01 d7             	add    %r10d,%edi
 1f9:	41 39 ff             	cmp    %edi,%r15d
 1fc:	44 0f 4c ff          	cmovl  %edi,%r15d
 200:	45 89 3c 03          	mov    %r15d,(%r11,%rax,1)
 204:	8d 5b 04             	lea    0x4(%rbx),%ebx
 207:	45 8d a4 24 10 27 00 	lea    0x2710(%r12),%r12d
 20e:	00 
 20f:	8d 52 ff             	lea    -0x1(%rdx),%edx
 212:	85 d2                	test   %edx,%edx
 214:	75 d8                	jne    0x1ee
 216:	45 89 ca             	mov    %r9d,%r10d
 219:	44 8b 4d 9c          	mov    -0x64(%rbp),%r9d
 21d:	8d 49 04             	lea    0x4(%rcx),%ecx
 220:	45 8d 40 01          	lea    0x1(%r8),%r8d
 224:	8b 45 84             	mov    -0x7c(%rbp),%eax
 227:	89 c3                	mov    %eax,%ebx
 229:	45 8d 6d 01          	lea    0x1(%r13),%r13d
 22d:	41 81 fd c4 09 00 00 	cmp    $0x9c4,%r13d
 234:	0f 85 31 ff ff ff    	jne    0x16b
 23a:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
 23e:	8d 92 ec d8 ff ff    	lea    -0x2714(%rdx),%edx
 244:	8d b6 ec d8 ff ff    	lea    -0x2714(%rsi),%esi
 24a:	45 8d 7e ff          	lea    -0x1(%r14),%r15d
 24e:	45 85 f6             	test   %r14d,%r14d
 251:	0f 85 aa fe ff ff    	jne    0x101
 257:	45 31 ff             	xor    %r15d,%r15d
 25a:	45 8b b3 8c 04 00 00 	mov    0x48c(%r11),%r14d
 261:	be 00 04 00 00       	mov    $0x400,%esi
 266:	ba 16 00 00 00       	mov    $0x16,%edx
 26b:	b9 01 00 00 00       	mov    $0x1,%ecx
 270:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 274:	48 89 df             	mov    %rbx,%rdi
 277:	45 89 f0             	mov    %r14d,%r8d
 27a:	e8 5d 1e ff ff       	call   0xffffffffffff20dc
 27f:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 286:	b9 26 04 00 00       	mov    $0x426,%ecx
 28b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 28f:	48 89 d6             	mov    %rdx,%rsi
 292:	89 4c 30 20          	mov    %ecx,0x20(%rax,%rsi,1)
 296:	ba 17 04 00 00       	mov    $0x417,%edx
 29b:	8d 4e 20             	lea    0x20(%rsi),%ecx
 29e:	48 89 df             	mov    %rbx,%rdi
 2a1:	4c 89 f0             	mov    %r14,%rax
 2a4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 2a8:	44 89 f6             	mov    %r14d,%esi
 2ab:	e8 c2 1e ff ff       	call   0xffffffffffff2172
 2b0:	4c 89 ff             	mov    %r15,%rdi
 2b3:	48 8b 8b b8 11 00 00 	mov    0x11b8(%rbx),%rcx
 2ba:	4c 8b 65 b8          	mov    -0x48(%rbp),%r12
 2be:	41 bd c4 09 00 00    	mov    $0x9c4,%r13d
 2c4:	31 c0                	xor    %eax,%eax
 2c6:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
 2ca:	45 89 e7             	mov    %r12d,%r15d
 2cd:	45 31 f6             	xor    %r14d,%r14d
 2d0:	89 f8                	mov    %edi,%eax
 2d2:	44 01 f0             	add    %r14d,%eax
 2d5:	be 14 00 00 00       	mov    $0x14,%esi
 2da:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 2df:	75 07                	jne    0x2e8
 2e1:	31 d2                	xor    %edx,%edx
 2e3:	83 fe ff             	cmp    $0xffffffff,%esi
 2e6:	74 03                	je     0x2eb
 2e8:	99                   	cltd
 2e9:	f7 fe                	idiv   %esi
 2eb:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
 2ef:	85 d2                	test   %edx,%edx
 2f1:	4c 8b 45 b0          	mov    -0x50(%rbp),%r8
 2f5:	75 1f                	jne    0x316
 2f7:	be 0a 00 00 00       	mov    $0xa,%esi
 2fc:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 300:	48 89 df             	mov    %rbx,%rdi
 303:	44 89 c2             	mov    %r8d,%edx
 306:	e8 21 1e ff ff       	call   0xffffffffffff212c
 30b:	4c 8b 45 b0          	mov    -0x50(%rbp),%r8
 30f:	48 8b 8b b8 11 00 00 	mov    0x11b8(%rbx),%rcx
 316:	42 8b 04 39          	mov    (%rcx,%r15,1),%eax
 31a:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 31e:	48 89 d6             	mov    %rdx,%rsi
 321:	89 44 31 10          	mov    %eax,0x10(%rcx,%rsi,1)
 325:	ba 2c 04 00 00       	mov    $0x42c,%edx
 32a:	8d 4e 10             	lea    0x10(%rsi),%ecx
 32d:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 331:	48 89 df             	mov    %rbx,%rdi
 334:	44 89 c6             	mov    %r8d,%esi
 337:	e8 36 1e ff ff       	call   0xffffffffffff2172
 33c:	48 8b 8b b8 11 00 00 	mov    0x11b8(%rbx),%rcx
 343:	45 8d 7f 04          	lea    0x4(%r15),%r15d
 347:	45 8d 76 01          	lea    0x1(%r14),%r14d
 34b:	45 39 f5             	cmp    %r14d,%r13d
 34e:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
 352:	0f 85 78 ff ff ff    	jne    0x2d0
 358:	45 8d a4 24 14 27 00 	lea    0x2714(%r12),%r12d
 35f:	00 
 360:	44 01 ef             	add    %r13d,%edi
 363:	45 8d 6d ff          	lea    -0x1(%r13),%r13d
 367:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 36b:	8d 40 01             	lea    0x1(%rax),%eax
 36e:	3d c4 09 00 00       	cmp    $0x9c4,%eax
 373:	0f 85 4d ff ff ff    	jne    0x2c6
 379:	b8 26 04 00 00       	mov    $0x426,%eax
 37e:	4c 8b 75 c8          	mov    -0x38(%rbp),%r14
 382:	42 89 04 31          	mov    %eax,(%rcx,%r14,1)
 386:	ba 30 04 00 00       	mov    $0x430,%edx
 38b:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
 38f:	48 89 df             	mov    %rbx,%rdi
 392:	4c 8b 7d b0          	mov    -0x50(%rbp),%r15
 396:	44 89 fe             	mov    %r15d,%esi
 399:	44 89 f1             	mov    %r14d,%ecx
 39c:	e8 d1 1d ff ff       	call   0xffffffffffff2172
 3a1:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 3a8:	be 41 04 00 00       	mov    $0x441,%esi
 3ad:	ba 16 00 00 00       	mov    $0x16,%edx
 3b2:	b9 01 00 00 00       	mov    $0x1,%ecx
 3b7:	48 89 df             	mov    %rbx,%rdi
 3ba:	45 89 f8             	mov    %r15d,%r8d
 3bd:	e8 1a 1d ff ff       	call   0xffffffffffff20dc
 3c2:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 3c9:	48 89 df             	mov    %rbx,%rdi
 3cc:	8b 75 c4             	mov    -0x3c(%rbp),%esi
 3cf:	e8 68 1c ff ff       	call   0xffffffffffff203c
 3d4:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 3db:	48 89 df             	mov    %rbx,%rdi
 3de:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
 3e2:	e8 55 1c ff ff       	call   0xffffffffffff203c
 3e7:	48 8b 83 b8 11 00 00 	mov    0x11b8(%rbx),%rax
 3ee:	41 8d 46 30          	lea    0x30(%r14),%eax
 3f2:	89 83 78 11 00 00    	mov    %eax,0x1178(%rbx)
 3f8:	31 c0                	xor    %eax,%eax
 3fa:	48 83 c4 58          	add    $0x58,%rsp
 3fe:	5b                   	pop    %rbx
 3ff:	41 5c                	pop    %r12
 401:	41 5d                	pop    %r13
 403:	41 5e                	pop    %r14
 405:	41 5f                	pop    %r15
 407:	5d                   	pop    %rbp
 408:	c3                   	ret

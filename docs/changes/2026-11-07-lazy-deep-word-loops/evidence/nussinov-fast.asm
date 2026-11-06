
/workspace/DTVM/work/pr642/word-native-nussinov-off/func-2-fast.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 78          	sub    $0x78,%rsp
   9:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
   d:	31 c0                	xor    %eax,%eax
   f:	31 c0                	xor    %eax,%eax
  11:	31 c0                	xor    %eax,%eax
  13:	31 c0                	xor    %eax,%eax
  15:	31 c0                	xor    %eax,%eax
  17:	89 45 94             	mov    %eax,-0x6c(%rbp)
  1a:	31 c0                	xor    %eax,%eax
  1c:	89 45 98             	mov    %eax,-0x68(%rbp)
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
  38:	31 c0                	xor    %eax,%eax
  3a:	89 45 b0             	mov    %eax,-0x50(%rbp)
  3d:	31 c0                	xor    %eax,%eax
  3f:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  42:	31 c0                	xor    %eax,%eax
  44:	89 45 b8             	mov    %eax,-0x48(%rbp)
  47:	31 c0                	xor    %eax,%eax
  49:	89 45 bc             	mov    %eax,-0x44(%rbp)
  4c:	31 c0                	xor    %eax,%eax
  4e:	89 45 c0             	mov    %eax,-0x40(%rbp)
  51:	31 c0                	xor    %eax,%eax
  53:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  56:	31 c0                	xor    %eax,%eax
  58:	89 45 c8             	mov    %eax,-0x38(%rbp)
  5b:	31 c0                	xor    %eax,%eax
  5d:	89 45 cc             	mov    %eax,-0x34(%rbp)
  60:	31 c0                	xor    %eax,%eax
  62:	89 45 d0             	mov    %eax,-0x30(%rbp)
  65:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
  6c:	ff 
  6d:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
  74:	8b 87 78 11 00 00    	mov    0x1178(%rdi),%eax
  7a:	89 c1                	mov    %eax,%ecx
  7c:	8d 49 d0             	lea    -0x30(%rcx),%ecx
  7f:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  82:	8d 40 d0             	lea    -0x30(%rax),%eax
  85:	89 87 78 11 00 00    	mov    %eax,0x1178(%rdi)
  8b:	31 c0                	xor    %eax,%eax
  8d:	89 45 d8             	mov    %eax,-0x28(%rbp)
  90:	be c4 09 00 00       	mov    $0x9c4,%esi
  95:	ba 01 00 00 00       	mov    $0x1,%edx
  9a:	e8 7f 1f ff ff       	call   0xffffffffffff201e
  9f:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  a3:	48 8b 8f b8 11 00 00 	mov    0x11b8(%rdi),%rcx
  aa:	89 45 dc             	mov    %eax,-0x24(%rbp)
  ad:	be 10 5e 5f 00       	mov    $0x5f5e10,%esi
  b2:	ba 04 00 00 00       	mov    $0x4,%edx
  b7:	e8 62 1f ff ff       	call   0xffffffffffff201e
  bc:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  c0:	48 8b 8f b8 11 00 00 	mov    0x11b8(%rdi),%rcx
  c7:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  cb:	89 45 f4             	mov    %eax,-0xc(%rbp)
  ce:	8b 45 d8             	mov    -0x28(%rbp),%eax
  d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  d5:	8b 55 dc             	mov    -0x24(%rbp),%edx
  d8:	89 c7                	mov    %eax,%edi
  da:	8d 70 01             	lea    0x1(%rax),%esi
  dd:	89 f0                	mov    %esi,%eax
  df:	89 45 d8             	mov    %eax,-0x28(%rbp)
  e2:	01 fa                	add    %edi,%edx
  e4:	83 e6 03             	and    $0x3,%esi
  e7:	40 88 34 11          	mov    %sil,(%rcx,%rdx,1)
  eb:	3d c4 09 00 00       	cmp    $0x9c4,%eax
  f0:	75 dc                	jne    0xce
  f2:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  f6:	8b 75 f4             	mov    -0xc(%rbp),%esi
  f9:	31 d2                	xor    %edx,%edx
  fb:	b9 40 78 7d 01       	mov    $0x17d7840,%ecx
 100:	e8 b3 20 ff ff       	call   0xffffffffffff21b8
 105:	89 c1                	mov    %eax,%ecx
 107:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 10b:	48 8b 80 b8 11 00 00 	mov    0x11b8(%rax),%rax
 112:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 116:	89 c8                	mov    %ecx,%eax
 118:	89 45 94             	mov    %eax,-0x6c(%rbp)
 11b:	8d 89 40 78 7d 01    	lea    0x17d7840(%rcx),%ecx
 121:	89 4d 98             	mov    %ecx,-0x68(%rbp)
 124:	8d 80 60 c6 7d 01    	lea    0x17dc660(%rax),%eax
 12a:	89 45 9c             	mov    %eax,-0x64(%rbp)
 12d:	b8 c3 09 00 00       	mov    $0x9c3,%eax
 132:	89 45 d8             	mov    %eax,-0x28(%rbp)
 135:	8b 45 d8             	mov    -0x28(%rbp),%eax
 138:	89 c1                	mov    %eax,%ecx
 13a:	89 4d f4             	mov    %ecx,-0xc(%rbp)
 13d:	3d c2 09 00 00       	cmp    $0x9c2,%eax
 142:	0f 87 ca 01 00 00    	ja     0x312
 148:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
 14b:	8b 75 f4             	mov    -0xc(%rbp),%esi
 14e:	8b 55 dc             	mov    -0x24(%rbp),%edx
 151:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
 155:	44 8b 45 94          	mov    -0x6c(%rbp),%r8d
 159:	45 89 c2             	mov    %r8d,%r10d
 15c:	89 f0                	mov    %esi,%eax
 15e:	44 8d 48 01          	lea    0x1(%rax),%r9d
 162:	44 89 c8             	mov    %r9d,%eax
 165:	89 45 a0             	mov    %eax,-0x60(%rbp)
 168:	45 69 c9 10 27 00 00 	imul   $0x2710,%r9d,%r9d
 16f:	45 01 ca             	add    %r9d,%r10d
 172:	45 89 d1             	mov    %r10d,%r9d
 175:	44 89 4d a4          	mov    %r9d,-0x5c(%rbp)
 179:	41 89 f3             	mov    %esi,%r11d
 17c:	41 c1 e3 02          	shl    $0x2,%r11d
 180:	45 89 d9             	mov    %r11d,%r9d
 183:	45 01 da             	add    %r11d,%r10d
 186:	46 8b 14 17          	mov    (%rdi,%r10,1),%r10d
 18a:	44 89 55 a8          	mov    %r10d,-0x58(%rbp)
 18e:	41 89 f2             	mov    %esi,%r10d
 191:	45 69 d2 10 27 00 00 	imul   $0x2710,%r10d,%r10d
 198:	45 01 d0             	add    %r10d,%r8d
 19b:	45 89 c2             	mov    %r8d,%r10d
 19e:	44 89 55 ac          	mov    %r10d,-0x54(%rbp)
 1a2:	45 01 c8             	add    %r9d,%r8d
 1a5:	42 8b 3c 07          	mov    (%rdi,%r8,1),%edi
 1a9:	89 7d d8             	mov    %edi,-0x28(%rbp)
 1ac:	01 f2                	add    %esi,%edx
 1ae:	89 55 b0             	mov    %edx,-0x50(%rbp)
 1b1:	31 d2                	xor    %edx,%edx
 1b3:	89 55 b4             	mov    %edx,-0x4c(%rbp)
 1b6:	89 4d b8             	mov    %ecx,-0x48(%rbp)
 1b9:	89 45 bc             	mov    %eax,-0x44(%rbp)
 1bc:	8b 4d bc             	mov    -0x44(%rbp),%ecx
 1bf:	8b 45 f4             	mov    -0xc(%rbp),%eax
 1c2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 1c6:	8b 5d d8             	mov    -0x28(%rbp),%ebx
 1c9:	44 8b 45 a4          	mov    -0x5c(%rbp),%r8d
 1cd:	8b 75 ac             	mov    -0x54(%rbp),%esi
 1d0:	89 cf                	mov    %ecx,%edi
 1d2:	c1 e7 02             	shl    $0x2,%edi
 1d5:	41 89 f9             	mov    %edi,%r9d
 1d8:	01 fe                	add    %edi,%esi
 1da:	89 f7                	mov    %esi,%edi
 1dc:	89 7d c4             	mov    %edi,-0x3c(%rbp)
 1df:	45 01 c8             	add    %r9d,%r8d
 1e2:	46 8b 04 02          	mov    (%rdx,%r8,1),%r8d
 1e6:	45 89 c2             	mov    %r8d,%r10d
 1e9:	44 89 55 c8          	mov    %r10d,-0x38(%rbp)
 1ed:	41 89 d9             	mov    %ebx,%r9d
 1f0:	8b 3c 3a             	mov    (%rdx,%rdi,1),%edi
 1f3:	41 89 fb             	mov    %edi,%r11d
 1f6:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
 1fa:	41 39 db             	cmp    %ebx,%r11d
 1fd:	41 0f 4c f9          	cmovl  %r9d,%edi
 201:	41 89 f9             	mov    %edi,%r9d
 204:	45 39 d1             	cmp    %r10d,%r9d
 207:	41 0f 4c f8          	cmovl  %r8d,%edi
 20b:	41 89 f8             	mov    %edi,%r8d
 20e:	44 89 45 d8          	mov    %r8d,-0x28(%rbp)
 212:	89 3c 32             	mov    %edi,(%rdx,%rsi,1)
 215:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 218:	39 c8                	cmp    %ecx,%eax
 21a:	73 2a                	jae    0x246
 21c:	8b 45 a8             	mov    -0x58(%rbp),%eax
 21f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 223:	8b 75 b0             	mov    -0x50(%rbp),%esi
 226:	8b 7d bc             	mov    -0x44(%rbp),%edi
 229:	8b 4d dc             	mov    -0x24(%rbp),%ecx
 22c:	01 f9                	add    %edi,%ecx
 22e:	0f be 0c 0a          	movsbl (%rdx,%rcx,1),%ecx
 232:	0f be 14 32          	movsbl (%rdx,%rsi,1),%edx
 236:	01 d1                	add    %edx,%ecx
 238:	83 f9 03             	cmp    $0x3,%ecx
 23b:	0f 94 c1             	sete   %cl
 23e:	0f b6 c9             	movzbl %cl,%ecx
 241:	01 c8                	add    %ecx,%eax
 243:	89 45 a8             	mov    %eax,-0x58(%rbp)
 246:	8b 4d bc             	mov    -0x44(%rbp),%ecx
 249:	8b 45 a0             	mov    -0x60(%rbp),%eax
 24c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 250:	44 8b 4d d8          	mov    -0x28(%rbp),%r9d
 254:	44 8b 55 a8          	mov    -0x58(%rbp),%r10d
 258:	8b 75 c4             	mov    -0x3c(%rbp),%esi
 25b:	45 89 d0             	mov    %r10d,%r8d
 25e:	44 89 cf             	mov    %r9d,%edi
 261:	45 39 d1             	cmp    %r10d,%r9d
 264:	41 0f 4c f8          	cmovl  %r8d,%edi
 268:	41 89 f8             	mov    %edi,%r8d
 26b:	44 89 45 d8          	mov    %r8d,-0x28(%rbp)
 26f:	89 3c 32             	mov    %edi,(%rdx,%rsi,1)
 272:	39 c8                	cmp    %ecx,%eax
 274:	73 6e                	jae    0x2e4
 276:	8b 45 b4             	mov    -0x4c(%rbp),%eax
 279:	8b 4d b8             	mov    -0x48(%rbp),%ecx
 27c:	8b 55 98             	mov    -0x68(%rbp),%edx
 27f:	89 55 a8             	mov    %edx,-0x58(%rbp)
 282:	89 4d c0             	mov    %ecx,-0x40(%rbp)
 285:	89 45 cc             	mov    %eax,-0x34(%rbp)
 288:	8b 45 cc             	mov    -0x34(%rbp),%eax
 28b:	8b 4d c0             	mov    -0x40(%rbp),%ecx
 28e:	8b 55 a8             	mov    -0x58(%rbp),%edx
 291:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
 295:	44 8b 55 d8          	mov    -0x28(%rbp),%r10d
 299:	8b 7d c4             	mov    -0x3c(%rbp),%edi
 29c:	41 89 c8             	mov    %ecx,%r8d
 29f:	46 8b 0c 06          	mov    (%rsi,%r8,1),%r9d
 2a3:	41 89 d0             	mov    %edx,%r8d
 2a6:	46 8b 04 06          	mov    (%rsi,%r8,1),%r8d
 2aa:	45 01 c1             	add    %r8d,%r9d
 2ad:	45 89 cb             	mov    %r9d,%r11d
 2b0:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
 2b4:	45 89 d0             	mov    %r10d,%r8d
 2b7:	45 39 da             	cmp    %r11d,%r10d
 2ba:	45 0f 4c c1          	cmovl  %r9d,%r8d
 2be:	45 89 c1             	mov    %r8d,%r9d
 2c1:	44 89 4d d8          	mov    %r9d,-0x28(%rbp)
 2c5:	44 89 04 3e          	mov    %r8d,(%rsi,%rdi,1)
 2c9:	8d 52 04             	lea    0x4(%rdx),%edx
 2cc:	89 55 a8             	mov    %edx,-0x58(%rbp)
 2cf:	8d 89 10 27 00 00    	lea    0x2710(%rcx),%ecx
 2d5:	89 4d c0             	mov    %ecx,-0x40(%rbp)
 2d8:	8d 40 ff             	lea    -0x1(%rax),%eax
 2db:	89 c1                	mov    %eax,%ecx
 2dd:	89 4d cc             	mov    %ecx,-0x34(%rbp)
 2e0:	85 c0                	test   %eax,%eax
 2e2:	75 a4                	jne    0x288
 2e4:	8b 45 bc             	mov    -0x44(%rbp),%eax
 2e7:	8b 4d c8             	mov    -0x38(%rbp),%ecx
 2ea:	8b 55 b4             	mov    -0x4c(%rbp),%edx
 2ed:	8b 75 b8             	mov    -0x48(%rbp),%esi
 2f0:	8d 76 04             	lea    0x4(%rsi),%esi
 2f3:	89 75 b8             	mov    %esi,-0x48(%rbp)
 2f6:	8d 52 01             	lea    0x1(%rdx),%edx
 2f9:	89 55 b4             	mov    %edx,-0x4c(%rbp)
 2fc:	89 4d a8             	mov    %ecx,-0x58(%rbp)
 2ff:	8d 40 01             	lea    0x1(%rax),%eax
 302:	89 c1                	mov    %eax,%ecx
 304:	89 4d bc             	mov    %ecx,-0x44(%rbp)
 307:	3d c4 09 00 00       	cmp    $0x9c4,%eax
 30c:	0f 85 aa fe ff ff    	jne    0x1bc
 312:	8b 45 f4             	mov    -0xc(%rbp),%eax
 315:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
 318:	8b 55 98             	mov    -0x68(%rbp),%edx
 31b:	8d 92 ec d8 ff ff    	lea    -0x2714(%rdx),%edx
 321:	89 55 98             	mov    %edx,-0x68(%rbp)
 324:	8d 89 ec d8 ff ff    	lea    -0x2714(%rcx),%ecx
 32a:	89 4d 9c             	mov    %ecx,-0x64(%rbp)
 32d:	89 c1                	mov    %eax,%ecx
 32f:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 332:	89 4d d8             	mov    %ecx,-0x28(%rbp)
 335:	85 c0                	test   %eax,%eax
 337:	0f 85 f8 fd ff ff    	jne    0x135
 33d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 341:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 345:	31 c9                	xor    %ecx,%ecx
 347:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
 34a:	44 8b 80 8c 04 00 00 	mov    0x48c(%rax),%r8d
 351:	44 89 c0             	mov    %r8d,%eax
 354:	89 45 a8             	mov    %eax,-0x58(%rbp)
 357:	be 00 04 00 00       	mov    $0x400,%esi
 35c:	ba 16 00 00 00       	mov    $0x16,%edx
 361:	b9 01 00 00 00       	mov    $0x1,%ecx
 366:	e8 71 1d ff ff       	call   0xffffffffffff20dc
 36b:	8b 75 a8             	mov    -0x58(%rbp),%esi
 36e:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 372:	89 c1                	mov    %eax,%ecx
 374:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 377:	48 8b 8f b8 11 00 00 	mov    0x11b8(%rdi),%rcx
 37e:	89 c2                	mov    %eax,%edx
 380:	41 b8 26 04 00 00    	mov    $0x426,%r8d
 386:	44 89 44 11 20       	mov    %r8d,0x20(%rcx,%rdx,1)
 38b:	ba 17 04 00 00       	mov    $0x417,%edx
 390:	8d 48 20             	lea    0x20(%rax),%ecx
 393:	e8 da 1d ff ff       	call   0xffffffffffff2172
 398:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 39c:	89 c2                	mov    %eax,%edx
 39e:	8b 45 94             	mov    -0x6c(%rbp),%eax
 3a1:	48 8b 89 b8 11 00 00 	mov    0x11b8(%rcx),%rcx
 3a8:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
 3ac:	89 45 c0             	mov    %eax,-0x40(%rbp)
 3af:	b8 c4 09 00 00       	mov    $0x9c4,%eax
 3b4:	89 45 bc             	mov    %eax,-0x44(%rbp)
 3b7:	31 c0                	xor    %eax,%eax
 3b9:	89 45 98             	mov    %eax,-0x68(%rbp)
 3bc:	8b 45 c0             	mov    -0x40(%rbp),%eax
 3bf:	89 45 d8             	mov    %eax,-0x28(%rbp)
 3c2:	31 c0                	xor    %eax,%eax
 3c4:	89 45 f4             	mov    %eax,-0xc(%rbp)
 3c7:	8b 4d f4             	mov    -0xc(%rbp),%ecx
 3ca:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 3cd:	01 c8                	add    %ecx,%eax
 3cf:	89 45 8c             	mov    %eax,-0x74(%rbp)
 3d2:	b9 14 00 00 00       	mov    $0x14,%ecx
 3d7:	89 4d 90             	mov    %ecx,-0x70(%rbp)
 3da:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 3df:	75 0d                	jne    0x3ee
 3e1:	8b 45 90             	mov    -0x70(%rbp),%eax
 3e4:	31 d2                	xor    %edx,%edx
 3e6:	89 55 88             	mov    %edx,-0x78(%rbp)
 3e9:	83 f8 ff             	cmp    $0xffffffff,%eax
 3ec:	74 0c                	je     0x3fa
 3ee:	8b 4d 90             	mov    -0x70(%rbp),%ecx
 3f1:	8b 45 8c             	mov    -0x74(%rbp),%eax
 3f4:	99                   	cltd
 3f5:	f7 f9                	idiv   %ecx
 3f7:	89 55 88             	mov    %edx,-0x78(%rbp)
 3fa:	8b 45 88             	mov    -0x78(%rbp),%eax
 3fd:	85 c0                	test   %eax,%eax
 3ff:	75 22                	jne    0x423
 401:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 405:	8b 55 a8             	mov    -0x58(%rbp),%edx
 408:	be 0a 00 00 00       	mov    $0xa,%esi
 40d:	e8 1a 1d ff ff       	call   0xffffffffffff212c
 412:	89 c1                	mov    %eax,%ecx
 414:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 418:	48 8b 80 b8 11 00 00 	mov    0x11b8(%rax),%rax
 41f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 423:	44 8b 45 d8          	mov    -0x28(%rbp),%r8d
 427:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 42b:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 42f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 432:	8b 75 a8             	mov    -0x58(%rbp),%esi
 435:	89 c2                	mov    %eax,%edx
 437:	46 8b 04 01          	mov    (%rcx,%r8,1),%r8d
 43b:	44 89 44 11 10       	mov    %r8d,0x10(%rcx,%rdx,1)
 440:	ba 2c 04 00 00       	mov    $0x42c,%edx
 445:	8d 48 10             	lea    0x10(%rax),%ecx
 448:	e8 25 1d ff ff       	call   0xffffffffffff2172
 44d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
 451:	8b 55 d8             	mov    -0x28(%rbp),%edx
 454:	8b 4d f4             	mov    -0xc(%rbp),%ecx
 457:	89 c7                	mov    %eax,%edi
 459:	8b 45 bc             	mov    -0x44(%rbp),%eax
 45c:	48 8b b6 b8 11 00 00 	mov    0x11b8(%rsi),%rsi
 463:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
 467:	8d 52 04             	lea    0x4(%rdx),%edx
 46a:	89 55 d8             	mov    %edx,-0x28(%rbp)
 46d:	8d 49 01             	lea    0x1(%rcx),%ecx
 470:	89 ca                	mov    %ecx,%edx
 472:	89 55 f4             	mov    %edx,-0xc(%rbp)
 475:	39 c8                	cmp    %ecx,%eax
 477:	0f 85 4a ff ff ff    	jne    0x3c7
 47d:	8b 45 98             	mov    -0x68(%rbp),%eax
 480:	8b 4d bc             	mov    -0x44(%rbp),%ecx
 483:	8b 55 c4             	mov    -0x3c(%rbp),%edx
 486:	8b 75 c0             	mov    -0x40(%rbp),%esi
 489:	8d b6 14 27 00 00    	lea    0x2714(%rsi),%esi
 48f:	89 75 c0             	mov    %esi,-0x40(%rbp)
 492:	89 ce                	mov    %ecx,%esi
 494:	01 f2                	add    %esi,%edx
 496:	89 55 c4             	mov    %edx,-0x3c(%rbp)
 499:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 49c:	89 4d bc             	mov    %ecx,-0x44(%rbp)
 49f:	8d 40 01             	lea    0x1(%rax),%eax
 4a2:	89 c1                	mov    %eax,%ecx
 4a4:	89 4d 98             	mov    %ecx,-0x68(%rbp)
 4a7:	3d c4 09 00 00       	cmp    $0x9c4,%eax
 4ac:	0f 85 0a ff ff ff    	jne    0x3bc
 4b2:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 4b6:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
 4b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 4bd:	8b 75 a8             	mov    -0x58(%rbp),%esi
 4c0:	89 ca                	mov    %ecx,%edx
 4c2:	41 b8 26 04 00 00    	mov    $0x426,%r8d
 4c8:	44 89 04 10          	mov    %r8d,(%rax,%rdx,1)
 4cc:	ba 30 04 00 00       	mov    $0x430,%edx
 4d1:	e8 9c 1c ff ff       	call   0xffffffffffff2172
 4d6:	44 8b 45 a8          	mov    -0x58(%rbp),%r8d
 4da:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 4de:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
 4e5:	be 41 04 00 00       	mov    $0x441,%esi
 4ea:	ba 16 00 00 00       	mov    $0x16,%edx
 4ef:	b9 01 00 00 00       	mov    $0x1,%ecx
 4f4:	e8 e3 1b ff ff       	call   0xffffffffffff20dc
 4f9:	8b 75 dc             	mov    -0x24(%rbp),%esi
 4fc:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 500:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
 507:	e8 30 1b ff ff       	call   0xffffffffffff203c
 50c:	8b 75 94             	mov    -0x6c(%rbp),%esi
 50f:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
 513:	48 8b 87 b8 11 00 00 	mov    0x11b8(%rdi),%rax
 51a:	e8 1d 1b ff ff       	call   0xffffffffffff203c
 51f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
 522:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 526:	48 8b 90 b8 11 00 00 	mov    0x11b8(%rax),%rdx
 52d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
 531:	8d 49 30             	lea    0x30(%rcx),%ecx
 534:	89 88 78 11 00 00    	mov    %ecx,0x1178(%rax)
 53a:	31 c0                	xor    %eax,%eax
 53c:	89 45 84             	mov    %eax,-0x7c(%rbp)
 53f:	8b 45 84             	mov    -0x7c(%rbp),%eax
 542:	48 83 c4 78          	add    $0x78,%rsp
 546:	5b                   	pop    %rbx
 547:	5d                   	pop    %rbp
 548:	c3                   	ret

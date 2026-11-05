
work/wapm-followup/trace-pi1000/func-133558-52-1.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
   b:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
  12:	ff
  13:	48 b8 00 00 00 00 00 	movabs $0xbff0000000000000,%rax
  1a:	00 f0 bf
  1d:	66 48 0f 6e c8       	movq   %rax,%xmm1
  22:	f2 0f 11 8d 70 ff ff 	movsd  %xmm1,-0x90(%rbp)
  29:	ff
  2a:	48 b8 00 00 00 00 00 	movabs $0x4350000000000000,%rax
  31:	00 50 43
  34:	66 48 0f 6e c8       	movq   %rax,%xmm1
  39:	f2 0f 11 8d 78 ff ff 	movsd  %xmm1,-0x88(%rbp)
  40:	ff
  41:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
  48:	00 00 40
  4b:	66 48 0f 6e c8       	movq   %rax,%xmm1
  50:	f2 0f 11 4d 80       	movsd  %xmm1,-0x80(%rbp)
  55:	48 b8 00 00 00 00 00 	movabs $0x3fe0000000000000,%rax
  5c:	00 e0 3f
  5f:	66 48 0f 6e c8       	movq   %rax,%xmm1
  64:	f2 0f 11 4d 88       	movsd  %xmm1,-0x78(%rbp)
  69:	48 b8 00 00 e0 fe 42 	movabs $0x3fe62e42fee00000,%rax
  70:	2e e6 3f
  73:	66 48 0f 6e c8       	movq   %rax,%xmm1
  78:	f2 0f 11 4d 90       	movsd  %xmm1,-0x70(%rbp)
  7d:	48 b8 76 3c 79 35 ef 	movabs $0x3dea39ef35793c76,%rax
  84:	39 ea 3d
  87:	66 48 0f 6e c8       	movq   %rax,%xmm1
  8c:	f2 0f 11 4d 98       	movsd  %xmm1,-0x68(%rbp)
  91:	48 b8 9f c6 78 d0 09 	movabs $0x3fc39a09d078c69f,%rax
  98:	9a c3 3f
  9b:	66 48 0f 6e c8       	movq   %rax,%xmm1
  a0:	f2 0f 11 4d a0       	movsd  %xmm1,-0x60(%rbp)
  a5:	48 b8 af 78 8e 1d c5 	movabs $0x3fcc71c51d8e78af,%rax
  ac:	71 cc 3f
  af:	66 48 0f 6e c8       	movq   %rax,%xmm1
  b4:	f2 0f 11 4d a8       	movsd  %xmm1,-0x58(%rbp)
  b9:	48 b8 04 fa 97 99 99 	movabs $0x3fd999999997fa04,%rax
  c0:	99 d9 3f
  c3:	66 48 0f 6e c8       	movq   %rax,%xmm1
  c8:	f2 0f 11 4d b0       	movsd  %xmm1,-0x50(%rbp)
  cd:	48 b8 44 52 3e df 12 	movabs $0x3fc2f112df3e5244,%rax
  d4:	f1 c2 3f
  d7:	66 48 0f 6e c8       	movq   %rax,%xmm1
  dc:	f2 0f 11 4d b8       	movsd  %xmm1,-0x48(%rbp)
  e1:	48 b8 de 03 cb 96 64 	movabs $0x3fc7466496cb03de,%rax
  e8:	46 c7 3f
  eb:	66 48 0f 6e c8       	movq   %rax,%xmm1
  f0:	f2 0f 11 4d c0       	movsd  %xmm1,-0x40(%rbp)
  f5:	48 b8 59 93 22 94 24 	movabs $0x3fd2492494229359,%rax
  fc:	49 d2 3f
  ff:	66 48 0f 6e c8       	movq   %rax,%xmm1
 104:	f2 0f 11 4d c8       	movsd  %xmm1,-0x38(%rbp)
 109:	48 b8 93 55 55 55 55 	movabs $0x3fe5555555555593,%rax
 110:	55 e5 3f
 113:	66 48 0f 6e c8       	movq   %rax,%xmm1
 118:	f2 0f 11 4d d0       	movsd  %xmm1,-0x30(%rbp)
 11d:	31 c0                	xor    %eax,%eax
 11f:	31 c0                	xor    %eax,%eax
 121:	89 45 dc             	mov    %eax,-0x24(%rbp)
 124:	31 c0                	xor    %eax,%eax
 126:	89 45 e0             	mov    %eax,-0x20(%rbp)
 129:	31 c0                	xor    %eax,%eax
 12b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
 12e:	0f 57 c9             	xorps  %xmm1,%xmm1
 131:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
 136:	0f 57 c9             	xorps  %xmm1,%xmm1
 139:	f2 0f 11 4d f0       	movsd  %xmm1,-0x10(%rbp)
 13e:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
 145:	ff
 146:	66 48 0f 7e c0       	movq   %xmm0,%rax
 14b:	48 89 c1             	mov    %rax,%rcx
 14e:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 152:	48 85 c0             	test   %rax,%rax
 155:	7c 16                	jl     0x16d
 157:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 15b:	48 c1 e8 20          	shr    $0x20,%rax
 15f:	89 c0                	mov    %eax,%eax
 161:	89 c1                	mov    %eax,%ecx
 163:	89 4d dc             	mov    %ecx,-0x24(%rbp)
 166:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
 16b:	77 63                	ja     0x1d0
 16d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 171:	48 b9 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rcx
 178:	ff ff 7f
 17b:	48 21 c8             	and    %rcx,%rax
 17e:	48 85 c0             	test   %rax,%rax
 181:	75 24                	jne    0x1a7
 183:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
 18a:	ff
 18b:	f2 0f 10 95 68 ff ff 	movsd  -0x98(%rbp),%xmm2
 192:	ff
 193:	0f 28 ca             	movaps %xmm2,%xmm1
 196:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
 19a:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
 19e:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
 1a5:	5d                   	pop    %rbp
 1a6:	c3                   	ret
 1a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1ab:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
 1af:	7f 65                	jg     0x216
 1b1:	f2 0f 10 8d 68 ff ff 	movsd  -0x98(%rbp),%xmm1
 1b8:	ff
 1b9:	0f 28 c1             	movaps %xmm1,%xmm0
 1bc:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
 1c0:	0f 57 c9             	xorps  %xmm1,%xmm1
 1c3:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
 1c7:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
 1ce:	5d                   	pop    %rbp
 1cf:	c3                   	ret
 1d0:	8b 45 dc             	mov    -0x24(%rbp),%eax
 1d3:	3d ff ff ef 7f       	cmp    $0x7fefffff,%eax
 1d8:	0f 87 bc 01 00 00    	ja     0x39a
 1de:	8b 45 dc             	mov    -0x24(%rbp),%eax
 1e1:	b9 00 00 f0 3f       	mov    $0x3ff00000,%ecx
 1e6:	89 4d e0             	mov    %ecx,-0x20(%rbp)
 1e9:	b9 01 fc ff ff       	mov    $0xfffffc01,%ecx
 1ee:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
 1f1:	3d 00 00 f0 3f       	cmp    $0x3ff00000,%eax
 1f6:	74 08                	je     0x200
 1f8:	8b 45 dc             	mov    -0x24(%rbp),%eax
 1fb:	89 45 e0             	mov    %eax,-0x20(%rbp)
 1fe:	eb 47                	jmp    0x247
 200:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 204:	89 c0                	mov    %eax,%eax
 206:	85 c0                	test   %eax,%eax
 208:	75 3d                	jne    0x247
 20a:	0f 57 c0             	xorps  %xmm0,%xmm0
 20d:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
 214:	5d                   	pop    %rbp
 215:	c3                   	ret
 216:	f2 0f 10 8d 78 ff ff 	movsd  -0x88(%rbp),%xmm1
 21d:	ff
 21e:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
 225:	ff
 226:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 22a:	66 48 0f 7e c0       	movq   %xmm0,%rax
 22f:	48 89 c1             	mov    %rax,%rcx
 232:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 236:	48 c1 e8 20          	shr    $0x20,%rax
 23a:	89 c0                	mov    %eax,%eax
 23c:	89 45 e0             	mov    %eax,-0x20(%rbp)
 23f:	b8 cb fb ff ff       	mov    $0xfffffbcb,%eax
 244:	89 45 e4             	mov    %eax,-0x1c(%rbp)
 247:	f2 44 0f 10 6d c0    	movsd  -0x40(%rbp),%xmm13
 24d:	f2 44 0f 10 75 b8    	movsd  -0x48(%rbp),%xmm14
 253:	f2 44 0f 10 5d 90    	movsd  -0x70(%rbp),%xmm11
 259:	f2 0f 10 75 88       	movsd  -0x78(%rbp),%xmm6
 25e:	f2 0f 10 7d 80       	movsd  -0x80(%rbp),%xmm7
 263:	f2 0f 10 9d 70 ff ff 	movsd  -0x90(%rbp),%xmm3
 26a:	ff
 26b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 26f:	8b 45 e0             	mov    -0x20(%rbp),%eax
 272:	8b 55 e4             	mov    -0x1c(%rbp),%edx
 275:	8d b0 62 5f 09 00    	lea    0x95f62(%rax),%esi
 27b:	89 f0                	mov    %esi,%eax
 27d:	89 45 dc             	mov    %eax,-0x24(%rbp)
 280:	c1 ee 14             	shr    $0x14,%esi
 283:	01 f2                	add    %esi,%edx
 285:	0f 57 c0             	xorps  %xmm0,%xmm0
 288:	f2 0f 2a c2          	cvtsi2sd %edx,%xmm0
 28c:	0f 28 d0             	movaps %xmm0,%xmm2
 28f:	25 ff ff 0f 00       	and    $0xfffff,%eax
 294:	8d 80 9e a0 e6 3f    	lea    0x3fe6a09e(%rax),%eax
 29a:	89 c0                	mov    %eax,%eax
 29c:	48 c1 e0 20          	shl    $0x20,%rax
 2a0:	48 ba ff ff ff ff 00 	movabs $0xffffffff,%rdx
 2a7:	00 00 00
 2aa:	48 21 d1             	and    %rdx,%rcx
 2ad:	48 09 c8             	or     %rcx,%rax
 2b0:	66 48 0f 6e c8       	movq   %rax,%xmm1
 2b5:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
 2b9:	0f 28 d9             	movaps %xmm1,%xmm3
 2bc:	0f 28 e3             	movaps %xmm3,%xmm4
 2bf:	0f 28 eb             	movaps %xmm3,%xmm5
 2c2:	f2 0f 58 ef          	addsd  %xmm7,%xmm5
 2c6:	f2 0f 5e e5          	divsd  %xmm5,%xmm4
 2ca:	0f 28 fc             	movaps %xmm4,%xmm7
 2cd:	0f 28 eb             	movaps %xmm3,%xmm5
 2d0:	f2 0f 59 de          	mulsd  %xmm6,%xmm3
 2d4:	f2 0f 59 eb          	mulsd  %xmm3,%xmm5
 2d8:	0f 28 dd             	movaps %xmm5,%xmm3
 2db:	f2 0f 11 5d f0       	movsd  %xmm3,-0x10(%rbp)
 2e0:	0f 28 f7             	movaps %xmm7,%xmm6
 2e3:	f2 0f 59 f7          	mulsd  %xmm7,%xmm6
 2e7:	0f 28 fe             	movaps %xmm6,%xmm7
 2ea:	f2 0f 11 7d e8       	movsd  %xmm7,-0x18(%rbp)
 2ef:	44 0f 28 c7          	movaps %xmm7,%xmm8
 2f3:	f2 41 0f 59 f0       	mulsd  %xmm8,%xmm6
 2f8:	44 0f 28 e6          	movaps %xmm6,%xmm12
 2fc:	45 0f 28 fc          	movaps %xmm12,%xmm15
 300:	45 0f 28 cc          	movaps %xmm12,%xmm9
 304:	45 0f 28 c4          	movaps %xmm12,%xmm8
 308:	45 0f 28 d4          	movaps %xmm12,%xmm10
 30c:	f2 41 0f 59 c3       	mulsd  %xmm11,%xmm0
 311:	f2 44 0f 10 5d 98    	movsd  -0x68(%rbp),%xmm11
 317:	f2 41 0f 59 d3       	mulsd  %xmm11,%xmm2
 31c:	f2 44 0f 10 5d a0    	movsd  -0x60(%rbp),%xmm11
 322:	f2 45 0f 59 cb       	mulsd  %xmm11,%xmm9
 327:	f2 44 0f 10 5d a8    	movsd  -0x58(%rbp),%xmm11
 32d:	f2 45 0f 58 cb       	addsd  %xmm11,%xmm9
 332:	f2 44 0f 10 5d c8    	movsd  -0x38(%rbp),%xmm11
 338:	f2 45 0f 59 f9       	mulsd  %xmm9,%xmm15
 33d:	f2 44 0f 10 4d b0    	movsd  -0x50(%rbp),%xmm9
 343:	f2 45 0f 58 f9       	addsd  %xmm9,%xmm15
 348:	f2 44 0f 10 4d d0    	movsd  -0x30(%rbp),%xmm9
 34e:	f2 41 0f 59 f7       	mulsd  %xmm15,%xmm6
 353:	f2 45 0f 59 e6       	mulsd  %xmm14,%xmm12
 358:	f2 45 0f 58 e5       	addsd  %xmm13,%xmm12
 35d:	f2 45 0f 59 d4       	mulsd  %xmm12,%xmm10
 362:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
 367:	f2 45 0f 59 c2       	mulsd  %xmm10,%xmm8
 36c:	f2 45 0f 58 c1       	addsd  %xmm9,%xmm8
 371:	f2 41 0f 59 f8       	mulsd  %xmm8,%xmm7
 376:	f2 0f 58 f7          	addsd  %xmm7,%xmm6
 37a:	f2 0f 58 ee          	addsd  %xmm6,%xmm5
 37e:	f2 0f 59 e5          	mulsd  %xmm5,%xmm4
 382:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
 386:	f2 0f 5c d3          	subsd  %xmm3,%xmm2
 38a:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
 38e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
 392:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
 399:	ff
 39a:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
 3a1:	ff
 3a2:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
 3a9:	ff
 3aa:	f2 0f 10 85 60 ff ff 	movsd  -0xa0(%rbp),%xmm0
 3b1:	ff
 3b2:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
 3b9:	5d                   	pop    %rbp
 3ba:	c3                   	ret

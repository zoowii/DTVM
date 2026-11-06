
work/fast-ra-liveout/trace-exact/func-166582-51-1.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 58          	sub    $0x58,%rsp
   8:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
   d:	0f 28 c1             	movaps %xmm1,%xmm0
  10:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  15:	31 c0                	xor    %eax,%eax
  17:	31 c0                	xor    %eax,%eax
  19:	31 c0                	xor    %eax,%eax
  1b:	31 c0                	xor    %eax,%eax
  1d:	31 c0                	xor    %eax,%eax
  1f:	31 c0                	xor    %eax,%eax
  21:	31 c0                	xor    %eax,%eax
  23:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
  2a:	ff
  2b:	66 48 0f 7e c0       	movq   %xmm0,%rax
  30:	48 89 c1             	mov    %rax,%rcx
  33:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  37:	48 c1 e0 01          	shl    $0x1,%rax
  3b:	48 89 c1             	mov    %rax,%rcx
  3e:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  42:	48 85 c0             	test   %rax,%rax
  45:	74 43                	je     0x8a
  47:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
  4c:	0f 28 c1             	movaps %xmm1,%xmm0
  4f:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  53:	0f 95 c0             	setne  %al
  56:	0f 9a c1             	setp   %cl
  59:	08 c8                	or     %cl,%al
  5b:	0f b6 c0             	movzbl %al,%eax
  5e:	85 c0                	test   %eax,%eax
  60:	75 28                	jne    0x8a
  62:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
  67:	66 48 0f 7e c0       	movq   %xmm0,%rax
  6c:	48 89 c1             	mov    %rax,%rcx
  6f:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  73:	48 c1 e8 34          	shr    $0x34,%rax
  77:	89 c0                	mov    %eax,%eax
  79:	25 ff 07 00 00       	and    $0x7ff,%eax
  7e:	89 c1                	mov    %eax,%ecx
  80:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  83:	3d ff 07 00 00       	cmp    $0x7ff,%eax
  88:	75 1b                	jne    0xa5
  8a:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
  8f:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
  94:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  98:	0f 28 c8             	movaps %xmm0,%xmm1
  9b:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  9f:	48 83 c4 58          	add    $0x58,%rsp
  a3:	5d                   	pop    %rbp
  a4:	c3                   	ret
  a5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  a9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  ad:	48 c1 e0 01          	shl    $0x1,%rax
  b1:	48 89 c2             	mov    %rax,%rdx
  b4:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  b8:	48 39 c8             	cmp    %rcx,%rax
  bb:	0f 86 66 02 00 00    	jbe    0x327
  c1:	8b 45 dc             	mov    -0x24(%rbp),%eax
  c4:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  c8:	48 c1 e9 34          	shr    $0x34,%rcx
  cc:	89 c9                	mov    %ecx,%ecx
  ce:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
  d4:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
  d7:	85 c0                	test   %eax,%eax
  d9:	75 50                	jne    0x12b
  db:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  df:	31 c9                	xor    %ecx,%ecx
  e1:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  e4:	48 c1 e0 0c          	shl    $0xc,%rax
  e8:	48 89 c1             	mov    %rax,%rcx
  eb:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  ef:	48 85 c0             	test   %rax,%rax
  f2:	7c 1e                	jl     0x112
  f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  f8:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  fb:	8d 49 ff             	lea    -0x1(%rcx),%ecx
  fe:	89 4d dc             	mov    %ecx,-0x24(%rbp)
 101:	48 c1 e0 01          	shl    $0x1,%rax
 105:	48 89 c1             	mov    %rax,%rcx
 108:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 10c:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
 110:	7f e2                	jg     0xf4
 112:	8b 55 dc             	mov    -0x24(%rbp),%edx
 115:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 119:	b9 01 00 00 00       	mov    $0x1,%ecx
 11e:	29 d1                	sub    %edx,%ecx
 120:	89 c9                	mov    %ecx,%ecx
 122:	48 d3 e0             	shl    %cl,%rax
 125:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 129:	eb 22                	jmp    0x14d
 12b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 12f:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
 136:	ff 0f 00
 139:	48 21 c8             	and    %rcx,%rax
 13c:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
 143:	00 10 00
 146:	48 09 c8             	or     %rcx,%rax
 149:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 14d:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 150:	85 c0                	test   %eax,%eax
 152:	75 50                	jne    0x1a4
 154:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 158:	31 c9                	xor    %ecx,%ecx
 15a:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
 15d:	48 c1 e0 0c          	shl    $0xc,%rax
 161:	48 89 c1             	mov    %rax,%rcx
 164:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
 168:	48 85 c0             	test   %rax,%rax
 16b:	7c 1e                	jl     0x18b
 16d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 171:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
 174:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 177:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
 17a:	48 c1 e0 01          	shl    $0x1,%rax
 17e:	48 89 c1             	mov    %rax,%rcx
 181:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
 185:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
 189:	7f e2                	jg     0x16d
 18b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 18f:	8b 55 c4             	mov    -0x3c(%rbp),%edx
 192:	b9 01 00 00 00       	mov    $0x1,%ecx
 197:	29 d1                	sub    %edx,%ecx
 199:	89 c9                	mov    %ecx,%ecx
 19b:	48 d3 e0             	shl    %cl,%rax
 19e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 1a2:	eb 22                	jmp    0x1c6
 1a4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 1a8:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
 1af:	ff 0f 00
 1b2:	48 21 c8             	and    %rcx,%rax
 1b5:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
 1bc:	00 10 00
 1bf:	48 09 c8             	or     %rcx,%rax
 1c2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 1c6:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
 1c9:	8b 45 dc             	mov    -0x24(%rbp),%eax
 1cc:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
 1d0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 1d4:	48 29 f2             	sub    %rsi,%rdx
 1d7:	48 89 d6             	mov    %rdx,%rsi
 1da:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
 1de:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
 1e2:	0f 9f c2             	setg   %dl
 1e5:	0f b6 d2             	movzbl %dl,%edx
 1e8:	89 55 c0             	mov    %edx,-0x40(%rbp)
 1eb:	39 c8                	cmp    %ecx,%eax
 1ed:	7e 68                	jle    0x257
 1ef:	8b 45 c0             	mov    -0x40(%rbp),%eax
 1f2:	83 e0 01             	and    $0x1,%eax
 1f5:	85 c0                	test   %eax,%eax
 1f7:	74 22                	je     0x21b
 1f9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1fd:	48 89 c1             	mov    %rax,%rcx
 200:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 204:	48 85 c0             	test   %rax,%rax
 207:	75 12                	jne    0x21b
 209:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
 20e:	0f 57 c9             	xorps  %xmm1,%xmm1
 211:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 215:	48 83 c4 58          	add    $0x58,%rsp
 219:	5d                   	pop    %rbp
 21a:	c3                   	ret
 21b:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
 21e:	8b 45 dc             	mov    -0x24(%rbp),%eax
 221:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
 225:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 229:	48 c1 e2 01          	shl    $0x1,%rdx
 22d:	48 89 d7             	mov    %rdx,%rdi
 230:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 234:	48 29 f2             	sub    %rsi,%rdx
 237:	48 89 d6             	mov    %rdx,%rsi
 23a:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
 23e:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
 242:	0f 9f c2             	setg   %dl
 245:	0f b6 d2             	movzbl %dl,%edx
 248:	89 55 c0             	mov    %edx,-0x40(%rbp)
 24b:	8d 40 ff             	lea    -0x1(%rax),%eax
 24e:	89 c2                	mov    %eax,%edx
 250:	89 55 dc             	mov    %edx,-0x24(%rbp)
 253:	39 c8                	cmp    %ecx,%eax
 255:	7f 98                	jg     0x1ef
 257:	8b 45 c0             	mov    -0x40(%rbp),%eax
 25a:	85 c0                	test   %eax,%eax
 25c:	74 22                	je     0x280
 25e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 262:	48 89 c1             	mov    %rax,%rcx
 265:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 269:	48 85 c0             	test   %rax,%rax
 26c:	75 12                	jne    0x280
 26e:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
 273:	0f 57 c9             	xorps  %xmm1,%xmm1
 276:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 27a:	48 83 c4 58          	add    $0x58,%rsp
 27e:	5d                   	pop    %rbp
 27f:	c3                   	ret
 280:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 284:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
 28b:	ff 0f 00
 28e:	48 39 c8             	cmp    %rcx,%rax
 291:	77 27                	ja     0x2ba
 293:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 297:	8b 4d dc             	mov    -0x24(%rbp),%ecx
 29a:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 29d:	89 4d dc             	mov    %ecx,-0x24(%rbp)
 2a0:	48 c1 e0 01          	shl    $0x1,%rax
 2a4:	48 89 c1             	mov    %rax,%rcx
 2a7:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 2ab:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
 2b2:	00 10 00
 2b5:	48 39 c8             	cmp    %rcx,%rax
 2b8:	72 d9                	jb     0x293
 2ba:	8b 45 dc             	mov    -0x24(%rbp),%eax
 2bd:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
 2c1:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
 2c8:	00 00 80
 2cb:	48 21 d1             	and    %rdx,%rcx
 2ce:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
 2d2:	83 f8 01             	cmp    $0x1,%eax
 2d5:	7c 23                	jl     0x2fa
 2d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2db:	8b 4d dc             	mov    -0x24(%rbp),%ecx
 2de:	48 ba 00 00 00 00 00 	movabs $0xfff0000000000000,%rdx
 2e5:	00 f0 ff
 2e8:	48 01 d0             	add    %rdx,%rax
 2eb:	89 c9                	mov    %ecx,%ecx
 2ed:	48 c1 e1 34          	shl    $0x34,%rcx
 2f1:	48 09 c8             	or     %rcx,%rax
 2f4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 2f8:	eb 17                	jmp    0x311
 2fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2fe:	8b 55 dc             	mov    -0x24(%rbp),%edx
 301:	b9 01 00 00 00       	mov    $0x1,%ecx
 306:	29 d1                	sub    %edx,%ecx
 308:	89 c9                	mov    %ecx,%ecx
 30a:	48 d3 e8             	shr    %cl,%rax
 30d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 311:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
 315:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 319:	48 09 c8             	or     %rcx,%rax
 31c:	66 48 0f 6e c0       	movq   %rax,%xmm0
 321:	48 83 c4 58          	add    $0x58,%rsp
 325:	5d                   	pop    %rbp
 326:	c3                   	ret
 327:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 32b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 32f:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
 334:	0f 28 c1             	movaps %xmm1,%xmm0
 337:	f2 0f 11 4d b0       	movsd  %xmm1,-0x50(%rbp)
 33c:	0f 57 c9             	xorps  %xmm1,%xmm1
 33f:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 343:	48 39 c8             	cmp    %rcx,%rax
 346:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
 34b:	74 0a                	je     0x357
 34d:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
 352:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
 357:	f2 0f 10 45 b8       	movsd  -0x48(%rbp),%xmm0
 35c:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
 361:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
 366:	48 83 c4 58          	add    $0x58,%rsp
 36a:	5d                   	pop    %rbp
 36b:	c3                   	ret

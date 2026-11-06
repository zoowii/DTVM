
work/fast-ra-liveout/trace-flags/func-176955-51-1.bin:     file format binary


Disassembly of section .data:

0000000000000000 <.data>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 58          	sub    $0x58,%rsp
   8:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
   d:	0f 28 c1             	movaps %xmm1,%xmm0
  10:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
  15:	31 c0                	xor    %eax,%eax
  17:	31 c0                	xor    %eax,%eax
  19:	31 c0                	xor    %eax,%eax
  1b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  1f:	31 c0                	xor    %eax,%eax
  21:	89 45 dc             	mov    %eax,-0x24(%rbp)
  24:	31 c0                	xor    %eax,%eax
  26:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  2a:	31 c0                	xor    %eax,%eax
  2c:	89 45 e8             	mov    %eax,-0x18(%rbp)
  2f:	31 c0                	xor    %eax,%eax
  31:	89 45 ec             	mov    %eax,-0x14(%rbp)
  34:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
  3b:	ff
  3c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  41:	48 89 c1             	mov    %rax,%rcx
  44:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  48:	48 c1 e0 01          	shl    $0x1,%rax
  4c:	48 89 c1             	mov    %rax,%rcx
  4f:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  53:	48 85 c0             	test   %rax,%rax
  56:	74 43                	je     0x9b
  58:	f2 0f 10 4d c8       	movsd  -0x38(%rbp),%xmm1
  5d:	0f 28 c1             	movaps %xmm1,%xmm0
  60:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  64:	0f 95 c0             	setne  %al
  67:	0f 9a c1             	setp   %cl
  6a:	08 c8                	or     %cl,%al
  6c:	0f b6 c0             	movzbl %al,%eax
  6f:	85 c0                	test   %eax,%eax
  71:	75 28                	jne    0x9b
  73:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
  78:	66 48 0f 7e c0       	movq   %xmm0,%rax
  7d:	48 89 c1             	mov    %rax,%rcx
  80:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  84:	48 c1 e8 34          	shr    $0x34,%rax
  88:	89 c0                	mov    %eax,%eax
  8a:	25 ff 07 00 00       	and    $0x7ff,%eax
  8f:	89 c1                	mov    %eax,%ecx
  91:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  94:	3d ff 07 00 00       	cmp    $0x7ff,%eax
  99:	75 1b                	jne    0xb6
  9b:	f2 0f 10 4d c8       	movsd  -0x38(%rbp),%xmm1
  a0:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
  a5:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  a9:	0f 28 c8             	movaps %xmm0,%xmm1
  ac:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  b0:	48 83 c4 58          	add    $0x58,%rsp
  b4:	5d                   	pop    %rbp
  b5:	c3                   	ret
  b6:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  ba:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  be:	48 c1 e0 01          	shl    $0x1,%rax
  c2:	48 89 c2             	mov    %rax,%rdx
  c5:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  c9:	48 39 c8             	cmp    %rcx,%rax
  cc:	0f 86 64 02 00 00    	jbe    0x336
  d2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  d5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  d9:	48 c1 e9 34          	shr    $0x34,%rcx
  dd:	89 c9                	mov    %ecx,%ecx
  df:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
  e5:	89 4d e8             	mov    %ecx,-0x18(%rbp)
  e8:	85 c0                	test   %eax,%eax
  ea:	75 50                	jne    0x13c
  ec:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  f0:	31 c9                	xor    %ecx,%ecx
  f2:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  f5:	48 c1 e0 0c          	shl    $0xc,%rax
  f9:	48 89 c1             	mov    %rax,%rcx
  fc:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 100:	48 85 c0             	test   %rax,%rax
 103:	7c 1e                	jl     0x123
 105:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 109:	8b 4d dc             	mov    -0x24(%rbp),%ecx
 10c:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 10f:	89 4d dc             	mov    %ecx,-0x24(%rbp)
 112:	48 c1 e0 01          	shl    $0x1,%rax
 116:	48 89 c1             	mov    %rax,%rcx
 119:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 11d:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
 121:	7f e2                	jg     0x105
 123:	8b 55 dc             	mov    -0x24(%rbp),%edx
 126:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 12a:	b9 01 00 00 00       	mov    $0x1,%ecx
 12f:	29 d1                	sub    %edx,%ecx
 131:	89 c9                	mov    %ecx,%ecx
 133:	48 d3 e0             	shl    %cl,%rax
 136:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 13a:	eb 22                	jmp    0x15e
 13c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 140:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
 147:	ff 0f 00
 14a:	48 21 c8             	and    %rcx,%rax
 14d:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
 154:	00 10 00
 157:	48 09 c8             	or     %rcx,%rax
 15a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 15e:	8b 45 e8             	mov    -0x18(%rbp),%eax
 161:	85 c0                	test   %eax,%eax
 163:	75 50                	jne    0x1b5
 165:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 169:	31 c9                	xor    %ecx,%ecx
 16b:	89 4d e8             	mov    %ecx,-0x18(%rbp)
 16e:	48 c1 e0 0c          	shl    $0xc,%rax
 172:	48 89 c1             	mov    %rax,%rcx
 175:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
 179:	48 85 c0             	test   %rax,%rax
 17c:	7c 1e                	jl     0x19c
 17e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 182:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 185:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 188:	89 4d e8             	mov    %ecx,-0x18(%rbp)
 18b:	48 c1 e0 01          	shl    $0x1,%rax
 18f:	48 89 c1             	mov    %rax,%rcx
 192:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
 196:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
 19a:	7f e2                	jg     0x17e
 19c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 1a0:	8b 55 e8             	mov    -0x18(%rbp),%edx
 1a3:	b9 01 00 00 00       	mov    $0x1,%ecx
 1a8:	29 d1                	sub    %edx,%ecx
 1aa:	89 c9                	mov    %ecx,%ecx
 1ac:	48 d3 e0             	shl    %cl,%rax
 1af:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 1b3:	eb 22                	jmp    0x1d7
 1b5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 1b9:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
 1c0:	ff 0f 00
 1c3:	48 21 c8             	and    %rcx,%rax
 1c6:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
 1cd:	00 10 00
 1d0:	48 09 c8             	or     %rcx,%rax
 1d3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 1d7:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 1da:	8b 45 dc             	mov    -0x24(%rbp),%eax
 1dd:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
 1e1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 1e5:	48 29 f2             	sub    %rsi,%rdx
 1e8:	48 89 d6             	mov    %rdx,%rsi
 1eb:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 1ef:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
 1f3:	0f 9f c2             	setg   %dl
 1f6:	0f b6 d2             	movzbl %dl,%edx
 1f9:	89 55 ec             	mov    %edx,-0x14(%rbp)
 1fc:	39 c8                	cmp    %ecx,%eax
 1fe:	7e 66                	jle    0x266
 200:	8b 45 ec             	mov    -0x14(%rbp),%eax
 203:	83 e0 01             	and    $0x1,%eax
 206:	74 22                	je     0x22a
 208:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 20c:	48 89 c1             	mov    %rax,%rcx
 20f:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 213:	48 85 c0             	test   %rax,%rax
 216:	75 12                	jne    0x22a
 218:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
 21d:	0f 57 c9             	xorps  %xmm1,%xmm1
 220:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 224:	48 83 c4 58          	add    $0x58,%rsp
 228:	5d                   	pop    %rbp
 229:	c3                   	ret
 22a:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 22d:	8b 45 dc             	mov    -0x24(%rbp),%eax
 230:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
 234:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 238:	48 c1 e2 01          	shl    $0x1,%rdx
 23c:	48 89 d7             	mov    %rdx,%rdi
 23f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 243:	48 29 f2             	sub    %rsi,%rdx
 246:	48 89 d6             	mov    %rdx,%rsi
 249:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 24d:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
 251:	0f 9f c2             	setg   %dl
 254:	0f b6 d2             	movzbl %dl,%edx
 257:	89 55 ec             	mov    %edx,-0x14(%rbp)
 25a:	8d 40 ff             	lea    -0x1(%rax),%eax
 25d:	89 c2                	mov    %eax,%edx
 25f:	89 55 dc             	mov    %edx,-0x24(%rbp)
 262:	39 c8                	cmp    %ecx,%eax
 264:	7f 9a                	jg     0x200
 266:	8b 45 ec             	mov    -0x14(%rbp),%eax
 269:	85 c0                	test   %eax,%eax
 26b:	74 22                	je     0x28f
 26d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 271:	48 89 c1             	mov    %rax,%rcx
 274:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 278:	48 85 c0             	test   %rax,%rax
 27b:	75 12                	jne    0x28f
 27d:	f2 0f 10 45 c0       	movsd  -0x40(%rbp),%xmm0
 282:	0f 57 c9             	xorps  %xmm1,%xmm1
 285:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 289:	48 83 c4 58          	add    $0x58,%rsp
 28d:	5d                   	pop    %rbp
 28e:	c3                   	ret
 28f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 293:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
 29a:	ff 0f 00
 29d:	48 39 c8             	cmp    %rcx,%rax
 2a0:	77 27                	ja     0x2c9
 2a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2a6:	8b 4d dc             	mov    -0x24(%rbp),%ecx
 2a9:	8d 49 ff             	lea    -0x1(%rcx),%ecx
 2ac:	89 4d dc             	mov    %ecx,-0x24(%rbp)
 2af:	48 c1 e0 01          	shl    $0x1,%rax
 2b3:	48 89 c1             	mov    %rax,%rcx
 2b6:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
 2ba:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
 2c1:	00 10 00
 2c4:	48 39 c8             	cmp    %rcx,%rax
 2c7:	72 d9                	jb     0x2a2
 2c9:	8b 45 dc             	mov    -0x24(%rbp),%eax
 2cc:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
 2d0:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
 2d7:	00 00 80
 2da:	48 21 d1             	and    %rdx,%rcx
 2dd:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
 2e1:	83 f8 01             	cmp    $0x1,%eax
 2e4:	7c 23                	jl     0x309
 2e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2ea:	8b 4d dc             	mov    -0x24(%rbp),%ecx
 2ed:	48 ba 00 00 00 00 00 	movabs $0xfff0000000000000,%rdx
 2f4:	00 f0 ff
 2f7:	48 01 d0             	add    %rdx,%rax
 2fa:	89 c9                	mov    %ecx,%ecx
 2fc:	48 c1 e1 34          	shl    $0x34,%rcx
 300:	48 09 c8             	or     %rcx,%rax
 303:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 307:	eb 17                	jmp    0x320
 309:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 30d:	8b 55 dc             	mov    -0x24(%rbp),%edx
 310:	b9 01 00 00 00       	mov    $0x1,%ecx
 315:	29 d1                	sub    %edx,%ecx
 317:	89 c9                	mov    %ecx,%ecx
 319:	48 d3 e8             	shr    %cl,%rax
 31c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 320:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 324:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 328:	48 09 c8             	or     %rcx,%rax
 32b:	66 48 0f 6e c0       	movq   %rax,%xmm0
 330:	48 83 c4 58          	add    $0x58,%rsp
 334:	5d                   	pop    %rbp
 335:	c3                   	ret
 336:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 33a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 33e:	f2 0f 10 4d c0       	movsd  -0x40(%rbp),%xmm1
 343:	0f 28 c1             	movaps %xmm1,%xmm0
 346:	f2 0f 11 4d b0       	movsd  %xmm1,-0x50(%rbp)
 34b:	0f 57 c9             	xorps  %xmm1,%xmm1
 34e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 352:	48 39 c8             	cmp    %rcx,%rax
 355:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
 35a:	74 0a                	je     0x366
 35c:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
 361:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
 366:	f2 0f 10 45 b8       	movsd  -0x48(%rbp),%xmm0
 36b:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
 370:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
 375:	48 83 c4 58          	add    $0x58,%rsp
 379:	5d                   	pop    %rbp
 37a:	c3                   	ret

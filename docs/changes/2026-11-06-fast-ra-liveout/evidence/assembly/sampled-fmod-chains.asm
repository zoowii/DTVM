      |
      | work/fast-ra-liveout/profiles/chains-0/func-189474-51-1.bin:     file format binary
      |
      |
      | Disassembly of section .data:
      |
      | 0000000000000000 <.data>:
    1 |    0:	55                   	push   %rbp
    1 |    1:	48 89 e5             	mov    %rsp,%rbp
    1 |    4:	48 83 ec 50          	sub    $0x50,%rsp
    1 |    8:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
      |    d:	0f 28 d1             	movaps %xmm1,%xmm2
    3 |   10:	f2 0f 11 55 b8       	movsd  %xmm2,-0x48(%rbp)
      |   15:	31 c0                	xor    %eax,%eax
      |   17:	31 c0                	xor    %eax,%eax
      |   19:	31 c0                	xor    %eax,%eax
      |   1b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1 |   1f:	31 c0                	xor    %eax,%eax
      |   21:	89 45 e4             	mov    %eax,-0x1c(%rbp)
      |   24:	31 c0                	xor    %eax,%eax
    1 |   26:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      |   2a:	31 c0                	xor    %eax,%eax
      |   2c:	89 45 c0             	mov    %eax,-0x40(%rbp)
    1 |   2f:	31 c0                	xor    %eax,%eax
      |   31:	89 45 c4             	mov    %eax,-0x3c(%rbp)
      |   34:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
      |   3b:	ff
    2 |   3c:	0f 28 ca             	movaps %xmm2,%xmm1
      |   3f:	66 48 0f 7e c8       	movq   %xmm1,%rax
      |   44:	48 89 c1             	mov    %rax,%rcx
      |   47:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    1 |   4b:	48 c1 e0 01          	shl    $0x1,%rax
      |   4f:	48 89 c1             	mov    %rax,%rcx
      |   52:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      |   56:	48 85 c0             	test   %rax,%rax
    1 |   59:	74 3c                	je     0x97
      |   5b:	0f 28 ca             	movaps %xmm2,%xmm1
      |   5e:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
      |   62:	0f 95 c0             	setne  %al
      |   65:	0f 9a c2             	setp   %dl
      |   68:	08 d0                	or     %dl,%al
      |   6a:	0f b6 c0             	movzbl %al,%eax
      |   6d:	85 c0                	test   %eax,%eax
    1 |   6f:	75 26                	jne    0x97
      |   71:	0f 28 c8             	movaps %xmm0,%xmm1
      |   74:	66 48 0f 7e c8       	movq   %xmm1,%rax
      |   79:	48 89 c2             	mov    %rax,%rdx
      |   7c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      |   80:	48 c1 e8 34          	shr    $0x34,%rax
      |   84:	89 c0                	mov    %eax,%eax
      |   86:	25 ff 07 00 00       	and    $0x7ff,%eax
      |   8b:	89 c6                	mov    %eax,%esi
      |   8d:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2 |   90:	3d ff 07 00 00       	cmp    $0x7ff,%eax
      |   95:	75 1b                	jne    0xb2
      |   97:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
      |   9c:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
      |   a1:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
      |   a5:	0f 28 c8             	movaps %xmm0,%xmm1
      |   a8:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
      |   ac:	48 83 c4 50          	add    $0x50,%rsp
      |   b0:	5d                   	pop    %rbp
      |   b1:	c3                   	ret
      |   b2:	48 c1 e2 01          	shl    $0x1,%rdx
      |   b6:	48 89 d0             	mov    %rdx,%rax
      |   b9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      |   bd:	48 89 ce             	mov    %rcx,%rsi
      |   c0:	48 39 f2             	cmp    %rsi,%rdx
      |   c3:	0f 86 65 02 00 00    	jbe    0x32e
      |   c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1 |   cd:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
      |   d0:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
      |   d4:	48 c1 ea 34          	shr    $0x34,%rdx
      |   d8:	89 d2                	mov    %edx,%edx
      |   da:	81 e2 ff 07 00 00    	and    $0x7ff,%edx
      |   e0:	89 55 c0             	mov    %edx,-0x40(%rbp)
      |   e3:	85 c9                	test   %ecx,%ecx
      |   e5:	75 50                	jne    0x137
      |   e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
      |   eb:	31 c9                	xor    %ecx,%ecx
      |   ed:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
      |   f0:	48 c1 e0 0c          	shl    $0xc,%rax
      |   f4:	48 89 c1             	mov    %rax,%rcx
      |   f7:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      |   fb:	48 85 c0             	test   %rax,%rax
      |   fe:	7c 1e                	jl     0x11e
      |  100:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
      |  104:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
      |  107:	8d 49 ff             	lea    -0x1(%rcx),%ecx
      |  10a:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
      |  10d:	48 c1 e0 01          	shl    $0x1,%rax
      |  111:	48 89 c1             	mov    %rax,%rcx
      |  114:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      |  118:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
      |  11c:	7f e2                	jg     0x100
      |  11e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
      |  121:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
      |  125:	b9 01 00 00 00       	mov    $0x1,%ecx
      |  12a:	29 d1                	sub    %edx,%ecx
      |  12c:	89 c9                	mov    %ecx,%ecx
      |  12e:	48 d3 e0             	shl    %cl,%rax
      |  131:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      |  135:	eb 1e                	jmp    0x155
      |  137:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
      |  13e:	ff 0f 00
      |  141:	48 21 c8             	and    %rcx,%rax
    1 |  144:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
      |  14b:	00 10 00
      |  14e:	48 09 c8             	or     %rcx,%rax
      |  151:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2 |  155:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
      |  159:	8b 4d c0             	mov    -0x40(%rbp),%ecx
    2 |  15c:	85 c9                	test   %ecx,%ecx
      |  15e:	75 50                	jne    0x1b0
      |  160:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
      |  164:	31 c9                	xor    %ecx,%ecx
      |  166:	89 4d c0             	mov    %ecx,-0x40(%rbp)
      |  169:	48 c1 e0 0c          	shl    $0xc,%rax
      |  16d:	48 89 c1             	mov    %rax,%rcx
      |  170:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
      |  174:	48 85 c0             	test   %rax,%rax
      |  177:	7c 1e                	jl     0x197
      |  179:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      |  17d:	8b 4d c0             	mov    -0x40(%rbp),%ecx
      |  180:	8d 49 ff             	lea    -0x1(%rcx),%ecx
      |  183:	89 4d c0             	mov    %ecx,-0x40(%rbp)
      |  186:	48 c1 e0 01          	shl    $0x1,%rax
      |  18a:	48 89 c1             	mov    %rax,%rcx
      |  18d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
      |  191:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
      |  195:	7f e2                	jg     0x179
      |  197:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
      |  19b:	8b 55 c0             	mov    -0x40(%rbp),%edx
      |  19e:	b9 01 00 00 00       	mov    $0x1,%ecx
      |  1a3:	29 d1                	sub    %edx,%ecx
      |  1a5:	89 c9                	mov    %ecx,%ecx
      |  1a7:	48 d3 e0             	shl    %cl,%rax
      |  1aa:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
      |  1ae:	eb 1e                	jmp    0x1ce
      |  1b0:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
      |  1b7:	ff 0f 00
    1 |  1ba:	48 21 c8             	and    %rcx,%rax
      |  1bd:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
      |  1c4:	00 10 00
      |  1c7:	48 09 c8             	or     %rcx,%rax
    1 |  1ca:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
      |  1ce:	8b 4d c0             	mov    -0x40(%rbp),%ecx
    3 |  1d1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
      |  1d4:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
    1 |  1d8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    1 |  1dc:	48 29 f2             	sub    %rsi,%rdx
      |  1df:	48 89 d6             	mov    %rdx,%rsi
      |  1e2:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
      |  1e6:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
      |  1ea:	0f 9f c2             	setg   %dl
    1 |  1ed:	0f b6 d2             	movzbl %dl,%edx
    2 |  1f0:	89 55 c4             	mov    %edx,-0x3c(%rbp)
    1 |  1f3:	39 c8                	cmp    %ecx,%eax
    2 |  1f5:	7e 68                	jle    0x25f
      |  1f7:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   13 |  1fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   51 |  200:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
   18 |  203:	83 e1 01             	and    $0x1,%ecx
    3 |  206:	85 c9                	test   %ecx,%ecx
      |  208:	74 19                	je     0x223
      |  20a:	48 89 c1             	mov    %rax,%rcx
   48 |  20d:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
   24 |  211:	48 85 c0             	test   %rax,%rax
      |  214:	75 0d                	jne    0x223
      |  216:	0f 57 c9             	xorps  %xmm1,%xmm1
      |  219:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
      |  21d:	48 83 c4 50          	add    $0x50,%rsp
      |  221:	5d                   	pop    %rbp
      |  222:	c3                   	ret
      |  223:	8b 4d c0             	mov    -0x40(%rbp),%ecx
   79 |  226:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   15 |  229:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
    4 |  22d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
   29 |  231:	48 c1 e2 01          	shl    $0x1,%rdx
    7 |  235:	48 89 d7             	mov    %rdx,%rdi
    1 |  238:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   12 |  23c:	48 29 f2             	sub    %rsi,%rdx
    8 |  23f:	48 89 d6             	mov    %rdx,%rsi
    2 |  242:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
   21 |  246:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
      |  24a:	0f 9f c2             	setg   %dl
    6 |  24d:	0f b6 d2             	movzbl %dl,%edx
   20 |  250:	89 55 c4             	mov    %edx,-0x3c(%rbp)
   10 |  253:	8d 40 ff             	lea    -0x1(%rax),%eax
    2 |  256:	89 c2                	mov    %eax,%edx
      |  258:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    6 |  25b:	39 c8                	cmp    %ecx,%eax
      |  25d:	7f 98                	jg     0x1f7
      |  25f:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   45 |  264:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      |  268:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
    6 |  26b:	85 c9                	test   %ecx,%ecx
      |  26d:	74 19                	je     0x288
      |  26f:	48 89 c1             	mov    %rax,%rcx
   13 |  272:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    3 |  276:	48 85 c0             	test   %rax,%rax
      |  279:	75 0d                	jne    0x288
      |  27b:	0f 57 c9             	xorps  %xmm1,%xmm1
      |  27e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
      |  282:	48 83 c4 50          	add    $0x50,%rsp
      |  286:	5d                   	pop    %rbp
      |  287:	c3                   	ret
      |  288:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   20 |  28c:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
      |  293:	ff 0f 00
      |  296:	48 39 c8             	cmp    %rcx,%rax
      |  299:	77 27                	ja     0x2c2
      |  29b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   26 |  29f:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
      |  2a2:	8d 49 ff             	lea    -0x1(%rcx),%ecx
    1 |  2a5:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
      |  2a8:	48 c1 e0 01          	shl    $0x1,%rax
      |  2ac:	48 89 c1             	mov    %rax,%rcx
      |  2af:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    1 |  2b3:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
      |  2ba:	00 10 00
      |  2bd:	48 39 c8             	cmp    %rcx,%rax
    1 |  2c0:	72 d9                	jb     0x29b
      |  2c2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   28 |  2c6:	8b 55 e4             	mov    -0x1c(%rbp),%edx
      |  2c9:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
      |  2cd:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
      |  2d4:	00 00 80
      |  2d7:	48 21 f1             	and    %rsi,%rcx
    3 |  2da:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
      |  2de:	89 d1                	mov    %edx,%ecx
      |  2e0:	83 f9 01             	cmp    $0x1,%ecx
      |  2e3:	7c 23                	jl     0x308
      |  2e5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
      |  2e9:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    1 |  2ec:	48 ba 00 00 00 00 00 	movabs $0xfff0000000000000,%rdx
      |  2f3:	00 f0 ff
      |  2f6:	48 01 d0             	add    %rdx,%rax
    1 |  2f9:	89 c9                	mov    %ecx,%ecx
      |  2fb:	48 c1 e1 34          	shl    $0x34,%rcx
      |  2ff:	48 09 c8             	or     %rcx,%rax
      |  302:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2 |  306:	eb 10                	jmp    0x318
      |  308:	b9 01 00 00 00       	mov    $0x1,%ecx
      |  30d:	29 d1                	sub    %edx,%ecx
      |  30f:	89 c9                	mov    %ecx,%ecx
      |  311:	48 d3 e8             	shr    %cl,%rax
      |  314:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      |  318:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
   23 |  31c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2 |  320:	48 09 c8             	or     %rcx,%rax
      |  323:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1 |  328:	48 83 c4 50          	add    $0x50,%rsp
    1 |  32c:	5d                   	pop    %rbp
      |  32d:	c3                   	ret
      |  32e:	0f 28 c8             	movaps %xmm0,%xmm1
      |  331:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
      |  336:	0f 57 d2             	xorps  %xmm2,%xmm2
      |  339:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
      |  33d:	48 39 c8             	cmp    %rcx,%rax
      |  340:	f2 0f 11 4d f8       	movsd  %xmm1,-0x8(%rbp)
      |  345:	74 05                	je     0x34c
      |  347:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
      |  34c:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
      |  351:	48 83 c4 50          	add    $0x50,%rsp
      |  355:	5d                   	pop    %rbp
      |  356:	c3                   	ret

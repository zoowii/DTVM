      |
      | work/fast-ra-liveout/profiles/private-greedy-0/func-189456-51-1.bin:     file format binary
      |
      |
      | Disassembly of section .data:
      |
      | 0000000000000000 <.data>:
      |    0:	55                   	push   %rbp
      |    1:	48 89 e5             	mov    %rsp,%rbp
      |    4:	0f 28 d0             	movaps %xmm0,%xmm2
      |    7:	31 c0                	xor    %eax,%eax
      |    9:	31 c0                	xor    %eax,%eax
      |    b:	31 c0                	xor    %eax,%eax
    2 |    d:	31 c0                	xor    %eax,%eax
      |    f:	31 c0                	xor    %eax,%eax
      |   11:	31 c0                	xor    %eax,%eax
      |   13:	31 c0                	xor    %eax,%eax
      |   15:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
      |   1c:	ff
      |   1d:	66 48 0f 7e ce       	movq   %xmm1,%rsi
      |   22:	48 89 f0             	mov    %rsi,%rax
      |   25:	48 c1 e0 01          	shl    $0x1,%rax
      |   29:	48 85 c0             	test   %rax,%rax
      |   2c:	74 2f                	je     0x5d
      |   2e:	66 0f 2e c9          	ucomisd %xmm1,%xmm1
      |   32:	0f 95 c1             	setne  %cl
      |   35:	0f 9a c2             	setp   %dl
      |   38:	08 d1                	or     %dl,%cl
      |   3a:	0f b6 c9             	movzbl %cl,%ecx
      |   3d:	85 c9                	test   %ecx,%ecx
      |   3f:	75 1c                	jne    0x5d
      |   41:	66 49 0f 7e d0       	movq   %xmm2,%r8
      |   46:	4c 89 c1             	mov    %r8,%rcx
      |   49:	48 c1 e9 34          	shr    $0x34,%rcx
    1 |   4d:	89 ca                	mov    %ecx,%edx
    6 |   4f:	81 e2 ff 07 00 00    	and    $0x7ff,%edx
      |   55:	81 fa ff 07 00 00    	cmp    $0x7ff,%edx
      |   5b:	75 10                	jne    0x6d
      |   5d:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
      |   61:	0f 28 ca             	movaps %xmm2,%xmm1
      |   64:	f2 0f 5e d1          	divsd  %xmm1,%xmm2
      |   68:	0f 28 c2             	movaps %xmm2,%xmm0
      |   6b:	5d                   	pop    %rbp
      |   6c:	c3                   	ret
      |   6d:	4c 89 c7             	mov    %r8,%rdi
    1 |   70:	48 c1 e7 01          	shl    $0x1,%rdi
      |   74:	48 39 c7             	cmp    %rax,%rdi
      |   77:	0f 86 75 01 00 00    	jbe    0x1f2
      |   7d:	48 89 f0             	mov    %rsi,%rax
      |   80:	48 c1 e8 34          	shr    $0x34,%rax
      |   84:	41 89 c1             	mov    %eax,%r9d
    4 |   87:	41 81 e1 ff 07 00 00 	and    $0x7ff,%r9d
      |   8e:	85 d2                	test   %edx,%edx
      |   90:	75 2c                	jne    0xbe
      |   92:	31 d2                	xor    %edx,%edx
      |   94:	4c 89 c0             	mov    %r8,%rax
      |   97:	48 c1 e0 0c          	shl    $0xc,%rax
      |   9b:	48 85 c0             	test   %rax,%rax
      |   9e:	7c 0d                	jl     0xad
      |   a0:	8d 52 ff             	lea    -0x1(%rdx),%edx
      |   a3:	48 c1 e0 01          	shl    $0x1,%rax
      |   a7:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
      |   ab:	7f f3                	jg     0xa0
      |   ad:	b8 01 00 00 00       	mov    $0x1,%eax
      |   b2:	29 d0                	sub    %edx,%eax
      |   b4:	89 c1                	mov    %eax,%ecx
      |   b6:	4c 89 c0             	mov    %r8,%rax
      |   b9:	48 d3 e0             	shl    %cl,%rax
      |   bc:	eb 1d                	jmp    0xdb
      |   be:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
      |   c5:	ff 0f 00
    1 |   c8:	4c 89 c0             	mov    %r8,%rax
      |   cb:	48 21 c8             	and    %rcx,%rax
      |   ce:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
      |   d5:	00 10 00
      |   d8:	48 09 c8             	or     %rcx,%rax
      |   db:	45 85 c9             	test   %r9d,%r9d
      |   de:	75 2c                	jne    0x10c
      |   e0:	45 31 c9             	xor    %r9d,%r9d
      |   e3:	48 89 f7             	mov    %rsi,%rdi
      |   e6:	48 c1 e7 0c          	shl    $0xc,%rdi
      |   ea:	48 85 ff             	test   %rdi,%rdi
      |   ed:	7c 0e                	jl     0xfd
      |   ef:	45 8d 49 ff          	lea    -0x1(%r9),%r9d
      |   f3:	48 c1 e7 01          	shl    $0x1,%rdi
      |   f7:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
      |   fb:	7f f2                	jg     0xef
      |   fd:	b9 01 00 00 00       	mov    $0x1,%ecx
      |  102:	44 29 c9             	sub    %r9d,%ecx
      |  105:	89 c9                	mov    %ecx,%ecx
      |  107:	48 d3 e6             	shl    %cl,%rsi
      |  10a:	eb 1a                	jmp    0x126
      |  10c:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
      |  113:	ff 0f 00
      |  116:	48 21 ce             	and    %rcx,%rsi
      |  119:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
      |  120:	00 10 00
      |  123:	48 09 ce             	or     %rcx,%rsi
    3 |  126:	48 89 c7             	mov    %rax,%rdi
      |  129:	48 29 f7             	sub    %rsi,%rdi
      |  12c:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
      |  130:	0f 9f c1             	setg   %cl
    3 |  133:	0f b6 c9             	movzbl %cl,%ecx
    1 |  136:	44 39 ca             	cmp    %r9d,%edx
      |  139:	7e 37                	jle    0x172
      |  13b:	83 e1 01             	and    $0x1,%ecx
   27 |  13e:	85 c9                	test   %ecx,%ecx
   15 |  140:	74 14                	je     0x156
      |  142:	48 89 f8             	mov    %rdi,%rax
   71 |  145:	48 85 ff             	test   %rdi,%rdi
      |  148:	75 0c                	jne    0x156
      |  14a:	0f 57 c0             	xorps  %xmm0,%xmm0
      |  14d:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
      |  151:	0f 28 c2             	movaps %xmm2,%xmm0
      |  154:	5d                   	pop    %rbp
      |  155:	c3                   	ret
      |  156:	48 c1 e0 01          	shl    $0x1,%rax
   75 |  15a:	48 89 c7             	mov    %rax,%rdi
   36 |  15d:	48 29 f7             	sub    %rsi,%rdi
    1 |  160:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
      |  164:	0f 9f c1             	setg   %cl
   19 |  167:	0f b6 c9             	movzbl %cl,%ecx
   62 |  16a:	8d 52 ff             	lea    -0x1(%rdx),%edx
      |  16d:	44 39 ca             	cmp    %r9d,%edx
      |  170:	7f c9                	jg     0x13b
      |  172:	85 c9                	test   %ecx,%ecx
   30 |  174:	74 14                	je     0x18a
      |  176:	48 89 f8             	mov    %rdi,%rax
   15 |  179:	48 85 ff             	test   %rdi,%rdi
      |  17c:	75 0c                	jne    0x18a
      |  17e:	0f 57 c0             	xorps  %xmm0,%xmm0
      |  181:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
      |  185:	0f 28 c2             	movaps %xmm2,%xmm0
      |  188:	5d                   	pop    %rbp
      |  189:	c3                   	ret
      |  18a:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
      |  191:	ff 0f 00
   20 |  194:	48 39 c8             	cmp    %rcx,%rax
    4 |  197:	77 16                	ja     0x1af
      |  199:	8d 52 ff             	lea    -0x1(%rdx),%edx
   25 |  19c:	48 c1 e0 01          	shl    $0x1,%rax
      |  1a0:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
      |  1a7:	00 10 00
    1 |  1aa:	48 39 c8             	cmp    %rcx,%rax
      |  1ad:	72 ea                	jb     0x199
      |  1af:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
      |  1b6:	00 00 80
   36 |  1b9:	49 21 c8             	and    %rcx,%r8
    6 |  1bc:	4c 89 c7             	mov    %r8,%rdi
      |  1bf:	83 fa 01             	cmp    $0x1,%edx
    1 |  1c2:	7c 18                	jl     0x1dc
      |  1c4:	48 b9 00 00 00 00 00 	movabs $0xfff0000000000000,%rcx
      |  1cb:	00 f0 ff
    3 |  1ce:	48 01 c8             	add    %rcx,%rax
    8 |  1d1:	89 d1                	mov    %edx,%ecx
    1 |  1d3:	48 c1 e1 34          	shl    $0x34,%rcx
    2 |  1d7:	48 09 c8             	or     %rcx,%rax
      |  1da:	eb 0c                	jmp    0x1e8
      |  1dc:	b9 01 00 00 00       	mov    $0x1,%ecx
      |  1e1:	29 d1                	sub    %edx,%ecx
      |  1e3:	89 c9                	mov    %ecx,%ecx
      |  1e5:	48 d3 e8             	shr    %cl,%rax
      |  1e8:	48 09 f8             	or     %rdi,%rax
    7 |  1eb:	66 48 0f 6e c0       	movq   %rax,%xmm0
   11 |  1f0:	5d                   	pop    %rbp
      |  1f1:	c3                   	ret
      |  1f2:	0f 57 c9             	xorps  %xmm1,%xmm1
    1 |  1f5:	0f 28 c2             	movaps %xmm2,%xmm0
      |  1f8:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
      |  1fc:	48 39 c7             	cmp    %rax,%rdi
      |  1ff:	74 03                	je     0x204
      |  201:	0f 28 c2             	movaps %xmm2,%xmm0
      |  204:	5d                   	pop    %rbp
      |  205:	c3                   	ret

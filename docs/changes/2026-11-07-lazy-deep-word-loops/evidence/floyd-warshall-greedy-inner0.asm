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

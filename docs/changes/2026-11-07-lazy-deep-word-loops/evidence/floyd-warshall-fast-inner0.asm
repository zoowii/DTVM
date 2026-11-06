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

  91:	c4 62 23 f6 1d 76 03 	mulx   0x376(%rip),%r11d,%r11d        # 0x410
  98:	00 00 
  9a:	41 c1 eb 03          	shr    $0x3,%r11d
  9e:	45 6b db 0b          	imul   $0xb,%r11d,%r11d
  a2:	45 03 da             	add    %r10d,%r11d
  a5:	c4 e2 7b f6 05 6a 03 	mulx   0x36a(%rip),%eax,%eax        # 0x418
  ac:	00 00 
  ae:	c1 e8 02             	shr    $0x2,%eax
  b1:	6b c0 0d             	imul   $0xd,%eax,%eax
  b4:	41 03 c2             	add    %r10d,%eax
  b7:	c4 62 1b f6 25 60 03 	mulx   0x360(%rip),%r12d,%r12d        # 0x420
  be:	00 00 
  c0:	49 89 d5             	mov    %rdx,%r13
  c3:	45 2b ec             	sub    %r12d,%r13d
  c6:	48 89 d3             	mov    %rdx,%rbx
  c9:	41 d1 ed             	shr    $1,%r13d
  cc:	43 8d 14 2c          	lea    (%r12,%r13,1),%edx
  d0:	c1 ea 02             	shr    $0x2,%edx
  d3:	6b d2 07             	imul   $0x7,%edx,%edx
  d6:	45 8d 24 12          	lea    (%r10,%rdx,1),%r12d
  da:	4c 89 fa             	mov    %r15,%rdx
  dd:	c4 62 13 f6 2d 3a 03 	mulx   0x33a(%rip),%r13d,%r13d        # 0x420
  e4:	00 00 
  e6:	45 2b fd             	sub    %r13d,%r15d
  e9:	41 d1 ef             	shr    $1,%r15d
  ec:	45 03 ef             	add    %r15d,%r13d
  ef:	41 c1 ed 02          	shr    $0x2,%r13d
  f3:	45 6b ed 07          	imul   $0x7,%r13d,%r13d
  f7:	49 89 f7             	mov    %rsi,%r15
  fa:	45 2b fd             	sub    %r13d,%r15d
  fd:	41 bd e7 03 00 00    	mov    $0x3e7,%r13d
 103:	45 85 e4             	test   %r12d,%r12d
 106:	4d 89 ec             	mov    %r13,%r12
 109:	45 0f 45 e7          	cmovne %r15d,%r12d
 10d:	85 c0                	test   %eax,%eax
 10f:	4c 89 e8             	mov    %r13,%rax
 112:	41 0f 45 c4          	cmovne %r12d,%eax
 116:	45 85 db             	test   %r11d,%r11d
 119:	44 0f 45 e8          	cmovne %eax,%r13d
 11d:	44 8d 1c 39          	lea    (%rcx,%rdi,1),%r11d
 121:	47 89 2c 1e          	mov    %r13d,(%r14,%r11,1)
 125:	44 8d 5f 04          	lea    0x4(%rdi),%r11d
 129:	41 03 f0             	add    %r8d,%esi
 12c:	41 03 d0             	add    %r8d,%edx
 12f:	41 81 c2 ff ff ff ff 	add    $0xffffffff,%r10d
 136:	48 89 d8             	mov    %rbx,%rax
 139:	81 c0 01 00 00 00    	add    $0x1,%eax
 13f:	81 ff bc 2b 00 00    	cmp    $0x2bbc,%edi
 145:	0f 84 0e 00 00 00    	je     0x159
 14b:	49 89 d7             	mov    %rdx,%r15
 14e:	4c 89 df             	mov    %r11,%rdi
 151:	48 89 c2             	mov    %rax,%rdx
 154:	e9 38 ff ff ff       	jmp    0x91

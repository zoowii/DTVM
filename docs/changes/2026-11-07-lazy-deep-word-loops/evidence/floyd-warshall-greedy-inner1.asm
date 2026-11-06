 1b2:	89 d9                	mov    %ebx,%ecx
 1b4:	44 01 f9             	add    %r15d,%ecx
 1b7:	41 89 cd             	mov    %ecx,%r13d
 1ba:	47 8b 2c 28          	mov    (%r8,%r13,1),%r13d
 1be:	89 d0                	mov    %edx,%eax
 1c0:	44 01 f8             	add    %r15d,%eax
 1c3:	45 8b 34 00          	mov    (%r8,%rax,1),%r14d
 1c7:	41 8b 04 38          	mov    (%r8,%rdi,1),%eax
 1cb:	41 01 c6             	add    %eax,%r14d
 1ce:	45 39 f5             	cmp    %r14d,%r13d
 1d1:	45 0f 4c f5          	cmovl  %r13d,%r14d
 1d5:	45 89 34 08          	mov    %r14d,(%r8,%rcx,1)
 1d9:	45 8d 7f 04          	lea    0x4(%r15),%r15d
 1dd:	41 81 ff c0 2b 00 00 	cmp    $0x2bc0,%r15d
 1e4:	75 cc                	jne    0x1b2

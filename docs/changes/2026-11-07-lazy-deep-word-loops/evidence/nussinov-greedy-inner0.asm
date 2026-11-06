  a3:	44 89 f9             	mov    %r15d,%ecx
  a6:	45 8d 7f 01          	lea    0x1(%r15),%r15d
  aa:	44 89 e2             	mov    %r12d,%edx
  ad:	01 ca                	add    %ecx,%edx
  af:	44 89 f9             	mov    %r15d,%ecx
  b2:	83 e1 03             	and    $0x3,%ecx
  b5:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
  b8:	41 81 ff c4 09 00 00 	cmp    $0x9c4,%r15d
  bf:	75 e2                	jne    0xa3

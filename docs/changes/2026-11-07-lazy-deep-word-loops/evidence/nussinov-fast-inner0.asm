  ce:	8b 45 d8             	mov    -0x28(%rbp),%eax
  d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  d5:	8b 55 dc             	mov    -0x24(%rbp),%edx
  d8:	89 c7                	mov    %eax,%edi
  da:	8d 70 01             	lea    0x1(%rax),%esi
  dd:	89 f0                	mov    %esi,%eax
  df:	89 45 d8             	mov    %eax,-0x28(%rbp)
  e2:	01 fa                	add    %edi,%edx
  e4:	83 e6 03             	and    $0x3,%esi
  e7:	40 88 34 11          	mov    %sil,(%rcx,%rdx,1)
  eb:	3d c4 09 00 00       	cmp    $0x9c4,%eax
  f0:	75 dc                	jne    0xce

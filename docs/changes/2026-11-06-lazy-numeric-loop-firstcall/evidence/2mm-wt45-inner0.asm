 31c:	lea    (%rdx,%r11,1),%ebx
 320:	vmovsd 0x0(%r13,%rbx,1),%xmm1
 327:	mov    %r10d,%ebx
 32a:	vmovsd 0x0(%r13,%rbx,1),%xmm2
 331:	vmulsd 0x3f7(%rip),%xmm1,%xmm1        # 0x730
 339:	vmulsd %xmm2,%xmm1,%xmm1
 33d:	vaddsd %xmm1,%xmm0,%xmm0
 341:	vmovsd %xmm0,0x0(%r13,%r9,1)
 348:	lea    0x8(%r11),%ebx
 34c:	add    $0x1c20,%r10d
 353:	cmp    $0x2258,%r11d
 35a:	je     0x368
 360:	mov    %rbx,%r11
 363:	jmp    0x31c

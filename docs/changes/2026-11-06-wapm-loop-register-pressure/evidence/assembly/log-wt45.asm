
work/wapm-followup/pi.cwasm:     file format elf64-x86-64


Disassembly of section .text:

000000000000c100 <wasm[0]::function[63]>:
    c100:	55                   	push   %rbp
    c101:	48 89 e5             	mov    %rsp,%rbp
    c104:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    c109:	48 85 c0             	test   %rax,%rax
    c10c:	0f 8c 50 00 00 00    	jl     c162 <wasm[0]::function[63]+0x62>
    c112:	48 89 c7             	mov    %rax,%rdi
    c115:	48 c1 ef 20          	shr    $0x20,%rdi
    c119:	81 ff ff ff 0f 00    	cmp    $0xfffff,%edi
    c11f:	0f 86 3d 00 00 00    	jbe    c162 <wasm[0]::function[63]+0x62>
    c125:	81 ff ff ff ef 7f    	cmp    $0x7fefffff,%edi
    c12b:	0f 87 64 01 00 00    	ja     c295 <wasm[0]::function[63]+0x195>
    c131:	81 ff 00 00 f0 3f    	cmp    $0x3ff00000,%edi
    c137:	0f 84 0a 00 00 00    	je     c147 <wasm[0]::function[63]+0x47>
    c13d:	b9 01 fc ff ff       	mov    $0xfffffc01,%ecx
    c142:	e9 77 00 00 00       	jmp    c1be <wasm[0]::function[63]+0xbe>
    c147:	b9 01 fc ff ff       	mov    $0xfffffc01,%ecx
    c14c:	bf 00 00 f0 3f       	mov    $0x3ff00000,%edi
    c151:	85 c0                	test   %eax,%eax
    c153:	0f 85 65 00 00 00    	jne    c1be <wasm[0]::function[63]+0xbe>
    c159:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    c15d:	48 89 ec             	mov    %rbp,%rsp
    c160:	5d                   	pop    %rbp
    c161:	c3                   	ret
    c162:	48 85 05 37 01 00 00 	test   %rax,0x137(%rip)        # c2a0 <wasm[0]::function[63]+0x1a0>
    c169:	0f 85 1c 00 00 00    	jne    c18b <wasm[0]::function[63]+0x8b>
    c16f:	48 b8 00 00 00 00 00 	movabs $0xbff0000000000000,%rax
    c176:	00 f0 bf
    c179:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
    c17e:	c5 fb 59 c0          	vmulsd %xmm0,%xmm0,%xmm0
    c182:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
    c186:	48 89 ec             	mov    %rbp,%rsp
    c189:	5d                   	pop    %rbp
    c18a:	c3                   	ret
    c18b:	48 85 c0             	test   %rax,%rax
    c18e:	0f 8d 11 00 00 00    	jge    c1a5 <wasm[0]::function[63]+0xa5>
    c194:	c5 fb 5c c0          	vsubsd %xmm0,%xmm0,%xmm0
    c198:	c5 fb 5e 05 10 01 00 	vdivsd 0x110(%rip),%xmm0,%xmm0        # c2b0 <wasm[0]::function[63]+0x1b0>
    c19f:	00
    c1a0:	48 89 ec             	mov    %rbp,%rsp
    c1a3:	5d                   	pop    %rbp
    c1a4:	c3                   	ret
    c1a5:	b9 cb fb ff ff       	mov    $0xfffffbcb,%ecx
    c1aa:	c5 fb 59 05 0e 01 00 	vmulsd 0x10e(%rip),%xmm0,%xmm0        # c2c0 <wasm[0]::function[63]+0x1c0>
    c1b1:	00
    c1b2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    c1b7:	48 89 c7             	mov    %rax,%rdi
    c1ba:	48 c1 ef 20          	shr    $0x20,%rdi
    c1be:	8d 97 62 5f 09 00    	lea    0x95f62(%rdi),%edx
    c1c4:	48 89 d6             	mov    %rdx,%rsi
    c1c7:	c1 ee 14             	shr    $0x14,%esi
    c1ca:	03 ce                	add    %esi,%ecx
    c1cc:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    c1d0:	c5 fb 2a d1          	vcvtsi2sd %ecx,%xmm0,%xmm2
    c1d4:	c5 eb 59 05 f4 00 00 	vmulsd 0xf4(%rip),%xmm2,%xmm0        # c2d0 <wasm[0]::function[63]+0x1d0>
    c1db:	00
    c1dc:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    c1e2:	8d 8a 9e a0 e6 3f    	lea    0x3fe6a09e(%rdx),%ecx
    c1e8:	48 c1 e1 20          	shl    $0x20,%rcx
    c1ec:	48 23 05 ed 00 00 00 	and    0xed(%rip),%rax        # c2e0 <wasm[0]::function[63]+0x1e0>
    c1f3:	48 0b c8             	or     %rax,%rcx
    c1f6:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
    c1fb:	c5 f3 58 0d ed 00 00 	vaddsd 0xed(%rip),%xmm1,%xmm1        # c2f0 <wasm[0]::function[63]+0x1f0>
    c202:	00
    c203:	c5 eb 59 15 f5 00 00 	vmulsd 0xf5(%rip),%xmm2,%xmm2        # c300 <wasm[0]::function[63]+0x200>
    c20a:	00
    c20b:	c5 f3 58 1d fd 00 00 	vaddsd 0xfd(%rip),%xmm1,%xmm3        # c310 <wasm[0]::function[63]+0x210>
    c212:	00
    c213:	c5 f3 5e db          	vdivsd %xmm3,%xmm1,%xmm3
    c217:	c5 f3 59 25 01 01 00 	vmulsd 0x101(%rip),%xmm1,%xmm4        # c320 <wasm[0]::function[63]+0x220>
    c21e:	00
    c21f:	c5 f3 59 e4          	vmulsd %xmm4,%xmm1,%xmm4
    c223:	c5 e3 59 eb          	vmulsd %xmm3,%xmm3,%xmm5
    c227:	c5 d3 59 f5          	vmulsd %xmm5,%xmm5,%xmm6
    c22b:	c5 cb 59 3d fd 00 00 	vmulsd 0xfd(%rip),%xmm6,%xmm7        # c330 <wasm[0]::function[63]+0x230>
    c232:	00
    c233:	c5 c3 58 3d 05 01 00 	vaddsd 0x105(%rip),%xmm7,%xmm7        # c340 <wasm[0]::function[63]+0x240>
    c23a:	00
    c23b:	c5 cb 59 ff          	vmulsd %xmm7,%xmm6,%xmm7
    c23f:	c5 c3 58 3d 09 01 00 	vaddsd 0x109(%rip),%xmm7,%xmm7        # c350 <wasm[0]::function[63]+0x250>
    c246:	00
    c247:	c5 cb 59 ff          	vmulsd %xmm7,%xmm6,%xmm7
    c24b:	c5 4b 59 05 0d 01 00 	vmulsd 0x10d(%rip),%xmm6,%xmm8        # c360 <wasm[0]::function[63]+0x260>
    c252:	00
    c253:	c5 3b 58 05 15 01 00 	vaddsd 0x115(%rip),%xmm8,%xmm8        # c370 <wasm[0]::function[63]+0x270>
    c25a:	00
    c25b:	c4 41 4b 59 c0       	vmulsd %xmm8,%xmm6,%xmm8
    c260:	c5 3b 58 05 18 01 00 	vaddsd 0x118(%rip),%xmm8,%xmm8        # c380 <wasm[0]::function[63]+0x280>
    c267:	00
    c268:	c4 c1 4b 59 f0       	vmulsd %xmm8,%xmm6,%xmm6
    c26d:	c5 cb 58 35 1b 01 00 	vaddsd 0x11b(%rip),%xmm6,%xmm6        # c390 <wasm[0]::function[63]+0x290>
    c274:	00
    c275:	c5 d3 59 ee          	vmulsd %xmm6,%xmm5,%xmm5
    c279:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
    c27d:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
    c281:	c5 e3 59 dd          	vmulsd %xmm5,%xmm3,%xmm3
    c285:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    c289:	c5 eb 5c d4          	vsubsd %xmm4,%xmm2,%xmm2
    c28d:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    c291:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    c295:	48 89 ec             	mov    %rbp,%rsp
    c298:	5d                   	pop    %rbp
    c299:	c3                   	ret
    c29a:	00 00                	add    %al,(%rax)
    c29c:	00 00                	add    %al,(%rax)
    c29e:	00 00                	add    %al,(%rax)
    c2a0:	ff                   	(bad)
    c2a1:	ff                   	(bad)
    c2a2:	ff                   	(bad)
    c2a3:	ff                   	(bad)
    c2a4:	ff                   	(bad)
    c2a5:	ff                   	(bad)
    c2a6:	ff                   	(bad)
    c2a7:	7f 00                	jg     c2a9 <wasm[0]::function[63]+0x1a9>
	...
    c2c5:	00 50 43             	add    %dl,0x43(%rax)
	...
    c2d0:	00 00                	add    %al,(%rax)
    c2d2:	e0 fe                	loopne c2d2 <wasm[0]::function[63]+0x1d2>
    c2d4:	42                   	rex.X
    c2d5:	2e e6 3f             	cs out %al,$0x3f
	...
    c2e0:	ff                   	(bad)
    c2e1:	ff                   	(bad)
    c2e2:	ff                   	(bad)
    c2e3:	ff 00                	incl   (%rax)
	...
    c2f5:	00 f0                	add    %dh,%al
    c2f7:	bf 00 00 00 00       	mov    $0x0,%edi
    c2fc:	00 00                	add    %al,(%rax)
    c2fe:	00 00                	add    %al,(%rax)
    c300:	76 3c                	jbe    c33e <wasm[0]::function[63]+0x23e>
    c302:	79 35                	jns    c339 <wasm[0]::function[63]+0x239>
    c304:	ef                   	out    %eax,(%dx)
    c305:	39 ea                	cmp    %ebp,%edx
    c307:	3d 00 00 00 00       	cmp    $0x0,%eax
	...
    c314:	00 00                	add    %al,(%rax)
    c316:	00 40 00             	add    %al,0x0(%rax)
	...
    c325:	00 e0                	add    %ah,%al
    c327:	3f                   	(bad)
	...
    c330:	9f                   	lahf
    c331:	c6 78                	xabort $0x78,(bad)
    c333:	d0 09                	rorb   $1,(%rcx)
    c335:	9a                   	(bad)
    c336:	c3                   	ret
    c337:	3f                   	(bad)
	...
    c340:	af                   	scas   %es:(%rdi),%eax
    c341:	78 8e                	js     c2d1 <wasm[0]::function[63]+0x1d1>
    c343:	1d c5 71 cc 3f       	sbb    $0x3fcc71c5,%eax
	...
    c350:	04 fa                	add    $0xfa,%al
    c352:	97                   	xchg   %eax,%edi
    c353:	99                   	cltd
    c354:	99                   	cltd
    c355:	99                   	cltd
    c356:	d9 3f                	fnstcw (%rdi)
	...
    c360:	44 52                	rex.R push %rdx
    c362:	3e df 12             	ds fists (%rdx)
    c365:	f1                   	int1
    c366:	c2 3f 00             	ret    $0x3f
    c369:	00 00                	add    %al,(%rax)
    c36b:	00 00                	add    %al,(%rax)
    c36d:	00 00                	add    %al,(%rax)
    c36f:	00 de                	add    %bl,%dh
    c371:	03 cb                	add    %ebx,%ecx
    c373:	96                   	xchg   %eax,%esi
    c374:	64 46 c7             	fs rex.RX (bad)
    c377:	3f                   	(bad)
	...
    c380:	59                   	pop    %rcx
    c381:	93                   	xchg   %eax,%ebx
    c382:	22 94 24 49 d2 3f 00 	and    0x3fd249(%rsp),%dl
    c389:	00 00                	add    %al,(%rax)
    c38b:	00 00                	add    %al,(%rax)
    c38d:	00 00                	add    %al,(%rax)
    c38f:	00 93 55 55 55 55    	add    %dl,0x55555555(%rbx)
    c395:	55                   	push   %rbp
    c396:	e5 3f                	in     $0x3f,%eax
	...


work/wapm-followup/pi.cwasm:     file format elf64-x86-64


Disassembly of section .text:

000000000000be40 <wasm[0]::function[62]>:
    be40:	55                   	push   %rbp
    be41:	48 89 e5             	mov    %rsp,%rbp
    be44:	c4 c1 f9 7e cb       	vmovq  %xmm1,%r11
    be49:	4c 89 da             	mov    %r11,%rdx
    be4c:	48 d1 e2             	shl    $1,%rdx
    be4f:	48 85 d2             	test   %rdx,%rdx
    be52:	0f 84 39 02 00 00    	je     c091 <wasm[0]::function[62]+0x251>
    be58:	c5 f9 2e c9          	vucomisd %xmm1,%xmm1
    be5c:	0f 8a 2f 02 00 00    	jp     c091 <wasm[0]::function[62]+0x251>
    be62:	0f 85 29 02 00 00    	jne    c091 <wasm[0]::function[62]+0x251>
    be68:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    be6d:	48 89 c1             	mov    %rax,%rcx
    be70:	48 c1 e9 34          	shr    $0x34,%rcx
    be74:	48 89 ce             	mov    %rcx,%rsi
    be77:	81 e6 ff 07 00 00    	and    $0x7ff,%esi
    be7d:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
    be83:	0f 84 08 02 00 00    	je     c091 <wasm[0]::function[62]+0x251>
    be89:	48 89 c6             	mov    %rax,%rsi
    be8c:	48 d1 e6             	shl    $1,%rsi
    be8f:	48 3b f2             	cmp    %rdx,%rsi
    be92:	0f 86 e0 01 00 00    	jbe    c078 <wasm[0]::function[62]+0x238>
    be98:	f7 c1 ff 07 00 00    	test   $0x7ff,%ecx
    be9e:	0f 85 37 00 00 00    	jne    bedb <wasm[0]::function[62]+0x9b>
    bea4:	48 89 c2             	mov    %rax,%rdx
    bea7:	48 c1 e2 0c          	shl    $0xc,%rdx
    beab:	33 c9                	xor    %ecx,%ecx
    bead:	48 85 d2             	test   %rdx,%rdx
    beb0:	0f 8c 14 00 00 00    	jl     beca <wasm[0]::function[62]+0x8a>
    beb6:	33 c9                	xor    %ecx,%ecx
    beb8:	48 d1 e2             	shl    $1,%rdx
    bebb:	81 c1 ff ff ff ff    	add    $0xffffffff,%ecx
    bec1:	48 85 d2             	test   %rdx,%rdx
    bec4:	0f 8d ee ff ff ff    	jge    beb8 <wasm[0]::function[62]+0x78>
    beca:	ba 01 00 00 00       	mov    $0x1,%edx
    becf:	2b d1                	sub    %ecx,%edx
    bed1:	c4 e2 e9 f7 d0       	shlx   %rdx,%rax,%rdx
    bed6:	e9 17 00 00 00       	jmp    bef2 <wasm[0]::function[62]+0xb2>
    bedb:	48 89 c2             	mov    %rax,%rdx
    bede:	48 23 15 bb 01 00 00 	and    0x1bb(%rip),%rdx        # c0a0 <wasm[0]::function[62]+0x260>
    bee5:	48 0b 15 bc 01 00 00 	or     0x1bc(%rip),%rdx        # c0a8 <wasm[0]::function[62]+0x268>
    beec:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
    bef2:	4c 89 df             	mov    %r11,%rdi
    bef5:	48 c1 ef 34          	shr    $0x34,%rdi
    bef9:	48 89 fe             	mov    %rdi,%rsi
    befc:	81 e6 ff 07 00 00    	and    $0x7ff,%esi
    bf02:	f7 c7 ff 07 00 00    	test   $0x7ff,%edi
    bf08:	0f 85 41 00 00 00    	jne    bf4f <wasm[0]::function[62]+0x10f>
    bf0e:	4c 89 df             	mov    %r11,%rdi
    bf11:	48 c1 e7 0c          	shl    $0xc,%rdi
    bf15:	33 f6                	xor    %esi,%esi
    bf17:	48 85 ff             	test   %rdi,%rdi
    bf1a:	0f 8c 1e 00 00 00    	jl     bf3e <wasm[0]::function[62]+0xfe>
    bf20:	48 d1 e7             	shl    $1,%rdi
    bf23:	44 8d 46 ff          	lea    -0x1(%rsi),%r8d
    bf27:	48 85 ff             	test   %rdi,%rdi
    bf2a:	0f 8c 08 00 00 00    	jl     bf38 <wasm[0]::function[62]+0xf8>
    bf30:	4c 89 c6             	mov    %r8,%rsi
    bf33:	e9 e8 ff ff ff       	jmp    bf20 <wasm[0]::function[62]+0xe0>
    bf38:	81 c6 ff ff ff ff    	add    $0xffffffff,%esi
    bf3e:	bf 01 00 00 00       	mov    $0x1,%edi
    bf43:	2b fe                	sub    %esi,%edi
    bf45:	c4 42 c1 f7 db       	shlx   %rdi,%r11,%r11
    bf4a:	e9 0e 00 00 00       	jmp    bf5d <wasm[0]::function[62]+0x11d>
    bf4f:	4c 23 1d 4a 01 00 00 	and    0x14a(%rip),%r11        # c0a0 <wasm[0]::function[62]+0x260>
    bf56:	4c 0b 1d 4b 01 00 00 	or     0x14b(%rip),%r11        # c0a8 <wasm[0]::function[62]+0x268>
    bf5d:	48 89 d7             	mov    %rdx,%rdi
    bf60:	49 2b fb             	sub    %r11,%rdi
    bf63:	49 89 f8             	mov    %rdi,%r8
    bf66:	49 f7 d0             	not    %r8
    bf69:	49 c1 e8 3f          	shr    $0x3f,%r8
    bf6d:	45 0f b6 c8          	movzbl %r8b,%r9d
    bf71:	3b ce                	cmp    %esi,%ecx
    bf73:	0f 8e 67 00 00 00    	jle    bfe0 <wasm[0]::function[62]+0x1a0>
    bf79:	49 89 f8             	mov    %rdi,%r8
    bf7c:	41 f7 c1 01 00 00 00 	test   $0x1,%r9d
    bf83:	0f 85 08 00 00 00    	jne    bf91 <wasm[0]::function[62]+0x151>
    bf89:	49 89 d0             	mov    %rdx,%r8
    bf8c:	e9 16 00 00 00       	jmp    bfa7 <wasm[0]::function[62]+0x167>
    bf91:	4d 85 c0             	test   %r8,%r8
    bf94:	0f 85 0d 00 00 00    	jne    bfa7 <wasm[0]::function[62]+0x167>
    bf9a:	c5 fb 59 05 0e 01 00 	vmulsd 0x10e(%rip),%xmm0,%xmm0        # c0b0 <wasm[0]::function[62]+0x270>
    bfa1:	00
    bfa2:	48 89 ec             	mov    %rbp,%rsp
    bfa5:	5d                   	pop    %rbp
    bfa6:	c3                   	ret
    bfa7:	8d 51 ff             	lea    -0x1(%rcx),%edx
    bfaa:	49 d1 e0             	shl    $1,%r8
    bfad:	4c 89 c7             	mov    %r8,%rdi
    bfb0:	49 2b fb             	sub    %r11,%rdi
    bfb3:	49 89 f9             	mov    %rdi,%r9
    bfb6:	49 f7 d1             	not    %r9
    bfb9:	49 c1 e9 3f          	shr    $0x3f,%r9
    bfbd:	45 0f b6 c9          	movzbl %r9b,%r9d
    bfc1:	3b d6                	cmp    %esi,%edx
    bfc3:	0f 8e 0e 00 00 00    	jle    bfd7 <wasm[0]::function[62]+0x197>
    bfc9:	48 89 d1             	mov    %rdx,%rcx
    bfcc:	4c 89 c2             	mov    %r8,%rdx
    bfcf:	49 89 f8             	mov    %rdi,%r8
    bfd2:	e9 a5 ff ff ff       	jmp    bf7c <wasm[0]::function[62]+0x13c>
    bfd7:	81 c1 ff ff ff ff    	add    $0xffffffff,%ecx
    bfdd:	4c 89 c2             	mov    %r8,%rdx
    bfe0:	45 85 c9             	test   %r9d,%r9d
    bfe3:	0f 85 08 00 00 00    	jne    bff1 <wasm[0]::function[62]+0x1b1>
    bfe9:	48 89 d7             	mov    %rdx,%rdi
    bfec:	e9 16 00 00 00       	jmp    c007 <wasm[0]::function[62]+0x1c7>
    bff1:	48 85 ff             	test   %rdi,%rdi
    bff4:	0f 85 0d 00 00 00    	jne    c007 <wasm[0]::function[62]+0x1c7>
    bffa:	c5 fb 59 05 be 00 00 	vmulsd 0xbe(%rip),%xmm0,%xmm0        # c0c0 <wasm[0]::function[62]+0x280>
    c001:	00
    c002:	48 89 ec             	mov    %rbp,%rsp
    c005:	5d                   	pop    %rbp
    c006:	c3                   	ret
    c007:	48 3b 3d 92 00 00 00 	cmp    0x92(%rip),%rdi        # c0a0 <wasm[0]::function[62]+0x260>
    c00e:	0f 87 21 00 00 00    	ja     c035 <wasm[0]::function[62]+0x1f5>
    c014:	48 d1 e7             	shl    $1,%rdi
    c017:	8d 51 ff             	lea    -0x1(%rcx),%edx
    c01a:	48 3b 3d 87 00 00 00 	cmp    0x87(%rip),%rdi        # c0a8 <wasm[0]::function[62]+0x268>
    c021:	0f 83 08 00 00 00    	jae    c02f <wasm[0]::function[62]+0x1ef>
    c027:	48 89 d1             	mov    %rdx,%rcx
    c02a:	e9 e5 ff ff ff       	jmp    c014 <wasm[0]::function[62]+0x1d4>
    c02f:	81 c1 ff ff ff ff    	add    $0xffffffff,%ecx
    c035:	85 c9                	test   %ecx,%ecx
    c037:	0f 8e 1b 00 00 00    	jle    c058 <wasm[0]::function[62]+0x218>
    c03d:	48 ba 00 00 00 00 00 	movabs $0xfff0000000000000,%rdx
    c044:	00 f0 ff
    c047:	48 03 d7             	add    %rdi,%rdx
    c04a:	8b c9                	mov    %ecx,%ecx
    c04c:	48 c1 e1 34          	shl    $0x34,%rcx
    c050:	48 0b d1             	or     %rcx,%rdx
    c053:	e9 0c 00 00 00       	jmp    c064 <wasm[0]::function[62]+0x224>
    c058:	ba 01 00 00 00       	mov    $0x1,%edx
    c05d:	2b d1                	sub    %ecx,%edx
    c05f:	c4 e2 eb f7 d7       	shrx   %rdx,%rdi,%rdx
    c064:	48 23 05 65 00 00 00 	and    0x65(%rip),%rax        # c0d0 <wasm[0]::function[62]+0x290>
    c06b:	48 0b d0             	or     %rax,%rdx
    c06e:	c4 e1 f9 6e c2       	vmovq  %rdx,%xmm0
    c073:	48 89 ec             	mov    %rbp,%rsp
    c076:	5d                   	pop    %rbp
    c077:	c3                   	ret
    c078:	c5 fb 59 0d 60 00 00 	vmulsd 0x60(%rip),%xmm0,%xmm1        # c0e0 <wasm[0]::function[62]+0x2a0>
    c07f:	00
    c080:	48 3b f2             	cmp    %rdx,%rsi
    c083:	0f 85 03 00 00 00    	jne    c08c <wasm[0]::function[62]+0x24c>
    c089:	0f 28 c1             	movaps %xmm1,%xmm0
    c08c:	48 89 ec             	mov    %rbp,%rsp
    c08f:	5d                   	pop    %rbp
    c090:	c3                   	ret
    c091:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    c095:	c5 fb 5e c0          	vdivsd %xmm0,%xmm0,%xmm0
    c099:	48 89 ec             	mov    %rbp,%rsp
    c09c:	5d                   	pop    %rbp
    c09d:	c3                   	ret
    c09e:	00 00                	add    %al,(%rax)
    c0a0:	ff                   	(bad)
    c0a1:	ff                   	(bad)
    c0a2:	ff                   	(bad)
    c0a3:	ff                   	(bad)
    c0a4:	ff                   	(bad)
    c0a5:	ff 0f                	decl   (%rdi)
    c0a7:	00 00                	add    %al,(%rax)
    c0a9:	00 00                	add    %al,(%rax)
    c0ab:	00 00                	add    %al,(%rax)
    c0ad:	00 10                	add    %dl,(%rax)
	...
    c0d7:	80 00 00             	addb   $0x0,(%rax)
	...

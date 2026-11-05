      20:	55                   	push   %rbp
      21:	48 89 e5             	mov    %rsp,%rbp
      24:	4c 8b 57 08          	mov    0x8(%rdi),%r10
      28:	4d 8b 52 18          	mov    0x18(%r10),%r10
      2c:	4c 3b d4             	cmp    %rsp,%r10
      2f:	0f 87 9f 70 04 00    	ja     470d4 <wasm[0]::function[1]+0x470b4>
      35:	49 81 c2 a0 38 01 00 	add    $0x138a0,%r10
      3c:	4c 3b d4             	cmp    %rsp,%r10
      3f:	0f 87 91 70 04 00    	ja     470d6 <wasm[0]::function[1]+0x470b6>
      45:	49 89 e3             	mov    %rsp,%r11
      48:	49 81 eb 00 40 01 00 	sub    $0x14000,%r11
      4f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
      56:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
      5d:	4c 3b dc             	cmp    %rsp,%r11
      60:	0f 85 e9 ff ff ff    	jne    4f <wasm[0]::function[1]+0x2f>
      66:	48 81 c4 00 40 01 00 	add    $0x14000,%rsp
      6d:	48 81 ec 90 38 01 00 	sub    $0x13890,%rsp
      74:	48 89 9c 24 60 38 01 	mov    %rbx,0x13860(%rsp)
      7c:	4c 89 a4 24 68 38 01 	mov    %r12,0x13868(%rsp)
      84:	4c 89 ac 24 70 38 01 	mov    %r13,0x13870(%rsp)
      8c:	4c 89 b4 24 78 38 01 	mov    %r14,0x13878(%rsp)
      94:	4c 89 bc 24 80 38 01 	mov    %r15,0x13880(%rsp)
      9c:	48 89 fb             	mov    %rdi,%rbx
      9f:	48 89 de             	mov    %rbx,%rsi
      a2:	e8 59 ff ff ff       	call   0 <wasm[0]::function[0]>
      a7:	49 89 c4             	mov    %rax,%r12
      aa:	48 89 de             	mov    %rbx,%rsi
      ad:	48 89 df             	mov    %rbx,%rdi
      b0:	e8 4b ff ff ff       	call   0 <wasm[0]::function[0]>
      b5:	49 89 c5             	mov    %rax,%r13
      b8:	48 89 de             	mov    %rbx,%rsi
      bb:	48 89 df             	mov    %rbx,%rdi
      be:	e8 3d ff ff ff       	call   0 <wasm[0]::function[0]>
      c3:	49 89 c6             	mov    %rax,%r14
      c6:	48 89 de             	mov    %rbx,%rsi
      c9:	48 89 df             	mov    %rbx,%rdi
      cc:	e8 2f ff ff ff       	call   0 <wasm[0]::function[0]>
      d1:	49 89 c7             	mov    %rax,%r15
   47089:	48 89 f9             	mov    %rdi,%rcx
   4708c:	03 c8                	add    %eax,%ecx
   4708e:	48 8b 43 38          	mov    0x38(%rbx),%rax
   47092:	89 08                	mov    %ecx,(%rax)
   47094:	81 f9 10 27 00 00    	cmp    $0x2710,%ecx
   4709a:	0f 85 38 00 00 00    	jne    470d8 <wasm[0]::function[1]+0x470b8>
   470a0:	48 8b 9c 24 60 38 01 	mov    0x13860(%rsp),%rbx
   470a8:	4c 8b a4 24 68 38 01 	mov    0x13868(%rsp),%r12
   470b0:	4c 8b ac 24 70 38 01 	mov    0x13870(%rsp),%r13
   470b8:	4c 8b b4 24 78 38 01 	mov    0x13878(%rsp),%r14
   470c0:	4c 8b bc 24 80 38 01 	mov    0x13880(%rsp),%r15
   470c8:	48 81 c4 90 38 01 00 	add    $0x13890,%rsp
   470cf:	48 89 ec             	mov    %rbp,%rsp
   470d2:	5d                   	pop    %rbp
   470d3:	c3                   	ret
   470d4:	0f 0b                	ud2
   470d6:	0f 0b                	ud2
   470d8:	0f 0b                	ud2

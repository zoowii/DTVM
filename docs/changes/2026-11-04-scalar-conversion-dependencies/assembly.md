# Generated-code excerpts

Diagnostic captures only; instruction counts are not cycle measurements.
The old Greedy atax capture predates the budget patch; this kernel is unchanged
by that patch. New FastRA/Greedy captures use the same zero-idiom binary.
Addresses are offsets within captured code/text.

## DTVM old Greedy: matrix initialization

```asm
     1d6:	44 89 f9             	mov    ecx,r15d
     1d9:	48 ba 2d 34 a9 f9 00 	movabs rdx,0xf9a9342d
     1e0:	00 00 00 
     1e3:	48 0f af ca          	imul   rcx,rdx
     1e7:	48 c1 e9 2b          	shr    rcx,0x2b
     1eb:	89 c9                	mov    ecx,ecx
     1ed:	44 89 e2             	mov    edx,r12d
     1f0:	44 01 f2             	add    edx,r14d
     1f3:	69 c9 34 08 00 00    	imul   ecx,ecx,0x834
     1f9:	44 89 fe             	mov    esi,r15d
     1fc:	29 ce                	sub    esi,ecx
     1fe:	f2 0f 2a c6          	cvtsi2sd xmm0,esi
     202:	f2 0f 5e c1          	divsd  xmm0,xmm1
     206:	f2 0f 11 04 10       	movsd  QWORD PTR [rax+rdx*1],xmm0
     20b:	45 8d 7f 01          	lea    r15d,[r15+0x1]
     20f:	45 8d 76 08          	lea    r14d,[r14+0x8]
     213:	41 81 fe a0 41 00 00 	cmp    r14d,0x41a0
     21a:	75 ba                	jne    0x1d6
```

## DTVM zero-idiom Greedy: same initialization

```asm
     1d9:	48 ba 2d 34 a9 f9 00 	movabs rdx,0xf9a9342d
     1e0:	00 00 00 
     1e3:	48 0f af ca          	imul   rcx,rdx
     1e7:	48 c1 e9 2b          	shr    rcx,0x2b
     1eb:	89 c9                	mov    ecx,ecx
     1ed:	44 89 e2             	mov    edx,r12d
     1f0:	44 01 f2             	add    edx,r14d
     1f3:	69 c9 34 08 00 00    	imul   ecx,ecx,0x834
     1f9:	44 89 fe             	mov    esi,r15d
     1fc:	29 ce                	sub    esi,ecx
     1fe:	0f 57 c0             	xorps  xmm0,xmm0
     201:	f2 0f 2a c6          	cvtsi2sd xmm0,esi
     205:	f2 0f 5e c1          	divsd  xmm0,xmm1
     209:	f2 0f 11 04 10       	movsd  QWORD PTR [rax+rdx*1],xmm0
     20e:	45 8d 7f 01          	lea    r15d,[r15+0x1]
     212:	45 8d 76 08          	lea    r14d,[r14+0x8]
     216:	41 81 fe a0 41 00 00 	cmp    r14d,0x41a0
     21d:	75 b7                	jne    0x1d6
```

## Wasmtime 45: same initialization

```asm
     1b3:	c4 e2 43 f6 3d 64 03 	mulx   edi,edi,DWORD PTR [rip+0x364]        # 520 <wasm[0]::function[9]::main+0x480>
     1ba:	00 00 
     1bc:	c1 ef 0b             	shr    edi,0xb
     1bf:	44 69 c7 34 08 00 00 	imul   r8d,edi,0x834
     1c6:	48 89 d7             	mov    rdi,rdx
     1c9:	41 2b f8             	sub    edi,r8d
     1cc:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
     1d0:	c5 fb 2a d7          	vcvtsi2sd xmm2,xmm0,edi
     1d4:	c5 eb 5e 05 54 03 00 	vdivsd xmm0,xmm2,QWORD PTR [rip+0x354]        # 530 <wasm[0]::function[9]::main+0x490>
     1db:	00 
     1dc:	8d 3c 30             	lea    edi,[rax+rsi*1]
     1df:	c4 c1 7b 11 44 3d 00 	vmovsd QWORD PTR [r13+rdi*1+0x0],xmm0
     1e6:	8d 7e 08             	lea    edi,[rsi+0x8]
     1e9:	81 c2 01 00 00 00    	add    edx,0x1
     1ef:	81 fe 98 41 00 00    	cmp    esi,0x4198
     1f5:	0f 84 08 00 00 00    	je     203 <wasm[0]::function[9]::main+0x163>
     1fb:	48 89 fe             	mov    rsi,rdi
     1fe:	e9 b0 ff ff ff       	jmp    1b3 <wasm[0]::function[9]::main+0x113>
```

## DTVM FastRA: atax dot-product loop

```asm
     305:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
     308:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
     30c:	f2 0f 10 45 d0       	movsd  xmm0,QWORD PTR [rbp-0x30]
     311:	8b 75 e0             	mov    esi,DWORD PTR [rbp-0x20]
     314:	8b 7d c4             	mov    edi,DWORD PTR [rbp-0x3c]
     317:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
     31a:	41 89 c0             	mov    r8d,eax
     31d:	44 01 c7             	add    edi,r8d
     320:	f2 0f 10 0c 39       	movsd  xmm1,QWORD PTR [rcx+rdi*1]
     325:	89 c7                	mov    edi,eax
     327:	01 fe                	add    esi,edi
     329:	f2 0f 10 14 31       	movsd  xmm2,QWORD PTR [rcx+rsi*1]
     32e:	f2 0f 59 ca          	mulsd  xmm1,xmm2
     332:	f2 0f 58 c1          	addsd  xmm0,xmm1
     336:	0f 28 c8             	movaps xmm1,xmm0
     339:	f2 0f 11 4d d0       	movsd  QWORD PTR [rbp-0x30],xmm1
     33e:	f2 0f 11 04 11       	movsd  QWORD PTR [rcx+rdx*1],xmm0
     343:	8d 40 08             	lea    eax,[rax+0x8]
     346:	89 c1                	mov    ecx,eax
     348:	89 4d d8             	mov    DWORD PTR [rbp-0x28],ecx
     34b:	3d a0 41 00 00       	cmp    eax,0x41a0
     350:	75 b3                	jne    0x305
```

## DTVM GreedyRA: atax dot-product loop

```asm
     289:	44 89 f1             	mov    ecx,r14d
     28c:	44 01 f9             	add    ecx,r15d
     28f:	f2 0f 10 04 08       	movsd  xmm0,QWORD PTR [rax+rcx*1]
     294:	89 f1                	mov    ecx,esi
     296:	44 01 f9             	add    ecx,r15d
     299:	f2 0f 10 0c 08       	movsd  xmm1,QWORD PTR [rax+rcx*1]
     29e:	f2 0f 59 c1          	mulsd  xmm0,xmm1
     2a2:	f2 0f 58 d0          	addsd  xmm2,xmm0
     2a6:	f2 42 0f 11 14 28    	movsd  QWORD PTR [rax+r13*1],xmm2
     2ac:	45 8d 7f 08          	lea    r15d,[r15+0x8]
     2b0:	41 81 ff a0 41 00 00 	cmp    r15d,0x41a0
     2b7:	75 d0                	jne    0x289
```

## DTVM FastRA: bicg kernel loop

```asm
     347:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
     34a:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
     34e:	8b 75 ec             	mov    esi,DWORD PTR [rbp-0x14]
     351:	44 8b 45 fc          	mov    r8d,DWORD PTR [rbp-0x4]
     355:	44 8b 4d c0          	mov    r9d,DWORD PTR [rbp-0x40]
     359:	8b 7d c8             	mov    edi,DWORD PTR [rbp-0x38]
     35c:	8b 55 d8             	mov    edx,DWORD PTR [rbp-0x28]
     35f:	41 89 c2             	mov    r10d,eax
     362:	44 01 d2             	add    edx,r10d
     365:	41 89 d2             	mov    r10d,edx
     368:	f2 42 0f 10 04 11    	movsd  xmm0,QWORD PTR [rcx+r10*1]
     36e:	f2 0f 10 0c 39       	movsd  xmm1,QWORD PTR [rcx+rdi*1]
     373:	89 c7                	mov    edi,eax
     375:	41 01 f9             	add    r9d,edi
     378:	44 89 cf             	mov    edi,r9d
     37b:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
     37e:	f2 42 0f 10 14 09    	movsd  xmm2,QWORD PTR [rcx+r9*1]
     384:	f2 0f 59 ca          	mulsd  xmm1,xmm2
     388:	f2 0f 58 c1          	addsd  xmm0,xmm1
     38c:	f2 0f 11 04 11       	movsd  QWORD PTR [rcx+rdx*1],xmm0
     391:	44 89 c2             	mov    edx,r8d
     394:	f2 42 0f 10 04 01    	movsd  xmm0,QWORD PTR [rcx+r8*1]
     39a:	f2 0f 10 0c 39       	movsd  xmm1,QWORD PTR [rcx+rdi*1]
     39f:	89 c7                	mov    edi,eax
     3a1:	01 fe                	add    esi,edi
     3a3:	f2 0f 10 14 31       	movsd  xmm2,QWORD PTR [rcx+rsi*1]
     3a8:	f2 0f 59 ca          	mulsd  xmm1,xmm2
     3ac:	f2 0f 58 c1          	addsd  xmm0,xmm1
     3b0:	f2 0f 11 04 11       	movsd  QWORD PTR [rcx+rdx*1],xmm0
     3b5:	8d 40 08             	lea    eax,[rax+0x8]
     3b8:	89 c1                	mov    ecx,eax
     3ba:	89 4d d0             	mov    DWORD PTR [rbp-0x30],ecx
     3bd:	3d 60 3b 00 00       	cmp    eax,0x3b60
     3c2:	75 83                	jne    0x347
```

## DTVM GreedyRA: bicg kernel loop

```asm
     2c4:	89 c2                	mov    edx,eax
     2c6:	44 01 fa             	add    edx,r15d
     2c9:	89 d6                	mov    esi,edx
     2cb:	f2 0f 10 04 37       	movsd  xmm0,QWORD PTR [rdi+rsi*1]
     2d0:	f2 0f 10 0c 0f       	movsd  xmm1,QWORD PTR [rdi+rcx*1]
     2d5:	44 89 f6             	mov    esi,r14d
     2d8:	44 01 fe             	add    esi,r15d
     2db:	f2 0f 10 14 37       	movsd  xmm2,QWORD PTR [rdi+rsi*1]
     2e0:	f2 0f 59 ca          	mulsd  xmm1,xmm2
     2e4:	f2 0f 58 c1          	addsd  xmm0,xmm1
     2e8:	f2 0f 11 04 17       	movsd  QWORD PTR [rdi+rdx*1],xmm0
     2ed:	f2 42 0f 10 04 2f    	movsd  xmm0,QWORD PTR [rdi+r13*1]
     2f3:	f2 0f 10 0c 37       	movsd  xmm1,QWORD PTR [rdi+rsi*1]
     2f8:	44 89 c2             	mov    edx,r8d
     2fb:	44 01 fa             	add    edx,r15d
     2fe:	f2 0f 10 14 17       	movsd  xmm2,QWORD PTR [rdi+rdx*1]
     303:	f2 0f 59 ca          	mulsd  xmm1,xmm2
     307:	f2 0f 58 c1          	addsd  xmm0,xmm1
     30b:	f2 42 0f 11 04 2f    	movsd  QWORD PTR [rdi+r13*1],xmm0
     311:	45 8d 7f 08          	lea    r15d,[r15+0x8]
     315:	41 81 ff 60 3b 00 00 	cmp    r15d,0x3b60
     31c:	75 a6                	jne    0x2c4
```

## Wasmtime 45: bicg kernel loop

```asm
     2c2:	44 8d 04 38          	lea    r8d,[rax+rdi*1]
     2c6:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
     2cb:	c4 81 7b 10 44 05 00 	vmovsd xmm0,QWORD PTR [r13+r8*1+0x0]
     2d2:	c4 c1 7b 10 4c 35 00 	vmovsd xmm1,QWORD PTR [r13+rsi*1+0x0]
     2d9:	8d 04 39             	lea    eax,[rcx+rdi*1]
     2dc:	c4 c1 73 59 4c 05 00 	vmulsd xmm1,xmm1,QWORD PTR [r13+rax*1+0x0]
     2e3:	c5 fb 58 c1          	vaddsd xmm0,xmm0,xmm1
     2e7:	c4 81 7b 11 44 05 00 	vmovsd QWORD PTR [r13+r8*1+0x0],xmm0
     2ee:	c4 c1 7b 10 44 15 00 	vmovsd xmm0,QWORD PTR [r13+rdx*1+0x0]
     2f5:	c4 c1 7b 10 4c 05 00 	vmovsd xmm1,QWORD PTR [r13+rax*1+0x0]
     2fc:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
     301:	03 c7                	add    eax,edi
     303:	c4 c1 73 59 4c 05 00 	vmulsd xmm1,xmm1,QWORD PTR [r13+rax*1+0x0]
     30a:	c5 fb 58 c1          	vaddsd xmm0,xmm0,xmm1
     30e:	c4 c1 7b 11 44 15 00 	vmovsd QWORD PTR [r13+rdx*1+0x0],xmm0
     315:	8d 47 08             	lea    eax,[rdi+0x8]
     318:	81 ff 58 3b 00 00    	cmp    edi,0x3b58
     31e:	0f 84 0d 00 00 00    	je     331 <wasm[0]::function[9]::main+0x291>
     324:	48 89 c7             	mov    rdi,rax
     327:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
     32c:	e9 91 ff ff ff       	jmp    2c2 <wasm[0]::function[9]::main+0x222>
```

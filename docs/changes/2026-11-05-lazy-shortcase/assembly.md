# Actual lazy-generated code and matching Wasmtime function

The stripped echo module has 11 imported functions. Its internal #20 therefore
matches Wasmtime symbol `wasm[0]::function[31]`. DTVM code is the actual FastRA
foreground body captured while running lazy-G-MT, not an eager substitute.
Wasmtime 45 code comes from `wasmtime compile` on the same input and default
codegen options; capture/compile were outside timed samples.

The DTVM frame is 0x180 bytes and its entry materializes/spills FP constants
before the formatter decides which path to take. Wasmtime uses a 0x160 frame
and RIP-relative constant loads at use sites. The no-hoist experiment reduces
the DTVM frame to 0x130, but did not establish end-to-end WAPM gains. Static
frame-reference counts over the whole function (including cold code) are 2103
DTVM rbp-negative references vs 1335 Wasmtime rsp references; these are not
dynamic load counts or measured execution cycles.

## DTVM baseline lazy FastRA entry

```asm
       0:	55                   	push   rbp
       1:	48 89 e5             	mov    rbp,rsp
       4:	48 81 ec 80 01 00 00 	sub    rsp,0x180
       b:	48 89 bd e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rdi
      12:	89 b5 ec fe ff ff    	mov    DWORD PTR [rbp-0x114],esi
      18:	89 d0                	mov    eax,edx
      1a:	89 85 f0 fe ff ff    	mov    DWORD PTR [rbp-0x110],eax
      20:	89 8d f4 fe ff ff    	mov    DWORD PTR [rbp-0x10c],ecx
      26:	44 89 85 f8 fe ff ff 	mov    DWORD PTR [rbp-0x108],r8d
      2d:	44 89 8d fc fe ff ff 	mov    DWORD PTR [rbp-0x104],r9d
      34:	48 b8 00 00 00 00 00 	movabs rax,0x7ff0000000000000
      3b:	00 f0 7f
      3e:	66 48 0f 6e c0       	movq   xmm0,rax
      43:	f2 0f 11 85 00 ff ff 	movsd  QWORD PTR [rbp-0x100],xmm0
      4a:	ff
      4b:	48 b8 00 00 00 00 00 	movabs rax,0x4030000000000000
      52:	00 30 40
      55:	66 48 0f 6e c0       	movq   xmm0,rax
      5a:	f2 0f 11 85 08 ff ff 	movsd  QWORD PTR [rbp-0xf8],xmm0
      61:	ff
      62:	48 b8 00 00 00 00 00 	movabs rax,0x41e0000000000000
      69:	00 e0 41
      6c:	66 48 0f 6e c0       	movq   xmm0,rax
      71:	f2 0f 11 85 10 ff ff 	movsd  QWORD PTR [rbp-0xf0],xmm0
      78:	ff
      79:	48 b8 00 00 00 00 00 	movabs rax,0x41b0000000000000
      80:	00 b0 41
      83:	66 48 0f 6e c0       	movq   xmm0,rax
      88:	f2 0f 11 85 18 ff ff 	movsd  QWORD PTR [rbp-0xe8],xmm0
      8f:	ff
      90:	48 b8 00 00 00 00 00 	movabs rax,0x41f0000000000000
      97:	00 f0 41
      9a:	66 48 0f 6e c0       	movq   xmm0,rax
      9f:	f2 0f 11 85 20 ff ff 	movsd  QWORD PTR [rbp-0xe0],xmm0
      a6:	ff
      a7:	48 b8 00 00 00 00 65 	movabs rax,0x41cdcd6500000000
      ae:	cd cd 41
      b1:	66 48 0f 6e c0       	movq   xmm0,rax
      b6:	f2 0f 11 85 28 ff ff 	movsd  QWORD PTR [rbp-0xd8],xmm0
      bd:	ff
      be:	48 b8 00 00 00 00 00 	movabs rax,0x4340000000000000
      c5:	00 40 43
      c8:	66 48 0f 6e c0       	movq   xmm0,rax
      cd:	f2 0f 11 85 30 ff ff 	movsd  QWORD PTR [rbp-0xd0],xmm0
      d4:	ff
      d5:	48 b8 01 00 00 00 00 	movabs rax,0x4340000000000001
      dc:	00 40 43
      df:	66 48 0f 6e c0       	movq   xmm0,rax
      e4:	f2 0f 11 85 38 ff ff 	movsd  QWORD PTR [rbp-0xc8],xmm0
      eb:	ff
      ec:	48 b8 00 00 00 00 00 	movabs rax,0x3fe0000000000000
      f3:	00 e0 3f
      f6:	66 48 0f 6e c0       	movq   xmm0,rax
      fb:	f2 0f 11 85 40 ff ff 	movsd  QWORD PTR [rbp-0xc0],xmm0
     102:	ff
     103:	48 b8 00 00 00 00 00 	movabs rax,0x3ff0000000000000
     10a:	00 f0 3f
     10d:	66 48 0f 6e c0       	movq   xmm0,rax
     112:	f2 0f 11 85 48 ff ff 	movsd  QWORD PTR [rbp-0xb8],xmm0
     119:	ff
     11a:	48 b8 00 00 00 00 00 	movabs rax,0x3ff8000000000000
     121:	00 f8 3f
     124:	66 48 0f 6e c0       	movq   xmm0,rax
     129:	f2 0f 11 85 50 ff ff 	movsd  QWORD PTR [rbp-0xb0],xmm0
     130:	ff
     131:	31 c0                	xor    eax,eax
     133:	31 c0                	xor    eax,eax
     135:	31 c0                	xor    eax,eax
     137:	31 c0                	xor    eax,eax
     139:	31 c0                	xor    eax,eax
     13b:	31 c0                	xor    eax,eax
     13d:	31 c0                	xor    eax,eax
     13f:	31 c0                	xor    eax,eax
     141:	31 c0                	xor    eax,eax
     143:	31 c0                	xor    eax,eax
     145:	31 c0                	xor    eax,eax
     147:	31 c0                	xor    eax,eax
     149:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
     14f:	31 c0                	xor    eax,eax
     151:	89 85 60 ff ff ff    	mov    DWORD PTR [rbp-0xa0],eax
     157:	31 c0                	xor    eax,eax
     159:	89 85 64 ff ff ff    	mov    DWORD PTR [rbp-0x9c],eax
     15f:	31 c0                	xor    eax,eax
     161:	89 85 68 ff ff ff    	mov    DWORD PTR [rbp-0x98],eax
     167:	31 c0                	xor    eax,eax
     169:	89 85 6c ff ff ff    	mov    DWORD PTR [rbp-0x94],eax
     16f:	31 c0                	xor    eax,eax
     171:	89 85 70 ff ff ff    	mov    DWORD PTR [rbp-0x90],eax
     177:	31 c0                	xor    eax,eax
     179:	89 85 74 ff ff ff    	mov    DWORD PTR [rbp-0x8c],eax
     17f:	31 c0                	xor    eax,eax
     181:	89 85 78 ff ff ff    	mov    DWORD PTR [rbp-0x88],eax
     187:	31 c0                	xor    eax,eax
     189:	89 85 7c ff ff ff    	mov    DWORD PTR [rbp-0x84],eax
     18f:	31 c0                	xor    eax,eax
     191:	89 45 80             	mov    DWORD PTR [rbp-0x80],eax
     194:	31 c0                	xor    eax,eax
     196:	89 45 84             	mov    DWORD PTR [rbp-0x7c],eax
     199:	31 c0                	xor    eax,eax
     19b:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
     19e:	31 c0                	xor    eax,eax
     1a0:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
     1a3:	31 c0                	xor    eax,eax
```

## Matching Wasmtime 45 entry

```asm
0000000000003820 <wasm[0]::function[31]>:
    3820:	55                   	push   rbp
    3821:	48 89 e5             	mov    rbp,rsp
    3824:	4c 8b 57 08          	mov    r10,QWORD PTR [rdi+0x8]
    3828:	4d 8b 52 18          	mov    r10,QWORD PTR [r10+0x18]
    382c:	49 81 c2 70 01 00 00 	add    r10,0x170
    3833:	4c 3b d4             	cmp    r10,rsp
    3836:	0f 87 17 53 00 00    	ja     8b53 <wasm[0]::function[31]+0x5333>
    383c:	48 81 ec 60 01 00 00 	sub    rsp,0x160
    3843:	48 89 9c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rbx
    384a:	00
    384b:	4c 89 a4 24 38 01 00 	mov    QWORD PTR [rsp+0x138],r12
    3852:	00
    3853:	4c 89 ac 24 40 01 00 	mov    QWORD PTR [rsp+0x140],r13
    385a:	00
    385b:	4c 89 b4 24 48 01 00 	mov    QWORD PTR [rsp+0x148],r14
    3862:	00
    3863:	4c 89 bc 24 50 01 00 	mov    QWORD PTR [rsp+0x150],r15
    386a:	00
    386b:	4c 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],r9
    3870:	49 89 c9             	mov    r9,rcx
    3873:	4c 8b 75 10          	mov    r14,QWORD PTR [rbp+0x10]
    3877:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
    387c:	44 8b af c0 01 00 00 	mov    r13d,DWORD PTR [rdi+0x1c0]
    3883:	4c 89 e8             	mov    rax,r13
    3886:	2d 70 03 00 00       	sub    eax,0x370
    388b:	4c 89 ac 24 20 01 00 	mov    QWORD PTR [rsp+0x120],r13
    3892:	00
    3893:	89 87 c0 01 00 00    	mov    DWORD PTR [rdi+0x1c0],eax
    3899:	45 33 f6             	xor    r14d,r14d
    389c:	48 8b 77 38          	mov    rsi,QWORD PTR [rdi+0x38]
    38a0:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    38a4:	48 89 b4 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rsi
    38ab:	00
    38ac:	bb 01 00 00 00       	mov    ebx,0x1
    38b1:	48 89 9c 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rbx
    38b8:	00
    38b9:	44 8b e2             	mov    r12d,edx
    38bc:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    38c1:	4c 89 a4 24 08 01 00 	mov    QWORD PTR [rsp+0x108],r12
    38c8:	00
    38c9:	41 8b c0             	mov    eax,r8d
    38cc:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    38d1:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
    38d8:	00
    38d9:	4c 89 f1             	mov    rcx,r14
    38dc:	4c 89 b4 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r14
    38e3:	00
    38e4:	4c 89 b4 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r14
    38eb:	00
    38ec:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    38f1:	2b d1                	sub    edx,ecx
    38f3:	44 3b f2             	cmp    r14d,edx
    38f6:	0f 8e 0d 00 00 00    	jle    3909 <wasm[0]::function[31]+0xe9>
    38fc:	4c 8b 9c 24 18 01 00 	mov    r11,QWORD PTR [rsp+0x118]
    3903:	00
    3904:	e9 e6 51 00 00       	jmp    8aef <wasm[0]::function[31]+0x52cf>
    3909:	4c 89 cb             	mov    rbx,r9
    390c:	8b d3                	mov    edx,ebx
    390e:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
    3915:	00
    3916:	48 0f b6 14 16       	movzx  rdx,BYTE PTR [rsi+rdx*1]
    391b:	85 d2                	test   edx,edx
    391d:	0f 84 0c 4f 00 00    	je     882f <wasm[0]::function[31]+0x500f>
    3923:	49 89 dd             	mov    r13,rbx
```

## No-hoist experiment: entry (not adopted)

```asm
       0:	55                   	push   rbp
       1:	48 89 e5             	mov    rbp,rsp
       4:	48 81 ec 30 01 00 00 	sub    rsp,0x130
       b:	48 89 bd 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdi
      12:	89 b5 48 ff ff ff    	mov    DWORD PTR [rbp-0xb8],esi
      18:	89 d0                	mov    eax,edx
      1a:	89 85 4c ff ff ff    	mov    DWORD PTR [rbp-0xb4],eax
      20:	89 8d 50 ff ff ff    	mov    DWORD PTR [rbp-0xb0],ecx
      26:	44 89 85 54 ff ff ff 	mov    DWORD PTR [rbp-0xac],r8d
      2d:	44 89 8d 58 ff ff ff 	mov    DWORD PTR [rbp-0xa8],r9d
      34:	31 c0                	xor    eax,eax
      36:	31 c0                	xor    eax,eax
      38:	31 c0                	xor    eax,eax
      3a:	31 c0                	xor    eax,eax
      3c:	31 c0                	xor    eax,eax
      3e:	31 c0                	xor    eax,eax
      40:	31 c0                	xor    eax,eax
      42:	31 c0                	xor    eax,eax
      44:	31 c0                	xor    eax,eax
      46:	31 c0                	xor    eax,eax
      48:	31 c0                	xor    eax,eax
      4a:	31 c0                	xor    eax,eax
      4c:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
      52:	31 c0                	xor    eax,eax
      54:	89 85 60 ff ff ff    	mov    DWORD PTR [rbp-0xa0],eax
      5a:	31 c0                	xor    eax,eax
      5c:	89 85 64 ff ff ff    	mov    DWORD PTR [rbp-0x9c],eax
      62:	31 c0                	xor    eax,eax
      64:	89 85 68 ff ff ff    	mov    DWORD PTR [rbp-0x98],eax
      6a:	31 c0                	xor    eax,eax
      6c:	89 85 6c ff ff ff    	mov    DWORD PTR [rbp-0x94],eax
      72:	31 c0                	xor    eax,eax
      74:	89 85 70 ff ff ff    	mov    DWORD PTR [rbp-0x90],eax
      7a:	31 c0                	xor    eax,eax
      7c:	89 85 74 ff ff ff    	mov    DWORD PTR [rbp-0x8c],eax
      82:	31 c0                	xor    eax,eax
      84:	89 85 78 ff ff ff    	mov    DWORD PTR [rbp-0x88],eax
      8a:	31 c0                	xor    eax,eax
      8c:	89 85 7c ff ff ff    	mov    DWORD PTR [rbp-0x84],eax
      92:	31 c0                	xor    eax,eax
      94:	89 45 80             	mov    DWORD PTR [rbp-0x80],eax
```

## Adopted lookup-index change: native equivalence diagnostic

For synthetic `hot1000`, compile the caller under serial lazy FastRA with the
baseline and indexed compiler. Each emits 31977 bytes and 7032 disassembly
instruction entries. The complete offset/mnemonic/operand sequences match after
normalizing **two** process-specific host-address MOVABS immediates. This masking
is valid only for this synthetic program: its guest integer literals are at most
1000 and it contains no floating literals or guest 64-bit constants. Do not apply
this rule to arbitrary code, where large integer/FP immediates carry semantics.
Normalized SHA256:
`75ad5b1b3dedba129763ab18be4618f7261c8e861def09d49fa2bd585343d334`.

A single untimed diagnostic records pre-RA work at 11.183→4.144 ms and the full
function pipeline at 26.743→16.898 ms. These are mechanism evidence only; they
are not substituted for the independent R15 process-wall measurements. The
indexed change affects compilation work, not native instruction selection.

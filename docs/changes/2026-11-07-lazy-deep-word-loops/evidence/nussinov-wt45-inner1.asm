 1e9:	41 8b f2             	mov    %r10d,%esi
 1ec:	41 8b 34 36          	mov    (%r14,%rsi,1),%esi
 1f0:	45 8b c4             	mov    %r12d,%r8d
 1f3:	47 8b 04 06          	mov    (%r14,%r8,1),%r8d
 1f7:	41 03 f0             	add    %r8d,%esi
 1fa:	41 3b f5             	cmp    %r13d,%esi
 1fd:	44 0f 4d ee          	cmovge %esi,%r13d
 201:	45 89 2c 1e          	mov    %r13d,(%r14,%rbx,1)
 205:	81 c0 ff ff ff ff    	add    $0xffffffff,%eax
 20b:	41 81 c2 10 27 00 00 	add    $0x2710,%r10d
 212:	41 81 c4 04 00 00 00 	add    $0x4,%r12d
 219:	85 c0                	test   %eax,%eax
 21b:	0f 85 c8 ff ff ff    	jne    0x1e9

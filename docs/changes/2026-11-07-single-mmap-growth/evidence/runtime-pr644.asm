
work/pr643-research/dtvm-anon-grown-once:     file format elf64-x86-64


Disassembly of section .text:

00000000002755f0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)>:
  2755f0:	41 57                	push   %r15
  2755f2:	41 56                	push   %r14
  2755f4:	41 55                	push   %r13
  2755f6:	49 89 cd             	mov    %rcx,%r13
  2755f9:	41 54                	push   %r12
  2755fb:	49 89 f4             	mov    %rsi,%r12
  2755fe:	55                   	push   %rbp
  2755ff:	48 89 d5             	mov    %rdx,%rbp
  275602:	53                   	push   %rbx
  275603:	48 89 fb             	mov    %rdi,%rbx
  275606:	48 83 ec 68          	sub    $0x68,%rsp
  27560a:	80 7e 14 00          	cmpb   $0x0,0x14(%rsi)
  27560e:	75 48                	jne    275658 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x68>
  275610:	4c 89 e9             	mov    %r13,%rcx
  275613:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  275618:	48 89 ea             	mov    %rbp,%rdx
  27561b:	4c 89 e6             	mov    %r12,%rsi
  27561e:	e8 8d f1 ff ff       	call   2747b0 <zen::runtime::WasmMemoryAllocator::reallocateNonBucketMemoryAndFillZerosToNew(zen::runtime::WasmMemoryData const&, unsigned long)>
  275623:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  275628:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  27562d:	66 0f 6f 44 24 40    	movdqa 0x40(%rsp),%xmm0
  275633:	0f 11 03             	movups %xmm0,(%rbx)
  275636:	66 0f 6f 44 24 50    	movdqa 0x50(%rsp),%xmm0
  27563c:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  275640:	48 83 c4 68          	add    $0x68,%rsp
  275644:	48 89 d8             	mov    %rbx,%rax
  275647:	5b                   	pop    %rbx
  275648:	5d                   	pop    %rbp
  275649:	41 5c                	pop    %r12
  27564b:	41 5d                	pop    %r13
  27564d:	41 5e                	pop    %r14
  27564f:	41 5f                	pop    %r15
  275651:	c3                   	ret
  275652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  275658:	44 8b 32             	mov    (%rdx),%r14d
  27565b:	41 8d 46 fe          	lea    -0x2(%r14),%eax
  27565f:	83 f8 01             	cmp    $0x1,%eax
  275662:	77 ac                	ja     275610 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x20>
  275664:	48 8b 76 20          	mov    0x20(%rsi),%rsi
  275668:	4c 8b 7a 08          	mov    0x8(%rdx),%r15
  27566c:	48 39 ce             	cmp    %rcx,%rsi
  27566f:	0f 82 2b 01 00 00    	jb     2757a0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1b0>
  275675:	66 0f ef c0          	pxor   %xmm0,%xmm0
  275679:	0f 11 44 24 24       	movups %xmm0,0x24(%rsp)
  27567e:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
  275683:	41 83 fe 03          	cmp    $0x3,%r14d
  275687:	0f 85 d6 00 00 00    	jne    275763 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x173>
  27568d:	49 8b 04 24          	mov    (%r12),%rax
  275691:	83 b8 ac 00 00 00 01 	cmpl   $0x1,0xac(%rax)
  275698:	0f 85 24 34 fa ff    	jne    218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  27569e:	48 8b 80 08 01 00 00 	mov    0x108(%rax),%rax
  2756a5:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  2756a9:	8b 00                	mov    (%rax),%eax
  2756ab:	48 c1 e0 10          	shl    $0x10,%rax
  2756af:	48 39 ca             	cmp    %rcx,%rdx
  2756b2:	73 09                	jae    2756bd <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xcd>
  2756b4:	48 39 c2             	cmp    %rax,%rdx
  2756b7:	0f 84 dc 01 00 00    	je     275899 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x2a9>
  2756bd:	4d 89 fa             	mov    %r15,%r10
  2756c0:	4d 8b 4c 24 40       	mov    0x40(%r12),%r9
  2756c5:	4c 89 d0             	mov    %r10,%rax
  2756c8:	31 d2                	xor    %edx,%edx
  2756ca:	49 8b 79 08          	mov    0x8(%r9),%rdi
  2756ce:	48 f7 f7             	div    %rdi
  2756d1:	49 8b 01             	mov    (%r9),%rax
  2756d4:	4c 8b 04 d0          	mov    (%rax,%rdx,8),%r8
  2756d8:	49 89 d3             	mov    %rdx,%r11
  2756db:	4d 85 c0             	test   %r8,%r8
  2756de:	0f 84 5c 01 00 00    	je     275840 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x250>
  2756e4:	49 8b 00             	mov    (%r8),%rax
  2756e7:	48 8b 48 08          	mov    0x8(%rax),%rcx
  2756eb:	49 39 ca             	cmp    %rcx,%r10
  2756ee:	74 2c                	je     27571c <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x12c>
  2756f0:	48 8b 30             	mov    (%rax),%rsi
  2756f3:	48 85 f6             	test   %rsi,%rsi
  2756f6:	0f 84 44 01 00 00    	je     275840 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x250>
  2756fc:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  275700:	49 89 c0             	mov    %rax,%r8
  275703:	31 d2                	xor    %edx,%edx
  275705:	48 89 c8             	mov    %rcx,%rax
  275708:	48 f7 f7             	div    %rdi
  27570b:	49 39 d3             	cmp    %rdx,%r11
  27570e:	0f 85 2c 01 00 00    	jne    275840 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x250>
  275714:	48 89 f0             	mov    %rsi,%rax
  275717:	49 39 ca             	cmp    %rcx,%r10
  27571a:	75 d4                	jne    2756f0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x100>
  27571c:	49 8b 10             	mov    (%r8),%rdx
  27571f:	48 8d 42 10          	lea    0x10(%rdx),%rax
  275723:	48 85 d2             	test   %rdx,%rdx
  275726:	0f 84 14 01 00 00    	je     275840 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x250>
  27572c:	48 8b 10             	mov    (%rax),%rdx
  27572f:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  275734:	49 8d bc 24 88 00 00 	lea    0x88(%r12),%rdi
  27573b:	00
  27573c:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
  275741:	48 89 14 24          	mov    %rdx,(%rsp)
  275745:	e8 76 0f 00 00       	call   2766c0 <std::__detail::_Map_base<unsigned char*, std::pair<unsigned char* const, std::shared_ptr<zen::runtime::MmapBucketInstance> >, std::allocator<std::pair<unsigned char* const, std::shared_ptr<zen::runtime::MmapBucketInstance> > >, std::__detail::_Select1st, std::equal_to<unsigned char*>, std::hash<unsigned char*>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>, true>::operator[](unsigned char* const&)>
  27574a:	48 8b 14 24          	mov    (%rsp),%rdx
  27574e:	48 8b 08             	mov    (%rax),%rcx
  275751:	48 8b 45 08          	mov    0x8(%rbp),%rax
  275755:	48 29 d0             	sub    %rdx,%rax
  275758:	31 d2                	xor    %edx,%edx
  27575a:	48 f7 71 68          	divq   0x68(%rcx)
  27575e:	4c 89 6c c1 08       	mov    %r13,0x8(%rcx,%rax,8)
  275763:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  275768:	31 d2                	xor    %edx,%edx
  27576a:	4c 89 e7             	mov    %r12,%rdi
  27576d:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
  275772:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  275777:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
  27577c:	e8 ef fb ff ff       	call   275370 <zen::runtime::WasmMemoryAllocator::mprotectReadWriteWasmMemoryData(zen::runtime::WasmMemoryData const&, bool)>
  275781:	66 0f 6f 44 24 20    	movdqa 0x20(%rsp),%xmm0
  275787:	0f 11 03             	movups %xmm0,(%rbx)
  27578a:	66 0f 6f 44 24 30    	movdqa 0x30(%rsp),%xmm0
  275790:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  275794:	e9 a7 fe ff ff       	jmp    275640 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x50>
  275799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  2757a0:	4c 8b 72 10          	mov    0x10(%rdx),%r14
  2757a4:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  2757a9:	48 89 ca             	mov    %rcx,%rdx
  2757ac:	4c 89 e6             	mov    %r12,%rsi
  2757af:	e8 7c e3 ff ff       	call   273b30 <zen::runtime::WasmMemoryAllocator::allocateNonBucketMemory(unsigned long)>
  2757b4:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  2757b9:	4d 85 ed             	test   %r13,%r13
  2757bc:	0f 84 00 33 fa ff    	je     218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  2757c2:	4d 85 ff             	test   %r15,%r15
  2757c5:	0f 84 5d fe ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  2757cb:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  2757cf:	4c 89 f2             	mov    %r14,%rdx
  2757d2:	4c 89 ef             	mov    %r13,%rdi
  2757d5:	e8 56 d9 f9 ff       	call   213130 <memcpy@plt>
  2757da:	8b 45 00             	mov    0x0(%rbp),%eax
  2757dd:	83 f8 02             	cmp    $0x2,%eax
  2757e0:	74 26                	je     275808 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x218>
  2757e2:	83 f8 01             	cmp    $0x1,%eax
  2757e5:	74 05                	je     2757ec <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x1fc>
  2757e7:	83 f8 03             	cmp    $0x3,%eax
  2757ea:	74 44                	je     275830 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x240>
  2757ec:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  2757f0:	48 85 ff             	test   %rdi,%rdi
  2757f3:	0f 84 2f fe ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  2757f9:	e8 92 db f9 ff       	call   213390 <free@plt>
  2757fe:	e9 25 fe ff ff       	jmp    275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275803:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  275808:	48 be 00 00 00 00 02 	movabs $0x200000000,%rsi
  27580f:	00 00 00
  275812:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  275816:	e8 65 e3 f9 ff       	call   213b80 <munmap@plt>
  27581b:	85 c0                	test   %eax,%eax
  27581d:	0f 84 05 fe ff ff    	je     275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275823:	e9 9a 32 fa ff       	jmp    218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  275828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  27582f:	00
  275830:	48 89 ee             	mov    %rbp,%rsi
  275833:	4c 89 e7             	mov    %r12,%rdi
  275836:	e8 25 e7 ff ff       	call   273f60 <zen::runtime::WasmMemoryAllocator::internalFreeWasmMemory(zen::runtime::WasmMemoryData const&) [clone .part.0]>
  27583b:	e9 e8 fd ff ff       	jmp    275628 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x38>
  275840:	bf 18 00 00 00       	mov    $0x18,%edi
  275845:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  27584a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  27584f:	4c 89 0c 24          	mov    %r9,(%rsp)
  275853:	e8 78 da f9 ff       	call   2132d0 <operator new(unsigned long)@plt>
  275858:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  27585d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  275862:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  275868:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  27586f:	48 89 c1             	mov    %rax,%rcx
  275872:	48 8b 3c 24          	mov    (%rsp),%rdi
  275876:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  27587b:	48 8b 45 08          	mov    0x8(%rbp),%rax
  27587f:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
  275886:	00
  275887:	48 89 41 08          	mov    %rax,0x8(%rcx)
  27588b:	e8 10 0f 00 00       	call   2767a0 <std::_Hashtable<unsigned char*, std::pair<unsigned char* const, unsigned char*>, std::allocator<std::pair<unsigned char* const, unsigned char*> >, std::__detail::_Select1st, std::equal_to<unsigned char*>, std::hash<unsigned char*>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::_M_insert_unique_node(unsigned long, unsigned long, std::__detail::_Hash_node<std::pair<unsigned char* const, unsigned char*>, false>*, unsigned long)>
  275890:	48 83 c0 10          	add    $0x10,%rax
  275894:	e9 93 fe ff ff       	jmp    27572c <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0x13c>
  275899:	48 29 c6             	sub    %rax,%rsi
  27589c:	45 31 c9             	xor    %r9d,%r9d
  27589f:	31 d2                	xor    %edx,%edx
  2758a1:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  2758a7:	49 8d 3c 07          	lea    (%r15,%rax,1),%rdi
  2758ab:	b9 32 00 00 00       	mov    $0x32,%ecx
  2758b0:	e8 ab ea f9 ff       	call   214360 <mmap@plt>
  2758b5:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  2758b9:	0f 84 03 32 fa ff    	je     218ac2 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]>
  2758bf:	4c 8b 55 08          	mov    0x8(%rbp),%r10
  2758c3:	e9 f8 fd ff ff       	jmp    2756c0 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long)+0xd0>
  2758c8:	48 89 c3             	mov    %rax,%rbx
  2758cb:	e9 f7 31 fa ff       	jmp    218ac7 <zen::runtime::WasmMemoryAllocator::enlargeWasmMemory(zen::runtime::WasmMemoryData const&, unsigned long) [clone .cold]+0x5>

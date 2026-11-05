       0:	55                   	push   %rbp
       1:	48 89 e5             	mov    %rsp,%rbp
       4:	48 81 ec 60 9c 00 00 	sub    $0x9c60,%rsp
       b:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
       f:	31 c0                	xor    %eax,%eax
      11:	89 45 fc             	mov    %eax,-0x4(%rbp)
      14:	48 8b 84 e4 00 c0 ff 	mov    -0x4000(%rsp,%riz,8),%rax
      1c:	8b 45 fc             	mov    -0x4(%rbp),%eax
      1f:	48 8b 8f 78 01 00 00 	mov    0x178(%rdi),%rcx
      26:	89 85 a4 63 ff ff    	mov    %eax,-0x9c5c(%rbp)
      2c:	e8 cf df ff ff       	call   0xffffffffffffe000
      31:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
      35:	89 c1                	mov    %eax,%ecx
      37:	8b 85 a4 63 ff ff    	mov    -0x9c5c(%rbp),%eax
      3d:	48 8b 97 78 01 00 00 	mov    0x178(%rdi),%rdx
      44:	01 c8                	add    %ecx,%eax
      46:	89 85 a8 63 ff ff    	mov    %eax,-0x9c58(%rbp)
      4c:	e8 af df ff ff       	call   0xffffffffffffe000
      51:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
      55:	89 c1                	mov    %eax,%ecx
      57:	8b 85 a8 63 ff ff    	mov    -0x9c58(%rbp),%eax
      5d:	48 8b 97 78 01 00 00 	mov    0x178(%rdi),%rdx
      64:	01 c8                	add    %ecx,%eax
      66:	89 85 ac 63 ff ff    	mov    %eax,-0x9c54(%rbp)
      6c:	e8 8f df ff ff       	call   0xffffffffffffe000
      71:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
      75:	89 c1                	mov    %eax,%ecx
      77:	8b 85 ac 63 ff ff    	mov    -0x9c54(%rbp),%eax
      7d:	48 8b 97 78 01 00 00 	mov    0x178(%rdi),%rdx
      84:	01 c8                	add    %ecx,%eax
      86:	89 85 b0 63 ff ff    	mov    %eax,-0x9c50(%rbp)
      8c:	e8 6f df ff ff       	call   0xffffffffffffe000
      91:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
      95:	89 c1                	mov    %eax,%ecx
      97:	8b 85 b0 63 ff ff    	mov    -0x9c50(%rbp),%eax
      9d:	48 8b 97 78 01 00 00 	mov    0x178(%rdi),%rdx
      a4:	01 c8                	add    %ecx,%eax
      a6:	89 85 b4 63 ff ff    	mov    %eax,-0x9c4c(%rbp)
   4e1a0:	75 02                	jne    0x4e1a4
   4e1a2:	eb 02                	jmp    0x4e1a6
   4e1a4:	eb 09                	jmp    0x4e1af
   4e1a6:	48 81 c4 60 9c 00 00 	add    $0x9c60,%rsp
   4e1ad:	5d                   	pop    %rbp
   4e1ae:	c3                   	ret
   4e1af:	b8 71 00 00 00       	mov    $0x71,%eax
   4e1b4:	89 85 a0 63 ff ff    	mov    %eax,-0x9c60(%rbp)
   4e1ba:	8b b5 a0 63 ff ff    	mov    -0x9c60(%rbp),%esi
   4e1c0:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
   4e1c4:	48 b8 30 13 3d 0b 68 	movabs $0x55680b3d1330,%rax
   4e1ce:	ff d0                	call   *%rax
   4e1d0:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
   4e1d4:	48 b8 90 13 3d 0b 68 	movabs $0x55680b3d1390,%rax
   4e1de:	ff d0                	call   *%rax
   4e1e0:	48 81 c4 60 9c 00 00 	add    $0x9c60,%rsp
   4e1e7:	5d                   	pop    %rbp
   4e1e8:	c3                   	ret

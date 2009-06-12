
binary_O2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400430 <_init>:
  400430:	48 83 ec 08          	sub    $0x8,%rsp
  400434:	e8 73 00 00 00       	callq  4004ac <call_gmon_start>
  400439:	e8 02 01 00 00       	callq  400540 <frame_dummy>
  40043e:	e8 0d 02 00 00       	callq  400650 <__do_global_ctors_aux>
  400443:	48 83 c4 08          	add    $0x8,%rsp
  400447:	c3                   	retq   

Disassembly of section .plt:

0000000000400448 <__libc_start_main@plt-0x10>:
  400448:	ff 35 32 05 20 00    	pushq  0x200532(%rip)        # 600980 <_GLOBAL_OFFSET_TABLE_+0x8>
  40044e:	ff 25 34 05 20 00    	jmpq   *0x200534(%rip)        # 600988 <_GLOBAL_OFFSET_TABLE_+0x10>
  400454:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400458 <__libc_start_main@plt>:
  400458:	ff 25 32 05 20 00    	jmpq   *0x200532(%rip)        # 600990 <_GLOBAL_OFFSET_TABLE_+0x18>
  40045e:	68 00 00 00 00       	pushq  $0x0
  400463:	e9 e0 ff ff ff       	jmpq   400448 <_init+0x18>

0000000000400468 <__gxx_personality_v0@plt>:
  400468:	ff 25 2a 05 20 00    	jmpq   *0x20052a(%rip)        # 600998 <_GLOBAL_OFFSET_TABLE_+0x20>
  40046e:	68 01 00 00 00       	pushq  $0x1
  400473:	e9 d0 ff ff ff       	jmpq   400448 <_init+0x18>

Disassembly of section .text:

0000000000400480 <_start>:
  400480:	31 ed                	xor    %ebp,%ebp
  400482:	49 89 d1             	mov    %rdx,%r9
  400485:	5e                   	pop    %rsi
  400486:	48 89 e2             	mov    %rsp,%rdx
  400489:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40048d:	50                   	push   %rax
  40048e:	54                   	push   %rsp
  40048f:	49 c7 c0 b0 05 40 00 	mov    $0x4005b0,%r8
  400496:	48 c7 c1 c0 05 40 00 	mov    $0x4005c0,%rcx
  40049d:	48 c7 c7 90 05 40 00 	mov    $0x400590,%rdi
  4004a4:	e8 af ff ff ff       	callq  400458 <__libc_start_main@plt>
  4004a9:	f4                   	hlt    
  4004aa:	90                   	nop    
  4004ab:	90                   	nop    

00000000004004ac <call_gmon_start>:
  4004ac:	48 83 ec 08          	sub    $0x8,%rsp
  4004b0:	48 8b 05 b9 04 20 00 	mov    0x2004b9(%rip),%rax        # 600970 <_DYNAMIC+0x1d0>
  4004b7:	48 85 c0             	test   %rax,%rax
  4004ba:	74 02                	je     4004be <call_gmon_start+0x12>
  4004bc:	ff d0                	callq  *%rax
  4004be:	48 83 c4 08          	add    $0x8,%rsp
  4004c2:	c3                   	retq   
  4004c3:	90                   	nop    
  4004c4:	90                   	nop    
  4004c5:	90                   	nop    
  4004c6:	90                   	nop    
  4004c7:	90                   	nop    
  4004c8:	90                   	nop    
  4004c9:	90                   	nop    
  4004ca:	90                   	nop    
  4004cb:	90                   	nop    
  4004cc:	90                   	nop    
  4004cd:	90                   	nop    
  4004ce:	90                   	nop    
  4004cf:	90                   	nop    

00000000004004d0 <__do_global_dtors_aux>:
  4004d0:	55                   	push   %rbp
  4004d1:	48 89 e5             	mov    %rsp,%rbp
  4004d4:	53                   	push   %rbx
  4004d5:	48 83 ec 08          	sub    $0x8,%rsp
  4004d9:	80 3d d0 04 20 00 00 	cmpb   $0x0,0x2004d0(%rip)        # 6009b0 <__bss_start>
  4004e0:	75 4b                	jne    40052d <__do_global_dtors_aux+0x5d>
  4004e2:	b8 90 07 60 00       	mov    $0x600790,%eax
  4004e7:	48 8b 15 ca 04 20 00 	mov    0x2004ca(%rip),%rdx        # 6009b8 <dtor_idx.6087>
  4004ee:	48 2d 88 07 60 00    	sub    $0x600788,%rax
  4004f4:	48 c1 f8 03          	sar    $0x3,%rax
  4004f8:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
  4004fc:	48 39 da             	cmp    %rbx,%rdx
  4004ff:	73 25                	jae    400526 <__do_global_dtors_aux+0x56>
  400501:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400508:	48 8d 42 01          	lea    0x1(%rdx),%rax
  40050c:	48 89 05 a5 04 20 00 	mov    %rax,0x2004a5(%rip)        # 6009b8 <dtor_idx.6087>
  400513:	ff 14 c5 88 07 60 00 	callq  *0x600788(,%rax,8)
  40051a:	48 8b 15 97 04 20 00 	mov    0x200497(%rip),%rdx        # 6009b8 <dtor_idx.6087>
  400521:	48 39 da             	cmp    %rbx,%rdx
  400524:	72 e2                	jb     400508 <__do_global_dtors_aux+0x38>
  400526:	c6 05 83 04 20 00 01 	movb   $0x1,0x200483(%rip)        # 6009b0 <__bss_start>
  40052d:	48 83 c4 08          	add    $0x8,%rsp
  400531:	5b                   	pop    %rbx
  400532:	c9                   	leaveq 
  400533:	c3                   	retq   
  400534:	66 66 66 2e 0f 1f 84 	nopw   %cs:0x0(%rax,%rax,1)
  40053b:	00 00 00 00 00 

0000000000400540 <frame_dummy>:
  400540:	55                   	push   %rbp
  400541:	48 83 3d 4f 02 20 00 	cmpq   $0x0,0x20024f(%rip)        # 600798 <__JCR_END__>
  400548:	00 
  400549:	48 89 e5             	mov    %rsp,%rbp
  40054c:	74 1a                	je     400568 <frame_dummy+0x28>
  40054e:	b8 00 00 00 00       	mov    $0x0,%eax
  400553:	48 85 c0             	test   %rax,%rax
  400556:	74 10                	je     400568 <frame_dummy+0x28>
  400558:	bf 98 07 60 00       	mov    $0x600798,%edi
  40055d:	49 89 c3             	mov    %rax,%r11
  400560:	c9                   	leaveq 
  400561:	41 ff e3             	jmpq   *%r11
  400564:	0f 1f 40 00          	nopl   0x0(%rax)
  400568:	c9                   	leaveq 
  400569:	c3                   	retq   
  40056a:	90                   	nop    
  40056b:	90                   	nop    
  40056c:	90                   	nop    
  40056d:	90                   	nop    
  40056e:	90                   	nop    
  40056f:	90                   	nop    

0000000000400570 <_Z9factoriali>:
  400570:	85 ff                	test   %edi,%edi
  400572:	b8 01 00 00 00       	mov    $0x1,%eax
  400577:	74 0f                	je     400588 <_Z9factoriali+0x18>
  400579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400580:	0f af c7             	imul   %edi,%eax
  400583:	83 ef 01             	sub    $0x1,%edi
  400586:	75 f8                	jne    400580 <_Z9factoriali+0x10>
  400588:	f3 c3                	repz retq 
  40058a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400590 <main>:
  400590:	85 ff                	test   %edi,%edi
  400592:	b8 01 00 00 00       	mov    $0x1,%eax
  400597:	74 0f                	je     4005a8 <main+0x18>
  400599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4005a0:	0f af c7             	imul   %edi,%eax
  4005a3:	83 ef 01             	sub    $0x1,%edi
  4005a6:	75 f8                	jne    4005a0 <main+0x10>
  4005a8:	f3 c3                	repz retq 
  4005aa:	90                   	nop    
  4005ab:	90                   	nop    
  4005ac:	90                   	nop    
  4005ad:	90                   	nop    
  4005ae:	90                   	nop    
  4005af:	90                   	nop    

00000000004005b0 <__libc_csu_fini>:
  4005b0:	f3 c3                	repz retq 
  4005b2:	66 66 66 66 66 2e 0f 	nopw   %cs:0x0(%rax,%rax,1)
  4005b9:	1f 84 00 00 00 00 00 

00000000004005c0 <__libc_csu_init>:
  4005c0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005c5:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005ca:	48 8d 2d a3 01 20 00 	lea    0x2001a3(%rip),%rbp        # 600774 <__init_array_end>
  4005d1:	4c 8d 3d 9c 01 20 00 	lea    0x20019c(%rip),%r15        # 600774 <__init_array_end>
  4005d8:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005dd:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005e2:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005e7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005ec:	48 83 ec 38          	sub    $0x38,%rsp
  4005f0:	4c 29 fd             	sub    %r15,%rbp
  4005f3:	41 89 fe             	mov    %edi,%r14d
  4005f6:	49 89 f5             	mov    %rsi,%r13
  4005f9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005fd:	49 89 d4             	mov    %rdx,%r12
  400600:	e8 2b fe ff ff       	callq  400430 <_init>
  400605:	48 85 ed             	test   %rbp,%rbp
  400608:	74 1c                	je     400626 <__libc_csu_init+0x66>
  40060a:	31 db                	xor    %ebx,%ebx
  40060c:	0f 1f 40 00          	nopl   0x0(%rax)
  400610:	4c 89 e2             	mov    %r12,%rdx
  400613:	4c 89 ee             	mov    %r13,%rsi
  400616:	44 89 f7             	mov    %r14d,%edi
  400619:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40061d:	48 83 c3 01          	add    $0x1,%rbx
  400621:	48 39 eb             	cmp    %rbp,%rbx
  400624:	72 ea                	jb     400610 <__libc_csu_init+0x50>
  400626:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40062b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400630:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400635:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40063a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40063f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400644:	48 83 c4 38          	add    $0x38,%rsp
  400648:	c3                   	retq   
  400649:	90                   	nop    
  40064a:	90                   	nop    
  40064b:	90                   	nop    
  40064c:	90                   	nop    
  40064d:	90                   	nop    
  40064e:	90                   	nop    
  40064f:	90                   	nop    

0000000000400650 <__do_global_ctors_aux>:
  400650:	55                   	push   %rbp
  400651:	48 89 e5             	mov    %rsp,%rbp
  400654:	53                   	push   %rbx
  400655:	48 83 ec 08          	sub    $0x8,%rsp
  400659:	48 8b 05 18 01 20 00 	mov    0x200118(%rip),%rax        # 600778 <__CTOR_LIST__>
  400660:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400664:	74 19                	je     40067f <__do_global_ctors_aux+0x2f>
  400666:	bb 78 07 60 00       	mov    $0x600778,%ebx
  40066b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400670:	48 83 eb 08          	sub    $0x8,%rbx
  400674:	ff d0                	callq  *%rax
  400676:	48 8b 03             	mov    (%rbx),%rax
  400679:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40067d:	75 f1                	jne    400670 <__do_global_ctors_aux+0x20>
  40067f:	48 83 c4 08          	add    $0x8,%rsp
  400683:	5b                   	pop    %rbx
  400684:	c9                   	leaveq 
  400685:	c3                   	retq   
  400686:	90                   	nop    
  400687:	90                   	nop    

Disassembly of section .fini:

0000000000400688 <_fini>:
  400688:	48 83 ec 08          	sub    $0x8,%rsp
  40068c:	e8 3f fe ff ff       	callq  4004d0 <__do_global_dtors_aux>
  400691:	48 83 c4 08          	add    $0x8,%rsp
  400695:	c3                   	retq   

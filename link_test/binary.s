
binary:     file format elf64-x86-64


Disassembly of section .init:

0000000000400430 <_init>:
  400430:	48 83 ec 08          	sub    $0x8,%rsp
  400434:	e8 73 00 00 00       	callq  4004ac <call_gmon_start>
  400439:	e8 02 01 00 00       	callq  400540 <frame_dummy>
  40043e:	e8 1d 02 00 00       	callq  400660 <__do_global_ctors_aux>
  400443:	48 83 c4 08          	add    $0x8,%rsp
  400447:	c3                   	retq   

Disassembly of section .plt:

0000000000400448 <__libc_start_main@plt-0x10>:
  400448:	ff 35 92 05 20 00    	pushq  0x200592(%rip)        # 6009e0 <_GLOBAL_OFFSET_TABLE_+0x8>
  40044e:	ff 25 94 05 20 00    	jmpq   *0x200594(%rip)        # 6009e8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400454:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400458 <__libc_start_main@plt>:
  400458:	ff 25 92 05 20 00    	jmpq   *0x200592(%rip)        # 6009f0 <_GLOBAL_OFFSET_TABLE_+0x18>
  40045e:	68 00 00 00 00       	pushq  $0x0
  400463:	e9 e0 ff ff ff       	jmpq   400448 <_init+0x18>

0000000000400468 <__gxx_personality_v0@plt>:
  400468:	ff 25 8a 05 20 00    	jmpq   *0x20058a(%rip)        # 6009f8 <_GLOBAL_OFFSET_TABLE_+0x20>
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
  40048f:	49 c7 c0 c0 05 40 00 	mov    $0x4005c0,%r8
  400496:	48 c7 c1 d0 05 40 00 	mov    $0x4005d0,%rcx
  40049d:	48 c7 c7 6c 05 40 00 	mov    $0x40056c,%rdi
  4004a4:	e8 af ff ff ff       	callq  400458 <__libc_start_main@plt>
  4004a9:	f4                   	hlt    
  4004aa:	90                   	nop    
  4004ab:	90                   	nop    

00000000004004ac <call_gmon_start>:
  4004ac:	48 83 ec 08          	sub    $0x8,%rsp
  4004b0:	48 8b 05 19 05 20 00 	mov    0x200519(%rip),%rax        # 6009d0 <_DYNAMIC+0x1d0>
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
  4004d9:	80 3d 30 05 20 00 00 	cmpb   $0x0,0x200530(%rip)        # 600a10 <__bss_start>
  4004e0:	75 4b                	jne    40052d <__do_global_dtors_aux+0x5d>
  4004e2:	b8 f0 07 60 00       	mov    $0x6007f0,%eax
  4004e7:	48 8b 15 2a 05 20 00 	mov    0x20052a(%rip),%rdx        # 600a18 <dtor_idx.6087>
  4004ee:	48 2d e8 07 60 00    	sub    $0x6007e8,%rax
  4004f4:	48 c1 f8 03          	sar    $0x3,%rax
  4004f8:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
  4004fc:	48 39 da             	cmp    %rbx,%rdx
  4004ff:	73 25                	jae    400526 <__do_global_dtors_aux+0x56>
  400501:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400508:	48 8d 42 01          	lea    0x1(%rdx),%rax
  40050c:	48 89 05 05 05 20 00 	mov    %rax,0x200505(%rip)        # 600a18 <dtor_idx.6087>
  400513:	ff 14 c5 e8 07 60 00 	callq  *0x6007e8(,%rax,8)
  40051a:	48 8b 15 f7 04 20 00 	mov    0x2004f7(%rip),%rdx        # 600a18 <dtor_idx.6087>
  400521:	48 39 da             	cmp    %rbx,%rdx
  400524:	72 e2                	jb     400508 <__do_global_dtors_aux+0x38>
  400526:	c6 05 e3 04 20 00 01 	movb   $0x1,0x2004e3(%rip)        # 600a10 <__bss_start>
  40052d:	48 83 c4 08          	add    $0x8,%rsp
  400531:	5b                   	pop    %rbx
  400532:	c9                   	leaveq 
  400533:	c3                   	retq   
  400534:	66 66 66 2e 0f 1f 84 	nopw   %cs:0x0(%rax,%rax,1)
  40053b:	00 00 00 00 00 

0000000000400540 <frame_dummy>:
  400540:	55                   	push   %rbp
  400541:	48 83 3d af 02 20 00 	cmpq   $0x0,0x2002af(%rip)        # 6007f8 <__JCR_END__>
  400548:	00 
  400549:	48 89 e5             	mov    %rsp,%rbp
  40054c:	74 1a                	je     400568 <frame_dummy+0x28>
  40054e:	b8 00 00 00 00       	mov    $0x0,%eax
  400553:	48 85 c0             	test   %rax,%rax
  400556:	74 10                	je     400568 <frame_dummy+0x28>
  400558:	bf f8 07 60 00       	mov    $0x6007f8,%edi
  40055d:	49 89 c3             	mov    %rax,%r11
  400560:	c9                   	leaveq 
  400561:	41 ff e3             	jmpq   *%r11
  400564:	0f 1f 40 00          	nopl   0x0(%rax)
  400568:	c9                   	leaveq 
  400569:	c3                   	retq   
  40056a:	90                   	nop    
  40056b:	90                   	nop    

000000000040056c <main>:
  40056c:	55                   	push   %rbp
  40056d:	48 89 e5             	mov    %rsp,%rbp
  400570:	bf 1e 00 00 00       	mov    $0x1e,%edi
  400575:	e8 1e 00 00 00       	callq  400598 <_Z5test1i>
  40057a:	bf 1e 00 00 00       	mov    $0x1e,%edi
  40057f:	e8 20 00 00 00       	callq  4005a4 <test2>
  400584:	bf 1e 00 00 00       	mov    $0x1e,%edi
  400589:	e8 22 00 00 00       	callq  4005b0 <test3>
  40058e:	b8 00 00 00 00       	mov    $0x0,%eax
  400593:	c9                   	leaveq 
  400594:	c3                   	retq   
  400595:	90                   	nop    
  400596:	90                   	nop    
  400597:	90                   	nop    

0000000000400598 <_Z5test1i>:
  400598:	55                   	push   %rbp
  400599:	48 89 e5             	mov    %rsp,%rbp
  40059c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40059f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4005a2:	c9                   	leaveq 
  4005a3:	c3                   	retq   

00000000004005a4 <test2>:
  4005a4:	55                   	push   %rbp
  4005a5:	48 89 e5             	mov    %rsp,%rbp
  4005a8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4005ab:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4005ae:	c9                   	leaveq 
  4005af:	c3                   	retq   

00000000004005b0 <test3>:
  4005b0:	c3                   	retq   
  4005b1:	90                   	nop    
  4005b2:	90                   	nop    
  4005b3:	90                   	nop    
  4005b4:	90                   	nop    
  4005b5:	90                   	nop    
  4005b6:	90                   	nop    
  4005b7:	90                   	nop    
  4005b8:	90                   	nop    
  4005b9:	90                   	nop    
  4005ba:	90                   	nop    
  4005bb:	90                   	nop    
  4005bc:	90                   	nop    
  4005bd:	90                   	nop    
  4005be:	90                   	nop    
  4005bf:	90                   	nop    

00000000004005c0 <__libc_csu_fini>:
  4005c0:	f3 c3                	repz retq 
  4005c2:	66 66 66 66 66 2e 0f 	nopw   %cs:0x0(%rax,%rax,1)
  4005c9:	1f 84 00 00 00 00 00 

00000000004005d0 <__libc_csu_init>:
  4005d0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005d5:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005da:	48 8d 2d f3 01 20 00 	lea    0x2001f3(%rip),%rbp        # 6007d4 <__init_array_end>
  4005e1:	4c 8d 3d ec 01 20 00 	lea    0x2001ec(%rip),%r15        # 6007d4 <__init_array_end>
  4005e8:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005ed:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005f2:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005f7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005fc:	48 83 ec 38          	sub    $0x38,%rsp
  400600:	4c 29 fd             	sub    %r15,%rbp
  400603:	41 89 fe             	mov    %edi,%r14d
  400606:	49 89 f5             	mov    %rsi,%r13
  400609:	48 c1 fd 03          	sar    $0x3,%rbp
  40060d:	49 89 d4             	mov    %rdx,%r12
  400610:	e8 1b fe ff ff       	callq  400430 <_init>
  400615:	48 85 ed             	test   %rbp,%rbp
  400618:	74 1c                	je     400636 <__libc_csu_init+0x66>
  40061a:	31 db                	xor    %ebx,%ebx
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)
  400620:	4c 89 e2             	mov    %r12,%rdx
  400623:	4c 89 ee             	mov    %r13,%rsi
  400626:	44 89 f7             	mov    %r14d,%edi
  400629:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	72 ea                	jb     400620 <__libc_csu_init+0x50>
  400636:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40063b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400640:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400645:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40064a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40064f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400654:	48 83 c4 38          	add    $0x38,%rsp
  400658:	c3                   	retq   
  400659:	90                   	nop    
  40065a:	90                   	nop    
  40065b:	90                   	nop    
  40065c:	90                   	nop    
  40065d:	90                   	nop    
  40065e:	90                   	nop    
  40065f:	90                   	nop    

0000000000400660 <__do_global_ctors_aux>:
  400660:	55                   	push   %rbp
  400661:	48 89 e5             	mov    %rsp,%rbp
  400664:	53                   	push   %rbx
  400665:	48 83 ec 08          	sub    $0x8,%rsp
  400669:	48 8b 05 68 01 20 00 	mov    0x200168(%rip),%rax        # 6007d8 <__CTOR_LIST__>
  400670:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400674:	74 19                	je     40068f <__do_global_ctors_aux+0x2f>
  400676:	bb d8 07 60 00       	mov    $0x6007d8,%ebx
  40067b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400680:	48 83 eb 08          	sub    $0x8,%rbx
  400684:	ff d0                	callq  *%rax
  400686:	48 8b 03             	mov    (%rbx),%rax
  400689:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40068d:	75 f1                	jne    400680 <__do_global_ctors_aux+0x20>
  40068f:	48 83 c4 08          	add    $0x8,%rsp
  400693:	5b                   	pop    %rbx
  400694:	c9                   	leaveq 
  400695:	c3                   	retq   
  400696:	90                   	nop    
  400697:	90                   	nop    

Disassembly of section .fini:

0000000000400698 <_fini>:
  400698:	48 83 ec 08          	sub    $0x8,%rsp
  40069c:	e8 2f fe ff ff       	callq  4004d0 <__do_global_dtors_aux>
  4006a1:	48 83 c4 08          	add    $0x8,%rsp
  4006a5:	c3                   	retq   


main_O0.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z9factoriali>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	89 7d fc             	mov    %edi,-0x4(%rbp)
   b:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   f:	75 09                	jne    1a <_Z9factoriali+0x1a>
  11:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  18:	eb 14                	jmp    2e <_Z9factoriali+0x2e>
  1a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  1d:	8d 78 ff             	lea    -0x1(%rax),%edi
  20:	e8 00 00 00 00       	callq  25 <_Z9factoriali+0x25>
  25:	89 c2                	mov    %eax,%edx
  27:	0f af 55 fc          	imul   -0x4(%rbp),%edx
  2b:	89 55 f8             	mov    %edx,-0x8(%rbp)
  2e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  31:	c9                   	leaveq 
  32:	c3                   	retq   

0000000000000033 <main>:
  33:	55                   	push   %rbp
  34:	48 89 e5             	mov    %rsp,%rbp
  37:	48 83 ec 10          	sub    $0x10,%rsp
  3b:	89 7d fc             	mov    %edi,-0x4(%rbp)
  3e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  42:	8b 7d fc             	mov    -0x4(%rbp),%edi
  45:	e8 00 00 00 00       	callq  4a <main+0x17>
  4a:	c9                   	leaveq 
  4b:	c3                   	retq   


main_O3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z9factoriali>:
   0:	85 ff                	test   %edi,%edi
   2:	b8 01 00 00 00       	mov    $0x1,%eax
   7:	74 0f                	je     18 <_Z9factoriali+0x18>
   9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  10:	0f af c7             	imul   %edi,%eax
  13:	83 ef 01             	sub    $0x1,%edi
  16:	75 f8                	jne    10 <_Z9factoriali+0x10>
  18:	f3 c3                	repz retq 
  1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000020 <main>:
  20:	85 ff                	test   %edi,%edi
  22:	b8 01 00 00 00       	mov    $0x1,%eax
  27:	74 0f                	je     38 <main+0x18>
  29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  30:	0f af c7             	imul   %edi,%eax
  33:	83 ef 01             	sub    $0x1,%edi
  36:	75 f8                	jne    30 <main+0x10>
  38:	f3 c3                	repz retq 

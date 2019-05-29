
x86mem:     file format elf64-x86-64


Disassembly of section .init:

0000000000000530 <_init>:
_init():
 530:	48 83 ec 08          	sub    $0x8,%rsp
 534:	48 8b 05 a5 0a 20 00 	mov    0x200aa5(%rip),%rax        # 200fe0 <__gmon_start__>
 53b:	48 85 c0             	test   %rax,%rax
 53e:	74 02                	je     542 <_init+0x12>
 540:	ff d0                	callq  *%rax
 542:	48 83 c4 08          	add    $0x8,%rsp
 546:	c3                   	retq   

Disassembly of section .plt:

0000000000000550 <.plt>:
 550:	ff 35 b2 0a 20 00    	pushq  0x200ab2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 556:	ff 25 b4 0a 20 00    	jmpq   *0x200ab4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 55c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000560 <printf@plt>:
 560:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 201018 <printf@GLIBC_2.2.5>
 566:	68 00 00 00 00       	pushq  $0x0
 56b:	e9 e0 ff ff ff       	jmpq   550 <.plt>

Disassembly of section .plt.got:

0000000000000570 <.plt.got>:
 570:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 576:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000580 <_start>:
_start():
 580:	31 ed                	xor    %ebp,%ebp
 582:	49 89 d1             	mov    %rdx,%r9
 585:	5e                   	pop    %rsi
 586:	48 89 e2             	mov    %rsp,%rdx
 589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 58d:	50                   	push   %rax
 58e:	54                   	push   %rsp
 58f:	4c 8d 05 ea 02 00 00 	lea    0x2ea(%rip),%r8        # 880 <__libc_csu_fini>
 596:	48 8d 0d 73 02 00 00 	lea    0x273(%rip),%rcx        # 810 <__libc_csu_init>
 59d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 6b0 <main>
 5a4:	ff 15 2e 0a 20 00    	callq  *0x200a2e(%rip)        # 200fd8 <__libc_start_main@GLIBC_2.2.5>
 5aa:	f4                   	hlt    
 5ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000005b0 <deregister_tm_clones>:
deregister_tm_clones():
 5b0:	48 8d 3d 91 0a 20 00 	lea    0x200a91(%rip),%rdi        # 201048 <__TMC_END__>
 5b7:	48 8d 05 91 0a 20 00 	lea    0x200a91(%rip),%rax        # 20104f <__TMC_END__+0x7>
 5be:	55                   	push   %rbp
 5bf:	48 29 f8             	sub    %rdi,%rax
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	48 83 f8 0e          	cmp    $0xe,%rax
 5c9:	76 15                	jbe    5e0 <deregister_tm_clones+0x30>
 5cb:	48 8b 05 fe 09 20 00 	mov    0x2009fe(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 5d2:	48 85 c0             	test   %rax,%rax
 5d5:	74 09                	je     5e0 <deregister_tm_clones+0x30>
 5d7:	5d                   	pop    %rbp
 5d8:	ff e0                	jmpq   *%rax
 5da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 5e0:	5d                   	pop    %rbp
 5e1:	c3                   	retq   
 5e2:	0f 1f 40 00          	nopl   0x0(%rax)
 5e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ed:	00 00 00 

00000000000005f0 <register_tm_clones>:
register_tm_clones():
 5f0:	48 8d 3d 51 0a 20 00 	lea    0x200a51(%rip),%rdi        # 201048 <__TMC_END__>
 5f7:	48 8d 35 4a 0a 20 00 	lea    0x200a4a(%rip),%rsi        # 201048 <__TMC_END__>
 5fe:	55                   	push   %rbp
 5ff:	48 29 fe             	sub    %rdi,%rsi
 602:	48 89 e5             	mov    %rsp,%rbp
 605:	48 c1 fe 03          	sar    $0x3,%rsi
 609:	48 89 f0             	mov    %rsi,%rax
 60c:	48 c1 e8 3f          	shr    $0x3f,%rax
 610:	48 01 c6             	add    %rax,%rsi
 613:	48 d1 fe             	sar    %rsi
 616:	74 18                	je     630 <register_tm_clones+0x40>
 618:	48 8b 05 d1 09 20 00 	mov    0x2009d1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 61f:	48 85 c0             	test   %rax,%rax
 622:	74 0c                	je     630 <register_tm_clones+0x40>
 624:	5d                   	pop    %rbp
 625:	ff e0                	jmpq   *%rax
 627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 62e:	00 00 
 630:	5d                   	pop    %rbp
 631:	c3                   	retq   
 632:	0f 1f 40 00          	nopl   0x0(%rax)
 636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 63d:	00 00 00 

0000000000000640 <__do_global_dtors_aux>:
__do_global_dtors_aux():
 640:	80 3d 01 0a 20 00 00 	cmpb   $0x0,0x200a01(%rip)        # 201048 <__TMC_END__>
 647:	75 27                	jne    670 <__do_global_dtors_aux+0x30>
 649:	48 83 3d a7 09 20 00 	cmpq   $0x0,0x2009a7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 650:	00 
 651:	55                   	push   %rbp
 652:	48 89 e5             	mov    %rsp,%rbp
 655:	74 0c                	je     663 <__do_global_dtors_aux+0x23>
 657:	48 8b 3d ca 09 20 00 	mov    0x2009ca(%rip),%rdi        # 201028 <__dso_handle>
 65e:	e8 0d ff ff ff       	callq  570 <.plt.got>
 663:	e8 48 ff ff ff       	callq  5b0 <deregister_tm_clones>
 668:	5d                   	pop    %rbp
 669:	c6 05 d8 09 20 00 01 	movb   $0x1,0x2009d8(%rip)        # 201048 <__TMC_END__>
 670:	f3 c3                	repz retq 
 672:	0f 1f 40 00          	nopl   0x0(%rax)
 676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 67d:	00 00 00 

0000000000000680 <frame_dummy>:
frame_dummy():
 680:	48 8d 3d 61 07 20 00 	lea    0x200761(%rip),%rdi        # 200de8 <__JCR_END__>
 687:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 68b:	75 0b                	jne    698 <frame_dummy+0x18>
 68d:	e9 5e ff ff ff       	jmpq   5f0 <register_tm_clones>
 692:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 698:	48 8b 05 49 09 20 00 	mov    0x200949(%rip),%rax        # 200fe8 <_Jv_RegisterClasses>
 69f:	48 85 c0             	test   %rax,%rax
 6a2:	74 e9                	je     68d <frame_dummy+0xd>
 6a4:	55                   	push   %rbp
 6a5:	48 89 e5             	mov    %rsp,%rbp
 6a8:	ff d0                	callq  *%rax
 6aa:	5d                   	pop    %rbp
 6ab:	e9 40 ff ff ff       	jmpq   5f0 <register_tm_clones>

00000000000006b0 <main>:
main():
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:5
#include <stdio.h>

int gmat[2][3]={{0,-1,-2},{-10,-11,-12}};

int main(int argc, char **argv) {
 6b0:	55                   	push   %rbp
 6b1:	48 89 e5             	mov    %rsp,%rbp
 6b4:	48 83 ec 60          	sub    $0x60,%rsp
 6b8:	89 7d ac             	mov    %edi,-0x54(%rbp)
 6bb:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:9

	int r,c;

	int matrix[3][5]={{0,1,2,3,4},{10,11,12,13,14},{20,21,22,23,24}};
 6bf:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
 6c6:	c7 45 b4 01 00 00 00 	movl   $0x1,-0x4c(%rbp)
 6cd:	c7 45 b8 02 00 00 00 	movl   $0x2,-0x48(%rbp)
 6d4:	c7 45 bc 03 00 00 00 	movl   $0x3,-0x44(%rbp)
 6db:	c7 45 c0 04 00 00 00 	movl   $0x4,-0x40(%rbp)
 6e2:	c7 45 c4 0a 00 00 00 	movl   $0xa,-0x3c(%rbp)
 6e9:	c7 45 c8 0b 00 00 00 	movl   $0xb,-0x38(%rbp)
 6f0:	c7 45 cc 0c 00 00 00 	movl   $0xc,-0x34(%rbp)
 6f7:	c7 45 d0 0d 00 00 00 	movl   $0xd,-0x30(%rbp)
 6fe:	c7 45 d4 0e 00 00 00 	movl   $0xe,-0x2c(%rbp)
 705:	c7 45 d8 14 00 00 00 	movl   $0x14,-0x28(%rbp)
 70c:	c7 45 dc 15 00 00 00 	movl   $0x15,-0x24(%rbp)
 713:	c7 45 e0 16 00 00 00 	movl   $0x16,-0x20(%rbp)
 71a:	c7 45 e4 17 00 00 00 	movl   $0x17,-0x1c(%rbp)
 721:	c7 45 e8 18 00 00 00 	movl   $0x18,-0x18(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:10
	int rowVal=0;
 728:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:12
	
	for(r=0;r<3;r++) {
 72f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 736:	e9 a3 00 00 00       	jmpq   7de <main+0x12e>
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:13
		if (r>0) {
 73b:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
 73f:	7e 26                	jle    767 <main+0xb7>
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:14
			rowVal=matrix[r-1][0]+10;
 741:	8b 45 fc             	mov    -0x4(%rbp),%eax
 744:	83 e8 01             	sub    $0x1,%eax
 747:	48 63 d0             	movslq %eax,%rdx
 74a:	48 89 d0             	mov    %rdx,%rax
 74d:	48 c1 e0 02          	shl    $0x2,%rax
 751:	48 01 d0             	add    %rdx,%rax
 754:	48 c1 e0 02          	shl    $0x2,%rax
 758:	48 01 e8             	add    %rbp,%rax
 75b:	48 83 e8 50          	sub    $0x50,%rax
 75f:	8b 00                	mov    (%rax),%eax
 761:	83 c0 0a             	add    $0xa,%eax
 764:	89 45 f4             	mov    %eax,-0xc(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:16
		}
		for(c=0;c<5;c++) {
 767:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
 76e:	eb 64                	jmp    7d4 <main+0x124>
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:17 (discriminator 3)
			matrix[r][c]=100 + rowVal + c;
 770:	8b 45 f4             	mov    -0xc(%rbp),%eax
 773:	8d 50 64             	lea    0x64(%rax),%edx
 776:	8b 45 f8             	mov    -0x8(%rbp),%eax
 779:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
 77c:	8b 45 f8             	mov    -0x8(%rbp),%eax
 77f:	48 63 f0             	movslq %eax,%rsi
 782:	8b 45 fc             	mov    -0x4(%rbp),%eax
 785:	48 63 d0             	movslq %eax,%rdx
 788:	48 89 d0             	mov    %rdx,%rax
 78b:	48 c1 e0 02          	shl    $0x2,%rax
 78f:	48 01 d0             	add    %rdx,%rax
 792:	48 01 f0             	add    %rsi,%rax
 795:	89 4c 85 b0          	mov    %ecx,-0x50(%rbp,%rax,4)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:18 (discriminator 3)
			gmat[r][c]=-100 - rowVal - c;
 799:	b8 9c ff ff ff       	mov    $0xffffff9c,%eax
 79e:	2b 45 f4             	sub    -0xc(%rbp),%eax
 7a1:	2b 45 f8             	sub    -0x8(%rbp),%eax
 7a4:	89 c1                	mov    %eax,%ecx
 7a6:	8b 45 f8             	mov    -0x8(%rbp),%eax
 7a9:	48 63 f0             	movslq %eax,%rsi
 7ac:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7af:	48 63 d0             	movslq %eax,%rdx
 7b2:	48 89 d0             	mov    %rdx,%rax
 7b5:	48 01 c0             	add    %rax,%rax
 7b8:	48 01 d0             	add    %rdx,%rax
 7bb:	48 01 f0             	add    %rsi,%rax
 7be:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 7c5:	00 
 7c6:	48 8d 05 63 08 20 00 	lea    0x200863(%rip),%rax        # 201030 <gmat>
 7cd:	89 0c 02             	mov    %ecx,(%rdx,%rax,1)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:16 (discriminator 3)
		for(c=0;c<5;c++) {
 7d0:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:16 (discriminator 1)
 7d4:	83 7d f8 04          	cmpl   $0x4,-0x8(%rbp)
 7d8:	7e 96                	jle    770 <main+0xc0>
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:12 (discriminator 2)
	for(r=0;r<3;r++) {
 7da:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:12 (discriminator 1)
 7de:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
 7e2:	0f 8e 53 ff ff ff    	jle    73b <main+0x8b>
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:22
		}
	}
	
	printf("%p\n",&matrix[2][4]);
 7e8:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 7ec:	48 83 c0 38          	add    $0x38,%rax
 7f0:	48 89 c6             	mov    %rax,%rsi
 7f3:	48 8d 3d 9a 00 00 00 	lea    0x9a(%rip),%rdi        # 894 <_IO_stdin_used+0x4>
 7fa:	b8 00 00 00 00       	mov    $0x0,%eax
 7ff:	e8 5c fd ff ff       	callq  560 <printf@plt>
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:23
	return 0;
 804:	b8 00 00 00 00       	mov    $0x0,%eax
/import/linux/home1/igokce1/Desktop/cs220/lab08-goktugokce/x86mem.c:24
}
 809:	c9                   	leaveq 
 80a:	c3                   	retq   
 80b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000810 <__libc_csu_init>:
__libc_csu_init():
 810:	41 57                	push   %r15
 812:	41 56                	push   %r14
 814:	41 89 ff             	mov    %edi,%r15d
 817:	41 55                	push   %r13
 819:	41 54                	push   %r12
 81b:	4c 8d 25 b6 05 20 00 	lea    0x2005b6(%rip),%r12        # 200dd8 <__frame_dummy_init_array_entry>
 822:	55                   	push   %rbp
 823:	48 8d 2d b6 05 20 00 	lea    0x2005b6(%rip),%rbp        # 200de0 <__init_array_end>
 82a:	53                   	push   %rbx
 82b:	49 89 f6             	mov    %rsi,%r14
 82e:	49 89 d5             	mov    %rdx,%r13
 831:	4c 29 e5             	sub    %r12,%rbp
 834:	48 83 ec 08          	sub    $0x8,%rsp
 838:	48 c1 fd 03          	sar    $0x3,%rbp
 83c:	e8 ef fc ff ff       	callq  530 <_init>
 841:	48 85 ed             	test   %rbp,%rbp
 844:	74 20                	je     866 <__libc_csu_init+0x56>
 846:	31 db                	xor    %ebx,%ebx
 848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 84f:	00 
 850:	4c 89 ea             	mov    %r13,%rdx
 853:	4c 89 f6             	mov    %r14,%rsi
 856:	44 89 ff             	mov    %r15d,%edi
 859:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 85d:	48 83 c3 01          	add    $0x1,%rbx
 861:	48 39 dd             	cmp    %rbx,%rbp
 864:	75 ea                	jne    850 <__libc_csu_init+0x40>
 866:	48 83 c4 08          	add    $0x8,%rsp
 86a:	5b                   	pop    %rbx
 86b:	5d                   	pop    %rbp
 86c:	41 5c                	pop    %r12
 86e:	41 5d                	pop    %r13
 870:	41 5e                	pop    %r14
 872:	41 5f                	pop    %r15
 874:	c3                   	retq   
 875:	90                   	nop
 876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 87d:	00 00 00 

0000000000000880 <__libc_csu_fini>:
__libc_csu_fini():
 880:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000884 <_fini>:
_fini():
 884:	48 83 ec 08          	sub    $0x8,%rsp
 888:	48 83 c4 08          	add    $0x8,%rsp
 88c:	c3                   	retq   

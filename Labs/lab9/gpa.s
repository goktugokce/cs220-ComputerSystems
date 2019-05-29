
gpa:     file format elf64-x86-64


Disassembly of section .init:

0000000000000590 <_init>:
_init():
 590:	48 83 ec 08          	sub    $0x8,%rsp
 594:	48 8b 05 45 0a 20 00 	mov    0x200a45(%rip),%rax        # 200fe0 <__gmon_start__>
 59b:	48 85 c0             	test   %rax,%rax
 59e:	74 02                	je     5a2 <_init+0x12>
 5a0:	ff d0                	callq  *%rax
 5a2:	48 83 c4 08          	add    $0x8,%rsp
 5a6:	c3                   	retq   

Disassembly of section .plt:

00000000000005b0 <.plt>:
 5b0:	ff 35 52 0a 20 00    	pushq  0x200a52(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 5b6:	ff 25 54 0a 20 00    	jmpq   *0x200a54(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 5bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005c0 <printf@plt>:
 5c0:	ff 25 52 0a 20 00    	jmpq   *0x200a52(%rip)        # 201018 <printf@GLIBC_2.2.5>
 5c6:	68 00 00 00 00       	pushq  $0x0
 5cb:	e9 e0 ff ff ff       	jmpq   5b0 <.plt>

00000000000005d0 <__isoc99_scanf@plt>:
 5d0:	ff 25 4a 0a 20 00    	jmpq   *0x200a4a(%rip)        # 201020 <__isoc99_scanf@GLIBC_2.7>
 5d6:	68 01 00 00 00       	pushq  $0x1
 5db:	e9 d0 ff ff ff       	jmpq   5b0 <.plt>

Disassembly of section .plt.got:

00000000000005e0 <.plt.got>:
 5e0:	ff 25 12 0a 20 00    	jmpq   *0x200a12(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000005f0 <_start>:
_start():
 5f0:	31 ed                	xor    %ebp,%ebp
 5f2:	49 89 d1             	mov    %rdx,%r9
 5f5:	5e                   	pop    %rsi
 5f6:	48 89 e2             	mov    %rsp,%rdx
 5f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 5fd:	50                   	push   %rax
 5fe:	54                   	push   %rsp
 5ff:	4c 8d 05 3a 04 00 00 	lea    0x43a(%rip),%r8        # a40 <__libc_csu_fini>
 606:	48 8d 0d c3 03 00 00 	lea    0x3c3(%rip),%rcx        # 9d0 <__libc_csu_init>
 60d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 720 <main>
 614:	ff 15 be 09 20 00    	callq  *0x2009be(%rip)        # 200fd8 <__libc_start_main@GLIBC_2.2.5>
 61a:	f4                   	hlt    
 61b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000620 <deregister_tm_clones>:
deregister_tm_clones():
 620:	48 8d 3d 11 0a 20 00 	lea    0x200a11(%rip),%rdi        # 201038 <__TMC_END__>
 627:	48 8d 05 11 0a 20 00 	lea    0x200a11(%rip),%rax        # 20103f <__TMC_END__+0x7>
 62e:	55                   	push   %rbp
 62f:	48 29 f8             	sub    %rdi,%rax
 632:	48 89 e5             	mov    %rsp,%rbp
 635:	48 83 f8 0e          	cmp    $0xe,%rax
 639:	76 15                	jbe    650 <deregister_tm_clones+0x30>
 63b:	48 8b 05 8e 09 20 00 	mov    0x20098e(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 642:	48 85 c0             	test   %rax,%rax
 645:	74 09                	je     650 <deregister_tm_clones+0x30>
 647:	5d                   	pop    %rbp
 648:	ff e0                	jmpq   *%rax
 64a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 650:	5d                   	pop    %rbp
 651:	c3                   	retq   
 652:	0f 1f 40 00          	nopl   0x0(%rax)
 656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 65d:	00 00 00 

0000000000000660 <register_tm_clones>:
register_tm_clones():
 660:	48 8d 3d d1 09 20 00 	lea    0x2009d1(%rip),%rdi        # 201038 <__TMC_END__>
 667:	48 8d 35 ca 09 20 00 	lea    0x2009ca(%rip),%rsi        # 201038 <__TMC_END__>
 66e:	55                   	push   %rbp
 66f:	48 29 fe             	sub    %rdi,%rsi
 672:	48 89 e5             	mov    %rsp,%rbp
 675:	48 c1 fe 03          	sar    $0x3,%rsi
 679:	48 89 f0             	mov    %rsi,%rax
 67c:	48 c1 e8 3f          	shr    $0x3f,%rax
 680:	48 01 c6             	add    %rax,%rsi
 683:	48 d1 fe             	sar    %rsi
 686:	74 18                	je     6a0 <register_tm_clones+0x40>
 688:	48 8b 05 61 09 20 00 	mov    0x200961(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 68f:	48 85 c0             	test   %rax,%rax
 692:	74 0c                	je     6a0 <register_tm_clones+0x40>
 694:	5d                   	pop    %rbp
 695:	ff e0                	jmpq   *%rax
 697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 69e:	00 00 
 6a0:	5d                   	pop    %rbp
 6a1:	c3                   	retq   
 6a2:	0f 1f 40 00          	nopl   0x0(%rax)
 6a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6ad:	00 00 00 

00000000000006b0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
 6b0:	80 3d 81 09 20 00 00 	cmpb   $0x0,0x200981(%rip)        # 201038 <__TMC_END__>
 6b7:	75 27                	jne    6e0 <__do_global_dtors_aux+0x30>
 6b9:	48 83 3d 37 09 20 00 	cmpq   $0x0,0x200937(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 6c0:	00 
 6c1:	55                   	push   %rbp
 6c2:	48 89 e5             	mov    %rsp,%rbp
 6c5:	74 0c                	je     6d3 <__do_global_dtors_aux+0x23>
 6c7:	48 8b 3d 62 09 20 00 	mov    0x200962(%rip),%rdi        # 201030 <__dso_handle>
 6ce:	e8 0d ff ff ff       	callq  5e0 <.plt.got>
 6d3:	e8 48 ff ff ff       	callq  620 <deregister_tm_clones>
 6d8:	5d                   	pop    %rbp
 6d9:	c6 05 58 09 20 00 01 	movb   $0x1,0x200958(%rip)        # 201038 <__TMC_END__>
 6e0:	f3 c3                	repz retq 
 6e2:	0f 1f 40 00          	nopl   0x0(%rax)
 6e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6ed:	00 00 00 

00000000000006f0 <frame_dummy>:
frame_dummy():
 6f0:	48 8d 3d f1 06 20 00 	lea    0x2006f1(%rip),%rdi        # 200de8 <__JCR_END__>
 6f7:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 6fb:	75 0b                	jne    708 <frame_dummy+0x18>
 6fd:	e9 5e ff ff ff       	jmpq   660 <register_tm_clones>
 702:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 708:	48 8b 05 d9 08 20 00 	mov    0x2008d9(%rip),%rax        # 200fe8 <_Jv_RegisterClasses>
 70f:	48 85 c0             	test   %rax,%rax
 712:	74 e9                	je     6fd <frame_dummy+0xd>
 714:	55                   	push   %rbp
 715:	48 89 e5             	mov    %rsp,%rbp
 718:	ff d0                	callq  *%rax
 71a:	5d                   	pop    %rbp
 71b:	e9 40 ff ff ff       	jmpq   660 <register_tm_clones>

0000000000000720 <main>:
main():
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:6
#include <stdio.h>

int grade2gp(char *grade);
enum lgrades { A, Am, Bp, B, Bm, Cp, C, Cm, Dp, D, Dm, F};

int main() {
 720:	55                   	push   %rbp
 721:	48 89 e5             	mov    %rsp,%rbp
 724:	48 83 ec 20          	sub    $0x20,%rsp
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:10

	char grade[10];
	int crhrs;
	int sumGP=0; // Note... we represent grade points using tenths of a grade point as a unit to avoid float
 728:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:11
	int totHrs=0;
 72f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:13
	
	while(2==scanf("%d %s ",&crhrs,grade)) {
 736:	eb 1d                	jmp    755 <main+0x35>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:14
		sumGP+=crhrs*grade2gp(grade);
 738:	48 8d 45 ee          	lea    -0x12(%rbp),%rax
 73c:	48 89 c7             	mov    %rax,%rdi
 73f:	e8 70 00 00 00       	callq  7b4 <grade2gp>
 744:	89 c2                	mov    %eax,%edx
 746:	8b 45 e8             	mov    -0x18(%rbp),%eax
 749:	0f af c2             	imul   %edx,%eax
 74c:	01 45 fc             	add    %eax,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:15
		totHrs+=crhrs;
 74f:	8b 45 e8             	mov    -0x18(%rbp),%eax
 752:	01 45 f8             	add    %eax,-0x8(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:13
	while(2==scanf("%d %s ",&crhrs,grade)) {
 755:	48 8d 55 ee          	lea    -0x12(%rbp),%rdx
 759:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
 75d:	48 89 c6             	mov    %rax,%rsi
 760:	48 8d 3d f1 02 00 00 	lea    0x2f1(%rip),%rdi        # a58 <_IO_stdin_used+0x8>
 767:	b8 00 00 00 00       	mov    $0x0,%eax
 76c:	e8 5f fe ff ff       	callq  5d0 <__isoc99_scanf@plt>
 771:	83 f8 02             	cmp    $0x2,%eax
 774:	74 c2                	je     738 <main+0x18>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:17
	}
	printf("GPA=%4.2f\n",(float)sumGP/(10.0*totHrs));
 776:	66 0f ef c0          	pxor   %xmm0,%xmm0
 77a:	f3 0f 2a 45 fc       	cvtsi2ssl -0x4(%rbp),%xmm0
 77f:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 783:	66 0f ef c9          	pxor   %xmm1,%xmm1
 787:	f2 0f 2a 4d f8       	cvtsi2sdl -0x8(%rbp),%xmm1
 78c:	f2 0f 10 15 0c 03 00 	movsd  0x30c(%rip),%xmm2        # aa0 <_IO_stdin_used+0x50>
 793:	00 
 794:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
 798:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
 79c:	48 8d 3d bc 02 00 00 	lea    0x2bc(%rip),%rdi        # a5f <_IO_stdin_used+0xf>
 7a3:	b8 01 00 00 00       	mov    $0x1,%eax
 7a8:	e8 13 fe ff ff       	callq  5c0 <printf@plt>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:18
	return 0;
 7ad:	b8 00 00 00 00       	mov    $0x0,%eax
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:19
}
 7b2:	c9                   	leaveq 
 7b3:	c3                   	retq   

00000000000007b4 <grade2gp>:
grade2gp():
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:21

int grade2gp(char *grade) {
 7b4:	55                   	push   %rbp
 7b5:	48 89 e5             	mov    %rsp,%rbp
 7b8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:23
	enum lgrades gr;
	switch(grade[0]) {
 7bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 7c0:	0f b6 00             	movzbl (%rax),%eax
 7c3:	0f be c0             	movsbl %al,%eax
 7c6:	83 f8 42             	cmp    $0x42,%eax
 7c9:	74 68                	je     833 <grade2gp+0x7f>
 7cb:	83 f8 42             	cmp    $0x42,%eax
 7ce:	7f 0a                	jg     7da <grade2gp+0x26>
 7d0:	83 f8 41             	cmp    $0x41,%eax
 7d3:	74 1c                	je     7f1 <grade2gp+0x3d>
 7d5:	e9 5b 01 00 00       	jmpq   935 <grade2gp+0x181>
 7da:	83 f8 43             	cmp    $0x43,%eax
 7dd:	0f 84 ad 00 00 00    	je     890 <grade2gp+0xdc>
 7e3:	83 f8 44             	cmp    $0x44,%eax
 7e6:	0f 84 f8 00 00 00    	je     8e4 <grade2gp+0x130>
 7ec:	e9 44 01 00 00       	jmpq   935 <grade2gp+0x181>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:25
		case 'A' : 
			if (grade[1]==0x00) gr=A;
 7f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 7f5:	48 83 c0 01          	add    $0x1,%rax
 7f9:	0f b6 00             	movzbl (%rax),%eax
 7fc:	84 c0                	test   %al,%al
 7fe:	75 0c                	jne    80c <grade2gp+0x58>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:25 (discriminator 1)
 800:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:28 (discriminator 1)
			else if (grade[1]=='-') gr=Am;
			else gr=F; // invalid grade
			break;
 807:	e9 30 01 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:26
			else if (grade[1]=='-') gr=Am;
 80c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 810:	48 83 c0 01          	add    $0x1,%rax
 814:	0f b6 00             	movzbl (%rax),%eax
 817:	3c 2d                	cmp    $0x2d,%al
 819:	75 0c                	jne    827 <grade2gp+0x73>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:26 (discriminator 1)
 81b:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:28 (discriminator 1)
			break;
 822:	e9 15 01 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:27
			else gr=F; // invalid grade
 827:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:28
			break;
 82e:	e9 09 01 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:30
		case 'B' :
			if (grade[1]==0x00) gr=B;
 833:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 837:	48 83 c0 01          	add    $0x1,%rax
 83b:	0f b6 00             	movzbl (%rax),%eax
 83e:	84 c0                	test   %al,%al
 840:	75 0c                	jne    84e <grade2gp+0x9a>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:30 (discriminator 1)
 842:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:34 (discriminator 1)
			else if (grade[1]=='+') gr=Bp;
			else if (grade[1]=='-') gr=Bm;
			else gr=F;
			break;
 849:	e9 ee 00 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:31
			else if (grade[1]=='+') gr=Bp;
 84e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 852:	48 83 c0 01          	add    $0x1,%rax
 856:	0f b6 00             	movzbl (%rax),%eax
 859:	3c 2b                	cmp    $0x2b,%al
 85b:	75 0c                	jne    869 <grade2gp+0xb5>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:31 (discriminator 1)
 85d:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:34 (discriminator 1)
			break;
 864:	e9 d3 00 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:32
			else if (grade[1]=='-') gr=Bm;
 869:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 86d:	48 83 c0 01          	add    $0x1,%rax
 871:	0f b6 00             	movzbl (%rax),%eax
 874:	3c 2d                	cmp    $0x2d,%al
 876:	75 0c                	jne    884 <grade2gp+0xd0>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:32 (discriminator 1)
 878:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:34 (discriminator 1)
			break;
 87f:	e9 b8 00 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:33
			else gr=F;
 884:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:34
			break;
 88b:	e9 ac 00 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:36
		case 'C' :
			if (grade[1]==0x00) gr=C;
 890:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 894:	48 83 c0 01          	add    $0x1,%rax
 898:	0f b6 00             	movzbl (%rax),%eax
 89b:	84 c0                	test   %al,%al
 89d:	75 0c                	jne    8ab <grade2gp+0xf7>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:36 (discriminator 1)
 89f:	c7 45 fc 06 00 00 00 	movl   $0x6,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:40 (discriminator 1)
			else if (grade[1]=='+') gr=Cp;
			else if (grade[1]=='-') gr=Cm;
			else gr=F;
			break;
 8a6:	e9 91 00 00 00       	jmpq   93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:37
			else if (grade[1]=='+') gr=Cp;
 8ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8af:	48 83 c0 01          	add    $0x1,%rax
 8b3:	0f b6 00             	movzbl (%rax),%eax
 8b6:	3c 2b                	cmp    $0x2b,%al
 8b8:	75 09                	jne    8c3 <grade2gp+0x10f>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:37 (discriminator 1)
 8ba:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:40 (discriminator 1)
			break;
 8c1:	eb 79                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:38
			else if (grade[1]=='-') gr=Cm;
 8c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8c7:	48 83 c0 01          	add    $0x1,%rax
 8cb:	0f b6 00             	movzbl (%rax),%eax
 8ce:	3c 2d                	cmp    $0x2d,%al
 8d0:	75 09                	jne    8db <grade2gp+0x127>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:38 (discriminator 1)
 8d2:	c7 45 fc 07 00 00 00 	movl   $0x7,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:40 (discriminator 1)
			break;
 8d9:	eb 61                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:39
			else gr=F;
 8db:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:40
			break;
 8e2:	eb 58                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:42
		case 'D':
			if (grade[1]==0x00) gr=D;
 8e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8e8:	48 83 c0 01          	add    $0x1,%rax
 8ec:	0f b6 00             	movzbl (%rax),%eax
 8ef:	84 c0                	test   %al,%al
 8f1:	75 09                	jne    8fc <grade2gp+0x148>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:42 (discriminator 1)
 8f3:	c7 45 fc 09 00 00 00 	movl   $0x9,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:46 (discriminator 1)
			else if (grade[1]=='+') gr=Dp;
			else if (grade[1]=='-') gr=Dm;
			else gr=F;
			break;
 8fa:	eb 40                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:43
			else if (grade[1]=='+') gr=Dp;
 8fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 900:	48 83 c0 01          	add    $0x1,%rax
 904:	0f b6 00             	movzbl (%rax),%eax
 907:	3c 2b                	cmp    $0x2b,%al
 909:	75 09                	jne    914 <grade2gp+0x160>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:43 (discriminator 1)
 90b:	c7 45 fc 08 00 00 00 	movl   $0x8,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:46 (discriminator 1)
			break;
 912:	eb 28                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:44
			else if (grade[1]=='-') gr=Dm;
 914:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 918:	48 83 c0 01          	add    $0x1,%rax
 91c:	0f b6 00             	movzbl (%rax),%eax
 91f:	3c 2d                	cmp    $0x2d,%al
 921:	75 09                	jne    92c <grade2gp+0x178>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:44 (discriminator 1)
 923:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:46 (discriminator 1)
			break;
 92a:	eb 10                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:45
			else gr=F;
 92c:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:46
			break;
 933:	eb 07                	jmp    93c <grade2gp+0x188>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:48
		default: 
			gr=F;
 935:	c7 45 fc 0b 00 00 00 	movl   $0xb,-0x4(%rbp)
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:51
	}
	
	switch(gr) {
 93c:	83 7d fc 0b          	cmpl   $0xb,-0x4(%rbp)
 940:	77 78                	ja     9ba <grade2gp+0x206>
 942:	8b 45 fc             	mov    -0x4(%rbp),%eax
 945:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 94c:	00 
 94d:	48 8d 05 18 01 00 00 	lea    0x118(%rip),%rax        # a6c <_IO_stdin_used+0x1c>
 954:	8b 04 02             	mov    (%rdx,%rax,1),%eax
 957:	48 63 d0             	movslq %eax,%rdx
 95a:	48 8d 05 0b 01 00 00 	lea    0x10b(%rip),%rax        # a6c <_IO_stdin_used+0x1c>
 961:	48 01 d0             	add    %rdx,%rax
 964:	ff e0                	jmpq   *%rax
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:52
		case A : return 40;
 966:	b8 28 00 00 00       	mov    $0x28,%eax
 96b:	eb 52                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:53
		case Am: return 37;
 96d:	b8 25 00 00 00       	mov    $0x25,%eax
 972:	eb 4b                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:54
		case Bp: return 33;
 974:	b8 21 00 00 00       	mov    $0x21,%eax
 979:	eb 44                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:55
		case B : return 30;
 97b:	b8 1e 00 00 00       	mov    $0x1e,%eax
 980:	eb 3d                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:56
		case Bm: return 27;
 982:	b8 1b 00 00 00       	mov    $0x1b,%eax
 987:	eb 36                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:57
		case Cp: return 23;
 989:	b8 17 00 00 00       	mov    $0x17,%eax
 98e:	eb 2f                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:58
		case C : return 20;
 990:	b8 14 00 00 00       	mov    $0x14,%eax
 995:	eb 28                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:59
		case Cm: return 17;
 997:	b8 11 00 00 00       	mov    $0x11,%eax
 99c:	eb 21                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:60
		case Dp: return 13;
 99e:	b8 0d 00 00 00       	mov    $0xd,%eax
 9a3:	eb 1a                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:61
		case D : return 10;
 9a5:	b8 0a 00 00 00       	mov    $0xa,%eax
 9aa:	eb 13                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:62
		case Dm: return 7;
 9ac:	b8 07 00 00 00       	mov    $0x7,%eax
 9b1:	eb 0c                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:63
		case F : return 0;
 9b3:	b8 00 00 00 00       	mov    $0x0,%eax
 9b8:	eb 05                	jmp    9bf <grade2gp+0x20b>
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:65
	}
	return 0;
 9ba:	b8 00 00 00 00       	mov    $0x0,%eax
/import/linux/home1/igokce1/Desktop/cs220/lab09-goktugokce/gpa.c:66
}
 9bf:	5d                   	pop    %rbp
 9c0:	c3                   	retq   
 9c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9c8:	00 00 00 
 9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009d0 <__libc_csu_init>:
__libc_csu_init():
 9d0:	41 57                	push   %r15
 9d2:	41 56                	push   %r14
 9d4:	41 89 ff             	mov    %edi,%r15d
 9d7:	41 55                	push   %r13
 9d9:	41 54                	push   %r12
 9db:	4c 8d 25 f6 03 20 00 	lea    0x2003f6(%rip),%r12        # 200dd8 <__frame_dummy_init_array_entry>
 9e2:	55                   	push   %rbp
 9e3:	48 8d 2d f6 03 20 00 	lea    0x2003f6(%rip),%rbp        # 200de0 <__init_array_end>
 9ea:	53                   	push   %rbx
 9eb:	49 89 f6             	mov    %rsi,%r14
 9ee:	49 89 d5             	mov    %rdx,%r13
 9f1:	4c 29 e5             	sub    %r12,%rbp
 9f4:	48 83 ec 08          	sub    $0x8,%rsp
 9f8:	48 c1 fd 03          	sar    $0x3,%rbp
 9fc:	e8 8f fb ff ff       	callq  590 <_init>
 a01:	48 85 ed             	test   %rbp,%rbp
 a04:	74 20                	je     a26 <__libc_csu_init+0x56>
 a06:	31 db                	xor    %ebx,%ebx
 a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a0f:	00 
 a10:	4c 89 ea             	mov    %r13,%rdx
 a13:	4c 89 f6             	mov    %r14,%rsi
 a16:	44 89 ff             	mov    %r15d,%edi
 a19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 a1d:	48 83 c3 01          	add    $0x1,%rbx
 a21:	48 39 dd             	cmp    %rbx,%rbp
 a24:	75 ea                	jne    a10 <__libc_csu_init+0x40>
 a26:	48 83 c4 08          	add    $0x8,%rsp
 a2a:	5b                   	pop    %rbx
 a2b:	5d                   	pop    %rbp
 a2c:	41 5c                	pop    %r12
 a2e:	41 5d                	pop    %r13
 a30:	41 5e                	pop    %r14
 a32:	41 5f                	pop    %r15
 a34:	c3                   	retq   
 a35:	90                   	nop
 a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a3d:	00 00 00 

0000000000000a40 <__libc_csu_fini>:
__libc_csu_fini():
 a40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000a44 <_fini>:
_fini():
 a44:	48 83 ec 08          	sub    $0x8,%rsp
 a48:	48 83 c4 08          	add    $0x8,%rsp
 a4c:	c3                   	retq   

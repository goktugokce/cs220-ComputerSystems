
grades:     file format elf64-x86-64


Disassembly of section .init:

0000000000001138 <_init>:
_init():
    1138:	48 83 ec 08          	sub    $0x8,%rsp
    113c:	48 8b 05 9d 1e 20 00 	mov    0x201e9d(%rip),%rax        # 202fe0 <__gmon_start__>
    1143:	48 85 c0             	test   %rax,%rax
    1146:	74 02                	je     114a <_init+0x12>
    1148:	ff d0                	callq  *%rax
    114a:	48 83 c4 08          	add    $0x8,%rsp
    114e:	c3                   	retq   

Disassembly of section .plt:

0000000000001150 <.plt>:
    1150:	ff 35 b2 1e 20 00    	pushq  0x201eb2(%rip)        # 203008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1156:	ff 25 b4 1e 20 00    	jmpq   *0x201eb4(%rip)        # 203010 <_GLOBAL_OFFSET_TABLE_+0x10>
    115c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001160 <putchar@plt>:
    1160:	ff 25 b2 1e 20 00    	jmpq   *0x201eb2(%rip)        # 203018 <putchar@GLIBC_2.2.5>
    1166:	68 00 00 00 00       	pushq  $0x0
    116b:	e9 e0 ff ff ff       	jmpq   1150 <.plt>

0000000000001170 <puts@plt>:
    1170:	ff 25 aa 1e 20 00    	jmpq   *0x201eaa(%rip)        # 203020 <puts@GLIBC_2.2.5>
    1176:	68 01 00 00 00       	pushq  $0x1
    117b:	e9 d0 ff ff ff       	jmpq   1150 <.plt>

0000000000001180 <setbuf@plt>:
    1180:	ff 25 a2 1e 20 00    	jmpq   *0x201ea2(%rip)        # 203028 <setbuf@GLIBC_2.2.5>
    1186:	68 02 00 00 00       	pushq  $0x2
    118b:	e9 c0 ff ff ff       	jmpq   1150 <.plt>

0000000000001190 <printf@plt>:
    1190:	ff 25 9a 1e 20 00    	jmpq   *0x201e9a(%rip)        # 203030 <printf@GLIBC_2.2.5>
    1196:	68 03 00 00 00       	pushq  $0x3
    119b:	e9 b0 ff ff ff       	jmpq   1150 <.plt>

00000000000011a0 <srand@plt>:
    11a0:	ff 25 92 1e 20 00    	jmpq   *0x201e92(%rip)        # 203038 <srand@GLIBC_2.2.5>
    11a6:	68 04 00 00 00       	pushq  $0x4
    11ab:	e9 a0 ff ff ff       	jmpq   1150 <.plt>

00000000000011b0 <time@plt>:
    11b0:	ff 25 8a 1e 20 00    	jmpq   *0x201e8a(%rip)        # 203040 <time@GLIBC_2.2.5>
    11b6:	68 05 00 00 00       	pushq  $0x5
    11bb:	e9 90 ff ff ff       	jmpq   1150 <.plt>

00000000000011c0 <gets@plt>:
    11c0:	ff 25 82 1e 20 00    	jmpq   *0x201e82(%rip)        # 203048 <gets@GLIBC_2.2.5>
    11c6:	68 06 00 00 00       	pushq  $0x6
    11cb:	e9 80 ff ff ff       	jmpq   1150 <.plt>

00000000000011d0 <mprotect@plt>:
    11d0:	ff 25 7a 1e 20 00    	jmpq   *0x201e7a(%rip)        # 203050 <mprotect@GLIBC_2.2.5>
    11d6:	68 07 00 00 00       	pushq  $0x7
    11db:	e9 70 ff ff ff       	jmpq   1150 <.plt>

00000000000011e0 <sysconf@plt>:
    11e0:	ff 25 72 1e 20 00    	jmpq   *0x201e72(%rip)        # 203058 <sysconf@GLIBC_2.2.5>
    11e6:	68 08 00 00 00       	pushq  $0x8
    11eb:	e9 60 ff ff ff       	jmpq   1150 <.plt>

00000000000011f0 <atoi@plt>:
    11f0:	ff 25 6a 1e 20 00    	jmpq   *0x201e6a(%rip)        # 203060 <atoi@GLIBC_2.2.5>
    11f6:	68 09 00 00 00       	pushq  $0x9
    11fb:	e9 50 ff ff ff       	jmpq   1150 <.plt>

0000000000001200 <exit@plt>:
    1200:	ff 25 62 1e 20 00    	jmpq   *0x201e62(%rip)        # 203068 <exit@GLIBC_2.2.5>
    1206:	68 0a 00 00 00       	pushq  $0xa
    120b:	e9 40 ff ff ff       	jmpq   1150 <.plt>

0000000000001210 <rand@plt>:
    1210:	ff 25 5a 1e 20 00    	jmpq   *0x201e5a(%rip)        # 203070 <rand@GLIBC_2.2.5>
    1216:	68 0b 00 00 00       	pushq  $0xb
    121b:	e9 30 ff ff ff       	jmpq   1150 <.plt>

Disassembly of section .plt.got:

0000000000001220 <.plt.got>:
    1220:	ff 25 d2 1d 20 00    	jmpq   *0x201dd2(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
    1226:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001230 <_start>:
_start():
    1230:	31 ed                	xor    %ebp,%ebp
    1232:	49 89 d1             	mov    %rdx,%r9
    1235:	5e                   	pop    %rsi
    1236:	48 89 e2             	mov    %rsp,%rdx
    1239:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    123d:	50                   	push   %rax
    123e:	54                   	push   %rsp
    123f:	4c 8d 05 2a 0a 00 00 	lea    0xa2a(%rip),%r8        # 1c70 <__libc_csu_fini>
    1246:	48 8d 0d b3 09 00 00 	lea    0x9b3(%rip),%rcx        # 1c00 <__libc_csu_init>
    124d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 1360 <main>
    1254:	ff 15 7e 1d 20 00    	callq  *0x201d7e(%rip)        # 202fd8 <__libc_start_main@GLIBC_2.2.5>
    125a:	f4                   	hlt    
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <deregister_tm_clones>:
deregister_tm_clones():
    1260:	48 8d 3d 61 21 20 00 	lea    0x202161(%rip),%rdi        # 2033c8 <__TMC_END__>
    1267:	48 8d 05 61 21 20 00 	lea    0x202161(%rip),%rax        # 2033cf <__TMC_END__+0x7>
    126e:	55                   	push   %rbp
    126f:	48 29 f8             	sub    %rdi,%rax
    1272:	48 89 e5             	mov    %rsp,%rbp
    1275:	48 83 f8 0e          	cmp    $0xe,%rax
    1279:	76 15                	jbe    1290 <deregister_tm_clones+0x30>
    127b:	48 8b 05 4e 1d 20 00 	mov    0x201d4e(%rip),%rax        # 202fd0 <_ITM_deregisterTMCloneTable>
    1282:	48 85 c0             	test   %rax,%rax
    1285:	74 09                	je     1290 <deregister_tm_clones+0x30>
    1287:	5d                   	pop    %rbp
    1288:	ff e0                	jmpq   *%rax
    128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1290:	5d                   	pop    %rbp
    1291:	c3                   	retq   
    1292:	0f 1f 40 00          	nopl   0x0(%rax)
    1296:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    129d:	00 00 00 

00000000000012a0 <register_tm_clones>:
register_tm_clones():
    12a0:	48 8d 3d 21 21 20 00 	lea    0x202121(%rip),%rdi        # 2033c8 <__TMC_END__>
    12a7:	48 8d 35 1a 21 20 00 	lea    0x20211a(%rip),%rsi        # 2033c8 <__TMC_END__>
    12ae:	55                   	push   %rbp
    12af:	48 29 fe             	sub    %rdi,%rsi
    12b2:	48 89 e5             	mov    %rsp,%rbp
    12b5:	48 c1 fe 03          	sar    $0x3,%rsi
    12b9:	48 89 f0             	mov    %rsi,%rax
    12bc:	48 c1 e8 3f          	shr    $0x3f,%rax
    12c0:	48 01 c6             	add    %rax,%rsi
    12c3:	48 d1 fe             	sar    %rsi
    12c6:	74 18                	je     12e0 <register_tm_clones+0x40>
    12c8:	48 8b 05 21 1d 20 00 	mov    0x201d21(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
    12cf:	48 85 c0             	test   %rax,%rax
    12d2:	74 0c                	je     12e0 <register_tm_clones+0x40>
    12d4:	5d                   	pop    %rbp
    12d5:	ff e0                	jmpq   *%rax
    12d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12de:	00 00 
    12e0:	5d                   	pop    %rbp
    12e1:	c3                   	retq   
    12e2:	0f 1f 40 00          	nopl   0x0(%rax)
    12e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12ed:	00 00 00 

00000000000012f0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
    12f0:	80 3d f1 20 20 00 00 	cmpb   $0x0,0x2020f1(%rip)        # 2033e8 <completed.6972>
    12f7:	75 27                	jne    1320 <__do_global_dtors_aux+0x30>
    12f9:	48 83 3d f7 1c 20 00 	cmpq   $0x0,0x201cf7(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
    1300:	00 
    1301:	55                   	push   %rbp
    1302:	48 89 e5             	mov    %rsp,%rbp
    1305:	74 0c                	je     1313 <__do_global_dtors_aux+0x23>
    1307:	48 8b 3d 7a 1d 20 00 	mov    0x201d7a(%rip),%rdi        # 203088 <__dso_handle>
    130e:	e8 0d ff ff ff       	callq  1220 <.plt.got>
    1313:	e8 48 ff ff ff       	callq  1260 <deregister_tm_clones>
    1318:	5d                   	pop    %rbp
    1319:	c6 05 c8 20 20 00 01 	movb   $0x1,0x2020c8(%rip)        # 2033e8 <completed.6972>
    1320:	f3 c3                	repz retq 
    1322:	0f 1f 40 00          	nopl   0x0(%rax)
    1326:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    132d:	00 00 00 

0000000000001330 <frame_dummy>:
frame_dummy():
    1330:	48 8d 3d b1 1a 20 00 	lea    0x201ab1(%rip),%rdi        # 202de8 <__JCR_END__>
    1337:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    133b:	75 0b                	jne    1348 <frame_dummy+0x18>
    133d:	e9 5e ff ff ff       	jmpq   12a0 <register_tm_clones>
    1342:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1348:	48 8b 05 99 1c 20 00 	mov    0x201c99(%rip),%rax        # 202fe8 <_Jv_RegisterClasses>
    134f:	48 85 c0             	test   %rax,%rax
    1352:	74 e9                	je     133d <frame_dummy+0xd>
    1354:	55                   	push   %rbp
    1355:	48 89 e5             	mov    %rsp,%rbp
    1358:	ff d0                	callq  *%rax
    135a:	5d                   	pop    %rbp
    135b:	e9 40 ff ff ff       	jmpq   12a0 <register_tm_clones>

0000000000001360 <main>:
main():
/home/igokce1/Desktop/proj4-goktugokce/grades.c:129
"Xingyue_Zhan"
};

FILE *txtFile;

int main(int argc, char ** argv) {
    1360:	55                   	push   %rbp
    1361:	48 89 e5             	mov    %rsp,%rbp
    1364:	48 83 ec 30          	sub    $0x30,%rsp
    1368:	89 7d dc             	mov    %edi,-0x24(%rbp)
    136b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:133
	char * secID;
	time_t t;

	long pagesize = sysconf(_SC_PAGESIZE);;
    136f:	bf 1e 00 00 00       	mov    $0x1e,%edi
    1374:	e8 67 fe ff ff       	callq  11e0 <sysconf@plt>
    1379:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:134
	setbuf(stdout,0);
    137d:	48 8b 05 5c 20 20 00 	mov    0x20205c(%rip),%rax        # 2033e0 <stdout@@GLIBC_2.2.5>
    1384:	be 00 00 00 00       	mov    $0x0,%esi
    1389:	48 89 c7             	mov    %rax,%rdi
    138c:	e8 ef fd ff ff       	callq  1180 <setbuf@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:135
	retBuffer=(char *)(((long)retBufferArea + pagesize-1) & ~(pagesize-1));
    1391:	48 8d 05 68 20 20 00 	lea    0x202068(%rip),%rax        # 203400 <retBufferArea>
    1398:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    139c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13a0:	48 01 c2             	add    %rax,%rdx
    13a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13a7:	48 f7 d8             	neg    %rax
    13aa:	48 21 d0             	and    %rdx,%rax
    13ad:	48 89 05 7c 45 20 00 	mov    %rax,0x20457c(%rip)        # 205930 <retBuffer>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:136
	if(mprotect(retBuffer, 1024, PROT_READ|PROT_EXEC|PROT_WRITE)) {
    13b4:	48 8b 05 75 45 20 00 	mov    0x204575(%rip),%rax        # 205930 <retBuffer>
    13bb:	ba 07 00 00 00       	mov    $0x7,%edx
    13c0:	be 00 04 00 00       	mov    $0x400,%esi
    13c5:	48 89 c7             	mov    %rax,%rdi
    13c8:	e8 03 fe ff ff       	callq  11d0 <mprotect@plt>
    13cd:	85 c0                	test   %eax,%eax
    13cf:	74 16                	je     13e7 <main+0x87>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:137
      printf("mprotect failed\n");
    13d1:	48 8d 3d 26 0e 00 00 	lea    0xe26(%rip),%rdi        # 21fe <_IO_stdin_used+0x57e>
    13d8:	e8 93 fd ff ff       	callq  1170 <puts@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:138
      return(1);
    13dd:	b8 01 00 00 00       	mov    $0x1,%eax
    13e2:	e9 08 01 00 00       	jmpq   14ef <main+0x18f>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:140
   }
   if (argc==1) srand((unsigned) time(&t));
    13e7:	83 7d dc 01          	cmpl   $0x1,-0x24(%rbp)
    13eb:	75 15                	jne    1402 <main+0xa2>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:140 (discriminator 1)
    13ed:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    13f1:	48 89 c7             	mov    %rax,%rdi
    13f4:	e8 b7 fd ff ff       	callq  11b0 <time@plt>
    13f9:	89 c7                	mov    %eax,%edi
    13fb:	e8 a0 fd ff ff       	callq  11a0 <srand@plt>
    1400:	eb 20                	jmp    1422 <main+0xc2>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:142
   else {
   	unsigned int seed=atoi(argv[1]);
    1402:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1406:	48 83 c0 08          	add    $0x8,%rax
    140a:	48 8b 00             	mov    (%rax),%rax
    140d:	48 89 c7             	mov    %rax,%rdi
    1410:	e8 db fd ff ff       	callq  11f0 <atoi@plt>
    1415:	89 45 f4             	mov    %eax,-0xc(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:143
   	srand(seed);
    1418:	8b 45 f4             	mov    -0xc(%rbp),%eax
    141b:	89 c7                	mov    %eax,%edi
    141d:	e8 7e fd ff ff       	callq  11a0 <srand@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:145
	}
	getGrades(aGrades,ASIZE);
    1422:	be 33 00 00 00       	mov    $0x33,%esi
    1427:	48 8d 3d 12 45 20 00 	lea    0x204512(%rip),%rdi        # 205940 <aGrades>
    142e:	e8 be 00 00 00       	callq  14f1 <getGrades>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:146
	getGrades(bGrades,BSIZE);
    1433:	be 31 00 00 00       	mov    $0x31,%esi
    1438:	48 8d 3d c1 33 20 00 	lea    0x2033c1(%rip),%rdi        # 204800 <bGrades>
    143f:	e8 ad 00 00 00       	callq  14f1 <getGrades>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:147
	getAvg(aGrades,ASIZE);
    1444:	be 33 00 00 00       	mov    $0x33,%esi
    1449:	48 8d 3d f0 44 20 00 	lea    0x2044f0(%rip),%rdi        # 205940 <aGrades>
    1450:	e8 21 03 00 00       	callq  1776 <getAvg>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:148
	getAvg(bGrades,BSIZE);
    1455:	be 31 00 00 00       	mov    $0x31,%esi
    145a:	48 8d 3d 9f 33 20 00 	lea    0x20339f(%rip),%rdi        # 204800 <bGrades>
    1461:	e8 10 03 00 00       	callq  1776 <getAvg>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:150

	printf("Choose section A or B: ");
    1466:	48 8d 3d a1 0d 00 00 	lea    0xda1(%rip),%rdi        # 220e <_IO_stdin_used+0x58e>
    146d:	b8 00 00 00 00       	mov    $0x0,%eax
    1472:	e8 19 fd ff ff       	callq  1190 <printf@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:151
	secID=getUserLine();
    1477:	b8 00 00 00 00       	mov    $0x0,%eax
    147c:	e8 11 05 00 00       	callq  1992 <getUserLine>
    1481:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:152
	printf("\n");
    1485:	bf 0a 00 00 00       	mov    $0xa,%edi
    148a:	e8 d1 fc ff ff       	callq  1160 <putchar@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:155


	if (secID[0]=='A') {
    148f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1493:	0f b6 00             	movzbl (%rax),%eax
    1496:	3c 41                	cmp    $0x41,%al
    1498:	75 1a                	jne    14b4 <main+0x154>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:156
		printGrades(aGrades,ASIZE,aNames);
    149a:	48 8d 15 ff 1b 20 00 	lea    0x201bff(%rip),%rdx        # 2030a0 <aNames>
    14a1:	be 33 00 00 00       	mov    $0x33,%esi
    14a6:	48 8d 3d 93 44 20 00 	lea    0x204493(%rip),%rdi        # 205940 <aGrades>
    14ad:	e8 68 05 00 00       	callq  1a1a <printGrades>
    14b2:	eb 31                	jmp    14e5 <main+0x185>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:157
	} else if (secID[0]=='B') {
    14b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14b8:	0f b6 00             	movzbl (%rax),%eax
    14bb:	3c 42                	cmp    $0x42,%al
    14bd:	75 1a                	jne    14d9 <main+0x179>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:158
		printGrades(bGrades,BSIZE,bNames);
    14bf:	48 8d 15 7a 1d 20 00 	lea    0x201d7a(%rip),%rdx        # 203240 <bNames>
    14c6:	be 31 00 00 00       	mov    $0x31,%esi
    14cb:	48 8d 3d 2e 33 20 00 	lea    0x20332e(%rip),%rdi        # 204800 <bGrades>
    14d2:	e8 43 05 00 00       	callq  1a1a <printGrades>
    14d7:	eb 0c                	jmp    14e5 <main+0x185>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:160
	} else {
		printf("Unable to determine which section you wanted.\n");
    14d9:	48 8d 3d 48 0d 00 00 	lea    0xd48(%rip),%rdi        # 2228 <_IO_stdin_used+0x5a8>
    14e0:	e8 8b fc ff ff       	callq  1170 <puts@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:162
	}
	exit(0);
    14e5:	bf 00 00 00 00       	mov    $0x0,%edi
    14ea:	e8 11 fd ff ff       	callq  1200 <exit@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:163 (discriminator 1)
}
    14ef:	c9                   	leaveq 
    14f0:	c3                   	retq   

00000000000014f1 <getGrades>:
getGrades():
/home/igokce1/Desktop/proj4-goktugokce/grades.c:165

void getGrades(int grds[11][100],int n) {
    14f1:	55                   	push   %rbp
    14f2:	48 89 e5             	mov    %rsp,%rbp
    14f5:	53                   	push   %rbx
    14f6:	48 83 ec 28          	sub    $0x28,%rsp
    14fa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    14fe:	89 75 d4             	mov    %esi,-0x2c(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:167
	int s;
	for(s=0; s<n; s++) {
    1501:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1508:	e9 55 02 00 00       	jmpq   1762 <getGrades+0x271>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:168 (discriminator 3)
		grds[0][s]=30+rand()%51;
    150d:	e8 fe fc ff ff       	callq  1210 <rand@plt>
    1512:	89 c1                	mov    %eax,%ecx
    1514:	ba a1 a0 a0 a0       	mov    $0xa0a0a0a1,%edx
    1519:	89 c8                	mov    %ecx,%eax
    151b:	f7 ea                	imul   %edx
    151d:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    1520:	c1 f8 05             	sar    $0x5,%eax
    1523:	89 c2                	mov    %eax,%edx
    1525:	89 c8                	mov    %ecx,%eax
    1527:	c1 f8 1f             	sar    $0x1f,%eax
    152a:	29 c2                	sub    %eax,%edx
    152c:	89 d0                	mov    %edx,%eax
    152e:	6b c0 33             	imul   $0x33,%eax,%eax
    1531:	29 c1                	sub    %eax,%ecx
    1533:	89 c8                	mov    %ecx,%eax
    1535:	8d 48 1e             	lea    0x1e(%rax),%ecx
    1538:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    153c:	8b 55 ec             	mov    -0x14(%rbp),%edx
    153f:	48 63 d2             	movslq %edx,%rdx
    1542:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:169 (discriminator 3)
		grds[1][s]=30+rand()%51;
    1545:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1549:	48 8d 98 90 01 00 00 	lea    0x190(%rax),%rbx
    1550:	e8 bb fc ff ff       	callq  1210 <rand@plt>
    1555:	89 c1                	mov    %eax,%ecx
    1557:	ba a1 a0 a0 a0       	mov    $0xa0a0a0a1,%edx
    155c:	89 c8                	mov    %ecx,%eax
    155e:	f7 ea                	imul   %edx
    1560:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    1563:	c1 f8 05             	sar    $0x5,%eax
    1566:	89 c2                	mov    %eax,%edx
    1568:	89 c8                	mov    %ecx,%eax
    156a:	c1 f8 1f             	sar    $0x1f,%eax
    156d:	29 c2                	sub    %eax,%edx
    156f:	89 d0                	mov    %edx,%eax
    1571:	6b c0 33             	imul   $0x33,%eax,%eax
    1574:	29 c1                	sub    %eax,%ecx
    1576:	89 c8                	mov    %ecx,%eax
    1578:	8d 50 1e             	lea    0x1e(%rax),%edx
    157b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    157e:	48 98                	cltq   
    1580:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:170 (discriminator 3)
		grds[2][s]=30+rand()%51;
    1583:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1587:	48 8d 98 20 03 00 00 	lea    0x320(%rax),%rbx
    158e:	e8 7d fc ff ff       	callq  1210 <rand@plt>
    1593:	89 c1                	mov    %eax,%ecx
    1595:	ba a1 a0 a0 a0       	mov    $0xa0a0a0a1,%edx
    159a:	89 c8                	mov    %ecx,%eax
    159c:	f7 ea                	imul   %edx
    159e:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    15a1:	c1 f8 05             	sar    $0x5,%eax
    15a4:	89 c2                	mov    %eax,%edx
    15a6:	89 c8                	mov    %ecx,%eax
    15a8:	c1 f8 1f             	sar    $0x1f,%eax
    15ab:	29 c2                	sub    %eax,%edx
    15ad:	89 d0                	mov    %edx,%eax
    15af:	6b c0 33             	imul   $0x33,%eax,%eax
    15b2:	29 c1                	sub    %eax,%ecx
    15b4:	89 c8                	mov    %ecx,%eax
    15b6:	8d 50 1e             	lea    0x1e(%rax),%edx
    15b9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    15bc:	48 98                	cltq   
    15be:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:171 (discriminator 3)
		grds[3][s]=20+rand()%60;
    15c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15c5:	48 8d 98 b0 04 00 00 	lea    0x4b0(%rax),%rbx
    15cc:	e8 3f fc ff ff       	callq  1210 <rand@plt>
    15d1:	89 c1                	mov    %eax,%ecx
    15d3:	ba 89 88 88 88       	mov    $0x88888889,%edx
    15d8:	89 c8                	mov    %ecx,%eax
    15da:	f7 ea                	imul   %edx
    15dc:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    15df:	c1 f8 05             	sar    $0x5,%eax
    15e2:	89 c2                	mov    %eax,%edx
    15e4:	89 c8                	mov    %ecx,%eax
    15e6:	c1 f8 1f             	sar    $0x1f,%eax
    15e9:	29 c2                	sub    %eax,%edx
    15eb:	89 d0                	mov    %edx,%eax
    15ed:	6b c0 3c             	imul   $0x3c,%eax,%eax
    15f0:	29 c1                	sub    %eax,%ecx
    15f2:	89 c8                	mov    %ecx,%eax
    15f4:	8d 50 14             	lea    0x14(%rax),%edx
    15f7:	8b 45 ec             	mov    -0x14(%rbp),%eax
    15fa:	48 98                	cltq   
    15fc:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:172 (discriminator 3)
		grds[4][s]=rand()%10;
    15ff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1603:	48 8d 98 40 06 00 00 	lea    0x640(%rax),%rbx
    160a:	e8 01 fc ff ff       	callq  1210 <rand@plt>
    160f:	89 c1                	mov    %eax,%ecx
    1611:	ba 67 66 66 66       	mov    $0x66666667,%edx
    1616:	89 c8                	mov    %ecx,%eax
    1618:	f7 ea                	imul   %edx
    161a:	c1 fa 02             	sar    $0x2,%edx
    161d:	89 c8                	mov    %ecx,%eax
    161f:	c1 f8 1f             	sar    $0x1f,%eax
    1622:	29 c2                	sub    %eax,%edx
    1624:	89 d0                	mov    %edx,%eax
    1626:	c1 e0 02             	shl    $0x2,%eax
    1629:	01 d0                	add    %edx,%eax
    162b:	01 c0                	add    %eax,%eax
    162d:	29 c1                	sub    %eax,%ecx
    162f:	89 ca                	mov    %ecx,%edx
    1631:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1634:	48 98                	cltq   
    1636:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:173 (discriminator 3)
		grds[5][s]=rand()%10;
    1639:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    163d:	48 8d 98 d0 07 00 00 	lea    0x7d0(%rax),%rbx
    1644:	e8 c7 fb ff ff       	callq  1210 <rand@plt>
    1649:	89 c1                	mov    %eax,%ecx
    164b:	ba 67 66 66 66       	mov    $0x66666667,%edx
    1650:	89 c8                	mov    %ecx,%eax
    1652:	f7 ea                	imul   %edx
    1654:	c1 fa 02             	sar    $0x2,%edx
    1657:	89 c8                	mov    %ecx,%eax
    1659:	c1 f8 1f             	sar    $0x1f,%eax
    165c:	29 c2                	sub    %eax,%edx
    165e:	89 d0                	mov    %edx,%eax
    1660:	c1 e0 02             	shl    $0x2,%eax
    1663:	01 d0                	add    %edx,%eax
    1665:	01 c0                	add    %eax,%eax
    1667:	29 c1                	sub    %eax,%ecx
    1669:	89 ca                	mov    %ecx,%edx
    166b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    166e:	48 98                	cltq   
    1670:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:174 (discriminator 3)
		grds[6][s]=rand()%10;
    1673:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1677:	48 8d 98 60 09 00 00 	lea    0x960(%rax),%rbx
    167e:	e8 8d fb ff ff       	callq  1210 <rand@plt>
    1683:	89 c1                	mov    %eax,%ecx
    1685:	ba 67 66 66 66       	mov    $0x66666667,%edx
    168a:	89 c8                	mov    %ecx,%eax
    168c:	f7 ea                	imul   %edx
    168e:	c1 fa 02             	sar    $0x2,%edx
    1691:	89 c8                	mov    %ecx,%eax
    1693:	c1 f8 1f             	sar    $0x1f,%eax
    1696:	29 c2                	sub    %eax,%edx
    1698:	89 d0                	mov    %edx,%eax
    169a:	c1 e0 02             	shl    $0x2,%eax
    169d:	01 d0                	add    %edx,%eax
    169f:	01 c0                	add    %eax,%eax
    16a1:	29 c1                	sub    %eax,%ecx
    16a3:	89 ca                	mov    %ecx,%edx
    16a5:	8b 45 ec             	mov    -0x14(%rbp),%eax
    16a8:	48 98                	cltq   
    16aa:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:175 (discriminator 3)
		grds[7][s]=rand()%10;
    16ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16b1:	48 8d 98 f0 0a 00 00 	lea    0xaf0(%rax),%rbx
    16b8:	e8 53 fb ff ff       	callq  1210 <rand@plt>
    16bd:	89 c1                	mov    %eax,%ecx
    16bf:	ba 67 66 66 66       	mov    $0x66666667,%edx
    16c4:	89 c8                	mov    %ecx,%eax
    16c6:	f7 ea                	imul   %edx
    16c8:	c1 fa 02             	sar    $0x2,%edx
    16cb:	89 c8                	mov    %ecx,%eax
    16cd:	c1 f8 1f             	sar    $0x1f,%eax
    16d0:	29 c2                	sub    %eax,%edx
    16d2:	89 d0                	mov    %edx,%eax
    16d4:	c1 e0 02             	shl    $0x2,%eax
    16d7:	01 d0                	add    %edx,%eax
    16d9:	01 c0                	add    %eax,%eax
    16db:	29 c1                	sub    %eax,%ecx
    16dd:	89 ca                	mov    %ecx,%edx
    16df:	8b 45 ec             	mov    -0x14(%rbp),%eax
    16e2:	48 98                	cltq   
    16e4:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:176 (discriminator 3)
		grds[8][s]=30+rand()%66;
    16e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16eb:	48 8d 98 80 0c 00 00 	lea    0xc80(%rax),%rbx
    16f2:	e8 19 fb ff ff       	callq  1210 <rand@plt>
    16f7:	89 c1                	mov    %eax,%ecx
    16f9:	ba e1 83 0f 3e       	mov    $0x3e0f83e1,%edx
    16fe:	89 c8                	mov    %ecx,%eax
    1700:	f7 ea                	imul   %edx
    1702:	c1 fa 04             	sar    $0x4,%edx
    1705:	89 c8                	mov    %ecx,%eax
    1707:	c1 f8 1f             	sar    $0x1f,%eax
    170a:	29 c2                	sub    %eax,%edx
    170c:	89 d0                	mov    %edx,%eax
    170e:	6b c0 42             	imul   $0x42,%eax,%eax
    1711:	29 c1                	sub    %eax,%ecx
    1713:	89 c8                	mov    %ecx,%eax
    1715:	8d 50 1e             	lea    0x1e(%rax),%edx
    1718:	8b 45 ec             	mov    -0x14(%rbp),%eax
    171b:	48 98                	cltq   
    171d:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:177 (discriminator 3)
		grds[9][s]=40+rand()%56;
    1720:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1724:	48 8d 98 10 0e 00 00 	lea    0xe10(%rax),%rbx
    172b:	e8 e0 fa ff ff       	callq  1210 <rand@plt>
    1730:	89 c1                	mov    %eax,%ecx
    1732:	ba 93 24 49 92       	mov    $0x92492493,%edx
    1737:	89 c8                	mov    %ecx,%eax
    1739:	f7 ea                	imul   %edx
    173b:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    173e:	c1 f8 05             	sar    $0x5,%eax
    1741:	89 c2                	mov    %eax,%edx
    1743:	89 c8                	mov    %ecx,%eax
    1745:	c1 f8 1f             	sar    $0x1f,%eax
    1748:	29 c2                	sub    %eax,%edx
    174a:	89 d0                	mov    %edx,%eax
    174c:	6b c0 38             	imul   $0x38,%eax,%eax
    174f:	29 c1                	sub    %eax,%ecx
    1751:	89 c8                	mov    %ecx,%eax
    1753:	8d 50 28             	lea    0x28(%rax),%edx
    1756:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1759:	48 98                	cltq   
    175b:	89 14 83             	mov    %edx,(%rbx,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:167 (discriminator 3)
	for(s=0; s<n; s++) {
    175e:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:167 (discriminator 1)
    1762:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1765:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    1768:	0f 8c 9f fd ff ff    	jl     150d <getGrades+0x1c>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:179
	}
}
    176e:	90                   	nop
    176f:	48 83 c4 28          	add    $0x28,%rsp
    1773:	5b                   	pop    %rbx
    1774:	5d                   	pop    %rbp
    1775:	c3                   	retq   

0000000000001776 <getAvg>:
getAvg():
/home/igokce1/Desktop/proj4-goktugokce/grades.c:181

void getAvg(int grds[11][100],int n) {
    1776:	55                   	push   %rbp
    1777:	48 89 e5             	mov    %rsp,%rbp
    177a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    177e:	89 75 d4             	mov    %esi,-0x2c(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:187
	int s;
	int avgProj;
	int minProj;
	int avgQuiz;
	int avgTest;
	for(s=0; s<n; s++) {
    1781:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1788:	e9 f6 01 00 00       	jmpq   1983 <getAvg+0x20d>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:188
		minProj=101;
    178d:	c7 45 f8 65 00 00 00 	movl   $0x65,-0x8(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:189
		if (grds[0][s] < minProj) minProj=grds[0][s];
    1794:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1798:	8b 55 fc             	mov    -0x4(%rbp),%edx
    179b:	48 63 d2             	movslq %edx,%rdx
    179e:	8b 04 90             	mov    (%rax,%rdx,4),%eax
    17a1:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    17a4:	7d 10                	jge    17b6 <getAvg+0x40>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:189 (discriminator 1)
    17a6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    17aa:	8b 55 fc             	mov    -0x4(%rbp),%edx
    17ad:	48 63 d2             	movslq %edx,%rdx
    17b0:	8b 04 90             	mov    (%rax,%rdx,4),%eax
    17b3:	89 45 f8             	mov    %eax,-0x8(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:190
		if (grds[1][s] < minProj) minProj=grds[1][s];
    17b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    17ba:	48 8d 90 90 01 00 00 	lea    0x190(%rax),%rdx
    17c1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    17c4:	48 98                	cltq   
    17c6:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    17c9:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    17cc:	7d 16                	jge    17e4 <getAvg+0x6e>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:190 (discriminator 1)
    17ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    17d2:	48 8d 90 90 01 00 00 	lea    0x190(%rax),%rdx
    17d9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    17dc:	48 98                	cltq   
    17de:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    17e1:	89 45 f8             	mov    %eax,-0x8(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:191
		if (grds[2][s] < minProj) minProj=grds[2][s];
    17e4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    17e8:	48 8d 90 20 03 00 00 	lea    0x320(%rax),%rdx
    17ef:	8b 45 fc             	mov    -0x4(%rbp),%eax
    17f2:	48 98                	cltq   
    17f4:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    17f7:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    17fa:	7d 16                	jge    1812 <getAvg+0x9c>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:191 (discriminator 1)
    17fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1800:	48 8d 90 20 03 00 00 	lea    0x320(%rax),%rdx
    1807:	8b 45 fc             	mov    -0x4(%rbp),%eax
    180a:	48 98                	cltq   
    180c:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    180f:	89 45 f8             	mov    %eax,-0x8(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:192
		if (grds[3][s] < minProj) minProj=grds[3][s];
    1812:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1816:	48 8d 90 b0 04 00 00 	lea    0x4b0(%rax),%rdx
    181d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1820:	48 98                	cltq   
    1822:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    1825:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    1828:	7d 16                	jge    1840 <getAvg+0xca>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:192 (discriminator 1)
    182a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    182e:	48 8d 90 b0 04 00 00 	lea    0x4b0(%rax),%rdx
    1835:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1838:	48 98                	cltq   
    183a:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    183d:	89 45 f8             	mov    %eax,-0x8(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:193 (discriminator 2)
		avgProj=(grds[0][s] + grds[1][s] + grds[2][s] + grds[3][s] - minProj) / 3;
    1840:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1844:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1847:	48 63 d2             	movslq %edx,%rdx
    184a:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    184d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1851:	48 8d 88 90 01 00 00 	lea    0x190(%rax),%rcx
    1858:	8b 45 fc             	mov    -0x4(%rbp),%eax
    185b:	48 98                	cltq   
    185d:	8b 04 81             	mov    (%rcx,%rax,4),%eax
    1860:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    1863:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1867:	48 8d 90 20 03 00 00 	lea    0x320(%rax),%rdx
    186e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1871:	48 98                	cltq   
    1873:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    1876:	01 c1                	add    %eax,%ecx
    1878:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    187c:	48 8d 90 b0 04 00 00 	lea    0x4b0(%rax),%rdx
    1883:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1886:	48 98                	cltq   
    1888:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    188b:	01 c8                	add    %ecx,%eax
    188d:	2b 45 f8             	sub    -0x8(%rbp),%eax
    1890:	89 c1                	mov    %eax,%ecx
    1892:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1897:	89 c8                	mov    %ecx,%eax
    1899:	f7 ea                	imul   %edx
    189b:	89 c8                	mov    %ecx,%eax
    189d:	c1 f8 1f             	sar    $0x1f,%eax
    18a0:	29 c2                	sub    %eax,%edx
    18a2:	89 d0                	mov    %edx,%eax
    18a4:	89 45 f4             	mov    %eax,-0xc(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:194 (discriminator 2)
		avgQuiz=(10 *(grds[4][s] + grds[5][s] + grds[6][s] + grds[7][s])) / 4;
    18a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18ab:	48 8d 90 40 06 00 00 	lea    0x640(%rax),%rdx
    18b2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    18b5:	48 98                	cltq   
    18b7:	8b 14 82             	mov    (%rdx,%rax,4),%edx
    18ba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18be:	48 8d 88 d0 07 00 00 	lea    0x7d0(%rax),%rcx
    18c5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    18c8:	48 98                	cltq   
    18ca:	8b 04 81             	mov    (%rcx,%rax,4),%eax
    18cd:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    18d0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18d4:	48 8d 90 60 09 00 00 	lea    0x960(%rax),%rdx
    18db:	8b 45 fc             	mov    -0x4(%rbp),%eax
    18de:	48 98                	cltq   
    18e0:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    18e3:	01 c1                	add    %eax,%ecx
    18e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18e9:	48 8d 90 f0 0a 00 00 	lea    0xaf0(%rax),%rdx
    18f0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    18f3:	48 98                	cltq   
    18f5:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    18f8:	8d 14 01             	lea    (%rcx,%rax,1),%edx
    18fb:	89 d0                	mov    %edx,%eax
    18fd:	c1 e0 02             	shl    $0x2,%eax
    1900:	01 d0                	add    %edx,%eax
    1902:	01 c0                	add    %eax,%eax
    1904:	8d 50 03             	lea    0x3(%rax),%edx
    1907:	85 c0                	test   %eax,%eax
    1909:	0f 48 c2             	cmovs  %edx,%eax
    190c:	c1 f8 02             	sar    $0x2,%eax
    190f:	89 45 f0             	mov    %eax,-0x10(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:195 (discriminator 2)
		avgTest=(grds[8][s] + grds[9][s])/2;
    1912:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1916:	48 8d 90 80 0c 00 00 	lea    0xc80(%rax),%rdx
    191d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1920:	48 98                	cltq   
    1922:	8b 14 82             	mov    (%rdx,%rax,4),%edx
    1925:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1929:	48 8d 88 10 0e 00 00 	lea    0xe10(%rax),%rcx
    1930:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1933:	48 98                	cltq   
    1935:	8b 04 81             	mov    (%rcx,%rax,4),%eax
    1938:	01 d0                	add    %edx,%eax
    193a:	89 c2                	mov    %eax,%edx
    193c:	c1 ea 1f             	shr    $0x1f,%edx
    193f:	01 d0                	add    %edx,%eax
    1941:	d1 f8                	sar    %eax
    1943:	89 45 ec             	mov    %eax,-0x14(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:196 (discriminator 2)
		grds[10][s] = (3*avgProj + avgQuiz + 2*avgTest) / 6;
    1946:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    194a:	48 8d b0 a0 0f 00 00 	lea    0xfa0(%rax),%rsi
    1951:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1954:	89 d0                	mov    %edx,%eax
    1956:	01 c0                	add    %eax,%eax
    1958:	01 c2                	add    %eax,%edx
    195a:	8b 45 f0             	mov    -0x10(%rbp),%eax
    195d:	01 c2                	add    %eax,%edx
    195f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1962:	01 c0                	add    %eax,%eax
    1964:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    1967:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
    196c:	89 c8                	mov    %ecx,%eax
    196e:	f7 ea                	imul   %edx
    1970:	89 c8                	mov    %ecx,%eax
    1972:	c1 f8 1f             	sar    $0x1f,%eax
    1975:	29 c2                	sub    %eax,%edx
    1977:	8b 45 fc             	mov    -0x4(%rbp),%eax
    197a:	48 98                	cltq   
    197c:	89 14 86             	mov    %edx,(%rsi,%rax,4)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:187 (discriminator 2)
	for(s=0; s<n; s++) {
    197f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:187 (discriminator 1)
    1983:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1986:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    1989:	0f 8c fe fd ff ff    	jl     178d <getAvg+0x17>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:198
	}
}
    198f:	90                   	nop
    1990:	5d                   	pop    %rbp
    1991:	c3                   	retq   

0000000000001992 <getUserLine>:
getUserLine():
/home/igokce1/Desktop/proj4-goktugokce/grades.c:202



char * getUserLine() {
    1992:	55                   	push   %rbp
    1993:	48 89 e5             	mov    %rsp,%rbp
    1996:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
/home/igokce1/Desktop/proj4-goktugokce/grades.c:205
	char buffer[256];

	if (gets(buffer)) {
    199d:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    19a4:	48 89 c7             	mov    %rax,%rdi
    19a7:	e8 14 f8 ff ff       	callq  11c0 <gets@plt>
    19ac:	48 85 c0             	test   %rax,%rax
    19af:	74 62                	je     1a13 <getUserLine+0x81>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:206
		memcpy(retBuffer,buffer,sizeof(buffer));
    19b1:	48 8b 05 78 3f 20 00 	mov    0x203f78(%rip),%rax        # 205930 <retBuffer>
    19b8:	48 89 c2             	mov    %rax,%rdx
    19bb:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    19c2:	b9 00 01 00 00       	mov    $0x100,%ecx
    19c7:	48 8b 30             	mov    (%rax),%rsi
    19ca:	48 89 32             	mov    %rsi,(%rdx)
    19cd:	89 ce                	mov    %ecx,%esi
    19cf:	48 01 d6             	add    %rdx,%rsi
    19d2:	48 8d 7e 08          	lea    0x8(%rsi),%rdi
    19d6:	89 ce                	mov    %ecx,%esi
    19d8:	48 01 c6             	add    %rax,%rsi
    19db:	48 83 c6 08          	add    $0x8,%rsi
    19df:	48 8b 76 f0          	mov    -0x10(%rsi),%rsi
    19e3:	48 89 77 f0          	mov    %rsi,-0x10(%rdi)
    19e7:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
    19eb:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    19ef:	48 29 fa             	sub    %rdi,%rdx
    19f2:	48 29 d0             	sub    %rdx,%rax
    19f5:	01 d1                	add    %edx,%ecx
    19f7:	83 e1 f8             	and    $0xfffffff8,%ecx
    19fa:	c1 e9 03             	shr    $0x3,%ecx
    19fd:	89 ca                	mov    %ecx,%edx
    19ff:	89 d2                	mov    %edx,%edx
    1a01:	48 89 c6             	mov    %rax,%rsi
    1a04:	48 89 d1             	mov    %rdx,%rcx
    1a07:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:207
		return retBuffer;
    1a0a:	48 8b 05 1f 3f 20 00 	mov    0x203f1f(%rip),%rax        # 205930 <retBuffer>
    1a11:	eb 05                	jmp    1a18 <getUserLine+0x86>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:209
	}
	return NULL;
    1a13:	b8 00 00 00 00       	mov    $0x0,%eax
/home/igokce1/Desktop/proj4-goktugokce/grades.c:210 (discriminator 1)
}
    1a18:	c9                   	leaveq 
    1a19:	c3                   	retq   

0000000000001a1a <printGrades>:
printGrades():
/home/igokce1/Desktop/proj4-goktugokce/grades.c:212

void printGrades(int grds[11][100],int n,char * names[]) {
    1a1a:	55                   	push   %rbp
    1a1b:	48 89 e5             	mov    %rsp,%rbp
    1a1e:	41 56                	push   %r14
    1a20:	41 55                	push   %r13
    1a22:	41 54                	push   %r12
    1a24:	53                   	push   %rbx
    1a25:	48 83 ec 30          	sub    $0x30,%rsp
    1a29:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1a2d:	89 75 c4             	mov    %esi,-0x3c(%rbp)
    1a30:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:214
	int s;
	printf(" %20s | %3s | %3s | %3s | %3s | %3s | %3s | %3s | %3s | %3s | %3s || %3s |\n",
    1a34:	48 83 ec 08          	sub    $0x8,%rsp
    1a38:	48 8d 05 7d 08 00 00 	lea    0x87d(%rip),%rax        # 22bc <_IO_stdin_used+0x63c>
    1a3f:	50                   	push   %rax
    1a40:	48 8d 05 79 08 00 00 	lea    0x879(%rip),%rax        # 22c0 <_IO_stdin_used+0x640>
    1a47:	50                   	push   %rax
    1a48:	48 8d 05 74 08 00 00 	lea    0x874(%rip),%rax        # 22c3 <_IO_stdin_used+0x643>
    1a4f:	50                   	push   %rax
    1a50:	48 8d 05 6f 08 00 00 	lea    0x86f(%rip),%rax        # 22c6 <_IO_stdin_used+0x646>
    1a57:	50                   	push   %rax
    1a58:	48 8d 05 6a 08 00 00 	lea    0x86a(%rip),%rax        # 22c9 <_IO_stdin_used+0x649>
    1a5f:	50                   	push   %rax
    1a60:	48 8d 05 65 08 00 00 	lea    0x865(%rip),%rax        # 22cc <_IO_stdin_used+0x64c>
    1a67:	50                   	push   %rax
    1a68:	48 8d 05 60 08 00 00 	lea    0x860(%rip),%rax        # 22cf <_IO_stdin_used+0x64f>
    1a6f:	50                   	push   %rax
    1a70:	4c 8d 0d df 07 00 00 	lea    0x7df(%rip),%r9        # 2256 <_IO_stdin_used+0x5d6>
    1a77:	4c 8d 05 db 07 00 00 	lea    0x7db(%rip),%r8        # 2259 <_IO_stdin_used+0x5d9>
    1a7e:	48 8d 0d d7 07 00 00 	lea    0x7d7(%rip),%rcx        # 225c <_IO_stdin_used+0x5dc>
    1a85:	48 8d 15 d3 07 00 00 	lea    0x7d3(%rip),%rdx        # 225f <_IO_stdin_used+0x5df>
    1a8c:	48 8d 35 cf 07 00 00 	lea    0x7cf(%rip),%rsi        # 2262 <_IO_stdin_used+0x5e2>
    1a93:	48 8d 3d d6 07 00 00 	lea    0x7d6(%rip),%rdi        # 2270 <_IO_stdin_used+0x5f0>
    1a9a:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9f:	e8 ec f6 ff ff       	callq  1190 <printf@plt>
    1aa4:	48 83 c4 40          	add    $0x40,%rsp
/home/igokce1/Desktop/proj4-goktugokce/grades.c:216
		"Student","P1", "P2", "P3","P4","H1","H2","H3","H4","T1","T2","Avg");
	printf("----------------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----||-----|\n");
    1aa8:	48 8d 3d 29 08 00 00 	lea    0x829(%rip),%rdi        # 22d8 <_IO_stdin_used+0x658>
    1aaf:	e8 bc f6 ff ff       	callq  1170 <puts@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:217
	for(s=0; s<n; s++) {
    1ab4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1abb:	e9 19 01 00 00       	jmpq   1bd9 <printGrades+0x1bf>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:221 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
			names[s],grds[0][s], grds[1][s], grds[2][s], grds[3][s],
			grds[4][s],grds[5][s],grds[6][s],grds[7][s],
			grds[8][s],grds[9][s],grds[10][s]);
    1ac0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1ac4:	48 8d 90 a0 0f 00 00 	lea    0xfa0(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1acb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1ace:	48 98                	cltq   
    1ad0:	8b 1c 82             	mov    (%rdx,%rax,4),%ebx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:221 (discriminator 3)
			grds[8][s],grds[9][s],grds[10][s]);
    1ad3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1ad7:	48 8d 90 10 0e 00 00 	lea    0xe10(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1ade:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1ae1:	48 98                	cltq   
    1ae3:	44 8b 1c 82          	mov    (%rdx,%rax,4),%r11d
/home/igokce1/Desktop/proj4-goktugokce/grades.c:221 (discriminator 3)
			grds[8][s],grds[9][s],grds[10][s]);
    1ae7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1aeb:	48 8d 90 80 0c 00 00 	lea    0xc80(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1af2:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1af5:	48 98                	cltq   
    1af7:	44 8b 14 82          	mov    (%rdx,%rax,4),%r10d
/home/igokce1/Desktop/proj4-goktugokce/grades.c:220 (discriminator 3)
			grds[4][s],grds[5][s],grds[6][s],grds[7][s],
    1afb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1aff:	48 8d 90 f0 0a 00 00 	lea    0xaf0(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b06:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b09:	48 98                	cltq   
    1b0b:	44 8b 0c 82          	mov    (%rdx,%rax,4),%r9d
/home/igokce1/Desktop/proj4-goktugokce/grades.c:220 (discriminator 3)
			grds[4][s],grds[5][s],grds[6][s],grds[7][s],
    1b0f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b13:	48 8d 90 60 09 00 00 	lea    0x960(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b1a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b1d:	48 98                	cltq   
    1b1f:	44 8b 04 82          	mov    (%rdx,%rax,4),%r8d
/home/igokce1/Desktop/proj4-goktugokce/grades.c:220 (discriminator 3)
			grds[4][s],grds[5][s],grds[6][s],grds[7][s],
    1b23:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b27:	48 8d 90 d0 07 00 00 	lea    0x7d0(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b2e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b31:	48 98                	cltq   
    1b33:	8b 3c 82             	mov    (%rdx,%rax,4),%edi
/home/igokce1/Desktop/proj4-goktugokce/grades.c:220 (discriminator 3)
			grds[4][s],grds[5][s],grds[6][s],grds[7][s],
    1b36:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b3a:	48 8d 90 40 06 00 00 	lea    0x640(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b41:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b44:	48 98                	cltq   
    1b46:	8b 34 82             	mov    (%rdx,%rax,4),%esi
/home/igokce1/Desktop/proj4-goktugokce/grades.c:219 (discriminator 3)
			names[s],grds[0][s], grds[1][s], grds[2][s], grds[3][s],
    1b49:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b4d:	48 8d 90 b0 04 00 00 	lea    0x4b0(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b54:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b57:	48 98                	cltq   
    1b59:	44 8b 2c 82          	mov    (%rdx,%rax,4),%r13d
/home/igokce1/Desktop/proj4-goktugokce/grades.c:219 (discriminator 3)
			names[s],grds[0][s], grds[1][s], grds[2][s], grds[3][s],
    1b5d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b61:	48 8d 90 20 03 00 00 	lea    0x320(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b68:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b6b:	48 98                	cltq   
    1b6d:	44 8b 24 82          	mov    (%rdx,%rax,4),%r12d
/home/igokce1/Desktop/proj4-goktugokce/grades.c:219 (discriminator 3)
			names[s],grds[0][s], grds[1][s], grds[2][s], grds[3][s],
    1b71:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b75:	48 8d 90 90 01 00 00 	lea    0x190(%rax),%rdx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1b7c:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b7f:	48 98                	cltq   
    1b81:	8b 0c 82             	mov    (%rdx,%rax,4),%ecx
    1b84:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b88:	8b 55 dc             	mov    -0x24(%rbp),%edx
    1b8b:	48 63 d2             	movslq %edx,%rdx
    1b8e:	8b 14 90             	mov    (%rax,%rdx,4),%edx
/home/igokce1/Desktop/proj4-goktugokce/grades.c:219 (discriminator 3)
			names[s],grds[0][s], grds[1][s], grds[2][s], grds[3][s],
    1b91:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1b94:	48 98                	cltq   
    1b96:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
    1b9d:	00 
    1b9e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1ba2:	4c 01 f0             	add    %r14,%rax
/home/igokce1/Desktop/proj4-goktugokce/grades.c:218 (discriminator 3)
		printf(" %20s | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d | %3d || %3d |\n",
    1ba5:	48 8b 00             	mov    (%rax),%rax
    1ba8:	48 83 ec 08          	sub    $0x8,%rsp
    1bac:	53                   	push   %rbx
    1bad:	41 53                	push   %r11
    1baf:	41 52                	push   %r10
    1bb1:	41 51                	push   %r9
    1bb3:	41 50                	push   %r8
    1bb5:	57                   	push   %rdi
    1bb6:	56                   	push   %rsi
    1bb7:	45 89 e9             	mov    %r13d,%r9d
    1bba:	45 89 e0             	mov    %r12d,%r8d
    1bbd:	48 89 c6             	mov    %rax,%rsi
    1bc0:	48 8d 3d 71 07 00 00 	lea    0x771(%rip),%rdi        # 2338 <_IO_stdin_used+0x6b8>
    1bc7:	b8 00 00 00 00       	mov    $0x0,%eax
    1bcc:	e8 bf f5 ff ff       	callq  1190 <printf@plt>
    1bd1:	48 83 c4 40          	add    $0x40,%rsp
/home/igokce1/Desktop/proj4-goktugokce/grades.c:217 (discriminator 3)
	for(s=0; s<n; s++) {
    1bd5:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
/home/igokce1/Desktop/proj4-goktugokce/grades.c:217 (discriminator 1)
    1bd9:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1bdc:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    1bdf:	0f 8c db fe ff ff    	jl     1ac0 <printGrades+0xa6>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:223
	}
	printf("----------------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----||-----|\n");
    1be5:	48 8d 3d ec 06 00 00 	lea    0x6ec(%rip),%rdi        # 22d8 <_IO_stdin_used+0x658>
    1bec:	e8 7f f5 ff ff       	callq  1170 <puts@plt>
/home/igokce1/Desktop/proj4-goktugokce/grades.c:224
}
    1bf1:	90                   	nop
    1bf2:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
    1bf6:	5b                   	pop    %rbx
    1bf7:	41 5c                	pop    %r12
    1bf9:	41 5d                	pop    %r13
    1bfb:	41 5e                	pop    %r14
    1bfd:	5d                   	pop    %rbp
    1bfe:	c3                   	retq   
    1bff:	90                   	nop

0000000000001c00 <__libc_csu_init>:
__libc_csu_init():
    1c00:	41 57                	push   %r15
    1c02:	41 56                	push   %r14
    1c04:	41 89 ff             	mov    %edi,%r15d
    1c07:	41 55                	push   %r13
    1c09:	41 54                	push   %r12
    1c0b:	4c 8d 25 c6 11 20 00 	lea    0x2011c6(%rip),%r12        # 202dd8 <__frame_dummy_init_array_entry>
    1c12:	55                   	push   %rbp
    1c13:	48 8d 2d c6 11 20 00 	lea    0x2011c6(%rip),%rbp        # 202de0 <__init_array_end>
    1c1a:	53                   	push   %rbx
    1c1b:	49 89 f6             	mov    %rsi,%r14
    1c1e:	49 89 d5             	mov    %rdx,%r13
    1c21:	4c 29 e5             	sub    %r12,%rbp
    1c24:	48 83 ec 08          	sub    $0x8,%rsp
    1c28:	48 c1 fd 03          	sar    $0x3,%rbp
    1c2c:	e8 07 f5 ff ff       	callq  1138 <_init>
    1c31:	48 85 ed             	test   %rbp,%rbp
    1c34:	74 20                	je     1c56 <__libc_csu_init+0x56>
    1c36:	31 db                	xor    %ebx,%ebx
    1c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c3f:	00 
    1c40:	4c 89 ea             	mov    %r13,%rdx
    1c43:	4c 89 f6             	mov    %r14,%rsi
    1c46:	44 89 ff             	mov    %r15d,%edi
    1c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1c4d:	48 83 c3 01          	add    $0x1,%rbx
    1c51:	48 39 dd             	cmp    %rbx,%rbp
    1c54:	75 ea                	jne    1c40 <__libc_csu_init+0x40>
    1c56:	48 83 c4 08          	add    $0x8,%rsp
    1c5a:	5b                   	pop    %rbx
    1c5b:	5d                   	pop    %rbp
    1c5c:	41 5c                	pop    %r12
    1c5e:	41 5d                	pop    %r13
    1c60:	41 5e                	pop    %r14
    1c62:	41 5f                	pop    %r15
    1c64:	c3                   	retq   
    1c65:	90                   	nop
    1c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1c6d:	00 00 00 

0000000000001c70 <__libc_csu_fini>:
__libc_csu_fini():
    1c70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001c74 <_fini>:
_fini():
    1c74:	48 83 ec 08          	sub    $0x8,%rsp
    1c78:	48 83 c4 08          	add    $0x8,%rsp
    1c7c:	c3                   	retq   

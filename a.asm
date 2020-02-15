
a.out:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x1fb>
  400248:	78 38                	js     400282 <_init-0x1ee>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 20                	add    %ah,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 af ed 8a 5b be    	add    %ch,-0x41a47513(%rdi)
  400289:	26 6a 4f             	es pushq $0x4f
  40028c:	d4                   	(bad)  
  40028d:	6f                   	outsl  %ds:(%rsi),(%dx)
  40028e:	15 3b 25 2b 80       	adc    $0x802b253b,%eax
  400293:	c8 72 c2 10          	enterq $0xc272,$0x10
  400297:	ea                   	(bad)  

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	01 00                	add    %eax,(%rax)
  40029a:	00 00                	add    %al,(%rax)
  40029c:	01 00                	add    %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	10 00                	adc    %al,(%rax)
  4002d2:	00 00                	add    %al,(%rax)
  4002d4:	12 00                	adc    (%rax),%al
	...
  4002e6:	00 00                	add    %al,(%rax)
  4002e8:	0b 00                	or     (%rax),%eax
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	12 00                	adc    (%rax),%al
	...
  4002fe:	00 00                	add    %al,(%rax)
  400300:	18 00                	sbb    %al,(%rax)
  400302:	00 00                	add    %al,(%rax)
  400304:	12 00                	adc    (%rax),%al
	...
  400316:	00 00                	add    %al,(%rax)
  400318:	25 00 00 00 12       	and    $0x12000000,%eax
	...
  40032d:	00 00                	add    %al,(%rax)
  40032f:	00 37                	add    %dh,(%rdi)
  400331:	00 00                	add    %al,(%rax)
  400333:	00 20                	add    %ah,(%rax)
	...
  400345:	00 00                	add    %al,(%rax)
  400347:	00 1f                	add    %bl,(%rdi)
  400349:	00 00                	add    %al,(%rax)
  40034b:	00 12                	add    %dl,(%rdx)
	...

Disassembly of section .dynstr:

0000000000400360 <.dynstr>:
  400360:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400364:	63 2e                	movslq (%rsi),%ebp
  400366:	73 6f                	jae    4003d7 <_init-0x99>
  400368:	2e 36 00 70 75       	cs add %dh,%ss:0x75(%rax)
  40036d:	74 73                	je     4003e2 <_init-0x8e>
  40036f:	00 70 75             	add    %dh,0x75(%rax)
  400372:	74 63                	je     4003d7 <_init-0x99>
  400374:	68 61 72 00 70       	pushq  $0x70007261
  400379:	72 69                	jb     4003e4 <_init-0x8c>
  40037b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40037c:	74 66                	je     4003e4 <_init-0x8c>
  40037e:	00 73 6c             	add    %dh,0x6c(%rbx)
  400381:	65 65 70 00          	gs gs jo 400385 <_init-0xeb>
  400385:	5f                   	pop    %rdi
  400386:	5f                   	pop    %rdi
  400387:	6c                   	insb   (%dx),%es:(%rdi)
  400388:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  40038f:	72 74                	jb     400405 <_init-0x6b>
  400391:	5f                   	pop    %rdi
  400392:	6d                   	insl   (%dx),%es:(%rdi)
  400393:	61                   	(bad)  
  400394:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  40039b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40039c:	6e                   	outsb  %ds:(%rsi),(%dx)
  40039d:	5f                   	pop    %rdi
  40039e:	73 74                	jae    400414 <_init-0x5c>
  4003a0:	61                   	(bad)  
  4003a1:	72 74                	jb     400417 <_init-0x59>
  4003a3:	5f                   	pop    %rdi
  4003a4:	5f                   	pop    %rdi
  4003a5:	00 47 4c             	add    %al,0x4c(%rdi)
  4003a8:	49                   	rex.WB
  4003a9:	42                   	rex.X
  4003aa:	43 5f                	rex.XB pop %r15
  4003ac:	32 2e                	xor    (%rsi),%ch
  4003ae:	32 2e                	xor    (%rsi),%ch
  4003b0:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

00000000004003b2 <.gnu.version>:
  4003b2:	00 00                	add    %al,(%rax)
  4003b4:	02 00                	add    (%rax),%al
  4003b6:	02 00                	add    (%rax),%al
  4003b8:	02 00                	add    (%rax),%al
  4003ba:	02 00                	add    (%rax),%al
  4003bc:	00 00                	add    %al,(%rax)
  4003be:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000004003c0 <.gnu.version_r>:
  4003c0:	01 00                	add    %eax,(%rax)
  4003c2:	01 00                	add    %eax,(%rax)
  4003c4:	01 00                	add    %eax,(%rax)
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	10 00                	adc    %al,(%rax)
  4003ca:	00 00                	add    %al,(%rax)
  4003cc:	00 00                	add    %al,(%rax)
  4003ce:	00 00                	add    %al,(%rax)
  4003d0:	75 1a                	jne    4003ec <_init-0x84>
  4003d2:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4003d8:	46 00 00             	rex.RX add %r8b,(%rax)
  4003db:	00 00                	add    %al,(%rax)
  4003dd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003e0 <.rela.dyn>:
  4003e0:	f8                   	clc    
  4003e1:	0f 60 00             	punpcklbw (%rax),%mm0
  4003e4:	00 00                	add    %al,(%rax)
  4003e6:	00 00                	add    %al,(%rax)
  4003e8:	06                   	(bad)  
  4003e9:	00 00                	add    %al,(%rax)
  4003eb:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4003f1 <_init-0x7f>
  4003f1:	00 00                	add    %al,(%rax)
  4003f3:	00 00                	add    %al,(%rax)
  4003f5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.plt:

00000000004003f8 <.rela.plt>:
  4003f8:	18 10                	sbb    %dl,(%rax)
  4003fa:	60                   	(bad)  
  4003fb:	00 00                	add    %al,(%rax)
  4003fd:	00 00                	add    %al,(%rax)
  4003ff:	00 07                	add    %al,(%rdi)
  400401:	00 00                	add    %al,(%rax)
  400403:	00 01                	add    %al,(%rcx)
	...
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 20                	add    %ah,(%rax)
  400411:	10 60 00             	adc    %ah,0x0(%rax)
  400414:	00 00                	add    %al,(%rax)
  400416:	00 00                	add    %al,(%rax)
  400418:	07                   	(bad)  
  400419:	00 00                	add    %al,(%rax)
  40041b:	00 02                	add    %al,(%rdx)
	...
  400425:	00 00                	add    %al,(%rax)
  400427:	00 28                	add    %ch,(%rax)
  400429:	10 60 00             	adc    %ah,0x0(%rax)
  40042c:	00 00                	add    %al,(%rax)
  40042e:	00 00                	add    %al,(%rax)
  400430:	07                   	(bad)  
  400431:	00 00                	add    %al,(%rax)
  400433:	00 03                	add    %al,(%rbx)
	...
  40043d:	00 00                	add    %al,(%rax)
  40043f:	00 30                	add    %dh,(%rax)
  400441:	10 60 00             	adc    %ah,0x0(%rax)
  400444:	00 00                	add    %al,(%rax)
  400446:	00 00                	add    %al,(%rax)
  400448:	07                   	(bad)  
  400449:	00 00                	add    %al,(%rax)
  40044b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400456:	00 00                	add    %al,(%rax)
  400458:	38 10                	cmp    %dl,(%rax)
  40045a:	60                   	(bad)  
  40045b:	00 00                	add    %al,(%rax)
  40045d:	00 00                	add    %al,(%rax)
  40045f:	00 07                	add    %al,(%rdi)
  400461:	00 00                	add    %al,(%rax)
  400463:	00 06                	add    %al,(%rsi)
	...

Disassembly of section .init:

0000000000400470 <_init>:
  400470:	48 83 ec 08          	sub    $0x8,%rsp
  400474:	48 8b 05 7d 0b 20 00 	mov    0x200b7d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40047b:	48 85 c0             	test   %rax,%rax
  40047e:	74 05                	je     400485 <_init+0x15>
  400480:	e8 6b 00 00 00       	callq  4004f0 <sleep@plt+0x10>
  400485:	48 83 c4 08          	add    $0x8,%rsp
  400489:	c3                   	retq   

Disassembly of section .plt:

0000000000400490 <putchar@plt-0x10>:
  400490:	ff 35 72 0b 20 00    	pushq  0x200b72(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400496:	ff 25 74 0b 20 00    	jmpq   *0x200b74(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40049c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004a0 <putchar@plt>:
  4004a0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004a6:	68 00 00 00 00       	pushq  $0x0
  4004ab:	e9 e0 ff ff ff       	jmpq   400490 <_init+0x20>

00000000004004b0 <puts@plt>:
  4004b0:	ff 25 6a 0b 20 00    	jmpq   *0x200b6a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004b6:	68 01 00 00 00       	pushq  $0x1
  4004bb:	e9 d0 ff ff ff       	jmpq   400490 <_init+0x20>

00000000004004c0 <printf@plt>:
  4004c0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004c6:	68 02 00 00 00       	pushq  $0x2
  4004cb:	e9 c0 ff ff ff       	jmpq   400490 <_init+0x20>

00000000004004d0 <__libc_start_main@plt>:
  4004d0:	ff 25 5a 0b 20 00    	jmpq   *0x200b5a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004d6:	68 03 00 00 00       	pushq  $0x3
  4004db:	e9 b0 ff ff ff       	jmpq   400490 <_init+0x20>

00000000004004e0 <sleep@plt>:
  4004e0:	ff 25 52 0b 20 00    	jmpq   *0x200b52(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004e6:	68 04 00 00 00       	pushq  $0x4
  4004eb:	e9 a0 ff ff ff       	jmpq   400490 <_init+0x20>

Disassembly of section .plt.got:

00000000004004f0 <.plt.got>:
  4004f0:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 f0 08 40 00 	mov    $0x4008f0,%r8
  400516:	48 c7 c1 80 08 40 00 	mov    $0x400880,%rcx
  40051d:	48 c7 c7 b9 06 40 00 	mov    $0x4006b9,%rdi
  400524:	e8 a7 ff ff ff       	callq  4004d0 <__libc_start_main@plt>
  400529:	f4                   	hlt    
  40052a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400530 <deregister_tm_clones>:
  400530:	b8 67 10 60 00       	mov    $0x601067,%eax
  400535:	55                   	push   %rbp
  400536:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  40053c:	48 83 f8 0e          	cmp    $0xe,%rax
  400540:	48 89 e5             	mov    %rsp,%rbp
  400543:	76 1b                	jbe    400560 <deregister_tm_clones+0x30>
  400545:	b8 00 00 00 00       	mov    $0x0,%eax
  40054a:	48 85 c0             	test   %rax,%rax
  40054d:	74 11                	je     400560 <deregister_tm_clones+0x30>
  40054f:	5d                   	pop    %rbp
  400550:	bf 60 10 60 00       	mov    $0x601060,%edi
  400555:	ff e0                	jmpq   *%rax
  400557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40055e:	00 00 
  400560:	5d                   	pop    %rbp
  400561:	c3                   	retq   
  400562:	0f 1f 40 00          	nopl   0x0(%rax)
  400566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40056d:	00 00 00 

0000000000400570 <register_tm_clones>:
  400570:	be 60 10 60 00       	mov    $0x601060,%esi
  400575:	55                   	push   %rbp
  400576:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
  40057d:	48 c1 fe 03          	sar    $0x3,%rsi
  400581:	48 89 e5             	mov    %rsp,%rbp
  400584:	48 89 f0             	mov    %rsi,%rax
  400587:	48 c1 e8 3f          	shr    $0x3f,%rax
  40058b:	48 01 c6             	add    %rax,%rsi
  40058e:	48 d1 fe             	sar    %rsi
  400591:	74 15                	je     4005a8 <register_tm_clones+0x38>
  400593:	b8 00 00 00 00       	mov    $0x0,%eax
  400598:	48 85 c0             	test   %rax,%rax
  40059b:	74 0b                	je     4005a8 <register_tm_clones+0x38>
  40059d:	5d                   	pop    %rbp
  40059e:	bf 60 10 60 00       	mov    $0x601060,%edi
  4005a3:	ff e0                	jmpq   *%rax
  4005a5:	0f 1f 00             	nopl   (%rax)
  4005a8:	5d                   	pop    %rbp
  4005a9:	c3                   	retq   
  4005aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005b0 <__do_global_dtors_aux>:
  4005b0:	80 3d a9 0a 20 00 00 	cmpb   $0x0,0x200aa9(%rip)        # 601060 <__TMC_END__>
  4005b7:	75 11                	jne    4005ca <__do_global_dtors_aux+0x1a>
  4005b9:	55                   	push   %rbp
  4005ba:	48 89 e5             	mov    %rsp,%rbp
  4005bd:	e8 6e ff ff ff       	callq  400530 <deregister_tm_clones>
  4005c2:	5d                   	pop    %rbp
  4005c3:	c6 05 96 0a 20 00 01 	movb   $0x1,0x200a96(%rip)        # 601060 <__TMC_END__>
  4005ca:	f3 c3                	repz retq 
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <frame_dummy>:
  4005d0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005d5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005d9:	75 05                	jne    4005e0 <frame_dummy+0x10>
  4005db:	eb 93                	jmp    400570 <register_tm_clones>
  4005dd:	0f 1f 00             	nopl   (%rax)
  4005e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e5:	48 85 c0             	test   %rax,%rax
  4005e8:	74 f1                	je     4005db <frame_dummy+0xb>
  4005ea:	55                   	push   %rbp
  4005eb:	48 89 e5             	mov    %rsp,%rbp
  4005ee:	ff d0                	callq  *%rax
  4005f0:	5d                   	pop    %rbp
  4005f1:	e9 7a ff ff ff       	jmpq   400570 <register_tm_clones>

00000000004005f6 <func>:
static int s;
int m = 6;
const char *string = "nece to meet you";
const char array[] = "glad to talk to you";
int func()
{
  4005f6:	55                   	push   %rbp
  4005f7:	48 89 e5             	mov    %rsp,%rbp
    printf("func called\n");
  4005fa:	bf 44 09 40 00       	mov    $0x400944,%edi
  4005ff:	e8 ac fe ff ff       	callq  4004b0 <puts@plt>
    return 0;
  400604:	b8 00 00 00 00       	mov    $0x0,%eax
}
  400609:	5d                   	pop    %rbp
  40060a:	c3                   	retq   

000000000040060b <dumphex>:
int dumphex(unsigned char *start,unsigned int length)
{
  40060b:	55                   	push   %rbp
  40060c:	48 89 e5             	mov    %rsp,%rbp
  40060f:	48 83 ec 20          	sub    $0x20,%rsp
  400613:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400617:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    int i = 0;
  40061a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    int len = length;
  400621:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400624:	89 45 f4             	mov    %eax,-0xc(%rbp)

    unsigned char *p = NULL;
  400627:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40062e:	00 
    p = start;
  40062f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400633:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    for (i = 0;i < len;i++) {
  400637:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40063e:	eb 6e                	jmp    4006ae <dumphex+0xa3>
        if ((i % 16) == 0)
  400640:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400643:	83 e0 0f             	and    $0xf,%eax
  400646:	85 c0                	test   %eax,%eax
  400648:	75 1f                	jne    400669 <dumphex+0x5e>
            printf("0x%p:",(p+i)); 
  40064a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40064d:	48 63 d0             	movslq %eax,%rdx
  400650:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400654:	48 01 d0             	add    %rdx,%rax
  400657:	48 89 c6             	mov    %rax,%rsi
  40065a:	bf 50 09 40 00       	mov    $0x400950,%edi
  40065f:	b8 00 00 00 00       	mov    $0x0,%eax
  400664:	e8 57 fe ff ff       	callq  4004c0 <printf@plt>
        printf("%02x ",*(p+i));
  400669:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40066c:	48 63 d0             	movslq %eax,%rdx
  40066f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400673:	48 01 d0             	add    %rdx,%rax
  400676:	0f b6 00             	movzbl (%rax),%eax
  400679:	0f b6 c0             	movzbl %al,%eax
  40067c:	89 c6                	mov    %eax,%esi
  40067e:	bf 56 09 40 00       	mov    $0x400956,%edi
  400683:	b8 00 00 00 00       	mov    $0x0,%eax
  400688:	e8 33 fe ff ff       	callq  4004c0 <printf@plt>
        if ((i % 16) == 15)            
  40068d:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400690:	99                   	cltd   
  400691:	c1 ea 1c             	shr    $0x1c,%edx
  400694:	01 d0                	add    %edx,%eax
  400696:	83 e0 0f             	and    $0xf,%eax
  400699:	29 d0                	sub    %edx,%eax
  40069b:	83 f8 0f             	cmp    $0xf,%eax
  40069e:	75 0a                	jne    4006aa <dumphex+0x9f>
            printf("\n");
  4006a0:	bf 0a 00 00 00       	mov    $0xa,%edi
  4006a5:	e8 f6 fd ff ff       	callq  4004a0 <putchar@plt>
    int i = 0;
    int len = length;

    unsigned char *p = NULL;
    p = start;
    for (i = 0;i < len;i++) {
  4006aa:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
  4006ae:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4006b1:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  4006b4:	7c 8a                	jl     400640 <dumphex+0x35>
        if ((i % 16) == 15)            
            printf("\n");
    }
    
    
}
  4006b6:	90                   	nop
  4006b7:	c9                   	leaveq 
  4006b8:	c3                   	retq   

00000000004006b9 <main>:
typedef int (*ft)(); 
int main()
{
  4006b9:	55                   	push   %rbp
  4006ba:	48 89 e5             	mov    %rsp,%rbp
  4006bd:	48 83 ec 20          	sub    $0x20,%rsp
    int a = 1;
  4006c1:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    int b = 2;
  4006c8:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%rbp)
    int c = a+b;
  4006cf:	8b 55 ec             	mov    -0x14(%rbp),%edx
  4006d2:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4006d5:	01 d0                	add    %edx,%eax
  4006d7:	89 45 f4             	mov    %eax,-0xc(%rbp)
    static int count;
    ft pf = NULL;
  4006da:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4006e1:	00 
    pf = (ft )0x4005f6;
  4006e2:	48 c7 45 f8 f6 05 40 	movq   $0x4005f6,-0x8(%rbp)
  4006e9:	00 
    dumphex((unsigned char *)0x600000,0x1000);
  4006ea:	be 00 10 00 00       	mov    $0x1000,%esi
  4006ef:	bf 00 00 60 00       	mov    $0x600000,%edi
  4006f4:	e8 12 ff ff ff       	callq  40060b <dumphex>
    dumphex((unsigned char *)0x400000,0x1000);
  4006f9:	be 00 10 00 00       	mov    $0x1000,%esi
  4006fe:	bf 00 00 40 00       	mov    $0x400000,%edi
  400703:	e8 03 ff ff ff       	callq  40060b <dumphex>
    dumphex((unsigned char *)0x601000,0x1000);
  400708:	be 00 10 00 00       	mov    $0x1000,%esi
  40070d:	bf 00 10 60 00       	mov    $0x601000,%edi
  400712:	e8 f4 fe ff ff       	callq  40060b <dumphex>
    while (1) {
    count++;
  400717:	8b 05 4b 09 20 00    	mov    0x20094b(%rip),%eax        # 601068 <count.2910>
  40071d:	83 c0 01             	add    $0x1,%eax
  400720:	89 05 42 09 20 00    	mov    %eax,0x200942(%rip)        # 601068 <count.2910>
    g = count + 4;   
  400726:	8b 05 3c 09 20 00    	mov    0x20093c(%rip),%eax        # 601068 <count.2910>
  40072c:	83 c0 04             	add    $0x4,%eax
  40072f:	89 05 37 09 20 00    	mov    %eax,0x200937(%rip)        # 60106c <g>
    printf("=============begin================\n");
  400735:	bf 60 09 40 00       	mov    $0x400960,%edi
  40073a:	e8 71 fd ff ff       	callq  4004b0 <puts@plt>
    printf("count = %d\n",count);
  40073f:	8b 05 23 09 20 00    	mov    0x200923(%rip),%eax        # 601068 <count.2910>
  400745:	89 c6                	mov    %eax,%esi
  400747:	bf 83 09 40 00       	mov    $0x400983,%edi
  40074c:	b8 00 00 00 00       	mov    $0x0,%eax
  400751:	e8 6a fd ff ff       	callq  4004c0 <printf@plt>
    printf("main %p\n",&main);
  400756:	be b9 06 40 00       	mov    $0x4006b9,%esi
  40075b:	bf 8f 09 40 00       	mov    $0x40098f,%edi
  400760:	b8 00 00 00 00       	mov    $0x0,%eax
  400765:	e8 56 fd ff ff       	callq  4004c0 <printf@plt>
    printf("g addr %p,value %d\n",&g, g);
  40076a:	8b 05 fc 08 20 00    	mov    0x2008fc(%rip),%eax        # 60106c <g>
  400770:	89 c2                	mov    %eax,%edx
  400772:	be 6c 10 60 00       	mov    $0x60106c,%esi
  400777:	bf 98 09 40 00       	mov    $0x400998,%edi
  40077c:	b8 00 00 00 00       	mov    $0x0,%eax
  400781:	e8 3a fd ff ff       	callq  4004c0 <printf@plt>
    printf("f addr %p, value %d\n",&f,f);
  400786:	b8 00 00 00 00       	mov    $0x0,%eax
  40078b:	89 c2                	mov    %eax,%edx
  40078d:	be 10 09 40 00       	mov    $0x400910,%esi
  400792:	bf ac 09 40 00       	mov    $0x4009ac,%edi
  400797:	b8 00 00 00 00       	mov    $0x0,%eax
  40079c:	e8 1f fd ff ff       	callq  4004c0 <printf@plt>
    printf("m addr %p, value %d\n",&m,m);
  4007a1:	8b 05 a9 08 20 00    	mov    0x2008a9(%rip),%eax        # 601050 <m>
  4007a7:	89 c2                	mov    %eax,%edx
  4007a9:	be 50 10 60 00       	mov    $0x601050,%esi
  4007ae:	bf c1 09 40 00       	mov    $0x4009c1,%edi
  4007b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b8:	e8 03 fd ff ff       	callq  4004c0 <printf@plt>
    printf("func addr %p\n",&func);
  4007bd:	be f6 05 40 00       	mov    $0x4005f6,%esi
  4007c2:	bf d6 09 40 00       	mov    $0x4009d6,%edi
  4007c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007cc:	e8 ef fc ff ff       	callq  4004c0 <printf@plt>
    printf("string addr %p, content %s value 0x%llx\n",&string,string,(unsigned long long )string);
  4007d1:	48 8b 05 80 08 20 00 	mov    0x200880(%rip),%rax        # 601058 <string>
  4007d8:	48 89 c2             	mov    %rax,%rdx
  4007db:	48 8b 05 76 08 20 00 	mov    0x200876(%rip),%rax        # 601058 <string>
  4007e2:	48 89 d1             	mov    %rdx,%rcx
  4007e5:	48 89 c2             	mov    %rax,%rdx
  4007e8:	be 58 10 60 00       	mov    $0x601058,%esi
  4007ed:	bf e8 09 40 00       	mov    $0x4009e8,%edi
  4007f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f7:	e8 c4 fc ff ff       	callq  4004c0 <printf@plt>
    printf("s addr %p, s value %d\n",&s,s);
  4007fc:	8b 05 62 08 20 00    	mov    0x200862(%rip),%eax        # 601064 <s>
  400802:	89 c2                	mov    %eax,%edx
  400804:	be 64 10 60 00       	mov    $0x601064,%esi
  400809:	bf 11 0a 40 00       	mov    $0x400a11,%edi
  40080e:	b8 00 00 00 00       	mov    $0x0,%eax
  400813:	e8 a8 fc ff ff       	callq  4004c0 <printf@plt>
    printf("string again %s\n",(char *)0x400914);
  400818:	be 14 09 40 00       	mov    $0x400914,%esi
  40081d:	bf 28 0a 40 00       	mov    $0x400a28,%edi
  400822:	b8 00 00 00 00       	mov    $0x0,%eax
  400827:	e8 94 fc ff ff       	callq  4004c0 <printf@plt>
    printf("array addr %p,content %s value 0x%llx\n",&array,array,(unsigned long long)array);
  40082c:	b8 30 09 40 00       	mov    $0x400930,%eax
  400831:	48 89 c1             	mov    %rax,%rcx
  400834:	ba 30 09 40 00       	mov    $0x400930,%edx
  400839:	be 30 09 40 00       	mov    $0x400930,%esi
  40083e:	bf 40 0a 40 00       	mov    $0x400a40,%edi
  400843:	b8 00 00 00 00       	mov    $0x0,%eax
  400848:	e8 73 fc ff ff       	callq  4004c0 <printf@plt>
    
    pf();
  40084d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400851:	b8 00 00 00 00       	mov    $0x0,%eax
  400856:	ff d2                	callq  *%rdx
    printf("=============end================\n");
  400858:	bf 68 0a 40 00       	mov    $0x400a68,%edi
  40085d:	e8 4e fc ff ff       	callq  4004b0 <puts@plt>
    sleep(10);
  400862:	bf 0a 00 00 00       	mov    $0xa,%edi
  400867:	e8 74 fc ff ff       	callq  4004e0 <sleep@plt>
    }
  40086c:	e9 a6 fe ff ff       	jmpq   400717 <main+0x5e>
  400871:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400878:	00 00 00 
  40087b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400880 <__libc_csu_init>:
  400880:	41 57                	push   %r15
  400882:	41 56                	push   %r14
  400884:	41 89 ff             	mov    %edi,%r15d
  400887:	41 55                	push   %r13
  400889:	41 54                	push   %r12
  40088b:	4c 8d 25 7e 05 20 00 	lea    0x20057e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400892:	55                   	push   %rbp
  400893:	48 8d 2d 7e 05 20 00 	lea    0x20057e(%rip),%rbp        # 600e18 <__init_array_end>
  40089a:	53                   	push   %rbx
  40089b:	49 89 f6             	mov    %rsi,%r14
  40089e:	49 89 d5             	mov    %rdx,%r13
  4008a1:	4c 29 e5             	sub    %r12,%rbp
  4008a4:	48 83 ec 08          	sub    $0x8,%rsp
  4008a8:	48 c1 fd 03          	sar    $0x3,%rbp
  4008ac:	e8 bf fb ff ff       	callq  400470 <_init>
  4008b1:	48 85 ed             	test   %rbp,%rbp
  4008b4:	74 20                	je     4008d6 <__libc_csu_init+0x56>
  4008b6:	31 db                	xor    %ebx,%ebx
  4008b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4008bf:	00 
  4008c0:	4c 89 ea             	mov    %r13,%rdx
  4008c3:	4c 89 f6             	mov    %r14,%rsi
  4008c6:	44 89 ff             	mov    %r15d,%edi
  4008c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4008cd:	48 83 c3 01          	add    $0x1,%rbx
  4008d1:	48 39 eb             	cmp    %rbp,%rbx
  4008d4:	75 ea                	jne    4008c0 <__libc_csu_init+0x40>
  4008d6:	48 83 c4 08          	add    $0x8,%rsp
  4008da:	5b                   	pop    %rbx
  4008db:	5d                   	pop    %rbp
  4008dc:	41 5c                	pop    %r12
  4008de:	41 5d                	pop    %r13
  4008e0:	41 5e                	pop    %r14
  4008e2:	41 5f                	pop    %r15
  4008e4:	c3                   	retq   
  4008e5:	90                   	nop
  4008e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008ed:	00 00 00 

00000000004008f0 <__libc_csu_fini>:
  4008f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004008f4 <_fini>:
  4008f4:	48 83 ec 08          	sub    $0x8,%rsp
  4008f8:	48 83 c4 08          	add    $0x8,%rsp
  4008fc:	c3                   	retq   

Disassembly of section .rodata:

0000000000400900 <_IO_stdin_used>:
  400900:	01 00                	add    %eax,(%rax)
  400902:	02 00                	add    (%rax),%al
	...

0000000000400910 <f>:
  400910:	00 00                	add    %al,(%rax)
  400912:	00 00                	add    %al,(%rax)
  400914:	6e                   	outsb  %ds:(%rsi),(%dx)
  400915:	65 63 65 20          	movslq %gs:0x20(%rbp),%esp
  400919:	74 6f                	je     40098a <array+0x5a>
  40091b:	20 6d 65             	and    %ch,0x65(%rbp)
  40091e:	65 74 20             	gs je  400941 <array+0x11>
  400921:	79 6f                	jns    400992 <array+0x62>
  400923:	75 00                	jne    400925 <f+0x15>
	...

0000000000400930 <array>:
  400930:	67 6c                	insb   (%dx),%es:(%edi)
  400932:	61                   	(bad)  
  400933:	64 20 74 6f 20       	and    %dh,%fs:0x20(%rdi,%rbp,2)
  400938:	74 61                	je     40099b <array+0x6b>
  40093a:	6c                   	insb   (%dx),%es:(%rdi)
  40093b:	6b 20 74             	imul   $0x74,(%rax),%esp
  40093e:	6f                   	outsl  %ds:(%rsi),(%dx)
  40093f:	20 79 6f             	and    %bh,0x6f(%rcx)
  400942:	75 00                	jne    400944 <array+0x14>
  400944:	66 75 6e             	data16 jne 4009b5 <array+0x85>
  400947:	63 20                	movslq (%rax),%esp
  400949:	63 61 6c             	movslq 0x6c(%rcx),%esp
  40094c:	6c                   	insb   (%dx),%es:(%rdi)
  40094d:	65 64 00 30          	gs add %dh,%fs:(%rax)
  400951:	78 25                	js     400978 <array+0x48>
  400953:	70 3a                	jo     40098f <array+0x5f>
  400955:	00 25 30 32 78 20    	add    %ah,0x20783230(%rip)        # 20b83b8b <_end+0x20582b1b>
  40095b:	00 00                	add    %al,(%rax)
  40095d:	00 00                	add    %al,(%rax)
  40095f:	00 3d 3d 3d 3d 3d    	add    %bh,0x3d3d3d3d(%rip)        # 3d7d46a2 <_end+0x3d1d3632>
  400965:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  40096a:	3d 3d 3d 62 65       	cmp    $0x65623d3d,%eax
  40096f:	67 69 6e 3d 3d 3d 3d 	imul   $0x3d3d3d3d,0x3d(%esi),%ebp
  400976:	3d 
  400977:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  40097c:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  400981:	3d 00 63 6f 75       	cmp    $0x756f6300,%eax
  400986:	6e                   	outsb  %ds:(%rsi),(%dx)
  400987:	74 20                	je     4009a9 <array+0x79>
  400989:	3d 20 25 64 0a       	cmp    $0xa642520,%eax
  40098e:	00 6d 61             	add    %ch,0x61(%rbp)
  400991:	69 6e 20 25 70 0a 00 	imul   $0xa7025,0x20(%rsi),%ebp
  400998:	67 20 61 64          	and    %ah,0x64(%ecx)
  40099c:	64 72 20             	fs jb  4009bf <array+0x8f>
  40099f:	25 70 2c 76 61       	and    $0x61762c70,%eax
  4009a4:	6c                   	insb   (%dx),%es:(%rdi)
  4009a5:	75 65                	jne    400a0c <array+0xdc>
  4009a7:	20 25 64 0a 00 66    	and    %ah,0x66000a64(%rip)        # 66401411 <_end+0x65e003a1>
  4009ad:	20 61 64             	and    %ah,0x64(%rcx)
  4009b0:	64 72 20             	fs jb  4009d3 <array+0xa3>
  4009b3:	25 70 2c 20 76       	and    $0x76202c70,%eax
  4009b8:	61                   	(bad)  
  4009b9:	6c                   	insb   (%dx),%es:(%rdi)
  4009ba:	75 65                	jne    400a21 <array+0xf1>
  4009bc:	20 25 64 0a 00 6d    	and    %ah,0x6d000a64(%rip)        # 6d401426 <_end+0x6ce003b6>
  4009c2:	20 61 64             	and    %ah,0x64(%rcx)
  4009c5:	64 72 20             	fs jb  4009e8 <array+0xb8>
  4009c8:	25 70 2c 20 76       	and    $0x76202c70,%eax
  4009cd:	61                   	(bad)  
  4009ce:	6c                   	insb   (%dx),%es:(%rdi)
  4009cf:	75 65                	jne    400a36 <array+0x106>
  4009d1:	20 25 64 0a 00 66    	and    %ah,0x66000a64(%rip)        # 6640143b <_end+0x65e003cb>
  4009d7:	75 6e                	jne    400a47 <array+0x117>
  4009d9:	63 20                	movslq (%rax),%esp
  4009db:	61                   	(bad)  
  4009dc:	64 64 72 20          	fs fs jb 400a00 <array+0xd0>
  4009e0:	25 70 0a 00 00       	and    $0xa70,%eax
  4009e5:	00 00                	add    %al,(%rax)
  4009e7:	00 73 74             	add    %dh,0x74(%rbx)
  4009ea:	72 69                	jb     400a55 <array+0x125>
  4009ec:	6e                   	outsb  %ds:(%rsi),(%dx)
  4009ed:	67 20 61 64          	and    %ah,0x64(%ecx)
  4009f1:	64 72 20             	fs jb  400a14 <array+0xe4>
  4009f4:	25 70 2c 20 63       	and    $0x63202c70,%eax
  4009f9:	6f                   	outsl  %ds:(%rsi),(%dx)
  4009fa:	6e                   	outsb  %ds:(%rsi),(%dx)
  4009fb:	74 65                	je     400a62 <array+0x132>
  4009fd:	6e                   	outsb  %ds:(%rsi),(%dx)
  4009fe:	74 20                	je     400a20 <array+0xf0>
  400a00:	25 73 20 76 61       	and    $0x61762073,%eax
  400a05:	6c                   	insb   (%dx),%es:(%rdi)
  400a06:	75 65                	jne    400a6d <array+0x13d>
  400a08:	20 30                	and    %dh,(%rax)
  400a0a:	78 25                	js     400a31 <array+0x101>
  400a0c:	6c                   	insb   (%dx),%es:(%rdi)
  400a0d:	6c                   	insb   (%dx),%es:(%rdi)
  400a0e:	78 0a                	js     400a1a <array+0xea>
  400a10:	00 73 20             	add    %dh,0x20(%rbx)
  400a13:	61                   	(bad)  
  400a14:	64 64 72 20          	fs fs jb 400a38 <array+0x108>
  400a18:	25 70 2c 20 73       	and    $0x73202c70,%eax
  400a1d:	20 76 61             	and    %dh,0x61(%rsi)
  400a20:	6c                   	insb   (%dx),%es:(%rdi)
  400a21:	75 65                	jne    400a88 <array+0x158>
  400a23:	20 25 64 0a 00 73    	and    %ah,0x73000a64(%rip)        # 7340148d <_end+0x72e0041d>
  400a29:	74 72                	je     400a9d <__GNU_EH_FRAME_HDR+0x11>
  400a2b:	69 6e 67 20 61 67 61 	imul   $0x61676120,0x67(%rsi),%ebp
  400a32:	69 6e 20 25 73 0a 00 	imul   $0xa7325,0x20(%rsi),%ebp
  400a39:	00 00                	add    %al,(%rax)
  400a3b:	00 00                	add    %al,(%rax)
  400a3d:	00 00                	add    %al,(%rax)
  400a3f:	00 61 72             	add    %ah,0x72(%rcx)
  400a42:	72 61                	jb     400aa5 <__GNU_EH_FRAME_HDR+0x19>
  400a44:	79 20                	jns    400a66 <array+0x136>
  400a46:	61                   	(bad)  
  400a47:	64 64 72 20          	fs fs jb 400a6b <array+0x13b>
  400a4b:	25 70 2c 63 6f       	and    $0x6f632c70,%eax
  400a50:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a51:	74 65                	je     400ab8 <__GNU_EH_FRAME_HDR+0x2c>
  400a53:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a54:	74 20                	je     400a76 <array+0x146>
  400a56:	25 73 20 76 61       	and    $0x61762073,%eax
  400a5b:	6c                   	insb   (%dx),%es:(%rdi)
  400a5c:	75 65                	jne    400ac3 <__GNU_EH_FRAME_HDR+0x37>
  400a5e:	20 30                	and    %dh,(%rax)
  400a60:	78 25                	js     400a87 <array+0x157>
  400a62:	6c                   	insb   (%dx),%es:(%rdi)
  400a63:	6c                   	insb   (%dx),%es:(%rdi)
  400a64:	78 0a                	js     400a70 <array+0x140>
  400a66:	00 00                	add    %al,(%rax)
  400a68:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  400a6d:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  400a72:	3d 3d 3d 65 6e       	cmp    $0x6e653d3d,%eax
  400a77:	64 3d 3d 3d 3d 3d    	fs cmp $0x3d3d3d3d,%eax
  400a7d:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  400a82:	3d 3d 3d 3d 3d       	cmp    $0x3d3d3d3d,%eax
  400a87:	3d                   	.byte 0x3d
	...

Disassembly of section .eh_frame_hdr:

0000000000400a8c <__GNU_EH_FRAME_HDR>:
  400a8c:	01 1b                	add    %ebx,(%rbx)
  400a8e:	03 3b                	add    (%rbx),%edi
  400a90:	40 00 00             	add    %al,(%rax)
  400a93:	00 07                	add    %al,(%rdi)
  400a95:	00 00                	add    %al,(%rax)
  400a97:	00 04 fa             	add    %al,(%rdx,%rdi,8)
  400a9a:	ff                   	(bad)  
  400a9b:	ff 8c 00 00 00 74 fa 	decl   -0x58c0000(%rax,%rax,1)
  400aa2:	ff                   	(bad)  
  400aa3:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
  400aa7:	00 6a fb             	add    %ch,-0x5(%rdx)
  400aaa:	ff                   	(bad)  
  400aab:	ff b4 00 00 00 7f fb 	pushq  -0x4810000(%rax,%rax,1)
  400ab2:	ff                   	(bad)  
  400ab3:	ff d4                	callq  *%rsp
  400ab5:	00 00                	add    %al,(%rax)
  400ab7:	00 2d fc ff ff f4    	add    %ch,-0xb000004(%rip)        # fffffffff5400ab9 <_end+0xfffffffff4dffa49>
  400abd:	00 00                	add    %al,(%rax)
  400abf:	00 f4                	add    %dh,%ah
  400ac1:	fd                   	std    
  400ac2:	ff                   	(bad)  
  400ac3:	ff 14 01             	callq  *(%rcx,%rax,1)
  400ac6:	00 00                	add    %al,(%rax)
  400ac8:	64 fe                	fs (bad) 
  400aca:	ff                   	(bad)  
  400acb:	ff 5c 01 00          	lcall  *0x0(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000400ad0 <__FRAME_END__-0x130>:
  400ad0:	14 00                	adc    $0x0,%al
  400ad2:	00 00                	add    %al,(%rax)
  400ad4:	00 00                	add    %al,(%rax)
  400ad6:	00 00                	add    %al,(%rax)
  400ad8:	01 7a 52             	add    %edi,0x52(%rdx)
  400adb:	00 01                	add    %al,(%rcx)
  400add:	78 10                	js     400aef <__GNU_EH_FRAME_HDR+0x63>
  400adf:	01 1b                	add    %ebx,(%rbx)
  400ae1:	0c 07                	or     $0x7,%al
  400ae3:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400ae9:	00 00                	add    %al,(%rax)
  400aeb:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400aee:	00 00                	add    %al,(%rax)
  400af0:	10 fa                	adc    %bh,%dl
  400af2:	ff                   	(bad)  
  400af3:	ff 2a                	ljmp   *(%rdx)
	...
  400afd:	00 00                	add    %al,(%rax)
  400aff:	00 14 00             	add    %dl,(%rax,%rax,1)
  400b02:	00 00                	add    %al,(%rax)
  400b04:	00 00                	add    %al,(%rax)
  400b06:	00 00                	add    %al,(%rax)
  400b08:	01 7a 52             	add    %edi,0x52(%rdx)
  400b0b:	00 01                	add    %al,(%rcx)
  400b0d:	78 10                	js     400b1f <__GNU_EH_FRAME_HDR+0x93>
  400b0f:	01 1b                	add    %ebx,(%rbx)
  400b11:	0c 07                	or     $0x7,%al
  400b13:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400b19:	00 00                	add    %al,(%rax)
  400b1b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b1e:	00 00                	add    %al,(%rax)
  400b20:	70 f9                	jo     400b1b <__GNU_EH_FRAME_HDR+0x8f>
  400b22:	ff                   	(bad)  
  400b23:	ff 60 00             	jmpq   *0x0(%rax)
  400b26:	00 00                	add    %al,(%rax)
  400b28:	00 0e                	add    %cl,(%rsi)
  400b2a:	10 46 0e             	adc    %al,0xe(%rsi)
  400b2d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400b30:	0b 77 08             	or     0x8(%rdi),%esi
  400b33:	80 00 3f             	addb   $0x3f,(%rax)
  400b36:	1a 3b                	sbb    (%rbx),%bh
  400b38:	2a 33                	sub    (%rbx),%dh
  400b3a:	24 22                	and    $0x22,%al
  400b3c:	00 00                	add    %al,(%rax)
  400b3e:	00 00                	add    %al,(%rax)
  400b40:	1c 00                	sbb    $0x0,%al
  400b42:	00 00                	add    %al,(%rax)
  400b44:	44 00 00             	add    %r8b,(%rax)
  400b47:	00 ae fa ff ff 15    	add    %ch,0x15fffffa(%rsi)
  400b4d:	00 00                	add    %al,(%rax)
  400b4f:	00 00                	add    %al,(%rax)
  400b51:	41 0e                	rex.B (bad) 
  400b53:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400b59:	50                   	push   %rax
  400b5a:	0c 07                	or     $0x7,%al
  400b5c:	08 00                	or     %al,(%rax)
  400b5e:	00 00                	add    %al,(%rax)
  400b60:	1c 00                	sbb    $0x0,%al
  400b62:	00 00                	add    %al,(%rax)
  400b64:	64 00 00             	add    %al,%fs:(%rax)
  400b67:	00 a3 fa ff ff ae    	add    %ah,-0x51000006(%rbx)
  400b6d:	00 00                	add    %al,(%rax)
  400b6f:	00 00                	add    %al,(%rax)
  400b71:	41 0e                	rex.B (bad) 
  400b73:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400b79:	02 a9 0c 07 08 00    	add    0x8070c(%rcx),%ch
  400b7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b82:	00 00                	add    %al,(%rax)
  400b84:	84 00                	test   %al,(%rax)
  400b86:	00 00                	add    %al,(%rax)
  400b88:	31 fb                	xor    %edi,%ebx
  400b8a:	ff                   	(bad)  
  400b8b:	ff                   	(bad)  
  400b8c:	b8 01 00 00 00       	mov    $0x1,%eax
  400b91:	41 0e                	rex.B (bad) 
  400b93:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400b99:	00 00                	add    %al,(%rax)
  400b9b:	00 00                	add    %al,(%rax)
  400b9d:	00 00                	add    %al,(%rax)
  400b9f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  400ba3:	00 a4 00 00 00 d8 fc 	add    %ah,-0x3280000(%rax,%rax,1)
  400baa:	ff                   	(bad)  
  400bab:	ff 65 00             	jmpq   *0x0(%rbp)
  400bae:	00 00                	add    %al,(%rax)
  400bb0:	00 42 0e             	add    %al,0xe(%rdx)
  400bb3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400bb9:	8e 03                	mov    (%rbx),%es
  400bbb:	45 0e                	rex.RB (bad) 
  400bbd:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  400bc3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701a11 <_end+0xffffffff861009a1>
  400bc9:	06                   	(bad)  
  400bca:	48 0e                	rex.W (bad) 
  400bcc:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400bd2:	72 0e                	jb     400be2 <__GNU_EH_FRAME_HDR+0x156>
  400bd4:	38 41 0e             	cmp    %al,0xe(%rcx)
  400bd7:	30 41 0e             	xor    %al,0xe(%rcx)
  400bda:	28 42 0e             	sub    %al,0xe(%rdx)
  400bdd:	20 42 0e             	and    %al,0xe(%rdx)
  400be0:	18 42 0e             	sbb    %al,0xe(%rdx)
  400be3:	10 42 0e             	adc    %al,0xe(%rdx)
  400be6:	08 00                	or     %al,(%rax)
  400be8:	14 00                	adc    $0x0,%al
  400bea:	00 00                	add    %al,(%rax)
  400bec:	ec                   	in     (%dx),%al
  400bed:	00 00                	add    %al,(%rax)
  400bef:	00 00                	add    %al,(%rax)
  400bf1:	fd                   	std    
  400bf2:	ff                   	(bad)  
  400bf3:	ff 02                	incl   (%rdx)
	...

0000000000400c00 <__FRAME_END__>:
  400c00:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	d0 05 40 00 00 00    	rolb   0x40(%rip)        # 600e56 <_DYNAMIC+0x2e>
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	b0 05                	mov    $0x5,%al
  600e1a:	40 00 00             	add    %al,(%rax)
  600e1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000600e20 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600e28 <_DYNAMIC>:
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	01 00                	add    %eax,(%rax)
  600e32:	00 00                	add    %al,(%rax)
  600e34:	00 00                	add    %al,(%rax)
  600e36:	00 00                	add    %al,(%rax)
  600e38:	0c 00                	or     $0x0,%al
  600e3a:	00 00                	add    %al,(%rax)
  600e3c:	00 00                	add    %al,(%rax)
  600e3e:	00 00                	add    %al,(%rax)
  600e40:	70 04                	jo     600e46 <_DYNAMIC+0x1e>
  600e42:	40 00 00             	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x25>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 f4                	add    %dh,%ah
  600e51:	08 40 00             	or     %al,0x0(%rax)
  600e54:	00 00                	add    %al,(%rax)
  600e56:	00 00                	add    %al,(%rax)
  600e58:	19 00                	sbb    %eax,(%rax)
  600e5a:	00 00                	add    %al,(%rax)
  600e5c:	00 00                	add    %al,(%rax)
  600e5e:	00 00                	add    %al,(%rax)
  600e60:	10 0e                	adc    %cl,(%rsi)
  600e62:	60                   	(bad)  
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 1b                	add    %bl,(%rbx)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 08                	add    %cl,(%rax)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 1a                	add    %bl,(%rdx)
  600e79:	00 00                	add    %al,(%rax)
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 18                	add    %bl,(%rax)
  600e81:	0e                   	(bad)  
  600e82:	60                   	(bad)  
  600e83:	00 00                	add    %al,(%rax)
  600e85:	00 00                	add    %al,(%rax)
  600e87:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	08 00                	or     %al,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	f5                   	cmc    
  600e99:	fe                   	(bad)  
  600e9a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ead <_DYNAMIC+0x85>
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 60 03             	add    %ah,0x3(%rax)
  600eb2:	40 00 00             	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 06                	add    %al,(%rsi)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 b8 02 40 00 00    	add    %bh,0x4002(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 0a                	add    %cl,(%rdx)
  600ec9:	00 00                	add    %al,(%rax)
  600ecb:	00 00                	add    %al,(%rax)
  600ecd:	00 00                	add    %al,(%rax)
  600ecf:	00 52 00             	add    %dl,0x0(%rdx)
  600ed2:	00 00                	add    %al,(%rax)
  600ed4:	00 00                	add    %al,(%rax)
  600ed6:	00 00                	add    %al,(%rax)
  600ed8:	0b 00                	or     (%rax),%eax
  600eda:	00 00                	add    %al,(%rax)
  600edc:	00 00                	add    %al,(%rax)
  600ede:	00 00                	add    %al,(%rax)
  600ee0:	18 00                	sbb    %al,(%rax)
  600ee2:	00 00                	add    %al,(%rax)
  600ee4:	00 00                	add    %al,(%rax)
  600ee6:	00 00                	add    %al,(%rax)
  600ee8:	15 00 00 00 00       	adc    $0x0,%eax
	...
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 03                	add    %al,(%rbx)
	...
  600f01:	10 60 00             	adc    %ah,0x0(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	02 00                	add    (%rax),%al
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	78 00                	js     600f12 <_DYNAMIC+0xea>
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	14 00                	adc    $0x0,%al
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	07                   	(bad)  
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 17                	add    %dl,(%rdi)
  600f29:	00 00                	add    %al,(%rax)
  600f2b:	00 00                	add    %al,(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 f8                	add    %bh,%al
  600f31:	03 40 00             	add    0x0(%rax),%eax
  600f34:	00 00                	add    %al,(%rax)
  600f36:	00 00                	add    %al,(%rax)
  600f38:	07                   	(bad)  
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 e0                	add    %ah,%al
  600f41:	03 40 00             	add    0x0(%rax),%eax
  600f44:	00 00                	add    %al,(%rax)
  600f46:	00 00                	add    %al,(%rax)
  600f48:	08 00                	or     %al,(%rax)
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	18 00                	sbb    %al,(%rax)
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	09 00                	or     %eax,(%rax)
  600f5a:	00 00                	add    %al,(%rax)
  600f5c:	00 00                	add    %al,(%rax)
  600f5e:	00 00                	add    %al,(%rax)
  600f60:	18 00                	sbb    %al,(%rax)
  600f62:	00 00                	add    %al,(%rax)
  600f64:	00 00                	add    %al,(%rax)
  600f66:	00 00                	add    %al,(%rax)
  600f68:	fe                   	(bad)  
  600f69:	ff                   	(bad)  
  600f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 c0                	add    %al,%al
  600f71:	03 40 00             	add    0x0(%rax),%eax
  600f74:	00 00                	add    %al,(%rax)
  600f76:	00 00                	add    %al,(%rax)
  600f78:	ff                   	(bad)  
  600f79:	ff                   	(bad)  
  600f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 01                	add    %al,(%rcx)
  600f81:	00 00                	add    %al,(%rax)
  600f83:	00 00                	add    %al,(%rax)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 f0                	add    %dh,%al
  600f89:	ff                   	(bad)  
  600f8a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 b2 03 40 00 00    	add    %dh,0x4003(%rdx)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)  
	...
  601017:	00 a6 04 40 00 00    	add    %ah,0x4004(%rsi)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 b6 04 40 00 00    	add    %dh,0x4004(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 c6                	add    %al,%dh
  601029:	04 40                	add    $0x40,%al
  60102b:	00 00                	add    %al,(%rax)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 d6                	add    %dl,%dh
  601031:	04 40                	add    $0x40,%al
  601033:	00 00                	add    %al,(%rax)
  601035:	00 00                	add    %al,(%rax)
  601037:	00 e6                	add    %ah,%dh
  601039:	04 40                	add    $0x40,%al
  60103b:	00 00                	add    %al,(%rax)
  60103d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601040 <__data_start>:
	...

0000000000601048 <__dso_handle>:
	...

0000000000601050 <m>:
  601050:	06                   	(bad)  
  601051:	00 00                	add    %al,(%rax)
  601053:	00 00                	add    %al,(%rax)
  601055:	00 00                	add    %al,(%rax)
	...

0000000000601058 <string>:
  601058:	14 09                	adc    $0x9,%al
  60105a:	40 00 00             	add    %al,(%rax)
  60105d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000601060 <__bss_start>:
  601060:	00 00                	add    %al,(%rax)
	...

0000000000601064 <s>:
  601064:	00 00                	add    %al,(%rax)
	...

0000000000601068 <count.2910>:
  601068:	00 00                	add    %al,(%rax)
	...

000000000060106c <g>:
  60106c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x4003f8>
   a:	74 75                	je     81 <_init-0x4003ef>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce23d0>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x4003e1>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%rsi,%rbp,1)
  22:	31 32                	xor    %esi,(%rdx)
  24:	29 20                	sub    %esp,(%rax)
  26:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  2b:	20 32                	and    %dh,(%rdx)
  2d:	30 31                	xor    %dh,(%rcx)
  2f:	36 30 36             	xor    %dh,%ss:(%rsi)
  32:	30 39                	xor    %bh,(%rcx)
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	f6 05 40 00 00 00 00 	testb  $0x0,0x40(%rip)        # 57 <_init-0x400419>
  17:	00 7b 02             	add    %bh,0x2(%rbx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	15 02 00 00 04       	adc    $0x4000002,%eax
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 08                	add    %cl,(%rax)
   b:	01 56 00             	add    %edx,0x0(%rsi)
   e:	00 00                	add    %al,(%rax)
  10:	0c 61                	or     $0x61,%al
  12:	2e 63 00             	movslq %cs:(%rax),%eax
  15:	b7 00                	mov    $0x0,%bh
  17:	00 00                	add    %al,(%rax)
  19:	f6 05 40 00 00 00 00 	testb  $0x0,0x40(%rip)        # 60 <_init-0x400410>
  20:	00 7b 02             	add    %bh,0x2(%rbx)
	...
  2b:	00 00                	add    %al,(%rax)
  2d:	02 08                	add    (%rax),%cl
  2f:	07                   	(bad)  
  30:	21 00                	and    %eax,(%rax)
  32:	00 00                	add    %al,(%rax)
  34:	02 01                	add    (%rcx),%al
  36:	08 13                	or     %dl,(%rbx)
  38:	00 00                	add    %al,(%rax)
  3a:	00 02                	add    %al,(%rdx)
  3c:	02 07                	add    (%rdi),%al
  3e:	33 00                	xor    (%rax),%eax
  40:	00 00                	add    %al,(%rax)
  42:	02 04 07             	add    (%rdi,%rax,1),%al
  45:	26 00 00             	add    %al,%es:(%rax)
  48:	00 02                	add    %al,(%rdx)
  4a:	01 06                	add    %eax,(%rsi)
  4c:	15 00 00 00 02       	adc    $0x2000000,%eax
  51:	02 05 c3 00 00 00    	add    0xc3(%rip),%al        # 11a <_init-0x400356>
  57:	03 04 05 69 6e 74 00 	add    0x746e69(,%rax,1),%eax
  5e:	02 08                	add    (%rax),%cl
  60:	05 cd 00 00 00       	add    $0xcd,%eax
  65:	02 08                	add    (%rax),%cl
  67:	07                   	(bad)  
  68:	ae                   	scas   %es:(%rdi),%al
  69:	00 00                	add    %al,(%rax)
  6b:	00 02                	add    %al,(%rdx)
  6d:	01 06                	add    %eax,(%rsi)
  6f:	1c 00                	sbb    $0x0,%al
  71:	00 00                	add    %al,(%rax)
  73:	04 08                	add    $0x8,%al
  75:	79 00                	jns    77 <_init-0x4003f9>
  77:	00 00                	add    %al,(%rax)
  79:	05 6c 00 00 00       	add    $0x6c,%eax
  7e:	06                   	(bad)  
  7f:	66 74 00             	data16 je 82 <_init-0x4003ee>
  82:	01 1f                	add    %ebx,(%rdi)
  84:	88 00                	mov    %al,(%rax)
  86:	00 00                	add    %al,(%rax)
  88:	04 08                	add    $0x8,%al
  8a:	8e 00                	mov    (%rax),%es
  8c:	00 00                	add    %al,(%rax)
  8e:	07                   	(bad)  
  8f:	57                   	push   %rdi
  90:	00 00                	add    %al,(%rax)
  92:	00 99 00 00 00 08    	add    %bl,0x8000000(%rcx)
  98:	00 09                	add    %cl,(%rcx)
  9a:	4c 00 00             	rex.WR add %r8b,(%rax)
  9d:	00 01                	add    %al,(%rcx)
  9f:	09 57 00             	or     %edx,0x0(%rdi)
  a2:	00 00                	add    %al,(%rax)
  a4:	f6 05 40 00 00 00 00 	testb  $0x0,0x40(%rip)        # eb <_init-0x400385>
  ab:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # b1 <_init-0x4003bf>
  b1:	00 00                	add    %al,(%rax)
  b3:	00 01                	add    %al,(%rcx)
  b5:	9c                   	pushfq 
  b6:	0a a6 00 00 00 01    	or     0x1000000(%rsi),%ah
  bc:	0e                   	(bad)  
  bd:	57                   	push   %rdi
  be:	00 00                	add    %al,(%rax)
  c0:	00 0b                	add    %cl,(%rbx)
  c2:	06                   	(bad)  
  c3:	40 00 00             	add    %al,(%rax)
  c6:	00 00                	add    %al,(%rax)
  c8:	00 ae 00 00 00 00    	add    %ch,0x0(%rsi)
  ce:	00 00                	add    %al,(%rax)
  d0:	00 01                	add    %al,(%rcx)
  d2:	9c                   	pushfq 
  d3:	1a 01                	sbb    (%rcx),%al
  d5:	00 00                	add    %al,(%rax)
  d7:	0b 06                	or     (%rsi),%eax
  d9:	00 00                	add    %al,(%rax)
  db:	00 01                	add    %al,(%rcx)
  dd:	0e                   	(bad)  
  de:	1a 01                	sbb    (%rcx),%al
  e0:	00 00                	add    %al,(%rax)
  e2:	02 91 58 0b d6 00    	add    0xd60b58(%rcx),%dl
  e8:	00 00                	add    %al,(%rax)
  ea:	01 0e                	add    %ecx,(%rsi)
  ec:	42 00 00             	rex.X add %al,(%rax)
  ef:	00 02                	add    %al,(%rdx)
  f1:	91                   	xchg   %eax,%ecx
  f2:	54                   	push   %rsp
  f3:	0c 69                	or     $0x69,%al
  f5:	00 01                	add    %al,(%rcx)
  f7:	10 57 00             	adc    %dl,0x0(%rdi)
  fa:	00 00                	add    %al,(%rax)
  fc:	02 91 60 0c 6c 65    	add    0x656c0c60(%rcx),%dl
 102:	6e                   	outsb  %ds:(%rsi),(%dx)
 103:	00 01                	add    %al,(%rcx)
 105:	11 57 00             	adc    %edx,0x0(%rdi)
 108:	00 00                	add    %al,(%rax)
 10a:	02 91 64 0c 70 00    	add    0x700c64(%rcx),%dl
 110:	01 13                	add    %edx,(%rbx)
 112:	1a 01                	sbb    (%rcx),%al
 114:	00 00                	add    %al,(%rax)
 116:	02 91 68 00 04 08    	add    0x8040068(%rcx),%dl
 11c:	34 00                	xor    $0x0,%al
 11e:	00 00                	add    %al,(%rax)
 120:	0d 51 00 00 00       	or     $0x51,%eax
 125:	01 20                	add    %esp,(%rax)
 127:	57                   	push   %rdi
 128:	00 00                	add    %al,(%rax)
 12a:	00 b9 06 40 00 00    	add    %bh,0x4006(%rcx)
 130:	00 00                	add    %al,(%rax)
 132:	00 b8 01 00 00 00    	add    %bh,0x1(%rax)
 138:	00 00                	add    %al,(%rax)
 13a:	00 01                	add    %al,(%rcx)
 13c:	9c                   	pushfq 
 13d:	88 01                	mov    %al,(%rcx)
 13f:	00 00                	add    %al,(%rax)
 141:	0c 61                	or     $0x61,%al
 143:	00 01                	add    %al,(%rcx)
 145:	22 57 00             	and    0x0(%rdi),%dl
 148:	00 00                	add    %al,(%rax)
 14a:	02 91 5c 0c 62 00    	add    0x620c5c(%rcx),%dl
 150:	01 23                	add    %esp,(%rbx)
 152:	57                   	push   %rdi
 153:	00 00                	add    %al,(%rax)
 155:	00 02                	add    %al,(%rdx)
 157:	91                   	xchg   %eax,%ecx
 158:	60                   	(bad)  
 159:	0c 63                	or     $0x63,%al
 15b:	00 01                	add    %al,(%rcx)
 15d:	24 57                	and    $0x57,%al
 15f:	00 00                	add    %al,(%rax)
 161:	00 02                	add    %al,(%rdx)
 163:	91                   	xchg   %eax,%ecx
 164:	64 0e                	fs (bad) 
 166:	00 00                	add    %al,(%rax)
 168:	00 00                	add    %al,(%rax)
 16a:	01 25 57 00 00 00    	add    %esp,0x57(%rip)        # 1c7 <_init-0x4002a9>
 170:	09 03                	or     %eax,(%rbx)
 172:	68 10 60 00 00       	pushq  $0x6010
 177:	00 00                	add    %al,(%rax)
 179:	00 0c 70             	add    %cl,(%rax,%rsi,2)
 17c:	66 00 01             	data16 add %al,(%rcx)
 17f:	26 7e 00             	es jle 182 <_init-0x4002ee>
 182:	00 00                	add    %al,(%rax)
 184:	02 91 68 00 0c 73    	add    0x730c0068(%rcx),%dl
 18a:	00 01                	add    %al,(%rcx)
 18c:	05 57 00 00 00       	add    $0x57,%eax
 191:	09 03                	or     %eax,(%rbx)
 193:	64 10 60 00          	adc    %ah,%fs:0x0(%rax)
 197:	00 00                	add    %al,(%rax)
 199:	00 00                	add    %al,(%rax)
 19b:	0f 67 00             	packuswb (%rax),%mm0
 19e:	01 03                	add    %eax,(%rbx)
 1a0:	57                   	push   %rdi
 1a1:	00 00                	add    %al,(%rax)
 1a3:	00 09                	add    %cl,(%rcx)
 1a5:	03 6c 10 60          	add    0x60(%rax,%rdx,1),%ebp
 1a9:	00 00                	add    %al,(%rax)
 1ab:	00 00                	add    %al,(%rax)
 1ad:	00 0f                	add    %cl,(%rdi)
 1af:	66 00 01             	data16 add %al,(%rcx)
 1b2:	04 c1                	add    $0xc1,%al
 1b4:	01 00                	add    %eax,(%rax)
 1b6:	00 09                	add    %cl,(%rcx)
 1b8:	03 10                	add    (%rax),%edx
 1ba:	09 40 00             	or     %eax,0x0(%rax)
 1bd:	00 00                	add    %al,(%rax)
 1bf:	00 00                	add    %al,(%rax)
 1c1:	05 57 00 00 00       	add    $0x57,%eax
 1c6:	0f 6d                	(bad)  
 1c8:	00 01                	add    %al,(%rcx)
 1ca:	06                   	(bad)  
 1cb:	57                   	push   %rdi
 1cc:	00 00                	add    %al,(%rax)
 1ce:	00 09                	add    %cl,(%rcx)
 1d0:	03 50 10             	add    0x10(%rax),%edx
 1d3:	60                   	(bad)  
 1d4:	00 00                	add    %al,(%rax)
 1d6:	00 00                	add    %al,(%rax)
 1d8:	00 10                	add    %dl,(%rax)
 1da:	0c 00                	or     $0x0,%al
 1dc:	00 00                	add    %al,(%rax)
 1de:	01 07                	add    %eax,(%rdi)
 1e0:	73 00                	jae    1e2 <_init-0x40028e>
 1e2:	00 00                	add    %al,(%rax)
 1e4:	09 03                	or     %eax,(%rbx)
 1e6:	58                   	pop    %rax
 1e7:	10 60 00             	adc    %ah,0x0(%rax)
 1ea:	00 00                	add    %al,(%rax)
 1ec:	00 00                	add    %al,(%rax)
 1ee:	11 79 00             	adc    %edi,0x0(%rcx)
 1f1:	00 00                	add    %al,(%rax)
 1f3:	fe 01                	incb   (%rcx)
 1f5:	00 00                	add    %al,(%rax)
 1f7:	12 65 00             	adc    0x0(%rbp),%ah
 1fa:	00 00                	add    %al,(%rax)
 1fc:	13 00                	adc    (%rax),%eax
 1fe:	10 46 00             	adc    %al,0x0(%rsi)
 201:	00 00                	add    %al,(%rax)
 203:	01 08                	add    %ecx,(%rax)
 205:	13 02                	adc    (%rdx),%eax
 207:	00 00                	add    %al,(%rax)
 209:	09 03                	or     %eax,(%rbx)
 20b:	30 09                	xor    %cl,(%rcx)
 20d:	40 00 00             	add    %al,(%rax)
 210:	00 00                	add    %al,(%rax)
 212:	00 05 ee 01 00 00    	add    %al,0x1ee(%rip)        # 406 <_init-0x40006a>
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2ab02a6>
   8:	08 1b                	or     %bl,(%rbx)
   a:	0e                   	(bad)  
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 07                	adc    (%rdi),%al
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 24 00             	add    (%rax,%rax,1),%ah
  16:	0b 0b                	or     (%rbx),%ecx
  18:	3e 0b 03             	or     %ds:(%rbx),%eax
  1b:	0e                   	(bad)  
  1c:	00 00                	add    %al,(%rax)
  1e:	03 24 00             	add    (%rax,%rax,1),%esp
  21:	0b 0b                	or     (%rbx),%ecx
  23:	3e 0b 03             	or     %ds:(%rbx),%eax
  26:	08 00                	or     %al,(%rax)
  28:	00 04 0f             	add    %al,(%rdi,%rcx,1)
  2b:	00 0b                	add    %cl,(%rbx)
  2d:	0b 49 13             	or     0x13(%rcx),%ecx
  30:	00 00                	add    %al,(%rax)
  32:	05 26 00 49 13       	add    $0x13490026,%eax
  37:	00 00                	add    %al,(%rax)
  39:	06                   	(bad)  
  3a:	16                   	(bad)  
  3b:	00 03                	add    %al,(%rbx)
  3d:	08 3a                	or     %bh,(%rdx)
  3f:	0b 3b                	or     (%rbx),%edi
  41:	0b 49 13             	or     0x13(%rcx),%ecx
  44:	00 00                	add    %al,(%rax)
  46:	07                   	(bad)  
  47:	15 01 49 13 01       	adc    $0x1134901,%eax
  4c:	13 00                	adc    (%rax),%eax
  4e:	00 08                	add    %cl,(%rax)
  50:	18 00                	sbb    %al,(%rax)
  52:	00 00                	add    %al,(%rax)
  54:	09 2e                	or     %ebp,(%rsi)
  56:	00 3f                	add    %bh,(%rdi)
  58:	19 03                	sbb    %eax,(%rbx)
  5a:	0e                   	(bad)  
  5b:	3a 0b                	cmp    (%rbx),%cl
  5d:	3b 0b                	cmp    (%rbx),%ecx
  5f:	49 13 11             	adc    (%r9),%rdx
  62:	01 12                	add    %edx,(%rdx)
  64:	07                   	(bad)  
  65:	40 18 96 42 19 00 00 	sbb    %dl,0x1942(%rsi)
  6c:	0a 2e                	or     (%rsi),%ch
  6e:	01 3f                	add    %edi,(%rdi)
  70:	19 03                	sbb    %eax,(%rbx)
  72:	0e                   	(bad)  
  73:	3a 0b                	cmp    (%rbx),%cl
  75:	3b 0b                	cmp    (%rbx),%ecx
  77:	27                   	(bad)  
  78:	19 49 13             	sbb    %ecx,0x13(%rcx)
  7b:	11 01                	adc    %eax,(%rcx)
  7d:	12 07                	adc    (%rdi),%al
  7f:	40 18 96 42 19 01 13 	sbb    %dl,0x13011942(%rsi)
  86:	00 00                	add    %al,(%rax)
  88:	0b 05 00 03 0e 3a    	or     0x3a0e0300(%rip),%eax        # 3a0e038e <_end+0x39adf31e>
  8e:	0b 3b                	or     (%rbx),%edi
  90:	0b 49 13             	or     0x13(%rcx),%ecx
  93:	02 18                	add    (%rax),%bl
  95:	00 00                	add    %al,(%rax)
  97:	0c 34                	or     $0x34,%al
  99:	00 03                	add    %al,(%rbx)
  9b:	08 3a                	or     %bh,(%rdx)
  9d:	0b 3b                	or     (%rbx),%edi
  9f:	0b 49 13             	or     0x13(%rcx),%ecx
  a2:	02 18                	add    (%rax),%bl
  a4:	00 00                	add    %al,(%rax)
  a6:	0d 2e 01 3f 19       	or     $0x193f012e,%eax
  ab:	03 0e                	add    (%rsi),%ecx
  ad:	3a 0b                	cmp    (%rbx),%cl
  af:	3b 0b                	cmp    (%rbx),%ecx
  b1:	49 13 11             	adc    (%r9),%rdx
  b4:	01 12                	add    %edx,(%rdx)
  b6:	07                   	(bad)  
  b7:	40 18 96 42 19 01 13 	sbb    %dl,0x13011942(%rsi)
  be:	00 00                	add    %al,(%rax)
  c0:	0e                   	(bad)  
  c1:	34 00                	xor    $0x0,%al
  c3:	03 0e                	add    (%rsi),%ecx
  c5:	3a 0b                	cmp    (%rbx),%cl
  c7:	3b 0b                	cmp    (%rbx),%ecx
  c9:	49 13 02             	adc    (%r10),%rax
  cc:	18 00                	sbb    %al,(%rax)
  ce:	00 0f                	add    %cl,(%rdi)
  d0:	34 00                	xor    $0x0,%al
  d2:	03 08                	add    (%rax),%ecx
  d4:	3a 0b                	cmp    (%rbx),%cl
  d6:	3b 0b                	cmp    (%rbx),%ecx
  d8:	49 13 3f             	adc    (%r15),%rdi
  db:	19 02                	sbb    %eax,(%rdx)
  dd:	18 00                	sbb    %al,(%rax)
  df:	00 10                	add    %dl,(%rax)
  e1:	34 00                	xor    $0x0,%al
  e3:	03 0e                	add    (%rsi),%ecx
  e5:	3a 0b                	cmp    (%rbx),%cl
  e7:	3b 0b                	cmp    (%rbx),%ecx
  e9:	49 13 3f             	adc    (%r15),%rdi
  ec:	19 02                	sbb    %eax,(%rdx)
  ee:	18 00                	sbb    %al,(%rax)
  f0:	00 11                	add    %dl,(%rcx)
  f2:	01 01                	add    %eax,(%rcx)
  f4:	49 13 01             	adc    (%r9),%rax
  f7:	13 00                	adc    (%rax),%eax
  f9:	00 12                	add    %dl,(%rdx)
  fb:	21 00                	and    %eax,(%rax)
  fd:	49 13 2f             	adc    (%r15),%rbp
 100:	0b 00                	or     (%rax),%eax
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	bd 00 00 00 02       	mov    $0x2000000,%ebp
   5:	00 1a                	add    %bl,(%rdx)
   7:	00 00                	add    %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	00 61 2e             	add    %ah,0x2e(%rcx)
  1e:	63 00                	movslq (%rax),%eax
  20:	00 00                	add    %al,(%rax)
  22:	00 00                	add    %al,(%rax)
  24:	00 09                	add    %cl,(%rcx)
  26:	02 f6                	add    %dh,%dh
  28:	05 40 00 00 00       	add    $0x40,%eax
  2d:	00 00                	add    %al,(%rax)
  2f:	03 09                	add    (%rcx),%ecx
  31:	01 4b 9f             	add    %ecx,-0x61(%rbx)
  34:	59                   	pop    %rcx
  35:	30 e5                	xor    %ah,%ch
  37:	75 68                	jne    a1 <_init-0x4003cf>
  39:	83 83 91 9f 08 d7 02 	addl   $0x2,-0x28f7606f(%rbx)
  40:	24 13                	and    $0x13,%al
  42:	08 2f                	or     %ch,(%rdi)
  44:	00 02                	add    %al,(%rdx)
  46:	04 02                	add    $0x2,%al
  48:	99                   	cltd   
  49:	00 02                	add    %al,(%rdx)
  4b:	04 01                	add    $0x1,%al
  4d:	06                   	(bad)  
  4e:	4a 06                	rex.WX (bad) 
  50:	03 09                	add    (%rcx),%ecx
  52:	82                   	(bad)  
  53:	3f                   	(bad)  
  54:	83 75 75 ae          	xorl   $0xffffffae,0x75(%rbp)
  58:	83 83 e5 e5 00 02 04 	addl   $0x4,0x200e5e5(%rbx)
  5f:	01 e6                	add    %esp,%esi
  61:	00 02                	add    %al,(%rdx)
  63:	04 01                	add    $0x1,%al
  65:	e5 00                	in     $0x0,%eax
  67:	02 04 01             	add    (%rcx,%rax,1),%al
  6a:	e5 00                	in     $0x0,%eax
  6c:	02 04 01             	add    (%rcx,%rax,1),%al
  6f:	9f                   	lahf   
  70:	00 02                	add    %al,(%rdx)
  72:	04 01                	add    $0x1,%al
  74:	08 67 00             	or     %ah,0x0(%rdi)
  77:	02 04 01             	add    (%rcx,%rax,1),%al
  7a:	08 3d 00 02 04 01    	or     %bh,0x1040200(%rip)        # 1040280 <_end+0xa3f210>
  80:	08 ad 00 02 04 01    	or     %ch,0x1040200(%rbp)
  86:	08 9f 00 02 04 01    	or     %bl,0x1040200(%rdi)
  8c:	08 ad 00 02 04 01    	or     %ch,0x1040200(%rbp)
  92:	08 3d 00 02 04 01    	or     %bh,0x1040200(%rip)        # 1040298 <_end+0xa3f228>
  98:	02 2b                	add    (%rbx),%ch
  9a:	13 00                	adc    (%rax),%eax
  9c:	02 04 01             	add    (%rcx,%rax,1),%al
  9f:	08 ad 00 02 04 01    	or     %ch,0x1040200(%rbp)
  a5:	08 3d 00 02 04 01    	or     %bh,0x1040200(%rip)        # 10402ab <_end+0xa3f23b>
  ab:	08 f4                	or     %dh,%ah
  ad:	00 02                	add    %al,(%rdx)
  af:	04 01                	add    $0x1,%al
  b1:	ad                   	lods   %ds:(%rsi),%eax
  b2:	00 02                	add    %al,(%rdx)
  b4:	04 01                	add    $0x1,%al
  b6:	9f                   	lahf   
  b7:	00 02                	add    %al,(%rdx)
  b9:	04 01                	add    $0x1,%al
  bb:	9f                   	lahf   
  bc:	02                   	.byte 0x2
  bd:	05                   	.byte 0x5
  be:	00 01                	add    %al,(%rcx)
  c0:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	63 6f 75             	movslq 0x75(%rdi),%ebp
   3:	6e                   	outsb  %ds:(%rsi),(%dx)
   4:	74 00                	je     6 <_init-0x40046a>
   6:	73 74                	jae    7c <_init-0x4003f4>
   8:	61                   	(bad)  
   9:	72 74                	jb     7f <_init-0x4003f1>
   b:	00 73 74             	add    %dh,0x74(%rbx)
   e:	72 69                	jb     79 <_init-0x4003f7>
  10:	6e                   	outsb  %ds:(%rsi),(%dx)
  11:	67 00 75 6e          	add    %dh,0x6e(%ebp)
  15:	73 69                	jae    80 <_init-0x4003f0>
  17:	67 6e                	outsb  %ds:(%esi),(%dx)
  19:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  1e:	61                   	(bad)  
  1f:	72 00                	jb     21 <_init-0x40044f>
  21:	6c                   	insb   (%dx),%es:(%rdi)
  22:	6f                   	outsl  %ds:(%rsi),(%dx)
  23:	6e                   	outsb  %ds:(%rsi),(%dx)
  24:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  28:	73 69                	jae    93 <_init-0x4003dd>
  2a:	67 6e                	outsb  %ds:(%esi),(%dx)
  2c:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  31:	74 00                	je     33 <_init-0x40043d>
  33:	73 68                	jae    9d <_init-0x4003d3>
  35:	6f                   	outsl  %ds:(%rsi),(%dx)
  36:	72 74                	jb     ac <_init-0x4003c4>
  38:	20 75 6e             	and    %dh,0x6e(%rbp)
  3b:	73 69                	jae    a6 <_init-0x4003ca>
  3d:	67 6e                	outsb  %ds:(%esi),(%dx)
  3f:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  44:	74 00                	je     46 <_init-0x40042a>
  46:	61                   	(bad)  
  47:	72 72                	jb     bb <_init-0x4003b5>
  49:	61                   	(bad)  
  4a:	79 00                	jns    4c <_init-0x400424>
  4c:	66 75 6e             	data16 jne bd <_init-0x4003b3>
  4f:	63 00                	movslq (%rax),%eax
  51:	6d                   	insl   (%dx),%es:(%rdi)
  52:	61                   	(bad)  
  53:	69 6e 00 47 4e 55 20 	imul   $0x20554e47,0x0(%rsi),%ebp
  5a:	43 31 31             	rex.XB xor %esi,(%r9)
  5d:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3491 <_end+0x2fce2421>
  63:	20 32                	and    %dh,(%rdx)
  65:	30 31                	xor    %dh,(%rcx)
  67:	36 30 36             	xor    %dh,%ss:(%rsi)
  6a:	30 39                	xor    %bh,(%rcx)
  6c:	20 2d 6d 74 75 6e    	and    %ch,0x6e75746d(%rip)        # 6e7574df <_end+0x6e15646f>
  72:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  78:	72 69                	jb     e3 <_init-0x40038d>
  7a:	63 20                	movslq (%rax),%esp
  7c:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  81:	68 3d 78 38 36       	pushq  $0x3638783d
  86:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  8b:	67 20 2d 66 73 74 61 	and    %ch,0x61747366(%eip)        # 617473f8 <_end+0x61146388>
  92:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
  95:	70 72                	jo     109 <_init-0x400367>
  97:	6f                   	outsl  %ds:(%rsi),(%dx)
  98:	74 65                	je     ff <_init-0x400371>
  9a:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
  9e:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
  a3:	6e                   	outsb  %ds:(%rsi),(%dx)
  a4:	67 00 64 75 6d       	add    %ah,0x6d(%ebp,%esi,2)
  a9:	70 68                	jo     113 <_init-0x40035d>
  ab:	65 78 00             	gs js  ae <_init-0x4003c2>
  ae:	73 69                	jae    119 <_init-0x400357>
  b0:	7a 65                	jp     117 <_init-0x400359>
  b2:	74 79                	je     12d <_init-0x400343>
  b4:	70 65                	jo     11b <_init-0x400355>
  b6:	00 2f                	add    %ch,(%rdi)
  b8:	72 6f                	jb     129 <_init-0x400347>
  ba:	6f                   	outsl  %ds:(%rsi),(%dx)
  bb:	74 2f                	je     ec <_init-0x400384>
  bd:	73 68                	jae    127 <_init-0x400349>
  bf:	61                   	(bad)  
  c0:	72 65                	jb     127 <_init-0x400349>
  c2:	00 73 68             	add    %dh,0x68(%rbx)
  c5:	6f                   	outsl  %ds:(%rsi),(%dx)
  c6:	72 74                	jb     13c <_init-0x400334>
  c8:	20 69 6e             	and    %ch,0x6e(%rcx)
  cb:	74 00                	je     cd <_init-0x4003a3>
  cd:	6c                   	insb   (%dx),%es:(%rdi)
  ce:	6f                   	outsl  %ds:(%rsi),(%dx)
  cf:	6e                   	outsb  %ds:(%rsi),(%dx)
  d0:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  d4:	74 00                	je     d6 <_init-0x40039a>
  d6:	6c                   	insb   (%dx),%es:(%rdi)
  d7:	65 6e                	outsb  %gs:(%rsi),(%dx)
  d9:	67 74 68             	addr32 je 144 <_init-0x40032c>
	...

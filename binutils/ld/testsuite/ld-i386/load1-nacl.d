#source: load1.s
#as: --32
#ld: -melf_i386
#objdump: -dw --sym
#target: i?86-*-nacl* x86_64-*-nacl*

.*: +file format .*

SYMBOL TABLE:
#...
10030080 l     O .data	0+1 bar
#...
10030081 g     O .data	0+1 foo
#...

Disassembly of section .text:

0+20000 <_start>:
[ 	]*[a-f0-9]+:	8d 05 80 00 03 10    	lea    0x10030080,%eax
[ 	]*[a-f0-9]+:	81 d0 80 00 03 10    	adc    \$0x10030080,%eax
[ 	]*[a-f0-9]+:	81 c3 80 00 03 10    	add    \$0x10030080,%ebx
[ 	]*[a-f0-9]+:	81 e1 80 00 03 10    	and    \$0x10030080,%ecx
[ 	]*[a-f0-9]+:	81 fa 80 00 03 10    	cmp    \$0x10030080,%edx
[ 	]*[a-f0-9]+:	81 cf 80 00 03 10    	or     \$0x10030080,%edi
[ 	]*[a-f0-9]+:	81 de 80 00 03 10    	sbb    \$0x10030080,%esi
[ 	]*[a-f0-9]+:	81 ed 80 00 03 10    	sub    \$0x10030080,%ebp
[ 	]*[a-f0-9]+:	81 f4 80 00 03 10    	xor    \$0x10030080,%esp
[ 	]*[a-f0-9]+:	f7 c1 80 00 03 10    	test   \$0x10030080,%ecx
[ 	]*[a-f0-9]+:	8d 05 80 00 03 10    	lea    0x10030080,%eax
[ 	]*[a-f0-9]+:	81 d0 80 00 03 10    	adc    \$0x10030080,%eax
[ 	]*[a-f0-9]+:	81 c3 80 00 03 10    	add    \$0x10030080,%ebx
[ 	]*[a-f0-9]+:	81 e1 80 00 03 10    	and    \$0x10030080,%ecx
[ 	]*[a-f0-9]+:	81 fa 80 00 03 10    	cmp    \$0x10030080,%edx
[ 	]*[a-f0-9]+:	81 cf 80 00 03 10    	or     \$0x10030080,%edi
[ 	]*[a-f0-9]+:	81 de 80 00 03 10    	sbb    \$0x10030080,%esi
[ 	]*[a-f0-9]+:	81 ed 80 00 03 10    	sub    \$0x10030080,%ebp
[ 	]*[a-f0-9]+:	81 f4 80 00 03 10    	xor    \$0x10030080,%esp
[ 	]*[a-f0-9]+:	f7 c1 80 00 03 10    	test   \$0x10030080,%ecx
[ 	]*[a-f0-9]+:	8d 05 81 00 03 10    	lea    0x10030081,%eax
[ 	]*[a-f0-9]+:	81 d0 81 00 03 10    	adc    \$0x10030081,%eax
[ 	]*[a-f0-9]+:	81 c3 81 00 03 10    	add    \$0x10030081,%ebx
[ 	]*[a-f0-9]+:	81 e1 81 00 03 10    	and    \$0x10030081,%ecx
[ 	]*[a-f0-9]+:	81 fa 81 00 03 10    	cmp    \$0x10030081,%edx
[ 	]*[a-f0-9]+:	81 cf 81 00 03 10    	or     \$0x10030081,%edi
[ 	]*[a-f0-9]+:	81 de 81 00 03 10    	sbb    \$0x10030081,%esi
[ 	]*[a-f0-9]+:	81 ed 81 00 03 10    	sub    \$0x10030081,%ebp
[ 	]*[a-f0-9]+:	81 f4 81 00 03 10    	xor    \$0x10030081,%esp
[ 	]*[a-f0-9]+:	f7 c1 81 00 03 10    	test   \$0x10030081,%ecx
[ 	]*[a-f0-9]+:	8d 05 81 00 03 10    	lea    0x10030081,%eax
[ 	]*[a-f0-9]+:	81 d0 81 00 03 10    	adc    \$0x10030081,%eax
[ 	]*[a-f0-9]+:	81 c3 81 00 03 10    	add    \$0x10030081,%ebx
[ 	]*[a-f0-9]+:	81 e1 81 00 03 10    	and    \$0x10030081,%ecx
[ 	]*[a-f0-9]+:	81 fa 81 00 03 10    	cmp    \$0x10030081,%edx
[ 	]*[a-f0-9]+:	81 cf 81 00 03 10    	or     \$0x10030081,%edi
[ 	]*[a-f0-9]+:	81 de 81 00 03 10    	sbb    \$0x10030081,%esi
[ 	]*[a-f0-9]+:	81 ed 81 00 03 10    	sub    \$0x10030081,%ebp
[ 	]*[a-f0-9]+:	81 f4 81 00 03 10    	xor    \$0x10030081,%esp
[ 	]*[a-f0-9]+:	f7 c1 81 00 03 10    	test   \$0x10030081,%ecx
#pass

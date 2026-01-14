
vec_div.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fb40>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	4a002703          	lw	a4,1184(zero) # 4a0 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
  34:	4a002783          	lw	a5,1184(zero) # 4a0 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
  40:	00000013          	nop
  44:	01c12403          	lw	s0,28(sp)
  48:	02010113          	addi	sp,sp,32
  4c:	00008067          	ret

00000050 <printStr>:
  50:	fd010113          	addi	sp,sp,-48
  54:	02812623          	sw	s0,44(sp)
  58:	03010413          	addi	s0,sp,48
  5c:	fca42e23          	sw	a0,-36(s0)
  60:	fdc42783          	lw	a5,-36(s0)
  64:	fef42623          	sw	a5,-20(s0)
  68:	0340006f          	j	9c <printStr+0x4c>
  6c:	fec42783          	lw	a5,-20(s0)
  70:	0007c783          	lbu	a5,0(a5)
  74:	00078713          	mv	a4,a5
  78:	4a002783          	lw	a5,1184(zero) # 4a0 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
  84:	4a002783          	lw	a5,1184(zero) # 4a0 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
  90:	fec42783          	lw	a5,-20(s0)
  94:	00178793          	addi	a5,a5,1
  98:	fef42623          	sw	a5,-20(s0)
  9c:	fec42783          	lw	a5,-20(s0)
  a0:	0007c783          	lbu	a5,0(a5)
  a4:	fc0794e3          	bnez	a5,6c <printStr+0x1c>
  a8:	00000013          	nop
  ac:	00000013          	nop
  b0:	02c12403          	lw	s0,44(sp)
  b4:	03010113          	addi	sp,sp,48
  b8:	00008067          	ret

000000bc <main>:
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00112e23          	sw	ra,28(sp)
  c4:	00812c23          	sw	s0,24(sp)
  c8:	02010413          	addi	s0,sp,32
  cc:	fe042623          	sw	zero,-20(s0)
  d0:	0800006f          	j	150 <main+0x94>
  d4:	18000713          	li	a4,384
  d8:	fec42783          	lw	a5,-20(s0)
  dc:	00279793          	slli	a5,a5,0x2
  e0:	00f707b3          	add	a5,a4,a5
  e4:	0007a703          	lw	a4,0(a5)
  e8:	31000693          	li	a3,784
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	00279793          	slli	a5,a5,0x2
  f4:	00f687b3          	add	a5,a3,a5
  f8:	0007a783          	lw	a5,0(a5)
  fc:	02f747b3          	div	a5,a4,a5
 100:	fef42423          	sw	a5,-24(s0)
 104:	18000713          	li	a4,384
 108:	fec42783          	lw	a5,-20(s0)
 10c:	00279793          	slli	a5,a5,0x2
 110:	00f707b3          	add	a5,a4,a5
 114:	0007a703          	lw	a4,0(a5)
 118:	31000693          	li	a3,784
 11c:	fec42783          	lw	a5,-20(s0)
 120:	00279793          	slli	a5,a5,0x2
 124:	00f687b3          	add	a5,a3,a5
 128:	0007a783          	lw	a5,0(a5)
 12c:	02f767b3          	rem	a5,a4,a5
 130:	fef42223          	sw	a5,-28(s0)
 134:	fe842503          	lw	a0,-24(s0)
 138:	eddff0ef          	jal	14 <printInt>
 13c:	fe442503          	lw	a0,-28(s0)
 140:	ed5ff0ef          	jal	14 <printInt>
 144:	fec42783          	lw	a5,-20(s0)
 148:	00178793          	addi	a5,a5,1
 14c:	fef42623          	sw	a5,-20(s0)
 150:	fec42703          	lw	a4,-20(s0)
 154:	06300793          	li	a5,99
 158:	f6e7dee3          	bge	a5,a4,d4 <main+0x18>
 15c:	4a002703          	lw	a4,1184(zero) # 4a0 <judgeResult>
 160:	0fd00793          	li	a5,253
 164:	02f767b3          	rem	a5,a4,a5
 168:	00078513          	mv	a0,a5
 16c:	01c12083          	lw	ra,28(sp)
 170:	01812403          	lw	s0,24(sp)
 174:	02010113          	addi	sp,sp,32
 178:	00008067          	ret

Disassembly of section .rodata:

0000017c <Mod>:
 17c:	000000fd                                ....

Disassembly of section .data:

00000180 <input_data1>:
 180:	fffffcc3 fffffbac fffff0ed fffffafa     ................
 190:	000008d6 fffffc2e fffffd3e fffffd6a     ........>...j...
 1a0:	0000028c 00000340 000007da 0000008d     ....@...........
 1b0:	0000019d fffffe51 ffffff3c 00000b8b     ....Q...<.......
 1c0:	0000035a 00000273 ffffff46 fffff64f     Z...s...F...O...
 1d0:	fffffdb8 0000058c fffffbd1 fffff433     ............3...
 1e0:	00000174 00000211 00000abf fffffd2c     t...........,...
 1f0:	00000e05 fffff93a fffffdd0 fffffe70     ....:.......p...
 200:	fffffe92 fffff7b8 fffff894 00000574     ............t...
 210:	000008e0 00000013 fffffc1e 000005fe     ................
 220:	000001d6 ffffff08 fffffa3f fffff93f     ........?...?...
 230:	fffffccb 0000084b 00000391 0000066d     ....K.......m...
 240:	00000560 0000028a fffffd3d fffffee9     `.......=.......
 250:	fffff590 fffffb39 000002a4 fffffeb1     ....9...........
 260:	fffffd4d 00000440 fffff129 fffffbef     M...@...).......
 270:	00000369 fffff5af 0000006f fffffd6d     i.......o...m...
 280:	000004c0 fffff9b7 fffff90f 00000336     ............6...
 290:	fffffa1e fffffde4 fffffbb3 0000066e     ............n...
 2a0:	000001bb fffffd43 fffffdae fffffa41     ....C.......A...
 2b0:	0000017e 00000bbe fffffa53 00000136     ~.......S...6...
 2c0:	000006d2 000007f2 0000002d 00000117     ........-.......
 2d0:	00000baa 00000a3b 00000184 fffffcd9     ....;...........
 2e0:	fffffa9f 00000450 fffffbe4 fffffe3e     ....P.......>...
 2f0:	0000043d 0000058f fffff1d5 00000212     =...............
 300:	fffff41e fffffeab fffffd3f 00000513     ........?.......

00000310 <input_data2>:
 310:	ffffff3e 0000021f 000003c0 00000289     >...............
 320:	fffffdca 000003d3 fffffea2 000003e5     ................
 330:	0000028c 0000032e fffffd6f 00000050     ........o...P...
 340:	000000b5 000000d0 0000006f fffffc1a     ........o.......
 350:	0000035b 00000275 00000041 0000034f     [...u...A...O...
 360:	00000120 000002c0 00000160 fffffc1b      .......`.......
 370:	0000008d ffffff03 0000038a 000002cb     ................
 380:	fffffc8a 000001ae 00000108 0000019f     ................
 390:	0000023f 0000021a 000003d3 000002bc     ?...............
 3a0:	000002f9 00000002 000000f0 000001ee     ................
 3b0:	000001e0 ffffff9c fffffe0d fffffca0     ................
 3c0:	fffffe6d 000002b5 000000de 000001a0     m...............
 3d0:	000001bc 00000128 000002d1 0000011d     ....(...........
 3e0:	fffffd5f fffffd94 0000013d 0000004e     _.......=...N...
 3f0:	000000e0 fffffea1 000003a9 0000021c     ................
 400:	fffffee0 00000286 00000077 000000a9     ........w.......
 410:	00000267 fffffdf1 0000025e fffffedf     g.......^.......
 420:	00000185 0000031c 0000015f fffffcdf     ........_.......
 430:	000001c7 fffffd30 fffffeea 000002f6     ....0...........
 440:	0000016e fffffd17 fffffe9a 0000005c     n...........\...
 450:	00000248 000003e0 0000003e 0000010f     H.......>.......
 460:	fffffc27 fffffcab 00000193 00000314     '...............
 470:	0000015a fffffded 00000205 000000de     Z...............
 480:	0000022f 000001cd fffffc74 ffffff0f     /.......t.......
 490:	00000307 fffffe9a 000000ff fffffeb4     ................

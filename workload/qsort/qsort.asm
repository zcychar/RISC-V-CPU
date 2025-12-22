
qsort.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	270000ef          	jal	274 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <printInt>:
  10:	fe010113          	add	sp,sp,-32 # 1ffe0 <judgeResult+0x620c>
  14:	00812e23          	sw	s0,28(sp)
  18:	02010413          	add	s0,sp,32
  1c:	fea42623          	sw	a0,-20(s0)
  20:	0001a7b7          	lui	a5,0x1a
  24:	dd47a703          	lw	a4,-556(a5) # 19dd4 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	0001a7b7          	lui	a5,0x1a
  34:	dce7aa23          	sw	a4,-556(a5) # 19dd4 <judgeResult>
  38:	0001a7b7          	lui	a5,0x1a
  3c:	dd47a783          	lw	a5,-556(a5) # 19dd4 <judgeResult>
  40:	0ad78713          	add	a4,a5,173
  44:	0001a7b7          	lui	a5,0x1a
  48:	dce7aa23          	sw	a4,-556(a5) # 19dd4 <judgeResult>
  4c:	00000013          	nop
  50:	01c12403          	lw	s0,28(sp)
  54:	02010113          	add	sp,sp,32
  58:	00008067          	ret

0000005c <printStr>:
  5c:	fd010113          	add	sp,sp,-48
  60:	02812623          	sw	s0,44(sp)
  64:	03010413          	add	s0,sp,48
  68:	fca42e23          	sw	a0,-36(s0)
  6c:	fdc42783          	lw	a5,-36(s0)
  70:	fef42623          	sw	a5,-20(s0)
  74:	0440006f          	j	b8 <printStr+0x5c>
  78:	fec42783          	lw	a5,-20(s0)
  7c:	0007c783          	lbu	a5,0(a5)
  80:	00078713          	mv	a4,a5
  84:	0001a7b7          	lui	a5,0x1a
  88:	dd47a783          	lw	a5,-556(a5) # 19dd4 <judgeResult>
  8c:	00f74733          	xor	a4,a4,a5
  90:	0001a7b7          	lui	a5,0x1a
  94:	dce7aa23          	sw	a4,-556(a5) # 19dd4 <judgeResult>
  98:	0001a7b7          	lui	a5,0x1a
  9c:	dd47a783          	lw	a5,-556(a5) # 19dd4 <judgeResult>
  a0:	20978713          	add	a4,a5,521
  a4:	0001a7b7          	lui	a5,0x1a
  a8:	dce7aa23          	sw	a4,-556(a5) # 19dd4 <judgeResult>
  ac:	fec42783          	lw	a5,-20(s0)
  b0:	00178793          	add	a5,a5,1
  b4:	fef42623          	sw	a5,-20(s0)
  b8:	fec42783          	lw	a5,-20(s0)
  bc:	0007c783          	lbu	a5,0(a5)
  c0:	fa079ce3          	bnez	a5,78 <printStr+0x1c>
  c4:	00000013          	nop
  c8:	00000013          	nop
  cc:	02c12403          	lw	s0,44(sp)
  d0:	03010113          	add	sp,sp,48
  d4:	00008067          	ret

000000d8 <qsrt>:
  d8:	fd010113          	add	sp,sp,-48
  dc:	02112623          	sw	ra,44(sp)
  e0:	02812423          	sw	s0,40(sp)
  e4:	03010413          	add	s0,sp,48
  e8:	fca42e23          	sw	a0,-36(s0)
  ec:	fcb42c23          	sw	a1,-40(s0)
  f0:	fdc42783          	lw	a5,-36(s0)
  f4:	fef42623          	sw	a5,-20(s0)
  f8:	fd842783          	lw	a5,-40(s0)
  fc:	fef42423          	sw	a5,-24(s0)
 100:	fdc42703          	lw	a4,-36(s0)
 104:	fd842783          	lw	a5,-40(s0)
 108:	00f707b3          	add	a5,a4,a5
 10c:	01f7d713          	srl	a4,a5,0x1f
 110:	00f707b3          	add	a5,a4,a5
 114:	4017d793          	sra	a5,a5,0x1
 118:	00078693          	mv	a3,a5
 11c:	000107b7          	lui	a5,0x10
 120:	00478713          	add	a4,a5,4 # 10004 <a>
 124:	00269793          	sll	a5,a3,0x2
 128:	00f707b3          	add	a5,a4,a5
 12c:	0007a783          	lw	a5,0(a5)
 130:	fef42223          	sw	a5,-28(s0)
 134:	0ec0006f          	j	220 <qsrt+0x148>
 138:	fec42783          	lw	a5,-20(s0)
 13c:	00178793          	add	a5,a5,1
 140:	fef42623          	sw	a5,-20(s0)
 144:	000107b7          	lui	a5,0x10
 148:	00478713          	add	a4,a5,4 # 10004 <a>
 14c:	fec42783          	lw	a5,-20(s0)
 150:	00279793          	sll	a5,a5,0x2
 154:	00f707b3          	add	a5,a4,a5
 158:	0007a783          	lw	a5,0(a5)
 15c:	fe442703          	lw	a4,-28(s0)
 160:	fce7cce3          	blt	a5,a4,138 <qsrt+0x60>
 164:	0100006f          	j	174 <qsrt+0x9c>
 168:	fe842783          	lw	a5,-24(s0)
 16c:	fff78793          	add	a5,a5,-1
 170:	fef42423          	sw	a5,-24(s0)
 174:	000107b7          	lui	a5,0x10
 178:	00478713          	add	a4,a5,4 # 10004 <a>
 17c:	fe842783          	lw	a5,-24(s0)
 180:	00279793          	sll	a5,a5,0x2
 184:	00f707b3          	add	a5,a4,a5
 188:	0007a783          	lw	a5,0(a5)
 18c:	fe442703          	lw	a4,-28(s0)
 190:	fcf74ce3          	blt	a4,a5,168 <qsrt+0x90>
 194:	fec42703          	lw	a4,-20(s0)
 198:	fe842783          	lw	a5,-24(s0)
 19c:	08e7c263          	blt	a5,a4,220 <qsrt+0x148>
 1a0:	000107b7          	lui	a5,0x10
 1a4:	00478713          	add	a4,a5,4 # 10004 <a>
 1a8:	fec42783          	lw	a5,-20(s0)
 1ac:	00279793          	sll	a5,a5,0x2
 1b0:	00f707b3          	add	a5,a4,a5
 1b4:	0007a783          	lw	a5,0(a5)
 1b8:	fef42023          	sw	a5,-32(s0)
 1bc:	000107b7          	lui	a5,0x10
 1c0:	00478713          	add	a4,a5,4 # 10004 <a>
 1c4:	fe842783          	lw	a5,-24(s0)
 1c8:	00279793          	sll	a5,a5,0x2
 1cc:	00f707b3          	add	a5,a4,a5
 1d0:	0007a703          	lw	a4,0(a5)
 1d4:	000107b7          	lui	a5,0x10
 1d8:	00478693          	add	a3,a5,4 # 10004 <a>
 1dc:	fec42783          	lw	a5,-20(s0)
 1e0:	00279793          	sll	a5,a5,0x2
 1e4:	00f687b3          	add	a5,a3,a5
 1e8:	00e7a023          	sw	a4,0(a5)
 1ec:	000107b7          	lui	a5,0x10
 1f0:	00478713          	add	a4,a5,4 # 10004 <a>
 1f4:	fe842783          	lw	a5,-24(s0)
 1f8:	00279793          	sll	a5,a5,0x2
 1fc:	00f707b3          	add	a5,a4,a5
 200:	fe042703          	lw	a4,-32(s0)
 204:	00e7a023          	sw	a4,0(a5)
 208:	fec42783          	lw	a5,-20(s0)
 20c:	00178793          	add	a5,a5,1
 210:	fef42623          	sw	a5,-20(s0)
 214:	fe842783          	lw	a5,-24(s0)
 218:	fff78793          	add	a5,a5,-1
 21c:	fef42423          	sw	a5,-24(s0)
 220:	fec42703          	lw	a4,-20(s0)
 224:	fe842783          	lw	a5,-24(s0)
 228:	f0e7dee3          	bge	a5,a4,144 <qsrt+0x6c>
 22c:	fdc42703          	lw	a4,-36(s0)
 230:	fe842783          	lw	a5,-24(s0)
 234:	00f75863          	bge	a4,a5,244 <qsrt+0x16c>
 238:	fe842583          	lw	a1,-24(s0)
 23c:	fdc42503          	lw	a0,-36(s0)
 240:	e99ff0ef          	jal	d8 <qsrt>
 244:	fec42703          	lw	a4,-20(s0)
 248:	fd842783          	lw	a5,-40(s0)
 24c:	00f75863          	bge	a4,a5,25c <qsrt+0x184>
 250:	fd842583          	lw	a1,-40(s0)
 254:	fec42503          	lw	a0,-20(s0)
 258:	e81ff0ef          	jal	d8 <qsrt>
 25c:	00000793          	li	a5,0
 260:	00078513          	mv	a0,a5
 264:	02c12083          	lw	ra,44(sp)
 268:	02812403          	lw	s0,40(sp)
 26c:	03010113          	add	sp,sp,48
 270:	00008067          	ret

00000274 <main>:
 274:	fe010113          	add	sp,sp,-32
 278:	00112e23          	sw	ra,28(sp)
 27c:	00812c23          	sw	s0,24(sp)
 280:	02010413          	add	s0,sp,32
 284:	00100793          	li	a5,1
 288:	fef42623          	sw	a5,-20(s0)
 28c:	03c0006f          	j	2c8 <main+0x54>
 290:	000107b7          	lui	a5,0x10
 294:	0007a783          	lw	a5,0(a5) # 10000 <n>
 298:	00178713          	add	a4,a5,1
 29c:	fec42783          	lw	a5,-20(s0)
 2a0:	40f70733          	sub	a4,a4,a5
 2a4:	000107b7          	lui	a5,0x10
 2a8:	00478693          	add	a3,a5,4 # 10004 <a>
 2ac:	fec42783          	lw	a5,-20(s0)
 2b0:	00279793          	sll	a5,a5,0x2
 2b4:	00f687b3          	add	a5,a3,a5
 2b8:	00e7a023          	sw	a4,0(a5)
 2bc:	fec42783          	lw	a5,-20(s0)
 2c0:	00178793          	add	a5,a5,1
 2c4:	fef42623          	sw	a5,-20(s0)
 2c8:	000107b7          	lui	a5,0x10
 2cc:	0007a783          	lw	a5,0(a5) # 10000 <n>
 2d0:	fec42703          	lw	a4,-20(s0)
 2d4:	fae7dee3          	bge	a5,a4,290 <main+0x1c>
 2d8:	000107b7          	lui	a5,0x10
 2dc:	0007a783          	lw	a5,0(a5) # 10000 <n>
 2e0:	00078593          	mv	a1,a5
 2e4:	00100513          	li	a0,1
 2e8:	df1ff0ef          	jal	d8 <qsrt>
 2ec:	00100793          	li	a5,1
 2f0:	fef42623          	sw	a5,-20(s0)
 2f4:	0380006f          	j	32c <main+0xb8>
 2f8:	000107b7          	lui	a5,0x10
 2fc:	00478713          	add	a4,a5,4 # 10004 <a>
 300:	fec42783          	lw	a5,-20(s0)
 304:	00279793          	sll	a5,a5,0x2
 308:	00f707b3          	add	a5,a4,a5
 30c:	0007a783          	lw	a5,0(a5)
 310:	00078513          	mv	a0,a5
 314:	cfdff0ef          	jal	10 <printInt>
 318:	42c00513          	li	a0,1068
 31c:	d41ff0ef          	jal	5c <printStr>
 320:	fec42783          	lw	a5,-20(s0)
 324:	00178793          	add	a5,a5,1
 328:	fef42623          	sw	a5,-20(s0)
 32c:	000107b7          	lui	a5,0x10
 330:	0007a783          	lw	a5,0(a5) # 10000 <n>
 334:	fec42703          	lw	a4,-20(s0)
 338:	fce7d0e3          	bge	a5,a4,2f8 <main+0x84>
 33c:	43000513          	li	a0,1072
 340:	d1dff0ef          	jal	5c <printStr>
 344:	0001a7b7          	lui	a5,0x1a
 348:	dd47a783          	lw	a5,-556(a5) # 19dd4 <judgeResult>
 34c:	0fd00713          	li	a4,253
 350:	00070593          	mv	a1,a4
 354:	00078513          	mv	a0,a5
 358:	0a0000ef          	jal	3f8 <__modsi3>
 35c:	00050793          	mv	a5,a0
 360:	00078513          	mv	a0,a5
 364:	01c12083          	lw	ra,28(sp)
 368:	01812403          	lw	s0,24(sp)
 36c:	02010113          	add	sp,sp,32
 370:	00008067          	ret

00000374 <__divsi3>:
 374:	06054063          	bltz	a0,3d4 <__umodsi3+0x10>
 378:	0605c663          	bltz	a1,3e4 <__umodsi3+0x20>

0000037c <__hidden___udivsi3>:
 37c:	00058613          	mv	a2,a1
 380:	00050593          	mv	a1,a0
 384:	fff00513          	li	a0,-1
 388:	02060c63          	beqz	a2,3c0 <__hidden___udivsi3+0x44>
 38c:	00100693          	li	a3,1
 390:	00b67a63          	bgeu	a2,a1,3a4 <__hidden___udivsi3+0x28>
 394:	00c05863          	blez	a2,3a4 <__hidden___udivsi3+0x28>
 398:	00161613          	sll	a2,a2,0x1
 39c:	00169693          	sll	a3,a3,0x1
 3a0:	feb66ae3          	bltu	a2,a1,394 <__hidden___udivsi3+0x18>
 3a4:	00000513          	li	a0,0
 3a8:	00c5e663          	bltu	a1,a2,3b4 <__hidden___udivsi3+0x38>
 3ac:	40c585b3          	sub	a1,a1,a2
 3b0:	00d56533          	or	a0,a0,a3
 3b4:	0016d693          	srl	a3,a3,0x1
 3b8:	00165613          	srl	a2,a2,0x1
 3bc:	fe0696e3          	bnez	a3,3a8 <__hidden___udivsi3+0x2c>
 3c0:	00008067          	ret

000003c4 <__umodsi3>:
 3c4:	00008293          	mv	t0,ra
 3c8:	fb5ff0ef          	jal	37c <__hidden___udivsi3>
 3cc:	00058513          	mv	a0,a1
 3d0:	00028067          	jr	t0
 3d4:	40a00533          	neg	a0,a0
 3d8:	00b04863          	bgtz	a1,3e8 <__umodsi3+0x24>
 3dc:	40b005b3          	neg	a1,a1
 3e0:	f9dff06f          	j	37c <__hidden___udivsi3>
 3e4:	40b005b3          	neg	a1,a1
 3e8:	00008293          	mv	t0,ra
 3ec:	f91ff0ef          	jal	37c <__hidden___udivsi3>
 3f0:	40a00533          	neg	a0,a0
 3f4:	00028067          	jr	t0

000003f8 <__modsi3>:
 3f8:	00008293          	mv	t0,ra
 3fc:	0005ca63          	bltz	a1,410 <__modsi3+0x18>
 400:	00054c63          	bltz	a0,418 <__modsi3+0x20>
 404:	f79ff0ef          	jal	37c <__hidden___udivsi3>
 408:	00058513          	mv	a0,a1
 40c:	00028067          	jr	t0
 410:	40b005b3          	neg	a1,a1
 414:	fe0558e3          	bgez	a0,404 <__modsi3+0xc>
 418:	40a00533          	neg	a0,a0
 41c:	f61ff0ef          	jal	37c <__hidden___udivsi3>
 420:	40b00533          	neg	a0,a1
 424:	00028067          	jr	t0

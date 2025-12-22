
queens.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	3c0000ef          	jal	3c4 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <printInt>:
  10:	fe010113          	add	sp,sp,-32 # 1ffe0 <judgeResult+0xff1c>
  14:	00812e23          	sw	s0,28(sp)
  18:	02010413          	add	s0,sp,32
  1c:	fea42623          	sw	a0,-20(s0)
  20:	000107b7          	lui	a5,0x10
  24:	0c47a703          	lw	a4,196(a5) # 100c4 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	000107b7          	lui	a5,0x10
  34:	0ce7a223          	sw	a4,196(a5) # 100c4 <judgeResult>
  38:	000107b7          	lui	a5,0x10
  3c:	0c47a783          	lw	a5,196(a5) # 100c4 <judgeResult>
  40:	0ad78713          	add	a4,a5,173
  44:	000107b7          	lui	a5,0x10
  48:	0ce7a223          	sw	a4,196(a5) # 100c4 <judgeResult>
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
  84:	000107b7          	lui	a5,0x10
  88:	0c47a783          	lw	a5,196(a5) # 100c4 <judgeResult>
  8c:	00f74733          	xor	a4,a4,a5
  90:	000107b7          	lui	a5,0x10
  94:	0ce7a223          	sw	a4,196(a5) # 100c4 <judgeResult>
  98:	000107b7          	lui	a5,0x10
  9c:	0c47a783          	lw	a5,196(a5) # 100c4 <judgeResult>
  a0:	20978713          	add	a4,a5,521
  a4:	000107b7          	lui	a5,0x10
  a8:	0ce7a223          	sw	a4,196(a5) # 100c4 <judgeResult>
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

000000d8 <printBoard>:
  d8:	fe010113          	add	sp,sp,-32
  dc:	00112e23          	sw	ra,28(sp)
  e0:	00812c23          	sw	s0,24(sp)
  e4:	02010413          	add	s0,sp,32
  e8:	fe042623          	sw	zero,-20(s0)
  ec:	0700006f          	j	15c <printBoard+0x84>
  f0:	fe042423          	sw	zero,-24(s0)
  f4:	0440006f          	j	138 <printBoard+0x60>
  f8:	000107b7          	lui	a5,0x10
  fc:	02478713          	add	a4,a5,36 # 10024 <col>
 100:	fec42783          	lw	a5,-20(s0)
 104:	00279793          	sll	a5,a5,0x2
 108:	00f707b3          	add	a5,a4,a5
 10c:	0007a783          	lw	a5,0(a5)
 110:	fe842703          	lw	a4,-24(s0)
 114:	00f71863          	bne	a4,a5,124 <printBoard+0x4c>
 118:	4c400513          	li	a0,1220
 11c:	f41ff0ef          	jal	5c <printStr>
 120:	00c0006f          	j	12c <printBoard+0x54>
 124:	4c800513          	li	a0,1224
 128:	f35ff0ef          	jal	5c <printStr>
 12c:	fe842783          	lw	a5,-24(s0)
 130:	00178793          	add	a5,a5,1
 134:	fef42423          	sw	a5,-24(s0)
 138:	000107b7          	lui	a5,0x10
 13c:	0007a783          	lw	a5,0(a5) # 10000 <N>
 140:	fe842703          	lw	a4,-24(s0)
 144:	faf74ae3          	blt	a4,a5,f8 <printBoard+0x20>
 148:	4cc00513          	li	a0,1228
 14c:	f11ff0ef          	jal	5c <printStr>
 150:	fec42783          	lw	a5,-20(s0)
 154:	00178793          	add	a5,a5,1
 158:	fef42623          	sw	a5,-20(s0)
 15c:	000107b7          	lui	a5,0x10
 160:	0007a783          	lw	a5,0(a5) # 10000 <N>
 164:	fec42703          	lw	a4,-20(s0)
 168:	f8f744e3          	blt	a4,a5,f0 <printBoard+0x18>
 16c:	4cc00513          	li	a0,1228
 170:	eedff0ef          	jal	5c <printStr>
 174:	00000013          	nop
 178:	01c12083          	lw	ra,28(sp)
 17c:	01812403          	lw	s0,24(sp)
 180:	02010113          	add	sp,sp,32
 184:	00008067          	ret

00000188 <search>:
 188:	fd010113          	add	sp,sp,-48
 18c:	02112623          	sw	ra,44(sp)
 190:	02812423          	sw	s0,40(sp)
 194:	03010413          	add	s0,sp,48
 198:	fca42e23          	sw	a0,-36(s0)
 19c:	000107b7          	lui	a5,0x10
 1a0:	0007a783          	lw	a5,0(a5) # 10000 <N>
 1a4:	fdc42703          	lw	a4,-36(s0)
 1a8:	00f71663          	bne	a4,a5,1b4 <search+0x2c>
 1ac:	f2dff0ef          	jal	d8 <printBoard>
 1b0:	2000006f          	j	3b0 <search+0x228>
 1b4:	fe042623          	sw	zero,-20(s0)
 1b8:	1e80006f          	j	3a0 <search+0x218>
 1bc:	000107b7          	lui	a5,0x10
 1c0:	00478713          	add	a4,a5,4 # 10004 <row>
 1c4:	fec42783          	lw	a5,-20(s0)
 1c8:	00279793          	sll	a5,a5,0x2
 1cc:	00f707b3          	add	a5,a4,a5
 1d0:	0007a783          	lw	a5,0(a5)
 1d4:	1c079063          	bnez	a5,394 <search+0x20c>
 1d8:	fec42703          	lw	a4,-20(s0)
 1dc:	fdc42783          	lw	a5,-36(s0)
 1e0:	00f707b3          	add	a5,a4,a5
 1e4:	00010737          	lui	a4,0x10
 1e8:	04470713          	add	a4,a4,68 # 10044 <d>
 1ec:	00279793          	sll	a5,a5,0x2
 1f0:	00f707b3          	add	a5,a4,a5
 1f4:	0007a783          	lw	a5,0(a5)
 1f8:	18079e63          	bnez	a5,394 <search+0x20c>
 1fc:	000107b7          	lui	a5,0x10
 200:	0007a703          	lw	a4,0(a5) # 10000 <N>
 204:	fec42783          	lw	a5,-20(s0)
 208:	00f707b3          	add	a5,a4,a5
 20c:	fff78713          	add	a4,a5,-1
 210:	fdc42783          	lw	a5,-36(s0)
 214:	40f707b3          	sub	a5,a4,a5
 218:	00010737          	lui	a4,0x10
 21c:	04470713          	add	a4,a4,68 # 10044 <d>
 220:	01078793          	add	a5,a5,16
 224:	00279793          	sll	a5,a5,0x2
 228:	00f707b3          	add	a5,a4,a5
 22c:	0007a783          	lw	a5,0(a5)
 230:	16079263          	bnez	a5,394 <search+0x20c>
 234:	000107b7          	lui	a5,0x10
 238:	0007a703          	lw	a4,0(a5) # 10000 <N>
 23c:	fec42783          	lw	a5,-20(s0)
 240:	00f707b3          	add	a5,a4,a5
 244:	fff78713          	add	a4,a5,-1
 248:	fdc42783          	lw	a5,-36(s0)
 24c:	40f70733          	sub	a4,a4,a5
 250:	000107b7          	lui	a5,0x10
 254:	04478693          	add	a3,a5,68 # 10044 <d>
 258:	01070793          	add	a5,a4,16
 25c:	00279793          	sll	a5,a5,0x2
 260:	00f687b3          	add	a5,a3,a5
 264:	00100693          	li	a3,1
 268:	00d7a023          	sw	a3,0(a5)
 26c:	fec42683          	lw	a3,-20(s0)
 270:	fdc42783          	lw	a5,-36(s0)
 274:	00f687b3          	add	a5,a3,a5
 278:	000106b7          	lui	a3,0x10
 27c:	04468693          	add	a3,a3,68 # 10044 <d>
 280:	01070713          	add	a4,a4,16
 284:	00271713          	sll	a4,a4,0x2
 288:	00e68733          	add	a4,a3,a4
 28c:	00072683          	lw	a3,0(a4)
 290:	00010737          	lui	a4,0x10
 294:	04470613          	add	a2,a4,68 # 10044 <d>
 298:	00279713          	sll	a4,a5,0x2
 29c:	00e60733          	add	a4,a2,a4
 2a0:	00d72023          	sw	a3,0(a4)
 2a4:	00010737          	lui	a4,0x10
 2a8:	04470713          	add	a4,a4,68 # 10044 <d>
 2ac:	00279793          	sll	a5,a5,0x2
 2b0:	00f707b3          	add	a5,a4,a5
 2b4:	0007a703          	lw	a4,0(a5)
 2b8:	000107b7          	lui	a5,0x10
 2bc:	00478693          	add	a3,a5,4 # 10004 <row>
 2c0:	fec42783          	lw	a5,-20(s0)
 2c4:	00279793          	sll	a5,a5,0x2
 2c8:	00f687b3          	add	a5,a3,a5
 2cc:	00e7a023          	sw	a4,0(a5)
 2d0:	000107b7          	lui	a5,0x10
 2d4:	02478713          	add	a4,a5,36 # 10024 <col>
 2d8:	fdc42783          	lw	a5,-36(s0)
 2dc:	00279793          	sll	a5,a5,0x2
 2e0:	00f707b3          	add	a5,a4,a5
 2e4:	fec42703          	lw	a4,-20(s0)
 2e8:	00e7a023          	sw	a4,0(a5)
 2ec:	fdc42783          	lw	a5,-36(s0)
 2f0:	00178793          	add	a5,a5,1
 2f4:	00078513          	mv	a0,a5
 2f8:	e91ff0ef          	jal	188 <search>
 2fc:	000107b7          	lui	a5,0x10
 300:	0007a703          	lw	a4,0(a5) # 10000 <N>
 304:	fec42783          	lw	a5,-20(s0)
 308:	00f707b3          	add	a5,a4,a5
 30c:	fff78713          	add	a4,a5,-1
 310:	fdc42783          	lw	a5,-36(s0)
 314:	40f70733          	sub	a4,a4,a5
 318:	000107b7          	lui	a5,0x10
 31c:	04478693          	add	a3,a5,68 # 10044 <d>
 320:	01070793          	add	a5,a4,16
 324:	00279793          	sll	a5,a5,0x2
 328:	00f687b3          	add	a5,a3,a5
 32c:	0007a023          	sw	zero,0(a5)
 330:	fec42683          	lw	a3,-20(s0)
 334:	fdc42783          	lw	a5,-36(s0)
 338:	00f687b3          	add	a5,a3,a5
 33c:	000106b7          	lui	a3,0x10
 340:	04468693          	add	a3,a3,68 # 10044 <d>
 344:	01070713          	add	a4,a4,16
 348:	00271713          	sll	a4,a4,0x2
 34c:	00e68733          	add	a4,a3,a4
 350:	00072683          	lw	a3,0(a4)
 354:	00010737          	lui	a4,0x10
 358:	04470613          	add	a2,a4,68 # 10044 <d>
 35c:	00279713          	sll	a4,a5,0x2
 360:	00e60733          	add	a4,a2,a4
 364:	00d72023          	sw	a3,0(a4)
 368:	00010737          	lui	a4,0x10
 36c:	04470713          	add	a4,a4,68 # 10044 <d>
 370:	00279793          	sll	a5,a5,0x2
 374:	00f707b3          	add	a5,a4,a5
 378:	0007a703          	lw	a4,0(a5)
 37c:	000107b7          	lui	a5,0x10
 380:	00478693          	add	a3,a5,4 # 10004 <row>
 384:	fec42783          	lw	a5,-20(s0)
 388:	00279793          	sll	a5,a5,0x2
 38c:	00f687b3          	add	a5,a3,a5
 390:	00e7a023          	sw	a4,0(a5)
 394:	fec42783          	lw	a5,-20(s0)
 398:	00178793          	add	a5,a5,1
 39c:	fef42623          	sw	a5,-20(s0)
 3a0:	000107b7          	lui	a5,0x10
 3a4:	0007a783          	lw	a5,0(a5) # 10000 <N>
 3a8:	fec42703          	lw	a4,-20(s0)
 3ac:	e0f748e3          	blt	a4,a5,1bc <search+0x34>
 3b0:	00000013          	nop
 3b4:	02c12083          	lw	ra,44(sp)
 3b8:	02812403          	lw	s0,40(sp)
 3bc:	03010113          	add	sp,sp,48
 3c0:	00008067          	ret

000003c4 <main>:
 3c4:	ff010113          	add	sp,sp,-16
 3c8:	00112623          	sw	ra,12(sp)
 3cc:	00812423          	sw	s0,8(sp)
 3d0:	01010413          	add	s0,sp,16
 3d4:	00000513          	li	a0,0
 3d8:	db1ff0ef          	jal	188 <search>
 3dc:	000107b7          	lui	a5,0x10
 3e0:	0c47a783          	lw	a5,196(a5) # 100c4 <judgeResult>
 3e4:	0fd00713          	li	a4,253
 3e8:	00070593          	mv	a1,a4
 3ec:	00078513          	mv	a0,a5
 3f0:	0a0000ef          	jal	490 <__modsi3>
 3f4:	00050793          	mv	a5,a0
 3f8:	00078513          	mv	a0,a5
 3fc:	00c12083          	lw	ra,12(sp)
 400:	00812403          	lw	s0,8(sp)
 404:	01010113          	add	sp,sp,16
 408:	00008067          	ret

0000040c <__divsi3>:
 40c:	06054063          	bltz	a0,46c <__umodsi3+0x10>
 410:	0605c663          	bltz	a1,47c <__umodsi3+0x20>

00000414 <__hidden___udivsi3>:
 414:	00058613          	mv	a2,a1
 418:	00050593          	mv	a1,a0
 41c:	fff00513          	li	a0,-1
 420:	02060c63          	beqz	a2,458 <__hidden___udivsi3+0x44>
 424:	00100693          	li	a3,1
 428:	00b67a63          	bgeu	a2,a1,43c <__hidden___udivsi3+0x28>
 42c:	00c05863          	blez	a2,43c <__hidden___udivsi3+0x28>
 430:	00161613          	sll	a2,a2,0x1
 434:	00169693          	sll	a3,a3,0x1
 438:	feb66ae3          	bltu	a2,a1,42c <__hidden___udivsi3+0x18>
 43c:	00000513          	li	a0,0
 440:	00c5e663          	bltu	a1,a2,44c <__hidden___udivsi3+0x38>
 444:	40c585b3          	sub	a1,a1,a2
 448:	00d56533          	or	a0,a0,a3
 44c:	0016d693          	srl	a3,a3,0x1
 450:	00165613          	srl	a2,a2,0x1
 454:	fe0696e3          	bnez	a3,440 <__hidden___udivsi3+0x2c>
 458:	00008067          	ret

0000045c <__umodsi3>:
 45c:	00008293          	mv	t0,ra
 460:	fb5ff0ef          	jal	414 <__hidden___udivsi3>
 464:	00058513          	mv	a0,a1
 468:	00028067          	jr	t0
 46c:	40a00533          	neg	a0,a0
 470:	00b04863          	bgtz	a1,480 <__umodsi3+0x24>
 474:	40b005b3          	neg	a1,a1
 478:	f9dff06f          	j	414 <__hidden___udivsi3>
 47c:	40b005b3          	neg	a1,a1
 480:	00008293          	mv	t0,ra
 484:	f91ff0ef          	jal	414 <__hidden___udivsi3>
 488:	40a00533          	neg	a0,a0
 48c:	00028067          	jr	t0

00000490 <__modsi3>:
 490:	00008293          	mv	t0,ra
 494:	0005ca63          	bltz	a1,4a8 <__modsi3+0x18>
 498:	00054c63          	bltz	a0,4b0 <__modsi3+0x20>
 49c:	f79ff0ef          	jal	414 <__hidden___udivsi3>
 4a0:	00058513          	mv	a0,a1
 4a4:	00028067          	jr	t0
 4a8:	40b005b3          	neg	a1,a1
 4ac:	fe0558e3          	bgez	a0,49c <__modsi3+0xc>
 4b0:	40a00533          	neg	a0,a0
 4b4:	f61ff0ef          	jal	414 <__hidden___udivsi3>
 4b8:	40b00533          	neg	a0,a1
 4bc:	00028067          	jr	t0

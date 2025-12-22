
superloop.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0d4000ef          	jal	d8 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <printInt>:
  10:	fe010113          	add	sp,sp,-32 # 1ffe0 <total+0xffc8>
  14:	00812e23          	sw	s0,28(sp)
  18:	02010413          	add	s0,sp,32
  1c:	fea42623          	sw	a0,-20(s0)
  20:	000107b7          	lui	a5,0x10
  24:	0107a703          	lw	a4,16(a5) # 10010 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	000107b7          	lui	a5,0x10
  34:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
  38:	000107b7          	lui	a5,0x10
  3c:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
  40:	0ad78713          	add	a4,a5,173
  44:	000107b7          	lui	a5,0x10
  48:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
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
  88:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
  8c:	00f74733          	xor	a4,a4,a5
  90:	000107b7          	lui	a5,0x10
  94:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
  98:	000107b7          	lui	a5,0x10
  9c:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
  a0:	20978713          	add	a4,a5,521
  a4:	000107b7          	lui	a5,0x10
  a8:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
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

000000d8 <main>:
  d8:	fd010113          	add	sp,sp,-48
  dc:	02112623          	sw	ra,44(sp)
  e0:	02812423          	sw	s0,40(sp)
  e4:	03010413          	add	s0,sp,48
  e8:	000107b7          	lui	a5,0x10
  ec:	00600713          	li	a4,6
  f0:	00e7aa23          	sw	a4,20(a5) # 10014 <N>
  f4:	00100793          	li	a5,1
  f8:	fef42623          	sw	a5,-20(s0)
  fc:	3480006f          	j	444 <main+0x36c>
 100:	00100793          	li	a5,1
 104:	fef42423          	sw	a5,-24(s0)
 108:	3200006f          	j	428 <main+0x350>
 10c:	00100793          	li	a5,1
 110:	fef42223          	sw	a5,-28(s0)
 114:	2f80006f          	j	40c <main+0x334>
 118:	00100793          	li	a5,1
 11c:	fef42023          	sw	a5,-32(s0)
 120:	2d00006f          	j	3f0 <main+0x318>
 124:	00100793          	li	a5,1
 128:	fcf42e23          	sw	a5,-36(s0)
 12c:	2a80006f          	j	3d4 <main+0x2fc>
 130:	00100793          	li	a5,1
 134:	fcf42c23          	sw	a5,-40(s0)
 138:	2800006f          	j	3b8 <main+0x2e0>
 13c:	fec42703          	lw	a4,-20(s0)
 140:	fe842783          	lw	a5,-24(s0)
 144:	26f70463          	beq	a4,a5,3ac <main+0x2d4>
 148:	fec42703          	lw	a4,-20(s0)
 14c:	fe442783          	lw	a5,-28(s0)
 150:	24f70e63          	beq	a4,a5,3ac <main+0x2d4>
 154:	fec42703          	lw	a4,-20(s0)
 158:	fe042783          	lw	a5,-32(s0)
 15c:	24f70863          	beq	a4,a5,3ac <main+0x2d4>
 160:	fec42703          	lw	a4,-20(s0)
 164:	fdc42783          	lw	a5,-36(s0)
 168:	24f70263          	beq	a4,a5,3ac <main+0x2d4>
 16c:	fec42703          	lw	a4,-20(s0)
 170:	fd842783          	lw	a5,-40(s0)
 174:	22f70c63          	beq	a4,a5,3ac <main+0x2d4>
 178:	000107b7          	lui	a5,0x10
 17c:	0007a783          	lw	a5,0(a5) # 10000 <h>
 180:	fec42703          	lw	a4,-20(s0)
 184:	22f70463          	beq	a4,a5,3ac <main+0x2d4>
 188:	000107b7          	lui	a5,0x10
 18c:	0047a783          	lw	a5,4(a5) # 10004 <i>
 190:	fec42703          	lw	a4,-20(s0)
 194:	20f70c63          	beq	a4,a5,3ac <main+0x2d4>
 198:	000107b7          	lui	a5,0x10
 19c:	0087a783          	lw	a5,8(a5) # 10008 <j>
 1a0:	fec42703          	lw	a4,-20(s0)
 1a4:	20f70463          	beq	a4,a5,3ac <main+0x2d4>
 1a8:	000107b7          	lui	a5,0x10
 1ac:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 1b0:	fec42703          	lw	a4,-20(s0)
 1b4:	1ef70c63          	beq	a4,a5,3ac <main+0x2d4>
 1b8:	fe842703          	lw	a4,-24(s0)
 1bc:	fe442783          	lw	a5,-28(s0)
 1c0:	1ef70663          	beq	a4,a5,3ac <main+0x2d4>
 1c4:	fe842703          	lw	a4,-24(s0)
 1c8:	fe042783          	lw	a5,-32(s0)
 1cc:	1ef70063          	beq	a4,a5,3ac <main+0x2d4>
 1d0:	fe842703          	lw	a4,-24(s0)
 1d4:	fdc42783          	lw	a5,-36(s0)
 1d8:	1cf70a63          	beq	a4,a5,3ac <main+0x2d4>
 1dc:	fe842703          	lw	a4,-24(s0)
 1e0:	fd842783          	lw	a5,-40(s0)
 1e4:	1cf70463          	beq	a4,a5,3ac <main+0x2d4>
 1e8:	000107b7          	lui	a5,0x10
 1ec:	0007a783          	lw	a5,0(a5) # 10000 <h>
 1f0:	fe842703          	lw	a4,-24(s0)
 1f4:	1af70c63          	beq	a4,a5,3ac <main+0x2d4>
 1f8:	000107b7          	lui	a5,0x10
 1fc:	0047a783          	lw	a5,4(a5) # 10004 <i>
 200:	fe842703          	lw	a4,-24(s0)
 204:	1af70463          	beq	a4,a5,3ac <main+0x2d4>
 208:	000107b7          	lui	a5,0x10
 20c:	0087a783          	lw	a5,8(a5) # 10008 <j>
 210:	fe842703          	lw	a4,-24(s0)
 214:	18f70c63          	beq	a4,a5,3ac <main+0x2d4>
 218:	000107b7          	lui	a5,0x10
 21c:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 220:	fe842703          	lw	a4,-24(s0)
 224:	18f70463          	beq	a4,a5,3ac <main+0x2d4>
 228:	fe442703          	lw	a4,-28(s0)
 22c:	fe042783          	lw	a5,-32(s0)
 230:	16f70e63          	beq	a4,a5,3ac <main+0x2d4>
 234:	fe442703          	lw	a4,-28(s0)
 238:	fdc42783          	lw	a5,-36(s0)
 23c:	16f70863          	beq	a4,a5,3ac <main+0x2d4>
 240:	fe442703          	lw	a4,-28(s0)
 244:	fd842783          	lw	a5,-40(s0)
 248:	16f70263          	beq	a4,a5,3ac <main+0x2d4>
 24c:	000107b7          	lui	a5,0x10
 250:	0007a783          	lw	a5,0(a5) # 10000 <h>
 254:	fe442703          	lw	a4,-28(s0)
 258:	14f70a63          	beq	a4,a5,3ac <main+0x2d4>
 25c:	000107b7          	lui	a5,0x10
 260:	0047a783          	lw	a5,4(a5) # 10004 <i>
 264:	fe442703          	lw	a4,-28(s0)
 268:	14f70263          	beq	a4,a5,3ac <main+0x2d4>
 26c:	000107b7          	lui	a5,0x10
 270:	0087a783          	lw	a5,8(a5) # 10008 <j>
 274:	fe442703          	lw	a4,-28(s0)
 278:	12f70a63          	beq	a4,a5,3ac <main+0x2d4>
 27c:	000107b7          	lui	a5,0x10
 280:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 284:	fe442703          	lw	a4,-28(s0)
 288:	12f70263          	beq	a4,a5,3ac <main+0x2d4>
 28c:	fe042703          	lw	a4,-32(s0)
 290:	fdc42783          	lw	a5,-36(s0)
 294:	10f70c63          	beq	a4,a5,3ac <main+0x2d4>
 298:	fe042703          	lw	a4,-32(s0)
 29c:	fd842783          	lw	a5,-40(s0)
 2a0:	10f70663          	beq	a4,a5,3ac <main+0x2d4>
 2a4:	000107b7          	lui	a5,0x10
 2a8:	0007a783          	lw	a5,0(a5) # 10000 <h>
 2ac:	fe042703          	lw	a4,-32(s0)
 2b0:	0ef70e63          	beq	a4,a5,3ac <main+0x2d4>
 2b4:	000107b7          	lui	a5,0x10
 2b8:	0047a783          	lw	a5,4(a5) # 10004 <i>
 2bc:	fe042703          	lw	a4,-32(s0)
 2c0:	0ef70663          	beq	a4,a5,3ac <main+0x2d4>
 2c4:	000107b7          	lui	a5,0x10
 2c8:	0087a783          	lw	a5,8(a5) # 10008 <j>
 2cc:	fe042703          	lw	a4,-32(s0)
 2d0:	0cf70e63          	beq	a4,a5,3ac <main+0x2d4>
 2d4:	000107b7          	lui	a5,0x10
 2d8:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 2dc:	fe042703          	lw	a4,-32(s0)
 2e0:	0cf70663          	beq	a4,a5,3ac <main+0x2d4>
 2e4:	fdc42703          	lw	a4,-36(s0)
 2e8:	fd842783          	lw	a5,-40(s0)
 2ec:	0cf70063          	beq	a4,a5,3ac <main+0x2d4>
 2f0:	000107b7          	lui	a5,0x10
 2f4:	0007a783          	lw	a5,0(a5) # 10000 <h>
 2f8:	fdc42703          	lw	a4,-36(s0)
 2fc:	0af70863          	beq	a4,a5,3ac <main+0x2d4>
 300:	000107b7          	lui	a5,0x10
 304:	0047a783          	lw	a5,4(a5) # 10004 <i>
 308:	fdc42703          	lw	a4,-36(s0)
 30c:	0af70063          	beq	a4,a5,3ac <main+0x2d4>
 310:	000107b7          	lui	a5,0x10
 314:	0087a783          	lw	a5,8(a5) # 10008 <j>
 318:	fdc42703          	lw	a4,-36(s0)
 31c:	08f70863          	beq	a4,a5,3ac <main+0x2d4>
 320:	000107b7          	lui	a5,0x10
 324:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 328:	fdc42703          	lw	a4,-36(s0)
 32c:	08f70063          	beq	a4,a5,3ac <main+0x2d4>
 330:	000107b7          	lui	a5,0x10
 334:	0007a783          	lw	a5,0(a5) # 10000 <h>
 338:	fd842703          	lw	a4,-40(s0)
 33c:	06f70863          	beq	a4,a5,3ac <main+0x2d4>
 340:	000107b7          	lui	a5,0x10
 344:	0047a783          	lw	a5,4(a5) # 10004 <i>
 348:	fd842703          	lw	a4,-40(s0)
 34c:	06f70063          	beq	a4,a5,3ac <main+0x2d4>
 350:	000107b7          	lui	a5,0x10
 354:	0087a783          	lw	a5,8(a5) # 10008 <j>
 358:	fd842703          	lw	a4,-40(s0)
 35c:	04f70863          	beq	a4,a5,3ac <main+0x2d4>
 360:	000107b7          	lui	a5,0x10
 364:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 368:	fd842703          	lw	a4,-40(s0)
 36c:	04f70063          	beq	a4,a5,3ac <main+0x2d4>
 370:	000107b7          	lui	a5,0x10
 374:	0047a703          	lw	a4,4(a5) # 10004 <i>
 378:	000107b7          	lui	a5,0x10
 37c:	0087a783          	lw	a5,8(a5) # 10008 <j>
 380:	02f70663          	beq	a4,a5,3ac <main+0x2d4>
 384:	000107b7          	lui	a5,0x10
 388:	0007a703          	lw	a4,0(a5) # 10000 <h>
 38c:	000107b7          	lui	a5,0x10
 390:	00c7a783          	lw	a5,12(a5) # 1000c <k>
 394:	00f70c63          	beq	a4,a5,3ac <main+0x2d4>
 398:	000107b7          	lui	a5,0x10
 39c:	0187a783          	lw	a5,24(a5) # 10018 <total>
 3a0:	00178713          	add	a4,a5,1
 3a4:	000107b7          	lui	a5,0x10
 3a8:	00e7ac23          	sw	a4,24(a5) # 10018 <total>
 3ac:	fd842783          	lw	a5,-40(s0)
 3b0:	00178793          	add	a5,a5,1
 3b4:	fcf42c23          	sw	a5,-40(s0)
 3b8:	000107b7          	lui	a5,0x10
 3bc:	0147a783          	lw	a5,20(a5) # 10014 <N>
 3c0:	fd842703          	lw	a4,-40(s0)
 3c4:	d6e7dce3          	bge	a5,a4,13c <main+0x64>
 3c8:	fdc42783          	lw	a5,-36(s0)
 3cc:	00178793          	add	a5,a5,1
 3d0:	fcf42e23          	sw	a5,-36(s0)
 3d4:	000107b7          	lui	a5,0x10
 3d8:	0147a783          	lw	a5,20(a5) # 10014 <N>
 3dc:	fdc42703          	lw	a4,-36(s0)
 3e0:	d4e7d8e3          	bge	a5,a4,130 <main+0x58>
 3e4:	fe042783          	lw	a5,-32(s0)
 3e8:	00178793          	add	a5,a5,1
 3ec:	fef42023          	sw	a5,-32(s0)
 3f0:	000107b7          	lui	a5,0x10
 3f4:	0147a783          	lw	a5,20(a5) # 10014 <N>
 3f8:	fe042703          	lw	a4,-32(s0)
 3fc:	d2e7d4e3          	bge	a5,a4,124 <main+0x4c>
 400:	fe442783          	lw	a5,-28(s0)
 404:	00178793          	add	a5,a5,1
 408:	fef42223          	sw	a5,-28(s0)
 40c:	000107b7          	lui	a5,0x10
 410:	0147a783          	lw	a5,20(a5) # 10014 <N>
 414:	fe442703          	lw	a4,-28(s0)
 418:	d0e7d0e3          	bge	a5,a4,118 <main+0x40>
 41c:	fe842783          	lw	a5,-24(s0)
 420:	00178793          	add	a5,a5,1
 424:	fef42423          	sw	a5,-24(s0)
 428:	000107b7          	lui	a5,0x10
 42c:	0147a783          	lw	a5,20(a5) # 10014 <N>
 430:	fe842703          	lw	a4,-24(s0)
 434:	cce7dce3          	bge	a5,a4,10c <main+0x34>
 438:	fec42783          	lw	a5,-20(s0)
 43c:	00178793          	add	a5,a5,1
 440:	fef42623          	sw	a5,-20(s0)
 444:	000107b7          	lui	a5,0x10
 448:	0147a783          	lw	a5,20(a5) # 10014 <N>
 44c:	fec42703          	lw	a4,-20(s0)
 450:	cae7d8e3          	bge	a5,a4,100 <main+0x28>
 454:	000107b7          	lui	a5,0x10
 458:	0187a783          	lw	a5,24(a5) # 10018 <total>
 45c:	00078513          	mv	a0,a5
 460:	bb1ff0ef          	jal	10 <printInt>
 464:	000107b7          	lui	a5,0x10
 468:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
 46c:	0fd00713          	li	a4,253
 470:	00070593          	mv	a1,a4
 474:	00078513          	mv	a0,a5
 478:	0a0000ef          	jal	518 <__modsi3>
 47c:	00050793          	mv	a5,a0
 480:	00078513          	mv	a0,a5
 484:	02c12083          	lw	ra,44(sp)
 488:	02812403          	lw	s0,40(sp)
 48c:	03010113          	add	sp,sp,48
 490:	00008067          	ret

00000494 <__divsi3>:
 494:	06054063          	bltz	a0,4f4 <__umodsi3+0x10>
 498:	0605c663          	bltz	a1,504 <__umodsi3+0x20>

0000049c <__hidden___udivsi3>:
 49c:	00058613          	mv	a2,a1
 4a0:	00050593          	mv	a1,a0
 4a4:	fff00513          	li	a0,-1
 4a8:	02060c63          	beqz	a2,4e0 <__hidden___udivsi3+0x44>
 4ac:	00100693          	li	a3,1
 4b0:	00b67a63          	bgeu	a2,a1,4c4 <__hidden___udivsi3+0x28>
 4b4:	00c05863          	blez	a2,4c4 <__hidden___udivsi3+0x28>
 4b8:	00161613          	sll	a2,a2,0x1
 4bc:	00169693          	sll	a3,a3,0x1
 4c0:	feb66ae3          	bltu	a2,a1,4b4 <__hidden___udivsi3+0x18>
 4c4:	00000513          	li	a0,0
 4c8:	00c5e663          	bltu	a1,a2,4d4 <__hidden___udivsi3+0x38>
 4cc:	40c585b3          	sub	a1,a1,a2
 4d0:	00d56533          	or	a0,a0,a3
 4d4:	0016d693          	srl	a3,a3,0x1
 4d8:	00165613          	srl	a2,a2,0x1
 4dc:	fe0696e3          	bnez	a3,4c8 <__hidden___udivsi3+0x2c>
 4e0:	00008067          	ret

000004e4 <__umodsi3>:
 4e4:	00008293          	mv	t0,ra
 4e8:	fb5ff0ef          	jal	49c <__hidden___udivsi3>
 4ec:	00058513          	mv	a0,a1
 4f0:	00028067          	jr	t0
 4f4:	40a00533          	neg	a0,a0
 4f8:	00b04863          	bgtz	a1,508 <__umodsi3+0x24>
 4fc:	40b005b3          	neg	a1,a1
 500:	f9dff06f          	j	49c <__hidden___udivsi3>
 504:	40b005b3          	neg	a1,a1
 508:	00008293          	mv	t0,ra
 50c:	f91ff0ef          	jal	49c <__hidden___udivsi3>
 510:	40a00533          	neg	a0,a0
 514:	00028067          	jr	t0

00000518 <__modsi3>:
 518:	00008293          	mv	t0,ra
 51c:	0005ca63          	bltz	a1,530 <__modsi3+0x18>
 520:	00054c63          	bltz	a0,538 <__modsi3+0x20>
 524:	f79ff0ef          	jal	49c <__hidden___udivsi3>
 528:	00058513          	mv	a0,a1
 52c:	00028067          	jr	t0
 530:	40b005b3          	neg	a1,a1
 534:	fe0558e3          	bgez	a0,524 <__modsi3+0xc>
 538:	40a00533          	neg	a0,a0
 53c:	f61ff0ef          	jal	49c <__hidden___udivsi3>
 540:	40b00533          	neg	a0,a1
 544:	00028067          	jr	t0

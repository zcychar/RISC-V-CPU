
magic.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	069000ef          	jal	86c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <j+0x1f5f4>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	000017b7          	lui	a5,0x1
  28:	9e07a703          	lw	a4,-1568(a5) # 9e0 <judgeResult>
  2c:	fec42783          	lw	a5,-20(s0)
  30:	00f74733          	xor	a4,a4,a5
  34:	000017b7          	lui	a5,0x1
  38:	9ee7a023          	sw	a4,-1568(a5) # 9e0 <judgeResult>
  3c:	000017b7          	lui	a5,0x1
  40:	9e07a783          	lw	a5,-1568(a5) # 9e0 <judgeResult>
  44:	0ad78713          	addi	a4,a5,173
  48:	000017b7          	lui	a5,0x1
  4c:	9ee7a023          	sw	a4,-1568(a5) # 9e0 <judgeResult>
  50:	00000013          	nop
  54:	01c12403          	lw	s0,28(sp)
  58:	02010113          	addi	sp,sp,32
  5c:	00008067          	ret

00000060 <printStr>:
  60:	fd010113          	addi	sp,sp,-48
  64:	02812623          	sw	s0,44(sp)
  68:	03010413          	addi	s0,sp,48
  6c:	fca42e23          	sw	a0,-36(s0)
  70:	fdc42783          	lw	a5,-36(s0)
  74:	fef42623          	sw	a5,-20(s0)
  78:	0440006f          	j	bc <printStr+0x5c>
  7c:	fec42783          	lw	a5,-20(s0)
  80:	0007c783          	lbu	a5,0(a5)
  84:	00078713          	mv	a4,a5
  88:	000017b7          	lui	a5,0x1
  8c:	9e07a783          	lw	a5,-1568(a5) # 9e0 <judgeResult>
  90:	00f74733          	xor	a4,a4,a5
  94:	000017b7          	lui	a5,0x1
  98:	9ee7a023          	sw	a4,-1568(a5) # 9e0 <judgeResult>
  9c:	000017b7          	lui	a5,0x1
  a0:	9e07a783          	lw	a5,-1568(a5) # 9e0 <judgeResult>
  a4:	20978713          	addi	a4,a5,521
  a8:	000017b7          	lui	a5,0x1
  ac:	9ee7a023          	sw	a4,-1568(a5) # 9e0 <judgeResult>
  b0:	fec42783          	lw	a5,-20(s0)
  b4:	00178793          	addi	a5,a5,1
  b8:	fef42623          	sw	a5,-20(s0)
  bc:	fec42783          	lw	a5,-20(s0)
  c0:	0007c783          	lbu	a5,0(a5)
  c4:	fa079ce3          	bnez	a5,7c <printStr+0x1c>
  c8:	00000013          	nop
  cc:	00000013          	nop
  d0:	02c12403          	lw	s0,44(sp)
  d4:	03010113          	addi	sp,sp,48
  d8:	00008067          	ret

000000dc <origin>:
  dc:	fe010113          	addi	sp,sp,-32
  e0:	00812e23          	sw	s0,28(sp)
  e4:	02010413          	addi	s0,sp,32
  e8:	fea42623          	sw	a0,-20(s0)
  ec:	000017b7          	lui	a5,0x1
  f0:	9e07a423          	sw	zero,-1560(a5) # 9e8 <i>
  f4:	07c0006f          	j	170 <origin+0x94>
  f8:	000017b7          	lui	a5,0x1
  fc:	9e07a623          	sw	zero,-1556(a5) # 9ec <j>
 100:	04c0006f          	j	14c <origin+0x70>
 104:	000017b7          	lui	a5,0x1
 108:	9e87a703          	lw	a4,-1560(a5) # 9e8 <i>
 10c:	000017b7          	lui	a5,0x1
 110:	9ec7a603          	lw	a2,-1556(a5) # 9ec <j>
 114:	000017b7          	lui	a5,0x1
 118:	99478693          	addi	a3,a5,-1644 # 994 <make>
 11c:	00070793          	mv	a5,a4
 120:	00179793          	slli	a5,a5,0x1
 124:	00e787b3          	add	a5,a5,a4
 128:	00c787b3          	add	a5,a5,a2
 12c:	00279793          	slli	a5,a5,0x2
 130:	00f687b3          	add	a5,a3,a5
 134:	0007a023          	sw	zero,0(a5)
 138:	000017b7          	lui	a5,0x1
 13c:	9ec7a783          	lw	a5,-1556(a5) # 9ec <j>
 140:	00178713          	addi	a4,a5,1
 144:	000017b7          	lui	a5,0x1
 148:	9ee7a623          	sw	a4,-1556(a5) # 9ec <j>
 14c:	000017b7          	lui	a5,0x1
 150:	9ec7a783          	lw	a5,-1556(a5) # 9ec <j>
 154:	fec42703          	lw	a4,-20(s0)
 158:	fae7c6e3          	blt	a5,a4,104 <origin+0x28>
 15c:	000017b7          	lui	a5,0x1
 160:	9e87a783          	lw	a5,-1560(a5) # 9e8 <i>
 164:	00178713          	addi	a4,a5,1
 168:	000017b7          	lui	a5,0x1
 16c:	9ee7a423          	sw	a4,-1560(a5) # 9e8 <i>
 170:	000017b7          	lui	a5,0x1
 174:	9e87a783          	lw	a5,-1560(a5) # 9e8 <i>
 178:	fec42703          	lw	a4,-20(s0)
 17c:	f6e7cee3          	blt	a5,a4,f8 <origin+0x1c>
 180:	00000013          	nop
 184:	00000013          	nop
 188:	01c12403          	lw	s0,28(sp)
 18c:	02010113          	addi	sp,sp,32
 190:	00008067          	ret

00000194 <search>:
 194:	fd010113          	addi	sp,sp,-48
 198:	02112623          	sw	ra,44(sp)
 19c:	02812423          	sw	s0,40(sp)
 1a0:	03010413          	addi	s0,sp,48
 1a4:	fca42e23          	sw	a0,-36(s0)
 1a8:	fcb42c23          	sw	a1,-40(s0)
 1ac:	fcc42a23          	sw	a2,-44(s0)
 1b0:	fd842783          	lw	a5,-40(s0)
 1b4:	08f04e63          	bgtz	a5,250 <search+0xbc>
 1b8:	fd842783          	lw	a5,-40(s0)
 1bc:	0807ca63          	bltz	a5,250 <search+0xbc>
 1c0:	fdc42783          	lw	a5,-36(s0)
 1c4:	08078663          	beqz	a5,250 <search+0xbc>
 1c8:	fdc42783          	lw	a5,-36(s0)
 1cc:	fff78713          	addi	a4,a5,-1
 1d0:	000017b7          	lui	a5,0x1
 1d4:	99478693          	addi	a3,a5,-1644 # 994 <make>
 1d8:	00070793          	mv	a5,a4
 1dc:	00179793          	slli	a5,a5,0x1
 1e0:	00e787b3          	add	a5,a5,a4
 1e4:	00279793          	slli	a5,a5,0x2
 1e8:	00f687b3          	add	a5,a3,a5
 1ec:	0007a683          	lw	a3,0(a5)
 1f0:	fdc42783          	lw	a5,-36(s0)
 1f4:	fff78713          	addi	a4,a5,-1
 1f8:	000017b7          	lui	a5,0x1
 1fc:	99478613          	addi	a2,a5,-1644 # 994 <make>
 200:	00070793          	mv	a5,a4
 204:	00179793          	slli	a5,a5,0x1
 208:	00e787b3          	add	a5,a5,a4
 20c:	00279793          	slli	a5,a5,0x2
 210:	00f607b3          	add	a5,a2,a5
 214:	0047a783          	lw	a5,4(a5)
 218:	00f686b3          	add	a3,a3,a5
 21c:	fdc42783          	lw	a5,-36(s0)
 220:	fff78713          	addi	a4,a5,-1
 224:	000017b7          	lui	a5,0x1
 228:	99478613          	addi	a2,a5,-1644 # 994 <make>
 22c:	00070793          	mv	a5,a4
 230:	00179793          	slli	a5,a5,0x1
 234:	00e787b3          	add	a5,a5,a4
 238:	00279793          	slli	a5,a5,0x2
 23c:	00f607b3          	add	a5,a2,a5
 240:	0087a783          	lw	a5,8(a5)
 244:	00f68733          	add	a4,a3,a5
 248:	00f00793          	li	a5,15
 24c:	60f71663          	bne	a4,a5,858 <search+0x6c4>
 250:	fdc42703          	lw	a4,-36(s0)
 254:	00200793          	li	a5,2
 258:	26f71a63          	bne	a4,a5,4cc <search+0x338>
 25c:	fd842703          	lw	a4,-40(s0)
 260:	00200793          	li	a5,2
 264:	26f71463          	bne	a4,a5,4cc <search+0x338>
 268:	02d00713          	li	a4,45
 26c:	fd442783          	lw	a5,-44(s0)
 270:	40f70733          	sub	a4,a4,a5
 274:	000017b7          	lui	a5,0x1
 278:	99478793          	addi	a5,a5,-1644 # 994 <make>
 27c:	02e7a023          	sw	a4,32(a5)
 280:	000017b7          	lui	a5,0x1
 284:	99478793          	addi	a5,a5,-1644 # 994 <make>
 288:	0007a703          	lw	a4,0(a5)
 28c:	000017b7          	lui	a5,0x1
 290:	99478793          	addi	a5,a5,-1644 # 994 <make>
 294:	0047a783          	lw	a5,4(a5)
 298:	00f70733          	add	a4,a4,a5
 29c:	000017b7          	lui	a5,0x1
 2a0:	99478793          	addi	a5,a5,-1644 # 994 <make>
 2a4:	0087a783          	lw	a5,8(a5)
 2a8:	00f707b3          	add	a5,a4,a5
 2ac:	fef42223          	sw	a5,-28(s0)
 2b0:	000017b7          	lui	a5,0x1
 2b4:	99478793          	addi	a5,a5,-1644 # 994 <make>
 2b8:	00c7a703          	lw	a4,12(a5)
 2bc:	000017b7          	lui	a5,0x1
 2c0:	99478793          	addi	a5,a5,-1644 # 994 <make>
 2c4:	0107a783          	lw	a5,16(a5)
 2c8:	00f70733          	add	a4,a4,a5
 2cc:	000017b7          	lui	a5,0x1
 2d0:	99478793          	addi	a5,a5,-1644 # 994 <make>
 2d4:	0147a783          	lw	a5,20(a5)
 2d8:	00f707b3          	add	a5,a4,a5
 2dc:	fe442703          	lw	a4,-28(s0)
 2e0:	56f71a63          	bne	a4,a5,854 <search+0x6c0>
 2e4:	000017b7          	lui	a5,0x1
 2e8:	99478793          	addi	a5,a5,-1644 # 994 <make>
 2ec:	0187a703          	lw	a4,24(a5)
 2f0:	000017b7          	lui	a5,0x1
 2f4:	99478793          	addi	a5,a5,-1644 # 994 <make>
 2f8:	01c7a783          	lw	a5,28(a5)
 2fc:	00f70733          	add	a4,a4,a5
 300:	000017b7          	lui	a5,0x1
 304:	99478793          	addi	a5,a5,-1644 # 994 <make>
 308:	0207a783          	lw	a5,32(a5)
 30c:	00f707b3          	add	a5,a4,a5
 310:	fe442703          	lw	a4,-28(s0)
 314:	54f71063          	bne	a4,a5,854 <search+0x6c0>
 318:	000017b7          	lui	a5,0x1
 31c:	99478793          	addi	a5,a5,-1644 # 994 <make>
 320:	0007a703          	lw	a4,0(a5)
 324:	000017b7          	lui	a5,0x1
 328:	99478793          	addi	a5,a5,-1644 # 994 <make>
 32c:	00c7a783          	lw	a5,12(a5)
 330:	00f70733          	add	a4,a4,a5
 334:	000017b7          	lui	a5,0x1
 338:	99478793          	addi	a5,a5,-1644 # 994 <make>
 33c:	0187a783          	lw	a5,24(a5)
 340:	00f707b3          	add	a5,a4,a5
 344:	fe442703          	lw	a4,-28(s0)
 348:	50f71663          	bne	a4,a5,854 <search+0x6c0>
 34c:	000017b7          	lui	a5,0x1
 350:	99478793          	addi	a5,a5,-1644 # 994 <make>
 354:	0047a703          	lw	a4,4(a5)
 358:	000017b7          	lui	a5,0x1
 35c:	99478793          	addi	a5,a5,-1644 # 994 <make>
 360:	0107a783          	lw	a5,16(a5)
 364:	00f70733          	add	a4,a4,a5
 368:	000017b7          	lui	a5,0x1
 36c:	99478793          	addi	a5,a5,-1644 # 994 <make>
 370:	01c7a783          	lw	a5,28(a5)
 374:	00f707b3          	add	a5,a4,a5
 378:	fe442703          	lw	a4,-28(s0)
 37c:	4cf71c63          	bne	a4,a5,854 <search+0x6c0>
 380:	000017b7          	lui	a5,0x1
 384:	99478793          	addi	a5,a5,-1644 # 994 <make>
 388:	0087a703          	lw	a4,8(a5)
 38c:	000017b7          	lui	a5,0x1
 390:	99478793          	addi	a5,a5,-1644 # 994 <make>
 394:	0147a783          	lw	a5,20(a5)
 398:	00f70733          	add	a4,a4,a5
 39c:	000017b7          	lui	a5,0x1
 3a0:	99478793          	addi	a5,a5,-1644 # 994 <make>
 3a4:	0207a783          	lw	a5,32(a5)
 3a8:	00f707b3          	add	a5,a4,a5
 3ac:	fe442703          	lw	a4,-28(s0)
 3b0:	4af71263          	bne	a4,a5,854 <search+0x6c0>
 3b4:	000017b7          	lui	a5,0x1
 3b8:	99478793          	addi	a5,a5,-1644 # 994 <make>
 3bc:	0007a703          	lw	a4,0(a5)
 3c0:	000017b7          	lui	a5,0x1
 3c4:	99478793          	addi	a5,a5,-1644 # 994 <make>
 3c8:	0107a783          	lw	a5,16(a5)
 3cc:	00f70733          	add	a4,a4,a5
 3d0:	000017b7          	lui	a5,0x1
 3d4:	99478793          	addi	a5,a5,-1644 # 994 <make>
 3d8:	0207a783          	lw	a5,32(a5)
 3dc:	00f707b3          	add	a5,a4,a5
 3e0:	fe442703          	lw	a4,-28(s0)
 3e4:	46f71863          	bne	a4,a5,854 <search+0x6c0>
 3e8:	000017b7          	lui	a5,0x1
 3ec:	99478793          	addi	a5,a5,-1644 # 994 <make>
 3f0:	0187a703          	lw	a4,24(a5)
 3f4:	000017b7          	lui	a5,0x1
 3f8:	99478793          	addi	a5,a5,-1644 # 994 <make>
 3fc:	0107a783          	lw	a5,16(a5)
 400:	00f70733          	add	a4,a4,a5
 404:	000017b7          	lui	a5,0x1
 408:	99478793          	addi	a5,a5,-1644 # 994 <make>
 40c:	0087a783          	lw	a5,8(a5)
 410:	00f707b3          	add	a5,a4,a5
 414:	fe442703          	lw	a4,-28(s0)
 418:	42f71e63          	bne	a4,a5,854 <search+0x6c0>
 41c:	000017b7          	lui	a5,0x1
 420:	9e47a783          	lw	a5,-1564(a5) # 9e4 <count>
 424:	00178713          	addi	a4,a5,1
 428:	000017b7          	lui	a5,0x1
 42c:	9ee7a223          	sw	a4,-1564(a5) # 9e4 <count>
 430:	fe042623          	sw	zero,-20(s0)
 434:	07c0006f          	j	4b0 <search+0x31c>
 438:	fe042423          	sw	zero,-24(s0)
 43c:	0500006f          	j	48c <search+0x2f8>
 440:	000017b7          	lui	a5,0x1
 444:	99478693          	addi	a3,a5,-1644 # 994 <make>
 448:	fec42703          	lw	a4,-20(s0)
 44c:	00070793          	mv	a5,a4
 450:	00179793          	slli	a5,a5,0x1
 454:	00e787b3          	add	a5,a5,a4
 458:	fe842703          	lw	a4,-24(s0)
 45c:	00e787b3          	add	a5,a5,a4
 460:	00279793          	slli	a5,a5,0x2
 464:	00f687b3          	add	a5,a3,a5
 468:	0007a783          	lw	a5,0(a5)
 46c:	00078513          	mv	a0,a5
 470:	ba5ff0ef          	jal	14 <printInt>
 474:	000017b7          	lui	a5,0x1
 478:	98878513          	addi	a0,a5,-1656 # 988 <__modsi3+0x30>
 47c:	be5ff0ef          	jal	60 <printStr>
 480:	fe842783          	lw	a5,-24(s0)
 484:	00178793          	addi	a5,a5,1
 488:	fef42423          	sw	a5,-24(s0)
 48c:	fe842703          	lw	a4,-24(s0)
 490:	00200793          	li	a5,2
 494:	fae7d6e3          	bge	a5,a4,440 <search+0x2ac>
 498:	000017b7          	lui	a5,0x1
 49c:	98c78513          	addi	a0,a5,-1652 # 98c <__modsi3+0x34>
 4a0:	bc1ff0ef          	jal	60 <printStr>
 4a4:	fec42783          	lw	a5,-20(s0)
 4a8:	00178793          	addi	a5,a5,1
 4ac:	fef42623          	sw	a5,-20(s0)
 4b0:	fec42703          	lw	a4,-20(s0)
 4b4:	00200793          	li	a5,2
 4b8:	f8e7d0e3          	bge	a5,a4,438 <search+0x2a4>
 4bc:	000017b7          	lui	a5,0x1
 4c0:	98c78513          	addi	a0,a5,-1652 # 98c <__modsi3+0x34>
 4c4:	b9dff0ef          	jal	60 <printStr>
 4c8:	38c0006f          	j	854 <search+0x6c0>
 4cc:	fd842703          	lw	a4,-40(s0)
 4d0:	00200793          	li	a5,2
 4d4:	24f71a63          	bne	a4,a5,728 <search+0x594>
 4d8:	000017b7          	lui	a5,0x1
 4dc:	99478693          	addi	a3,a5,-1644 # 994 <make>
 4e0:	fdc42703          	lw	a4,-36(s0)
 4e4:	00070793          	mv	a5,a4
 4e8:	00179793          	slli	a5,a5,0x1
 4ec:	00e787b3          	add	a5,a5,a4
 4f0:	00279793          	slli	a5,a5,0x2
 4f4:	00f687b3          	add	a5,a3,a5
 4f8:	0007a783          	lw	a5,0(a5)
 4fc:	00f00713          	li	a4,15
 500:	40f706b3          	sub	a3,a4,a5
 504:	000017b7          	lui	a5,0x1
 508:	99478613          	addi	a2,a5,-1644 # 994 <make>
 50c:	fdc42703          	lw	a4,-36(s0)
 510:	00070793          	mv	a5,a4
 514:	00179793          	slli	a5,a5,0x1
 518:	00e787b3          	add	a5,a5,a4
 51c:	00279793          	slli	a5,a5,0x2
 520:	00f607b3          	add	a5,a2,a5
 524:	0047a783          	lw	a5,4(a5)
 528:	40f686b3          	sub	a3,a3,a5
 52c:	000017b7          	lui	a5,0x1
 530:	99478613          	addi	a2,a5,-1644 # 994 <make>
 534:	fdc42703          	lw	a4,-36(s0)
 538:	00070793          	mv	a5,a4
 53c:	00179793          	slli	a5,a5,0x1
 540:	00e787b3          	add	a5,a5,a4
 544:	fd842703          	lw	a4,-40(s0)
 548:	00e787b3          	add	a5,a5,a4
 54c:	00279793          	slli	a5,a5,0x2
 550:	00f607b3          	add	a5,a2,a5
 554:	00d7a023          	sw	a3,0(a5)
 558:	000017b7          	lui	a5,0x1
 55c:	99478693          	addi	a3,a5,-1644 # 994 <make>
 560:	fdc42703          	lw	a4,-36(s0)
 564:	00070793          	mv	a5,a4
 568:	00179793          	slli	a5,a5,0x1
 56c:	00e787b3          	add	a5,a5,a4
 570:	fd842703          	lw	a4,-40(s0)
 574:	00e787b3          	add	a5,a5,a4
 578:	00279793          	slli	a5,a5,0x2
 57c:	00f687b3          	add	a5,a3,a5
 580:	0007a783          	lw	a5,0(a5)
 584:	2cf05a63          	blez	a5,858 <search+0x6c4>
 588:	000017b7          	lui	a5,0x1
 58c:	99478693          	addi	a3,a5,-1644 # 994 <make>
 590:	fdc42703          	lw	a4,-36(s0)
 594:	00070793          	mv	a5,a4
 598:	00179793          	slli	a5,a5,0x1
 59c:	00e787b3          	add	a5,a5,a4
 5a0:	fd842703          	lw	a4,-40(s0)
 5a4:	00e787b3          	add	a5,a5,a4
 5a8:	00279793          	slli	a5,a5,0x2
 5ac:	00f687b3          	add	a5,a3,a5
 5b0:	0007a703          	lw	a4,0(a5)
 5b4:	00900793          	li	a5,9
 5b8:	2ae7c063          	blt	a5,a4,858 <search+0x6c4>
 5bc:	000017b7          	lui	a5,0x1
 5c0:	99478693          	addi	a3,a5,-1644 # 994 <make>
 5c4:	fdc42703          	lw	a4,-36(s0)
 5c8:	00070793          	mv	a5,a4
 5cc:	00179793          	slli	a5,a5,0x1
 5d0:	00e787b3          	add	a5,a5,a4
 5d4:	fd842703          	lw	a4,-40(s0)
 5d8:	00e787b3          	add	a5,a5,a4
 5dc:	00279793          	slli	a5,a5,0x2
 5e0:	00f687b3          	add	a5,a3,a5
 5e4:	0007a783          	lw	a5,0(a5)
 5e8:	00001737          	lui	a4,0x1
 5ec:	9b870713          	addi	a4,a4,-1608 # 9b8 <color>
 5f0:	00279793          	slli	a5,a5,0x2
 5f4:	00f707b3          	add	a5,a4,a5
 5f8:	0007a783          	lw	a5,0(a5)
 5fc:	24079e63          	bnez	a5,858 <search+0x6c4>
 600:	000017b7          	lui	a5,0x1
 604:	99478693          	addi	a3,a5,-1644 # 994 <make>
 608:	fdc42703          	lw	a4,-36(s0)
 60c:	00070793          	mv	a5,a4
 610:	00179793          	slli	a5,a5,0x1
 614:	00e787b3          	add	a5,a5,a4
 618:	fd842703          	lw	a4,-40(s0)
 61c:	00e787b3          	add	a5,a5,a4
 620:	00279793          	slli	a5,a5,0x2
 624:	00f687b3          	add	a5,a3,a5
 628:	0007a783          	lw	a5,0(a5)
 62c:	00001737          	lui	a4,0x1
 630:	9b870713          	addi	a4,a4,-1608 # 9b8 <color>
 634:	00279793          	slli	a5,a5,0x2
 638:	00f707b3          	add	a5,a4,a5
 63c:	00100713          	li	a4,1
 640:	00e7a023          	sw	a4,0(a5)
 644:	fd842703          	lw	a4,-40(s0)
 648:	00200793          	li	a5,2
 64c:	04f71863          	bne	a4,a5,69c <search+0x508>
 650:	fdc42783          	lw	a5,-36(s0)
 654:	00178513          	addi	a0,a5,1
 658:	000017b7          	lui	a5,0x1
 65c:	99478693          	addi	a3,a5,-1644 # 994 <make>
 660:	fdc42703          	lw	a4,-36(s0)
 664:	00070793          	mv	a5,a4
 668:	00179793          	slli	a5,a5,0x1
 66c:	00e787b3          	add	a5,a5,a4
 670:	fd842703          	lw	a4,-40(s0)
 674:	00e787b3          	add	a5,a5,a4
 678:	00279793          	slli	a5,a5,0x2
 67c:	00f687b3          	add	a5,a3,a5
 680:	0007a703          	lw	a4,0(a5)
 684:	fd442783          	lw	a5,-44(s0)
 688:	00f707b3          	add	a5,a4,a5
 68c:	00078613          	mv	a2,a5
 690:	00000593          	li	a1,0
 694:	b01ff0ef          	jal	194 <search>
 698:	04c0006f          	j	6e4 <search+0x550>
 69c:	fd842783          	lw	a5,-40(s0)
 6a0:	00178593          	addi	a1,a5,1
 6a4:	000017b7          	lui	a5,0x1
 6a8:	99478693          	addi	a3,a5,-1644 # 994 <make>
 6ac:	fdc42703          	lw	a4,-36(s0)
 6b0:	00070793          	mv	a5,a4
 6b4:	00179793          	slli	a5,a5,0x1
 6b8:	00e787b3          	add	a5,a5,a4
 6bc:	fd842703          	lw	a4,-40(s0)
 6c0:	00e787b3          	add	a5,a5,a4
 6c4:	00279793          	slli	a5,a5,0x2
 6c8:	00f687b3          	add	a5,a3,a5
 6cc:	0007a703          	lw	a4,0(a5)
 6d0:	fd442783          	lw	a5,-44(s0)
 6d4:	00f707b3          	add	a5,a4,a5
 6d8:	00078613          	mv	a2,a5
 6dc:	fdc42503          	lw	a0,-36(s0)
 6e0:	ab5ff0ef          	jal	194 <search>
 6e4:	000017b7          	lui	a5,0x1
 6e8:	99478693          	addi	a3,a5,-1644 # 994 <make>
 6ec:	fdc42703          	lw	a4,-36(s0)
 6f0:	00070793          	mv	a5,a4
 6f4:	00179793          	slli	a5,a5,0x1
 6f8:	00e787b3          	add	a5,a5,a4
 6fc:	fd842703          	lw	a4,-40(s0)
 700:	00e787b3          	add	a5,a5,a4
 704:	00279793          	slli	a5,a5,0x2
 708:	00f687b3          	add	a5,a3,a5
 70c:	0007a783          	lw	a5,0(a5)
 710:	00001737          	lui	a4,0x1
 714:	9b870713          	addi	a4,a4,-1608 # 9b8 <color>
 718:	00279793          	slli	a5,a5,0x2
 71c:	00f707b3          	add	a5,a4,a5
 720:	0007a023          	sw	zero,0(a5)
 724:	1340006f          	j	858 <search+0x6c4>
 728:	00100793          	li	a5,1
 72c:	fef42623          	sw	a5,-20(s0)
 730:	1140006f          	j	844 <search+0x6b0>
 734:	000017b7          	lui	a5,0x1
 738:	9b878713          	addi	a4,a5,-1608 # 9b8 <color>
 73c:	fec42783          	lw	a5,-20(s0)
 740:	00279793          	slli	a5,a5,0x2
 744:	00f707b3          	add	a5,a4,a5
 748:	0007a783          	lw	a5,0(a5)
 74c:	0e079663          	bnez	a5,838 <search+0x6a4>
 750:	000017b7          	lui	a5,0x1
 754:	9b878713          	addi	a4,a5,-1608 # 9b8 <color>
 758:	fec42783          	lw	a5,-20(s0)
 75c:	00279793          	slli	a5,a5,0x2
 760:	00f707b3          	add	a5,a4,a5
 764:	00100713          	li	a4,1
 768:	00e7a023          	sw	a4,0(a5)
 76c:	000017b7          	lui	a5,0x1
 770:	99478693          	addi	a3,a5,-1644 # 994 <make>
 774:	fdc42703          	lw	a4,-36(s0)
 778:	00070793          	mv	a5,a4
 77c:	00179793          	slli	a5,a5,0x1
 780:	00e787b3          	add	a5,a5,a4
 784:	fd842703          	lw	a4,-40(s0)
 788:	00e787b3          	add	a5,a5,a4
 78c:	00279793          	slli	a5,a5,0x2
 790:	00f687b3          	add	a5,a3,a5
 794:	fec42703          	lw	a4,-20(s0)
 798:	00e7a023          	sw	a4,0(a5)
 79c:	fd842703          	lw	a4,-40(s0)
 7a0:	00200793          	li	a5,2
 7a4:	02f71663          	bne	a4,a5,7d0 <search+0x63c>
 7a8:	fdc42783          	lw	a5,-36(s0)
 7ac:	00178693          	addi	a3,a5,1
 7b0:	fd442703          	lw	a4,-44(s0)
 7b4:	fec42783          	lw	a5,-20(s0)
 7b8:	00f707b3          	add	a5,a4,a5
 7bc:	00078613          	mv	a2,a5
 7c0:	00000593          	li	a1,0
 7c4:	00068513          	mv	a0,a3
 7c8:	9cdff0ef          	jal	194 <search>
 7cc:	0280006f          	j	7f4 <search+0x660>
 7d0:	fd842783          	lw	a5,-40(s0)
 7d4:	00178693          	addi	a3,a5,1
 7d8:	fd442703          	lw	a4,-44(s0)
 7dc:	fec42783          	lw	a5,-20(s0)
 7e0:	00f707b3          	add	a5,a4,a5
 7e4:	00078613          	mv	a2,a5
 7e8:	00068593          	mv	a1,a3
 7ec:	fdc42503          	lw	a0,-36(s0)
 7f0:	9a5ff0ef          	jal	194 <search>
 7f4:	000017b7          	lui	a5,0x1
 7f8:	99478693          	addi	a3,a5,-1644 # 994 <make>
 7fc:	fdc42703          	lw	a4,-36(s0)
 800:	00070793          	mv	a5,a4
 804:	00179793          	slli	a5,a5,0x1
 808:	00e787b3          	add	a5,a5,a4
 80c:	fd842703          	lw	a4,-40(s0)
 810:	00e787b3          	add	a5,a5,a4
 814:	00279793          	slli	a5,a5,0x2
 818:	00f687b3          	add	a5,a3,a5
 81c:	0007a023          	sw	zero,0(a5)
 820:	000017b7          	lui	a5,0x1
 824:	9b878713          	addi	a4,a5,-1608 # 9b8 <color>
 828:	fec42783          	lw	a5,-20(s0)
 82c:	00279793          	slli	a5,a5,0x2
 830:	00f707b3          	add	a5,a4,a5
 834:	0007a023          	sw	zero,0(a5)
 838:	fec42783          	lw	a5,-20(s0)
 83c:	00178793          	addi	a5,a5,1
 840:	fef42623          	sw	a5,-20(s0)
 844:	fec42703          	lw	a4,-20(s0)
 848:	00900793          	li	a5,9
 84c:	eee7d4e3          	bge	a5,a4,734 <search+0x5a0>
 850:	0080006f          	j	858 <search+0x6c4>
 854:	00000013          	nop
 858:	00000013          	nop
 85c:	02c12083          	lw	ra,44(sp)
 860:	02812403          	lw	s0,40(sp)
 864:	03010113          	addi	sp,sp,48
 868:	00008067          	ret

0000086c <main>:
 86c:	ff010113          	addi	sp,sp,-16
 870:	00112623          	sw	ra,12(sp)
 874:	00812423          	sw	s0,8(sp)
 878:	01010413          	addi	s0,sp,16
 87c:	00300513          	li	a0,3
 880:	85dff0ef          	jal	dc <origin>
 884:	00000613          	li	a2,0
 888:	00000593          	li	a1,0
 88c:	00000513          	li	a0,0
 890:	905ff0ef          	jal	194 <search>
 894:	000017b7          	lui	a5,0x1
 898:	9e47a783          	lw	a5,-1564(a5) # 9e4 <count>
 89c:	00078513          	mv	a0,a5
 8a0:	f74ff0ef          	jal	14 <printInt>
 8a4:	000017b7          	lui	a5,0x1
 8a8:	9e07a783          	lw	a5,-1568(a5) # 9e0 <judgeResult>
 8ac:	0fd00713          	li	a4,253
 8b0:	00070593          	mv	a1,a4
 8b4:	00078513          	mv	a0,a5
 8b8:	0a0000ef          	jal	958 <__modsi3>
 8bc:	00050793          	mv	a5,a0
 8c0:	00078513          	mv	a0,a5
 8c4:	00c12083          	lw	ra,12(sp)
 8c8:	00812403          	lw	s0,8(sp)
 8cc:	01010113          	addi	sp,sp,16
 8d0:	00008067          	ret

000008d4 <__divsi3>:
 8d4:	06054063          	bltz	a0,934 <__umodsi3+0x10>
 8d8:	0605c663          	bltz	a1,944 <__umodsi3+0x20>

000008dc <__hidden___udivsi3>:
 8dc:	00058613          	mv	a2,a1
 8e0:	00050593          	mv	a1,a0
 8e4:	fff00513          	li	a0,-1
 8e8:	02060c63          	beqz	a2,920 <__hidden___udivsi3+0x44>
 8ec:	00100693          	li	a3,1
 8f0:	00b67a63          	bgeu	a2,a1,904 <__hidden___udivsi3+0x28>
 8f4:	00c05863          	blez	a2,904 <__hidden___udivsi3+0x28>
 8f8:	00161613          	slli	a2,a2,0x1
 8fc:	00169693          	slli	a3,a3,0x1
 900:	feb66ae3          	bltu	a2,a1,8f4 <__hidden___udivsi3+0x18>
 904:	00000513          	li	a0,0
 908:	00c5e663          	bltu	a1,a2,914 <__hidden___udivsi3+0x38>
 90c:	40c585b3          	sub	a1,a1,a2
 910:	00d56533          	or	a0,a0,a3
 914:	0016d693          	srli	a3,a3,0x1
 918:	00165613          	srli	a2,a2,0x1
 91c:	fe0696e3          	bnez	a3,908 <__hidden___udivsi3+0x2c>
 920:	00008067          	ret

00000924 <__umodsi3>:
 924:	00008293          	mv	t0,ra
 928:	fb5ff0ef          	jal	8dc <__hidden___udivsi3>
 92c:	00058513          	mv	a0,a1
 930:	00028067          	jr	t0
 934:	40a00533          	neg	a0,a0
 938:	00b04863          	bgtz	a1,948 <__umodsi3+0x24>
 93c:	40b005b3          	neg	a1,a1
 940:	f9dff06f          	j	8dc <__hidden___udivsi3>
 944:	40b005b3          	neg	a1,a1
 948:	00008293          	mv	t0,ra
 94c:	f91ff0ef          	jal	8dc <__hidden___udivsi3>
 950:	40a00533          	neg	a0,a0
 954:	00028067          	jr	t0

00000958 <__modsi3>:
 958:	00008293          	mv	t0,ra
 95c:	0005ca63          	bltz	a1,970 <__modsi3+0x18>
 960:	00054c63          	bltz	a0,978 <__modsi3+0x20>
 964:	f79ff0ef          	jal	8dc <__hidden___udivsi3>
 968:	00058513          	mv	a0,a1
 96c:	00028067          	jr	t0
 970:	40b005b3          	neg	a1,a1
 974:	fe0558e3          	bgez	a0,964 <__modsi3+0xc>
 978:	40a00533          	neg	a0,a0
 97c:	f61ff0ef          	jal	8dc <__hidden___udivsi3>
 980:	40b00533          	neg	a0,a1
 984:	00028067          	jr	t0

Disassembly of section .rodata:

00000988 <Mod-0x8>:
 988:	00000020          	.word	0x00000020
 98c:	0000000a          	.word	0x0000000a

00000990 <Mod>:
 990:	000000fd                                ....

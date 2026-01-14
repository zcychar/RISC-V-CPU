
queens.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	34c000ef          	jal	350 <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fac4>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	51c02703          	lw	a4,1308(zero) # 51c <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	50e02e23          	sw	a4,1308(zero) # 51c <judgeResult>
  34:	51c02783          	lw	a5,1308(zero) # 51c <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	50e02e23          	sw	a4,1308(zero) # 51c <judgeResult>
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
  78:	51c02783          	lw	a5,1308(zero) # 51c <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	50e02e23          	sw	a4,1308(zero) # 51c <judgeResult>
  84:	51c02783          	lw	a5,1308(zero) # 51c <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	50e02e23          	sw	a4,1308(zero) # 51c <judgeResult>
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

000000bc <printBoard>:
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00112e23          	sw	ra,28(sp)
  c4:	00812c23          	sw	s0,24(sp)
  c8:	02010413          	addi	s0,sp,32
  cc:	fe042623          	sw	zero,-20(s0)
  d0:	0680006f          	j	138 <printBoard+0x7c>
  d4:	fe042423          	sw	zero,-24(s0)
  d8:	0400006f          	j	118 <printBoard+0x5c>
  dc:	47c00713          	li	a4,1148
  e0:	fec42783          	lw	a5,-20(s0)
  e4:	00279793          	slli	a5,a5,0x2
  e8:	00f707b3          	add	a5,a4,a5
  ec:	0007a783          	lw	a5,0(a5)
  f0:	fe842703          	lw	a4,-24(s0)
  f4:	00f71863          	bne	a4,a5,104 <printBoard+0x48>
  f8:	44800513          	li	a0,1096
  fc:	f55ff0ef          	jal	50 <printStr>
 100:	00c0006f          	j	10c <printBoard+0x50>
 104:	44c00513          	li	a0,1100
 108:	f49ff0ef          	jal	50 <printStr>
 10c:	fe842783          	lw	a5,-24(s0)
 110:	00178793          	addi	a5,a5,1
 114:	fef42423          	sw	a5,-24(s0)
 118:	45802783          	lw	a5,1112(zero) # 458 <N>
 11c:	fe842703          	lw	a4,-24(s0)
 120:	faf74ee3          	blt	a4,a5,dc <printBoard+0x20>
 124:	45000513          	li	a0,1104
 128:	f29ff0ef          	jal	50 <printStr>
 12c:	fec42783          	lw	a5,-20(s0)
 130:	00178793          	addi	a5,a5,1
 134:	fef42623          	sw	a5,-20(s0)
 138:	45802783          	lw	a5,1112(zero) # 458 <N>
 13c:	fec42703          	lw	a4,-20(s0)
 140:	f8f74ae3          	blt	a4,a5,d4 <printBoard+0x18>
 144:	45000513          	li	a0,1104
 148:	f09ff0ef          	jal	50 <printStr>
 14c:	00000013          	nop
 150:	01c12083          	lw	ra,28(sp)
 154:	01812403          	lw	s0,24(sp)
 158:	02010113          	addi	sp,sp,32
 15c:	00008067          	ret

00000160 <search>:
 160:	fd010113          	addi	sp,sp,-48
 164:	02112623          	sw	ra,44(sp)
 168:	02812423          	sw	s0,40(sp)
 16c:	03010413          	addi	s0,sp,48
 170:	fca42e23          	sw	a0,-36(s0)
 174:	45802783          	lw	a5,1112(zero) # 458 <N>
 178:	fdc42703          	lw	a4,-36(s0)
 17c:	00f71663          	bne	a4,a5,188 <search+0x28>
 180:	f3dff0ef          	jal	bc <printBoard>
 184:	1b80006f          	j	33c <search+0x1dc>
 188:	fe042623          	sw	zero,-20(s0)
 18c:	1a40006f          	j	330 <search+0x1d0>
 190:	45c00713          	li	a4,1116
 194:	fec42783          	lw	a5,-20(s0)
 198:	00279793          	slli	a5,a5,0x2
 19c:	00f707b3          	add	a5,a4,a5
 1a0:	0007a783          	lw	a5,0(a5)
 1a4:	18079063          	bnez	a5,324 <search+0x1c4>
 1a8:	fec42703          	lw	a4,-20(s0)
 1ac:	fdc42783          	lw	a5,-36(s0)
 1b0:	00f707b3          	add	a5,a4,a5
 1b4:	49c00713          	li	a4,1180
 1b8:	00279793          	slli	a5,a5,0x2
 1bc:	00f707b3          	add	a5,a4,a5
 1c0:	0007a783          	lw	a5,0(a5)
 1c4:	16079063          	bnez	a5,324 <search+0x1c4>
 1c8:	45802703          	lw	a4,1112(zero) # 458 <N>
 1cc:	fec42783          	lw	a5,-20(s0)
 1d0:	00f707b3          	add	a5,a4,a5
 1d4:	fff78713          	addi	a4,a5,-1
 1d8:	fdc42783          	lw	a5,-36(s0)
 1dc:	40f707b3          	sub	a5,a4,a5
 1e0:	49c00713          	li	a4,1180
 1e4:	01078793          	addi	a5,a5,16
 1e8:	00279793          	slli	a5,a5,0x2
 1ec:	00f707b3          	add	a5,a4,a5
 1f0:	0007a783          	lw	a5,0(a5)
 1f4:	12079863          	bnez	a5,324 <search+0x1c4>
 1f8:	45802703          	lw	a4,1112(zero) # 458 <N>
 1fc:	fec42783          	lw	a5,-20(s0)
 200:	00f707b3          	add	a5,a4,a5
 204:	fff78713          	addi	a4,a5,-1
 208:	fdc42783          	lw	a5,-36(s0)
 20c:	40f70733          	sub	a4,a4,a5
 210:	49c00693          	li	a3,1180
 214:	01070793          	addi	a5,a4,16
 218:	00279793          	slli	a5,a5,0x2
 21c:	00f687b3          	add	a5,a3,a5
 220:	00100693          	li	a3,1
 224:	00d7a023          	sw	a3,0(a5)
 228:	fec42683          	lw	a3,-20(s0)
 22c:	fdc42783          	lw	a5,-36(s0)
 230:	00f687b3          	add	a5,a3,a5
 234:	49c00693          	li	a3,1180
 238:	01070713          	addi	a4,a4,16
 23c:	00271713          	slli	a4,a4,0x2
 240:	00e68733          	add	a4,a3,a4
 244:	00072683          	lw	a3,0(a4)
 248:	49c00613          	li	a2,1180
 24c:	00279713          	slli	a4,a5,0x2
 250:	00e60733          	add	a4,a2,a4
 254:	00d72023          	sw	a3,0(a4)
 258:	49c00713          	li	a4,1180
 25c:	00279793          	slli	a5,a5,0x2
 260:	00f707b3          	add	a5,a4,a5
 264:	0007a703          	lw	a4,0(a5)
 268:	45c00693          	li	a3,1116
 26c:	fec42783          	lw	a5,-20(s0)
 270:	00279793          	slli	a5,a5,0x2
 274:	00f687b3          	add	a5,a3,a5
 278:	00e7a023          	sw	a4,0(a5)
 27c:	47c00713          	li	a4,1148
 280:	fdc42783          	lw	a5,-36(s0)
 284:	00279793          	slli	a5,a5,0x2
 288:	00f707b3          	add	a5,a4,a5
 28c:	fec42703          	lw	a4,-20(s0)
 290:	00e7a023          	sw	a4,0(a5)
 294:	fdc42783          	lw	a5,-36(s0)
 298:	00178793          	addi	a5,a5,1
 29c:	00078513          	mv	a0,a5
 2a0:	ec1ff0ef          	jal	160 <search>
 2a4:	45802703          	lw	a4,1112(zero) # 458 <N>
 2a8:	fec42783          	lw	a5,-20(s0)
 2ac:	00f707b3          	add	a5,a4,a5
 2b0:	fff78713          	addi	a4,a5,-1
 2b4:	fdc42783          	lw	a5,-36(s0)
 2b8:	40f70733          	sub	a4,a4,a5
 2bc:	49c00693          	li	a3,1180
 2c0:	01070793          	addi	a5,a4,16
 2c4:	00279793          	slli	a5,a5,0x2
 2c8:	00f687b3          	add	a5,a3,a5
 2cc:	0007a023          	sw	zero,0(a5)
 2d0:	fec42683          	lw	a3,-20(s0)
 2d4:	fdc42783          	lw	a5,-36(s0)
 2d8:	00f687b3          	add	a5,a3,a5
 2dc:	49c00693          	li	a3,1180
 2e0:	01070713          	addi	a4,a4,16
 2e4:	00271713          	slli	a4,a4,0x2
 2e8:	00e68733          	add	a4,a3,a4
 2ec:	00072683          	lw	a3,0(a4)
 2f0:	49c00613          	li	a2,1180
 2f4:	00279713          	slli	a4,a5,0x2
 2f8:	00e60733          	add	a4,a2,a4
 2fc:	00d72023          	sw	a3,0(a4)
 300:	49c00713          	li	a4,1180
 304:	00279793          	slli	a5,a5,0x2
 308:	00f707b3          	add	a5,a4,a5
 30c:	0007a703          	lw	a4,0(a5)
 310:	45c00693          	li	a3,1116
 314:	fec42783          	lw	a5,-20(s0)
 318:	00279793          	slli	a5,a5,0x2
 31c:	00f687b3          	add	a5,a3,a5
 320:	00e7a023          	sw	a4,0(a5)
 324:	fec42783          	lw	a5,-20(s0)
 328:	00178793          	addi	a5,a5,1
 32c:	fef42623          	sw	a5,-20(s0)
 330:	45802783          	lw	a5,1112(zero) # 458 <N>
 334:	fec42703          	lw	a4,-20(s0)
 338:	e4f74ce3          	blt	a4,a5,190 <search+0x30>
 33c:	00000013          	nop
 340:	02c12083          	lw	ra,44(sp)
 344:	02812403          	lw	s0,40(sp)
 348:	03010113          	addi	sp,sp,48
 34c:	00008067          	ret

00000350 <main>:
 350:	ff010113          	addi	sp,sp,-16
 354:	00112623          	sw	ra,12(sp)
 358:	00812423          	sw	s0,8(sp)
 35c:	01010413          	addi	s0,sp,16
 360:	00000513          	li	a0,0
 364:	dfdff0ef          	jal	160 <search>
 368:	51c02783          	lw	a5,1308(zero) # 51c <judgeResult>
 36c:	0fd00713          	li	a4,253
 370:	00070593          	mv	a1,a4
 374:	00078513          	mv	a0,a5
 378:	0a0000ef          	jal	418 <__modsi3>
 37c:	00050793          	mv	a5,a0
 380:	00078513          	mv	a0,a5
 384:	00c12083          	lw	ra,12(sp)
 388:	00812403          	lw	s0,8(sp)
 38c:	01010113          	addi	sp,sp,16
 390:	00008067          	ret

00000394 <__divsi3>:
 394:	06054063          	bltz	a0,3f4 <__umodsi3+0x10>
 398:	0605c663          	bltz	a1,404 <__umodsi3+0x20>

0000039c <__hidden___udivsi3>:
 39c:	00058613          	mv	a2,a1
 3a0:	00050593          	mv	a1,a0
 3a4:	fff00513          	li	a0,-1
 3a8:	02060c63          	beqz	a2,3e0 <__hidden___udivsi3+0x44>
 3ac:	00100693          	li	a3,1
 3b0:	00b67a63          	bgeu	a2,a1,3c4 <__hidden___udivsi3+0x28>
 3b4:	00c05863          	blez	a2,3c4 <__hidden___udivsi3+0x28>
 3b8:	00161613          	slli	a2,a2,0x1
 3bc:	00169693          	slli	a3,a3,0x1
 3c0:	feb66ae3          	bltu	a2,a1,3b4 <__hidden___udivsi3+0x18>
 3c4:	00000513          	li	a0,0
 3c8:	00c5e663          	bltu	a1,a2,3d4 <__hidden___udivsi3+0x38>
 3cc:	40c585b3          	sub	a1,a1,a2
 3d0:	00d56533          	or	a0,a0,a3
 3d4:	0016d693          	srli	a3,a3,0x1
 3d8:	00165613          	srli	a2,a2,0x1
 3dc:	fe0696e3          	bnez	a3,3c8 <__hidden___udivsi3+0x2c>
 3e0:	00008067          	ret

000003e4 <__umodsi3>:
 3e4:	00008293          	mv	t0,ra
 3e8:	fb5ff0ef          	jal	39c <__hidden___udivsi3>
 3ec:	00058513          	mv	a0,a1
 3f0:	00028067          	jr	t0
 3f4:	40a00533          	neg	a0,a0
 3f8:	00b04863          	bgtz	a1,408 <__umodsi3+0x24>
 3fc:	40b005b3          	neg	a1,a1
 400:	f9dff06f          	j	39c <__hidden___udivsi3>
 404:	40b005b3          	neg	a1,a1
 408:	00008293          	mv	t0,ra
 40c:	f91ff0ef          	jal	39c <__hidden___udivsi3>
 410:	40a00533          	neg	a0,a0
 414:	00028067          	jr	t0

00000418 <__modsi3>:
 418:	00008293          	mv	t0,ra
 41c:	0005ca63          	bltz	a1,430 <__modsi3+0x18>
 420:	00054c63          	bltz	a0,438 <__modsi3+0x20>
 424:	f79ff0ef          	jal	39c <__hidden___udivsi3>
 428:	00058513          	mv	a0,a1
 42c:	00028067          	jr	t0
 430:	40b005b3          	neg	a1,a1
 434:	fe0558e3          	bgez	a0,424 <__modsi3+0xc>
 438:	40a00533          	neg	a0,a0
 43c:	f61ff0ef          	jal	39c <__hidden___udivsi3>
 440:	40b00533          	neg	a0,a1
 444:	00028067          	jr	t0


statement_test.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <M+0x1fb18>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	4c002703          	lw	a4,1216(zero) # 4c0 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	4ce02023          	sw	a4,1216(zero) # 4c0 <judgeResult>
  34:	4c002783          	lw	a5,1216(zero) # 4c0 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	4ce02023          	sw	a4,1216(zero) # 4c0 <judgeResult>
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
  78:	4c002783          	lw	a5,1216(zero) # 4c0 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	4ce02023          	sw	a4,1216(zero) # 4c0 <judgeResult>
  84:	4c002783          	lw	a5,1216(zero) # 4c0 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	4ce02023          	sw	a4,1216(zero) # 4c0 <judgeResult>
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
  bc:	f5010113          	addi	sp,sp,-176
  c0:	0a112623          	sw	ra,172(sp)
  c4:	0a812423          	sw	s0,168(sp)
  c8:	0a912223          	sw	s1,164(sp)
  cc:	0b212023          	sw	s2,160(sp)
  d0:	09312e23          	sw	s3,156(sp)
  d4:	0b010413          	addi	s0,sp,176
  d8:	00a00713          	li	a4,10
  dc:	4ce02223          	sw	a4,1220(zero) # 4c4 <N>
  e0:	fc042e23          	sw	zero,-36(s0)
  e4:	0240006f          	j	108 <main+0x4c>
  e8:	fdc42783          	lw	a5,-36(s0)
  ec:	00178713          	addi	a4,a5,1
  f0:	fce42e23          	sw	a4,-36(s0)
  f4:	47000713          	li	a4,1136
  f8:	00279793          	slli	a5,a5,0x2
  fc:	00f707b3          	add	a5,a4,a5
 100:	00100713          	li	a4,1
 104:	00e7a023          	sw	a4,0(a5)
 108:	4c402783          	lw	a5,1220(zero) # 4c4 <N>
 10c:	fdc42703          	lw	a4,-36(s0)
 110:	fce7dce3          	bge	a5,a4,e8 <main+0x2c>
 114:	00100793          	li	a5,1
 118:	f8f42c23          	sw	a5,-104(s0)
 11c:	00200793          	li	a5,2
 120:	fcf42e23          	sw	a5,-36(s0)
 124:	4c402783          	lw	a5,1220(zero) # 4c4 <N>
 128:	fdc42703          	lw	a4,-36(s0)
 12c:	22e7c663          	blt	a5,a4,358 <main+0x29c>
 130:	47000713          	li	a4,1136
 134:	fdc42783          	lw	a5,-36(s0)
 138:	00279793          	slli	a5,a5,0x2
 13c:	00f707b3          	add	a5,a4,a5
 140:	0007a783          	lw	a5,0(a5)
 144:	04078263          	beqz	a5,188 <main+0xcc>
 148:	4c802783          	lw	a5,1224(zero) # 4c8 <M>
 14c:	00178713          	addi	a4,a5,1
 150:	4ce02423          	sw	a4,1224(zero) # 4c8 <M>
 154:	4c802783          	lw	a5,1224(zero) # 4c8 <M>
 158:	00279793          	slli	a5,a5,0x2
 15c:	fe078793          	addi	a5,a5,-32
 160:	008787b3          	add	a5,a5,s0
 164:	fdc42703          	lw	a4,-36(s0)
 168:	f6e7ac23          	sw	a4,-136(a5)
 16c:	fdc42783          	lw	a5,-36(s0)
 170:	fff78713          	addi	a4,a5,-1
 174:	fdc42783          	lw	a5,-36(s0)
 178:	00279793          	slli	a5,a5,0x2
 17c:	fe078793          	addi	a5,a5,-32
 180:	008787b3          	add	a5,a5,s0
 184:	fae7aa23          	sw	a4,-76(a5)
 188:	fdc42783          	lw	a5,-36(s0)
 18c:	fcf42a23          	sw	a5,-44(s0)
 190:	00100793          	li	a5,1
 194:	fcf42c23          	sw	a5,-40(s0)
 198:	1580006f          	j	2f0 <main+0x234>
 19c:	fd842783          	lw	a5,-40(s0)
 1a0:	00279793          	slli	a5,a5,0x2
 1a4:	fe078793          	addi	a5,a5,-32
 1a8:	008787b3          	add	a5,a5,s0
 1ac:	f787a783          	lw	a5,-136(a5)
 1b0:	00078593          	mv	a1,a5
 1b4:	fd442503          	lw	a0,-44(s0)
 1b8:	1dc000ef          	jal	394 <__mulsi3>
 1bc:	00050793          	mv	a5,a0
 1c0:	fcf42823          	sw	a5,-48(s0)
 1c4:	4c402783          	lw	a5,1220(zero) # 4c4 <N>
 1c8:	fd042703          	lw	a4,-48(s0)
 1cc:	10e7ca63          	blt	a5,a4,2e0 <main+0x224>
 1d0:	47000713          	li	a4,1136
 1d4:	fd042783          	lw	a5,-48(s0)
 1d8:	00279793          	slli	a5,a5,0x2
 1dc:	00f707b3          	add	a5,a4,a5
 1e0:	0007a023          	sw	zero,0(a5)
 1e4:	fd842783          	lw	a5,-40(s0)
 1e8:	00279793          	slli	a5,a5,0x2
 1ec:	fe078793          	addi	a5,a5,-32
 1f0:	008787b3          	add	a5,a5,s0
 1f4:	f787a703          	lw	a4,-136(a5)
 1f8:	fd442783          	lw	a5,-44(s0)
 1fc:	00070593          	mv	a1,a4
 200:	00078513          	mv	a0,a5
 204:	238000ef          	jal	43c <__modsi3>
 208:	00050793          	mv	a5,a0
 20c:	04079c63          	bnez	a5,264 <main+0x1a8>
 210:	fd442783          	lw	a5,-44(s0)
 214:	00279793          	slli	a5,a5,0x2
 218:	fe078793          	addi	a5,a5,-32
 21c:	008787b3          	add	a5,a5,s0
 220:	fb47a703          	lw	a4,-76(a5)
 224:	fd842783          	lw	a5,-40(s0)
 228:	00279793          	slli	a5,a5,0x2
 22c:	fe078793          	addi	a5,a5,-32
 230:	008787b3          	add	a5,a5,s0
 234:	f787a783          	lw	a5,-136(a5)
 238:	00078593          	mv	a1,a5
 23c:	00070513          	mv	a0,a4
 240:	154000ef          	jal	394 <__mulsi3>
 244:	00050793          	mv	a5,a0
 248:	00078713          	mv	a4,a5
 24c:	fd042783          	lw	a5,-48(s0)
 250:	00279793          	slli	a5,a5,0x2
 254:	fe078793          	addi	a5,a5,-32
 258:	008787b3          	add	a5,a5,s0
 25c:	fae7aa23          	sw	a4,-76(a5)
 260:	0cc0006f          	j	32c <main+0x270>
 264:	fd442783          	lw	a5,-44(s0)
 268:	00279793          	slli	a5,a5,0x2
 26c:	fe078793          	addi	a5,a5,-32
 270:	008787b3          	add	a5,a5,s0
 274:	fb47a483          	lw	s1,-76(a5)
 278:	fd842783          	lw	a5,-40(s0)
 27c:	00279793          	slli	a5,a5,0x2
 280:	fe078793          	addi	a5,a5,-32
 284:	008787b3          	add	a5,a5,s0
 288:	f787a783          	lw	a5,-136(a5)
 28c:	fff78913          	addi	s2,a5,-1
 290:	fd842783          	lw	a5,-40(s0)
 294:	00279793          	slli	a5,a5,0x2
 298:	fe078793          	addi	a5,a5,-32
 29c:	008787b3          	add	a5,a5,s0
 2a0:	f787a783          	lw	a5,-136(a5)
 2a4:	fd442583          	lw	a1,-44(s0)
 2a8:	00078513          	mv	a0,a5
 2ac:	0e8000ef          	jal	394 <__mulsi3>
 2b0:	00050793          	mv	a5,a0
 2b4:	00078993          	mv	s3,a5
 2b8:	00090593          	mv	a1,s2
 2bc:	00048513          	mv	a0,s1
 2c0:	0d4000ef          	jal	394 <__mulsi3>
 2c4:	00050793          	mv	a5,a0
 2c8:	00078713          	mv	a4,a5
 2cc:	00299793          	slli	a5,s3,0x2
 2d0:	fe078793          	addi	a5,a5,-32
 2d4:	008787b3          	add	a5,a5,s0
 2d8:	fae7aa23          	sw	a4,-76(a5)
 2dc:	0080006f          	j	2e4 <main+0x228>
 2e0:	00000013          	nop
 2e4:	fd842783          	lw	a5,-40(s0)
 2e8:	00178793          	addi	a5,a5,1
 2ec:	fcf42c23          	sw	a5,-40(s0)
 2f0:	4c802783          	lw	a5,1224(zero) # 4c8 <M>
 2f4:	fd842703          	lw	a4,-40(s0)
 2f8:	02e7ca63          	blt	a5,a4,32c <main+0x270>
 2fc:	fd842783          	lw	a5,-40(s0)
 300:	00279793          	slli	a5,a5,0x2
 304:	fe078793          	addi	a5,a5,-32
 308:	008787b3          	add	a5,a5,s0
 30c:	f787a783          	lw	a5,-136(a5)
 310:	fd442583          	lw	a1,-44(s0)
 314:	00078513          	mv	a0,a5
 318:	07c000ef          	jal	394 <__mulsi3>
 31c:	00050793          	mv	a5,a0
 320:	00078713          	mv	a4,a5
 324:	4c402783          	lw	a5,1220(zero) # 4c4 <N>
 328:	e6e7dae3          	bge	a5,a4,19c <main+0xe0>
 32c:	fd442783          	lw	a5,-44(s0)
 330:	00279793          	slli	a5,a5,0x2
 334:	fe078793          	addi	a5,a5,-32
 338:	008787b3          	add	a5,a5,s0
 33c:	fb47a783          	lw	a5,-76(a5)
 340:	00078513          	mv	a0,a5
 344:	cd1ff0ef          	jal	14 <printInt>
 348:	fdc42783          	lw	a5,-36(s0)
 34c:	00178793          	addi	a5,a5,1
 350:	fcf42e23          	sw	a5,-36(s0)
 354:	dd1ff06f          	j	124 <main+0x68>
 358:	00000013          	nop
 35c:	4c002783          	lw	a5,1216(zero) # 4c0 <judgeResult>
 360:	0fd00713          	li	a4,253
 364:	00070593          	mv	a1,a4
 368:	00078513          	mv	a0,a5
 36c:	0d0000ef          	jal	43c <__modsi3>
 370:	00050793          	mv	a5,a0
 374:	00078513          	mv	a0,a5
 378:	0ac12083          	lw	ra,172(sp)
 37c:	0a812403          	lw	s0,168(sp)
 380:	0a412483          	lw	s1,164(sp)
 384:	0a012903          	lw	s2,160(sp)
 388:	09c12983          	lw	s3,156(sp)
 38c:	0b010113          	addi	sp,sp,176
 390:	00008067          	ret

00000394 <__mulsi3>:
 394:	00050613          	mv	a2,a0
 398:	00000513          	li	a0,0
 39c:	0015f693          	andi	a3,a1,1
 3a0:	00068463          	beqz	a3,3a8 <__mulsi3+0x14>
 3a4:	00c50533          	add	a0,a0,a2
 3a8:	0015d593          	srli	a1,a1,0x1
 3ac:	00161613          	slli	a2,a2,0x1
 3b0:	fe0596e3          	bnez	a1,39c <__mulsi3+0x8>
 3b4:	00008067          	ret

000003b8 <__divsi3>:
 3b8:	06054063          	bltz	a0,418 <__umodsi3+0x10>
 3bc:	0605c663          	bltz	a1,428 <__umodsi3+0x20>

000003c0 <__hidden___udivsi3>:
 3c0:	00058613          	mv	a2,a1
 3c4:	00050593          	mv	a1,a0
 3c8:	fff00513          	li	a0,-1
 3cc:	02060c63          	beqz	a2,404 <__hidden___udivsi3+0x44>
 3d0:	00100693          	li	a3,1
 3d4:	00b67a63          	bgeu	a2,a1,3e8 <__hidden___udivsi3+0x28>
 3d8:	00c05863          	blez	a2,3e8 <__hidden___udivsi3+0x28>
 3dc:	00161613          	slli	a2,a2,0x1
 3e0:	00169693          	slli	a3,a3,0x1
 3e4:	feb66ae3          	bltu	a2,a1,3d8 <__hidden___udivsi3+0x18>
 3e8:	00000513          	li	a0,0
 3ec:	00c5e663          	bltu	a1,a2,3f8 <__hidden___udivsi3+0x38>
 3f0:	40c585b3          	sub	a1,a1,a2
 3f4:	00d56533          	or	a0,a0,a3
 3f8:	0016d693          	srli	a3,a3,0x1
 3fc:	00165613          	srli	a2,a2,0x1
 400:	fe0696e3          	bnez	a3,3ec <__hidden___udivsi3+0x2c>
 404:	00008067          	ret

00000408 <__umodsi3>:
 408:	00008293          	mv	t0,ra
 40c:	fb5ff0ef          	jal	3c0 <__hidden___udivsi3>
 410:	00058513          	mv	a0,a1
 414:	00028067          	jr	t0
 418:	40a00533          	neg	a0,a0
 41c:	00b04863          	bgtz	a1,42c <__umodsi3+0x24>
 420:	40b005b3          	neg	a1,a1
 424:	f9dff06f          	j	3c0 <__hidden___udivsi3>
 428:	40b005b3          	neg	a1,a1
 42c:	00008293          	mv	t0,ra
 430:	f91ff0ef          	jal	3c0 <__hidden___udivsi3>
 434:	40a00533          	neg	a0,a0
 438:	00028067          	jr	t0

0000043c <__modsi3>:
 43c:	00008293          	mv	t0,ra
 440:	0005ca63          	bltz	a1,454 <__modsi3+0x18>
 444:	00054c63          	bltz	a0,45c <__modsi3+0x20>
 448:	f79ff0ef          	jal	3c0 <__hidden___udivsi3>
 44c:	00058513          	mv	a0,a1
 450:	00028067          	jr	t0
 454:	40b005b3          	neg	a1,a1
 458:	fe0558e3          	bgez	a0,448 <__modsi3+0xc>
 45c:	40a00533          	neg	a0,a0
 460:	f61ff0ef          	jal	3c0 <__hidden___udivsi3>
 464:	40b00533          	neg	a0,a1
 468:	00028067          	jr	t0

Disassembly of section .rodata:

0000046c <Mod>:
 46c:	000000fd                                ....

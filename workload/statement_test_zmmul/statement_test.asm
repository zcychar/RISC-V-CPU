
statement_test_zmmul.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0e8000ef          	jal	ec <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <M+0xff84>
  18:	00112e23          	sw	ra,28(sp)
  1c:	00812c23          	sw	s0,24(sp)
  20:	02010413          	addi	s0,sp,32
  24:	fea42623          	sw	a0,-20(s0)
  28:	000107b7          	lui	a5,0x10
  2c:	0547a703          	lw	a4,84(a5) # 10054 <judgeResult>
  30:	fec42783          	lw	a5,-20(s0)
  34:	00f74733          	xor	a4,a4,a5
  38:	000107b7          	lui	a5,0x10
  3c:	04e7aa23          	sw	a4,84(a5) # 10054 <judgeResult>
  40:	000107b7          	lui	a5,0x10
  44:	0547a783          	lw	a5,84(a5) # 10054 <judgeResult>
  48:	0ad78713          	addi	a4,a5,173
  4c:	000107b7          	lui	a5,0x10
  50:	04e7aa23          	sw	a4,84(a5) # 10054 <judgeResult>
  54:	00000013          	nop
  58:	01c12083          	lw	ra,28(sp)
  5c:	01812403          	lw	s0,24(sp)
  60:	02010113          	addi	sp,sp,32
  64:	00008067          	ret

00000068 <printStr>:
  68:	fd010113          	addi	sp,sp,-48
  6c:	02112623          	sw	ra,44(sp)
  70:	02812423          	sw	s0,40(sp)
  74:	03010413          	addi	s0,sp,48
  78:	fca42e23          	sw	a0,-36(s0)
  7c:	fdc42783          	lw	a5,-36(s0)
  80:	fef42623          	sw	a5,-20(s0)
  84:	0440006f          	j	c8 <printStr+0x60>
  88:	fec42783          	lw	a5,-20(s0)
  8c:	0007c783          	lbu	a5,0(a5)
  90:	00078713          	mv	a4,a5
  94:	000107b7          	lui	a5,0x10
  98:	0547a783          	lw	a5,84(a5) # 10054 <judgeResult>
  9c:	00f74733          	xor	a4,a4,a5
  a0:	000107b7          	lui	a5,0x10
  a4:	04e7aa23          	sw	a4,84(a5) # 10054 <judgeResult>
  a8:	000107b7          	lui	a5,0x10
  ac:	0547a783          	lw	a5,84(a5) # 10054 <judgeResult>
  b0:	20978713          	addi	a4,a5,521
  b4:	000107b7          	lui	a5,0x10
  b8:	04e7aa23          	sw	a4,84(a5) # 10054 <judgeResult>
  bc:	fec42783          	lw	a5,-20(s0)
  c0:	00178793          	addi	a5,a5,1
  c4:	fef42623          	sw	a5,-20(s0)
  c8:	fec42783          	lw	a5,-20(s0)
  cc:	0007c783          	lbu	a5,0(a5)
  d0:	fa079ce3          	bnez	a5,88 <printStr+0x20>
  d4:	00000013          	nop
  d8:	00000013          	nop
  dc:	02c12083          	lw	ra,44(sp)
  e0:	02812403          	lw	s0,40(sp)
  e4:	03010113          	addi	sp,sp,48
  e8:	00008067          	ret

000000ec <main>:
  ec:	f6010113          	addi	sp,sp,-160
  f0:	08112e23          	sw	ra,156(sp)
  f4:	08812c23          	sw	s0,152(sp)
  f8:	0a010413          	addi	s0,sp,160
  fc:	000107b7          	lui	a5,0x10
 100:	00a00713          	li	a4,10
 104:	04e7ac23          	sw	a4,88(a5) # 10058 <N>
 108:	fe042623          	sw	zero,-20(s0)
 10c:	0280006f          	j	134 <main+0x48>
 110:	fec42783          	lw	a5,-20(s0)
 114:	00178713          	addi	a4,a5,1
 118:	fee42623          	sw	a4,-20(s0)
 11c:	00010737          	lui	a4,0x10
 120:	00470713          	addi	a4,a4,4 # 10004 <check>
 124:	00279793          	slli	a5,a5,0x2
 128:	00f707b3          	add	a5,a4,a5
 12c:	00100713          	li	a4,1
 130:	00e7a023          	sw	a4,0(a5)
 134:	000107b7          	lui	a5,0x10
 138:	0587a783          	lw	a5,88(a5) # 10058 <N>
 13c:	fec42703          	lw	a4,-20(s0)
 140:	fce7d8e3          	bge	a5,a4,110 <main+0x24>
 144:	00100793          	li	a5,1
 148:	faf42423          	sw	a5,-88(s0)
 14c:	00200793          	li	a5,2
 150:	fef42623          	sw	a5,-20(s0)
 154:	000107b7          	lui	a5,0x10
 158:	0587a783          	lw	a5,88(a5) # 10058 <N>
 15c:	fec42703          	lw	a4,-20(s0)
 160:	20e7c663          	blt	a5,a4,36c <main+0x280>
 164:	000107b7          	lui	a5,0x10
 168:	00478713          	addi	a4,a5,4 # 10004 <check>
 16c:	fec42783          	lw	a5,-20(s0)
 170:	00279793          	slli	a5,a5,0x2
 174:	00f707b3          	add	a5,a4,a5
 178:	0007a783          	lw	a5,0(a5)
 17c:	04078863          	beqz	a5,1cc <main+0xe0>
 180:	000107b7          	lui	a5,0x10
 184:	05c7a783          	lw	a5,92(a5) # 1005c <M>
 188:	00178713          	addi	a4,a5,1
 18c:	000107b7          	lui	a5,0x10
 190:	04e7ae23          	sw	a4,92(a5) # 1005c <M>
 194:	000107b7          	lui	a5,0x10
 198:	05c7a703          	lw	a4,92(a5) # 1005c <M>
 19c:	f6840793          	addi	a5,s0,-152
 1a0:	00271713          	slli	a4,a4,0x2
 1a4:	00f707b3          	add	a5,a4,a5
 1a8:	fec42703          	lw	a4,-20(s0)
 1ac:	00e7a023          	sw	a4,0(a5)
 1b0:	fec42783          	lw	a5,-20(s0)
 1b4:	fff78713          	addi	a4,a5,-1
 1b8:	fec42683          	lw	a3,-20(s0)
 1bc:	fa440793          	addi	a5,s0,-92
 1c0:	00269693          	slli	a3,a3,0x2
 1c4:	00f687b3          	add	a5,a3,a5
 1c8:	00e7a023          	sw	a4,0(a5)
 1cc:	fec42783          	lw	a5,-20(s0)
 1d0:	fef42223          	sw	a5,-28(s0)
 1d4:	00100793          	li	a5,1
 1d8:	fef42423          	sw	a5,-24(s0)
 1dc:	12c0006f          	j	308 <main+0x21c>
 1e0:	fe842703          	lw	a4,-24(s0)
 1e4:	f6840793          	addi	a5,s0,-152
 1e8:	00271713          	slli	a4,a4,0x2
 1ec:	00f707b3          	add	a5,a4,a5
 1f0:	0007a783          	lw	a5,0(a5)
 1f4:	fe442703          	lw	a4,-28(s0)
 1f8:	02f707b3          	mul	a5,a4,a5
 1fc:	fef42023          	sw	a5,-32(s0)
 200:	000107b7          	lui	a5,0x10
 204:	0587a783          	lw	a5,88(a5) # 10058 <N>
 208:	fe042703          	lw	a4,-32(s0)
 20c:	0ee7c663          	blt	a5,a4,2f8 <main+0x20c>
 210:	000107b7          	lui	a5,0x10
 214:	00478713          	addi	a4,a5,4 # 10004 <check>
 218:	fe042783          	lw	a5,-32(s0)
 21c:	00279793          	slli	a5,a5,0x2
 220:	00f707b3          	add	a5,a4,a5
 224:	0007a023          	sw	zero,0(a5)
 228:	fe842703          	lw	a4,-24(s0)
 22c:	f6840793          	addi	a5,s0,-152
 230:	00271713          	slli	a4,a4,0x2
 234:	00f707b3          	add	a5,a4,a5
 238:	0007a703          	lw	a4,0(a5)
 23c:	fe442783          	lw	a5,-28(s0)
 240:	00070593          	mv	a1,a4
 244:	00078513          	mv	a0,a5
 248:	1dc000ef          	jal	424 <__modsi3>
 24c:	00050793          	mv	a5,a0
 250:	04079463          	bnez	a5,298 <main+0x1ac>
 254:	fe442703          	lw	a4,-28(s0)
 258:	fa440793          	addi	a5,s0,-92
 25c:	00271713          	slli	a4,a4,0x2
 260:	00f707b3          	add	a5,a4,a5
 264:	0007a703          	lw	a4,0(a5)
 268:	fe842683          	lw	a3,-24(s0)
 26c:	f6840793          	addi	a5,s0,-152
 270:	00269693          	slli	a3,a3,0x2
 274:	00f687b3          	add	a5,a3,a5
 278:	0007a783          	lw	a5,0(a5)
 27c:	02f70733          	mul	a4,a4,a5
 280:	fe042683          	lw	a3,-32(s0)
 284:	fa440793          	addi	a5,s0,-92
 288:	00269693          	slli	a3,a3,0x2
 28c:	00f687b3          	add	a5,a3,a5
 290:	00e7a023          	sw	a4,0(a5)
 294:	0ac0006f          	j	340 <main+0x254>
 298:	fe442703          	lw	a4,-28(s0)
 29c:	fa440793          	addi	a5,s0,-92
 2a0:	00271713          	slli	a4,a4,0x2
 2a4:	00f707b3          	add	a5,a4,a5
 2a8:	0007a703          	lw	a4,0(a5)
 2ac:	fe842683          	lw	a3,-24(s0)
 2b0:	f6840793          	addi	a5,s0,-152
 2b4:	00269693          	slli	a3,a3,0x2
 2b8:	00f687b3          	add	a5,a3,a5
 2bc:	0007a783          	lw	a5,0(a5)
 2c0:	fff78793          	addi	a5,a5,-1
 2c4:	fe842603          	lw	a2,-24(s0)
 2c8:	f6840693          	addi	a3,s0,-152
 2cc:	00261613          	slli	a2,a2,0x2
 2d0:	00d606b3          	add	a3,a2,a3
 2d4:	0006a603          	lw	a2,0(a3)
 2d8:	fe442683          	lw	a3,-28(s0)
 2dc:	02d606b3          	mul	a3,a2,a3
 2e0:	02f70733          	mul	a4,a4,a5
 2e4:	fa440793          	addi	a5,s0,-92
 2e8:	00269693          	slli	a3,a3,0x2
 2ec:	00f687b3          	add	a5,a3,a5
 2f0:	00e7a023          	sw	a4,0(a5)
 2f4:	0080006f          	j	2fc <main+0x210>
 2f8:	00000013          	nop
 2fc:	fe842783          	lw	a5,-24(s0)
 300:	00178793          	addi	a5,a5,1
 304:	fef42423          	sw	a5,-24(s0)
 308:	000107b7          	lui	a5,0x10
 30c:	05c7a783          	lw	a5,92(a5) # 1005c <M>
 310:	fe842703          	lw	a4,-24(s0)
 314:	02e7c663          	blt	a5,a4,340 <main+0x254>
 318:	fe842703          	lw	a4,-24(s0)
 31c:	f6840793          	addi	a5,s0,-152
 320:	00271713          	slli	a4,a4,0x2
 324:	00f707b3          	add	a5,a4,a5
 328:	0007a703          	lw	a4,0(a5)
 32c:	fe442783          	lw	a5,-28(s0)
 330:	02f70733          	mul	a4,a4,a5
 334:	000107b7          	lui	a5,0x10
 338:	0587a783          	lw	a5,88(a5) # 10058 <N>
 33c:	eae7d2e3          	bge	a5,a4,1e0 <main+0xf4>
 340:	fe442703          	lw	a4,-28(s0)
 344:	fa440793          	addi	a5,s0,-92
 348:	00271713          	slli	a4,a4,0x2
 34c:	00f707b3          	add	a5,a4,a5
 350:	0007a783          	lw	a5,0(a5)
 354:	00078513          	mv	a0,a5
 358:	cbdff0ef          	jal	14 <printInt>
 35c:	fec42783          	lw	a5,-20(s0)
 360:	00178793          	addi	a5,a5,1
 364:	fef42623          	sw	a5,-20(s0)
 368:	dedff06f          	j	154 <main+0x68>
 36c:	00000013          	nop
 370:	000107b7          	lui	a5,0x10
 374:	0547a783          	lw	a5,84(a5) # 10054 <judgeResult>
 378:	0fd00713          	li	a4,253
 37c:	00070593          	mv	a1,a4
 380:	00078513          	mv	a0,a5
 384:	0a0000ef          	jal	424 <__modsi3>
 388:	00050793          	mv	a5,a0
 38c:	00078513          	mv	a0,a5
 390:	09c12083          	lw	ra,156(sp)
 394:	09812403          	lw	s0,152(sp)
 398:	0a010113          	addi	sp,sp,160
 39c:	00008067          	ret

000003a0 <__divsi3>:
 3a0:	06054063          	bltz	a0,400 <__umodsi3+0x10>
 3a4:	0605c663          	bltz	a1,410 <__umodsi3+0x20>

000003a8 <__hidden___udivsi3>:
 3a8:	00058613          	mv	a2,a1
 3ac:	00050593          	mv	a1,a0
 3b0:	fff00513          	li	a0,-1
 3b4:	02060c63          	beqz	a2,3ec <__hidden___udivsi3+0x44>
 3b8:	00100693          	li	a3,1
 3bc:	00b67a63          	bgeu	a2,a1,3d0 <__hidden___udivsi3+0x28>
 3c0:	00c05863          	blez	a2,3d0 <__hidden___udivsi3+0x28>
 3c4:	00161613          	slli	a2,a2,0x1
 3c8:	00169693          	slli	a3,a3,0x1
 3cc:	feb66ae3          	bltu	a2,a1,3c0 <__hidden___udivsi3+0x18>
 3d0:	00000513          	li	a0,0
 3d4:	00c5e663          	bltu	a1,a2,3e0 <__hidden___udivsi3+0x38>
 3d8:	40c585b3          	sub	a1,a1,a2
 3dc:	00d56533          	or	a0,a0,a3
 3e0:	0016d693          	srli	a3,a3,0x1
 3e4:	00165613          	srli	a2,a2,0x1
 3e8:	fe0696e3          	bnez	a3,3d4 <__hidden___udivsi3+0x2c>
 3ec:	00008067          	ret

000003f0 <__umodsi3>:
 3f0:	00008293          	mv	t0,ra
 3f4:	fb5ff0ef          	jal	3a8 <__hidden___udivsi3>
 3f8:	00058513          	mv	a0,a1
 3fc:	00028067          	jr	t0
 400:	40a00533          	neg	a0,a0
 404:	00b04863          	bgtz	a1,414 <__umodsi3+0x24>
 408:	40b005b3          	neg	a1,a1
 40c:	f9dff06f          	j	3a8 <__hidden___udivsi3>
 410:	40b005b3          	neg	a1,a1
 414:	00008293          	mv	t0,ra
 418:	f91ff0ef          	jal	3a8 <__hidden___udivsi3>
 41c:	40a00533          	neg	a0,a0
 420:	00028067          	jr	t0

00000424 <__modsi3>:
 424:	00008293          	mv	t0,ra
 428:	0005ca63          	bltz	a1,43c <__modsi3+0x18>
 42c:	00054c63          	bltz	a0,444 <__modsi3+0x20>
 430:	f79ff0ef          	jal	3a8 <__hidden___udivsi3>
 434:	00058513          	mv	a0,a1
 438:	00028067          	jr	t0
 43c:	40b005b3          	neg	a1,a1
 440:	fe0558e3          	bgez	a0,430 <__modsi3+0xc>
 444:	40a00533          	neg	a0,a0
 448:	f61ff0ef          	jal	3a8 <__hidden___udivsi3>
 44c:	40b00533          	neg	a0,a1
 450:	00028067          	jr	t0

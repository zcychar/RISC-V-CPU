
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
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <M+0x1fb94>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	44402703          	lw	a4,1092(zero) # 444 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	44e02223          	sw	a4,1092(zero) # 444 <judgeResult>
  34:	44402783          	lw	a5,1092(zero) # 444 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	44e02223          	sw	a4,1092(zero) # 444 <judgeResult>
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
  78:	44402783          	lw	a5,1092(zero) # 444 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	44e02223          	sw	a4,1092(zero) # 444 <judgeResult>
  84:	44402783          	lw	a5,1092(zero) # 444 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	44e02223          	sw	a4,1092(zero) # 444 <judgeResult>
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
  bc:	f6010113          	addi	sp,sp,-160
  c0:	08112e23          	sw	ra,156(sp)
  c4:	08812c23          	sw	s0,152(sp)
  c8:	0a010413          	addi	s0,sp,160
  cc:	00a00713          	li	a4,10
  d0:	44e02423          	sw	a4,1096(zero) # 448 <N>
  d4:	fe042623          	sw	zero,-20(s0)
  d8:	0240006f          	j	fc <main+0x40>
  dc:	fec42783          	lw	a5,-20(s0)
  e0:	00178713          	addi	a4,a5,1
  e4:	fee42623          	sw	a4,-20(s0)
  e8:	3f400713          	li	a4,1012
  ec:	00279793          	slli	a5,a5,0x2
  f0:	00f707b3          	add	a5,a4,a5
  f4:	00100713          	li	a4,1
  f8:	00e7a023          	sw	a4,0(a5)
  fc:	44802783          	lw	a5,1096(zero) # 448 <N>
 100:	fec42703          	lw	a4,-20(s0)
 104:	fce7dce3          	bge	a5,a4,dc <main+0x20>
 108:	00100793          	li	a5,1
 10c:	faf42423          	sw	a5,-88(s0)
 110:	00200793          	li	a5,2
 114:	fef42623          	sw	a5,-20(s0)
 118:	44802783          	lw	a5,1096(zero) # 448 <N>
 11c:	fec42703          	lw	a4,-20(s0)
 120:	1ee7c663          	blt	a5,a4,30c <main+0x250>
 124:	3f400713          	li	a4,1012
 128:	fec42783          	lw	a5,-20(s0)
 12c:	00279793          	slli	a5,a5,0x2
 130:	00f707b3          	add	a5,a4,a5
 134:	0007a783          	lw	a5,0(a5)
 138:	04078263          	beqz	a5,17c <main+0xc0>
 13c:	44c02783          	lw	a5,1100(zero) # 44c <M>
 140:	00178713          	addi	a4,a5,1
 144:	44e02623          	sw	a4,1100(zero) # 44c <M>
 148:	44c02783          	lw	a5,1100(zero) # 44c <M>
 14c:	00279793          	slli	a5,a5,0x2
 150:	ff078793          	addi	a5,a5,-16
 154:	008787b3          	add	a5,a5,s0
 158:	fec42703          	lw	a4,-20(s0)
 15c:	f6e7ac23          	sw	a4,-136(a5)
 160:	fec42783          	lw	a5,-20(s0)
 164:	fff78713          	addi	a4,a5,-1
 168:	fec42783          	lw	a5,-20(s0)
 16c:	00279793          	slli	a5,a5,0x2
 170:	ff078793          	addi	a5,a5,-16
 174:	008787b3          	add	a5,a5,s0
 178:	fae7aa23          	sw	a4,-76(a5)
 17c:	fec42783          	lw	a5,-20(s0)
 180:	fef42223          	sw	a5,-28(s0)
 184:	00100793          	li	a5,1
 188:	fef42423          	sw	a5,-24(s0)
 18c:	1240006f          	j	2b0 <main+0x1f4>
 190:	fe842783          	lw	a5,-24(s0)
 194:	00279793          	slli	a5,a5,0x2
 198:	ff078793          	addi	a5,a5,-16
 19c:	008787b3          	add	a5,a5,s0
 1a0:	f787a783          	lw	a5,-136(a5)
 1a4:	fe442703          	lw	a4,-28(s0)
 1a8:	02f707b3          	mul	a5,a4,a5
 1ac:	fef42023          	sw	a5,-32(s0)
 1b0:	44802783          	lw	a5,1096(zero) # 448 <N>
 1b4:	fe042703          	lw	a4,-32(s0)
 1b8:	0ee7c463          	blt	a5,a4,2a0 <main+0x1e4>
 1bc:	3f400713          	li	a4,1012
 1c0:	fe042783          	lw	a5,-32(s0)
 1c4:	00279793          	slli	a5,a5,0x2
 1c8:	00f707b3          	add	a5,a4,a5
 1cc:	0007a023          	sw	zero,0(a5)
 1d0:	fe842783          	lw	a5,-24(s0)
 1d4:	00279793          	slli	a5,a5,0x2
 1d8:	ff078793          	addi	a5,a5,-16
 1dc:	008787b3          	add	a5,a5,s0
 1e0:	f787a703          	lw	a4,-136(a5)
 1e4:	fe442783          	lw	a5,-28(s0)
 1e8:	00070593          	mv	a1,a4
 1ec:	00078513          	mv	a0,a5
 1f0:	1d0000ef          	jal	3c0 <__modsi3>
 1f4:	00050793          	mv	a5,a0
 1f8:	04079463          	bnez	a5,240 <main+0x184>
 1fc:	fe442783          	lw	a5,-28(s0)
 200:	00279793          	slli	a5,a5,0x2
 204:	ff078793          	addi	a5,a5,-16
 208:	008787b3          	add	a5,a5,s0
 20c:	fb47a703          	lw	a4,-76(a5)
 210:	fe842783          	lw	a5,-24(s0)
 214:	00279793          	slli	a5,a5,0x2
 218:	ff078793          	addi	a5,a5,-16
 21c:	008787b3          	add	a5,a5,s0
 220:	f787a783          	lw	a5,-136(a5)
 224:	02f70733          	mul	a4,a4,a5
 228:	fe042783          	lw	a5,-32(s0)
 22c:	00279793          	slli	a5,a5,0x2
 230:	ff078793          	addi	a5,a5,-16
 234:	008787b3          	add	a5,a5,s0
 238:	fae7aa23          	sw	a4,-76(a5)
 23c:	0a40006f          	j	2e0 <main+0x224>
 240:	fe442783          	lw	a5,-28(s0)
 244:	00279793          	slli	a5,a5,0x2
 248:	ff078793          	addi	a5,a5,-16
 24c:	008787b3          	add	a5,a5,s0
 250:	fb47a683          	lw	a3,-76(a5)
 254:	fe842783          	lw	a5,-24(s0)
 258:	00279793          	slli	a5,a5,0x2
 25c:	ff078793          	addi	a5,a5,-16
 260:	008787b3          	add	a5,a5,s0
 264:	f787a783          	lw	a5,-136(a5)
 268:	fff78713          	addi	a4,a5,-1
 26c:	fe842783          	lw	a5,-24(s0)
 270:	00279793          	slli	a5,a5,0x2
 274:	ff078793          	addi	a5,a5,-16
 278:	008787b3          	add	a5,a5,s0
 27c:	f787a603          	lw	a2,-136(a5)
 280:	fe442783          	lw	a5,-28(s0)
 284:	02f607b3          	mul	a5,a2,a5
 288:	02e68733          	mul	a4,a3,a4
 28c:	00279793          	slli	a5,a5,0x2
 290:	ff078793          	addi	a5,a5,-16
 294:	008787b3          	add	a5,a5,s0
 298:	fae7aa23          	sw	a4,-76(a5)
 29c:	0080006f          	j	2a4 <main+0x1e8>
 2a0:	00000013          	nop
 2a4:	fe842783          	lw	a5,-24(s0)
 2a8:	00178793          	addi	a5,a5,1
 2ac:	fef42423          	sw	a5,-24(s0)
 2b0:	44c02783          	lw	a5,1100(zero) # 44c <M>
 2b4:	fe842703          	lw	a4,-24(s0)
 2b8:	02e7c463          	blt	a5,a4,2e0 <main+0x224>
 2bc:	fe842783          	lw	a5,-24(s0)
 2c0:	00279793          	slli	a5,a5,0x2
 2c4:	ff078793          	addi	a5,a5,-16
 2c8:	008787b3          	add	a5,a5,s0
 2cc:	f787a703          	lw	a4,-136(a5)
 2d0:	fe442783          	lw	a5,-28(s0)
 2d4:	02f70733          	mul	a4,a4,a5
 2d8:	44802783          	lw	a5,1096(zero) # 448 <N>
 2dc:	eae7dae3          	bge	a5,a4,190 <main+0xd4>
 2e0:	fe442783          	lw	a5,-28(s0)
 2e4:	00279793          	slli	a5,a5,0x2
 2e8:	ff078793          	addi	a5,a5,-16
 2ec:	008787b3          	add	a5,a5,s0
 2f0:	fb47a783          	lw	a5,-76(a5)
 2f4:	00078513          	mv	a0,a5
 2f8:	d1dff0ef          	jal	14 <printInt>
 2fc:	fec42783          	lw	a5,-20(s0)
 300:	00178793          	addi	a5,a5,1
 304:	fef42623          	sw	a5,-20(s0)
 308:	e11ff06f          	j	118 <main+0x5c>
 30c:	00000013          	nop
 310:	44402783          	lw	a5,1092(zero) # 444 <judgeResult>
 314:	0fd00713          	li	a4,253
 318:	00070593          	mv	a1,a4
 31c:	00078513          	mv	a0,a5
 320:	0a0000ef          	jal	3c0 <__modsi3>
 324:	00050793          	mv	a5,a0
 328:	00078513          	mv	a0,a5
 32c:	09c12083          	lw	ra,156(sp)
 330:	09812403          	lw	s0,152(sp)
 334:	0a010113          	addi	sp,sp,160
 338:	00008067          	ret

0000033c <__divsi3>:
 33c:	06054063          	bltz	a0,39c <__umodsi3+0x10>
 340:	0605c663          	bltz	a1,3ac <__umodsi3+0x20>

00000344 <__hidden___udivsi3>:
 344:	00058613          	mv	a2,a1
 348:	00050593          	mv	a1,a0
 34c:	fff00513          	li	a0,-1
 350:	02060c63          	beqz	a2,388 <__hidden___udivsi3+0x44>
 354:	00100693          	li	a3,1
 358:	00b67a63          	bgeu	a2,a1,36c <__hidden___udivsi3+0x28>
 35c:	00c05863          	blez	a2,36c <__hidden___udivsi3+0x28>
 360:	00161613          	slli	a2,a2,0x1
 364:	00169693          	slli	a3,a3,0x1
 368:	feb66ae3          	bltu	a2,a1,35c <__hidden___udivsi3+0x18>
 36c:	00000513          	li	a0,0
 370:	00c5e663          	bltu	a1,a2,37c <__hidden___udivsi3+0x38>
 374:	40c585b3          	sub	a1,a1,a2
 378:	00d56533          	or	a0,a0,a3
 37c:	0016d693          	srli	a3,a3,0x1
 380:	00165613          	srli	a2,a2,0x1
 384:	fe0696e3          	bnez	a3,370 <__hidden___udivsi3+0x2c>
 388:	00008067          	ret

0000038c <__umodsi3>:
 38c:	00008293          	mv	t0,ra
 390:	fb5ff0ef          	jal	344 <__hidden___udivsi3>
 394:	00058513          	mv	a0,a1
 398:	00028067          	jr	t0
 39c:	40a00533          	neg	a0,a0
 3a0:	00b04863          	bgtz	a1,3b0 <__umodsi3+0x24>
 3a4:	40b005b3          	neg	a1,a1
 3a8:	f9dff06f          	j	344 <__hidden___udivsi3>
 3ac:	40b005b3          	neg	a1,a1
 3b0:	00008293          	mv	t0,ra
 3b4:	f91ff0ef          	jal	344 <__hidden___udivsi3>
 3b8:	40a00533          	neg	a0,a0
 3bc:	00028067          	jr	t0

000003c0 <__modsi3>:
 3c0:	00008293          	mv	t0,ra
 3c4:	0005ca63          	bltz	a1,3d8 <__modsi3+0x18>
 3c8:	00054c63          	bltz	a0,3e0 <__modsi3+0x20>
 3cc:	f79ff0ef          	jal	344 <__hidden___udivsi3>
 3d0:	00058513          	mv	a0,a1
 3d4:	00028067          	jr	t0
 3d8:	40b005b3          	neg	a1,a1
 3dc:	fe0558e3          	bgez	a0,3cc <__modsi3+0xc>
 3e0:	40a00533          	neg	a0,a0
 3e4:	f61ff0ef          	jal	344 <__hidden___udivsi3>
 3e8:	40b00533          	neg	a0,a1
 3ec:	00028067          	jr	t0

Disassembly of section .rodata:

000003f0 <Mod>:
 3f0:	000000fd                                ....


qsort.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	258000ef          	jal	25c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x15e08>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	0000a7b7          	lui	a5,0xa
  28:	1d87a703          	lw	a4,472(a5) # a1d8 <judgeResult>
  2c:	fec42783          	lw	a5,-20(s0)
  30:	00f74733          	xor	a4,a4,a5
  34:	0000a7b7          	lui	a5,0xa
  38:	1ce7ac23          	sw	a4,472(a5) # a1d8 <judgeResult>
  3c:	0000a7b7          	lui	a5,0xa
  40:	1d87a783          	lw	a5,472(a5) # a1d8 <judgeResult>
  44:	0ad78713          	addi	a4,a5,173
  48:	0000a7b7          	lui	a5,0xa
  4c:	1ce7ac23          	sw	a4,472(a5) # a1d8 <judgeResult>
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
  88:	0000a7b7          	lui	a5,0xa
  8c:	1d87a783          	lw	a5,472(a5) # a1d8 <judgeResult>
  90:	00f74733          	xor	a4,a4,a5
  94:	0000a7b7          	lui	a5,0xa
  98:	1ce7ac23          	sw	a4,472(a5) # a1d8 <judgeResult>
  9c:	0000a7b7          	lui	a5,0xa
  a0:	1d87a783          	lw	a5,472(a5) # a1d8 <judgeResult>
  a4:	20978713          	addi	a4,a5,521
  a8:	0000a7b7          	lui	a5,0xa
  ac:	1ce7ac23          	sw	a4,472(a5) # a1d8 <judgeResult>
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

000000dc <qsrt>:
  dc:	fd010113          	addi	sp,sp,-48
  e0:	02112623          	sw	ra,44(sp)
  e4:	02812423          	sw	s0,40(sp)
  e8:	03010413          	addi	s0,sp,48
  ec:	fca42e23          	sw	a0,-36(s0)
  f0:	fcb42c23          	sw	a1,-40(s0)
  f4:	fdc42783          	lw	a5,-36(s0)
  f8:	fef42623          	sw	a5,-20(s0)
  fc:	fd842783          	lw	a5,-40(s0)
 100:	fef42423          	sw	a5,-24(s0)
 104:	fdc42703          	lw	a4,-36(s0)
 108:	fd842783          	lw	a5,-40(s0)
 10c:	00f707b3          	add	a5,a4,a5
 110:	01f7d713          	srli	a4,a5,0x1f
 114:	00f707b3          	add	a5,a4,a5
 118:	4017d793          	srai	a5,a5,0x1
 11c:	00078693          	mv	a3,a5
 120:	40800713          	li	a4,1032
 124:	00269793          	slli	a5,a3,0x2
 128:	00f707b3          	add	a5,a4,a5
 12c:	0007a783          	lw	a5,0(a5)
 130:	fef42223          	sw	a5,-28(s0)
 134:	0d40006f          	j	208 <qsrt+0x12c>
 138:	fec42783          	lw	a5,-20(s0)
 13c:	00178793          	addi	a5,a5,1
 140:	fef42623          	sw	a5,-20(s0)
 144:	40800713          	li	a4,1032
 148:	fec42783          	lw	a5,-20(s0)
 14c:	00279793          	slli	a5,a5,0x2
 150:	00f707b3          	add	a5,a4,a5
 154:	0007a783          	lw	a5,0(a5)
 158:	fe442703          	lw	a4,-28(s0)
 15c:	fce7cee3          	blt	a5,a4,138 <qsrt+0x5c>
 160:	0100006f          	j	170 <qsrt+0x94>
 164:	fe842783          	lw	a5,-24(s0)
 168:	fff78793          	addi	a5,a5,-1
 16c:	fef42423          	sw	a5,-24(s0)
 170:	40800713          	li	a4,1032
 174:	fe842783          	lw	a5,-24(s0)
 178:	00279793          	slli	a5,a5,0x2
 17c:	00f707b3          	add	a5,a4,a5
 180:	0007a783          	lw	a5,0(a5)
 184:	fe442703          	lw	a4,-28(s0)
 188:	fcf74ee3          	blt	a4,a5,164 <qsrt+0x88>
 18c:	fec42703          	lw	a4,-20(s0)
 190:	fe842783          	lw	a5,-24(s0)
 194:	06e7ca63          	blt	a5,a4,208 <qsrt+0x12c>
 198:	40800713          	li	a4,1032
 19c:	fec42783          	lw	a5,-20(s0)
 1a0:	00279793          	slli	a5,a5,0x2
 1a4:	00f707b3          	add	a5,a4,a5
 1a8:	0007a783          	lw	a5,0(a5)
 1ac:	fef42023          	sw	a5,-32(s0)
 1b0:	40800713          	li	a4,1032
 1b4:	fe842783          	lw	a5,-24(s0)
 1b8:	00279793          	slli	a5,a5,0x2
 1bc:	00f707b3          	add	a5,a4,a5
 1c0:	0007a703          	lw	a4,0(a5)
 1c4:	40800693          	li	a3,1032
 1c8:	fec42783          	lw	a5,-20(s0)
 1cc:	00279793          	slli	a5,a5,0x2
 1d0:	00f687b3          	add	a5,a3,a5
 1d4:	00e7a023          	sw	a4,0(a5)
 1d8:	40800713          	li	a4,1032
 1dc:	fe842783          	lw	a5,-24(s0)
 1e0:	00279793          	slli	a5,a5,0x2
 1e4:	00f707b3          	add	a5,a4,a5
 1e8:	fe042703          	lw	a4,-32(s0)
 1ec:	00e7a023          	sw	a4,0(a5)
 1f0:	fec42783          	lw	a5,-20(s0)
 1f4:	00178793          	addi	a5,a5,1
 1f8:	fef42623          	sw	a5,-20(s0)
 1fc:	fe842783          	lw	a5,-24(s0)
 200:	fff78793          	addi	a5,a5,-1
 204:	fef42423          	sw	a5,-24(s0)
 208:	fec42703          	lw	a4,-20(s0)
 20c:	fe842783          	lw	a5,-24(s0)
 210:	f2e7dae3          	bge	a5,a4,144 <qsrt+0x68>
 214:	fdc42703          	lw	a4,-36(s0)
 218:	fe842783          	lw	a5,-24(s0)
 21c:	00f75863          	bge	a4,a5,22c <qsrt+0x150>
 220:	fe842583          	lw	a1,-24(s0)
 224:	fdc42503          	lw	a0,-36(s0)
 228:	eb5ff0ef          	jal	dc <qsrt>
 22c:	fec42703          	lw	a4,-20(s0)
 230:	fd842783          	lw	a5,-40(s0)
 234:	00f75863          	bge	a4,a5,244 <qsrt+0x168>
 238:	fd842583          	lw	a1,-40(s0)
 23c:	fec42503          	lw	a0,-20(s0)
 240:	e9dff0ef          	jal	dc <qsrt>
 244:	00000793          	li	a5,0
 248:	00078513          	mv	a0,a5
 24c:	02c12083          	lw	ra,44(sp)
 250:	02812403          	lw	s0,40(sp)
 254:	03010113          	addi	sp,sp,48
 258:	00008067          	ret

0000025c <main>:
 25c:	fe010113          	addi	sp,sp,-32
 260:	00112e23          	sw	ra,28(sp)
 264:	00812c23          	sw	s0,24(sp)
 268:	02010413          	addi	s0,sp,32
 26c:	00100793          	li	a5,1
 270:	fef42623          	sw	a5,-20(s0)
 274:	0340006f          	j	2a8 <main+0x4c>
 278:	40402783          	lw	a5,1028(zero) # 404 <n>
 27c:	00178713          	addi	a4,a5,1
 280:	fec42783          	lw	a5,-20(s0)
 284:	40f70733          	sub	a4,a4,a5
 288:	40800693          	li	a3,1032
 28c:	fec42783          	lw	a5,-20(s0)
 290:	00279793          	slli	a5,a5,0x2
 294:	00f687b3          	add	a5,a3,a5
 298:	00e7a023          	sw	a4,0(a5)
 29c:	fec42783          	lw	a5,-20(s0)
 2a0:	00178793          	addi	a5,a5,1
 2a4:	fef42623          	sw	a5,-20(s0)
 2a8:	40402783          	lw	a5,1028(zero) # 404 <n>
 2ac:	fec42703          	lw	a4,-20(s0)
 2b0:	fce7d4e3          	bge	a5,a4,278 <main+0x1c>
 2b4:	40402783          	lw	a5,1028(zero) # 404 <n>
 2b8:	00078593          	mv	a1,a5
 2bc:	00100513          	li	a0,1
 2c0:	e1dff0ef          	jal	dc <qsrt>
 2c4:	00100793          	li	a5,1
 2c8:	fef42623          	sw	a5,-20(s0)
 2cc:	0340006f          	j	300 <main+0xa4>
 2d0:	40800713          	li	a4,1032
 2d4:	fec42783          	lw	a5,-20(s0)
 2d8:	00279793          	slli	a5,a5,0x2
 2dc:	00f707b3          	add	a5,a4,a5
 2e0:	0007a783          	lw	a5,0(a5)
 2e4:	00078513          	mv	a0,a5
 2e8:	d2dff0ef          	jal	14 <printInt>
 2ec:	3f800513          	li	a0,1016
 2f0:	d71ff0ef          	jal	60 <printStr>
 2f4:	fec42783          	lw	a5,-20(s0)
 2f8:	00178793          	addi	a5,a5,1
 2fc:	fef42623          	sw	a5,-20(s0)
 300:	40402783          	lw	a5,1028(zero) # 404 <n>
 304:	fec42703          	lw	a4,-20(s0)
 308:	fce7d4e3          	bge	a5,a4,2d0 <main+0x74>
 30c:	3fc00513          	li	a0,1020
 310:	d51ff0ef          	jal	60 <printStr>
 314:	0000a7b7          	lui	a5,0xa
 318:	1d87a783          	lw	a5,472(a5) # a1d8 <judgeResult>
 31c:	0fd00713          	li	a4,253
 320:	00070593          	mv	a1,a4
 324:	00078513          	mv	a0,a5
 328:	0a0000ef          	jal	3c8 <__modsi3>
 32c:	00050793          	mv	a5,a0
 330:	00078513          	mv	a0,a5
 334:	01c12083          	lw	ra,28(sp)
 338:	01812403          	lw	s0,24(sp)
 33c:	02010113          	addi	sp,sp,32
 340:	00008067          	ret

00000344 <__divsi3>:
 344:	06054063          	bltz	a0,3a4 <__umodsi3+0x10>
 348:	0605c663          	bltz	a1,3b4 <__umodsi3+0x20>

0000034c <__hidden___udivsi3>:
 34c:	00058613          	mv	a2,a1
 350:	00050593          	mv	a1,a0
 354:	fff00513          	li	a0,-1
 358:	02060c63          	beqz	a2,390 <__hidden___udivsi3+0x44>
 35c:	00100693          	li	a3,1
 360:	00b67a63          	bgeu	a2,a1,374 <__hidden___udivsi3+0x28>
 364:	00c05863          	blez	a2,374 <__hidden___udivsi3+0x28>
 368:	00161613          	slli	a2,a2,0x1
 36c:	00169693          	slli	a3,a3,0x1
 370:	feb66ae3          	bltu	a2,a1,364 <__hidden___udivsi3+0x18>
 374:	00000513          	li	a0,0
 378:	00c5e663          	bltu	a1,a2,384 <__hidden___udivsi3+0x38>
 37c:	40c585b3          	sub	a1,a1,a2
 380:	00d56533          	or	a0,a0,a3
 384:	0016d693          	srli	a3,a3,0x1
 388:	00165613          	srli	a2,a2,0x1
 38c:	fe0696e3          	bnez	a3,378 <__hidden___udivsi3+0x2c>
 390:	00008067          	ret

00000394 <__umodsi3>:
 394:	00008293          	mv	t0,ra
 398:	fb5ff0ef          	jal	34c <__hidden___udivsi3>
 39c:	00058513          	mv	a0,a1
 3a0:	00028067          	jr	t0
 3a4:	40a00533          	neg	a0,a0
 3a8:	00b04863          	bgtz	a1,3b8 <__umodsi3+0x24>
 3ac:	40b005b3          	neg	a1,a1
 3b0:	f9dff06f          	j	34c <__hidden___udivsi3>
 3b4:	40b005b3          	neg	a1,a1
 3b8:	00008293          	mv	t0,ra
 3bc:	f91ff0ef          	jal	34c <__hidden___udivsi3>
 3c0:	40a00533          	neg	a0,a0
 3c4:	00028067          	jr	t0

000003c8 <__modsi3>:
 3c8:	00008293          	mv	t0,ra
 3cc:	0005ca63          	bltz	a1,3e0 <__modsi3+0x18>
 3d0:	00054c63          	bltz	a0,3e8 <__modsi3+0x20>
 3d4:	f79ff0ef          	jal	34c <__hidden___udivsi3>
 3d8:	00058513          	mv	a0,a1
 3dc:	00028067          	jr	t0
 3e0:	40b005b3          	neg	a1,a1
 3e4:	fe0558e3          	bgez	a0,3d4 <__modsi3+0xc>
 3e8:	40a00533          	neg	a0,a0
 3ec:	f61ff0ef          	jal	34c <__hidden___udivsi3>
 3f0:	40b00533          	neg	a0,a1
 3f4:	00028067          	jr	t0

Disassembly of section .rodata:

000003f8 <Mod-0x8>:
 3f8:	00000020          	.word	0x00000020
 3fc:	0000000a          	.word	0x0000000a

00000400 <Mod>:
 400:	000000fd                                ....

Disassembly of section .data:

00000404 <n>:
 404:	00002710                                .'..

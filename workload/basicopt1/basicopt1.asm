
basicopt1.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0e4000ef          	jal	e8 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <printInt>:
  10:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0xffe0>
  14:	00112e23          	sw	ra,28(sp)
  18:	00812c23          	sw	s0,24(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	000107b7          	lui	a5,0x10
  28:	0007a703          	lw	a4,0(a5) # 10000 <judgeResult>
  2c:	fec42783          	lw	a5,-20(s0)
  30:	00f74733          	xor	a4,a4,a5
  34:	000107b7          	lui	a5,0x10
  38:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  3c:	000107b7          	lui	a5,0x10
  40:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
  44:	0ad78713          	addi	a4,a5,173
  48:	000107b7          	lui	a5,0x10
  4c:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  50:	00000013          	nop
  54:	01c12083          	lw	ra,28(sp)
  58:	01812403          	lw	s0,24(sp)
  5c:	02010113          	addi	sp,sp,32
  60:	00008067          	ret

00000064 <printStr>:
  64:	fd010113          	addi	sp,sp,-48
  68:	02112623          	sw	ra,44(sp)
  6c:	02812423          	sw	s0,40(sp)
  70:	03010413          	addi	s0,sp,48
  74:	fca42e23          	sw	a0,-36(s0)
  78:	fdc42783          	lw	a5,-36(s0)
  7c:	fef42623          	sw	a5,-20(s0)
  80:	0440006f          	j	c4 <printStr+0x60>
  84:	fec42783          	lw	a5,-20(s0)
  88:	0007c783          	lbu	a5,0(a5)
  8c:	00078713          	mv	a4,a5
  90:	000107b7          	lui	a5,0x10
  94:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
  98:	00f74733          	xor	a4,a4,a5
  9c:	000107b7          	lui	a5,0x10
  a0:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  a4:	000107b7          	lui	a5,0x10
  a8:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
  ac:	20978713          	addi	a4,a5,521
  b0:	000107b7          	lui	a5,0x10
  b4:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  b8:	fec42783          	lw	a5,-20(s0)
  bc:	00178793          	addi	a5,a5,1
  c0:	fef42623          	sw	a5,-20(s0)
  c4:	fec42783          	lw	a5,-20(s0)
  c8:	0007c783          	lbu	a5,0(a5)
  cc:	fa079ce3          	bnez	a5,84 <printStr+0x20>
  d0:	00000013          	nop
  d4:	00000013          	nop
  d8:	02c12083          	lw	ra,44(sp)
  dc:	02812403          	lw	s0,40(sp)
  e0:	03010113          	addi	sp,sp,48
  e4:	00008067          	ret

000000e8 <main>:
  e8:	81010113          	addi	sp,sp,-2032
  ec:	7e112623          	sw	ra,2028(sp)
  f0:	7e812423          	sw	s0,2024(sp)
  f4:	7f010413          	addi	s0,sp,2032
  f8:	ffff72b7          	lui	t0,0xffff7
  fc:	b8028293          	addi	t0,t0,-1152 # ffff6b80 <judgeResult+0xfffe6b80>
 100:	00510133          	add	sp,sp,t0
 104:	fe042223          	sw	zero,-28(s0)
 108:	fe042623          	sw	zero,-20(s0)
 10c:	06c0006f          	j	178 <main+0x90>
 110:	fe042423          	sw	zero,-24(s0)
 114:	04c0006f          	j	160 <main+0x78>
 118:	ffff67b7          	lui	a5,0xffff6
 11c:	ff078793          	addi	a5,a5,-16 # ffff5ff0 <judgeResult+0xfffe5ff0>
 120:	008786b3          	add	a3,a5,s0
 124:	fec42703          	lw	a4,-20(s0)
 128:	00070793          	mv	a5,a4
 12c:	00179793          	slli	a5,a5,0x1
 130:	00e787b3          	add	a5,a5,a4
 134:	00379793          	slli	a5,a5,0x3
 138:	00e787b3          	add	a5,a5,a4
 13c:	00279793          	slli	a5,a5,0x2
 140:	fe842703          	lw	a4,-24(s0)
 144:	00e787b3          	add	a5,a5,a4
 148:	00279793          	slli	a5,a5,0x2
 14c:	00f687b3          	add	a5,a3,a5
 150:	3a07a623          	sw	zero,940(a5)
 154:	fe842783          	lw	a5,-24(s0)
 158:	00178793          	addi	a5,a5,1
 15c:	fef42423          	sw	a5,-24(s0)
 160:	fe842703          	lw	a4,-24(s0)
 164:	06300793          	li	a5,99
 168:	fae7d8e3          	bge	a5,a4,118 <main+0x30>
 16c:	fec42783          	lw	a5,-20(s0)
 170:	00178793          	addi	a5,a5,1
 174:	fef42623          	sw	a5,-20(s0)
 178:	fec42703          	lw	a4,-20(s0)
 17c:	06300793          	li	a5,99
 180:	f8e7d8e3          	bge	a5,a4,110 <main+0x28>
 184:	fe042623          	sw	zero,-20(s0)
 188:	0e00006f          	j	268 <main+0x180>
 18c:	fec42703          	lw	a4,-20(s0)
 190:	01400793          	li	a5,20
 194:	0ce7d463          	bge	a5,a4,25c <main+0x174>
 198:	fec42703          	lw	a4,-20(s0)
 19c:	04f00793          	li	a5,79
 1a0:	0ae7ce63          	blt	a5,a4,25c <main+0x174>
 1a4:	fe042423          	sw	zero,-24(s0)
 1a8:	0a80006f          	j	250 <main+0x168>
 1ac:	fe842703          	lw	a4,-24(s0)
 1b0:	00500793          	li	a5,5
 1b4:	00e7c863          	blt	a5,a4,1c4 <main+0xdc>
 1b8:	fec42703          	lw	a4,-20(s0)
 1bc:	05900793          	li	a5,89
 1c0:	08e7c263          	blt	a5,a4,244 <main+0x15c>
 1c4:	fe842783          	lw	a5,-24(s0)
 1c8:	01900593          	li	a1,25
 1cc:	00078513          	mv	a0,a5
 1d0:	170000ef          	jal	340 <__divsi3>
 1d4:	00050793          	mv	a5,a0
 1d8:	fef42023          	sw	a5,-32(s0)
 1dc:	fe842783          	lw	a5,-24(s0)
 1e0:	00279793          	slli	a5,a5,0x2
 1e4:	06400593          	li	a1,100
 1e8:	00078513          	mv	a0,a5
 1ec:	1d8000ef          	jal	3c4 <__modsi3>
 1f0:	00050793          	mv	a5,a0
 1f4:	fcf42e23          	sw	a5,-36(s0)
 1f8:	fec42703          	lw	a4,-20(s0)
 1fc:	fe042783          	lw	a5,-32(s0)
 200:	00f70733          	add	a4,a4,a5
 204:	fe842783          	lw	a5,-24(s0)
 208:	03278693          	addi	a3,a5,50
 20c:	ffff67b7          	lui	a5,0xffff6
 210:	ff078793          	addi	a5,a5,-16 # ffff5ff0 <judgeResult+0xfffe5ff0>
 214:	00878633          	add	a2,a5,s0
 218:	00070793          	mv	a5,a4
 21c:	00179793          	slli	a5,a5,0x1
 220:	00e787b3          	add	a5,a5,a4
 224:	00379793          	slli	a5,a5,0x3
 228:	00e787b3          	add	a5,a5,a4
 22c:	00279793          	slli	a5,a5,0x2
 230:	fdc42703          	lw	a4,-36(s0)
 234:	00e787b3          	add	a5,a5,a4
 238:	00279793          	slli	a5,a5,0x2
 23c:	00f607b3          	add	a5,a2,a5
 240:	3ad7a623          	sw	a3,940(a5)
 244:	fe842783          	lw	a5,-24(s0)
 248:	00178793          	addi	a5,a5,1
 24c:	fef42423          	sw	a5,-24(s0)
 250:	fe842703          	lw	a4,-24(s0)
 254:	06300793          	li	a5,99
 258:	f4e7dae3          	bge	a5,a4,1ac <main+0xc4>
 25c:	fec42783          	lw	a5,-20(s0)
 260:	00178793          	addi	a5,a5,1
 264:	fef42623          	sw	a5,-20(s0)
 268:	fec42703          	lw	a4,-20(s0)
 26c:	06300793          	li	a5,99
 270:	f0e7dee3          	bge	a5,a4,18c <main+0xa4>
 274:	fe042623          	sw	zero,-20(s0)
 278:	0780006f          	j	2f0 <main+0x208>
 27c:	fe042423          	sw	zero,-24(s0)
 280:	0580006f          	j	2d8 <main+0x1f0>
 284:	ffff67b7          	lui	a5,0xffff6
 288:	ff078793          	addi	a5,a5,-16 # ffff5ff0 <judgeResult+0xfffe5ff0>
 28c:	008786b3          	add	a3,a5,s0
 290:	fec42703          	lw	a4,-20(s0)
 294:	00070793          	mv	a5,a4
 298:	00179793          	slli	a5,a5,0x1
 29c:	00e787b3          	add	a5,a5,a4
 2a0:	00379793          	slli	a5,a5,0x3
 2a4:	00e787b3          	add	a5,a5,a4
 2a8:	00279793          	slli	a5,a5,0x2
 2ac:	fe842703          	lw	a4,-24(s0)
 2b0:	00e787b3          	add	a5,a5,a4
 2b4:	00279793          	slli	a5,a5,0x2
 2b8:	00f687b3          	add	a5,a3,a5
 2bc:	3ac7a783          	lw	a5,940(a5)
 2c0:	fe442703          	lw	a4,-28(s0)
 2c4:	00f707b3          	add	a5,a4,a5
 2c8:	fef42223          	sw	a5,-28(s0)
 2cc:	fe842783          	lw	a5,-24(s0)
 2d0:	00178793          	addi	a5,a5,1
 2d4:	fef42423          	sw	a5,-24(s0)
 2d8:	fe842703          	lw	a4,-24(s0)
 2dc:	06300793          	li	a5,99
 2e0:	fae7d2e3          	bge	a5,a4,284 <main+0x19c>
 2e4:	fec42783          	lw	a5,-20(s0)
 2e8:	00178793          	addi	a5,a5,1
 2ec:	fef42623          	sw	a5,-20(s0)
 2f0:	fec42703          	lw	a4,-20(s0)
 2f4:	06300793          	li	a5,99
 2f8:	f8e7d2e3          	bge	a5,a4,27c <main+0x194>
 2fc:	fe442503          	lw	a0,-28(s0)
 300:	d11ff0ef          	jal	10 <printInt>
 304:	000107b7          	lui	a5,0x10
 308:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
 30c:	0fd00713          	li	a4,253
 310:	00070593          	mv	a1,a4
 314:	00078513          	mv	a0,a5
 318:	0ac000ef          	jal	3c4 <__modsi3>
 31c:	00050793          	mv	a5,a0
 320:	00078513          	mv	a0,a5
 324:	000092b7          	lui	t0,0x9
 328:	48028293          	addi	t0,t0,1152 # 9480 <Mod+0x908c>
 32c:	00510133          	add	sp,sp,t0
 330:	7ec12083          	lw	ra,2028(sp)
 334:	7e812403          	lw	s0,2024(sp)
 338:	7f010113          	addi	sp,sp,2032
 33c:	00008067          	ret

00000340 <__divsi3>:
 340:	06054063          	bltz	a0,3a0 <__umodsi3+0x10>
 344:	0605c663          	bltz	a1,3b0 <__umodsi3+0x20>

00000348 <__hidden___udivsi3>:
 348:	00058613          	mv	a2,a1
 34c:	00050593          	mv	a1,a0
 350:	fff00513          	li	a0,-1
 354:	02060c63          	beqz	a2,38c <__hidden___udivsi3+0x44>
 358:	00100693          	li	a3,1
 35c:	00b67a63          	bgeu	a2,a1,370 <__hidden___udivsi3+0x28>
 360:	00c05863          	blez	a2,370 <__hidden___udivsi3+0x28>
 364:	00161613          	slli	a2,a2,0x1
 368:	00169693          	slli	a3,a3,0x1
 36c:	feb66ae3          	bltu	a2,a1,360 <__hidden___udivsi3+0x18>
 370:	00000513          	li	a0,0
 374:	00c5e663          	bltu	a1,a2,380 <__hidden___udivsi3+0x38>
 378:	40c585b3          	sub	a1,a1,a2
 37c:	00d56533          	or	a0,a0,a3
 380:	0016d693          	srli	a3,a3,0x1
 384:	00165613          	srli	a2,a2,0x1
 388:	fe0696e3          	bnez	a3,374 <__hidden___udivsi3+0x2c>
 38c:	00008067          	ret

00000390 <__umodsi3>:
 390:	00008293          	mv	t0,ra
 394:	fb5ff0ef          	jal	348 <__hidden___udivsi3>
 398:	00058513          	mv	a0,a1
 39c:	00028067          	jr	t0
 3a0:	40a00533          	neg	a0,a0
 3a4:	00b04863          	bgtz	a1,3b4 <__umodsi3+0x24>
 3a8:	40b005b3          	neg	a1,a1
 3ac:	f9dff06f          	j	348 <__hidden___udivsi3>
 3b0:	40b005b3          	neg	a1,a1
 3b4:	00008293          	mv	t0,ra
 3b8:	f91ff0ef          	jal	348 <__hidden___udivsi3>
 3bc:	40a00533          	neg	a0,a0
 3c0:	00028067          	jr	t0

000003c4 <__modsi3>:
 3c4:	00008293          	mv	t0,ra
 3c8:	0005ca63          	bltz	a1,3dc <__modsi3+0x18>
 3cc:	00054c63          	bltz	a0,3e4 <__modsi3+0x20>
 3d0:	f79ff0ef          	jal	348 <__hidden___udivsi3>
 3d4:	00058513          	mv	a0,a1
 3d8:	00028067          	jr	t0
 3dc:	40b005b3          	neg	a1,a1
 3e0:	fe0558e3          	bgez	a0,3d0 <__modsi3+0xc>
 3e4:	40a00533          	neg	a0,a0
 3e8:	f61ff0ef          	jal	348 <__hidden___udivsi3>
 3ec:	40b00533          	neg	a0,a1
 3f0:	00028067          	jr	t0

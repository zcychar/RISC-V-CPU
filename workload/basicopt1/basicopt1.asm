
basicopt1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fc18>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	3c802703          	lw	a4,968(zero) # 3c8 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	3ce02423          	sw	a4,968(zero) # 3c8 <judgeResult>
  34:	3c802783          	lw	a5,968(zero) # 3c8 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	3ce02423          	sw	a4,968(zero) # 3c8 <judgeResult>
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
  78:	3c802783          	lw	a5,968(zero) # 3c8 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	3ce02423          	sw	a4,968(zero) # 3c8 <judgeResult>
  84:	3c802783          	lw	a5,968(zero) # 3c8 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	3ce02423          	sw	a4,968(zero) # 3c8 <judgeResult>
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
  bc:	81010113          	addi	sp,sp,-2032
  c0:	7e112623          	sw	ra,2028(sp)
  c4:	7e812423          	sw	s0,2024(sp)
  c8:	7f010413          	addi	s0,sp,2032
  cc:	ffff72b7          	lui	t0,0xffff7
  d0:	b8028293          	addi	t0,t0,-1152 # ffff6b80 <judgeResult+0xffff67b8>
  d4:	00510133          	add	sp,sp,t0
  d8:	fe042223          	sw	zero,-28(s0)
  dc:	fe042623          	sw	zero,-20(s0)
  e0:	06c0006f          	j	14c <main+0x90>
  e4:	fe042423          	sw	zero,-24(s0)
  e8:	04c0006f          	j	134 <main+0x78>
  ec:	ffff67b7          	lui	a5,0xffff6
  f0:	ff078793          	addi	a5,a5,-16 # ffff5ff0 <judgeResult+0xffff5c28>
  f4:	008786b3          	add	a3,a5,s0
  f8:	fec42703          	lw	a4,-20(s0)
  fc:	00070793          	mv	a5,a4
 100:	00179793          	slli	a5,a5,0x1
 104:	00e787b3          	add	a5,a5,a4
 108:	00379793          	slli	a5,a5,0x3
 10c:	00e787b3          	add	a5,a5,a4
 110:	00279793          	slli	a5,a5,0x2
 114:	fe842703          	lw	a4,-24(s0)
 118:	00e787b3          	add	a5,a5,a4
 11c:	00279793          	slli	a5,a5,0x2
 120:	00f687b3          	add	a5,a3,a5
 124:	3a07a623          	sw	zero,940(a5)
 128:	fe842783          	lw	a5,-24(s0)
 12c:	00178793          	addi	a5,a5,1
 130:	fef42423          	sw	a5,-24(s0)
 134:	fe842703          	lw	a4,-24(s0)
 138:	06300793          	li	a5,99
 13c:	fae7d8e3          	bge	a5,a4,ec <main+0x30>
 140:	fec42783          	lw	a5,-20(s0)
 144:	00178793          	addi	a5,a5,1
 148:	fef42623          	sw	a5,-20(s0)
 14c:	fec42703          	lw	a4,-20(s0)
 150:	06300793          	li	a5,99
 154:	f8e7d8e3          	bge	a5,a4,e4 <main+0x28>
 158:	fe042623          	sw	zero,-20(s0)
 15c:	0e00006f          	j	23c <main+0x180>
 160:	fec42703          	lw	a4,-20(s0)
 164:	01400793          	li	a5,20
 168:	0ce7d463          	bge	a5,a4,230 <main+0x174>
 16c:	fec42703          	lw	a4,-20(s0)
 170:	04f00793          	li	a5,79
 174:	0ae7ce63          	blt	a5,a4,230 <main+0x174>
 178:	fe042423          	sw	zero,-24(s0)
 17c:	0a80006f          	j	224 <main+0x168>
 180:	fe842703          	lw	a4,-24(s0)
 184:	00500793          	li	a5,5
 188:	00e7c863          	blt	a5,a4,198 <main+0xdc>
 18c:	fec42703          	lw	a4,-20(s0)
 190:	05900793          	li	a5,89
 194:	08e7c263          	blt	a5,a4,218 <main+0x15c>
 198:	fe842783          	lw	a5,-24(s0)
 19c:	01900593          	li	a1,25
 1a0:	00078513          	mv	a0,a5
 1a4:	16c000ef          	jal	310 <__divsi3>
 1a8:	00050793          	mv	a5,a0
 1ac:	fef42023          	sw	a5,-32(s0)
 1b0:	fe842783          	lw	a5,-24(s0)
 1b4:	00279793          	slli	a5,a5,0x2
 1b8:	06400593          	li	a1,100
 1bc:	00078513          	mv	a0,a5
 1c0:	1d4000ef          	jal	394 <__modsi3>
 1c4:	00050793          	mv	a5,a0
 1c8:	fcf42e23          	sw	a5,-36(s0)
 1cc:	fec42703          	lw	a4,-20(s0)
 1d0:	fe042783          	lw	a5,-32(s0)
 1d4:	00f70733          	add	a4,a4,a5
 1d8:	fe842783          	lw	a5,-24(s0)
 1dc:	03278693          	addi	a3,a5,50
 1e0:	ffff67b7          	lui	a5,0xffff6
 1e4:	ff078793          	addi	a5,a5,-16 # ffff5ff0 <judgeResult+0xffff5c28>
 1e8:	00878633          	add	a2,a5,s0
 1ec:	00070793          	mv	a5,a4
 1f0:	00179793          	slli	a5,a5,0x1
 1f4:	00e787b3          	add	a5,a5,a4
 1f8:	00379793          	slli	a5,a5,0x3
 1fc:	00e787b3          	add	a5,a5,a4
 200:	00279793          	slli	a5,a5,0x2
 204:	fdc42703          	lw	a4,-36(s0)
 208:	00e787b3          	add	a5,a5,a4
 20c:	00279793          	slli	a5,a5,0x2
 210:	00f607b3          	add	a5,a2,a5
 214:	3ad7a623          	sw	a3,940(a5)
 218:	fe842783          	lw	a5,-24(s0)
 21c:	00178793          	addi	a5,a5,1
 220:	fef42423          	sw	a5,-24(s0)
 224:	fe842703          	lw	a4,-24(s0)
 228:	06300793          	li	a5,99
 22c:	f4e7dae3          	bge	a5,a4,180 <main+0xc4>
 230:	fec42783          	lw	a5,-20(s0)
 234:	00178793          	addi	a5,a5,1
 238:	fef42623          	sw	a5,-20(s0)
 23c:	fec42703          	lw	a4,-20(s0)
 240:	06300793          	li	a5,99
 244:	f0e7dee3          	bge	a5,a4,160 <main+0xa4>
 248:	fe042623          	sw	zero,-20(s0)
 24c:	0780006f          	j	2c4 <main+0x208>
 250:	fe042423          	sw	zero,-24(s0)
 254:	0580006f          	j	2ac <main+0x1f0>
 258:	ffff67b7          	lui	a5,0xffff6
 25c:	ff078793          	addi	a5,a5,-16 # ffff5ff0 <judgeResult+0xffff5c28>
 260:	008786b3          	add	a3,a5,s0
 264:	fec42703          	lw	a4,-20(s0)
 268:	00070793          	mv	a5,a4
 26c:	00179793          	slli	a5,a5,0x1
 270:	00e787b3          	add	a5,a5,a4
 274:	00379793          	slli	a5,a5,0x3
 278:	00e787b3          	add	a5,a5,a4
 27c:	00279793          	slli	a5,a5,0x2
 280:	fe842703          	lw	a4,-24(s0)
 284:	00e787b3          	add	a5,a5,a4
 288:	00279793          	slli	a5,a5,0x2
 28c:	00f687b3          	add	a5,a3,a5
 290:	3ac7a783          	lw	a5,940(a5)
 294:	fe442703          	lw	a4,-28(s0)
 298:	00f707b3          	add	a5,a4,a5
 29c:	fef42223          	sw	a5,-28(s0)
 2a0:	fe842783          	lw	a5,-24(s0)
 2a4:	00178793          	addi	a5,a5,1
 2a8:	fef42423          	sw	a5,-24(s0)
 2ac:	fe842703          	lw	a4,-24(s0)
 2b0:	06300793          	li	a5,99
 2b4:	fae7d2e3          	bge	a5,a4,258 <main+0x19c>
 2b8:	fec42783          	lw	a5,-20(s0)
 2bc:	00178793          	addi	a5,a5,1
 2c0:	fef42623          	sw	a5,-20(s0)
 2c4:	fec42703          	lw	a4,-20(s0)
 2c8:	06300793          	li	a5,99
 2cc:	f8e7d2e3          	bge	a5,a4,250 <main+0x194>
 2d0:	fe442503          	lw	a0,-28(s0)
 2d4:	d41ff0ef          	jal	14 <printInt>
 2d8:	3c802783          	lw	a5,968(zero) # 3c8 <judgeResult>
 2dc:	0fd00713          	li	a4,253
 2e0:	00070593          	mv	a1,a4
 2e4:	00078513          	mv	a0,a5
 2e8:	0ac000ef          	jal	394 <__modsi3>
 2ec:	00050793          	mv	a5,a0
 2f0:	00078513          	mv	a0,a5
 2f4:	000092b7          	lui	t0,0x9
 2f8:	48028293          	addi	t0,t0,1152 # 9480 <judgeResult+0x90b8>
 2fc:	00510133          	add	sp,sp,t0
 300:	7ec12083          	lw	ra,2028(sp)
 304:	7e812403          	lw	s0,2024(sp)
 308:	7f010113          	addi	sp,sp,2032
 30c:	00008067          	ret

00000310 <__divsi3>:
 310:	06054063          	bltz	a0,370 <__umodsi3+0x10>
 314:	0605c663          	bltz	a1,380 <__umodsi3+0x20>

00000318 <__hidden___udivsi3>:
 318:	00058613          	mv	a2,a1
 31c:	00050593          	mv	a1,a0
 320:	fff00513          	li	a0,-1
 324:	02060c63          	beqz	a2,35c <__hidden___udivsi3+0x44>
 328:	00100693          	li	a3,1
 32c:	00b67a63          	bgeu	a2,a1,340 <__hidden___udivsi3+0x28>
 330:	00c05863          	blez	a2,340 <__hidden___udivsi3+0x28>
 334:	00161613          	slli	a2,a2,0x1
 338:	00169693          	slli	a3,a3,0x1
 33c:	feb66ae3          	bltu	a2,a1,330 <__hidden___udivsi3+0x18>
 340:	00000513          	li	a0,0
 344:	00c5e663          	bltu	a1,a2,350 <__hidden___udivsi3+0x38>
 348:	40c585b3          	sub	a1,a1,a2
 34c:	00d56533          	or	a0,a0,a3
 350:	0016d693          	srli	a3,a3,0x1
 354:	00165613          	srli	a2,a2,0x1
 358:	fe0696e3          	bnez	a3,344 <__hidden___udivsi3+0x2c>
 35c:	00008067          	ret

00000360 <__umodsi3>:
 360:	00008293          	mv	t0,ra
 364:	fb5ff0ef          	jal	318 <__hidden___udivsi3>
 368:	00058513          	mv	a0,a1
 36c:	00028067          	jr	t0
 370:	40a00533          	neg	a0,a0
 374:	00b04863          	bgtz	a1,384 <__umodsi3+0x24>
 378:	40b005b3          	neg	a1,a1
 37c:	f9dff06f          	j	318 <__hidden___udivsi3>
 380:	40b005b3          	neg	a1,a1
 384:	00008293          	mv	t0,ra
 388:	f91ff0ef          	jal	318 <__hidden___udivsi3>
 38c:	40a00533          	neg	a0,a0
 390:	00028067          	jr	t0

00000394 <__modsi3>:
 394:	00008293          	mv	t0,ra
 398:	0005ca63          	bltz	a1,3ac <__modsi3+0x18>
 39c:	00054c63          	bltz	a0,3b4 <__modsi3+0x20>
 3a0:	f79ff0ef          	jal	318 <__hidden___udivsi3>
 3a4:	00058513          	mv	a0,a1
 3a8:	00028067          	jr	t0
 3ac:	40b005b3          	neg	a1,a1
 3b0:	fe0558e3          	bgez	a0,3a0 <__modsi3+0xc>
 3b4:	40a00533          	neg	a0,a0
 3b8:	f61ff0ef          	jal	318 <__hidden___udivsi3>
 3bc:	40b00533          	neg	a0,a1
 3c0:	00028067          	jr	t0

Disassembly of section .rodata:

000003c4 <Mod>:
 3c4:	000000fd                                ....

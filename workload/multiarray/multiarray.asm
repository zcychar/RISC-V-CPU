
multiarray.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0e8000ef          	jal	ec <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <j+0x1fafc>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	4dc02703          	lw	a4,1244(zero) # 4dc <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	4ce02e23          	sw	a4,1244(zero) # 4dc <judgeResult>
  34:	4dc02783          	lw	a5,1244(zero) # 4dc <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	4ce02e23          	sw	a4,1244(zero) # 4dc <judgeResult>
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
  78:	4dc02783          	lw	a5,1244(zero) # 4dc <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	4ce02e23          	sw	a4,1244(zero) # 4dc <judgeResult>
  84:	4dc02783          	lw	a5,1244(zero) # 4dc <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	4ce02e23          	sw	a4,1244(zero) # 4dc <judgeResult>
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

000000bc <printNum>:
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00112e23          	sw	ra,28(sp)
  c4:	00812c23          	sw	s0,24(sp)
  c8:	02010413          	addi	s0,sp,32
  cc:	fea42623          	sw	a0,-20(s0)
  d0:	fec42503          	lw	a0,-20(s0)
  d4:	f41ff0ef          	jal	14 <printInt>
  d8:	00000013          	nop
  dc:	01c12083          	lw	ra,28(sp)
  e0:	01812403          	lw	s0,24(sp)
  e4:	02010113          	addi	sp,sp,32
  e8:	00008067          	ret

000000ec <main>:
  ec:	ff010113          	addi	sp,sp,-16
  f0:	00112623          	sw	ra,12(sp)
  f4:	00812423          	sw	s0,8(sp)
  f8:	01010413          	addi	s0,sp,16
  fc:	4e002023          	sw	zero,1248(zero) # 4e0 <i>
 100:	0640006f          	j	164 <main+0x78>
 104:	4e002223          	sw	zero,1252(zero) # 4e4 <j>
 108:	0440006f          	j	14c <main+0x60>
 10c:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 110:	4e402603          	lw	a2,1252(zero) # 4e4 <j>
 114:	40400693          	li	a3,1028
 118:	00070793          	mv	a5,a4
 11c:	00179793          	slli	a5,a5,0x1
 120:	00e787b3          	add	a5,a5,a4
 124:	00279793          	slli	a5,a5,0x2
 128:	40e787b3          	sub	a5,a5,a4
 12c:	00c787b3          	add	a5,a5,a2
 130:	00279793          	slli	a5,a5,0x2
 134:	00f687b3          	add	a5,a3,a5
 138:	37800713          	li	a4,888
 13c:	00e7a023          	sw	a4,0(a5)
 140:	4e402783          	lw	a5,1252(zero) # 4e4 <j>
 144:	00178713          	addi	a4,a5,1
 148:	4ee02223          	sw	a4,1252(zero) # 4e4 <j>
 14c:	4e402703          	lw	a4,1252(zero) # 4e4 <j>
 150:	00900793          	li	a5,9
 154:	fae7dce3          	bge	a5,a4,10c <main+0x20>
 158:	4e002783          	lw	a5,1248(zero) # 4e0 <i>
 15c:	00178713          	addi	a4,a5,1
 160:	4ee02023          	sw	a4,1248(zero) # 4e0 <i>
 164:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 168:	00300793          	li	a5,3
 16c:	f8e7dce3          	bge	a5,a4,104 <main+0x18>
 170:	4e002023          	sw	zero,1248(zero) # 4e0 <i>
 174:	0280006f          	j	19c <main+0xb0>
 178:	4e002783          	lw	a5,1248(zero) # 4e0 <i>
 17c:	4b400713          	li	a4,1204
 180:	00379793          	slli	a5,a5,0x3
 184:	00f707b3          	add	a5,a4,a5
 188:	fff00713          	li	a4,-1
 18c:	00e7a023          	sw	a4,0(a5)
 190:	4e002783          	lw	a5,1248(zero) # 4e0 <i>
 194:	00178713          	addi	a4,a5,1
 198:	4ee02023          	sw	a4,1248(zero) # 4e0 <i>
 19c:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 1a0:	00400793          	li	a5,4
 1a4:	fce7dae3          	bge	a5,a4,178 <main+0x8c>
 1a8:	40400793          	li	a5,1028
 1ac:	0a87a783          	lw	a5,168(a5)
 1b0:	00078513          	mv	a0,a5
 1b4:	f09ff0ef          	jal	bc <printNum>
 1b8:	4e002023          	sw	zero,1248(zero) # 4e0 <i>
 1bc:	0800006f          	j	23c <main+0x150>
 1c0:	4e002223          	sw	zero,1252(zero) # 4e4 <j>
 1c4:	0600006f          	j	224 <main+0x138>
 1c8:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 1cc:	00070793          	mv	a5,a4
 1d0:	00279793          	slli	a5,a5,0x2
 1d4:	00e787b3          	add	a5,a5,a4
 1d8:	00179793          	slli	a5,a5,0x1
 1dc:	00078613          	mv	a2,a5
 1e0:	4e402783          	lw	a5,1252(zero) # 4e4 <j>
 1e4:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 1e8:	4e402583          	lw	a1,1252(zero) # 4e4 <j>
 1ec:	00f606b3          	add	a3,a2,a5
 1f0:	40400613          	li	a2,1028
 1f4:	00070793          	mv	a5,a4
 1f8:	00179793          	slli	a5,a5,0x1
 1fc:	00e787b3          	add	a5,a5,a4
 200:	00279793          	slli	a5,a5,0x2
 204:	40e787b3          	sub	a5,a5,a4
 208:	00b787b3          	add	a5,a5,a1
 20c:	00279793          	slli	a5,a5,0x2
 210:	00f607b3          	add	a5,a2,a5
 214:	00d7a023          	sw	a3,0(a5)
 218:	4e402783          	lw	a5,1252(zero) # 4e4 <j>
 21c:	00178713          	addi	a4,a5,1
 220:	4ee02223          	sw	a4,1252(zero) # 4e4 <j>
 224:	4e402703          	lw	a4,1252(zero) # 4e4 <j>
 228:	00900793          	li	a5,9
 22c:	f8e7dee3          	bge	a5,a4,1c8 <main+0xdc>
 230:	4e002783          	lw	a5,1248(zero) # 4e0 <i>
 234:	00178713          	addi	a4,a5,1
 238:	4ee02023          	sw	a4,1248(zero) # 4e0 <i>
 23c:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 240:	00300793          	li	a5,3
 244:	f6e7dee3          	bge	a5,a4,1c0 <main+0xd4>
 248:	4e002023          	sw	zero,1248(zero) # 4e0 <i>
 24c:	0680006f          	j	2b4 <main+0x1c8>
 250:	4e002223          	sw	zero,1252(zero) # 4e4 <j>
 254:	0480006f          	j	29c <main+0x1b0>
 258:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 25c:	4e402603          	lw	a2,1252(zero) # 4e4 <j>
 260:	40400693          	li	a3,1028
 264:	00070793          	mv	a5,a4
 268:	00179793          	slli	a5,a5,0x1
 26c:	00e787b3          	add	a5,a5,a4
 270:	00279793          	slli	a5,a5,0x2
 274:	40e787b3          	sub	a5,a5,a4
 278:	00c787b3          	add	a5,a5,a2
 27c:	00279793          	slli	a5,a5,0x2
 280:	00f687b3          	add	a5,a3,a5
 284:	0007a783          	lw	a5,0(a5)
 288:	00078513          	mv	a0,a5
 28c:	e31ff0ef          	jal	bc <printNum>
 290:	4e402783          	lw	a5,1252(zero) # 4e4 <j>
 294:	00178713          	addi	a4,a5,1
 298:	4ee02223          	sw	a4,1252(zero) # 4e4 <j>
 29c:	4e402703          	lw	a4,1252(zero) # 4e4 <j>
 2a0:	00900793          	li	a5,9
 2a4:	fae7dae3          	bge	a5,a4,258 <main+0x16c>
 2a8:	4e002783          	lw	a5,1248(zero) # 4e0 <i>
 2ac:	00178713          	addi	a4,a5,1
 2b0:	4ee02023          	sw	a4,1248(zero) # 4e0 <i>
 2b4:	4e002703          	lw	a4,1248(zero) # 4e0 <i>
 2b8:	00300793          	li	a5,3
 2bc:	f8e7dae3          	bge	a5,a4,250 <main+0x164>
 2c0:	40400793          	li	a5,1028
 2c4:	0807a023          	sw	zero,128(a5)
 2c8:	40400793          	li	a5,1028
 2cc:	0807a783          	lw	a5,128(a5)
 2d0:	00078513          	mv	a0,a5
 2d4:	de9ff0ef          	jal	bc <printNum>
 2d8:	4b400793          	li	a5,1204
 2dc:	ffe00713          	li	a4,-2
 2e0:	00e7a023          	sw	a4,0(a5)
 2e4:	40400793          	li	a5,1028
 2e8:	0807a783          	lw	a5,128(a5)
 2ec:	4b400713          	li	a4,1204
 2f0:	00379793          	slli	a5,a5,0x3
 2f4:	00f707b3          	add	a5,a4,a5
 2f8:	ff600713          	li	a4,-10
 2fc:	00e7a023          	sw	a4,0(a5)
 300:	4b400793          	li	a5,1204
 304:	0007a783          	lw	a5,0(a5)
 308:	00078513          	mv	a0,a5
 30c:	db1ff0ef          	jal	bc <printNum>
 310:	4b400793          	li	a5,1204
 314:	0087a783          	lw	a5,8(a5)
 318:	00078513          	mv	a0,a5
 31c:	da1ff0ef          	jal	bc <printNum>
 320:	4dc02783          	lw	a5,1244(zero) # 4dc <judgeResult>
 324:	0fd00713          	li	a4,253
 328:	00070593          	mv	a1,a4
 32c:	00078513          	mv	a0,a5
 330:	0a0000ef          	jal	3d0 <__modsi3>
 334:	00050793          	mv	a5,a0
 338:	00078513          	mv	a0,a5
 33c:	00c12083          	lw	ra,12(sp)
 340:	00812403          	lw	s0,8(sp)
 344:	01010113          	addi	sp,sp,16
 348:	00008067          	ret

0000034c <__divsi3>:
 34c:	06054063          	bltz	a0,3ac <__umodsi3+0x10>
 350:	0605c663          	bltz	a1,3bc <__umodsi3+0x20>

00000354 <__hidden___udivsi3>:
 354:	00058613          	mv	a2,a1
 358:	00050593          	mv	a1,a0
 35c:	fff00513          	li	a0,-1
 360:	02060c63          	beqz	a2,398 <__hidden___udivsi3+0x44>
 364:	00100693          	li	a3,1
 368:	00b67a63          	bgeu	a2,a1,37c <__hidden___udivsi3+0x28>
 36c:	00c05863          	blez	a2,37c <__hidden___udivsi3+0x28>
 370:	00161613          	slli	a2,a2,0x1
 374:	00169693          	slli	a3,a3,0x1
 378:	feb66ae3          	bltu	a2,a1,36c <__hidden___udivsi3+0x18>
 37c:	00000513          	li	a0,0
 380:	00c5e663          	bltu	a1,a2,38c <__hidden___udivsi3+0x38>
 384:	40c585b3          	sub	a1,a1,a2
 388:	00d56533          	or	a0,a0,a3
 38c:	0016d693          	srli	a3,a3,0x1
 390:	00165613          	srli	a2,a2,0x1
 394:	fe0696e3          	bnez	a3,380 <__hidden___udivsi3+0x2c>
 398:	00008067          	ret

0000039c <__umodsi3>:
 39c:	00008293          	mv	t0,ra
 3a0:	fb5ff0ef          	jal	354 <__hidden___udivsi3>
 3a4:	00058513          	mv	a0,a1
 3a8:	00028067          	jr	t0
 3ac:	40a00533          	neg	a0,a0
 3b0:	00b04863          	bgtz	a1,3c0 <__umodsi3+0x24>
 3b4:	40b005b3          	neg	a1,a1
 3b8:	f9dff06f          	j	354 <__hidden___udivsi3>
 3bc:	40b005b3          	neg	a1,a1
 3c0:	00008293          	mv	t0,ra
 3c4:	f91ff0ef          	jal	354 <__hidden___udivsi3>
 3c8:	40a00533          	neg	a0,a0
 3cc:	00028067          	jr	t0

000003d0 <__modsi3>:
 3d0:	00008293          	mv	t0,ra
 3d4:	0005ca63          	bltz	a1,3e8 <__modsi3+0x18>
 3d8:	00054c63          	bltz	a0,3f0 <__modsi3+0x20>
 3dc:	f79ff0ef          	jal	354 <__hidden___udivsi3>
 3e0:	00058513          	mv	a0,a1
 3e4:	00028067          	jr	t0
 3e8:	40b005b3          	neg	a1,a1
 3ec:	fe0558e3          	bgez	a0,3dc <__modsi3+0xc>
 3f0:	40a00533          	neg	a0,a0
 3f4:	f61ff0ef          	jal	354 <__hidden___udivsi3>
 3f8:	40b00533          	neg	a0,a1
 3fc:	00028067          	jr	t0

Disassembly of section .rodata:

00000400 <Mod>:
 400:	000000fd                                ....

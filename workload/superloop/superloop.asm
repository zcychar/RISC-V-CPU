
superloop.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <total+0x1fb34>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	4a402703          	lw	a4,1188(zero) # 4a4 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	4ae02223          	sw	a4,1188(zero) # 4a4 <judgeResult>
  34:	4a402783          	lw	a5,1188(zero) # 4a4 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	4ae02223          	sw	a4,1188(zero) # 4a4 <judgeResult>
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
  78:	4a402783          	lw	a5,1188(zero) # 4a4 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	4ae02223          	sw	a4,1188(zero) # 4a4 <judgeResult>
  84:	4a402783          	lw	a5,1188(zero) # 4a4 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	4ae02223          	sw	a4,1188(zero) # 4a4 <judgeResult>
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
  bc:	fd010113          	addi	sp,sp,-48
  c0:	02112623          	sw	ra,44(sp)
  c4:	02812423          	sw	s0,40(sp)
  c8:	03010413          	addi	s0,sp,48
  cc:	00600713          	li	a4,6
  d0:	4ae02423          	sw	a4,1192(zero) # 4a8 <N>
  d4:	00100793          	li	a5,1
  d8:	fef42623          	sw	a5,-20(s0)
  dc:	2bc0006f          	j	398 <main+0x2dc>
  e0:	00100793          	li	a5,1
  e4:	fef42423          	sw	a5,-24(s0)
  e8:	2980006f          	j	380 <main+0x2c4>
  ec:	00100793          	li	a5,1
  f0:	fef42223          	sw	a5,-28(s0)
  f4:	2740006f          	j	368 <main+0x2ac>
  f8:	00100793          	li	a5,1
  fc:	fef42023          	sw	a5,-32(s0)
 100:	2500006f          	j	350 <main+0x294>
 104:	00100793          	li	a5,1
 108:	fcf42e23          	sw	a5,-36(s0)
 10c:	22c0006f          	j	338 <main+0x27c>
 110:	00100793          	li	a5,1
 114:	fcf42c23          	sw	a5,-40(s0)
 118:	2080006f          	j	320 <main+0x264>
 11c:	fec42703          	lw	a4,-20(s0)
 120:	fe842783          	lw	a5,-24(s0)
 124:	1ef70863          	beq	a4,a5,314 <main+0x258>
 128:	fec42703          	lw	a4,-20(s0)
 12c:	fe442783          	lw	a5,-28(s0)
 130:	1ef70263          	beq	a4,a5,314 <main+0x258>
 134:	fec42703          	lw	a4,-20(s0)
 138:	fe042783          	lw	a5,-32(s0)
 13c:	1cf70c63          	beq	a4,a5,314 <main+0x258>
 140:	fec42703          	lw	a4,-20(s0)
 144:	fdc42783          	lw	a5,-36(s0)
 148:	1cf70663          	beq	a4,a5,314 <main+0x258>
 14c:	fec42703          	lw	a4,-20(s0)
 150:	fd842783          	lw	a5,-40(s0)
 154:	1cf70063          	beq	a4,a5,314 <main+0x258>
 158:	49402783          	lw	a5,1172(zero) # 494 <h>
 15c:	fec42703          	lw	a4,-20(s0)
 160:	1af70a63          	beq	a4,a5,314 <main+0x258>
 164:	49802783          	lw	a5,1176(zero) # 498 <i>
 168:	fec42703          	lw	a4,-20(s0)
 16c:	1af70463          	beq	a4,a5,314 <main+0x258>
 170:	49c02783          	lw	a5,1180(zero) # 49c <j>
 174:	fec42703          	lw	a4,-20(s0)
 178:	18f70e63          	beq	a4,a5,314 <main+0x258>
 17c:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 180:	fec42703          	lw	a4,-20(s0)
 184:	18f70863          	beq	a4,a5,314 <main+0x258>
 188:	fe842703          	lw	a4,-24(s0)
 18c:	fe442783          	lw	a5,-28(s0)
 190:	18f70263          	beq	a4,a5,314 <main+0x258>
 194:	fe842703          	lw	a4,-24(s0)
 198:	fe042783          	lw	a5,-32(s0)
 19c:	16f70c63          	beq	a4,a5,314 <main+0x258>
 1a0:	fe842703          	lw	a4,-24(s0)
 1a4:	fdc42783          	lw	a5,-36(s0)
 1a8:	16f70663          	beq	a4,a5,314 <main+0x258>
 1ac:	fe842703          	lw	a4,-24(s0)
 1b0:	fd842783          	lw	a5,-40(s0)
 1b4:	16f70063          	beq	a4,a5,314 <main+0x258>
 1b8:	49402783          	lw	a5,1172(zero) # 494 <h>
 1bc:	fe842703          	lw	a4,-24(s0)
 1c0:	14f70a63          	beq	a4,a5,314 <main+0x258>
 1c4:	49802783          	lw	a5,1176(zero) # 498 <i>
 1c8:	fe842703          	lw	a4,-24(s0)
 1cc:	14f70463          	beq	a4,a5,314 <main+0x258>
 1d0:	49c02783          	lw	a5,1180(zero) # 49c <j>
 1d4:	fe842703          	lw	a4,-24(s0)
 1d8:	12f70e63          	beq	a4,a5,314 <main+0x258>
 1dc:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 1e0:	fe842703          	lw	a4,-24(s0)
 1e4:	12f70863          	beq	a4,a5,314 <main+0x258>
 1e8:	fe442703          	lw	a4,-28(s0)
 1ec:	fe042783          	lw	a5,-32(s0)
 1f0:	12f70263          	beq	a4,a5,314 <main+0x258>
 1f4:	fe442703          	lw	a4,-28(s0)
 1f8:	fdc42783          	lw	a5,-36(s0)
 1fc:	10f70c63          	beq	a4,a5,314 <main+0x258>
 200:	fe442703          	lw	a4,-28(s0)
 204:	fd842783          	lw	a5,-40(s0)
 208:	10f70663          	beq	a4,a5,314 <main+0x258>
 20c:	49402783          	lw	a5,1172(zero) # 494 <h>
 210:	fe442703          	lw	a4,-28(s0)
 214:	10f70063          	beq	a4,a5,314 <main+0x258>
 218:	49802783          	lw	a5,1176(zero) # 498 <i>
 21c:	fe442703          	lw	a4,-28(s0)
 220:	0ef70a63          	beq	a4,a5,314 <main+0x258>
 224:	49c02783          	lw	a5,1180(zero) # 49c <j>
 228:	fe442703          	lw	a4,-28(s0)
 22c:	0ef70463          	beq	a4,a5,314 <main+0x258>
 230:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 234:	fe442703          	lw	a4,-28(s0)
 238:	0cf70e63          	beq	a4,a5,314 <main+0x258>
 23c:	fe042703          	lw	a4,-32(s0)
 240:	fdc42783          	lw	a5,-36(s0)
 244:	0cf70863          	beq	a4,a5,314 <main+0x258>
 248:	fe042703          	lw	a4,-32(s0)
 24c:	fd842783          	lw	a5,-40(s0)
 250:	0cf70263          	beq	a4,a5,314 <main+0x258>
 254:	49402783          	lw	a5,1172(zero) # 494 <h>
 258:	fe042703          	lw	a4,-32(s0)
 25c:	0af70c63          	beq	a4,a5,314 <main+0x258>
 260:	49802783          	lw	a5,1176(zero) # 498 <i>
 264:	fe042703          	lw	a4,-32(s0)
 268:	0af70663          	beq	a4,a5,314 <main+0x258>
 26c:	49c02783          	lw	a5,1180(zero) # 49c <j>
 270:	fe042703          	lw	a4,-32(s0)
 274:	0af70063          	beq	a4,a5,314 <main+0x258>
 278:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 27c:	fe042703          	lw	a4,-32(s0)
 280:	08f70a63          	beq	a4,a5,314 <main+0x258>
 284:	fdc42703          	lw	a4,-36(s0)
 288:	fd842783          	lw	a5,-40(s0)
 28c:	08f70463          	beq	a4,a5,314 <main+0x258>
 290:	49402783          	lw	a5,1172(zero) # 494 <h>
 294:	fdc42703          	lw	a4,-36(s0)
 298:	06f70e63          	beq	a4,a5,314 <main+0x258>
 29c:	49802783          	lw	a5,1176(zero) # 498 <i>
 2a0:	fdc42703          	lw	a4,-36(s0)
 2a4:	06f70863          	beq	a4,a5,314 <main+0x258>
 2a8:	49c02783          	lw	a5,1180(zero) # 49c <j>
 2ac:	fdc42703          	lw	a4,-36(s0)
 2b0:	06f70263          	beq	a4,a5,314 <main+0x258>
 2b4:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 2b8:	fdc42703          	lw	a4,-36(s0)
 2bc:	04f70c63          	beq	a4,a5,314 <main+0x258>
 2c0:	49402783          	lw	a5,1172(zero) # 494 <h>
 2c4:	fd842703          	lw	a4,-40(s0)
 2c8:	04f70663          	beq	a4,a5,314 <main+0x258>
 2cc:	49802783          	lw	a5,1176(zero) # 498 <i>
 2d0:	fd842703          	lw	a4,-40(s0)
 2d4:	04f70063          	beq	a4,a5,314 <main+0x258>
 2d8:	49c02783          	lw	a5,1180(zero) # 49c <j>
 2dc:	fd842703          	lw	a4,-40(s0)
 2e0:	02f70a63          	beq	a4,a5,314 <main+0x258>
 2e4:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 2e8:	fd842703          	lw	a4,-40(s0)
 2ec:	02f70463          	beq	a4,a5,314 <main+0x258>
 2f0:	49802703          	lw	a4,1176(zero) # 498 <i>
 2f4:	49c02783          	lw	a5,1180(zero) # 49c <j>
 2f8:	00f70e63          	beq	a4,a5,314 <main+0x258>
 2fc:	49402703          	lw	a4,1172(zero) # 494 <h>
 300:	4a002783          	lw	a5,1184(zero) # 4a0 <k>
 304:	00f70863          	beq	a4,a5,314 <main+0x258>
 308:	4ac02783          	lw	a5,1196(zero) # 4ac <total>
 30c:	00178713          	addi	a4,a5,1
 310:	4ae02623          	sw	a4,1196(zero) # 4ac <total>
 314:	fd842783          	lw	a5,-40(s0)
 318:	00178793          	addi	a5,a5,1
 31c:	fcf42c23          	sw	a5,-40(s0)
 320:	4a802783          	lw	a5,1192(zero) # 4a8 <N>
 324:	fd842703          	lw	a4,-40(s0)
 328:	dee7dae3          	bge	a5,a4,11c <main+0x60>
 32c:	fdc42783          	lw	a5,-36(s0)
 330:	00178793          	addi	a5,a5,1
 334:	fcf42e23          	sw	a5,-36(s0)
 338:	4a802783          	lw	a5,1192(zero) # 4a8 <N>
 33c:	fdc42703          	lw	a4,-36(s0)
 340:	dce7d8e3          	bge	a5,a4,110 <main+0x54>
 344:	fe042783          	lw	a5,-32(s0)
 348:	00178793          	addi	a5,a5,1
 34c:	fef42023          	sw	a5,-32(s0)
 350:	4a802783          	lw	a5,1192(zero) # 4a8 <N>
 354:	fe042703          	lw	a4,-32(s0)
 358:	dae7d6e3          	bge	a5,a4,104 <main+0x48>
 35c:	fe442783          	lw	a5,-28(s0)
 360:	00178793          	addi	a5,a5,1
 364:	fef42223          	sw	a5,-28(s0)
 368:	4a802783          	lw	a5,1192(zero) # 4a8 <N>
 36c:	fe442703          	lw	a4,-28(s0)
 370:	d8e7d4e3          	bge	a5,a4,f8 <main+0x3c>
 374:	fe842783          	lw	a5,-24(s0)
 378:	00178793          	addi	a5,a5,1
 37c:	fef42423          	sw	a5,-24(s0)
 380:	4a802783          	lw	a5,1192(zero) # 4a8 <N>
 384:	fe842703          	lw	a4,-24(s0)
 388:	d6e7d2e3          	bge	a5,a4,ec <main+0x30>
 38c:	fec42783          	lw	a5,-20(s0)
 390:	00178793          	addi	a5,a5,1
 394:	fef42623          	sw	a5,-20(s0)
 398:	4a802783          	lw	a5,1192(zero) # 4a8 <N>
 39c:	fec42703          	lw	a4,-20(s0)
 3a0:	d4e7d0e3          	bge	a5,a4,e0 <main+0x24>
 3a4:	4ac02783          	lw	a5,1196(zero) # 4ac <total>
 3a8:	00078513          	mv	a0,a5
 3ac:	c69ff0ef          	jal	14 <printInt>
 3b0:	4a402783          	lw	a5,1188(zero) # 4a4 <judgeResult>
 3b4:	0fd00713          	li	a4,253
 3b8:	00070593          	mv	a1,a4
 3bc:	00078513          	mv	a0,a5
 3c0:	0a0000ef          	jal	460 <__modsi3>
 3c4:	00050793          	mv	a5,a0
 3c8:	00078513          	mv	a0,a5
 3cc:	02c12083          	lw	ra,44(sp)
 3d0:	02812403          	lw	s0,40(sp)
 3d4:	03010113          	addi	sp,sp,48
 3d8:	00008067          	ret

000003dc <__divsi3>:
 3dc:	06054063          	bltz	a0,43c <__umodsi3+0x10>
 3e0:	0605c663          	bltz	a1,44c <__umodsi3+0x20>

000003e4 <__hidden___udivsi3>:
 3e4:	00058613          	mv	a2,a1
 3e8:	00050593          	mv	a1,a0
 3ec:	fff00513          	li	a0,-1
 3f0:	02060c63          	beqz	a2,428 <__hidden___udivsi3+0x44>
 3f4:	00100693          	li	a3,1
 3f8:	00b67a63          	bgeu	a2,a1,40c <__hidden___udivsi3+0x28>
 3fc:	00c05863          	blez	a2,40c <__hidden___udivsi3+0x28>
 400:	00161613          	slli	a2,a2,0x1
 404:	00169693          	slli	a3,a3,0x1
 408:	feb66ae3          	bltu	a2,a1,3fc <__hidden___udivsi3+0x18>
 40c:	00000513          	li	a0,0
 410:	00c5e663          	bltu	a1,a2,41c <__hidden___udivsi3+0x38>
 414:	40c585b3          	sub	a1,a1,a2
 418:	00d56533          	or	a0,a0,a3
 41c:	0016d693          	srli	a3,a3,0x1
 420:	00165613          	srli	a2,a2,0x1
 424:	fe0696e3          	bnez	a3,410 <__hidden___udivsi3+0x2c>
 428:	00008067          	ret

0000042c <__umodsi3>:
 42c:	00008293          	mv	t0,ra
 430:	fb5ff0ef          	jal	3e4 <__hidden___udivsi3>
 434:	00058513          	mv	a0,a1
 438:	00028067          	jr	t0
 43c:	40a00533          	neg	a0,a0
 440:	00b04863          	bgtz	a1,450 <__umodsi3+0x24>
 444:	40b005b3          	neg	a1,a1
 448:	f9dff06f          	j	3e4 <__hidden___udivsi3>
 44c:	40b005b3          	neg	a1,a1
 450:	00008293          	mv	t0,ra
 454:	f91ff0ef          	jal	3e4 <__hidden___udivsi3>
 458:	40a00533          	neg	a0,a0
 45c:	00028067          	jr	t0

00000460 <__modsi3>:
 460:	00008293          	mv	t0,ra
 464:	0005ca63          	bltz	a1,478 <__modsi3+0x18>
 468:	00054c63          	bltz	a0,480 <__modsi3+0x20>
 46c:	f79ff0ef          	jal	3e4 <__hidden___udivsi3>
 470:	00058513          	mv	a0,a1
 474:	00028067          	jr	t0
 478:	40b005b3          	neg	a1,a1
 47c:	fe0558e3          	bgez	a0,46c <__modsi3+0xc>
 480:	40a00533          	neg	a0,a0
 484:	f61ff0ef          	jal	3e4 <__hidden___udivsi3>
 488:	40b00533          	neg	a0,a1
 48c:	00028067          	jr	t0

Disassembly of section .rodata:

00000490 <Mod>:
 490:	000000fd                                ....

Disassembly of section .data:

00000494 <h>:
 494:	00000063                                c...

00000498 <i>:
 498:	00000064                                d...

0000049c <j>:
 49c:	00000065                                e...

000004a0 <k>:
 4a0:	00000066                                f...

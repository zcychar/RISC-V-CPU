
hanoi.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	1a4000ef          	jal	1a8 <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fce0>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	30002703          	lw	a4,768(zero) # 300 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
  34:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
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
  78:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
  84:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
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

000000bc <cd>:
  bc:	fd010113          	addi	sp,sp,-48
  c0:	02112623          	sw	ra,44(sp)
  c4:	02812423          	sw	s0,40(sp)
  c8:	03010413          	addi	s0,sp,48
  cc:	fea42623          	sw	a0,-20(s0)
  d0:	feb42423          	sw	a1,-24(s0)
  d4:	fec42223          	sw	a2,-28(s0)
  d8:	fed42023          	sw	a3,-32(s0)
  dc:	fce42e23          	sw	a4,-36(s0)
  e0:	fec42703          	lw	a4,-20(s0)
  e4:	00100793          	li	a5,1
  e8:	02f71a63          	bne	a4,a5,11c <cd+0x60>
  ec:	2ec00513          	li	a0,748
  f0:	f61ff0ef          	jal	50 <printStr>
  f4:	fe842503          	lw	a0,-24(s0)
  f8:	f59ff0ef          	jal	50 <printStr>
  fc:	2f400513          	li	a0,756
 100:	f51ff0ef          	jal	50 <printStr>
 104:	fe042503          	lw	a0,-32(s0)
 108:	f49ff0ef          	jal	50 <printStr>
 10c:	fdc42783          	lw	a5,-36(s0)
 110:	00178793          	addi	a5,a5,1
 114:	fcf42e23          	sw	a5,-36(s0)
 118:	0780006f          	j	190 <cd+0xd4>
 11c:	fec42783          	lw	a5,-20(s0)
 120:	fff78793          	addi	a5,a5,-1
 124:	fdc42703          	lw	a4,-36(s0)
 128:	fe442683          	lw	a3,-28(s0)
 12c:	fe042603          	lw	a2,-32(s0)
 130:	fe842583          	lw	a1,-24(s0)
 134:	00078513          	mv	a0,a5
 138:	f85ff0ef          	jal	bc <cd>
 13c:	fca42e23          	sw	a0,-36(s0)
 140:	2ec00513          	li	a0,748
 144:	f0dff0ef          	jal	50 <printStr>
 148:	fe842503          	lw	a0,-24(s0)
 14c:	f05ff0ef          	jal	50 <printStr>
 150:	2f400513          	li	a0,756
 154:	efdff0ef          	jal	50 <printStr>
 158:	fe042503          	lw	a0,-32(s0)
 15c:	ef5ff0ef          	jal	50 <printStr>
 160:	fec42783          	lw	a5,-20(s0)
 164:	fff78793          	addi	a5,a5,-1
 168:	fdc42703          	lw	a4,-36(s0)
 16c:	fe042683          	lw	a3,-32(s0)
 170:	fe842603          	lw	a2,-24(s0)
 174:	fe442583          	lw	a1,-28(s0)
 178:	00078513          	mv	a0,a5
 17c:	f41ff0ef          	jal	bc <cd>
 180:	fca42e23          	sw	a0,-36(s0)
 184:	fdc42783          	lw	a5,-36(s0)
 188:	00178793          	addi	a5,a5,1
 18c:	fcf42e23          	sw	a5,-36(s0)
 190:	fdc42783          	lw	a5,-36(s0)
 194:	00078513          	mv	a0,a5
 198:	02c12083          	lw	ra,44(sp)
 19c:	02812403          	lw	s0,40(sp)
 1a0:	03010113          	addi	sp,sp,48
 1a4:	00008067          	ret

000001a8 <main>:
 1a8:	fd010113          	addi	sp,sp,-48
 1ac:	02112623          	sw	ra,44(sp)
 1b0:	02812423          	sw	s0,40(sp)
 1b4:	03010413          	addi	s0,sp,48
 1b8:	04100793          	li	a5,65
 1bc:	fef42023          	sw	a5,-32(s0)
 1c0:	fe040223          	sb	zero,-28(s0)
 1c4:	04200793          	li	a5,66
 1c8:	fcf42c23          	sw	a5,-40(s0)
 1cc:	fc040e23          	sb	zero,-36(s0)
 1d0:	04300793          	li	a5,67
 1d4:	fcf42823          	sw	a5,-48(s0)
 1d8:	fc040a23          	sb	zero,-44(s0)
 1dc:	00a00793          	li	a5,10
 1e0:	fef42623          	sw	a5,-20(s0)
 1e4:	fd040693          	addi	a3,s0,-48
 1e8:	fd840613          	addi	a2,s0,-40
 1ec:	fe040793          	addi	a5,s0,-32
 1f0:	00000713          	li	a4,0
 1f4:	00078593          	mv	a1,a5
 1f8:	fec42503          	lw	a0,-20(s0)
 1fc:	ec1ff0ef          	jal	bc <cd>
 200:	fea42423          	sw	a0,-24(s0)
 204:	fe842503          	lw	a0,-24(s0)
 208:	e0dff0ef          	jal	14 <printInt>
 20c:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
 210:	0fd00713          	li	a4,253
 214:	00070593          	mv	a1,a4
 218:	00078513          	mv	a0,a5
 21c:	0a0000ef          	jal	2bc <__modsi3>
 220:	00050793          	mv	a5,a0
 224:	00078513          	mv	a0,a5
 228:	02c12083          	lw	ra,44(sp)
 22c:	02812403          	lw	s0,40(sp)
 230:	03010113          	addi	sp,sp,48
 234:	00008067          	ret

00000238 <__divsi3>:
 238:	06054063          	bltz	a0,298 <__umodsi3+0x10>
 23c:	0605c663          	bltz	a1,2a8 <__umodsi3+0x20>

00000240 <__hidden___udivsi3>:
 240:	00058613          	mv	a2,a1
 244:	00050593          	mv	a1,a0
 248:	fff00513          	li	a0,-1
 24c:	02060c63          	beqz	a2,284 <__hidden___udivsi3+0x44>
 250:	00100693          	li	a3,1
 254:	00b67a63          	bgeu	a2,a1,268 <__hidden___udivsi3+0x28>
 258:	00c05863          	blez	a2,268 <__hidden___udivsi3+0x28>
 25c:	00161613          	slli	a2,a2,0x1
 260:	00169693          	slli	a3,a3,0x1
 264:	feb66ae3          	bltu	a2,a1,258 <__hidden___udivsi3+0x18>
 268:	00000513          	li	a0,0
 26c:	00c5e663          	bltu	a1,a2,278 <__hidden___udivsi3+0x38>
 270:	40c585b3          	sub	a1,a1,a2
 274:	00d56533          	or	a0,a0,a3
 278:	0016d693          	srli	a3,a3,0x1
 27c:	00165613          	srli	a2,a2,0x1
 280:	fe0696e3          	bnez	a3,26c <__hidden___udivsi3+0x2c>
 284:	00008067          	ret

00000288 <__umodsi3>:
 288:	00008293          	mv	t0,ra
 28c:	fb5ff0ef          	jal	240 <__hidden___udivsi3>
 290:	00058513          	mv	a0,a1
 294:	00028067          	jr	t0
 298:	40a00533          	neg	a0,a0
 29c:	00b04863          	bgtz	a1,2ac <__umodsi3+0x24>
 2a0:	40b005b3          	neg	a1,a1
 2a4:	f9dff06f          	j	240 <__hidden___udivsi3>
 2a8:	40b005b3          	neg	a1,a1
 2ac:	00008293          	mv	t0,ra
 2b0:	f91ff0ef          	jal	240 <__hidden___udivsi3>
 2b4:	40a00533          	neg	a0,a0
 2b8:	00028067          	jr	t0

000002bc <__modsi3>:
 2bc:	00008293          	mv	t0,ra
 2c0:	0005ca63          	bltz	a1,2d4 <__modsi3+0x18>
 2c4:	00054c63          	bltz	a0,2dc <__modsi3+0x20>
 2c8:	f79ff0ef          	jal	240 <__hidden___udivsi3>
 2cc:	00058513          	mv	a0,a1
 2d0:	00028067          	jr	t0
 2d4:	40b005b3          	neg	a1,a1
 2d8:	fe0558e3          	bgez	a0,2c8 <__modsi3+0xc>
 2dc:	40a00533          	neg	a0,a0
 2e0:	f61ff0ef          	jal	240 <__hidden___udivsi3>
 2e4:	40b00533          	neg	a0,a1
 2e8:	00028067          	jr	t0

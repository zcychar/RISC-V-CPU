
array_test1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	198000ef          	jal	19c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <__modsi3>:
  14:	fc010113          	addi	sp,sp,-64 # 1ffc0 <judgeResult+0x1fd04>
  18:	02812e23          	sw	s0,60(sp)
  1c:	04010413          	addi	s0,sp,64
  20:	fca42623          	sw	a0,-52(s0)
  24:	fcb42423          	sw	a1,-56(s0)
  28:	fe042623          	sw	zero,-20(s0)
  2c:	fcc42783          	lw	a5,-52(s0)
  30:	0007dc63          	bgez	a5,48 <__modsi3+0x34>
  34:	fcc42783          	lw	a5,-52(s0)
  38:	40f007b3          	neg	a5,a5
  3c:	fcf42623          	sw	a5,-52(s0)
  40:	00100793          	li	a5,1
  44:	fef42623          	sw	a5,-20(s0)
  48:	fc842783          	lw	a5,-56(s0)
  4c:	0007d863          	bgez	a5,5c <__modsi3+0x48>
  50:	fc842783          	lw	a5,-56(s0)
  54:	40f007b3          	neg	a5,a5
  58:	fcf42423          	sw	a5,-56(s0)
  5c:	fcc42783          	lw	a5,-52(s0)
  60:	fef42023          	sw	a5,-32(s0)
  64:	fc842783          	lw	a5,-56(s0)
  68:	fcf42e23          	sw	a5,-36(s0)
  6c:	fe042423          	sw	zero,-24(s0)
  70:	01f00793          	li	a5,31
  74:	fef42223          	sw	a5,-28(s0)
  78:	04c0006f          	j	c4 <__modsi3+0xb0>
  7c:	fe842783          	lw	a5,-24(s0)
  80:	00179713          	slli	a4,a5,0x1
  84:	fe442783          	lw	a5,-28(s0)
  88:	fe042683          	lw	a3,-32(s0)
  8c:	00f6d7b3          	srl	a5,a3,a5
  90:	0017f793          	andi	a5,a5,1
  94:	00f767b3          	or	a5,a4,a5
  98:	fef42423          	sw	a5,-24(s0)
  9c:	fe842703          	lw	a4,-24(s0)
  a0:	fdc42783          	lw	a5,-36(s0)
  a4:	00f76a63          	bltu	a4,a5,b8 <__modsi3+0xa4>
  a8:	fe842703          	lw	a4,-24(s0)
  ac:	fdc42783          	lw	a5,-36(s0)
  b0:	40f707b3          	sub	a5,a4,a5
  b4:	fef42423          	sw	a5,-24(s0)
  b8:	fe442783          	lw	a5,-28(s0)
  bc:	fff78793          	addi	a5,a5,-1
  c0:	fef42223          	sw	a5,-28(s0)
  c4:	fe442783          	lw	a5,-28(s0)
  c8:	fa07dae3          	bgez	a5,7c <__modsi3+0x68>
  cc:	fec42783          	lw	a5,-20(s0)
  d0:	00078863          	beqz	a5,e0 <__modsi3+0xcc>
  d4:	fe842783          	lw	a5,-24(s0)
  d8:	40f007b3          	neg	a5,a5
  dc:	0080006f          	j	e4 <__modsi3+0xd0>
  e0:	fe842783          	lw	a5,-24(s0)
  e4:	00078513          	mv	a0,a5
  e8:	03c12403          	lw	s0,60(sp)
  ec:	04010113          	addi	sp,sp,64
  f0:	00008067          	ret

000000f4 <printInt>:
  f4:	fe010113          	addi	sp,sp,-32
  f8:	00812e23          	sw	s0,28(sp)
  fc:	02010413          	addi	s0,sp,32
 100:	fea42623          	sw	a0,-20(s0)
 104:	2bc02703          	lw	a4,700(zero) # 2bc <judgeResult>
 108:	fec42783          	lw	a5,-20(s0)
 10c:	00f74733          	xor	a4,a4,a5
 110:	2ae02e23          	sw	a4,700(zero) # 2bc <judgeResult>
 114:	2bc02783          	lw	a5,700(zero) # 2bc <judgeResult>
 118:	0ad78713          	addi	a4,a5,173
 11c:	2ae02e23          	sw	a4,700(zero) # 2bc <judgeResult>
 120:	00000013          	nop
 124:	01c12403          	lw	s0,28(sp)
 128:	02010113          	addi	sp,sp,32
 12c:	00008067          	ret

00000130 <printStr>:
 130:	fd010113          	addi	sp,sp,-48
 134:	02812623          	sw	s0,44(sp)
 138:	03010413          	addi	s0,sp,48
 13c:	fca42e23          	sw	a0,-36(s0)
 140:	fdc42783          	lw	a5,-36(s0)
 144:	fef42623          	sw	a5,-20(s0)
 148:	0340006f          	j	17c <printStr+0x4c>
 14c:	fec42783          	lw	a5,-20(s0)
 150:	0007c783          	lbu	a5,0(a5)
 154:	00078713          	mv	a4,a5
 158:	2bc02783          	lw	a5,700(zero) # 2bc <judgeResult>
 15c:	00f74733          	xor	a4,a4,a5
 160:	2ae02e23          	sw	a4,700(zero) # 2bc <judgeResult>
 164:	2bc02783          	lw	a5,700(zero) # 2bc <judgeResult>
 168:	20978713          	addi	a4,a5,521
 16c:	2ae02e23          	sw	a4,700(zero) # 2bc <judgeResult>
 170:	fec42783          	lw	a5,-20(s0)
 174:	00178793          	addi	a5,a5,1
 178:	fef42623          	sw	a5,-20(s0)
 17c:	fec42783          	lw	a5,-20(s0)
 180:	0007c783          	lbu	a5,0(a5)
 184:	fc0794e3          	bnez	a5,14c <printStr+0x1c>
 188:	00000013          	nop
 18c:	00000013          	nop
 190:	02c12403          	lw	s0,44(sp)
 194:	03010113          	addi	sp,sp,48
 198:	00008067          	ret

0000019c <main>:
 19c:	fd010113          	addi	sp,sp,-48
 1a0:	02112623          	sw	ra,44(sp)
 1a4:	02812423          	sw	s0,40(sp)
 1a8:	03010413          	addi	s0,sp,48
 1ac:	fe042623          	sw	zero,-20(s0)
 1b0:	0400006f          	j	1f0 <main+0x54>
 1b4:	2ac00713          	li	a4,684
 1b8:	fec42783          	lw	a5,-20(s0)
 1bc:	00279793          	slli	a5,a5,0x2
 1c0:	00f707b3          	add	a5,a4,a5
 1c4:	0007a023          	sw	zero,0(a5)
 1c8:	fec42783          	lw	a5,-20(s0)
 1cc:	00178713          	addi	a4,a5,1
 1d0:	fec42783          	lw	a5,-20(s0)
 1d4:	00279793          	slli	a5,a5,0x2
 1d8:	ff078793          	addi	a5,a5,-16
 1dc:	008787b3          	add	a5,a5,s0
 1e0:	fee7a423          	sw	a4,-24(a5)
 1e4:	fec42783          	lw	a5,-20(s0)
 1e8:	00178793          	addi	a5,a5,1
 1ec:	fef42623          	sw	a5,-20(s0)
 1f0:	fec42703          	lw	a4,-20(s0)
 1f4:	00300793          	li	a5,3
 1f8:	fae7dee3          	bge	a5,a4,1b4 <main+0x18>
 1fc:	fe042623          	sw	zero,-20(s0)
 200:	02c0006f          	j	22c <main+0x90>
 204:	2ac00713          	li	a4,684
 208:	fec42783          	lw	a5,-20(s0)
 20c:	00279793          	slli	a5,a5,0x2
 210:	00f707b3          	add	a5,a4,a5
 214:	0007a783          	lw	a5,0(a5)
 218:	00078513          	mv	a0,a5
 21c:	ed9ff0ef          	jal	f4 <printInt>
 220:	fec42783          	lw	a5,-20(s0)
 224:	00178793          	addi	a5,a5,1
 228:	fef42623          	sw	a5,-20(s0)
 22c:	fec42703          	lw	a4,-20(s0)
 230:	00300793          	li	a5,3
 234:	fce7d8e3          	bge	a5,a4,204 <main+0x68>
 238:	fd840793          	addi	a5,s0,-40
 23c:	fef42423          	sw	a5,-24(s0)
 240:	fe042623          	sw	zero,-20(s0)
 244:	02c0006f          	j	270 <main+0xd4>
 248:	fec42783          	lw	a5,-20(s0)
 24c:	00279793          	slli	a5,a5,0x2
 250:	fe842703          	lw	a4,-24(s0)
 254:	00f707b3          	add	a5,a4,a5
 258:	0007a783          	lw	a5,0(a5)
 25c:	00078513          	mv	a0,a5
 260:	e95ff0ef          	jal	f4 <printInt>
 264:	fec42783          	lw	a5,-20(s0)
 268:	00178793          	addi	a5,a5,1
 26c:	fef42623          	sw	a5,-20(s0)
 270:	fec42703          	lw	a4,-20(s0)
 274:	00300793          	li	a5,3
 278:	fce7d8e3          	bge	a5,a4,248 <main+0xac>
 27c:	2bc02783          	lw	a5,700(zero) # 2bc <judgeResult>
 280:	0fd00713          	li	a4,253
 284:	00070593          	mv	a1,a4
 288:	00078513          	mv	a0,a5
 28c:	d89ff0ef          	jal	14 <__modsi3>
 290:	00050793          	mv	a5,a0
 294:	00078513          	mv	a0,a5
 298:	02c12083          	lw	ra,44(sp)
 29c:	02812403          	lw	s0,40(sp)
 2a0:	03010113          	addi	sp,sp,48
 2a4:	00008067          	ret

Disassembly of section .rodata:

000002a8 <Mod>:
 2a8:	000000fd                                ....

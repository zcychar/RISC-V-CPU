
array_test2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	198000ef          	jal	19c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <__modsi3>:
  14:	fc010113          	addi	sp,sp,-64 # 1ffc0 <judgeResult+0x1fcc0>
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
 104:	30002703          	lw	a4,768(zero) # 300 <judgeResult>
 108:	fec42783          	lw	a5,-20(s0)
 10c:	00f74733          	xor	a4,a4,a5
 110:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
 114:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
 118:	0ad78713          	addi	a4,a5,173
 11c:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
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
 158:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
 15c:	00f74733          	xor	a4,a4,a5
 160:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
 164:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
 168:	20978713          	addi	a4,a5,521
 16c:	30e02023          	sw	a4,768(zero) # 300 <judgeResult>
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
 1ac:	2ec02783          	lw	a5,748(zero) # 2ec <pa>
 1b0:	fcf42e23          	sw	a5,-36(s0)
 1b4:	2ec02783          	lw	a5,748(zero) # 2ec <pa>
 1b8:	fef42023          	sw	a5,-32(s0)
 1bc:	2ec02783          	lw	a5,748(zero) # 2ec <pa>
 1c0:	fef42223          	sw	a5,-28(s0)
 1c4:	2ec02783          	lw	a5,748(zero) # 2ec <pa>
 1c8:	fef42423          	sw	a5,-24(s0)
 1cc:	00400513          	li	a0,4
 1d0:	f25ff0ef          	jal	f4 <printInt>
 1d4:	fe042623          	sw	zero,-20(s0)
 1d8:	02c0006f          	j	204 <main+0x68>
 1dc:	fdc42703          	lw	a4,-36(s0)
 1e0:	fec42783          	lw	a5,-20(s0)
 1e4:	00279793          	slli	a5,a5,0x2
 1e8:	00f707b3          	add	a5,a4,a5
 1ec:	fec42703          	lw	a4,-20(s0)
 1f0:	00170713          	addi	a4,a4,1
 1f4:	00e7a023          	sw	a4,0(a5)
 1f8:	fec42783          	lw	a5,-20(s0)
 1fc:	00178793          	addi	a5,a5,1
 200:	fef42623          	sw	a5,-20(s0)
 204:	fec42703          	lw	a4,-20(s0)
 208:	00300793          	li	a5,3
 20c:	fce7d8e3          	bge	a5,a4,1dc <main+0x40>
 210:	fe042623          	sw	zero,-20(s0)
 214:	02c0006f          	j	240 <main+0xa4>
 218:	fe042703          	lw	a4,-32(s0)
 21c:	fec42783          	lw	a5,-20(s0)
 220:	00279793          	slli	a5,a5,0x2
 224:	00f707b3          	add	a5,a4,a5
 228:	0007a783          	lw	a5,0(a5)
 22c:	00078513          	mv	a0,a5
 230:	ec5ff0ef          	jal	f4 <printInt>
 234:	fec42783          	lw	a5,-20(s0)
 238:	00178793          	addi	a5,a5,1
 23c:	fef42623          	sw	a5,-20(s0)
 240:	fec42703          	lw	a4,-20(s0)
 244:	00300793          	li	a5,3
 248:	fce7d8e3          	bge	a5,a4,218 <main+0x7c>
 24c:	fe042623          	sw	zero,-20(s0)
 250:	0240006f          	j	274 <main+0xd8>
 254:	fe442703          	lw	a4,-28(s0)
 258:	fec42783          	lw	a5,-20(s0)
 25c:	00279793          	slli	a5,a5,0x2
 260:	00f707b3          	add	a5,a4,a5
 264:	0007a023          	sw	zero,0(a5)
 268:	fec42783          	lw	a5,-20(s0)
 26c:	00178793          	addi	a5,a5,1
 270:	fef42623          	sw	a5,-20(s0)
 274:	fec42703          	lw	a4,-20(s0)
 278:	00300793          	li	a5,3
 27c:	fce7dce3          	bge	a5,a4,254 <main+0xb8>
 280:	fe042623          	sw	zero,-20(s0)
 284:	02c0006f          	j	2b0 <main+0x114>
 288:	fe842703          	lw	a4,-24(s0)
 28c:	fec42783          	lw	a5,-20(s0)
 290:	00279793          	slli	a5,a5,0x2
 294:	00f707b3          	add	a5,a4,a5
 298:	0007a783          	lw	a5,0(a5)
 29c:	00078513          	mv	a0,a5
 2a0:	e55ff0ef          	jal	f4 <printInt>
 2a4:	fec42783          	lw	a5,-20(s0)
 2a8:	00178793          	addi	a5,a5,1
 2ac:	fef42623          	sw	a5,-20(s0)
 2b0:	fec42703          	lw	a4,-20(s0)
 2b4:	00300793          	li	a5,3
 2b8:	fce7d8e3          	bge	a5,a4,288 <main+0xec>
 2bc:	30002783          	lw	a5,768(zero) # 300 <judgeResult>
 2c0:	0fd00713          	li	a4,253
 2c4:	00070593          	mv	a1,a4
 2c8:	00078513          	mv	a0,a5
 2cc:	d49ff0ef          	jal	14 <__modsi3>
 2d0:	00050793          	mv	a5,a0
 2d4:	00078513          	mv	a0,a5
 2d8:	02c12083          	lw	ra,44(sp)
 2dc:	02812403          	lw	s0,40(sp)
 2e0:	03010113          	addi	sp,sp,48
 2e4:	00008067          	ret

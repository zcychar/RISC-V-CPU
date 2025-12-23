
array_test1.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	1cc000ef          	jal	1d0 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <__modsi3>:
  10:	fc010113          	addi	sp,sp,-64 # 1ffc0 <judgeResult+0xffb0>
  14:	02112e23          	sw	ra,60(sp)
  18:	02812c23          	sw	s0,56(sp)
  1c:	04010413          	addi	s0,sp,64
  20:	fca42623          	sw	a0,-52(s0)
  24:	fcb42423          	sw	a1,-56(s0)
  28:	fe042623          	sw	zero,-20(s0)
  2c:	fcc42783          	lw	a5,-52(s0)
  30:	0007dc63          	bgez	a5,48 <__modsi3+0x38>
  34:	fcc42783          	lw	a5,-52(s0)
  38:	40f007b3          	neg	a5,a5
  3c:	fcf42623          	sw	a5,-52(s0)
  40:	00100793          	li	a5,1
  44:	fef42623          	sw	a5,-20(s0)
  48:	fc842783          	lw	a5,-56(s0)
  4c:	0007d863          	bgez	a5,5c <__modsi3+0x4c>
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
  78:	04c0006f          	j	c4 <__modsi3+0xb4>
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
  a4:	00f76a63          	bltu	a4,a5,b8 <__modsi3+0xa8>
  a8:	fe842703          	lw	a4,-24(s0)
  ac:	fdc42783          	lw	a5,-36(s0)
  b0:	40f707b3          	sub	a5,a4,a5
  b4:	fef42423          	sw	a5,-24(s0)
  b8:	fe442783          	lw	a5,-28(s0)
  bc:	fff78793          	addi	a5,a5,-1
  c0:	fef42223          	sw	a5,-28(s0)
  c4:	fe442783          	lw	a5,-28(s0)
  c8:	fa07dae3          	bgez	a5,7c <__modsi3+0x6c>
  cc:	fec42783          	lw	a5,-20(s0)
  d0:	00078863          	beqz	a5,e0 <__modsi3+0xd0>
  d4:	fe842783          	lw	a5,-24(s0)
  d8:	40f007b3          	neg	a5,a5
  dc:	0080006f          	j	e4 <__modsi3+0xd4>
  e0:	fe842783          	lw	a5,-24(s0)
  e4:	00078513          	mv	a0,a5
  e8:	03c12083          	lw	ra,60(sp)
  ec:	03812403          	lw	s0,56(sp)
  f0:	04010113          	addi	sp,sp,64
  f4:	00008067          	ret

000000f8 <printInt>:
  f8:	fe010113          	addi	sp,sp,-32
  fc:	00112e23          	sw	ra,28(sp)
 100:	00812c23          	sw	s0,24(sp)
 104:	02010413          	addi	s0,sp,32
 108:	fea42623          	sw	a0,-20(s0)
 10c:	000107b7          	lui	a5,0x10
 110:	0107a703          	lw	a4,16(a5) # 10010 <judgeResult>
 114:	fec42783          	lw	a5,-20(s0)
 118:	00f74733          	xor	a4,a4,a5
 11c:	000107b7          	lui	a5,0x10
 120:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
 124:	000107b7          	lui	a5,0x10
 128:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
 12c:	0ad78713          	addi	a4,a5,173
 130:	000107b7          	lui	a5,0x10
 134:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
 138:	00000013          	nop
 13c:	01c12083          	lw	ra,28(sp)
 140:	01812403          	lw	s0,24(sp)
 144:	02010113          	addi	sp,sp,32
 148:	00008067          	ret

0000014c <printStr>:
 14c:	fd010113          	addi	sp,sp,-48
 150:	02112623          	sw	ra,44(sp)
 154:	02812423          	sw	s0,40(sp)
 158:	03010413          	addi	s0,sp,48
 15c:	fca42e23          	sw	a0,-36(s0)
 160:	fdc42783          	lw	a5,-36(s0)
 164:	fef42623          	sw	a5,-20(s0)
 168:	0440006f          	j	1ac <printStr+0x60>
 16c:	fec42783          	lw	a5,-20(s0)
 170:	0007c783          	lbu	a5,0(a5)
 174:	00078713          	mv	a4,a5
 178:	000107b7          	lui	a5,0x10
 17c:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
 180:	00f74733          	xor	a4,a4,a5
 184:	000107b7          	lui	a5,0x10
 188:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
 18c:	000107b7          	lui	a5,0x10
 190:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
 194:	20978713          	addi	a4,a5,521
 198:	000107b7          	lui	a5,0x10
 19c:	00e7a823          	sw	a4,16(a5) # 10010 <judgeResult>
 1a0:	fec42783          	lw	a5,-20(s0)
 1a4:	00178793          	addi	a5,a5,1
 1a8:	fef42623          	sw	a5,-20(s0)
 1ac:	fec42783          	lw	a5,-20(s0)
 1b0:	0007c783          	lbu	a5,0(a5)
 1b4:	fa079ce3          	bnez	a5,16c <printStr+0x20>
 1b8:	00000013          	nop
 1bc:	00000013          	nop
 1c0:	02c12083          	lw	ra,44(sp)
 1c4:	02812403          	lw	s0,40(sp)
 1c8:	03010113          	addi	sp,sp,48
 1cc:	00008067          	ret

000001d0 <main>:
 1d0:	fd010113          	addi	sp,sp,-48
 1d4:	02112623          	sw	ra,44(sp)
 1d8:	02812423          	sw	s0,40(sp)
 1dc:	03010413          	addi	s0,sp,48
 1e0:	fe042623          	sw	zero,-20(s0)
 1e4:	0440006f          	j	228 <main+0x58>
 1e8:	000107b7          	lui	a5,0x10
 1ec:	00078713          	mv	a4,a5
 1f0:	fec42783          	lw	a5,-20(s0)
 1f4:	00279793          	slli	a5,a5,0x2
 1f8:	00f707b3          	add	a5,a4,a5
 1fc:	0007a023          	sw	zero,0(a5) # 10000 <a>
 200:	fec42783          	lw	a5,-20(s0)
 204:	00178713          	addi	a4,a5,1
 208:	fec42683          	lw	a3,-20(s0)
 20c:	fd840793          	addi	a5,s0,-40
 210:	00269693          	slli	a3,a3,0x2
 214:	00f687b3          	add	a5,a3,a5
 218:	00e7a023          	sw	a4,0(a5)
 21c:	fec42783          	lw	a5,-20(s0)
 220:	00178793          	addi	a5,a5,1
 224:	fef42623          	sw	a5,-20(s0)
 228:	fec42703          	lw	a4,-20(s0)
 22c:	00300793          	li	a5,3
 230:	fae7dce3          	bge	a5,a4,1e8 <main+0x18>
 234:	fe042623          	sw	zero,-20(s0)
 238:	0300006f          	j	268 <main+0x98>
 23c:	000107b7          	lui	a5,0x10
 240:	00078713          	mv	a4,a5
 244:	fec42783          	lw	a5,-20(s0)
 248:	00279793          	slli	a5,a5,0x2
 24c:	00f707b3          	add	a5,a4,a5
 250:	0007a783          	lw	a5,0(a5) # 10000 <a>
 254:	00078513          	mv	a0,a5
 258:	ea1ff0ef          	jal	f8 <printInt>
 25c:	fec42783          	lw	a5,-20(s0)
 260:	00178793          	addi	a5,a5,1
 264:	fef42623          	sw	a5,-20(s0)
 268:	fec42703          	lw	a4,-20(s0)
 26c:	00300793          	li	a5,3
 270:	fce7d6e3          	bge	a5,a4,23c <main+0x6c>
 274:	fd840793          	addi	a5,s0,-40
 278:	fef42423          	sw	a5,-24(s0)
 27c:	fe042623          	sw	zero,-20(s0)
 280:	02c0006f          	j	2ac <main+0xdc>
 284:	fec42783          	lw	a5,-20(s0)
 288:	00279793          	slli	a5,a5,0x2
 28c:	fe842703          	lw	a4,-24(s0)
 290:	00f707b3          	add	a5,a4,a5
 294:	0007a783          	lw	a5,0(a5)
 298:	00078513          	mv	a0,a5
 29c:	e5dff0ef          	jal	f8 <printInt>
 2a0:	fec42783          	lw	a5,-20(s0)
 2a4:	00178793          	addi	a5,a5,1
 2a8:	fef42623          	sw	a5,-20(s0)
 2ac:	fec42703          	lw	a4,-20(s0)
 2b0:	00300793          	li	a5,3
 2b4:	fce7d8e3          	bge	a5,a4,284 <main+0xb4>
 2b8:	000107b7          	lui	a5,0x10
 2bc:	0107a783          	lw	a5,16(a5) # 10010 <judgeResult>
 2c0:	0fd00713          	li	a4,253
 2c4:	00070593          	mv	a1,a4
 2c8:	00078513          	mv	a0,a5
 2cc:	d45ff0ef          	jal	10 <__modsi3>
 2d0:	00050793          	mv	a5,a0
 2d4:	00078513          	mv	a0,a5
 2d8:	02c12083          	lw	ra,44(sp)
 2dc:	02812403          	lw	s0,40(sp)
 2e0:	03010113          	addi	sp,sp,48
 2e4:	00008067          	ret


vec_multiply.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	138000ef          	jal	13c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1f89c>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	74402703          	lw	a4,1860(zero) # 744 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	74e02223          	sw	a4,1860(zero) # 744 <judgeResult>
  34:	74402783          	lw	a5,1860(zero) # 744 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	74e02223          	sw	a4,1860(zero) # 744 <judgeResult>
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
  78:	74402783          	lw	a5,1860(zero) # 744 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	74e02223          	sw	a4,1860(zero) # 744 <judgeResult>
  84:	74402783          	lw	a5,1860(zero) # 744 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	74e02223          	sw	a4,1860(zero) # 744 <judgeResult>
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

000000bc <multiply>:
  bc:	fd010113          	addi	sp,sp,-48
  c0:	02812623          	sw	s0,44(sp)
  c4:	03010413          	addi	s0,sp,48
  c8:	fca42e23          	sw	a0,-36(s0)
  cc:	fcb42c23          	sw	a1,-40(s0)
  d0:	fe042423          	sw	zero,-24(s0)
  d4:	fe042623          	sw	zero,-20(s0)
  d8:	0440006f          	j	11c <multiply+0x60>
  dc:	fdc42783          	lw	a5,-36(s0)
  e0:	0017f793          	andi	a5,a5,1
  e4:	00078a63          	beqz	a5,f8 <multiply+0x3c>
  e8:	fe842703          	lw	a4,-24(s0)
  ec:	fd842783          	lw	a5,-40(s0)
  f0:	00f707b3          	add	a5,a4,a5
  f4:	fef42423          	sw	a5,-24(s0)
  f8:	fdc42783          	lw	a5,-36(s0)
  fc:	4017d793          	srai	a5,a5,0x1
 100:	fcf42e23          	sw	a5,-36(s0)
 104:	fd842783          	lw	a5,-40(s0)
 108:	00179793          	slli	a5,a5,0x1
 10c:	fcf42c23          	sw	a5,-40(s0)
 110:	fec42783          	lw	a5,-20(s0)
 114:	00178793          	addi	a5,a5,1
 118:	fef42623          	sw	a5,-20(s0)
 11c:	fec42703          	lw	a4,-20(s0)
 120:	01f00793          	li	a5,31
 124:	fae7dce3          	bge	a5,a4,dc <multiply+0x20>
 128:	fe842783          	lw	a5,-24(s0)
 12c:	00078513          	mv	a0,a5
 130:	02c12403          	lw	s0,44(sp)
 134:	03010113          	addi	sp,sp,48
 138:	00008067          	ret

0000013c <main>:
 13c:	fe010113          	addi	sp,sp,-32
 140:	00112e23          	sw	ra,28(sp)
 144:	00812c23          	sw	s0,24(sp)
 148:	02010413          	addi	s0,sp,32
 14c:	fe042423          	sw	zero,-24(s0)
 150:	fe042623          	sw	zero,-20(s0)
 154:	0500006f          	j	1a4 <main+0x68>
 158:	29400713          	li	a4,660
 15c:	fec42783          	lw	a5,-20(s0)
 160:	00279793          	slli	a5,a5,0x2
 164:	00f707b3          	add	a5,a4,a5
 168:	0007a683          	lw	a3,0(a5)
 16c:	42400713          	li	a4,1060
 170:	fec42783          	lw	a5,-20(s0)
 174:	00279793          	slli	a5,a5,0x2
 178:	00f707b3          	add	a5,a4,a5
 17c:	0007a783          	lw	a5,0(a5)
 180:	00078593          	mv	a1,a5
 184:	00068513          	mv	a0,a3
 188:	f35ff0ef          	jal	bc <multiply>
 18c:	fea42223          	sw	a0,-28(s0)
 190:	fe442503          	lw	a0,-28(s0)
 194:	e81ff0ef          	jal	14 <printInt>
 198:	fec42783          	lw	a5,-20(s0)
 19c:	00178793          	addi	a5,a5,1
 1a0:	fef42623          	sw	a5,-20(s0)
 1a4:	fec42703          	lw	a4,-20(s0)
 1a8:	06300793          	li	a5,99
 1ac:	fae7d6e3          	bge	a5,a4,158 <main+0x1c>
 1b0:	74402783          	lw	a5,1860(zero) # 744 <judgeResult>
 1b4:	0fd00713          	li	a4,253
 1b8:	00070593          	mv	a1,a4
 1bc:	00078513          	mv	a0,a5
 1c0:	0a0000ef          	jal	260 <__modsi3>
 1c4:	00050793          	mv	a5,a0
 1c8:	00078513          	mv	a0,a5
 1cc:	01c12083          	lw	ra,28(sp)
 1d0:	01812403          	lw	s0,24(sp)
 1d4:	02010113          	addi	sp,sp,32
 1d8:	00008067          	ret

000001dc <__divsi3>:
 1dc:	06054063          	bltz	a0,23c <__umodsi3+0x10>
 1e0:	0605c663          	bltz	a1,24c <__umodsi3+0x20>

000001e4 <__hidden___udivsi3>:
 1e4:	00058613          	mv	a2,a1
 1e8:	00050593          	mv	a1,a0
 1ec:	fff00513          	li	a0,-1
 1f0:	02060c63          	beqz	a2,228 <__hidden___udivsi3+0x44>
 1f4:	00100693          	li	a3,1
 1f8:	00b67a63          	bgeu	a2,a1,20c <__hidden___udivsi3+0x28>
 1fc:	00c05863          	blez	a2,20c <__hidden___udivsi3+0x28>
 200:	00161613          	slli	a2,a2,0x1
 204:	00169693          	slli	a3,a3,0x1
 208:	feb66ae3          	bltu	a2,a1,1fc <__hidden___udivsi3+0x18>
 20c:	00000513          	li	a0,0
 210:	00c5e663          	bltu	a1,a2,21c <__hidden___udivsi3+0x38>
 214:	40c585b3          	sub	a1,a1,a2
 218:	00d56533          	or	a0,a0,a3
 21c:	0016d693          	srli	a3,a3,0x1
 220:	00165613          	srli	a2,a2,0x1
 224:	fe0696e3          	bnez	a3,210 <__hidden___udivsi3+0x2c>
 228:	00008067          	ret

0000022c <__umodsi3>:
 22c:	00008293          	mv	t0,ra
 230:	fb5ff0ef          	jal	1e4 <__hidden___udivsi3>
 234:	00058513          	mv	a0,a1
 238:	00028067          	jr	t0
 23c:	40a00533          	neg	a0,a0
 240:	00b04863          	bgtz	a1,250 <__umodsi3+0x24>
 244:	40b005b3          	neg	a1,a1
 248:	f9dff06f          	j	1e4 <__hidden___udivsi3>
 24c:	40b005b3          	neg	a1,a1
 250:	00008293          	mv	t0,ra
 254:	f91ff0ef          	jal	1e4 <__hidden___udivsi3>
 258:	40a00533          	neg	a0,a0
 25c:	00028067          	jr	t0

00000260 <__modsi3>:
 260:	00008293          	mv	t0,ra
 264:	0005ca63          	bltz	a1,278 <__modsi3+0x18>
 268:	00054c63          	bltz	a0,280 <__modsi3+0x20>
 26c:	f79ff0ef          	jal	1e4 <__hidden___udivsi3>
 270:	00058513          	mv	a0,a1
 274:	00028067          	jr	t0
 278:	40b005b3          	neg	a1,a1
 27c:	fe0558e3          	bgez	a0,26c <__modsi3+0xc>
 280:	40a00533          	neg	a0,a0
 284:	f61ff0ef          	jal	1e4 <__hidden___udivsi3>
 288:	40b00533          	neg	a0,a1
 28c:	00028067          	jr	t0

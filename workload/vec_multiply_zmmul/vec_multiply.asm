
vec_multiply_zmmul.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1f928>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	6b802703          	lw	a4,1720(zero) # 6b8 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	6ae02c23          	sw	a4,1720(zero) # 6b8 <judgeResult>
  34:	6b802783          	lw	a5,1720(zero) # 6b8 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	6ae02c23          	sw	a4,1720(zero) # 6b8 <judgeResult>
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
  78:	6b802783          	lw	a5,1720(zero) # 6b8 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	6ae02c23          	sw	a4,1720(zero) # 6b8 <judgeResult>
  84:	6b802783          	lw	a5,1720(zero) # 6b8 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	6ae02c23          	sw	a4,1720(zero) # 6b8 <judgeResult>
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
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00112e23          	sw	ra,28(sp)
  c4:	00812c23          	sw	s0,24(sp)
  c8:	02010413          	addi	s0,sp,32
  cc:	fe042623          	sw	zero,-20(s0)
  d0:	0480006f          	j	118 <main+0x5c>
  d4:	20800713          	li	a4,520
  d8:	fec42783          	lw	a5,-20(s0)
  dc:	00279793          	slli	a5,a5,0x2
  e0:	00f707b3          	add	a5,a4,a5
  e4:	0007a703          	lw	a4,0(a5)
  e8:	39800693          	li	a3,920
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	00279793          	slli	a5,a5,0x2
  f4:	00f687b3          	add	a5,a3,a5
  f8:	0007a783          	lw	a5,0(a5)
  fc:	02f707b3          	mul	a5,a4,a5
 100:	fef42423          	sw	a5,-24(s0)
 104:	fe842503          	lw	a0,-24(s0)
 108:	f0dff0ef          	jal	14 <printInt>
 10c:	fec42783          	lw	a5,-20(s0)
 110:	00178793          	addi	a5,a5,1
 114:	fef42623          	sw	a5,-20(s0)
 118:	fec42703          	lw	a4,-20(s0)
 11c:	06300793          	li	a5,99
 120:	fae7dae3          	bge	a5,a4,d4 <main+0x18>
 124:	6b802783          	lw	a5,1720(zero) # 6b8 <judgeResult>
 128:	0fd00713          	li	a4,253
 12c:	00070593          	mv	a1,a4
 130:	00078513          	mv	a0,a5
 134:	0a0000ef          	jal	1d4 <__modsi3>
 138:	00050793          	mv	a5,a0
 13c:	00078513          	mv	a0,a5
 140:	01c12083          	lw	ra,28(sp)
 144:	01812403          	lw	s0,24(sp)
 148:	02010113          	addi	sp,sp,32
 14c:	00008067          	ret

00000150 <__divsi3>:
 150:	06054063          	bltz	a0,1b0 <__umodsi3+0x10>
 154:	0605c663          	bltz	a1,1c0 <__umodsi3+0x20>

00000158 <__hidden___udivsi3>:
 158:	00058613          	mv	a2,a1
 15c:	00050593          	mv	a1,a0
 160:	fff00513          	li	a0,-1
 164:	02060c63          	beqz	a2,19c <__hidden___udivsi3+0x44>
 168:	00100693          	li	a3,1
 16c:	00b67a63          	bgeu	a2,a1,180 <__hidden___udivsi3+0x28>
 170:	00c05863          	blez	a2,180 <__hidden___udivsi3+0x28>
 174:	00161613          	slli	a2,a2,0x1
 178:	00169693          	slli	a3,a3,0x1
 17c:	feb66ae3          	bltu	a2,a1,170 <__hidden___udivsi3+0x18>
 180:	00000513          	li	a0,0
 184:	00c5e663          	bltu	a1,a2,190 <__hidden___udivsi3+0x38>
 188:	40c585b3          	sub	a1,a1,a2
 18c:	00d56533          	or	a0,a0,a3
 190:	0016d693          	srli	a3,a3,0x1
 194:	00165613          	srli	a2,a2,0x1
 198:	fe0696e3          	bnez	a3,184 <__hidden___udivsi3+0x2c>
 19c:	00008067          	ret

000001a0 <__umodsi3>:
 1a0:	00008293          	mv	t0,ra
 1a4:	fb5ff0ef          	jal	158 <__hidden___udivsi3>
 1a8:	00058513          	mv	a0,a1
 1ac:	00028067          	jr	t0
 1b0:	40a00533          	neg	a0,a0
 1b4:	00b04863          	bgtz	a1,1c4 <__umodsi3+0x24>
 1b8:	40b005b3          	neg	a1,a1
 1bc:	f9dff06f          	j	158 <__hidden___udivsi3>
 1c0:	40b005b3          	neg	a1,a1
 1c4:	00008293          	mv	t0,ra
 1c8:	f91ff0ef          	jal	158 <__hidden___udivsi3>
 1cc:	40a00533          	neg	a0,a0
 1d0:	00028067          	jr	t0

000001d4 <__modsi3>:
 1d4:	00008293          	mv	t0,ra
 1d8:	0005ca63          	bltz	a1,1ec <__modsi3+0x18>
 1dc:	00054c63          	bltz	a0,1f4 <__modsi3+0x20>
 1e0:	f79ff0ef          	jal	158 <__hidden___udivsi3>
 1e4:	00058513          	mv	a0,a1
 1e8:	00028067          	jr	t0
 1ec:	40b005b3          	neg	a1,a1
 1f0:	fe0558e3          	bgez	a0,1e0 <__modsi3+0xc>
 1f4:	40a00533          	neg	a0,a0
 1f8:	f61ff0ef          	jal	158 <__hidden___udivsi3>
 1fc:	40b00533          	neg	a0,a1
 200:	00028067          	jr	t0

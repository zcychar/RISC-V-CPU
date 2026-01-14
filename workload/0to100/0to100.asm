
0to100.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fdf4>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	1ec02703          	lw	a4,492(zero) # 1ec <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	1ee02623          	sw	a4,492(zero) # 1ec <judgeResult>
  34:	1ec02783          	lw	a5,492(zero) # 1ec <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	1ee02623          	sw	a4,492(zero) # 1ec <judgeResult>
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
  78:	1ec02783          	lw	a5,492(zero) # 1ec <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	1ee02623          	sw	a4,492(zero) # 1ec <judgeResult>
  84:	1ec02783          	lw	a5,492(zero) # 1ec <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	1ee02623          	sw	a4,492(zero) # 1ec <judgeResult>
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
  d0:	fe042423          	sw	zero,-24(s0)
  d4:	0200006f          	j	f4 <main+0x38>
  d8:	fec42703          	lw	a4,-20(s0)
  dc:	fe842783          	lw	a5,-24(s0)
  e0:	00f707b3          	add	a5,a4,a5
  e4:	fef42623          	sw	a5,-20(s0)
  e8:	fe842783          	lw	a5,-24(s0)
  ec:	00178793          	addi	a5,a5,1
  f0:	fef42423          	sw	a5,-24(s0)
  f4:	fe842703          	lw	a4,-24(s0)
  f8:	06400793          	li	a5,100
  fc:	fce7dee3          	bge	a5,a4,d8 <main+0x1c>
 100:	fec42503          	lw	a0,-20(s0)
 104:	f11ff0ef          	jal	14 <printInt>
 108:	1ec02783          	lw	a5,492(zero) # 1ec <judgeResult>
 10c:	0fd00713          	li	a4,253
 110:	00070593          	mv	a1,a4
 114:	00078513          	mv	a0,a5
 118:	0a0000ef          	jal	1b8 <__modsi3>
 11c:	00050793          	mv	a5,a0
 120:	00078513          	mv	a0,a5
 124:	01c12083          	lw	ra,28(sp)
 128:	01812403          	lw	s0,24(sp)
 12c:	02010113          	addi	sp,sp,32
 130:	00008067          	ret

00000134 <__divsi3>:
 134:	06054063          	bltz	a0,194 <__umodsi3+0x10>
 138:	0605c663          	bltz	a1,1a4 <__umodsi3+0x20>

0000013c <__hidden___udivsi3>:
 13c:	00058613          	mv	a2,a1
 140:	00050593          	mv	a1,a0
 144:	fff00513          	li	a0,-1
 148:	02060c63          	beqz	a2,180 <__hidden___udivsi3+0x44>
 14c:	00100693          	li	a3,1
 150:	00b67a63          	bgeu	a2,a1,164 <__hidden___udivsi3+0x28>
 154:	00c05863          	blez	a2,164 <__hidden___udivsi3+0x28>
 158:	00161613          	slli	a2,a2,0x1
 15c:	00169693          	slli	a3,a3,0x1
 160:	feb66ae3          	bltu	a2,a1,154 <__hidden___udivsi3+0x18>
 164:	00000513          	li	a0,0
 168:	00c5e663          	bltu	a1,a2,174 <__hidden___udivsi3+0x38>
 16c:	40c585b3          	sub	a1,a1,a2
 170:	00d56533          	or	a0,a0,a3
 174:	0016d693          	srli	a3,a3,0x1
 178:	00165613          	srli	a2,a2,0x1
 17c:	fe0696e3          	bnez	a3,168 <__hidden___udivsi3+0x2c>
 180:	00008067          	ret

00000184 <__umodsi3>:
 184:	00008293          	mv	t0,ra
 188:	fb5ff0ef          	jal	13c <__hidden___udivsi3>
 18c:	00058513          	mv	a0,a1
 190:	00028067          	jr	t0
 194:	40a00533          	neg	a0,a0
 198:	00b04863          	bgtz	a1,1a8 <__umodsi3+0x24>
 19c:	40b005b3          	neg	a1,a1
 1a0:	f9dff06f          	j	13c <__hidden___udivsi3>
 1a4:	40b005b3          	neg	a1,a1
 1a8:	00008293          	mv	t0,ra
 1ac:	f91ff0ef          	jal	13c <__hidden___udivsi3>
 1b0:	40a00533          	neg	a0,a0
 1b4:	00028067          	jr	t0

000001b8 <__modsi3>:
 1b8:	00008293          	mv	t0,ra
 1bc:	0005ca63          	bltz	a1,1d0 <__modsi3+0x18>
 1c0:	00054c63          	bltz	a0,1d8 <__modsi3+0x20>
 1c4:	f79ff0ef          	jal	13c <__hidden___udivsi3>
 1c8:	00058513          	mv	a0,a1
 1cc:	00028067          	jr	t0
 1d0:	40b005b3          	neg	a1,a1
 1d4:	fe0558e3          	bgez	a0,1c4 <__modsi3+0xc>
 1d8:	40a00533          	neg	a0,a0
 1dc:	f61ff0ef          	jal	13c <__hidden___udivsi3>
 1e0:	40b00533          	neg	a0,a1
 1e4:	00028067          	jr	t0

Disassembly of section .rodata:

000001e8 <Mod>:
 1e8:	000000fd                                ....

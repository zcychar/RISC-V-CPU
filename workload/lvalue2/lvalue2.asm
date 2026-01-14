
lvalue2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fdfc>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	1e402703          	lw	a4,484(zero) # 1e4 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	1ee02223          	sw	a4,484(zero) # 1e4 <judgeResult>
  34:	1e402783          	lw	a5,484(zero) # 1e4 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	1ee02223          	sw	a4,484(zero) # 1e4 <judgeResult>
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
  78:	1e402783          	lw	a5,484(zero) # 1e4 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	1ee02223          	sw	a4,484(zero) # 1e4 <judgeResult>
  84:	1e402783          	lw	a5,484(zero) # 1e4 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	1ee02223          	sw	a4,484(zero) # 1e4 <judgeResult>
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
  cc:	00200793          	li	a5,2
  d0:	fef42223          	sw	a5,-28(s0)
  d4:	fdc40793          	addi	a5,s0,-36
  d8:	fef42623          	sw	a5,-20(s0)
  dc:	fec42783          	lw	a5,-20(s0)
  e0:	00878793          	addi	a5,a5,8
  e4:	0007a783          	lw	a5,0(a5)
  e8:	00078513          	mv	a0,a5
  ec:	f29ff0ef          	jal	14 <printInt>
  f0:	1e402783          	lw	a5,484(zero) # 1e4 <judgeResult>
  f4:	0fd00713          	li	a4,253
  f8:	00070593          	mv	a1,a4
  fc:	00078513          	mv	a0,a5
 100:	0a0000ef          	jal	1a0 <__modsi3>
 104:	00050793          	mv	a5,a0
 108:	00078513          	mv	a0,a5
 10c:	02c12083          	lw	ra,44(sp)
 110:	02812403          	lw	s0,40(sp)
 114:	03010113          	addi	sp,sp,48
 118:	00008067          	ret

0000011c <__divsi3>:
 11c:	06054063          	bltz	a0,17c <__umodsi3+0x10>
 120:	0605c663          	bltz	a1,18c <__umodsi3+0x20>

00000124 <__hidden___udivsi3>:
 124:	00058613          	mv	a2,a1
 128:	00050593          	mv	a1,a0
 12c:	fff00513          	li	a0,-1
 130:	02060c63          	beqz	a2,168 <__hidden___udivsi3+0x44>
 134:	00100693          	li	a3,1
 138:	00b67a63          	bgeu	a2,a1,14c <__hidden___udivsi3+0x28>
 13c:	00c05863          	blez	a2,14c <__hidden___udivsi3+0x28>
 140:	00161613          	slli	a2,a2,0x1
 144:	00169693          	slli	a3,a3,0x1
 148:	feb66ae3          	bltu	a2,a1,13c <__hidden___udivsi3+0x18>
 14c:	00000513          	li	a0,0
 150:	00c5e663          	bltu	a1,a2,15c <__hidden___udivsi3+0x38>
 154:	40c585b3          	sub	a1,a1,a2
 158:	00d56533          	or	a0,a0,a3
 15c:	0016d693          	srli	a3,a3,0x1
 160:	00165613          	srli	a2,a2,0x1
 164:	fe0696e3          	bnez	a3,150 <__hidden___udivsi3+0x2c>
 168:	00008067          	ret

0000016c <__umodsi3>:
 16c:	00008293          	mv	t0,ra
 170:	fb5ff0ef          	jal	124 <__hidden___udivsi3>
 174:	00058513          	mv	a0,a1
 178:	00028067          	jr	t0
 17c:	40a00533          	neg	a0,a0
 180:	00b04863          	bgtz	a1,190 <__umodsi3+0x24>
 184:	40b005b3          	neg	a1,a1
 188:	f9dff06f          	j	124 <__hidden___udivsi3>
 18c:	40b005b3          	neg	a1,a1
 190:	00008293          	mv	t0,ra
 194:	f91ff0ef          	jal	124 <__hidden___udivsi3>
 198:	40a00533          	neg	a0,a0
 19c:	00028067          	jr	t0

000001a0 <__modsi3>:
 1a0:	00008293          	mv	t0,ra
 1a4:	0005ca63          	bltz	a1,1b8 <__modsi3+0x18>
 1a8:	00054c63          	bltz	a0,1c0 <__modsi3+0x20>
 1ac:	f79ff0ef          	jal	124 <__hidden___udivsi3>
 1b0:	00058513          	mv	a0,a1
 1b4:	00028067          	jr	t0
 1b8:	40b005b3          	neg	a1,a1
 1bc:	fe0558e3          	bgez	a0,1ac <__modsi3+0xc>
 1c0:	40a00533          	neg	a0,a0
 1c4:	f61ff0ef          	jal	124 <__hidden___udivsi3>
 1c8:	40b00533          	neg	a0,a1
 1cc:	00028067          	jr	t0

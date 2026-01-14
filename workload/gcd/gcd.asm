
gcd.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	128000ef          	jal	12c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fd6c>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	27402703          	lw	a4,628(zero) # 274 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	26e02a23          	sw	a4,628(zero) # 274 <judgeResult>
  34:	27402783          	lw	a5,628(zero) # 274 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	26e02a23          	sw	a4,628(zero) # 274 <judgeResult>
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
  78:	27402783          	lw	a5,628(zero) # 274 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	26e02a23          	sw	a4,628(zero) # 274 <judgeResult>
  84:	27402783          	lw	a5,628(zero) # 274 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	26e02a23          	sw	a4,628(zero) # 274 <judgeResult>
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

000000bc <gcd>:
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00112e23          	sw	ra,28(sp)
  c4:	00812c23          	sw	s0,24(sp)
  c8:	02010413          	addi	s0,sp,32
  cc:	fea42623          	sw	a0,-20(s0)
  d0:	feb42423          	sw	a1,-24(s0)
  d4:	fec42783          	lw	a5,-20(s0)
  d8:	fe842583          	lw	a1,-24(s0)
  dc:	00078513          	mv	a0,a5
  e0:	160000ef          	jal	240 <__modsi3>
  e4:	00050793          	mv	a5,a0
  e8:	00079663          	bnez	a5,f4 <gcd+0x38>
  ec:	fe842783          	lw	a5,-24(s0)
  f0:	0280006f          	j	118 <gcd+0x5c>
  f4:	fec42783          	lw	a5,-20(s0)
  f8:	fe842583          	lw	a1,-24(s0)
  fc:	00078513          	mv	a0,a5
 100:	140000ef          	jal	240 <__modsi3>
 104:	00050793          	mv	a5,a0
 108:	00078593          	mv	a1,a5
 10c:	fe842503          	lw	a0,-24(s0)
 110:	fadff0ef          	jal	bc <gcd>
 114:	00050793          	mv	a5,a0
 118:	00078513          	mv	a0,a5
 11c:	01c12083          	lw	ra,28(sp)
 120:	01812403          	lw	s0,24(sp)
 124:	02010113          	addi	sp,sp,32
 128:	00008067          	ret

0000012c <main>:
 12c:	ff010113          	addi	sp,sp,-16
 130:	00112623          	sw	ra,12(sp)
 134:	00812423          	sw	s0,8(sp)
 138:	01010413          	addi	s0,sp,16
 13c:	00100593          	li	a1,1
 140:	00a00513          	li	a0,10
 144:	f79ff0ef          	jal	bc <gcd>
 148:	00050793          	mv	a5,a0
 14c:	00078513          	mv	a0,a5
 150:	ec5ff0ef          	jal	14 <printInt>
 154:	000017b7          	lui	a5,0x1
 158:	c0f78593          	addi	a1,a5,-1009 # c0f <judgeResult+0x99b>
 15c:	000097b7          	lui	a5,0x9
 160:	8aa78513          	addi	a0,a5,-1878 # 88aa <judgeResult+0x8636>
 164:	f59ff0ef          	jal	bc <gcd>
 168:	00050793          	mv	a5,a0
 16c:	00078513          	mv	a0,a5
 170:	ea5ff0ef          	jal	14 <printInt>
 174:	60300593          	li	a1,1539
 178:	000017b7          	lui	a5,0x1
 17c:	b5b78513          	addi	a0,a5,-1189 # b5b <judgeResult+0x8e7>
 180:	f3dff0ef          	jal	bc <gcd>
 184:	00050793          	mv	a5,a0
 188:	00078513          	mv	a0,a5
 18c:	e89ff0ef          	jal	14 <printInt>
 190:	27402783          	lw	a5,628(zero) # 274 <judgeResult>
 194:	0fd00713          	li	a4,253
 198:	00070593          	mv	a1,a4
 19c:	00078513          	mv	a0,a5
 1a0:	0a0000ef          	jal	240 <__modsi3>
 1a4:	00050793          	mv	a5,a0
 1a8:	00078513          	mv	a0,a5
 1ac:	00c12083          	lw	ra,12(sp)
 1b0:	00812403          	lw	s0,8(sp)
 1b4:	01010113          	addi	sp,sp,16
 1b8:	00008067          	ret

000001bc <__divsi3>:
 1bc:	06054063          	bltz	a0,21c <__umodsi3+0x10>
 1c0:	0605c663          	bltz	a1,22c <__umodsi3+0x20>

000001c4 <__hidden___udivsi3>:
 1c4:	00058613          	mv	a2,a1
 1c8:	00050593          	mv	a1,a0
 1cc:	fff00513          	li	a0,-1
 1d0:	02060c63          	beqz	a2,208 <__hidden___udivsi3+0x44>
 1d4:	00100693          	li	a3,1
 1d8:	00b67a63          	bgeu	a2,a1,1ec <__hidden___udivsi3+0x28>
 1dc:	00c05863          	blez	a2,1ec <__hidden___udivsi3+0x28>
 1e0:	00161613          	slli	a2,a2,0x1
 1e4:	00169693          	slli	a3,a3,0x1
 1e8:	feb66ae3          	bltu	a2,a1,1dc <__hidden___udivsi3+0x18>
 1ec:	00000513          	li	a0,0
 1f0:	00c5e663          	bltu	a1,a2,1fc <__hidden___udivsi3+0x38>
 1f4:	40c585b3          	sub	a1,a1,a2
 1f8:	00d56533          	or	a0,a0,a3
 1fc:	0016d693          	srli	a3,a3,0x1
 200:	00165613          	srli	a2,a2,0x1
 204:	fe0696e3          	bnez	a3,1f0 <__hidden___udivsi3+0x2c>
 208:	00008067          	ret

0000020c <__umodsi3>:
 20c:	00008293          	mv	t0,ra
 210:	fb5ff0ef          	jal	1c4 <__hidden___udivsi3>
 214:	00058513          	mv	a0,a1
 218:	00028067          	jr	t0
 21c:	40a00533          	neg	a0,a0
 220:	00b04863          	bgtz	a1,230 <__umodsi3+0x24>
 224:	40b005b3          	neg	a1,a1
 228:	f9dff06f          	j	1c4 <__hidden___udivsi3>
 22c:	40b005b3          	neg	a1,a1
 230:	00008293          	mv	t0,ra
 234:	f91ff0ef          	jal	1c4 <__hidden___udivsi3>
 238:	40a00533          	neg	a0,a0
 23c:	00028067          	jr	t0

00000240 <__modsi3>:
 240:	00008293          	mv	t0,ra
 244:	0005ca63          	bltz	a1,258 <__modsi3+0x18>
 248:	00054c63          	bltz	a0,260 <__modsi3+0x20>
 24c:	f79ff0ef          	jal	1c4 <__hidden___udivsi3>
 250:	00058513          	mv	a0,a1
 254:	00028067          	jr	t0
 258:	40b005b3          	neg	a1,a1
 25c:	fe0558e3          	bgez	a0,24c <__modsi3+0xc>
 260:	40a00533          	neg	a0,a0
 264:	f61ff0ef          	jal	1c4 <__hidden___udivsi3>
 268:	40b00533          	neg	a0,a1
 26c:	00028067          	jr	t0

Disassembly of section .rodata:

00000270 <Mod>:
 270:	000000fd                                ....

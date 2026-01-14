
vec_plus.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0d8000ef          	jal	dc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1efa0>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	000017b7          	lui	a5,0x1
  28:	0407a703          	lw	a4,64(a5) # 1040 <judgeResult>
  2c:	fec42783          	lw	a5,-20(s0)
  30:	00f74733          	xor	a4,a4,a5
  34:	000017b7          	lui	a5,0x1
  38:	04e7a023          	sw	a4,64(a5) # 1040 <judgeResult>
  3c:	000017b7          	lui	a5,0x1
  40:	0407a783          	lw	a5,64(a5) # 1040 <judgeResult>
  44:	0ad78713          	addi	a4,a5,173
  48:	000017b7          	lui	a5,0x1
  4c:	04e7a023          	sw	a4,64(a5) # 1040 <judgeResult>
  50:	00000013          	nop
  54:	01c12403          	lw	s0,28(sp)
  58:	02010113          	addi	sp,sp,32
  5c:	00008067          	ret

00000060 <printStr>:
  60:	fd010113          	addi	sp,sp,-48
  64:	02812623          	sw	s0,44(sp)
  68:	03010413          	addi	s0,sp,48
  6c:	fca42e23          	sw	a0,-36(s0)
  70:	fdc42783          	lw	a5,-36(s0)
  74:	fef42623          	sw	a5,-20(s0)
  78:	0440006f          	j	bc <printStr+0x5c>
  7c:	fec42783          	lw	a5,-20(s0)
  80:	0007c783          	lbu	a5,0(a5)
  84:	00078713          	mv	a4,a5
  88:	000017b7          	lui	a5,0x1
  8c:	0407a783          	lw	a5,64(a5) # 1040 <judgeResult>
  90:	00f74733          	xor	a4,a4,a5
  94:	000017b7          	lui	a5,0x1
  98:	04e7a023          	sw	a4,64(a5) # 1040 <judgeResult>
  9c:	000017b7          	lui	a5,0x1
  a0:	0407a783          	lw	a5,64(a5) # 1040 <judgeResult>
  a4:	20978713          	addi	a4,a5,521
  a8:	000017b7          	lui	a5,0x1
  ac:	04e7a023          	sw	a4,64(a5) # 1040 <judgeResult>
  b0:	fec42783          	lw	a5,-20(s0)
  b4:	00178793          	addi	a5,a5,1
  b8:	fef42623          	sw	a5,-20(s0)
  bc:	fec42783          	lw	a5,-20(s0)
  c0:	0007c783          	lbu	a5,0(a5)
  c4:	fa079ce3          	bnez	a5,7c <printStr+0x1c>
  c8:	00000013          	nop
  cc:	00000013          	nop
  d0:	02c12403          	lw	s0,44(sp)
  d4:	03010113          	addi	sp,sp,48
  d8:	00008067          	ret

000000dc <main>:
  dc:	fe010113          	addi	sp,sp,-32
  e0:	00112e23          	sw	ra,28(sp)
  e4:	00812c23          	sw	s0,24(sp)
  e8:	02010413          	addi	s0,sp,32
  ec:	fe042423          	sw	zero,-24(s0)
  f0:	fe042623          	sw	zero,-20(s0)
  f4:	0480006f          	j	13c <main+0x60>
  f8:	23000713          	li	a4,560
  fc:	fec42783          	lw	a5,-20(s0)
 100:	00279793          	slli	a5,a5,0x2
 104:	00f707b3          	add	a5,a4,a5
 108:	0007a703          	lw	a4,0(a5)
 10c:	6e000693          	li	a3,1760
 110:	fec42783          	lw	a5,-20(s0)
 114:	00279793          	slli	a5,a5,0x2
 118:	00f687b3          	add	a5,a3,a5
 11c:	0007a783          	lw	a5,0(a5)
 120:	00f707b3          	add	a5,a4,a5
 124:	fef42223          	sw	a5,-28(s0)
 128:	fe442503          	lw	a0,-28(s0)
 12c:	ee9ff0ef          	jal	14 <printInt>
 130:	fec42783          	lw	a5,-20(s0)
 134:	00178793          	addi	a5,a5,1
 138:	fef42623          	sw	a5,-20(s0)
 13c:	fec42703          	lw	a4,-20(s0)
 140:	12b00793          	li	a5,299
 144:	fae7dae3          	bge	a5,a4,f8 <main+0x1c>
 148:	000017b7          	lui	a5,0x1
 14c:	0407a783          	lw	a5,64(a5) # 1040 <judgeResult>
 150:	0fd00713          	li	a4,253
 154:	00070593          	mv	a1,a4
 158:	00078513          	mv	a0,a5
 15c:	0a0000ef          	jal	1fc <__modsi3>
 160:	00050793          	mv	a5,a0
 164:	00078513          	mv	a0,a5
 168:	01c12083          	lw	ra,28(sp)
 16c:	01812403          	lw	s0,24(sp)
 170:	02010113          	addi	sp,sp,32
 174:	00008067          	ret

00000178 <__divsi3>:
 178:	06054063          	bltz	a0,1d8 <__umodsi3+0x10>
 17c:	0605c663          	bltz	a1,1e8 <__umodsi3+0x20>

00000180 <__hidden___udivsi3>:
 180:	00058613          	mv	a2,a1
 184:	00050593          	mv	a1,a0
 188:	fff00513          	li	a0,-1
 18c:	02060c63          	beqz	a2,1c4 <__hidden___udivsi3+0x44>
 190:	00100693          	li	a3,1
 194:	00b67a63          	bgeu	a2,a1,1a8 <__hidden___udivsi3+0x28>
 198:	00c05863          	blez	a2,1a8 <__hidden___udivsi3+0x28>
 19c:	00161613          	slli	a2,a2,0x1
 1a0:	00169693          	slli	a3,a3,0x1
 1a4:	feb66ae3          	bltu	a2,a1,198 <__hidden___udivsi3+0x18>
 1a8:	00000513          	li	a0,0
 1ac:	00c5e663          	bltu	a1,a2,1b8 <__hidden___udivsi3+0x38>
 1b0:	40c585b3          	sub	a1,a1,a2
 1b4:	00d56533          	or	a0,a0,a3
 1b8:	0016d693          	srli	a3,a3,0x1
 1bc:	00165613          	srli	a2,a2,0x1
 1c0:	fe0696e3          	bnez	a3,1ac <__hidden___udivsi3+0x2c>
 1c4:	00008067          	ret

000001c8 <__umodsi3>:
 1c8:	00008293          	mv	t0,ra
 1cc:	fb5ff0ef          	jal	180 <__hidden___udivsi3>
 1d0:	00058513          	mv	a0,a1
 1d4:	00028067          	jr	t0
 1d8:	40a00533          	neg	a0,a0
 1dc:	00b04863          	bgtz	a1,1ec <__umodsi3+0x24>
 1e0:	40b005b3          	neg	a1,a1
 1e4:	f9dff06f          	j	180 <__hidden___udivsi3>
 1e8:	40b005b3          	neg	a1,a1
 1ec:	00008293          	mv	t0,ra
 1f0:	f91ff0ef          	jal	180 <__hidden___udivsi3>
 1f4:	40a00533          	neg	a0,a0
 1f8:	00028067          	jr	t0

000001fc <__modsi3>:
 1fc:	00008293          	mv	t0,ra
 200:	0005ca63          	bltz	a1,214 <__modsi3+0x18>
 204:	00054c63          	bltz	a0,21c <__modsi3+0x20>
 208:	f79ff0ef          	jal	180 <__hidden___udivsi3>
 20c:	00058513          	mv	a0,a1
 210:	00028067          	jr	t0
 214:	40b005b3          	neg	a1,a1
 218:	fe0558e3          	bgez	a0,208 <__modsi3+0xc>
 21c:	40a00533          	neg	a0,a0
 220:	f61ff0ef          	jal	180 <__hidden___udivsi3>
 224:	40b00533          	neg	a0,a1
 228:	00028067          	jr	t0


vec_multiply_zmmul.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0e8000ef          	jal	ec <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0xfb2c>
  18:	00112e23          	sw	ra,28(sp)
  1c:	00812c23          	sw	s0,24(sp)
  20:	02010413          	addi	s0,sp,32
  24:	fea42623          	sw	a0,-20(s0)
  28:	000107b7          	lui	a5,0x10
  2c:	4b47a703          	lw	a4,1204(a5) # 104b4 <judgeResult>
  30:	fec42783          	lw	a5,-20(s0)
  34:	00f74733          	xor	a4,a4,a5
  38:	000107b7          	lui	a5,0x10
  3c:	4ae7aa23          	sw	a4,1204(a5) # 104b4 <judgeResult>
  40:	000107b7          	lui	a5,0x10
  44:	4b47a783          	lw	a5,1204(a5) # 104b4 <judgeResult>
  48:	0ad78713          	addi	a4,a5,173
  4c:	000107b7          	lui	a5,0x10
  50:	4ae7aa23          	sw	a4,1204(a5) # 104b4 <judgeResult>
  54:	00000013          	nop
  58:	01c12083          	lw	ra,28(sp)
  5c:	01812403          	lw	s0,24(sp)
  60:	02010113          	addi	sp,sp,32
  64:	00008067          	ret

00000068 <printStr>:
  68:	fd010113          	addi	sp,sp,-48
  6c:	02112623          	sw	ra,44(sp)
  70:	02812423          	sw	s0,40(sp)
  74:	03010413          	addi	s0,sp,48
  78:	fca42e23          	sw	a0,-36(s0)
  7c:	fdc42783          	lw	a5,-36(s0)
  80:	fef42623          	sw	a5,-20(s0)
  84:	0440006f          	j	c8 <printStr+0x60>
  88:	fec42783          	lw	a5,-20(s0)
  8c:	0007c783          	lbu	a5,0(a5)
  90:	00078713          	mv	a4,a5
  94:	000107b7          	lui	a5,0x10
  98:	4b47a783          	lw	a5,1204(a5) # 104b4 <judgeResult>
  9c:	00f74733          	xor	a4,a4,a5
  a0:	000107b7          	lui	a5,0x10
  a4:	4ae7aa23          	sw	a4,1204(a5) # 104b4 <judgeResult>
  a8:	000107b7          	lui	a5,0x10
  ac:	4b47a783          	lw	a5,1204(a5) # 104b4 <judgeResult>
  b0:	20978713          	addi	a4,a5,521
  b4:	000107b7          	lui	a5,0x10
  b8:	4ae7aa23          	sw	a4,1204(a5) # 104b4 <judgeResult>
  bc:	fec42783          	lw	a5,-20(s0)
  c0:	00178793          	addi	a5,a5,1
  c4:	fef42623          	sw	a5,-20(s0)
  c8:	fec42783          	lw	a5,-20(s0)
  cc:	0007c783          	lbu	a5,0(a5)
  d0:	fa079ce3          	bnez	a5,88 <printStr+0x20>
  d4:	00000013          	nop
  d8:	00000013          	nop
  dc:	02c12083          	lw	ra,44(sp)
  e0:	02812403          	lw	s0,40(sp)
  e4:	03010113          	addi	sp,sp,48
  e8:	00008067          	ret

000000ec <main>:
  ec:	fe010113          	addi	sp,sp,-32
  f0:	00112e23          	sw	ra,28(sp)
  f4:	00812c23          	sw	s0,24(sp)
  f8:	02010413          	addi	s0,sp,32
  fc:	fe042623          	sw	zero,-20(s0)
 100:	0500006f          	j	150 <main+0x64>
 104:	000107b7          	lui	a5,0x10
 108:	00478713          	addi	a4,a5,4 # 10004 <input_data1>
 10c:	fec42783          	lw	a5,-20(s0)
 110:	00279793          	slli	a5,a5,0x2
 114:	00f707b3          	add	a5,a4,a5
 118:	0007a703          	lw	a4,0(a5)
 11c:	000107b7          	lui	a5,0x10
 120:	19478693          	addi	a3,a5,404 # 10194 <input_data2>
 124:	fec42783          	lw	a5,-20(s0)
 128:	00279793          	slli	a5,a5,0x2
 12c:	00f687b3          	add	a5,a3,a5
 130:	0007a783          	lw	a5,0(a5)
 134:	02f707b3          	mul	a5,a4,a5
 138:	fef42423          	sw	a5,-24(s0)
 13c:	fe842503          	lw	a0,-24(s0)
 140:	ed5ff0ef          	jal	14 <printInt>
 144:	fec42783          	lw	a5,-20(s0)
 148:	00178793          	addi	a5,a5,1
 14c:	fef42623          	sw	a5,-20(s0)
 150:	fec42703          	lw	a4,-20(s0)
 154:	06300793          	li	a5,99
 158:	fae7d6e3          	bge	a5,a4,104 <main+0x18>
 15c:	000107b7          	lui	a5,0x10
 160:	4b47a783          	lw	a5,1204(a5) # 104b4 <judgeResult>
 164:	0fd00713          	li	a4,253
 168:	00070593          	mv	a1,a4
 16c:	00078513          	mv	a0,a5
 170:	0a0000ef          	jal	210 <__modsi3>
 174:	00050793          	mv	a5,a0
 178:	00078513          	mv	a0,a5
 17c:	01c12083          	lw	ra,28(sp)
 180:	01812403          	lw	s0,24(sp)
 184:	02010113          	addi	sp,sp,32
 188:	00008067          	ret

0000018c <__divsi3>:
 18c:	06054063          	bltz	a0,1ec <__umodsi3+0x10>
 190:	0605c663          	bltz	a1,1fc <__umodsi3+0x20>

00000194 <__hidden___udivsi3>:
 194:	00058613          	mv	a2,a1
 198:	00050593          	mv	a1,a0
 19c:	fff00513          	li	a0,-1
 1a0:	02060c63          	beqz	a2,1d8 <__hidden___udivsi3+0x44>
 1a4:	00100693          	li	a3,1
 1a8:	00b67a63          	bgeu	a2,a1,1bc <__hidden___udivsi3+0x28>
 1ac:	00c05863          	blez	a2,1bc <__hidden___udivsi3+0x28>
 1b0:	00161613          	slli	a2,a2,0x1
 1b4:	00169693          	slli	a3,a3,0x1
 1b8:	feb66ae3          	bltu	a2,a1,1ac <__hidden___udivsi3+0x18>
 1bc:	00000513          	li	a0,0
 1c0:	00c5e663          	bltu	a1,a2,1cc <__hidden___udivsi3+0x38>
 1c4:	40c585b3          	sub	a1,a1,a2
 1c8:	00d56533          	or	a0,a0,a3
 1cc:	0016d693          	srli	a3,a3,0x1
 1d0:	00165613          	srli	a2,a2,0x1
 1d4:	fe0696e3          	bnez	a3,1c0 <__hidden___udivsi3+0x2c>
 1d8:	00008067          	ret

000001dc <__umodsi3>:
 1dc:	00008293          	mv	t0,ra
 1e0:	fb5ff0ef          	jal	194 <__hidden___udivsi3>
 1e4:	00058513          	mv	a0,a1
 1e8:	00028067          	jr	t0
 1ec:	40a00533          	neg	a0,a0
 1f0:	00b04863          	bgtz	a1,200 <__umodsi3+0x24>
 1f4:	40b005b3          	neg	a1,a1
 1f8:	f9dff06f          	j	194 <__hidden___udivsi3>
 1fc:	40b005b3          	neg	a1,a1
 200:	00008293          	mv	t0,ra
 204:	f91ff0ef          	jal	194 <__hidden___udivsi3>
 208:	40a00533          	neg	a0,a0
 20c:	00028067          	jr	t0

00000210 <__modsi3>:
 210:	00008293          	mv	t0,ra
 214:	0005ca63          	bltz	a1,228 <__modsi3+0x18>
 218:	00054c63          	bltz	a0,230 <__modsi3+0x20>
 21c:	f79ff0ef          	jal	194 <__hidden___udivsi3>
 220:	00058513          	mv	a0,a1
 224:	00028067          	jr	t0
 228:	40b005b3          	neg	a1,a1
 22c:	fe0558e3          	bgez	a0,21c <__modsi3+0xc>
 230:	40a00533          	neg	a0,a0
 234:	f61ff0ef          	jal	194 <__hidden___udivsi3>
 238:	40b00533          	neg	a0,a1
 23c:	00028067          	jr	t0

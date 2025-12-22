
tak.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	194000ef          	jal	198 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <printInt>:
  10:	fe010113          	add	sp,sp,-32 # 1ffe0 <judgeResult+0xffe0>
  14:	00812e23          	sw	s0,28(sp)
  18:	02010413          	add	s0,sp,32
  1c:	fea42623          	sw	a0,-20(s0)
  20:	000107b7          	lui	a5,0x10
  24:	0007a703          	lw	a4,0(a5) # 10000 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	000107b7          	lui	a5,0x10
  34:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  38:	000107b7          	lui	a5,0x10
  3c:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
  40:	0ad78713          	add	a4,a5,173
  44:	000107b7          	lui	a5,0x10
  48:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  4c:	00000013          	nop
  50:	01c12403          	lw	s0,28(sp)
  54:	02010113          	add	sp,sp,32
  58:	00008067          	ret

0000005c <printStr>:
  5c:	fd010113          	add	sp,sp,-48
  60:	02812623          	sw	s0,44(sp)
  64:	03010413          	add	s0,sp,48
  68:	fca42e23          	sw	a0,-36(s0)
  6c:	fdc42783          	lw	a5,-36(s0)
  70:	fef42623          	sw	a5,-20(s0)
  74:	0440006f          	j	b8 <printStr+0x5c>
  78:	fec42783          	lw	a5,-20(s0)
  7c:	0007c783          	lbu	a5,0(a5)
  80:	00078713          	mv	a4,a5
  84:	000107b7          	lui	a5,0x10
  88:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
  8c:	00f74733          	xor	a4,a4,a5
  90:	000107b7          	lui	a5,0x10
  94:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  98:	000107b7          	lui	a5,0x10
  9c:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
  a0:	20978713          	add	a4,a5,521
  a4:	000107b7          	lui	a5,0x10
  a8:	00e7a023          	sw	a4,0(a5) # 10000 <judgeResult>
  ac:	fec42783          	lw	a5,-20(s0)
  b0:	00178793          	add	a5,a5,1
  b4:	fef42623          	sw	a5,-20(s0)
  b8:	fec42783          	lw	a5,-20(s0)
  bc:	0007c783          	lbu	a5,0(a5)
  c0:	fa079ce3          	bnez	a5,78 <printStr+0x1c>
  c4:	00000013          	nop
  c8:	00000013          	nop
  cc:	02c12403          	lw	s0,44(sp)
  d0:	03010113          	add	sp,sp,48
  d4:	00008067          	ret

000000d8 <tak>:
  d8:	fe010113          	add	sp,sp,-32
  dc:	00112e23          	sw	ra,28(sp)
  e0:	00812c23          	sw	s0,24(sp)
  e4:	00912a23          	sw	s1,20(sp)
  e8:	01212823          	sw	s2,16(sp)
  ec:	02010413          	add	s0,sp,32
  f0:	fea42623          	sw	a0,-20(s0)
  f4:	feb42423          	sw	a1,-24(s0)
  f8:	fec42223          	sw	a2,-28(s0)
  fc:	fe842703          	lw	a4,-24(s0)
 100:	fec42783          	lw	a5,-20(s0)
 104:	06f75a63          	bge	a4,a5,178 <tak+0xa0>
 108:	fec42783          	lw	a5,-20(s0)
 10c:	fff78793          	add	a5,a5,-1
 110:	fe442603          	lw	a2,-28(s0)
 114:	fe842583          	lw	a1,-24(s0)
 118:	00078513          	mv	a0,a5
 11c:	fbdff0ef          	jal	d8 <tak>
 120:	00050493          	mv	s1,a0
 124:	fe842783          	lw	a5,-24(s0)
 128:	fff78793          	add	a5,a5,-1
 12c:	fec42603          	lw	a2,-20(s0)
 130:	fe442583          	lw	a1,-28(s0)
 134:	00078513          	mv	a0,a5
 138:	fa1ff0ef          	jal	d8 <tak>
 13c:	00050913          	mv	s2,a0
 140:	fe442783          	lw	a5,-28(s0)
 144:	fff78793          	add	a5,a5,-1
 148:	fe842603          	lw	a2,-24(s0)
 14c:	fec42583          	lw	a1,-20(s0)
 150:	00078513          	mv	a0,a5
 154:	f85ff0ef          	jal	d8 <tak>
 158:	00050793          	mv	a5,a0
 15c:	00078613          	mv	a2,a5
 160:	00090593          	mv	a1,s2
 164:	00048513          	mv	a0,s1
 168:	f71ff0ef          	jal	d8 <tak>
 16c:	00050793          	mv	a5,a0
 170:	00178793          	add	a5,a5,1
 174:	0080006f          	j	17c <tak+0xa4>
 178:	fe442783          	lw	a5,-28(s0)
 17c:	00078513          	mv	a0,a5
 180:	01c12083          	lw	ra,28(sp)
 184:	01812403          	lw	s0,24(sp)
 188:	01412483          	lw	s1,20(sp)
 18c:	01012903          	lw	s2,16(sp)
 190:	02010113          	add	sp,sp,32
 194:	00008067          	ret

00000198 <main>:
 198:	fe010113          	add	sp,sp,-32
 19c:	00112e23          	sw	ra,28(sp)
 1a0:	00812c23          	sw	s0,24(sp)
 1a4:	02010413          	add	s0,sp,32
 1a8:	01200793          	li	a5,18
 1ac:	fef42623          	sw	a5,-20(s0)
 1b0:	00c00793          	li	a5,12
 1b4:	fef42423          	sw	a5,-24(s0)
 1b8:	00600793          	li	a5,6
 1bc:	fef42223          	sw	a5,-28(s0)
 1c0:	fe442603          	lw	a2,-28(s0)
 1c4:	fe842583          	lw	a1,-24(s0)
 1c8:	fec42503          	lw	a0,-20(s0)
 1cc:	f0dff0ef          	jal	d8 <tak>
 1d0:	00050793          	mv	a5,a0
 1d4:	00078513          	mv	a0,a5
 1d8:	e39ff0ef          	jal	10 <printInt>
 1dc:	000107b7          	lui	a5,0x10
 1e0:	0007a783          	lw	a5,0(a5) # 10000 <judgeResult>
 1e4:	0fd00713          	li	a4,253
 1e8:	00070593          	mv	a1,a4
 1ec:	00078513          	mv	a0,a5
 1f0:	0a0000ef          	jal	290 <__modsi3>
 1f4:	00050793          	mv	a5,a0
 1f8:	00078513          	mv	a0,a5
 1fc:	01c12083          	lw	ra,28(sp)
 200:	01812403          	lw	s0,24(sp)
 204:	02010113          	add	sp,sp,32
 208:	00008067          	ret

0000020c <__divsi3>:
 20c:	06054063          	bltz	a0,26c <__umodsi3+0x10>
 210:	0605c663          	bltz	a1,27c <__umodsi3+0x20>

00000214 <__hidden___udivsi3>:
 214:	00058613          	mv	a2,a1
 218:	00050593          	mv	a1,a0
 21c:	fff00513          	li	a0,-1
 220:	02060c63          	beqz	a2,258 <__hidden___udivsi3+0x44>
 224:	00100693          	li	a3,1
 228:	00b67a63          	bgeu	a2,a1,23c <__hidden___udivsi3+0x28>
 22c:	00c05863          	blez	a2,23c <__hidden___udivsi3+0x28>
 230:	00161613          	sll	a2,a2,0x1
 234:	00169693          	sll	a3,a3,0x1
 238:	feb66ae3          	bltu	a2,a1,22c <__hidden___udivsi3+0x18>
 23c:	00000513          	li	a0,0
 240:	00c5e663          	bltu	a1,a2,24c <__hidden___udivsi3+0x38>
 244:	40c585b3          	sub	a1,a1,a2
 248:	00d56533          	or	a0,a0,a3
 24c:	0016d693          	srl	a3,a3,0x1
 250:	00165613          	srl	a2,a2,0x1
 254:	fe0696e3          	bnez	a3,240 <__hidden___udivsi3+0x2c>
 258:	00008067          	ret

0000025c <__umodsi3>:
 25c:	00008293          	mv	t0,ra
 260:	fb5ff0ef          	jal	214 <__hidden___udivsi3>
 264:	00058513          	mv	a0,a1
 268:	00028067          	jr	t0
 26c:	40a00533          	neg	a0,a0
 270:	00b04863          	bgtz	a1,280 <__umodsi3+0x24>
 274:	40b005b3          	neg	a1,a1
 278:	f9dff06f          	j	214 <__hidden___udivsi3>
 27c:	40b005b3          	neg	a1,a1
 280:	00008293          	mv	t0,ra
 284:	f91ff0ef          	jal	214 <__hidden___udivsi3>
 288:	40a00533          	neg	a0,a0
 28c:	00028067          	jr	t0

00000290 <__modsi3>:
 290:	00008293          	mv	t0,ra
 294:	0005ca63          	bltz	a1,2a8 <__modsi3+0x18>
 298:	00054c63          	bltz	a0,2b0 <__modsi3+0x20>
 29c:	f79ff0ef          	jal	214 <__hidden___udivsi3>
 2a0:	00058513          	mv	a0,a1
 2a4:	00028067          	jr	t0
 2a8:	40b005b3          	neg	a1,a1
 2ac:	fe0558e3          	bgez	a0,29c <__modsi3+0xc>
 2b0:	40a00533          	neg	a0,a0
 2b4:	f61ff0ef          	jal	214 <__hidden___udivsi3>
 2b8:	40b00533          	neg	a0,a1
 2bc:	00028067          	jr	t0

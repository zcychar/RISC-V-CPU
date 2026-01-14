
tak.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	178000ef          	jal	17c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fd3c>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	2a402703          	lw	a4,676(zero) # 2a4 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	2ae02223          	sw	a4,676(zero) # 2a4 <judgeResult>
  34:	2a402783          	lw	a5,676(zero) # 2a4 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	2ae02223          	sw	a4,676(zero) # 2a4 <judgeResult>
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
  78:	2a402783          	lw	a5,676(zero) # 2a4 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	2ae02223          	sw	a4,676(zero) # 2a4 <judgeResult>
  84:	2a402783          	lw	a5,676(zero) # 2a4 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	2ae02223          	sw	a4,676(zero) # 2a4 <judgeResult>
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

000000bc <tak>:
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00112e23          	sw	ra,28(sp)
  c4:	00812c23          	sw	s0,24(sp)
  c8:	00912a23          	sw	s1,20(sp)
  cc:	01212823          	sw	s2,16(sp)
  d0:	02010413          	addi	s0,sp,32
  d4:	fea42623          	sw	a0,-20(s0)
  d8:	feb42423          	sw	a1,-24(s0)
  dc:	fec42223          	sw	a2,-28(s0)
  e0:	fe842703          	lw	a4,-24(s0)
  e4:	fec42783          	lw	a5,-20(s0)
  e8:	06f75a63          	bge	a4,a5,15c <tak+0xa0>
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	fff78793          	addi	a5,a5,-1
  f4:	fe442603          	lw	a2,-28(s0)
  f8:	fe842583          	lw	a1,-24(s0)
  fc:	00078513          	mv	a0,a5
 100:	fbdff0ef          	jal	bc <tak>
 104:	00050493          	mv	s1,a0
 108:	fe842783          	lw	a5,-24(s0)
 10c:	fff78793          	addi	a5,a5,-1
 110:	fec42603          	lw	a2,-20(s0)
 114:	fe442583          	lw	a1,-28(s0)
 118:	00078513          	mv	a0,a5
 11c:	fa1ff0ef          	jal	bc <tak>
 120:	00050913          	mv	s2,a0
 124:	fe442783          	lw	a5,-28(s0)
 128:	fff78793          	addi	a5,a5,-1
 12c:	fe842603          	lw	a2,-24(s0)
 130:	fec42583          	lw	a1,-20(s0)
 134:	00078513          	mv	a0,a5
 138:	f85ff0ef          	jal	bc <tak>
 13c:	00050793          	mv	a5,a0
 140:	00078613          	mv	a2,a5
 144:	00090593          	mv	a1,s2
 148:	00048513          	mv	a0,s1
 14c:	f71ff0ef          	jal	bc <tak>
 150:	00050793          	mv	a5,a0
 154:	00178793          	addi	a5,a5,1
 158:	0080006f          	j	160 <tak+0xa4>
 15c:	fe442783          	lw	a5,-28(s0)
 160:	00078513          	mv	a0,a5
 164:	01c12083          	lw	ra,28(sp)
 168:	01812403          	lw	s0,24(sp)
 16c:	01412483          	lw	s1,20(sp)
 170:	01012903          	lw	s2,16(sp)
 174:	02010113          	addi	sp,sp,32
 178:	00008067          	ret

0000017c <main>:
 17c:	fe010113          	addi	sp,sp,-32
 180:	00112e23          	sw	ra,28(sp)
 184:	00812c23          	sw	s0,24(sp)
 188:	02010413          	addi	s0,sp,32
 18c:	01200793          	li	a5,18
 190:	fef42623          	sw	a5,-20(s0)
 194:	00c00793          	li	a5,12
 198:	fef42423          	sw	a5,-24(s0)
 19c:	00600793          	li	a5,6
 1a0:	fef42223          	sw	a5,-28(s0)
 1a4:	fe442603          	lw	a2,-28(s0)
 1a8:	fe842583          	lw	a1,-24(s0)
 1ac:	fec42503          	lw	a0,-20(s0)
 1b0:	f0dff0ef          	jal	bc <tak>
 1b4:	00050793          	mv	a5,a0
 1b8:	00078513          	mv	a0,a5
 1bc:	e59ff0ef          	jal	14 <printInt>
 1c0:	2a402783          	lw	a5,676(zero) # 2a4 <judgeResult>
 1c4:	0fd00713          	li	a4,253
 1c8:	00070593          	mv	a1,a4
 1cc:	00078513          	mv	a0,a5
 1d0:	0a0000ef          	jal	270 <__modsi3>
 1d4:	00050793          	mv	a5,a0
 1d8:	00078513          	mv	a0,a5
 1dc:	01c12083          	lw	ra,28(sp)
 1e0:	01812403          	lw	s0,24(sp)
 1e4:	02010113          	addi	sp,sp,32
 1e8:	00008067          	ret

000001ec <__divsi3>:
 1ec:	06054063          	bltz	a0,24c <__umodsi3+0x10>
 1f0:	0605c663          	bltz	a1,25c <__umodsi3+0x20>

000001f4 <__hidden___udivsi3>:
 1f4:	00058613          	mv	a2,a1
 1f8:	00050593          	mv	a1,a0
 1fc:	fff00513          	li	a0,-1
 200:	02060c63          	beqz	a2,238 <__hidden___udivsi3+0x44>
 204:	00100693          	li	a3,1
 208:	00b67a63          	bgeu	a2,a1,21c <__hidden___udivsi3+0x28>
 20c:	00c05863          	blez	a2,21c <__hidden___udivsi3+0x28>
 210:	00161613          	slli	a2,a2,0x1
 214:	00169693          	slli	a3,a3,0x1
 218:	feb66ae3          	bltu	a2,a1,20c <__hidden___udivsi3+0x18>
 21c:	00000513          	li	a0,0
 220:	00c5e663          	bltu	a1,a2,22c <__hidden___udivsi3+0x38>
 224:	40c585b3          	sub	a1,a1,a2
 228:	00d56533          	or	a0,a0,a3
 22c:	0016d693          	srli	a3,a3,0x1
 230:	00165613          	srli	a2,a2,0x1
 234:	fe0696e3          	bnez	a3,220 <__hidden___udivsi3+0x2c>
 238:	00008067          	ret

0000023c <__umodsi3>:
 23c:	00008293          	mv	t0,ra
 240:	fb5ff0ef          	jal	1f4 <__hidden___udivsi3>
 244:	00058513          	mv	a0,a1
 248:	00028067          	jr	t0
 24c:	40a00533          	neg	a0,a0
 250:	00b04863          	bgtz	a1,260 <__umodsi3+0x24>
 254:	40b005b3          	neg	a1,a1
 258:	f9dff06f          	j	1f4 <__hidden___udivsi3>
 25c:	40b005b3          	neg	a1,a1
 260:	00008293          	mv	t0,ra
 264:	f91ff0ef          	jal	1f4 <__hidden___udivsi3>
 268:	40a00533          	neg	a0,a0
 26c:	00028067          	jr	t0

00000270 <__modsi3>:
 270:	00008293          	mv	t0,ra
 274:	0005ca63          	bltz	a1,288 <__modsi3+0x18>
 278:	00054c63          	bltz	a0,290 <__modsi3+0x20>
 27c:	f79ff0ef          	jal	1f4 <__hidden___udivsi3>
 280:	00058513          	mv	a0,a1
 284:	00028067          	jr	t0
 288:	40b005b3          	neg	a1,a1
 28c:	fe0558e3          	bgez	a0,27c <__modsi3+0xc>
 290:	40a00533          	neg	a0,a0
 294:	f61ff0ef          	jal	1f4 <__hidden___udivsi3>
 298:	40b00533          	neg	a0,a1
 29c:	00028067          	jr	t0

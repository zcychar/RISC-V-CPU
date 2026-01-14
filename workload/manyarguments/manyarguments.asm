
manyarguments.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	168000ef          	jal	16c <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fd18>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	2c802703          	lw	a4,712(zero) # 2c8 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	2ce02423          	sw	a4,712(zero) # 2c8 <judgeResult>
  34:	2c802783          	lw	a5,712(zero) # 2c8 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	2ce02423          	sw	a4,712(zero) # 2c8 <judgeResult>
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
  78:	2c802783          	lw	a5,712(zero) # 2c8 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	2ce02423          	sw	a4,712(zero) # 2c8 <judgeResult>
  84:	2c802783          	lw	a5,712(zero) # 2c8 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	2ce02423          	sw	a4,712(zero) # 2c8 <judgeResult>
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

000000bc <a>:
  bc:	fd010113          	addi	sp,sp,-48
  c0:	02812623          	sw	s0,44(sp)
  c4:	03010413          	addi	s0,sp,48
  c8:	fea42623          	sw	a0,-20(s0)
  cc:	feb42423          	sw	a1,-24(s0)
  d0:	fec42223          	sw	a2,-28(s0)
  d4:	fed42023          	sw	a3,-32(s0)
  d8:	fce42e23          	sw	a4,-36(s0)
  dc:	fcf42c23          	sw	a5,-40(s0)
  e0:	fd042a23          	sw	a6,-44(s0)
  e4:	fd142823          	sw	a7,-48(s0)
  e8:	fec42703          	lw	a4,-20(s0)
  ec:	fe842783          	lw	a5,-24(s0)
  f0:	00f70733          	add	a4,a4,a5
  f4:	fe442783          	lw	a5,-28(s0)
  f8:	00f70733          	add	a4,a4,a5
  fc:	fe042783          	lw	a5,-32(s0)
 100:	00f70733          	add	a4,a4,a5
 104:	fdc42783          	lw	a5,-36(s0)
 108:	00f70733          	add	a4,a4,a5
 10c:	fd842783          	lw	a5,-40(s0)
 110:	00f70733          	add	a4,a4,a5
 114:	fd442783          	lw	a5,-44(s0)
 118:	00f70733          	add	a4,a4,a5
 11c:	fd042783          	lw	a5,-48(s0)
 120:	00f70733          	add	a4,a4,a5
 124:	00042783          	lw	a5,0(s0)
 128:	00f70733          	add	a4,a4,a5
 12c:	00442783          	lw	a5,4(s0)
 130:	00f70733          	add	a4,a4,a5
 134:	00842783          	lw	a5,8(s0)
 138:	00f70733          	add	a4,a4,a5
 13c:	00c42783          	lw	a5,12(s0)
 140:	00f70733          	add	a4,a4,a5
 144:	01042783          	lw	a5,16(s0)
 148:	00f70733          	add	a4,a4,a5
 14c:	01442783          	lw	a5,20(s0)
 150:	00f70733          	add	a4,a4,a5
 154:	01842783          	lw	a5,24(s0)
 158:	00f707b3          	add	a5,a4,a5
 15c:	00078513          	mv	a0,a5
 160:	02c12403          	lw	s0,44(sp)
 164:	03010113          	addi	sp,sp,48
 168:	00008067          	ret

0000016c <main>:
 16c:	fd010113          	addi	sp,sp,-48
 170:	02112623          	sw	ra,44(sp)
 174:	02812423          	sw	s0,40(sp)
 178:	03010413          	addi	s0,sp,48
 17c:	00f00793          	li	a5,15
 180:	00f12c23          	sw	a5,24(sp)
 184:	00e00793          	li	a5,14
 188:	00f12a23          	sw	a5,20(sp)
 18c:	00d00793          	li	a5,13
 190:	00f12823          	sw	a5,16(sp)
 194:	00c00793          	li	a5,12
 198:	00f12623          	sw	a5,12(sp)
 19c:	00b00793          	li	a5,11
 1a0:	00f12423          	sw	a5,8(sp)
 1a4:	00a00793          	li	a5,10
 1a8:	00f12223          	sw	a5,4(sp)
 1ac:	00900793          	li	a5,9
 1b0:	00f12023          	sw	a5,0(sp)
 1b4:	00800893          	li	a7,8
 1b8:	00700813          	li	a6,7
 1bc:	00600793          	li	a5,6
 1c0:	00500713          	li	a4,5
 1c4:	00400693          	li	a3,4
 1c8:	00300613          	li	a2,3
 1cc:	00200593          	li	a1,2
 1d0:	00100513          	li	a0,1
 1d4:	ee9ff0ef          	jal	bc <a>
 1d8:	00050793          	mv	a5,a0
 1dc:	00078513          	mv	a0,a5
 1e0:	e35ff0ef          	jal	14 <printInt>
 1e4:	2c802783          	lw	a5,712(zero) # 2c8 <judgeResult>
 1e8:	0fd00713          	li	a4,253
 1ec:	00070593          	mv	a1,a4
 1f0:	00078513          	mv	a0,a5
 1f4:	0a0000ef          	jal	294 <__modsi3>
 1f8:	00050793          	mv	a5,a0
 1fc:	00078513          	mv	a0,a5
 200:	02c12083          	lw	ra,44(sp)
 204:	02812403          	lw	s0,40(sp)
 208:	03010113          	addi	sp,sp,48
 20c:	00008067          	ret

00000210 <__divsi3>:
 210:	06054063          	bltz	a0,270 <__umodsi3+0x10>
 214:	0605c663          	bltz	a1,280 <__umodsi3+0x20>

00000218 <__hidden___udivsi3>:
 218:	00058613          	mv	a2,a1
 21c:	00050593          	mv	a1,a0
 220:	fff00513          	li	a0,-1
 224:	02060c63          	beqz	a2,25c <__hidden___udivsi3+0x44>
 228:	00100693          	li	a3,1
 22c:	00b67a63          	bgeu	a2,a1,240 <__hidden___udivsi3+0x28>
 230:	00c05863          	blez	a2,240 <__hidden___udivsi3+0x28>
 234:	00161613          	slli	a2,a2,0x1
 238:	00169693          	slli	a3,a3,0x1
 23c:	feb66ae3          	bltu	a2,a1,230 <__hidden___udivsi3+0x18>
 240:	00000513          	li	a0,0
 244:	00c5e663          	bltu	a1,a2,250 <__hidden___udivsi3+0x38>
 248:	40c585b3          	sub	a1,a1,a2
 24c:	00d56533          	or	a0,a0,a3
 250:	0016d693          	srli	a3,a3,0x1
 254:	00165613          	srli	a2,a2,0x1
 258:	fe0696e3          	bnez	a3,244 <__hidden___udivsi3+0x2c>
 25c:	00008067          	ret

00000260 <__umodsi3>:
 260:	00008293          	mv	t0,ra
 264:	fb5ff0ef          	jal	218 <__hidden___udivsi3>
 268:	00058513          	mv	a0,a1
 26c:	00028067          	jr	t0
 270:	40a00533          	neg	a0,a0
 274:	00b04863          	bgtz	a1,284 <__umodsi3+0x24>
 278:	40b005b3          	neg	a1,a1
 27c:	f9dff06f          	j	218 <__hidden___udivsi3>
 280:	40b005b3          	neg	a1,a1
 284:	00008293          	mv	t0,ra
 288:	f91ff0ef          	jal	218 <__hidden___udivsi3>
 28c:	40a00533          	neg	a0,a0
 290:	00028067          	jr	t0

00000294 <__modsi3>:
 294:	00008293          	mv	t0,ra
 298:	0005ca63          	bltz	a1,2ac <__modsi3+0x18>
 29c:	00054c63          	bltz	a0,2b4 <__modsi3+0x20>
 2a0:	f79ff0ef          	jal	218 <__hidden___udivsi3>
 2a4:	00058513          	mv	a0,a1
 2a8:	00028067          	jr	t0
 2ac:	40b005b3          	neg	a1,a1
 2b0:	fe0558e3          	bgez	a0,2a0 <__modsi3+0xc>
 2b4:	40a00533          	neg	a0,a0
 2b8:	f61ff0ef          	jal	218 <__hidden___udivsi3>
 2bc:	40b00533          	neg	a0,a1
 2c0:	00028067          	jr	t0

Disassembly of section .rodata:

000002c4 <Mod>:
 2c4:	000000fd                                ....

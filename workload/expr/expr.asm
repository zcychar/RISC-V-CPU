
expr.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fcb8>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	32802703          	lw	a4,808(zero) # 328 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	32e02423          	sw	a4,808(zero) # 328 <judgeResult>
  34:	32802783          	lw	a5,808(zero) # 328 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	32e02423          	sw	a4,808(zero) # 328 <judgeResult>
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
  78:	32802783          	lw	a5,808(zero) # 328 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	32e02423          	sw	a4,808(zero) # 328 <judgeResult>
  84:	32802783          	lw	a5,808(zero) # 328 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	32e02423          	sw	a4,808(zero) # 328 <judgeResult>
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
  bc:	ff010113          	addi	sp,sp,-16
  c0:	00112623          	sw	ra,12(sp)
  c4:	00812423          	sw	s0,8(sp)
  c8:	01010413          	addi	s0,sp,16
  cc:	1300006f          	j	1fc <main+0x140>
  d0:	32402703          	lw	a4,804(zero) # 324 <C>
  d4:	31c02783          	lw	a5,796(zero) # 31c <A>
  d8:	40f70733          	sub	a4,a4,a5
  dc:	31c02783          	lw	a5,796(zero) # 31c <A>
  e0:	40f70733          	sub	a4,a4,a5
  e4:	32402683          	lw	a3,804(zero) # 324 <C>
  e8:	31c02783          	lw	a5,796(zero) # 31c <A>
  ec:	40f686b3          	sub	a3,a3,a5
  f0:	31c02783          	lw	a5,796(zero) # 31c <A>
  f4:	40f686b3          	sub	a3,a3,a5
  f8:	32402603          	lw	a2,804(zero) # 324 <C>
  fc:	31c02783          	lw	a5,796(zero) # 31c <A>
 100:	40f60633          	sub	a2,a2,a5
 104:	32002783          	lw	a5,800(zero) # 320 <B>
 108:	00f607b3          	add	a5,a2,a5
 10c:	40f686b3          	sub	a3,a3,a5
 110:	32402603          	lw	a2,804(zero) # 324 <C>
 114:	31c02783          	lw	a5,796(zero) # 31c <A>
 118:	40f60633          	sub	a2,a2,a5
 11c:	31c02783          	lw	a5,796(zero) # 31c <A>
 120:	40f607b3          	sub	a5,a2,a5
 124:	00179793          	slli	a5,a5,0x1
 128:	00f687b3          	add	a5,a3,a5
 12c:	40f70733          	sub	a4,a4,a5
 130:	30e02e23          	sw	a4,796(zero) # 31c <A>
 134:	32402703          	lw	a4,804(zero) # 324 <C>
 138:	31c02783          	lw	a5,796(zero) # 31c <A>
 13c:	40f70733          	sub	a4,a4,a5
 140:	31c02783          	lw	a5,796(zero) # 31c <A>
 144:	40f70733          	sub	a4,a4,a5
 148:	32402683          	lw	a3,804(zero) # 324 <C>
 14c:	31c02783          	lw	a5,796(zero) # 31c <A>
 150:	40f686b3          	sub	a3,a3,a5
 154:	31c02783          	lw	a5,796(zero) # 31c <A>
 158:	40f686b3          	sub	a3,a3,a5
 15c:	32402603          	lw	a2,804(zero) # 324 <C>
 160:	31c02783          	lw	a5,796(zero) # 31c <A>
 164:	40f60633          	sub	a2,a2,a5
 168:	32002783          	lw	a5,800(zero) # 320 <B>
 16c:	00f607b3          	add	a5,a2,a5
 170:	40f686b3          	sub	a3,a3,a5
 174:	32402603          	lw	a2,804(zero) # 324 <C>
 178:	31c02783          	lw	a5,796(zero) # 31c <A>
 17c:	40f60633          	sub	a2,a2,a5
 180:	31c02783          	lw	a5,796(zero) # 31c <A>
 184:	40f607b3          	sub	a5,a2,a5
 188:	00179793          	slli	a5,a5,0x1
 18c:	00f687b3          	add	a5,a3,a5
 190:	40f70733          	sub	a4,a4,a5
 194:	32e02023          	sw	a4,800(zero) # 320 <B>
 198:	32402703          	lw	a4,804(zero) # 324 <C>
 19c:	31c02783          	lw	a5,796(zero) # 31c <A>
 1a0:	40f70733          	sub	a4,a4,a5
 1a4:	31c02783          	lw	a5,796(zero) # 31c <A>
 1a8:	40f70733          	sub	a4,a4,a5
 1ac:	32402683          	lw	a3,804(zero) # 324 <C>
 1b0:	31c02783          	lw	a5,796(zero) # 31c <A>
 1b4:	40f686b3          	sub	a3,a3,a5
 1b8:	31c02783          	lw	a5,796(zero) # 31c <A>
 1bc:	40f686b3          	sub	a3,a3,a5
 1c0:	32402603          	lw	a2,804(zero) # 324 <C>
 1c4:	31c02783          	lw	a5,796(zero) # 31c <A>
 1c8:	40f60633          	sub	a2,a2,a5
 1cc:	32002783          	lw	a5,800(zero) # 320 <B>
 1d0:	00f607b3          	add	a5,a2,a5
 1d4:	40f686b3          	sub	a3,a3,a5
 1d8:	32402603          	lw	a2,804(zero) # 324 <C>
 1dc:	31c02783          	lw	a5,796(zero) # 31c <A>
 1e0:	40f60633          	sub	a2,a2,a5
 1e4:	31c02783          	lw	a5,796(zero) # 31c <A>
 1e8:	40f607b3          	sub	a5,a2,a5
 1ec:	00179793          	slli	a5,a5,0x1
 1f0:	00f687b3          	add	a5,a3,a5
 1f4:	40f70733          	sub	a4,a4,a5
 1f8:	32e02223          	sw	a4,804(zero) # 324 <C>
 1fc:	32402703          	lw	a4,804(zero) # 324 <C>
 200:	200007b7          	lui	a5,0x20000
 204:	00f75863          	bge	a4,a5,214 <main+0x158>
 208:	32402703          	lw	a4,804(zero) # 324 <C>
 20c:	e00007b7          	lui	a5,0xe0000
 210:	ece7c0e3          	blt	a5,a4,d0 <main+0x14>
 214:	31c02783          	lw	a5,796(zero) # 31c <A>
 218:	00078513          	mv	a0,a5
 21c:	df9ff0ef          	jal	14 <printInt>
 220:	32002783          	lw	a5,800(zero) # 320 <B>
 224:	00078513          	mv	a0,a5
 228:	dedff0ef          	jal	14 <printInt>
 22c:	32402783          	lw	a5,804(zero) # 324 <C>
 230:	00078513          	mv	a0,a5
 234:	de1ff0ef          	jal	14 <printInt>
 238:	32802783          	lw	a5,808(zero) # 328 <judgeResult>
 23c:	0fd00713          	li	a4,253
 240:	00070593          	mv	a1,a4
 244:	00078513          	mv	a0,a5
 248:	0a0000ef          	jal	2e8 <__modsi3>
 24c:	00050793          	mv	a5,a0
 250:	00078513          	mv	a0,a5
 254:	00c12083          	lw	ra,12(sp)
 258:	00812403          	lw	s0,8(sp)
 25c:	01010113          	addi	sp,sp,16
 260:	00008067          	ret

00000264 <__divsi3>:
 264:	06054063          	bltz	a0,2c4 <__umodsi3+0x10>
 268:	0605c663          	bltz	a1,2d4 <__umodsi3+0x20>

0000026c <__hidden___udivsi3>:
 26c:	00058613          	mv	a2,a1
 270:	00050593          	mv	a1,a0
 274:	fff00513          	li	a0,-1
 278:	02060c63          	beqz	a2,2b0 <__hidden___udivsi3+0x44>
 27c:	00100693          	li	a3,1
 280:	00b67a63          	bgeu	a2,a1,294 <__hidden___udivsi3+0x28>
 284:	00c05863          	blez	a2,294 <__hidden___udivsi3+0x28>
 288:	00161613          	slli	a2,a2,0x1
 28c:	00169693          	slli	a3,a3,0x1
 290:	feb66ae3          	bltu	a2,a1,284 <__hidden___udivsi3+0x18>
 294:	00000513          	li	a0,0
 298:	00c5e663          	bltu	a1,a2,2a4 <__hidden___udivsi3+0x38>
 29c:	40c585b3          	sub	a1,a1,a2
 2a0:	00d56533          	or	a0,a0,a3
 2a4:	0016d693          	srli	a3,a3,0x1
 2a8:	00165613          	srli	a2,a2,0x1
 2ac:	fe0696e3          	bnez	a3,298 <__hidden___udivsi3+0x2c>
 2b0:	00008067          	ret

000002b4 <__umodsi3>:
 2b4:	00008293          	mv	t0,ra
 2b8:	fb5ff0ef          	jal	26c <__hidden___udivsi3>
 2bc:	00058513          	mv	a0,a1
 2c0:	00028067          	jr	t0
 2c4:	40a00533          	neg	a0,a0
 2c8:	00b04863          	bgtz	a1,2d8 <__umodsi3+0x24>
 2cc:	40b005b3          	neg	a1,a1
 2d0:	f9dff06f          	j	26c <__hidden___udivsi3>
 2d4:	40b005b3          	neg	a1,a1
 2d8:	00008293          	mv	t0,ra
 2dc:	f91ff0ef          	jal	26c <__hidden___udivsi3>
 2e0:	40a00533          	neg	a0,a0
 2e4:	00028067          	jr	t0

000002e8 <__modsi3>:
 2e8:	00008293          	mv	t0,ra
 2ec:	0005ca63          	bltz	a1,300 <__modsi3+0x18>
 2f0:	00054c63          	bltz	a0,308 <__modsi3+0x20>
 2f4:	f79ff0ef          	jal	26c <__hidden___udivsi3>
 2f8:	00058513          	mv	a0,a1
 2fc:	00028067          	jr	t0
 300:	40b005b3          	neg	a1,a1
 304:	fe0558e3          	bgez	a0,2f4 <__modsi3+0xc>
 308:	40a00533          	neg	a0,a0
 30c:	f61ff0ef          	jal	26c <__hidden___udivsi3>
 310:	40b00533          	neg	a0,a1
 314:	00028067          	jr	t0

Disassembly of section .rodata:

00000318 <Mod>:
 318:	000000fd                                ....

Disassembly of section .data:

0000031c <A>:
 31c:	00000001                                ....

00000320 <B>:
 320:	00000001                                ....

00000324 <C>:
 324:	00000001                                ....

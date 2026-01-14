
vec_div_rv32im.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0b8000ef          	jal	bc <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0x1fb40>
  18:	00812e23          	sw	s0,28(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	fea42623          	sw	a0,-20(s0)
  24:	4a002703          	lw	a4,1184(zero) # 4a0 <judgeResult>
  28:	fec42783          	lw	a5,-20(s0)
  2c:	00f74733          	xor	a4,a4,a5
  30:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
  34:	4a002783          	lw	a5,1184(zero) # 4a0 <judgeResult>
  38:	0ad78713          	addi	a4,a5,173
  3c:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
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
  78:	4a002783          	lw	a5,1184(zero) # 4a0 <judgeResult>
  7c:	00f74733          	xor	a4,a4,a5
  80:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
  84:	4a002783          	lw	a5,1184(zero) # 4a0 <judgeResult>
  88:	20978713          	addi	a4,a5,521
  8c:	4ae02023          	sw	a4,1184(zero) # 4a0 <judgeResult>
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
  d0:	0800006f          	j	150 <main+0x94>
  d4:	18000713          	li	a4,384
  d8:	fec42783          	lw	a5,-20(s0)
  dc:	00279793          	slli	a5,a5,0x2
  e0:	00f707b3          	add	a5,a4,a5
  e4:	0007a703          	lw	a4,0(a5)
  e8:	31000693          	li	a3,784
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	00279793          	slli	a5,a5,0x2
  f4:	00f687b3          	add	a5,a3,a5
  f8:	0007a783          	lw	a5,0(a5)
  fc:	02f747b3          	div	a5,a4,a5
 100:	fef42423          	sw	a5,-24(s0)
 104:	18000713          	li	a4,384
 108:	fec42783          	lw	a5,-20(s0)
 10c:	00279793          	slli	a5,a5,0x2
 110:	00f707b3          	add	a5,a4,a5
 114:	0007a703          	lw	a4,0(a5)
 118:	31000693          	li	a3,784
 11c:	fec42783          	lw	a5,-20(s0)
 120:	00279793          	slli	a5,a5,0x2
 124:	00f687b3          	add	a5,a3,a5
 128:	0007a783          	lw	a5,0(a5)
 12c:	02f767b3          	rem	a5,a4,a5
 130:	fef42223          	sw	a5,-28(s0)
 134:	fe842503          	lw	a0,-24(s0)
 138:	eddff0ef          	jal	14 <printInt>
 13c:	fe442503          	lw	a0,-28(s0)
 140:	ed5ff0ef          	jal	14 <printInt>
 144:	fec42783          	lw	a5,-20(s0)
 148:	00178793          	addi	a5,a5,1
 14c:	fef42623          	sw	a5,-20(s0)
 150:	fec42703          	lw	a4,-20(s0)
 154:	06300793          	li	a5,99
 158:	f6e7dee3          	bge	a5,a4,d4 <main+0x18>
 15c:	4a002703          	lw	a4,1184(zero) # 4a0 <judgeResult>
 160:	0fd00793          	li	a5,253
 164:	02f767b3          	rem	a5,a4,a5
 168:	00078513          	mv	a0,a5
 16c:	01c12083          	lw	ra,28(sp)
 170:	01812403          	lw	s0,24(sp)
 174:	02010113          	addi	sp,sp,32
 178:	00008067          	ret

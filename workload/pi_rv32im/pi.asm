
pi_rv32im.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0e8000ef          	jal	ec <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0xd414>
  18:	00112e23          	sw	ra,28(sp)
  1c:	00812c23          	sw	s0,24(sp)
  20:	02010413          	addi	s0,sp,32
  24:	fea42623          	sw	a0,-20(s0)
  28:	000137b7          	lui	a5,0x13
  2c:	bcc7a703          	lw	a4,-1076(a5) # 12bcc <judgeResult>
  30:	fec42783          	lw	a5,-20(s0)
  34:	00f74733          	xor	a4,a4,a5
  38:	000137b7          	lui	a5,0x13
  3c:	bce7a623          	sw	a4,-1076(a5) # 12bcc <judgeResult>
  40:	000137b7          	lui	a5,0x13
  44:	bcc7a783          	lw	a5,-1076(a5) # 12bcc <judgeResult>
  48:	0ad78713          	addi	a4,a5,173
  4c:	000137b7          	lui	a5,0x13
  50:	bce7a623          	sw	a4,-1076(a5) # 12bcc <judgeResult>
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
  94:	000137b7          	lui	a5,0x13
  98:	bcc7a783          	lw	a5,-1076(a5) # 12bcc <judgeResult>
  9c:	00f74733          	xor	a4,a4,a5
  a0:	000137b7          	lui	a5,0x13
  a4:	bce7a623          	sw	a4,-1076(a5) # 12bcc <judgeResult>
  a8:	000137b7          	lui	a5,0x13
  ac:	bcc7a783          	lw	a5,-1076(a5) # 12bcc <judgeResult>
  b0:	20978713          	addi	a4,a5,521
  b4:	000137b7          	lui	a5,0x13
  b8:	bce7a623          	sw	a4,-1076(a5) # 12bcc <judgeResult>
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
  ec:	fd010113          	addi	sp,sp,-48
  f0:	02112623          	sw	ra,44(sp)
  f4:	02812423          	sw	s0,40(sp)
  f8:	03010413          	addi	s0,sp,48
  fc:	000027b7          	lui	a5,0x2
 100:	71078793          	addi	a5,a5,1808 # 2710 <main+0x2624>
 104:	fcf42c23          	sw	a5,-40(s0)
 108:	fe042623          	sw	zero,-20(s0)
 10c:	000017b7          	lui	a5,0x1
 110:	af078793          	addi	a5,a5,-1296 # af0 <main+0xa04>
 114:	fef42423          	sw	a5,-24(s0)
 118:	fe042223          	sw	zero,-28(s0)
 11c:	fe042023          	sw	zero,-32(s0)
 120:	fc042e23          	sw	zero,-36(s0)
 124:	0400006f          	j	164 <main+0x78>
 128:	fec42783          	lw	a5,-20(s0)
 12c:	00178713          	addi	a4,a5,1
 130:	fee42623          	sw	a4,-20(s0)
 134:	fd842703          	lw	a4,-40(s0)
 138:	666666b7          	lui	a3,0x66666
 13c:	66768693          	addi	a3,a3,1639 # 66666667 <judgeResult+0x66653a9b>
 140:	02d716b3          	mulh	a3,a4,a3
 144:	4016d693          	srai	a3,a3,0x1
 148:	41f75713          	srai	a4,a4,0x1f
 14c:	40e68733          	sub	a4,a3,a4
 150:	000106b7          	lui	a3,0x10
 154:	00868693          	addi	a3,a3,8 # 10008 <f>
 158:	00279793          	slli	a5,a5,0x2
 15c:	00f687b3          	add	a5,a3,a5
 160:	00e7a023          	sw	a4,0(a5)
 164:	fec42703          	lw	a4,-20(s0)
 168:	fe842783          	lw	a5,-24(s0)
 16c:	faf71ee3          	bne	a4,a5,128 <main+0x3c>
 170:	fe042223          	sw	zero,-28(s0)
 174:	fe842783          	lw	a5,-24(s0)
 178:	00179793          	slli	a5,a5,0x1
 17c:	fcf42e23          	sw	a5,-36(s0)
 180:	fdc42783          	lw	a5,-36(s0)
 184:	0e078463          	beqz	a5,26c <main+0x180>
 188:	fe842783          	lw	a5,-24(s0)
 18c:	fef42623          	sw	a5,-20(s0)
 190:	000107b7          	lui	a5,0x10
 194:	00878713          	addi	a4,a5,8 # 10008 <f>
 198:	fec42783          	lw	a5,-20(s0)
 19c:	00279793          	slli	a5,a5,0x2
 1a0:	00f707b3          	add	a5,a4,a5
 1a4:	0007a703          	lw	a4,0(a5)
 1a8:	fd842783          	lw	a5,-40(s0)
 1ac:	02f707b3          	mul	a5,a4,a5
 1b0:	fe442703          	lw	a4,-28(s0)
 1b4:	00f707b3          	add	a5,a4,a5
 1b8:	fef42223          	sw	a5,-28(s0)
 1bc:	fdc42783          	lw	a5,-36(s0)
 1c0:	fff78793          	addi	a5,a5,-1
 1c4:	fcf42e23          	sw	a5,-36(s0)
 1c8:	fe442703          	lw	a4,-28(s0)
 1cc:	fdc42783          	lw	a5,-36(s0)
 1d0:	02f76733          	rem	a4,a4,a5
 1d4:	000107b7          	lui	a5,0x10
 1d8:	00878693          	addi	a3,a5,8 # 10008 <f>
 1dc:	fec42783          	lw	a5,-20(s0)
 1e0:	00279793          	slli	a5,a5,0x2
 1e4:	00f687b3          	add	a5,a3,a5
 1e8:	00e7a023          	sw	a4,0(a5)
 1ec:	fdc42783          	lw	a5,-36(s0)
 1f0:	fff78713          	addi	a4,a5,-1
 1f4:	fce42e23          	sw	a4,-36(s0)
 1f8:	fe442703          	lw	a4,-28(s0)
 1fc:	02f747b3          	div	a5,a4,a5
 200:	fef42223          	sw	a5,-28(s0)
 204:	fec42783          	lw	a5,-20(s0)
 208:	fff78793          	addi	a5,a5,-1
 20c:	fef42623          	sw	a5,-20(s0)
 210:	fec42783          	lw	a5,-20(s0)
 214:	00078c63          	beqz	a5,22c <main+0x140>
 218:	fe442703          	lw	a4,-28(s0)
 21c:	fec42783          	lw	a5,-20(s0)
 220:	02f707b3          	mul	a5,a4,a5
 224:	fef42223          	sw	a5,-28(s0)
 228:	f69ff06f          	j	190 <main+0xa4>
 22c:	00000013          	nop
 230:	fe842783          	lw	a5,-24(s0)
 234:	ff278793          	addi	a5,a5,-14
 238:	fef42423          	sw	a5,-24(s0)
 23c:	fe442703          	lw	a4,-28(s0)
 240:	fd842783          	lw	a5,-40(s0)
 244:	02f74733          	div	a4,a4,a5
 248:	fe042783          	lw	a5,-32(s0)
 24c:	00f707b3          	add	a5,a4,a5
 250:	00078513          	mv	a0,a5
 254:	dc1ff0ef          	jal	14 <printInt>
 258:	fe442703          	lw	a4,-28(s0)
 25c:	fd842783          	lw	a5,-40(s0)
 260:	02f767b3          	rem	a5,a4,a5
 264:	fef42023          	sw	a5,-32(s0)
 268:	f09ff06f          	j	170 <main+0x84>
 26c:	00000013          	nop
 270:	000107b7          	lui	a5,0x10
 274:	00078513          	mv	a0,a5
 278:	df1ff0ef          	jal	68 <printStr>
 27c:	000137b7          	lui	a5,0x13
 280:	bcc7a703          	lw	a4,-1076(a5) # 12bcc <judgeResult>
 284:	0fd00793          	li	a5,253
 288:	02f767b3          	rem	a5,a4,a5
 28c:	00078513          	mv	a0,a5
 290:	02c12083          	lw	ra,44(sp)
 294:	02812403          	lw	s0,40(sp)
 298:	03010113          	addi	sp,sp,48
 29c:	00008067          	ret

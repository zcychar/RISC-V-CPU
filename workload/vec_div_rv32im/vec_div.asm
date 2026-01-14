
vec_div_rv32im.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	0e8000ef          	jal	ec <main>
   8:	0ff57513          	zext.b	a0,a0
   c:	00100073          	ebreak

00000010 <loop>:
  10:	0000006f          	j	10 <loop>

00000014 <printInt>:
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <judgeResult+0xfcbc>
  18:	00112e23          	sw	ra,28(sp)
  1c:	00812c23          	sw	s0,24(sp)
  20:	02010413          	addi	s0,sp,32
  24:	fea42623          	sw	a0,-20(s0)
  28:	000107b7          	lui	a5,0x10
  2c:	3247a703          	lw	a4,804(a5) # 10324 <judgeResult>
  30:	fec42783          	lw	a5,-20(s0)
  34:	00f74733          	xor	a4,a4,a5
  38:	000107b7          	lui	a5,0x10
  3c:	32e7a223          	sw	a4,804(a5) # 10324 <judgeResult>
  40:	000107b7          	lui	a5,0x10
  44:	3247a783          	lw	a5,804(a5) # 10324 <judgeResult>
  48:	0ad78713          	addi	a4,a5,173
  4c:	000107b7          	lui	a5,0x10
  50:	32e7a223          	sw	a4,804(a5) # 10324 <judgeResult>
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
  98:	3247a783          	lw	a5,804(a5) # 10324 <judgeResult>
  9c:	00f74733          	xor	a4,a4,a5
  a0:	000107b7          	lui	a5,0x10
  a4:	32e7a223          	sw	a4,804(a5) # 10324 <judgeResult>
  a8:	000107b7          	lui	a5,0x10
  ac:	3247a783          	lw	a5,804(a5) # 10324 <judgeResult>
  b0:	20978713          	addi	a4,a5,521
  b4:	000107b7          	lui	a5,0x10
  b8:	32e7a223          	sw	a4,804(a5) # 10324 <judgeResult>
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
 100:	0900006f          	j	190 <main+0xa4>
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
 134:	02f747b3          	div	a5,a4,a5
 138:	fef42423          	sw	a5,-24(s0)
 13c:	000107b7          	lui	a5,0x10
 140:	00478713          	addi	a4,a5,4 # 10004 <input_data1>
 144:	fec42783          	lw	a5,-20(s0)
 148:	00279793          	slli	a5,a5,0x2
 14c:	00f707b3          	add	a5,a4,a5
 150:	0007a703          	lw	a4,0(a5)
 154:	000107b7          	lui	a5,0x10
 158:	19478693          	addi	a3,a5,404 # 10194 <input_data2>
 15c:	fec42783          	lw	a5,-20(s0)
 160:	00279793          	slli	a5,a5,0x2
 164:	00f687b3          	add	a5,a3,a5
 168:	0007a783          	lw	a5,0(a5)
 16c:	02f767b3          	rem	a5,a4,a5
 170:	fef42223          	sw	a5,-28(s0)
 174:	fe842503          	lw	a0,-24(s0)
 178:	e9dff0ef          	jal	14 <printInt>
 17c:	fe442503          	lw	a0,-28(s0)
 180:	e95ff0ef          	jal	14 <printInt>
 184:	fec42783          	lw	a5,-20(s0)
 188:	00178793          	addi	a5,a5,1
 18c:	fef42623          	sw	a5,-20(s0)
 190:	fec42703          	lw	a4,-20(s0)
 194:	06300793          	li	a5,99
 198:	f6e7d6e3          	bge	a5,a4,104 <main+0x18>
 19c:	000107b7          	lui	a5,0x10
 1a0:	3247a703          	lw	a4,804(a5) # 10324 <judgeResult>
 1a4:	0fd00793          	li	a5,253
 1a8:	02f767b3          	rem	a5,a4,a5
 1ac:	00078513          	mv	a0,a5
 1b0:	01c12083          	lw	ra,28(sp)
 1b4:	01812403          	lw	s0,24(sp)
 1b8:	02010113          	addi	sp,sp,32
 1bc:	00008067          	ret

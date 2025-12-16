
multiply.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <multiply>:
   0:	fd010113          	addi	sp,sp,-48
   4:	02112623          	sw	ra,44(sp)
   8:	02812423          	sw	s0,40(sp)
   c:	03010413          	addi	s0,sp,48
  10:	fca42e23          	sw	a0,-36(s0)
  14:	fcb42c23          	sw	a1,-40(s0)
  18:	fe042423          	sw	zero,-24(s0)
  1c:	fe042623          	sw	zero,-20(s0)
  20:	0440006f          	j	64 <multiply+0x64>
  24:	fdc42783          	lw	a5,-36(s0)
  28:	0017f793          	andi	a5,a5,1
  2c:	00078a63          	beqz	a5,40 <multiply+0x40>
  30:	fe842703          	lw	a4,-24(s0)
  34:	fd842783          	lw	a5,-40(s0)
  38:	00f707b3          	add	a5,a4,a5
  3c:	fef42423          	sw	a5,-24(s0)
  40:	fdc42783          	lw	a5,-36(s0)
  44:	4017d793          	srai	a5,a5,0x1
  48:	fcf42e23          	sw	a5,-36(s0)
  4c:	fd842783          	lw	a5,-40(s0)
  50:	00179793          	slli	a5,a5,0x1
  54:	fcf42c23          	sw	a5,-40(s0)
  58:	fec42783          	lw	a5,-20(s0)
  5c:	00178793          	addi	a5,a5,1
  60:	fef42623          	sw	a5,-20(s0)
  64:	fec42703          	lw	a4,-20(s0)
  68:	01f00793          	li	a5,31
  6c:	fae7dce3          	bge	a5,a4,24 <multiply+0x24>
  70:	fe842783          	lw	a5,-24(s0)
  74:	00078513          	mv	a0,a5
  78:	02c12083          	lw	ra,44(sp)
  7c:	02812403          	lw	s0,40(sp)
  80:	03010113          	addi	sp,sp,48
  84:	00008067          	ret

00000088 <main>:
  88:	fe010113          	addi	sp,sp,-32
  8c:	00112e23          	sw	ra,28(sp)
  90:	00812c23          	sw	s0,24(sp)
  94:	02010413          	addi	s0,sp,32
  98:	fe042423          	sw	zero,-24(s0)
  9c:	fe042623          	sw	zero,-20(s0)
  a0:	07c0006f          	j	11c <main+0x94>
  a4:	000107b7          	lui	a5,0x10
  a8:	00078713          	mv	a4,a5
  ac:	fec42783          	lw	a5,-20(s0)
  b0:	00279793          	slli	a5,a5,0x2
  b4:	00f707b3          	add	a5,a4,a5
  b8:	0007a683          	lw	a3,0(a5) # 10000 <input_data1>
  bc:	000107b7          	lui	a5,0x10
  c0:	19078713          	addi	a4,a5,400 # 10190 <input_data2>
  c4:	fec42783          	lw	a5,-20(s0)
  c8:	00279793          	slli	a5,a5,0x2
  cc:	00f707b3          	add	a5,a4,a5
  d0:	0007a783          	lw	a5,0(a5)
  d4:	00078593          	mv	a1,a5
  d8:	00068513          	mv	a0,a3
  dc:	f25ff0ef          	jal	0 <multiply>
  e0:	fea42223          	sw	a0,-28(s0)
  e4:	000107b7          	lui	a5,0x10
  e8:	32078713          	addi	a4,a5,800 # 10320 <verify_data>
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	00279793          	slli	a5,a5,0x2
  f4:	00f707b3          	add	a5,a4,a5
  f8:	0007a783          	lw	a5,0(a5)
  fc:	fe442703          	lw	a4,-28(s0)
 100:	00f70863          	beq	a4,a5,110 <main+0x88>
 104:	fe842783          	lw	a5,-24(s0)
 108:	00178793          	addi	a5,a5,1
 10c:	fef42423          	sw	a5,-24(s0)
 110:	fec42783          	lw	a5,-20(s0)
 114:	00178793          	addi	a5,a5,1
 118:	fef42623          	sw	a5,-20(s0)
 11c:	fec42703          	lw	a4,-20(s0)
 120:	06300793          	li	a5,99
 124:	f8e7d0e3          	bge	a5,a4,a4 <main+0x1c>
 128:	fe842783          	lw	a5,-24(s0)
 12c:	00079663          	bnez	a5,138 <main+0xb0>
 130:	00000073          	ecall
 134:	0080006f          	j	13c <main+0xb4>
 138:	00100073          	ebreak
 13c:	fe842783          	lw	a5,-24(s0)
 140:	00078513          	mv	a0,a5
 144:	01c12083          	lw	ra,28(sp)
 148:	01812403          	lw	s0,24(sp)
 14c:	02010113          	addi	sp,sp,32
 150:	00008067          	ret

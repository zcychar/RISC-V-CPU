
plus.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	fe010113          	addi	sp,sp,-32
   4:	00112e23          	sw	ra,28(sp)
   8:	00812c23          	sw	s0,24(sp)
   c:	02010413          	addi	s0,sp,32
  10:	fe042423          	sw	zero,-24(s0)
  14:	fe042623          	sw	zero,-20(s0)
  18:	0740006f          	j	8c <main+0x8c>
  1c:	000107b7          	lui	a5,0x10
  20:	00078713          	mv	a4,a5
  24:	fec42783          	lw	a5,-20(s0)
  28:	00279793          	slli	a5,a5,0x2
  2c:	00f707b3          	add	a5,a4,a5
  30:	0007a703          	lw	a4,0(a5) # 10000 <input1_data>
  34:	000107b7          	lui	a5,0x10
  38:	4b078693          	addi	a3,a5,1200 # 104b0 <input2_data>
  3c:	fec42783          	lw	a5,-20(s0)
  40:	00279793          	slli	a5,a5,0x2
  44:	00f687b3          	add	a5,a3,a5
  48:	0007a783          	lw	a5,0(a5)
  4c:	00f707b3          	add	a5,a4,a5
  50:	fef42223          	sw	a5,-28(s0)
  54:	000117b7          	lui	a5,0x11
  58:	96078713          	addi	a4,a5,-1696 # 10960 <verify_data>
  5c:	fec42783          	lw	a5,-20(s0)
  60:	00279793          	slli	a5,a5,0x2
  64:	00f707b3          	add	a5,a4,a5
  68:	0007a783          	lw	a5,0(a5)
  6c:	fe442703          	lw	a4,-28(s0)
  70:	00f70863          	beq	a4,a5,80 <main+0x80>
  74:	fe842783          	lw	a5,-24(s0)
  78:	00178793          	addi	a5,a5,1
  7c:	fef42423          	sw	a5,-24(s0)
  80:	fec42783          	lw	a5,-20(s0)
  84:	00178793          	addi	a5,a5,1
  88:	fef42623          	sw	a5,-20(s0)
  8c:	fec42703          	lw	a4,-20(s0)
  90:	12b00793          	li	a5,299
  94:	f8e7d4e3          	bge	a5,a4,1c <main+0x1c>
  98:	fe842783          	lw	a5,-24(s0)
  9c:	00079663          	bnez	a5,a8 <main+0xa8>
  a0:	00000073          	ecall
  a4:	0080006f          	j	ac <main+0xac>
  a8:	00100073          	ebreak
  ac:	fe842783          	lw	a5,-24(s0)
  b0:	00078513          	mv	a0,a5
  b4:	01c12083          	lw	ra,28(sp)
  b8:	01812403          	lw	s0,24(sp)
  bc:	02010113          	addi	sp,sp,32
  c0:	00008067          	ret

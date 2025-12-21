
simple_add.elf：     文件格式 elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00020137          	lui	sp,0x20
   4:	00c000ef          	jal	10 <main>
   8:	00100073          	ebreak

0000000c <loop>:
   c:	0000006f          	j	c <loop>

00000010 <main>:
  10:	fe010113          	addi	sp,sp,-32 # 1ffe0 <main+0x1ffd0>
  14:	00112e23          	sw	ra,28(sp)
  18:	00812c23          	sw	s0,24(sp)
  1c:	02010413          	addi	s0,sp,32
  20:	00100793          	li	a5,1
  24:	fef42623          	sw	a5,-20(s0)
  28:	00200793          	li	a5,2
  2c:	fef42423          	sw	a5,-24(s0)
  30:	fec42703          	lw	a4,-20(s0)
  34:	fe842783          	lw	a5,-24(s0)
  38:	00f707b3          	add	a5,a4,a5
  3c:	00078513          	mv	a0,a5
  40:	01c12083          	lw	ra,28(sp)
  44:	01812403          	lw	s0,24(sp)
  48:	02010113          	addi	sp,sp,32
  4c:	00008067          	ret

	.file	"einkfirm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.spi_write_byte,"ax",@progbits
	.align	2
	.globl	spi_write_byte
	.type	spi_write_byte, @function
spi_write_byte:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	li	a5,65536
	addi	a5,a5,2
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	spi_write_byte, .-spi_write_byte
	.section	.text.spi_write_short,"ax",@progbits
	.align	2
	.globl	spi_write_short
	.type	spi_write_short, @function
spi_write_short:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,65536
	addi	a5,a5,2
	andi	a4,a4,0xff
	sb	a4,0(a5)
	li	a5,65536
	addi	a5,a5,2
	lhu	a4,-18(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	spi_write_short, .-spi_write_short
	.globl	FONT
	.section	.rodata.FONT,"a"
	.align	2
	.type	FONT, @object
	.size	FONT, 8960
FONT:
	.zero	1120
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.zero	105
	.base64	"AAABAAA="
	.base64	"AAEBAQE="
	.base64	"AQABAAA="
	.base64	"AAEBAQA="
	.base64	"AAABAAE="
	.base64	"AQEBAQA="
	.base64	"AAABAAA="
	.base64	"AQEAAAA="
	.base64	"AQEAAAE="
	.base64	"AAAAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AQAAAQE="
	.base64	"AAAAAQE="
	.zero	210
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQEBAQE="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAAAAAE="
	.base64	"AAAAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AQAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAQE="
	.base64	"AQABAAE="
	.base64	"AQEAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAABAAA="
	.base64	"AAEBAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAEBAQA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AAAAAAE="
	.base64	"AAAAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AQEBAQE="
	.base64	"AQEBAQA="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AQEBAQA="
	.base64	"AAAAAQA="
	.base64	"AAABAQA="
	.base64	"AAEAAQA="
	.base64	"AQAAAQA="
	.base64	"AQEBAQE="
	.base64	"AAAAAQA="
	.base64	"AAAAAQA="
	.base64	"AQEBAQE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQA="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AQEBAQA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQEBAQE="
	.base64	"AAAAAAE="
	.base64	"AAAAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AAEBAQA="
	.zero	105
	.base64	"AAAAAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAAAAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAAAAAA="
	.zero	105
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQEBAQE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQE="
	.base64	"AQEBAQE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAA="
	.base64	"AQABAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAEBAQA="
	.base64	"AAABAQE="
	.base64	"AAAAAQA="
	.base64	"AAAAAQA="
	.base64	"AAAAAQA="
	.base64	"AQAAAQA="
	.base64	"AQAAAQA="
	.base64	"AAEBAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAQA="
	.base64	"AQABAAA="
	.base64	"AQEAAAA="
	.base64	"AQABAAA="
	.base64	"AQAAAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQE="
	.base64	"AQAAAAE="
	.base64	"AQEAAQE="
	.base64	"AQABAAE="
	.base64	"AQABAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEAAAE="
	.base64	"AQABAAE="
	.base64	"AQAAAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQABAAE="
	.base64	"AQAAAQA="
	.base64	"AAEBAAE="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQABAAA="
	.base64	"AQAAAQA="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AAEBAQA="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQEBAQE="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEAAQA="
	.base64	"AAABAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQABAAE="
	.base64	"AQABAAE="
	.base64	"AQABAAE="
	.base64	"AAEAAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEAAQA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AQEBAQE="
	.base64	"AAAAAAE="
	.base64	"AAAAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQE="
	.zero	210
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQA="
	.base64	"AAAAAAE="
	.base64	"AAEBAQE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AAEBAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQEBAQE="
	.base64	"AQAAAAA="
	.base64	"AAEBAQA="
	.base64	"AAABAQE="
	.base64	"AAEAAAA="
	.base64	"AQEBAQA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AAAAAAE="
	.base64	"AAEBAQA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAABAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAEBAQA="
	.base64	"AAAAAQA="
	.base64	"AAAAAAA="
	.base64	"AAAAAQA="
	.base64	"AAAAAQA="
	.base64	"AAAAAQA="
	.base64	"AQAAAQA="
	.base64	"AAEBAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAQA="
	.base64	"AQABAAA="
	.base64	"AQEAAAA="
	.base64	"AQABAAA="
	.base64	"AQAAAQA="
	.base64	"AAEBAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAABAAA="
	.base64	"AAEBAQA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQEAAQA="
	.base64	"AQABAAE="
	.base64	"AQABAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAAAAAA="
	.base64	"AQEBAQA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQEBAQA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AAAAAAE="
	.base64	"AAAAAAE="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQABAQA="
	.base64	"AQEAAAE="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AQAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AAEBAQE="
	.base64	"AQAAAAA="
	.base64	"AAEBAQA="
	.base64	"AAAAAAE="
	.base64	"AQEBAQA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AQEBAAA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAA="
	.base64	"AAEAAAE="
	.base64	"AAABAQA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEAAQA="
	.base64	"AAABAAA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQABAAE="
	.base64	"AQABAAE="
	.base64	"AAEAAQA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQAAAAE="
	.base64	"AAEAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAQA="
	.base64	"AQAAAAE="
	.base64	"AAAAAAA="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AQAAAAE="
	.base64	"AAEBAQE="
	.base64	"AAAAAAE="
	.base64	"AAEBAQA="
	.base64	"AAAAAAA="
	.base64	"AAAAAAA="
	.base64	"AQEBAQE="
	.base64	"AAAAAQA="
	.base64	"AAABAAA="
	.base64	"AAEAAAA="
	.base64	"AQEBAQE="
	.zero	4655
	.section	.text.set_pixel,"ax",@progbits
	.align	2
	.globl	set_pixel
	.type	set_pixel, @function
set_pixel:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	li	a0,0
	call	spi_write_byte
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	spi_write_short
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	spi_write_short
	lbu	a5,-25(s0)
	mv	a0,a5
	call	spi_write_byte
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	set_pixel, .-set_pixel
	.section	.text.clear_screen,"ax",@progbits
	.align	2
	.globl	clear_screen
	.type	clear_screen, @function
clear_screen:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a0,1
	call	spi_write_byte
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	clear_screen, .-clear_screen
	.section	.text.draw_char,"ax",@progbits
	.align	2
	.globl	draw_char
	.type	draw_char, @function
draw_char:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	mv	a5,a2
	sw	a3,-48(s0)
	sb	a5,-41(s0)
	sw	zero,-20(s0)
	j	.L9
.L17:
	sw	zero,-24(s0)
	j	.L10
.L16:
	lbu	a3,-41(s0)
	lui	a5,%hi(FONT)
	addi	a2,a5,%lo(FONT)
	lw	a5,-20(s0)
	mv	a4,a5
	slli	a4,a4,2
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,3
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a5,a3
	add	a5,a4,a5
	add	a4,a2,a5
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L11
	sb	zero,-25(s0)
	j	.L12
.L15:
	sb	zero,-26(s0)
	j	.L13
.L14:
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	mul	a4,a4,a5
	lw	a5,-36(s0)
	add	a4,a4,a5
	lbu	a5,-25(s0)
	add	a3,a4,a5
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	mul	a4,a4,a5
	lw	a5,-40(s0)
	add	a4,a4,a5
	lbu	a5,-26(s0)
	add	a5,a4,a5
	li	a2,1
	mv	a1,a5
	mv	a0,a3
	call	set_pixel
	lbu	a5,-26(s0)
	addi	a5,a5,1
	sb	a5,-26(s0)
.L13:
	lbu	a5,-26(s0)
	lw	a4,-48(s0)
	bgtu	a4,a5,.L14
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L12:
	lbu	a5,-25(s0)
	lw	a4,-48(s0)
	bgtu	a4,a5,.L15
.L11:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L10:
	lw	a4,-24(s0)
	li	a5,4
	bleu	a4,a5,.L16
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a4,-20(s0)
	li	a5,6
	bleu	a4,a5,.L17
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	draw_char, .-draw_char
	.section	.text.draw_text,"ax",@progbits
	.align	2
	.globl	draw_text
	.type	draw_text, @function
draw_text:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	j	.L20
.L21:
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	lw	a3,-48(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	draw_char
	lw	a4,-48(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L21
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	draw_text, .-draw_text
	.section	.text.QrTinyBufferAppend,"ax",@progbits
	.align	2
	.type	QrTinyBufferAppend, @function
QrTinyBufferAppend:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	zero,-20(s0)
	j	.L23
.L26:
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	srli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	not	a5,a5
	andi	a5,a5,7
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	li	a4,1
	sll	a5,a4,a5
	sw	a5,-32(s0)
	lw	a4,-64(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	li	a4,1
	sll	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	lw	a5,-32(s0)
	slli	a5,a5,24
	srai	a5,a5,24
	not	a5,a5
	slli	a5,a5,24
	srai	a5,a5,24
	and	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	lw	a3,-36(s0)
	lw	a5,-60(s0)
	and	a5,a3,a5
	beq	a5,zero,.L24
	lw	a5,-32(s0)
	slli	a5,a5,24
	srai	a5,a5,24
	j	.L25
.L24:
	li	a5,0
.L25:
	or	a5,a5,a4
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L23:
	lw	a4,-20(s0)
	lw	a5,-64(s0)
	bltu	a4,a5,.L26
	lw	a5,-64(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	QrTinyBufferAppend, .-QrTinyBufferAppend
	.section	.text.QrTinyWriteNumeric,"ax",@progbits
	.align	2
	.globl	QrTinyWriteNumeric
	.type	QrTinyWriteNumeric, @function
QrTinyWriteNumeric:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a0,-60(s0)
	call	strlen
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a3,4
	li	a2,1
	mv	a1,a5
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a3,10
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L29
.L33:
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	li	a4,3
	bleu	a5,a4,.L30
	li	a5,3
.L30:
	sw	a5,-40(s0)
	lw	a4,-60(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sw	a5,-28(s0)
	li	a5,4
	sw	a5,-32(s0)
	lw	a4,-40(s0)
	li	a5,1
	bleu	a4,a5,.L31
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	add	a5,a3,a5
	addi	a5,a5,-48
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	addi	a5,a5,3
	sw	a5,-32(s0)
.L31:
	lw	a4,-40(s0)
	li	a5,2
	bleu	a4,a5,.L32
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	lw	a5,-24(s0)
	addi	a5,a5,2
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	add	a5,a3,a5
	addi	a5,a5,-48
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	addi	a5,a5,3
	sw	a5,-32(s0)
.L32:
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	lw	a3,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L29:
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L33
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	QrTinyWriteNumeric, .-QrTinyWriteNumeric
	.section	.text.QrTinyWriteAlphanumeric,"ax",@progbits
	.align	2
	.globl	QrTinyWriteAlphanumeric
	.type	QrTinyWriteAlphanumeric, @function
QrTinyWriteAlphanumeric:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a0,-60(s0)
	call	strlen
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a3,4
	li	a2,2
	mv	a1,a5
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a3,9
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L36
.L43:
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	li	a4,2
	bleu	a5,a4,.L37
	li	a5,2
.L37:
	sw	a5,-40(s0)
	lw	a4,-60(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	lui	a5,%hi(symbols.0)
	lw	a3,%lo(symbols.0)(a5)
	lbu	a4,-41(s0)
	li	a5,96
	bleu	a4,a5,.L38
	lbu	a4,-41(s0)
	li	a5,122
	bgtu	a4,a5,.L38
	lbu	a5,-41(s0)
	addi	a5,a5,-32
	j	.L39
.L38:
	lbu	a5,-41(s0)
.L39:
	mv	a1,a5
	mv	a0,a3
	call	strchr
	mv	a4,a0
	lui	a5,%hi(symbols.0)
	lw	a5,%lo(symbols.0)(a5)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	li	a5,6
	sw	a5,-32(s0)
	lw	a4,-40(s0)
	li	a5,1
	bleu	a4,a5,.L40
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a4,a5,4
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lui	a5,%hi(symbols.0)
	lw	a3,%lo(symbols.0)(a5)
	lbu	a4,-41(s0)
	li	a5,96
	bleu	a4,a5,.L41
	lbu	a4,-41(s0)
	li	a5,122
	bgtu	a4,a5,.L41
	lbu	a5,-41(s0)
	addi	a5,a5,-32
	j	.L42
.L41:
	lbu	a5,-41(s0)
.L42:
	mv	a1,a5
	mv	a0,a3
	call	strchr
	mv	a4,a0
	lui	a5,%hi(symbols.0)
	lw	a5,%lo(symbols.0)(a5)
	sub	a5,a4,a5
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	addi	a5,a5,5
	sw	a5,-32(s0)
.L40:
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	lw	a3,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L36:
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L43
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	QrTinyWriteAlphanumeric, .-QrTinyWriteAlphanumeric
	.section	.text.QrTinyWrite8Bit,"ax",@progbits
	.align	2
	.globl	QrTinyWrite8Bit
	.type	QrTinyWrite8Bit, @function
QrTinyWrite8Bit:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a0,-44(s0)
	call	strlen
	sw	a0,-28(s0)
	sw	zero,-20(s0)
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a3,4
	li	a2,4
	mv	a1,a5
	lw	a0,-36(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a3,8
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L46
.L47:
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a1,a4,a5
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	li	a3,8
	mv	a2,a5
	lw	a0,-36(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L46:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L47
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	QrTinyWrite8Bit, .-QrTinyWrite8Bit
	.section	.text.QrTinyIdentifyIndex,"ax",@progbits
	.align	2
	.type	QrTinyIdentifyIndex, @function
QrTinyIdentifyIndex:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	slti	a5,a5,6
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a5,-52(s0)
	sub	a5,a5,a4
	sw	a5,-24(s0)
	lw	a5,-56(s0)
	slti	a5,a5,6
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a5,-56(s0)
	sub	a5,a5,a4
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	srai	a5,a5,1
	andi	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	andi	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	srai	a5,a5,1
	li	a4,9
	sub	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	srai	a5,a5,2
	li	a4,4
	sub	a5,a4,a5
	sw	a5,-44(s0)
	li	a5,-1
	sw	a5,-20(s0)
	lw	a4,-40(s0)
	li	a5,3
	bgt	a4,a5,.L50
	lw	a5,-32(s0)
	beq	a5,zero,.L51
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L52
.L51:
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	addi	a4,a5,2
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L52
.L50:
	lw	a4,-40(s0)
	li	a5,5
	bgt	a4,a5,.L53
	lw	a5,-32(s0)
	beq	a5,zero,.L54
	lw	a5,-40(s0)
	addi	a4,a5,-4
	mv	a5,a4
	slli	a5,a5,2
	add	a4,a5,a4
	lw	a5,-44(s0)
	add	a5,a4,a5
	addi	a5,a5,12
	sw	a5,-20(s0)
	j	.L52
.L54:
	lw	a5,-40(s0)
	addi	a4,a5,-4
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	addi	a4,a5,4
	lw	a5,-44(s0)
	sub	a5,a4,a5
	addi	a5,a5,12
	sw	a5,-20(s0)
	j	.L52
.L53:
	lw	a5,-40(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L52:
	lw	a5,-32(s0)
	beq	a5,zero,.L55
	li	a5,0
	j	.L56
.L55:
	li	a5,3
.L56:
	lw	a4,-28(s0)
	andi	a4,a4,3
	xor	a5,a5,a4
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-20(s0)
	slli	a4,a5,3
	lw	a5,-48(s0)
	or	a5,a4,a5
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	QrTinyIdentifyIndex, .-QrTinyIdentifyIndex
	.section	.text.QrTinyIdentifyModule,"ax",@progbits
	.align	2
	.type	QrTinyIdentifyModule, @function
QrTinyIdentifyModule:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	mv	a5,a2
	sh	a5,-58(s0)
	lw	a5,-52(s0)
	blt	a5,zero,.L59
	lw	a5,-56(s0)
	blt	a5,zero,.L59
	lw	a4,-52(s0)
	li	a5,20
	bgt	a4,a5,.L59
	lw	a4,-56(s0)
	li	a5,20
	ble	a4,a5,.L60
.L59:
	li	a5,0
	j	.L61
.L60:
	sw	zero,-20(s0)
	j	.L62
.L70:
	lw	a5,-20(s0)
	andi	a5,a5,1
	beq	a5,zero,.L63
	li	a5,17
	j	.L64
.L63:
	li	a5,3
.L64:
	lw	a4,-52(s0)
	sub	a4,a4,a5
	srai	a5,a4,31
	xor	a4,a5,a4
	sub	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	andi	a5,a5,2
	beq	a5,zero,.L65
	li	a5,17
	j	.L66
.L65:
	li	a5,3
.L66:
	lw	a4,-56(s0)
	sub	a4,a4,a5
	srai	a5,a4,31
	xor	a4,a5,a4
	sub	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L67
	lw	a5,-40(s0)
	bne	a5,zero,.L67
	li	a5,1
	j	.L61
.L67:
	lw	a4,-36(s0)
	li	a5,4
	bgt	a4,a5,.L68
	lw	a4,-40(s0)
	li	a5,4
	bgt	a4,a5,.L68
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bge	a5,a4,.L69
	mv	a5,a4
.L69:
	andi	a5,a5,1
	j	.L61
.L68:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L62:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L70
	lw	a4,-52(s0)
	li	a5,6
	beq	a4,a5,.L71
	lw	a4,-56(s0)
	li	a5,6
	bne	a4,a5,.L72
.L71:
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	xor	a5,a4,a5
	not	a5,a5
	andi	a5,a5,1
	j	.L61
.L72:
	lw	a5,-52(s0)
	slti	a5,a5,6
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a5,-52(s0)
	sub	a5,a5,a4
	sw	a5,-28(s0)
	lw	a5,-56(s0)
	slti	a5,a5,6
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a5,-56(s0)
	sub	a5,a5,a4
	sw	a5,-32(s0)
	lw	a4,-52(s0)
	li	a5,8
	bne	a4,a5,.L73
	lw	a4,-56(s0)
	li	a5,13
	bne	a4,a5,.L73
	li	a5,1
	j	.L61
.L73:
	li	a5,-1
	sw	a5,-24(s0)
	lw	a4,-28(s0)
	li	a5,7
	bgt	a4,a5,.L74
	lw	a4,-32(s0)
	li	a5,7
	bgt	a4,a5,.L74
	li	a4,7
	lw	a5,-28(s0)
	sub	a5,a4,a5
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L74:
	lw	a4,-52(s0)
	li	a5,8
	bne	a4,a5,.L75
	lw	a4,-56(s0)
	li	a5,12
	ble	a4,a5,.L75
	lw	a5,-56(s0)
	addi	a5,a5,-6
	sw	a5,-24(s0)
.L75:
	lw	a4,-56(s0)
	li	a5,8
	bne	a4,a5,.L76
	lw	a4,-52(s0)
	li	a5,12
	ble	a4,a5,.L76
	li	a4,20
	lw	a5,-52(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L76:
	lw	a5,-24(s0)
	blt	a5,zero,.L77
	lhu	a4,-58(s0)
	lw	a5,-24(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	j	.L61
.L77:
	li	a5,-1
.L61:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	QrTinyIdentifyModule, .-QrTinyIdentifyModule
	.section	.text.QrTinyCalculateMask,"ax",@progbits
	.align	2
	.type	QrTinyCalculateMask, @function
QrTinyCalculateMask:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,10
	slli	a5,a5,16
	srli	a5,a5,16
	xori	a5,a5,21
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,7
	li	a4,7
	beq	a5,a4,.L79
	li	a4,7
	bgt	a5,a4,.L80
	li	a4,6
	beq	a5,a4,.L81
	li	a4,6
	bgt	a5,a4,.L80
	li	a4,5
	beq	a5,a4,.L82
	li	a4,5
	bgt	a5,a4,.L80
	li	a4,4
	beq	a5,a4,.L83
	li	a4,4
	bgt	a5,a4,.L80
	li	a4,3
	beq	a5,a4,.L84
	li	a4,3
	bgt	a5,a4,.L80
	li	a4,2
	beq	a5,a4,.L85
	li	a4,2
	bgt	a5,a4,.L80
	beq	a5,zero,.L86
	li	a4,1
	beq	a5,a4,.L87
	j	.L80
.L86:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	andi	a5,a5,1
	andi	a5,a5,1
	xori	a5,a5,1
	andi	a5,a5,0xff
	j	.L88
.L87:
	lw	a5,-28(s0)
	andi	a5,a5,1
	andi	a5,a5,1
	xori	a5,a5,1
	andi	a5,a5,0xff
	j	.L88
.L85:
	lw	a3,-24(s0)
	li	a5,1431654400
	addi	a5,a5,1366
	mulh	a4,a3,a5
	srai	a5,a3,31
	sub	a4,a4,a5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	sub	a4,a3,a5
	seqz	a5,a4
	andi	a5,a5,0xff
	j	.L88
.L84:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a3,a4,a5
	li	a5,1431654400
	addi	a5,a5,1366
	mulh	a4,a3,a5
	srai	a5,a3,31
	sub	a4,a4,a5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	sub	a4,a3,a5
	seqz	a5,a4
	andi	a5,a5,0xff
	j	.L88
.L83:
	lw	a5,-28(s0)
	srai	a4,a5,1
	lw	a5,-24(s0)
	li	a3,1431654400
	addi	a3,a3,1366
	mulh	a3,a5,a3
	srai	a5,a5,31
	sub	a5,a3,a5
	add	a5,a4,a5
	andi	a5,a5,1
	andi	a5,a5,1
	xori	a5,a5,1
	andi	a5,a5,0xff
	j	.L88
.L82:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mul	a5,a4,a5
	andi	a2,a5,1
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mul	a3,a4,a5
	li	a5,1431654400
	addi	a5,a5,1366
	mulh	a4,a3,a5
	srai	a5,a3,31
	sub	a4,a4,a5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	sub	a4,a3,a5
	add	a5,a2,a4
	seqz	a5,a5
	andi	a5,a5,0xff
	j	.L88
.L81:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mul	a5,a4,a5
	mv	a2,a5
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mul	a4,a4,a5
	li	a5,1431654400
	addi	a5,a5,1366
	mulh	a3,a4,a5
	srai	a5,a4,31
	sub	a3,a3,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	sub	a3,a4,a5
	mv	a5,a3
	add	a5,a2,a5
	andi	a5,a5,1
	andi	a5,a5,1
	xori	a5,a5,1
	andi	a5,a5,0xff
	j	.L88
.L79:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mul	a4,a4,a5
	li	a5,1431654400
	addi	a5,a5,1366
	mulh	a3,a4,a5
	srai	a5,a4,31
	sub	a3,a3,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	sub	a3,a4,a5
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	add	a5,a3,a5
	andi	a5,a5,1
	andi	a5,a5,1
	xori	a5,a5,1
	andi	a5,a5,0xff
	j	.L88
.L80:
	li	a5,0
.L88:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	QrTinyCalculateMask, .-QrTinyCalculateMask
	.section	.text.QrTinyRSRemainder,"ax",@progbits
	.align	2
	.type	QrTinyRSRemainder, @function
QrTinyRSRemainder:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	lw	a5,-64(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-68(s0)
	call	memset
	sw	zero,-20(s0)
	j	.L90
.L95:
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-68(s0)
	lbu	a5,0(a5)
	xor	a5,a4,a5
	sb	a5,-33(s0)
	lw	a5,-68(s0)
	addi	a4,a5,1
	lw	a5,-64(s0)
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a4
	lw	a0,-68(s0)
	call	memmove
	lw	a5,-64(s0)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	sw	zero,-24(s0)
	j	.L91
.L94:
	sb	zero,-25(s0)
	li	a5,7
	sw	a5,-32(s0)
	j	.L92
.L93:
	lb	a5,-25(s0)
	slli	a5,a5,1
	slli	a3,a5,24
	srai	a3,a3,24
	lbu	a5,-25(s0)
	srli	a5,a5,7
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	mv	a4,a5
	slli	a4,a4,3
	sub	a4,a4,a5
	slli	a4,a4,2
	add	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	xor	a5,a3,a5
	slli	a5,a5,24
	srai	a5,a5,24
	sb	a5,-25(s0)
	lbu	a4,-33(s0)
	lw	a5,-32(s0)
	sra	a5,a4,a5
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a3,a5,0xff
	lw	a5,-24(s0)
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	neg	a4,a4
	and	a5,a4,a5
	andi	a5,a5,0xff
	slli	a4,a5,24
	srai	a4,a4,24
	lb	a5,-25(s0)
	xor	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	sb	a5,-25(s0)
	lw	a5,-32(s0)
	addi	a5,a5,-1
	sw	a5,-32(s0)
.L92:
	lw	a5,-32(s0)
	bge	a5,zero,.L93
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-24(s0)
	lw	a3,-68(s0)
	add	a5,a3,a5
	lbu	a3,-25(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L91:
	lw	a4,-24(s0)
	lw	a5,-64(s0)
	blt	a4,a5,.L94
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L90:
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bltu	a4,a5,.L95
	nop
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	QrTinyRSRemainder, .-QrTinyRSRemainder
	.section	.srodata.qrcode_ecc_block_codewords,"a"
	.align	2
	.type	qrcode_ecc_block_codewords, @object
	.size	qrcode_ecc_block_codewords, 4
qrcode_ecc_block_codewords:
	.base64	"CgcRDQ=="
	.section	.rodata.eccDivisorsMedium,"a"
	.align	2
	.type	eccDivisorsMedium, @object
	.size	eccDivisorsMedium, 10
eccDivisorsMedium:
	.base64	"2MKfb8deX3GdwQ=="
	.section	.srodata.eccDivisorsLow,"a"
	.align	2
	.type	eccDivisorsLow, @object
	.size	eccDivisorsLow, 7
eccDivisorsLow:
	.base64	"f3qapAtEdQ=="
	.section	.rodata.eccDivisorsHigh,"a"
	.align	2
	.type	eccDivisorsHigh, @object
	.size	eccDivisorsHigh, 17
eccDivisorsHigh:
	.base64	"d0JTeHcWxVP5KY+GVTV9Y08="
	.section	.rodata.eccDivisorsQuartile,"a"
	.align	2
	.type	eccDivisorsQuartile, @object
	.size	eccDivisorsQuartile, 13
eccDivisorsQuartile:
	.base64	"iUnjEbERNA0uK1OEeA=="
	.section	.data.eccDivisors,"aw"
	.align	2
	.type	eccDivisors, @object
	.size	eccDivisors, 16
eccDivisors:
	.word	eccDivisorsMedium
	.word	eccDivisorsLow
	.word	eccDivisorsHigh
	.word	eccDivisorsQuartile
	.section	.text.QrTinyGenerate,"ax",@progbits
	.align	2
	.globl	QrTinyGenerate
	.type	QrTinyGenerate, @function
QrTinyGenerate:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	mv	a5,a2
	sh	a5,-58(s0)
	lhu	a5,-58(s0)
	srli	a5,a5,13
	slli	a5,a5,16
	srli	a5,a5,16
	xori	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,3
	sw	a5,-28(s0)
	lui	a5,%hi(qrcode_ecc_block_codewords)
	addi	a4,a5,%lo(qrcode_ecc_block_codewords)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lb	a5,0(a5)
	sw	a5,-32(s0)
	lui	a5,%hi(eccDivisors)
	addi	a4,a5,%lo(eccDivisors)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	li	a4,26
	sub	a5,a4,a5
	slli	a5,a5,3
	sw	a5,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	bge	a5,zero,.L97
	li	a5,0
	j	.L98
.L97:
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	li	a5,4
	bleu	a4,a5,.L99
	li	a5,4
	sw	a5,-24(s0)
.L99:
	lw	a3,-24(s0)
	li	a2,0
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,7
	sw	a5,-48(s0)
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	bleu	a4,a5,.L100
	lw	a5,-48(s0)
	sw	a5,-24(s0)
.L100:
	lw	a3,-24(s0)
	li	a2,0
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	j	.L101
.L103:
	lw	a4,-24(s0)
	li	a5,16
	bleu	a4,a5,.L102
	li	a5,16
	sw	a5,-24(s0)
.L102:
	li	a4,16
	lw	a5,-24(s0)
	sub	a5,a4,a5
	li	a4,61440
	addi	a4,a4,-1007
	sra	a5,a4,a5
	lw	a3,-24(s0)
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	QrTinyBufferAppend
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L101:
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L103
	lw	a5,-40(s0)
	srli	a1,a5,3
	lw	a5,-32(s0)
	li	a4,26
	sub	a4,a4,a5
	li	a5,536870912
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a4,-52(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-36(s0)
	lw	a0,-52(s0)
	call	QrTinyRSRemainder
	li	a5,1
.L98:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	QrTinyGenerate, .-QrTinyGenerate
	.section	.text.QrTinyModuleGet,"ax",@progbits
	.align	2
	.globl	QrTinyModuleGet
	.type	QrTinyModuleGet, @function
QrTinyModuleGet:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sh	a5,-38(s0)
	lhu	a5,-38(s0)
	mv	a2,a5
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	QrTinyIdentifyModule
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L105
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	QrTinyIdentifyIndex
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	srai	a5,a5,3
	mv	a4,a5
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-24(s0)
	andi	a5,a5,7
	sra	a5,a4,a5
	andi	a5,a5,1
	sw	a5,-20(s0)
	lhu	a5,-38(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	QrTinyCalculateMask
	mv	a5,a0
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	beq	a5,zero,.L105
	lw	a5,-20(s0)
	xori	a5,a5,1
	sw	a5,-20(s0)
.L105:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	QrTinyModuleGet, .-QrTinyModuleGet
	.globl	recieved_bytes
	.section	.bss.recieved_bytes,"aw",@nobits
	.align	2
	.type	recieved_bytes, @object
	.size	recieved_bytes, 256
recieved_bytes:
	.zero	256
	.globl	recieved_bytes_num
	.section	.sbss.recieved_bytes_num,"aw",@nobits
	.align	2
	.type	recieved_bytes_num, @object
	.size	recieved_bytes_num, 4
recieved_bytes_num:
	.zero	4
	.globl	uart_new_command
	.section	.sbss.uart_new_command,"aw",@nobits
	.type	uart_new_command, @object
	.size	uart_new_command, 1
uart_new_command:
	.zero	1
	.section	.text.uart_interrupt_handler,"ax",@progbits
	.align	2
	.globl	uart_interrupt_handler
	.type	uart_interrupt_handler, @function
uart_interrupt_handler:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	a3,36(sp)
	sw	a4,32(sp)
	sw	a5,28(sp)
	addi	s0,sp,48
	li	a5,8
 #APP
# 15 "uart.h" 1
	csrc mstatus, a5
# 0 "" 2
 #NO_APP
	li	a5,131072
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a4,a5
	lui	a5,%hi(recieved_bytes_num)
	sw	a4,%lo(recieved_bytes_num)(a5)
	sw	zero,-36(s0)
	j	.L108
.L111:
	lw	a4,-36(s0)
	lui	a5,%hi(recieved_bytes_num)
	lw	a5,%lo(recieved_bytes_num)(a5)
	bgeu	a4,a5,.L109
	lw	a4,-36(s0)
	li	a5,131072
	addi	a5,a5,3
	add	a5,a4,a5
	lbu	a4,0(a5)
	lui	a5,%hi(recieved_bytes)
	addi	a3,a5,%lo(recieved_bytes)
	lw	a5,-36(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	j	.L110
.L109:
	lui	a5,%hi(recieved_bytes)
	addi	a4,a5,%lo(recieved_bytes)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
.L110:
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L108:
	lw	a4,-36(s0)
	li	a5,255
	ble	a4,a5,.L111
	li	a5,8
 #APP
# 28 "uart.h" 1
	csrs mstatus, a5
# 0 "" 2
 #NO_APP
	lui	a5,%hi(uart_new_command)
	li	a4,1
	sb	a4,%lo(uart_new_command)(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	a3,36(sp)
	lw	a4,32(sp)
	lw	a5,28(sp)
	addi	sp,sp,48
	mret
	.size	uart_interrupt_handler, .-uart_interrupt_handler
	.section	.text.read_uart,"ax",@progbits
	.align	2
	.globl	read_uart
	.type	read_uart, @function
read_uart:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	li	a5,131072
	li	a4,3
	sb	a4,0(a5)
	nop
.L114:
	lui	a5,%hi(uart_new_command)
	lbu	a5,%lo(uart_new_command)(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L114
	lui	a5,%hi(uart_new_command)
	sb	zero,%lo(uart_new_command)(a5)
	lui	a5,%hi(recieved_bytes_num)
	lw	a5,%lo(recieved_bytes_num)(a5)
	mv	a2,a5
	lui	a5,%hi(recieved_bytes)
	addi	a1,a5,%lo(recieved_bytes)
	lw	a0,-20(s0)
	call	memcpy
	lui	a5,%hi(recieved_bytes_num)
	lw	a5,%lo(recieved_bytes_num)(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	read_uart, .-read_uart
	.globl	name_buffer
	.section	.bss.name_buffer,"aw",@nobits
	.align	2
	.type	name_buffer, @object
	.size	name_buffer, 20
name_buffer:
	.zero	20
	.globl	desc_buffer
	.section	.bss.desc_buffer,"aw",@nobits
	.align	2
	.type	desc_buffer, @object
	.size	desc_buffer, 50
desc_buffer:
	.zero	50
	.globl	price_buffer
	.section	.bss.price_buffer,"aw",@nobits
	.align	2
	.type	price_buffer, @object
	.size	price_buffer, 10
price_buffer:
	.zero	10
	.globl	old_price_buffer
	.section	.bss.old_price_buffer,"aw",@nobits
	.align	2
	.type	old_price_buffer, @object
	.size	old_price_buffer, 10
old_price_buffer:
	.zero	10
	.globl	url_buffer
	.section	.bss.url_buffer,"aw",@nobits
	.align	2
	.type	url_buffer, @object
	.size	url_buffer, 53
url_buffer:
	.zero	53
	.globl	new_data_buffer
	.section	.bss.new_data_buffer,"aw",@nobits
	.align	2
	.type	new_data_buffer, @object
	.size	new_data_buffer, 256
new_data_buffer:
	.zero	256
	.globl	qr_buffer
	.section	.bss.qr_buffer,"aw",@nobits
	.align	2
	.type	qr_buffer, @object
	.size	qr_buffer, 26
qr_buffer:
	.zero	26
	.section	.rodata
	.align	2
.LC0:
	.string	"|"
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-144
	sw	ra,140(sp)
	sw	s0,136(sp)
	addi	s0,sp,144
	li	a5,8
 #APP
# 42 "einkfirm.c" 1
	csrs mstatus, a5
# 0 "" 2
 #NO_APP
	li	a5,4096
	addi	a5,a5,-2048
 #APP
# 43 "einkfirm.c" 1
	csrs mie, a5
# 0 "" 2
 #NO_APP
.L145:
	lui	a5,%hi(new_data_buffer)
	addi	a0,a5,%lo(new_data_buffer)
	call	read_uart
	sw	a0,-56(s0)
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lui	a5,%hi(new_data_buffer)
	addi	a0,a5,%lo(new_data_buffer)
	call	strtok
	sw	a0,-20(s0)
	sb	zero,-21(s0)
	j	.L117
.L125:
	lbu	a5,-21(s0)
	li	a4,4
	beq	a5,a4,.L118
	li	a4,4
	bgt	a5,a4,.L146
	li	a4,3
	beq	a5,a4,.L120
	li	a4,3
	bgt	a5,a4,.L146
	li	a4,2
	beq	a5,a4,.L121
	li	a4,2
	bgt	a5,a4,.L146
	beq	a5,zero,.L122
	li	a4,1
	beq	a5,a4,.L123
	j	.L146
.L122:
	lw	a1,-20(s0)
	lui	a5,%hi(name_buffer)
	addi	a0,a5,%lo(name_buffer)
	call	strcpy
	j	.L124
.L123:
	lw	a1,-20(s0)
	lui	a5,%hi(desc_buffer)
	addi	a0,a5,%lo(desc_buffer)
	call	strcpy
	j	.L124
.L121:
	lw	a1,-20(s0)
	lui	a5,%hi(price_buffer)
	addi	a0,a5,%lo(price_buffer)
	call	strcpy
	j	.L124
.L120:
	lw	a1,-20(s0)
	lui	a5,%hi(old_price_buffer)
	addi	a0,a5,%lo(old_price_buffer)
	call	strcpy
	j	.L124
.L118:
	lw	a1,-20(s0)
	lui	a5,%hi(url_buffer)
	addi	a0,a5,%lo(url_buffer)
	call	strcpy
	j	.L124
.L146:
	nop
.L124:
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	li	a0,0
	call	strtok
	sw	a0,-20(s0)
.L117:
	lw	a5,-20(s0)
	bne	a5,zero,.L125
	call	clear_screen
	sw	zero,-60(s0)
	lui	a5,%hi(url_buffer)
	addi	a2,a5,%lo(url_buffer)
	lw	a1,-60(s0)
	lui	a5,%hi(qr_buffer)
	addi	a0,a5,%lo(qr_buffer)
	call	QrTinyWriteAlphanumeric
	mv	a4,a0
	lw	a5,-60(s0)
	add	a5,a5,a4
	sw	a5,-60(s0)
	li	a5,28672
	addi	a5,a5,1988
	sh	a5,-62(s0)
	lhu	a5,-62(s0)
	mv	a2,a5
	lw	a1,-60(s0)
	lui	a5,%hi(qr_buffer)
	addi	a0,a5,%lo(qr_buffer)
	call	QrTinyGenerate
	li	a5,21
	sw	a5,-68(s0)
	li	a5,4
	sb	a5,-69(s0)
	li	a5,4
	sb	a5,-22(s0)
.L128:
	lbu	a4,-22(s0)
	lw	a5,-68(s0)
	mul	a4,a4,a5
	li	a5,104
	bgtu	a4,a5,.L126
	lbu	a5,-22(s0)
	sb	a5,-69(s0)
	nop
	lbu	a4,-69(s0)
	lw	a5,-68(s0)
	mul	a5,a4,a5
	li	a4,104
	sub	a5,a4,a5
	srli	a5,a5,1
	sw	a5,-76(s0)
	lbu	a4,-69(s0)
	lw	a5,-68(s0)
	mul	a4,a4,a5
	lbu	a3,-69(s0)
	lw	a5,-68(s0)
	mul	a5,a3,a5
	li	a3,104
	sub	a5,a3,a5
	srli	a5,a5,1
	add	a5,a4,a5
	li	a4,152
	sub	a5,a4,a5
	sw	a5,-80(s0)
	sw	zero,-28(s0)
	j	.L129
.L126:
	lbu	a5,-22(s0)
	addi	a5,a5,-1
	sb	a5,-22(s0)
	j	.L128
.L137:
	sw	zero,-32(s0)
	j	.L130
.L136:
	lhu	a5,-62(s0)
	lw	a3,-28(s0)
	lw	a2,-32(s0)
	mv	a1,a5
	lui	a5,%hi(qr_buffer)
	addi	a0,a5,%lo(qr_buffer)
	call	QrTinyModuleGet
	sw	a0,-132(s0)
	lw	a5,-132(s0)
	beq	a5,zero,.L131
	sw	zero,-36(s0)
	j	.L132
.L135:
	sw	zero,-40(s0)
	j	.L133
.L134:
	lbu	a4,-69(s0)
	lw	a5,-32(s0)
	mul	a5,a4,a5
	mv	a4,a5
	lw	a5,-76(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	add	a3,a4,a5
	lbu	a4,-69(s0)
	lw	a5,-28(s0)
	mul	a5,a4,a5
	mv	a4,a5
	lw	a5,-80(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	lw	a4,-132(s0)
	andi	a4,a4,0xff
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	set_pixel
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L133:
	lbu	a5,-69(s0)
	lw	a4,-40(s0)
	bltu	a4,a5,.L134
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L132:
	lbu	a5,-69(s0)
	lw	a4,-36(s0)
	bltu	a4,a5,.L135
.L131:
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L130:
	lw	a4,-32(s0)
	li	a5,20
	ble	a4,a5,.L136
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L129:
	lw	a4,-28(s0)
	li	a5,20
	ble	a4,a5,.L137
	li	a3,2
	lui	a5,%hi(name_buffer)
	addi	a2,a5,%lo(name_buffer)
	li	a1,10
	li	a0,10
	call	draw_text
	li	a5,29
	sw	a5,-84(s0)
	li	a3,1
	lui	a5,%hi(desc_buffer)
	addi	a2,a5,%lo(desc_buffer)
	lw	a1,-84(s0)
	li	a0,10
	call	draw_text
	lw	a5,-84(s0)
	addi	a5,a5,12
	sw	a5,-88(s0)
	sw	zero,-44(s0)
	j	.L138
.L139:
	li	a2,1
	lw	a1,-88(s0)
	lw	a0,-44(s0)
	call	set_pixel
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L138:
	lw	a4,-44(s0)
	li	a5,295
	bleu	a4,a5,.L139
	lw	a5,-88(s0)
	sw	a5,-48(s0)
	j	.L140
.L141:
	li	a2,1
	lw	a1,-48(s0)
	li	a0,104
	call	set_pixel
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L140:
	lw	a4,-48(s0)
	li	a5,151
	bleu	a4,a5,.L141
	lui	a5,%hi(price_buffer)
	addi	a0,a5,%lo(price_buffer)
	call	strlen
	mv	a4,a0
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-4
	sw	a5,-92(s0)
	lw	a5,-92(s0)
	srli	a5,a5,1
	sw	a5,-96(s0)
	li	a4,96
	lw	a5,-96(s0)
	sub	a5,a4,a5
	sw	a5,-100(s0)
	lw	a5,-100(s0)
	addi	a5,a5,104
	sw	a5,-104(s0)
	li	a3,4
	lui	a5,%hi(price_buffer)
	addi	a2,a5,%lo(price_buffer)
	li	a1,82
	lw	a0,-104(s0)
	call	draw_text
	lui	a5,%hi(old_price_buffer)
	addi	a0,a5,%lo(old_price_buffer)
	call	strlen
	mv	a5,a0
	sb	a5,-105(s0)
	lbu	a5,-105(s0)
	beq	a5,zero,.L145
	lbu	a4,-105(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-2
	sw	a5,-112(s0)
	lw	a5,-112(s0)
	srli	a5,a5,1
	sw	a5,-116(s0)
	li	a4,96
	lw	a5,-116(s0)
	sub	a5,a4,a5
	sw	a5,-120(s0)
	lw	a5,-120(s0)
	addi	a5,a5,104
	sw	a5,-124(s0)
	li	a5,128
	sw	a5,-128(s0)
	li	a3,2
	lui	a5,%hi(old_price_buffer)
	addi	a2,a5,%lo(old_price_buffer)
	lw	a1,-128(s0)
	lw	a0,-124(s0)
	call	draw_text
	lw	a5,-124(s0)
	addi	a5,a5,-5
	sw	a5,-52(s0)
	j	.L143
.L144:
	lw	a5,-128(s0)
	addi	a5,a5,8
	li	a2,1
	mv	a1,a5
	lw	a0,-52(s0)
	call	set_pixel
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L143:
	lw	a4,-124(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	addi	a5,a5,5
	lw	a4,-52(s0)
	bltu	a4,a5,.L144
	j	.L145
	.size	main, .-main
	.section	.rodata
	.align	2
.LC1:
	.string	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"
	.section	.sdata.symbols.0,"aw"
	.align	2
	.type	symbols.0, @object
	.size	symbols.0, 4
symbols.0:
	.word	.LC1
	.ident	"GCC: (Arch Linux Repositories) 15.2.0"
	.section	.note.GNU-stack,"",@progbits

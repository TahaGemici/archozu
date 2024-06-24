	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.uart_conf,"ax",@progbits
	.align	1
	.globl	uart_conf
	.type	uart_conf, @function
uart_conf:
.LFB0:
	.cfi_startproc
	lui	a5,%hi(_addr_uart)
	lw	a5,%lo(_addr_uart)(a5)
	sw	a0,0(a5)
	sw	a1,4(a5)
	ret
	.cfi_endproc
.LFE0:
	.size	uart_conf, .-uart_conf
	.section	.text.uart_read,"ax",@progbits
	.align	1
	.globl	uart_read
	.type	uart_read, @function
uart_read:
.LFB1:
	.cfi_startproc
	lui	a5,%hi(_addr_uart)
	lw	a5,%lo(_addr_uart)(a5)
	li	a4,2
	lw	a3,16(a5)
	beq	a3,a4,.L3
.L4:
	j	.L4
.L3:
	lbu	a0,8(a5)
	sw	zero,16(a5)
	ret
	.cfi_endproc
.LFE1:
	.size	uart_read, .-uart_read
	.section	.text.uart_write,"ax",@progbits
	.align	1
	.globl	uart_write
	.type	uart_write, @function
uart_write:
.LFB2:
	.cfi_startproc
	lui	a5,%hi(_addr_uart)
	lw	a5,%lo(_addr_uart)(a5)
	li	a4,1
	sw	a0,12(a5)
	sw	a4,16(a5)
.L6:
	j	.L6
	.cfi_endproc
.LFE2:
	.size	uart_write, .-uart_write
	.section	.text.i2c_conf,"ax",@progbits
	.align	1
	.globl	i2c_conf
	.type	i2c_conf, @function
i2c_conf:
.LFB3:
	.cfi_startproc
	lui	a5,%hi(_addr_i2c)
	lw	a5,%lo(_addr_i2c)(a5)
	sw	a0,4(a5)
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_conf, .-i2c_conf
	.section	.text.i2c_write,"ax",@progbits
	.align	1
	.globl	i2c_write
	.type	i2c_write, @function
i2c_write:
.LFB4:
	.cfi_startproc
	lui	a5,%hi(_addr_i2c)
	lw	a5,%lo(_addr_i2c)(a5)
	li	a4,1
	sw	a1,0(a5)
	sw	a0,12(a5)
	sw	a4,16(a5)
.L9:
	j	.L9
	.cfi_endproc
.LFE4:
	.size	i2c_write, .-i2c_write
	.section	.text.i2c_read,"ax",@progbits
	.align	1
	.globl	i2c_read
	.type	i2c_read, @function
i2c_read:
.LFB5:
	.cfi_startproc
	lui	a5,%hi(_addr_i2c)
	lw	a5,%lo(_addr_i2c)(a5)
	li	a4,4
	sw	a0,0(a5)
	sw	a4,16(a5)
.L11:
	j	.L11
	.cfi_endproc
.LFE5:
	.size	i2c_read, .-i2c_read
	.section	.text.s25fl128s_wren,"ax",@progbits
	.align	1
	.globl	s25fl128s_wren
	.type	s25fl128s_wren, @function
s25fl128s_wren:
.LFB6:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a5)
	li	a5,-2147483648
	addi	a5,a5,6
	sw	a5,0(a4)
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L12
.L14:
	j	.L14
.L12:
	ret
	.cfi_endproc
.LFE6:
	.size	s25fl128s_wren, .-s25fl128s_wren
	.section	.text.s25fl128s_wrdi,"ax",@progbits
	.align	1
	.globl	s25fl128s_wrdi
	.type	s25fl128s_wrdi, @function
s25fl128s_wrdi:
.LFB7:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a5)
	li	a5,-2147483648
	addi	a5,a5,4
	sw	a5,0(a4)
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L15
.L17:
	j	.L17
.L15:
	ret
	.cfi_endproc
.LFE7:
	.size	s25fl128s_wrdi, .-s25fl128s_wrdi
	.section	.text.s25fl128s_clsr,"ax",@progbits
	.align	1
	.globl	s25fl128s_clsr
	.type	s25fl128s_clsr, @function
s25fl128s_clsr:
.LFB8:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a5)
	li	a5,-2147483648
	addi	a5,a5,48
	sw	a5,0(a4)
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L18
.L20:
	j	.L20
.L18:
	ret
	.cfi_endproc
.LFE8:
	.size	s25fl128s_clsr, .-s25fl128s_clsr
	.section	.text.s25fl128s_reset,"ax",@progbits
	.align	1
	.globl	s25fl128s_reset
	.type	s25fl128s_reset, @function
s25fl128s_reset:
.LFB9:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a5)
	li	a5,-2147483648
	addi	a5,a5,240
	sw	a5,0(a4)
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L21
.L23:
	j	.L23
.L21:
	ret
	.cfi_endproc
.LFE9:
	.size	s25fl128s_reset, .-s25fl128s_reset
	.section	.text.s25fl128s_rdid,"ax",@progbits
	.align	1
	.globl	s25fl128s_rdid
	.type	s25fl128s_rdid, @function
s25fl128s_rdid:
.LFB10:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	addi	a4,a1,-1
	li	a3,-2147483648
	addi	a3,a3,415
	slli	a4,a4,16
	add	a4,a4,a3
	lw	a3,40(a5)
	sw	a4,0(a5)
	li	a4,1
	beq	a3,a4,.L25
.L26:
	j	.L26
.L25:
	li	a4,4
	div	a1,a1,a4
	addi	a5,a5,8
	li	a4,0
.L27:
	bgt	a1,a4,.L28
	ret
.L28:
	lw	a2,0(a5)
	slli	a3,a4,2
	add	a3,a0,a3
	sw	a2,0(a3)
	addi	a4,a4,1
	addi	a5,a5,4
	j	.L27
	.cfi_endproc
.LFE10:
	.size	s25fl128s_rdid, .-s25fl128s_rdid
	.section	.text.s25fl128s_rdsr1,"ax",@progbits
	.align	1
	.globl	s25fl128s_rdsr1
	.type	s25fl128s_rdsr1, @function
s25fl128s_rdsr1:
.LFB11:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147483648
	addi	a4,a4,261
	lw	a3,40(a5)
	sw	a4,0(a5)
	li	a4,1
	beq	a3,a4,.L30
.L31:
	j	.L31
.L30:
	lbu	a0,8(a5)
	ret
	.cfi_endproc
.LFE11:
	.size	s25fl128s_rdsr1, .-s25fl128s_rdsr1
	.section	.text.s25fl128s_rdsr2,"ax",@progbits
	.align	1
	.globl	s25fl128s_rdsr2
	.type	s25fl128s_rdsr2, @function
s25fl128s_rdsr2:
.LFB12:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147483648
	addi	a4,a4,263
	lw	a3,40(a5)
	sw	a4,0(a5)
	li	a4,1
	beq	a3,a4,.L33
.L34:
	j	.L34
.L33:
	lbu	a0,8(a5)
	ret
	.cfi_endproc
.LFE12:
	.size	s25fl128s_rdsr2, .-s25fl128s_rdsr2
	.section	.text.s25fl128s_rdcr,"ax",@progbits
	.align	1
	.globl	s25fl128s_rdcr
	.type	s25fl128s_rdcr, @function
s25fl128s_rdcr:
.LFB13:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147483648
	addi	a4,a4,309
	lw	a3,40(a5)
	sw	a4,0(a5)
	li	a4,1
	beq	a3,a4,.L36
.L37:
	j	.L37
.L36:
	lbu	a0,8(a5)
	ret
	.cfi_endproc
.LFE13:
	.size	s25fl128s_rdcr, .-s25fl128s_rdcr
	.section	.text.s25fl128s_read_id,"ax",@progbits
	.align	1
	.globl	s25fl128s_read_id
	.type	s25fl128s_read_id, @function
s25fl128s_read_id:
.LFB14:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147409920
	addi	a4,a4,-1648
	lw	a3,40(a5)
	sw	a4,0(a5)
	sw	a0,4(a5)
	li	a4,1
	beq	a3,a4,.L39
.L40:
	j	.L40
.L39:
	lh	a0,8(a5)
	ret
	.cfi_endproc
.LFE14:
	.size	s25fl128s_read_id, .-s25fl128s_read_id
	.section	.text.s25fl128s_res,"ax",@progbits
	.align	1
	.globl	s25fl128s_res
	.type	s25fl128s_res, @function
s25fl128s_res:
.LFB15:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147475456
	addi	a4,a4,-1621
	lw	a3,40(a5)
	sw	a4,0(a5)
	li	a4,1
	beq	a3,a4,.L42
.L43:
	j	.L43
.L42:
	lbu	a0,8(a5)
	ret
	.cfi_endproc
.LFE15:
	.size	s25fl128s_res, .-s25fl128s_res
	.section	.text.s25fl128s_wrr,"ax",@progbits
	.align	1
	.globl	s25fl128s_wrr
	.type	s25fl128s_wrr, @function
s25fl128s_wrr:
.LFB16:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147418112
	addi	a4,a4,1281
	sw	a4,0(a5)
	lw	a4,40(a5)
	sw	a0,8(a5)
	li	a5,1
	beq	a4,a5,.L44
.L46:
	j	.L46
.L44:
	ret
	.cfi_endproc
.LFE16:
	.size	s25fl128s_wrr, .-s25fl128s_wrr
	.section	.text.s25fl128s_read,"ax",@progbits
	.align	1
	.globl	s25fl128s_read
	.type	s25fl128s_read, @function
s25fl128s_read:
.LFB17:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	addi	a4,a2,-1
	li	a3,-2147475456
	addi	a3,a3,-1789
	slli	a4,a4,16
	add	a4,a4,a3
	lw	a3,40(a5)
	sw	a4,0(a5)
	sw	a0,4(a5)
	li	a4,1
	beq	a3,a4,.L48
.L49:
	j	.L49
.L48:
	li	a4,4
	div	a2,a2,a4
	addi	a5,a5,8
	li	a4,0
.L50:
	bgt	a2,a4,.L51
	ret
.L51:
	lw	a0,0(a5)
	slli	a3,a4,2
	add	a3,a1,a3
	sw	a0,0(a3)
	addi	a4,a4,1
	addi	a5,a5,4
	j	.L50
	.cfi_endproc
.LFE17:
	.size	s25fl128s_read, .-s25fl128s_read
	.section	.text.s25fl128s_pp,"ax",@progbits
	.align	1
	.globl	s25fl128s_pp
	.type	s25fl128s_pp, @function
s25fl128s_pp:
.LFB18:
	.cfi_startproc
	addi	a5,a2,-1
	li	a4,-2147475456
	addi	a4,a4,-766
	slli	a5,a5,16
	add	a5,a5,a4
	lui	a4,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a4)
	li	a3,4
	div	a2,a2,a3
	sw	a0,4(a4)
	li	a3,0
	addi	a0,a4,8
.L53:
	bgt	a2,a3,.L54
	sw	a5,0(a4)
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L52
.L56:
	j	.L56
.L54:
	slli	a6,a3,2
	add	a6,a1,a6
	lw	a6,0(a6)
	addi	a3,a3,1
	sw	a6,0(a0)
	addi	a0,a0,4
	j	.L53
.L52:
	ret
	.cfi_endproc
.LFE18:
	.size	s25fl128s_pp, .-s25fl128s_pp
	.section	.text.s25fl128s_se,"ax",@progbits
	.align	1
	.globl	s25fl128s_se
	.type	s25fl128s_se, @function
s25fl128s_se:
.LFB19:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	li	a4,-2147352576
	addi	a4,a4,1496
	sw	a4,0(a5)
	lw	a4,40(a5)
	sw	a0,8(a5)
	li	a5,1
	beq	a4,a5,.L57
.L59:
	j	.L59
.L57:
	ret
	.cfi_endproc
.LFE19:
	.size	s25fl128s_se, .-s25fl128s_se
	.section	.text.s25fl128s_dor,"ax",@progbits
	.align	1
	.globl	s25fl128s_dor
	.type	s25fl128s_dor, @function
s25fl128s_dor:
.LFB20:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	addi	a4,a2,-1
	li	a3,-2147475456
	addi	a3,a3,571
	slli	a4,a4,16
	add	a4,a4,a3
	lw	a3,40(a5)
	sw	a4,0(a5)
	sw	a0,4(a5)
	li	a4,1
	beq	a3,a4,.L61
.L62:
	j	.L62
.L61:
	li	a4,4
	div	a2,a2,a4
	addi	a5,a5,8
	li	a4,0
.L63:
	bgt	a2,a4,.L64
	ret
.L64:
	lw	a0,0(a5)
	slli	a3,a4,2
	add	a3,a1,a3
	sw	a0,0(a3)
	addi	a4,a4,1
	addi	a5,a5,4
	j	.L63
	.cfi_endproc
.LFE20:
	.size	s25fl128s_dor, .-s25fl128s_dor
	.section	.text.s25fl128s_qor,"ax",@progbits
	.align	1
	.globl	s25fl128s_qor
	.type	s25fl128s_qor, @function
s25fl128s_qor:
.LFB21:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a5,%lo(_addr_qspi)(a5)
	addi	a4,a2,-1
	li	a3,-2147475456
	addi	a3,a3,875
	slli	a4,a4,16
	add	a4,a4,a3
	lw	a3,40(a5)
	sw	a4,0(a5)
	sw	a0,4(a5)
	li	a4,1
	beq	a3,a4,.L66
.L67:
	j	.L67
.L66:
	li	a4,4
	div	a2,a2,a4
	addi	a5,a5,8
	li	a4,0
.L68:
	bgt	a2,a4,.L69
	ret
.L69:
	lw	a0,0(a5)
	slli	a3,a4,2
	add	a3,a1,a3
	sw	a0,0(a3)
	addi	a4,a4,1
	addi	a5,a5,4
	j	.L68
	.cfi_endproc
.LFE21:
	.size	s25fl128s_qor, .-s25fl128s_qor
	.section	.text.s25fl128s_qpp,"ax",@progbits
	.align	1
	.globl	s25fl128s_qpp
	.type	s25fl128s_qpp, @function
s25fl128s_qpp:
.LFB22:
	.cfi_startproc
	lui	a5,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a5)
	li	a3,-2147475456
	addi	a5,a2,-1
	addi	a3,a3,-206
	slli	a5,a5,16
	add	a5,a5,a3
	sw	a5,0(a4)
	li	a5,4
	div	a2,a2,a5
	sw	a0,4(a4)
	addi	a3,a4,8
	li	a5,0
.L71:
	bgt	a2,a5,.L72
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L70
.L74:
	j	.L74
.L72:
	slli	a0,a5,2
	add	a0,a1,a0
	lw	a0,0(a0)
	addi	a5,a5,1
	sw	a0,0(a3)
	addi	a3,a3,4
	j	.L71
.L70:
	ret
	.cfi_endproc
.LFE22:
	.size	s25fl128s_qpp, .-s25fl128s_qpp
	.section	.text.qspi_custom_write,"ax",@progbits
	.align	1
	.globl	qspi_custom_write
	.type	qspi_custom_write, @function
qspi_custom_write:
.LFB23:
	.cfi_startproc
	andi	a2,a2,0xff
	slli	a3,a3,8
	add	a3,a3,a2
	slli	a4,a4,11
	addi	a3,a3,1024
	add	a3,a4,a3
	addi	a4,a5,-1
	slli	a4,a4,16
	add	a4,a4,a3
	slli	a6,a6,25
	add	a6,a6,a4
	li	a4,-2147483648
	add	a6,a6,a4
	lui	a4,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a4)
	li	a3,4
	div	a5,a5,a3
	sw	a0,4(a4)
	addi	a2,a4,8
	li	a3,0
.L76:
	bgt	a5,a3,.L77
	sw	a6,0(a4)
	lw	a4,40(a4)
	li	a5,1
	beq	a4,a5,.L75
.L79:
	j	.L79
.L77:
	slli	a0,a3,2
	add	a0,a1,a0
	lw	a0,0(a0)
	addi	a3,a3,1
	sw	a0,0(a2)
	addi	a2,a2,4
	j	.L76
.L75:
	ret
	.cfi_endproc
.LFE23:
	.size	qspi_custom_write, .-qspi_custom_write
	.section	.text.qspi_custom_read,"ax",@progbits
	.align	1
	.globl	qspi_custom_read
	.type	qspi_custom_read, @function
qspi_custom_read:
.LFB24:
	.cfi_startproc
	andi	a2,a2,0xff
	slli	a3,a3,8
	add	a3,a3,a2
	slli	a4,a4,11
	add	a3,a4,a3
	addi	a4,a5,-1
	slli	a4,a4,16
	add	a4,a4,a3
	slli	a6,a6,25
	add	a6,a6,a4
	lui	a4,%hi(_addr_qspi)
	lw	a4,%lo(_addr_qspi)(a4)
	li	a3,-2147483648
	add	a6,a6,a3
	lw	a2,40(a4)
	sw	a0,4(a4)
	sw	a6,0(a4)
	li	a3,1
	beq	a2,a3,.L81
.L82:
	j	.L82
.L81:
	li	a3,4
	div	a5,a5,a3
	addi	a4,a4,8
	li	a3,0
.L83:
	bgt	a5,a3,.L84
	ret
.L84:
	lw	a0,0(a4)
	slli	a2,a3,2
	add	a2,a1,a2
	sw	a0,0(a2)
	addi	a3,a3,1
	addi	a4,a4,4
	j	.L83
	.cfi_endproc
.LFE24:
	.size	qspi_custom_read, .-qspi_custom_read
	.section	.text.timer_conf,"ax",@progbits
	.align	1
	.globl	timer_conf
	.type	timer_conf, @function
timer_conf:
.LFB25:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	sw	a0,0(a5)
	sw	a1,4(a5)
	sw	a2,16(a5)
	ret
	.cfi_endproc
.LFE25:
	.size	timer_conf, .-timer_conf
	.section	.text.timer_read_counter,"ax",@progbits
	.align	1
	.globl	timer_read_counter
	.type	timer_read_counter, @function
timer_read_counter:
.LFB26:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	lw	a0,20(a5)
	ret
	.cfi_endproc
.LFE26:
	.size	timer_read_counter, .-timer_read_counter
	.section	.text.timer_read_event,"ax",@progbits
	.align	1
	.globl	timer_read_event
	.type	timer_read_event, @function
timer_read_event:
.LFB27:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	lw	a0,24(a5)
	ret
	.cfi_endproc
.LFE27:
	.size	timer_read_event, .-timer_read_event
	.section	.text.timer_clear_counter,"ax",@progbits
	.align	1
	.globl	timer_clear_counter
	.type	timer_clear_counter, @function
timer_clear_counter:
.LFB28:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	li	a4,1
	sw	a4,8(a5)
	ret
	.cfi_endproc
.LFE28:
	.size	timer_clear_counter, .-timer_clear_counter
	.section	.text.timer_clear_event,"ax",@progbits
	.align	1
	.globl	timer_clear_event
	.type	timer_clear_event, @function
timer_clear_event:
.LFB29:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	li	a4,1
	sw	a4,28(a5)
	ret
	.cfi_endproc
.LFE29:
	.size	timer_clear_event, .-timer_clear_event
	.section	.text.timer_enable,"ax",@progbits
	.align	1
	.globl	timer_enable
	.type	timer_enable, @function
timer_enable:
.LFB30:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	li	a4,1
	sw	a4,12(a5)
	ret
	.cfi_endproc
.LFE30:
	.size	timer_enable, .-timer_enable
	.section	.text.timer_disable,"ax",@progbits
	.align	1
	.globl	timer_disable
	.type	timer_disable, @function
timer_disable:
.LFB31:
	.cfi_startproc
	lui	a5,%hi(_addr_timer)
	lw	a5,%lo(_addr_timer)(a5)
	sw	zero,12(a5)
	ret
	.cfi_endproc
.LFE31:
	.size	timer_disable, .-timer_disable
	.section	.text.gpio_write,"ax",@progbits
	.align	1
	.globl	gpio_write
	.type	gpio_write, @function
gpio_write:
.LFB32:
	.cfi_startproc
	lui	a5,%hi(_addr_gpio)
	lw	a5,%lo(_addr_gpio)(a5)
	sw	a0,4(a5)
	ret
	.cfi_endproc
.LFE32:
	.size	gpio_write, .-gpio_write
	.section	.text.gpio_read,"ax",@progbits
	.align	1
	.globl	gpio_read
	.type	gpio_read, @function
gpio_read:
.LFB33:
	.cfi_startproc
	lui	a5,%hi(_addr_gpio)
	lw	a5,%lo(_addr_gpio)(a5)
	lh	a0,0(a5)
	ret
	.cfi_endproc
.LFE33:
	.size	gpio_read, .-gpio_read
	.section	.text.instr_mem_write,"ax",@progbits
	.align	1
	.globl	instr_mem_write
	.type	instr_mem_write, @function
instr_mem_write:
.LFB34:
	.cfi_startproc
	lui	a5,%hi(_addr_instr_mem)
	lw	a5,%lo(_addr_instr_mem)(a5)
	slli	a0,a0,2
	add	a5,a5,a0
	sw	a1,0(a5)
	ret
	.cfi_endproc
.LFE34:
	.size	instr_mem_write, .-instr_mem_write
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	li	a1,4
	li	a0,2
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	i2c_write
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.globl	qspi_dummy_4
	.globl	qspi_dummy_3
	.globl	qspi_write
	.globl	qspi_mode_x4
	.globl	qspi_mode_x2
	.globl	qspi_mode_x1
	.globl	qspi_clk_50
	.globl	qspi_clk_80
	.globl	qspi_clk_104
	.globl	qspi_clk_133
	.section	.srodata,"a"
	.align	2
	.type	qspi_dummy_4, @object
	.size	qspi_dummy_4, 4
qspi_dummy_4:
	.word	8192
	.type	qspi_dummy_3, @object
	.size	qspi_dummy_3, 4
qspi_dummy_3:
	.word	6144
	.type	qspi_write, @object
	.size	qspi_write, 4
qspi_write:
	.word	1024
	.type	qspi_mode_x4, @object
	.size	qspi_mode_x4, 4
qspi_mode_x4:
	.word	768
	.type	qspi_mode_x2, @object
	.size	qspi_mode_x2, 4
qspi_mode_x2:
	.word	512
	.type	qspi_mode_x1, @object
	.size	qspi_mode_x1, 4
qspi_mode_x1:
	.word	256
	.type	qspi_clk_50, @object
	.size	qspi_clk_50, 4
qspi_clk_50:
	.word	-2147483648
	.type	qspi_clk_80, @object
	.size	qspi_clk_80, 4
qspi_clk_80:
	.word	-2147483648
	.type	qspi_clk_104, @object
	.size	qspi_clk_104, 4
qspi_clk_104:
	.word	-2147483648
	.type	qspi_clk_133, @object
	.size	qspi_clk_133, 4
qspi_clk_133:
	.word	-2147483648
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits

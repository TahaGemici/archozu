	.file	"sum.c"
	.text
	.globl	ADDR_UART
	.data
	.align 8
	.type	ADDR_UART, @object
	.size	ADDR_UART, 8
ADDR_UART:
	.quad	131072
	.globl	ADDR_I2C
	.align 8
	.type	ADDR_I2C, @object
	.size	ADDR_I2C, 8
ADDR_I2C:
	.quad	147456
	.globl	ADDR_QSPI
	.align 8
	.type	ADDR_QSPI, @object
	.size	ADDR_QSPI, 8
ADDR_QSPI:
	.quad	163840
	.globl	ADDR_TIMER
	.align 8
	.type	ADDR_TIMER, @object
	.size	ADDR_TIMER, 8
ADDR_TIMER:
	.quad	180224
	.globl	ADDR_USB
	.align 8
	.type	ADDR_USB, @object
	.size	ADDR_USB, 8
ADDR_USB:
	.quad	196608
	.globl	ADDR_GPIO
	.align 8
	.type	ADDR_GPIO, @object
	.size	ADDR_GPIO, 8
ADDR_GPIO:
	.quad	212992
	.globl	ADDR_INSTR_MEM
	.align 8
	.type	ADDR_INSTR_MEM, @object
	.size	ADDR_INSTR_MEM, 8
ADDR_INSTR_MEM:
	.quad	229376
	.text
	.globl	gpio
	.type	gpio, @function
gpio:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movq	ADDR_GPIO(%rip), %rax
	leaq	4(%rax), %rdx
	movswl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movq	ADDR_GPIO(%rip), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	gpio, .-gpio
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cwtl
	movl	%eax, %edi
	call	gpio
	cwtl
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"main_tests.c"
	.intel_syntax noprefix
	.text
	.globl	left
	.data
	.align 8
	.type	left, @object
	.size	left, 8
left:
	.long	0
	.long	-1071382528
	.globl	right
	.align 8
	.type	right, @object
	.size	right, 8
right:
	.long	0
	.long	-1072693248
	.globl	a
	.bss
	.align 8
	.type	a, @object
	.size	a, 8
a:
	.zero	8
	.globl	b
	.align 8
	.type	b, @object
	.size	b, 8
b:
	.zero	8
	.section	.rodata
.LC5:
	.string	"num of mistakes: "
.LC6:
	.string	"%d"
.LC7:
	.string	"\nnum of tests: "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L2
.L9:
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	jmp	.L3
.L8:
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR a[rip], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR b[rip], xmm0
	add	DWORD PTR -8[rbp], 1
	mov	eax, 0
	call	getResult@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	mov	eax, 0
	call	checker@PLT
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -32[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	comisd	xmm0, xmm1
	jbe	.L4
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -40[rbp]
	comisd	xmm0, QWORD PTR .LC2[rip]
	ja	.L7
.L4:
	add	DWORD PTR -4[rbp], 1
.L7:
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
.L3:
	movsd	xmm0, QWORD PTR .LC4[rip]
	comisd	xmm0, QWORD PTR -24[rbp]
	jnb	.L8
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
.L2:
	movsd	xmm0, QWORD PTR .LC4[rip]
	comisd	xmm0, QWORD PTR -16[rbp]
	jnb	.L9
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	-1071382528
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 8
.LC2:
	.long	-350469331
	.long	-1088801054
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

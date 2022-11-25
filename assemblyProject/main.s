	.file	"main.c"
	.intel_syntax noprefix
	.text
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
	.globl	left
	.align 8
	.type	left, @object
	.size	left, 8
left:
	.zero	8
	.globl	right
	.align 8
	.type	right, @object
	.size	right, 8
right:
	.zero	8
	.section	.rodata
.LC0:
	.string	"Choose input type: "
.LC1:
	.string	"For console input enter 1 "
.LC2:
	.string	"For file input enter 2 "
	.align 8
.LC3:
	.string	"For random generation enter 3 "
.LC4:
	.string	"%d"
	.align 8
.LC5:
	.string	"Incorrect limits of integration!"
.LC6:
	.string	"Incorrect file name!"
.LC7:
	.string	"Incorrect input!"
.LC8:
	.string	"w"
.LC9:
	.string	"output.txt"
.LC10:
	.string	"Result: "
.LC11:
	.string	"%f"
.LC12:
	.string	"\nExpected result: "
.LC13:
	.string	"\nResult: "
.LC14:
	.string	"\nExecution time: "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, 3
	je	.L2
	cmp	eax, 3
	jg	.L3
	cmp	eax, 1
	je	.L4
	cmp	eax, 2
	je	.L5
	jmp	.L3
.L4:
	mov	eax, 0
	call	consoleInput@PLT
	xor	eax, 1
	test	al, al
	je	.L13
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L12
.L5:
	mov	eax, 0
	call	fileInput@PLT
	xor	eax, 1
	test	al, al
	je	.L14
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L12
.L2:
	mov	eax, 0
	call	randomGeneration@PLT
	jmp	.L8
.L3:
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L12
.L13:
	nop
	jmp	.L8
.L14:
	nop
.L8:
	lea	rax, .LC8[rip]
	mov	rsi, rax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -24[rbp], rax
	call	clock@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L10
.L11:
	mov	eax, 0
	call	getResult@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	add	DWORD PTR -12[rbp], 1
.L10:
	cmp	DWORD PTR -12[rbp], 19
	jle	.L11
	call	clock@PLT
	sub	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	eax, 0
	call	checker@PLT
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	lea	rax, .LC10[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	lea	rax, .LC11[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rax, .LC12[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -40[rbp]
	movq	xmm0, rax
	lea	rax, .LC11[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	mov	edx, 9
	mov	esi, 1
	lea	rax, .LC13[rip]
	mov	rdi, rax
	call	fwrite@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC11[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rax
	mov	edx, 18
	mov	esi, 1
	lea	rax, .LC12[rip]
	mov	rdi, rax
	call	fwrite@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	lea	rdx, .LC11[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT
	lea	rax, .LC14[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
.L12:
	leave
	ret
	.size	main, .-main
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

	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Je m'presente je m'appelle henri"
	.align 8
.LC1:
	.string	"--ft_strlen--\nLen strlen : %zu\nLen ft_strlen : %zu\n\n"
	.align 8
.LC2:
	.string	"--ft_strcpy--\nstrcpy : \nSrc : %s\nDest : %s\n\n"
	.align 8
.LC3:
	.string	"ft_strcpy : \nSrc : %s\nDest : %s\n\n"
.LC4:
	.string	"--ft_strcmp--\nstrcmp : %d\n"
.LC5:
	.string	"0xff"
.LC6:
	.string	"0x00"
.LC7:
	.string	"ft_strcmp : %d\n"
.LC8:
	.string	"strcmp : %d\n"
.LC9:
	.string	"ft_strcmp : %d\n\n"
.LC10:
	.string	"lol\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 64
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	mov	DWORD PTR -68[rbp], edi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	r12, rax
	lea	rax, .LC0[rip]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	ft_strlen@PLT
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rbx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	strlen@PLT
	add	rax, 1
	mov	rdx, rax
	sub	rdx, 1
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], 0
	mov	r14, rax
	mov	r15d, 0
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L2:
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
.L3:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L4:
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	ft_strcpy@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	esi, -1
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	ft_strcmp@PLT
	mov	esi, eax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	esi, 1
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	ft_strcmp@PLT
	mov	esi, eax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	esi, 0
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	ft_strcmp@PLT
	mov	esi, eax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, 4
	lea	rax, .LC10[rip]
	mov	rsi, rax
	mov	edi, 1
	call	ft_write@PLT
	mov	edx, 4
	lea	rax, .LC10[rip]
	mov	rsi, rax
	mov	edi, 1
	call	write@PLT
	mov	eax, 0
	mov	rsp, r12
	mov	rdx, QWORD PTR -40[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	lea	rsp, -32[rbp]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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

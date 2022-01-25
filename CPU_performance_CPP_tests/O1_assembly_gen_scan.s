	.file	"assembly_gen_scan.cpp"
	.text
	.globl	_Z20scan_list_with_tablelPhPfS0_
	.type	_Z20scan_list_with_tablelPhPfS0_, @function
_Z20scan_list_with_tablelPhPfS0_:
.LFB0:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L1
	movq	%rcx, %r8
	leaq	(%rcx,%rdi,4), %r10
.L4:
	leaq	8(%rsi), %r9
	leaq	16(%rsi), %rdi
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
.L3:
	addq	$1, %rsi
	movzbl	-1(%rsi), %ecx
	addss	(%rax,%rcx,4), %xmm0
	addq	$1024, %rax
	cmpq	%rsi, %rdi
	jne	.L3
	movss	%xmm0, (%r8)
	addq	$4, %r8
	movq	%r9, %rsi
	cmpq	%r8, %r10
	jne	.L4
.L1:
	rep ret
	.cfi_endproc
.LFE0:
	.size	_Z20scan_list_with_tablelPhPfS0_, .-_Z20scan_list_with_tablelPhPfS0_
	.globl	_Z29scan_list_with_table_unrolledlPhPfS0_
	.type	_Z29scan_list_with_table_unrolledlPhPfS0_, @function
_Z29scan_list_with_table_unrolledlPhPfS0_:
.LFB1:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L7
	movq	%rsi, %rax
	salq	$4, %rdi
	addq	%rdi, %rsi
.L9:
	movzbl	1(%rax), %r8d
	movzbl	(%rax), %edi
	movss	1024(%rdx,%r8,4), %xmm0
	addss	(%rdx,%rdi,4), %xmm0
	movzbl	2(%rax), %edi
	addss	2048(%rdx,%rdi,4), %xmm0
	movzbl	3(%rax), %edi
	addss	3072(%rdx,%rdi,4), %xmm0
	movzbl	4(%rax), %edi
	addss	4096(%rdx,%rdi,4), %xmm0
	movzbl	5(%rax), %edi
	addss	5120(%rdx,%rdi,4), %xmm0
	movzbl	6(%rax), %r8d
	addss	6144(%rdx,%r8,4), %xmm0
	movzbl	7(%rax), %r8d
	addss	7168(%rdx,%r8,4), %xmm0
	movzbl	8(%rax), %r8d
	addss	8192(%rdx,%r8,4), %xmm0
	movzbl	9(%rax), %r8d
	addss	9216(%rdx,%r8,4), %xmm0
	movzbl	10(%rax), %r8d
	addss	10240(%rdx,%r8,4), %xmm0
	movzbl	11(%rax), %r8d
	addss	11264(%rdx,%r8,4), %xmm0
	movzbl	12(%rax), %r8d
	addss	12288(%rdx,%r8,4), %xmm0
	movzbl	13(%rax), %r8d
	addss	13312(%rdx,%r8,4), %xmm0
	movzbl	14(%rax), %r8d
	addss	14336(%rdx,%r8,4), %xmm0
	movzbl	15(%rax), %r8d
	addss	15360(%rdx,%r8,4), %xmm0
	movss	%xmm0, (%rcx)
	addq	$16, %rax
	addq	$4, %rcx
	cmpq	%rsi, %rax
	jne	.L9
.L7:
	rep ret
	.cfi_endproc
.LFE1:
	.size	_Z29scan_list_with_table_unrolledlPhPfS0_, .-_Z29scan_list_with_table_unrolledlPhPfS0_
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	$1600000000, %edi
	call	_Znam
	movq	%rax, %rbx
	movl	$16384, %edi
	call	_Znam
	movq	%rax, %rbp
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, %r13
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, %r12
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movl	$100000000, %edi
	call	_Z20scan_list_with_tablelPhPfS0_
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movl	$100000000, %edi
	call	_Z29scan_list_with_table_unrolledlPhPfS0_
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

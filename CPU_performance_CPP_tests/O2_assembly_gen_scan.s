	.file	"assembly_gen_scan.cpp"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	_Z20scan_list_with_tablelPhPfS0_
	.type	_Z20scan_list_with_tablelPhPfS0_, @function
_Z20scan_list_with_tablelPhPfS0_:
.LFB0:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L1
	pxor	%xmm1, %xmm1
	leaq	(%rcx,%rdi,4), %r10
	.p2align 4,,10
	.p2align 3
.L5:
	leaq	8(%rsi), %r9
	leaq	16(%rsi), %r8
	movq	%rdx, %rax
	movaps	%xmm1, %xmm0
	.p2align 4,,10
	.p2align 3
.L3:
	addq	$1, %rsi
	movzbl	-1(%rsi), %edi
	addss	(%rax,%rdi,4), %xmm0
	addq	$1024, %rax
	cmpq	%r8, %rsi
	jne	.L3
	movss	%xmm0, (%rcx)
	addq	$4, %rcx
	movq	%r9, %rsi
	cmpq	%rcx, %r10
	jne	.L5
.L1:
	rep ret
	.cfi_endproc
.LFE0:
	.size	_Z20scan_list_with_tablelPhPfS0_, .-_Z20scan_list_with_tablelPhPfS0_
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z29scan_list_with_table_unrolledlPhPfS0_
	.type	_Z29scan_list_with_table_unrolledlPhPfS0_, @function
_Z29scan_list_with_table_unrolledlPhPfS0_:
.LFB1:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L8
	salq	$4, %rdi
	addq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	1(%rsi), %r8d
	movzbl	(%rsi), %eax
	addq	$16, %rsi
	addq	$4, %rcx
	movss	1024(%rdx,%r8,4), %xmm0
	addss	(%rdx,%rax,4), %xmm0
	movzbl	-14(%rsi), %eax
	addss	2048(%rdx,%rax,4), %xmm0
	movzbl	-13(%rsi), %eax
	addss	3072(%rdx,%rax,4), %xmm0
	movzbl	-12(%rsi), %eax
	addss	4096(%rdx,%rax,4), %xmm0
	movzbl	-11(%rsi), %eax
	addss	5120(%rdx,%rax,4), %xmm0
	movzbl	-10(%rsi), %eax
	addss	6144(%rdx,%rax,4), %xmm0
	movzbl	-9(%rsi), %eax
	addss	7168(%rdx,%rax,4), %xmm0
	movzbl	-8(%rsi), %eax
	addss	8192(%rdx,%rax,4), %xmm0
	movzbl	-7(%rsi), %eax
	addss	9216(%rdx,%rax,4), %xmm0
	movzbl	-6(%rsi), %eax
	addss	10240(%rdx,%rax,4), %xmm0
	movzbl	-5(%rsi), %eax
	addss	11264(%rdx,%rax,4), %xmm0
	movzbl	-4(%rsi), %eax
	addss	12288(%rdx,%rax,4), %xmm0
	movzbl	-3(%rsi), %eax
	addss	13312(%rdx,%rax,4), %xmm0
	movzbl	-2(%rsi), %eax
	addss	14336(%rdx,%rax,4), %xmm0
	movzbl	-1(%rsi), %eax
	addss	15360(%rdx,%rax,4), %xmm0
	movss	%xmm0, -4(%rcx)
	cmpq	%rsi, %rdi
	jne	.L11
.L8:
	rep ret
	.cfi_endproc
.LFE1:
	.size	_Z29scan_list_with_table_unrolledlPhPfS0_, .-_Z29scan_list_with_table_unrolledlPhPfS0_
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$1600000000, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	_Znam
	movl	$16384, %edi
	movq	%rax, %rbp
	call	_Znam
	movl	$400000000, %edi
	movq	%rax, %r12
	call	_Znam
	movl	$400000000, %edi
	movq	%rax, %rbx
	call	_Znam
	pxor	%xmm1, %xmm1
	leaq	800000000(%rbp), %rcx
	movq	%rbx, %r11
	movq	%rbp, %rdi
	.p2align 4,,10
	.p2align 3
.L14:
	leaq	8(%rdi), %rbx
	leaq	16(%rdi), %r10
	movq	%r12, %r8
	movaps	%xmm1, %xmm0
	.p2align 4,,10
	.p2align 3
.L13:
	addq	$1, %rdi
	movzbl	-1(%rdi), %r9d
	addss	(%r8,%r9,4), %xmm0
	addq	$1024, %r8
	cmpq	%r10, %rdi
	jne	.L13
	movss	%xmm0, (%r11)
	addq	$4, %r11
	cmpq	%rcx, %rbx
	movq	%rbx, %rdi
	jne	.L14
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movl	$100000000, %edi
	call	_Z29scan_list_with_table_unrolledlPhPfS0_
	popq	%rbx
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

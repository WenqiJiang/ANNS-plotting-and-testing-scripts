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
	jle	.L7
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	11264(%rdx), %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	(%rcx,%rdi,4), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	2048(%rdx), %r15
	pxor	%xmm1, %xmm1
	leaq	3072(%rdx), %r14
	movq	%rax, -32(%rsp)
	leaq	12288(%rdx), %rax
	leaq	4096(%rdx), %r13
	leaq	5120(%rdx), %r12
	leaq	6144(%rdx), %rbp
	leaq	7168(%rdx), %rbx
	movq	%rax, -24(%rsp)
	leaq	13312(%rdx), %rax
	leaq	8192(%rdx), %r11
	leaq	9216(%rdx), %r10
	leaq	10240(%rdx), %r9
	leaq	14336(%rdx), %r8
	movq	%rax, -16(%rsp)
	leaq	15360(%rdx), %rax
	movq	%rdi, -40(%rsp)
	movq	%rax, -8(%rsp)
	.p2align 4,,10
	.p2align 3
.L4:
	addq	$8, %rsi
	movzbl	-8(%rsi), %edi
	movq	-32(%rsp), %rax
	addq	$4, %rcx
	movss	(%rdx,%rdi,4), %xmm0
	movzbl	-7(%rsi), %edi
	addss	%xmm1, %xmm0
	addss	1024(%rdx,%rdi,4), %xmm0
	movzbl	-6(%rsi), %edi
	addss	(%r15,%rdi,4), %xmm0
	movzbl	-5(%rsi), %edi
	addss	(%r14,%rdi,4), %xmm0
	movzbl	-4(%rsi), %edi
	addss	0(%r13,%rdi,4), %xmm0
	movzbl	-3(%rsi), %edi
	addss	(%r12,%rdi,4), %xmm0
	movzbl	-2(%rsi), %edi
	addss	0(%rbp,%rdi,4), %xmm0
	movzbl	-1(%rsi), %edi
	addss	(%rbx,%rdi,4), %xmm0
	movzbl	(%rsi), %edi
	addss	(%r11,%rdi,4), %xmm0
	movzbl	1(%rsi), %edi
	addss	(%r10,%rdi,4), %xmm0
	movzbl	2(%rsi), %edi
	addss	(%r9,%rdi,4), %xmm0
	movzbl	3(%rsi), %edi
	addss	(%rax,%rdi,4), %xmm0
	movzbl	4(%rsi), %edi
	movq	-24(%rsp), %rax
	addss	(%rax,%rdi,4), %xmm0
	movzbl	5(%rsi), %edi
	movq	-16(%rsp), %rax
	addss	(%rax,%rdi,4), %xmm0
	movzbl	6(%rsi), %edi
	addss	(%r8,%rdi,4), %xmm0
	movzbl	7(%rsi), %edi
	movq	-8(%rsp), %rax
	addss	(%rax,%rdi,4), %xmm0
	movss	%xmm0, -4(%rcx)
	cmpq	-40(%rsp), %rcx
	jne	.L4
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L7:
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
	jle	.L9
	salq	$4, %rdi
	addq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L12:
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
	jne	.L12
.L9:
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1600000000, %edi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	call	_Znam
	movl	$16384, %edi
	movq	%rax, 96(%rsp)
	call	_Znam
	movl	$400000000, %edi
	movq	%rax, %rbp
	call	_Znam
	movl	$400000000, %edi
	movq	%rax, %rbx
	leaq	5120(%rbp), %r12
	call	_Znam
	leaq	6144(%rbp), %rcx
	movq	96(%rsp), %rsi
	movq	%rax, 104(%rsp)
	movq	%r12, 88(%rsp)
	pxor	%xmm1, %xmm1
	movq	%rcx, 8(%rsp)
	leaq	7168(%rbp), %rcx
	leaq	2048(%rbp), %r15
	movq	%rsi, %rax
	movzbl	1(%rsi), %edx
	movzbl	2(%rsi), %r11d
	movq	%rcx, 16(%rsp)
	leaq	8192(%rbp), %rcx
	addq	$800000000, %rax
	movq	%rax, (%rsp)
	movzbl	3(%rsi), %r10d
	movq	%rsi, %rax
	movq	%rcx, 24(%rsp)
	leaq	9216(%rbp), %rcx
	movzbl	4(%rsi), %r9d
	movzbl	5(%rsi), %r8d
	movzbl	6(%rsi), %edi
	leaq	3072(%rbp), %r14
	movq	%rcx, 32(%rsp)
	leaq	10240(%rbp), %rcx
	leaq	4096(%rbp), %r13
	movq	%rcx, 40(%rsp)
	leaq	11264(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	leaq	12288(%rbp), %rcx
	movq	%rcx, 56(%rsp)
	leaq	13312(%rbp), %rcx
	movq	%rcx, 64(%rsp)
	leaq	14336(%rbp), %rcx
	movq	%rcx, 72(%rsp)
	leaq	15360(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	movq	%rbx, %rcx
	movzbl	(%rsi), %ebx
	movzbl	7(%rsi), %esi
	movq	80(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L14:
	movss	0(%rbp,%rbx,4), %xmm0
	movq	88(%rsp), %rbx
	addq	$8, %rax
	addss	%xmm1, %xmm0
	addq	$4, %rcx
	addss	1024(%rbp,%rdx,4), %xmm0
	movq	8(%rsp), %rdx
	addss	(%r15,%r11,4), %xmm0
	movzbl	2(%rax), %r11d
	addss	(%r14,%r10,4), %xmm0
	movzbl	3(%rax), %r10d
	addss	0(%r13,%r9,4), %xmm0
	movzbl	4(%rax), %r9d
	addss	(%rbx,%r8,4), %xmm0
	movq	16(%rsp), %rbx
	movzbl	5(%rax), %r8d
	addss	(%rdx,%rdi,4), %xmm0
	movzbl	1(%rax), %edx
	movq	32(%rsp), %rdi
	addss	(%rbx,%rsi,4), %xmm0
	movzbl	(%rax), %ebx
	movq	24(%rsp), %rsi
	addss	(%rsi,%rbx,4), %xmm0
	movq	40(%rsp), %rsi
	addss	(%rdi,%rdx,4), %xmm0
	movq	48(%rsp), %rdi
	addss	(%rsi,%r11,4), %xmm0
	movq	56(%rsp), %rsi
	addss	(%rdi,%r10,4), %xmm0
	movq	64(%rsp), %rdi
	addss	(%rsi,%r9,4), %xmm0
	movq	72(%rsp), %rsi
	addss	(%rdi,%r8,4), %xmm0
	movzbl	6(%rax), %edi
	addss	(%rsi,%rdi,4), %xmm0
	movzbl	7(%rax), %esi
	addss	(%r12,%rsi,4), %xmm0
	movss	%xmm0, -4(%rcx)
	cmpq	(%rsp), %rax
	jne	.L14
	movq	104(%rsp), %rcx
	movq	96(%rsp), %rsi
	movq	%rbp, %rdx
	movl	$100000000, %edi
	call	_Z29scan_list_with_table_unrolledlPhPfS0_
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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

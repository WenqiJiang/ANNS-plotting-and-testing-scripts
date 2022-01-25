	.file	"assembly_gen_scan.cpp"
	.text
	.globl	_Z20scan_list_with_tablelPhPfS0_
	.type	_Z20scan_list_with_tablelPhPfS0_, @function
_Z20scan_list_with_tablelPhPfS0_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -32(%rbp)
.L5:
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.L6
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	addq	$8, -64(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
.L4:
	cmpq	$15, -8(%rbp)
	jg	.L3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-36(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	addq	$1024, -16(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L4
.L3:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -32(%rbp)
	jmp	.L5
.L6:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z20scan_list_with_tablelPhPfS0_, .-_Z20scan_list_with_tablelPhPfS0_
	.globl	_Z29scan_list_with_table_unrolledlPhPfS0_
	.type	_Z29scan_list_with_table_unrolledlPhPfS0_, @function
_Z29scan_list_with_table_unrolledlPhPfS0_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-264(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -208(%rbp)
	movq	-264(%rbp), %rax
	addq	$2048, %rax
	movq	%rax, -200(%rbp)
	movq	-264(%rbp), %rax
	addq	$3072, %rax
	movq	%rax, -192(%rbp)
	movq	-264(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -184(%rbp)
	movq	-264(%rbp), %rax
	addq	$5120, %rax
	movq	%rax, -176(%rbp)
	movq	-264(%rbp), %rax
	addq	$6144, %rax
	movq	%rax, -168(%rbp)
	movq	-264(%rbp), %rax
	addq	$7168, %rax
	movq	%rax, -160(%rbp)
	movq	-264(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -152(%rbp)
	movq	-264(%rbp), %rax
	addq	$9216, %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	addq	$10240, %rax
	movq	%rax, -136(%rbp)
	movq	-264(%rbp), %rax
	addq	$11264, %rax
	movq	%rax, -128(%rbp)
	movq	-264(%rbp), %rax
	addq	$12288, %rax
	movq	%rax, -120(%rbp)
	movq	-264(%rbp), %rax
	addq	$13312, %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	addq	$14336, %rax
	movq	%rax, -104(%rbp)
	movq	-264(%rbp), %rax
	addq	$15360, %rax
	movq	%rax, -96(%rbp)
	movq	$0, -232(%rbp)
.L9:
	movq	-232(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jge	.L11
	movq	-232(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-88(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-88(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-88(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-88(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-88(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-88(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-88(%rbp), %rax
	addq	$13, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-88(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-88(%rbp), %rax
	addq	$15, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-80(%rbp), %xmm1
	movss	-76(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-72(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-68(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-64(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-60(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-52(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-48(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-44(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-32(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -236(%rbp)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movss	-236(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -232(%rbp)
	jmp	.L9
.L11:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z29scan_list_with_table_unrolledlPhPfS0_, .-_Z29scan_list_with_table_unrolledlPhPfS0_
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$100000000, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -32(%rbp)
	movl	$16384, %edi
	call	_Znam
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movabsq	$2287828610704211968, %rdx
	cmpq	%rdx, %rax
	ja	.L13
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movabsq	$2287828610704211968, %rdx
	cmpq	%rdx, %rax
	ja	.L15
	jmp	.L18
.L13:
	call	__cxa_throw_bad_array_new_length
.L18:
	salq	$2, %rax
	jmp	.L19
.L15:
	call	__cxa_throw_bad_array_new_length
.L19:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_Z20scan_list_with_tablelPhPfS0_
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_Z29scan_list_with_table_unrolledlPhPfS0_
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

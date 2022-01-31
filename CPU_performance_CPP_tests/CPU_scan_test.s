	.file	"CPU_scan_test.cpp"
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1253:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1253:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LCOLDE0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTE0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z20scan_list_with_tablemPhPfS0_
	.type	_Z20scan_list_with_tablemPhPfS0_, @function
_Z20scan_list_with_tablemPhPfS0_:
.LFB1785:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L8
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
.L5:
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
	jne	.L5
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
.L8:
	rep ret
	.cfi_endproc
.LFE1785:
	.size	_Z20scan_list_with_tablemPhPfS0_, .-_Z20scan_list_with_tablemPhPfS0_
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z29scan_list_with_table_unrolledmPhPfS0_
	.type	_Z29scan_list_with_table_unrolledmPhPfS0_, @function
_Z29scan_list_with_table_unrolledmPhPfS0_:
.LFB1786:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L10
	salq	$4, %rdi
	addq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L13:
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
	jne	.L13
.L10:
	rep ret
	.cfi_endproc
.LFE1786:
	.size	_Z29scan_list_with_table_unrolledmPhPfS0_, .-_Z29scan_list_with_table_unrolledmPhPfS0_
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	_Z36scan_list_with_table_unrolled_no_addmPhPfS0_
	.type	_Z36scan_list_with_table_unrolled_no_addmPhPfS0_, @function
_Z36scan_list_with_table_unrolled_no_addmPhPfS0_:
.LFB1787:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L15
	movq	%rdi, %r8
	salq	$4, %r8
	addq	%rsi, %r8
	.p2align 4,,10
	.p2align 3
.L16:
	movzbl	(%rsi), %eax
	addq	$16, %rsi
	movss	(%rdx,%rax,4), %xmm14
	movzbl	-15(%rsi), %eax
	movss	1024(%rdx,%rax,4), %xmm15
	movzbl	-14(%rsi), %eax
	movss	2048(%rdx,%rax,4), %xmm13
	movzbl	-13(%rsi), %eax
	movss	3072(%rdx,%rax,4), %xmm12
	movzbl	-12(%rsi), %eax
	movss	4096(%rdx,%rax,4), %xmm11
	movzbl	-11(%rsi), %eax
	movss	5120(%rdx,%rax,4), %xmm10
	movzbl	-10(%rsi), %eax
	movss	6144(%rdx,%rax,4), %xmm9
	movzbl	-9(%rsi), %eax
	movss	7168(%rdx,%rax,4), %xmm8
	movzbl	-8(%rsi), %eax
	movss	8192(%rdx,%rax,4), %xmm7
	movzbl	-7(%rsi), %eax
	movss	9216(%rdx,%rax,4), %xmm6
	movzbl	-6(%rsi), %eax
	movss	10240(%rdx,%rax,4), %xmm5
	movzbl	-5(%rsi), %eax
	movss	11264(%rdx,%rax,4), %xmm4
	movzbl	-4(%rsi), %eax
	movss	12288(%rdx,%rax,4), %xmm3
	movzbl	-3(%rsi), %eax
	movss	13312(%rdx,%rax,4), %xmm2
	movzbl	-2(%rsi), %eax
	movss	14336(%rdx,%rax,4), %xmm1
	movzbl	-1(%rsi), %eax
	cmpq	%rsi, %r8
	movss	15360(%rdx,%rax,4), %xmm0
	jne	.L16
.L15:
	addss	%xmm15, %xmm14
	addss	%xmm14, %xmm13
	addss	%xmm13, %xmm12
	addss	%xmm12, %xmm11
	addss	%xmm11, %xmm10
	addss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	addss	%xmm8, %xmm7
	addss	%xmm7, %xmm6
	addss	%xmm6, %xmm5
	addss	%xmm5, %xmm4
	addss	%xmm4, %xmm3
	addss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rcx,%rdi,4)
	ret
	.cfi_endproc
.LFE1787:
	.size	_Z36scan_list_with_table_unrolled_no_addmPhPfS0_, .-_Z36scan_list_with_table_unrolled_no_addmPhPfS0_
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z48scan_list_with_table_unrolled_no_add_small_tablemPhPfS0_
	.type	_Z48scan_list_with_table_unrolled_no_add_small_tablemPhPfS0_, @function
_Z48scan_list_with_table_unrolled_no_add_small_tablemPhPfS0_:
.LFB1788:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L22
	movq	%rdi, %r8
	salq	$4, %r8
	addq	%rsi, %r8
	.p2align 4,,10
	.p2align 3
.L23:
	movzbl	(%rsi), %eax
	addq	$16, %rsi
	movss	(%rdx,%rax,4), %xmm14
	movzbl	-15(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm15
	movzbl	-14(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm13
	movzbl	-13(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm12
	movzbl	-12(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm11
	movzbl	-11(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm10
	movzbl	-10(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm9
	movzbl	-9(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm8
	movzbl	-8(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm7
	movzbl	-7(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm6
	movzbl	-6(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm5
	movzbl	-5(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm4
	movzbl	-4(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm3
	movzbl	-3(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm2
	movzbl	-2(%rsi), %eax
	movss	(%rdx,%rax,4), %xmm1
	movzbl	-1(%rsi), %eax
	cmpq	%rsi, %r8
	movss	(%rdx,%rax,4), %xmm0
	jne	.L23
.L22:
	addss	%xmm15, %xmm14
	addss	%xmm14, %xmm13
	addss	%xmm13, %xmm12
	addss	%xmm12, %xmm11
	addss	%xmm11, %xmm10
	addss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	addss	%xmm8, %xmm7
	addss	%xmm7, %xmm6
	addss	%xmm6, %xmm5
	addss	%xmm5, %xmm4
	addss	%xmm4, %xmm3
	addss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rcx,%rdi,4)
	ret
	.cfi_endproc
.LFE1788:
	.size	_Z48scan_list_with_table_unrolled_no_add_small_tablemPhPfS0_, .-_Z48scan_list_with_table_unrolled_no_add_small_tablemPhPfS0_
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Z57scan_list_with_table_unrolled_no_add_small_table_codes_ppmPhPfS0_
	.type	_Z57scan_list_with_table_unrolled_no_add_small_table_codes_ppmPhPfS0_, @function
_Z57scan_list_with_table_unrolled_no_add_small_table_codes_ppmPhPfS0_:
.LFB1789:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L29
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L30:
	addq	$16, %rsi
	movzbl	-16(%rsi), %r8d
	addq	$1, %rax
	cmpq	%rax, %rdi
	movss	(%rdx,%r8,4), %xmm14
	movzbl	-15(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm15
	movzbl	-14(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm13
	movzbl	-13(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm12
	movzbl	-12(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm11
	movzbl	-11(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm10
	movzbl	-10(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm9
	movzbl	-9(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm8
	movzbl	-8(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm7
	movzbl	-7(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm6
	movzbl	-6(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm5
	movzbl	-5(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm4
	movzbl	-4(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm3
	movzbl	-3(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm2
	movzbl	-2(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm1
	movzbl	-1(%rsi), %r8d
	movss	(%rdx,%r8,4), %xmm0
	jne	.L30
.L29:
	addss	%xmm15, %xmm14
	addss	%xmm14, %xmm13
	addss	%xmm13, %xmm12
	addss	%xmm12, %xmm11
	addss	%xmm11, %xmm10
	addss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	addss	%xmm8, %xmm7
	addss	%xmm7, %xmm6
	addss	%xmm6, %xmm5
	addss	%xmm5, %xmm4
	addss	%xmm4, %xmm3
	addss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rcx,%rdi,4)
	ret
	.cfi_endproc
.LFE1789:
	.size	_Z57scan_list_with_table_unrolled_no_add_small_table_codes_ppmPhPfS0_, .-_Z57scan_list_with_table_unrolled_no_add_small_table_codes_ppmPhPfS0_
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Scanning "
.LC8:
	.string	" PQ codes (16 bytes per vec)\n"
.LC9:
	.string	"Iteration "
.LC10:
	.string	": "
.LC12:
	.string	"Faiss function: "
.LC13:
	.string	" seconds\n"
.LC14:
	.string	"Unrolled function: "
.LC15:
	.string	"Unrolled function (no add): "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC16:
	.string	"Unrolled function (no add small table) "
	.align 8
.LC17:
	.string	"Unrolled function (no add small table codes pp) "
	.section	.text.unlikely
.LCOLDB18:
	.section	.text.startup,"ax",@progbits
.LHOTB18:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1790:
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	call	_Znam
	movl	$16384, %edi
	movq	%rax, %rbx
	movq	%rax, 104(%rsp)
	call	_Znam
	movl	$400000000, %edi
	movq	%rax, %r12
	call	_Znam
	movl	$9, %edx
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, 112(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$100000000, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertImEERSoT_
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rax
	pxor	%xmm1, %xmm1
	leaq	800000000(%rbx), %rbx
	addq	$1600000000, %rax
	movl	$0, 152(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rbx, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L50:
	movl	$10, %edx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	movss	%xmm1, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	152(%rsp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movq	%rax, %rbx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movss	8(%rsp), %xmm1
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L40
	cmpb	$0, 56(%rbp)
	je	.L37
	movsbl	67(%rbp), %esi
.L38:
	movq	%rbx, %rdi
	movss	%xmm1, 136(%rsp)
	leaq	7168(%r12), %rbp
	call	_ZNSo3putEc
	movq	%rax, %rdi
	leaq	4096(%r12), %r15
	leaq	5120(%r12), %r14
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 128(%rsp)
	leaq	3072(%r12), %rax
	movq	104(%rsp), %rdx
	movq	%rbp, 96(%rsp)
	leaq	6144(%r12), %r13
	movq	%rax, 8(%rsp)
	leaq	2048(%r12), %rax
	movzbl	(%rdx), %r11d
	movzbl	1(%rdx), %r10d
	movq	%rax, 16(%rsp)
	leaq	8192(%r12), %rax
	movzbl	2(%rdx), %r9d
	movzbl	3(%rdx), %r8d
	movzbl	4(%rdx), %edi
	movq	%rax, 24(%rsp)
	leaq	9216(%r12), %rax
	movzbl	5(%rdx), %esi
	movzbl	6(%rdx), %ecx
	movss	136(%rsp), %xmm1
	movq	%rax, 32(%rsp)
	leaq	10240(%r12), %rax
	movq	%rax, 40(%rsp)
	leaq	11264(%r12), %rax
	movq	%rax, 48(%rsp)
	leaq	12288(%r12), %rax
	movq	%rax, 56(%rsp)
	leaq	13312(%r12), %rax
	movq	%rax, 64(%rsp)
	leaq	14336(%r12), %rax
	movq	%rax, 72(%rsp)
	leaq	15360(%r12), %rax
	movq	%rax, 80(%rsp)
	movq	112(%rsp), %rax
	movq	80(%rsp), %rbp
	movq	%rax, 120(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rax
	movzbl	7(%rdx), %edx
	.p2align 4,,10
	.p2align 3
.L39:
	movss	(%r12,%r11,4), %xmm0
	addq	$8, %rax
	movzbl	(%rax), %r11d
	addss	%xmm1, %xmm0
	addq	$4, %rbx
	addss	1024(%r12,%r10,4), %xmm0
	movq	16(%rsp), %r10
	addss	(%r10,%r9,4), %xmm0
	movq	8(%rsp), %r9
	movzbl	1(%rax), %r10d
	addss	(%r9,%r8,4), %xmm0
	movzbl	2(%rax), %r9d
	movzbl	3(%rax), %r8d
	addss	(%r15,%rdi,4), %xmm0
	movq	96(%rsp), %rdi
	addss	(%r14,%rsi,4), %xmm0
	movq	32(%rsp), %rsi
	addss	0(%r13,%rcx,4), %xmm0
	movq	64(%rsp), %rcx
	addss	(%rdi,%rdx,4), %xmm0
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rdi
	addss	(%rdx,%r11,4), %xmm0
	movq	48(%rsp), %rdx
	addss	(%rsi,%r10,4), %xmm0
	movq	56(%rsp), %rsi
	addss	(%rdi,%r9,4), %xmm0
	movzbl	4(%rax), %edi
	addss	(%rdx,%r8,4), %xmm0
	movq	72(%rsp), %rdx
	addss	(%rsi,%rdi,4), %xmm0
	movzbl	5(%rax), %esi
	addss	(%rcx,%rsi,4), %xmm0
	movzbl	6(%rax), %ecx
	addss	(%rdx,%rcx,4), %xmm0
	movzbl	7(%rax), %edx
	addss	0(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -4(%rbx)
	cmpq	88(%rsp), %rax
	jne	.L39
	movss	%xmm1, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	128(%rsp), %rax
	movabsq	$4835703278458516699, %rdx
	movl	$.LC12, %esi
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	%rdx, %rax
	movl	$16, %edx
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$10, %edx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	152(%rsp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movq	%rax, %rbx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L40
	cmpb	$0, 56(%rbp)
	movss	16(%rsp), %xmm1
	je	.L41
	movsbl	67(%rbp), %esi
.L42:
	movq	%rbx, %rdi
	movss	%xmm1, 8(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	120(%rsp), %rdx
	movq	%rax, %rbx
	movq	144(%rsp), %rsi
	movq	104(%rsp), %rax
	movss	8(%rsp), %xmm1
	.p2align 4,,10
	.p2align 3
.L43:
	movzbl	1(%rax), %edi
	movzbl	(%rax), %ecx
	addq	$16, %rax
	addq	$4, %rdx
	movss	1024(%r12,%rdi,4), %xmm0
	addss	(%r12,%rcx,4), %xmm0
	movzbl	-14(%rax), %ecx
	addss	2048(%r12,%rcx,4), %xmm0
	movzbl	-13(%rax), %ecx
	addss	3072(%r12,%rcx,4), %xmm0
	movzbl	-12(%rax), %ecx
	addss	4096(%r12,%rcx,4), %xmm0
	movzbl	-11(%rax), %ecx
	addss	5120(%r12,%rcx,4), %xmm0
	movzbl	-10(%rax), %ecx
	addss	6144(%r12,%rcx,4), %xmm0
	movzbl	-9(%rax), %ecx
	addss	7168(%r12,%rcx,4), %xmm0
	movzbl	-8(%rax), %ecx
	addss	8192(%r12,%rcx,4), %xmm0
	movzbl	-7(%rax), %ecx
	addss	9216(%r12,%rcx,4), %xmm0
	movzbl	-6(%rax), %ecx
	addss	10240(%r12,%rcx,4), %xmm0
	movzbl	-5(%rax), %ecx
	addss	11264(%r12,%rcx,4), %xmm0
	movzbl	-4(%rax), %ecx
	addss	12288(%r12,%rcx,4), %xmm0
	movzbl	-3(%rax), %ecx
	addss	13312(%r12,%rcx,4), %xmm0
	movzbl	-2(%rax), %ecx
	addss	14336(%r12,%rcx,4), %xmm0
	movzbl	-1(%rax), %ecx
	addss	15360(%r12,%rcx,4), %xmm0
	movss	%xmm0, -4(%rdx)
	cmpq	%rax, %rsi
	jne	.L43
	movss	%xmm1, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movl	$.LC14, %esi
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	movl	$_ZSt4cout, %edi
	movq	%rdx, %rax
	movl	$19, %edx
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$10, %edx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	152(%rsp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movq	%rax, %rbx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L40
	cmpb	$0, 56(%rbp)
	movss	16(%rsp), %xmm1
	je	.L44
	movsbl	67(%rbp), %esi
.L45:
	movq	%rbx, %rdi
	movss	%xmm1, 156(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	104(%rsp), %rdi
	movq	%rax, 32(%rsp)
	movzbl	1599999984(%rdi), %eax
	movzbl	1599999986(%rdi), %r13d
	movzbl	1599999987(%rdi), %r14d
	movzbl	1599999988(%rdi), %r15d
	movss	(%r12,%rax,4), %xmm2
	movzbl	1599999985(%rdi), %eax
	movss	%xmm2, 24(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rdi, %rax
	movzbl	1599999989(%rdi), %edi
	movzbl	1599999993(%rax), %r8d
	movzbl	1599999994(%rax), %r11d
	movzbl	1599999995(%rax), %r9d
	movzbl	1599999996(%rax), %r10d
	movzbl	1599999990(%rax), %esi
	movzbl	1599999991(%rax), %ecx
	movzbl	1599999992(%rax), %edx
	movzbl	1599999997(%rax), %ebx
	movzbl	1599999998(%rax), %ebp
	movzbl	1599999999(%rax), %eax
	movq	%r8, 72(%rsp)
	movq	%r11, 80(%rsp)
	movq	%r9, 96(%rsp)
	movq	%r10, 120(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rbx, 128(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rax, 136(%rsp)
	movq	8(%rsp), %rax
	movss	2048(%r12,%r13,4), %xmm0
	addss	1024(%r12,%rax,4), %xmm2
	movq	16(%rsp), %rax
	addss	%xmm2, %xmm0
	addss	3072(%r12,%r14,4), %xmm0
	addss	4096(%r12,%r15,4), %xmm0
	addss	5120(%r12,%rdi,4), %xmm0
	addss	6144(%r12,%rsi,4), %xmm0
	addss	7168(%r12,%rcx,4), %xmm0
	addss	8192(%r12,%rdx,4), %xmm0
	addss	9216(%r12,%r8,4), %xmm0
	addss	10240(%r12,%r11,4), %xmm0
	addss	11264(%r12,%r9,4), %xmm0
	addss	12288(%r12,%r10,4), %xmm0
	addss	13312(%r12,%rbx,4), %xmm0
	addss	14336(%r12,%rbp,4), %xmm0
	addss	15360(%r12,%rax,4), %xmm0
	movq	112(%rsp), %rax
	movss	%xmm0, 399999996(%rax)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	32(%rsp), %rax
	movabsq	$4835703278458516699, %rdx
	movl	$.LC15, %esi
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	%rdx, %rax
	movl	$28, %edx
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	16(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$10, %edx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	152(%rsp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movq	%rax, %rbx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rax
	testq	%rax, %rax
	je	.L40
	cmpb	$0, 56(%rax)
	movss	156(%rsp), %xmm1
	je	.L46
	movsbl	67(%rax), %esi
.L47:
	movq	%rbx, %rdi
	movss	%xmm1, 16(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbx
	movq	8(%rsp), %rax
	movss	24(%rsp), %xmm0
	addss	(%r12,%rax,4), %xmm0
	movq	40(%rsp), %rax
	addss	(%r12,%r13,4), %xmm0
	addss	(%r12,%r14,4), %xmm0
	addss	(%r12,%r15,4), %xmm0
	addss	(%r12,%rax,4), %xmm0
	movq	48(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	56(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	64(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	72(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	80(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	96(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	120(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	128(%rsp), %rax
	addss	(%r12,%rax,4), %xmm0
	movq	136(%rsp), %rax
	addss	(%r12,%rbp,4), %xmm0
	addss	(%r12,%rax,4), %xmm0
	movq	112(%rsp), %rax
	movss	%xmm0, 399999996(%rax)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movl	$.LC16, %esi
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	movl	$_ZSt4cout, %edi
	movq	%rdx, %rax
	movl	$39, %edx
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$10, %edx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	152(%rsp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movq	%rax, %rbx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L40
	cmpb	$0, 56(%rbp)
	movss	16(%rsp), %xmm1
	je	.L48
	movsbl	67(%rbp), %esi
.L49:
	movq	%rbx, %rdi
	movss	%xmm1, 16(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movl	$.LC17, %esi
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	movl	$_ZSt4cout, %edi
	movq	%rdx, %rax
	movl	$48, %edx
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, 152(%rsp)
	movss	16(%rsp), %xmm1
	movl	152(%rsp), %eax
	cmpl	$10, %eax
	jne	.L50
	addq	$168, %rsp
	.cfi_remember_state
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
.L48:
	.cfi_restore_state
	movq	%rbp, %rdi
	movss	%xmm1, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movss	8(%rsp), %xmm1
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L49
	movq	%rbp, %rdi
	call	*%rax
	movss	8(%rsp), %xmm1
	movsbl	%al, %esi
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%rax, %rdi
	movss	%xmm1, 32(%rsp)
	movq	%rax, 16(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	16(%rsp), %rax
	movl	$10, %esi
	movss	32(%rsp), %xmm1
	movq	(%rax), %rdx
	movq	48(%rdx), %rdx
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rdx
	je	.L47
	movss	%xmm1, 16(%rsp)
	movq	%rax, %rdi
	call	*%rdx
	movss	16(%rsp), %xmm1
	movsbl	%al, %esi
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L44:
	movq	%rbp, %rdi
	movss	%xmm1, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movss	8(%rsp), %xmm1
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L45
	movq	%rbp, %rdi
	call	*%rax
	movss	8(%rsp), %xmm1
	movsbl	%al, %esi
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L37:
	movq	%rbp, %rdi
	movss	%xmm1, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movss	8(%rsp), %xmm1
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L38
	movq	%rbp, %rdi
	call	*%rax
	movss	8(%rsp), %xmm1
	movsbl	%al, %esi
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L41:
	movq	%rbp, %rdi
	movss	%xmm1, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movss	8(%rsp), %xmm1
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L42
	movq	%rbp, %rdi
	call	*%rax
	movss	8(%rsp), %xmm1
	movsbl	%al, %esi
	jmp	.L42
.L40:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE1790:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE18:
	.section	.text.startup
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.section	.text.startup
.LHOTB19:
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z20scan_list_with_tablemPhPfS0_, @function
_GLOBAL__sub_I__Z20scan_list_with_tablemPhPfS0_:
.LFB2147:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2147:
	.size	_GLOBAL__sub_I__Z20scan_list_with_tablemPhPfS0_, .-_GLOBAL__sub_I__Z20scan_list_with_tablemPhPfS0_
	.section	.text.unlikely
.LCOLDE19:
	.section	.text.startup
.LHOTE19:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z20scan_list_with_tablemPhPfS0_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC11:
	.long	0
	.long	1083129856
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

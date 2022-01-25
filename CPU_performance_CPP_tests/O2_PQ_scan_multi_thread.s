	.file	"PQ_scan_multi_thread.cpp"
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
	.globl	_Z34thread_func_unroll_scan_read_codesPv
	.type	_Z34thread_func_unroll_scan_read_codesPv, @function
_Z34thread_func_unroll_scan_read_codesPv:
.LFB1812:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movb	%dl, 62(%rsp)
	movb	%cl, 61(%rsp)
	movb	%sil, 60(%rsp)
	movb	%r8b, 59(%rsp)
	movb	%r9b, 58(%rsp)
	movb	%r10b, 57(%rsp)
	movb	%r11b, 16(%rsp)
	movq	%rdi, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	24(%rsp), %rdi
	movq	%rax, 48(%rsp)
	movzbl	16(%rsp), %r11d
	movzbl	57(%rsp), %r10d
	movzbl	58(%rsp), %r9d
	movzbl	59(%rsp), %r8d
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	movq	24(%rdi), %rdi
	movzbl	61(%rsp), %ecx
	movzbl	62(%rsp), %edx
	testq	%rsi, %rsi
	movq	%rsi, 32(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rsi, %rdi
	movzbl	60(%rsp), %esi
	jle	.L3
	salq	$4, %rdi
	addq	%rax, %rdi
	movq	%rdi, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L4:
	movzbl	8(%rax), %ebx
	movzbl	(%rax), %r11d
	addq	$16, %rax
	movzbl	-15(%rax), %r10d
	movzbl	-14(%rax), %r9d
	movzbl	-13(%rax), %r8d
	movzbl	-12(%rax), %esi
	movzbl	-11(%rax), %ecx
	movzbl	-10(%rax), %edx
	movb	%bl, 15(%rsp)
	movzbl	-7(%rax), %ebx
	movzbl	-9(%rax), %edi
	movzbl	-6(%rax), %r15d
	movzbl	-5(%rax), %r14d
	movzbl	-4(%rax), %r13d
	movzbl	-3(%rax), %r12d
	movzbl	-2(%rax), %ebp
	movb	%bl, 56(%rsp)
	movzbl	-1(%rax), %ebx
	cmpq	16(%rsp), %rax
	jne	.L4
	movb	%dil, 63(%rsp)
.L3:
	addl	%r11d, %r10d
	movzbl	63(%rsp), %eax
	addl	%r10d, %r9d
	pxor	%xmm0, %xmm0
	addl	%r8d, %r9d
	addl	%esi, %r9d
	addl	%ecx, %r9d
	movq	32(%rsp), %rcx
	addl	%r9d, %edx
	addl	%eax, %edx
	movzbl	15(%rsp), %eax
	addl	%eax, %edx
	movzbl	56(%rsp), %eax
	addl	%edx, %eax
	addl	%eax, %r15d
	movq	40(%rsp), %rax
	addl	%r15d, %r14d
	addl	%r14d, %r13d
	addl	%r13d, %r12d
	leaq	(%rax,%rcx,4), %rdx
	addl	%r12d, %ebp
	addl	%ebp, %ebx
	testq	%rcx, %rcx
	cvtsi2ss	%ebx, %xmm0
	jle	.L6
	.p2align 4,,10
	.p2align 3
.L9:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L9
.L6:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	48(%rsp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	24(%rsp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rax)
	addq	$72, %rsp
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
.LFE1812:
	.size	_Z34thread_func_unroll_scan_read_codesPv, .-_Z34thread_func_unroll_scan_read_codesPv
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z41thread_func_unroll_scan_read_longer_codesPv
	.type	_Z41thread_func_unroll_scan_read_longer_codesPv, @function
_Z41thread_func_unroll_scan_read_longer_codesPv:
.LFB1821:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$2064, %rsp
	.cfi_def_cfa_offset 2096
	movq	%fs:40, %rax
	movq	%rax, 2056(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	0(%rbp), %r11
	movq	%rax, %rbx
	movq	8(%rbp), %r9
	movq	24(%rbp), %r12
	leaq	1024(%rsp), %r8
	leaq	63(%r11), %rax
	testq	%r11, %r11
	cmovs	%rax, %r11
	xorl	%r10d, %r10d
	sarq	$6, %r11
	testq	%r11, %r11
	jle	.L17
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%r9, %rsi
	movl	$128, %ecx
	movq	%r8, %rdi
	rep movsq
	addq	$1024, %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L16:
	movzbl	(%r8,%rax), %edx
	movb	%dl, (%rsp,%rax)
	addq	$1, %rax
	cmpq	$1024, %rax
	jne	.L16
	addq	$1, %r10
	cmpq	%r10, %r11
	jne	.L18
.L17:
	movzbl	1(%rsp), %eax
	movzbl	(%rsp), %edx
	pxor	%xmm0, %xmm0
	addl	%eax, %edx
	movzbl	2(%rsp), %eax
	addl	%eax, %edx
	movzbl	3(%rsp), %eax
	addl	%eax, %edx
	movzbl	4(%rsp), %eax
	addl	%eax, %edx
	movzbl	5(%rsp), %eax
	addl	%eax, %edx
	movzbl	6(%rsp), %eax
	addl	%eax, %edx
	movzbl	7(%rsp), %eax
	addl	%eax, %edx
	movzbl	8(%rsp), %eax
	addl	%eax, %edx
	movzbl	9(%rsp), %eax
	addl	%eax, %edx
	movzbl	10(%rsp), %eax
	addl	%eax, %edx
	movzbl	11(%rsp), %eax
	addl	%eax, %edx
	movzbl	12(%rsp), %eax
	addl	%eax, %edx
	movzbl	13(%rsp), %eax
	addl	%eax, %edx
	movzbl	14(%rsp), %eax
	addl	%eax, %edx
	movzbl	15(%rsp), %eax
	addl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, (%r12)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	movq	%rdx, %rax
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	2056(%rsp), %rbx
	xorq	%fs:40, %rbx
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rbp)
	jne	.L24
	addq	$2064, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L24:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1821:
	.size	_Z41thread_func_unroll_scan_read_longer_codesPv, .-_Z41thread_func_unroll_scan_read_longer_codesPv
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	_Z43thread_func_unroll_scan_read_codes_prefetchPv
	.type	_Z43thread_func_unroll_scan_read_codes_prefetchPv, @function
_Z43thread_func_unroll_scan_read_codes_prefetchPv:
.LFB1822:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	0(%rbp), %r9
	movq	%rax, %rbx
	movq	8(%rbp), %rax
	movq	24(%rbp), %rdx
	movl	$1, %ecx
	movq	(%rax), %r8
	movq	8(%rax), %rdi
	addq	$16, %rax
	cmpq	$2, %r9
	leaq	-1(%r9), %rsi
	jle	.L30
	.p2align 4,,10
	.p2align 3
.L33:
	addq	$1, %rcx
	movq	(%rax), %r8
	movq	8(%rax), %rdi
	addq	$16, %rax
	cmpq	%rsi, %rcx
	jne	.L33
.L30:
	movq	%r8, %rax
	movzbl	%r8b, %ecx
	movzbl	%ah, %eax
	pxor	%xmm0, %xmm0
	addl	%eax, %ecx
	movq	%r8, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%r8, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%r8, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%r8, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%r8, %rax
	shrq	$56, %r8
	shrq	$48, %rax
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	%dil, %ecx
	addl	%r8d, %eax
	addl	%ecx, %eax
	movq	%rdi, %rcx
	movzbl	%ch, %ecx
	addl	%eax, %ecx
	movq	%rdi, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%rdi, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%rdi, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%rdi, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%rdi, %rax
	shrq	$56, %rdi
	shrq	$48, %rax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movq	%rdi, %rax
	addl	%ecx, %eax
	testq	%r9, %r9
	cvtsi2ss	%eax, %xmm0
	movq	%rdx, %rax
	leaq	(%rdx,%r9,4), %rdx
	jle	.L27
	.p2align 4,,10
	.p2align 3
.L31:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L31
.L27:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	movq	8(%rsp), %rbx
	xorq	%fs:40, %rbx
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rbp)
	jne	.L40
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L40:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1822:
	.size	_Z43thread_func_unroll_scan_read_codes_prefetchPv, .-_Z43thread_func_unroll_scan_read_codes_prefetchPv
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv
	.type	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, @function
_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv:
.LFB1823:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$3088, %rsp
	.cfi_def_cfa_offset 3136
	movq	%fs:40, %rax
	movq	%rax, 3080(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	0(%rbp), %r14
	movq	8(%rbp), %r10
	movq	%rax, %rbx
	leaq	1024(%rsp), %r8
	movl	$128, %ecx
	movq	24(%rbp), %r12
	leaq	63(%r14), %rax
	movq	%r10, %rsi
	addq	$1024, %r10
	testq	%r14, %r14
	movq	%r8, %rdi
	cmovs	%rax, %r14
	sarq	$6, %r14
	cmpq	$1, %r14
	rep movsq
	jle	.L51
	leaq	2048(%rsp), %r11
	subq	$1, %r14
	xorl	%r13d, %r13d
	movq	%rsp, %r9
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%r10, %rsi
	movl	$128, %ecx
	movq	%r11, %rdi
	addq	$1024, %r10
	xorl	%eax, %eax
	rep movsq
	.p2align 4,,10
	.p2align 3
.L44:
	movzbl	(%r8,%rax), %edx
	movb	%dl, (%r9,%rax)
	addq	$1, %rax
	cmpq	$1024, %rax
	jne	.L44
	addq	$1, %r13
	movl	$128, %ecx
	movq	%r8, %rdi
	cmpq	%r13, %r14
	movq	%r11, %rsi
	rep movsq
	jne	.L46
.L45:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L43:
	movzbl	(%r8,%rax), %edx
	movb	%dl, (%r9,%rax)
	addq	$1, %rax
	cmpq	$1024, %rax
	jne	.L43
	movzbl	1(%rsp), %eax
	movzbl	(%rsp), %edx
	pxor	%xmm0, %xmm0
	addl	%eax, %edx
	movzbl	2(%rsp), %eax
	addl	%eax, %edx
	movzbl	3(%rsp), %eax
	addl	%eax, %edx
	movzbl	4(%rsp), %eax
	addl	%eax, %edx
	movzbl	5(%rsp), %eax
	addl	%eax, %edx
	movzbl	6(%rsp), %eax
	addl	%eax, %edx
	movzbl	7(%rsp), %eax
	addl	%eax, %edx
	movzbl	8(%rsp), %eax
	addl	%eax, %edx
	movzbl	9(%rsp), %eax
	addl	%eax, %edx
	movzbl	10(%rsp), %eax
	addl	%eax, %edx
	movzbl	11(%rsp), %eax
	addl	%eax, %edx
	movzbl	12(%rsp), %eax
	addl	%eax, %edx
	movzbl	13(%rsp), %eax
	addl	%eax, %edx
	movzbl	14(%rsp), %eax
	addl	%eax, %edx
	movzbl	15(%rsp), %eax
	addl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, (%r12)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	movq	%rdx, %rax
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	3080(%rsp), %rbx
	xorq	%fs:40, %rbx
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rbp)
	jne	.L52
	addq	$3088, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L51:
	.cfi_restore_state
	movq	%rsp, %r9
	jmp	.L45
.L52:
	call	__stack_chk_fail
	.cfi_endproc
.LFE1823:
	.size	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, .-_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Z30thread_func_unroll_scan_no_addPv
	.type	_Z30thread_func_unroll_scan_no_addPv, @function
_Z30thread_func_unroll_scan_no_addPv:
.LFB1824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	movss	%xmm1, 60(%rsp)
	movss	%xmm2, 56(%rsp)
	movss	%xmm3, 52(%rsp)
	movss	%xmm4, 48(%rsp)
	movss	%xmm5, 44(%rsp)
	movss	%xmm6, 40(%rsp)
	movss	%xmm7, 36(%rsp)
	movss	%xmm8, 32(%rsp)
	movss	%xmm9, 28(%rsp)
	movss	%xmm10, 24(%rsp)
	movss	%xmm11, 20(%rsp)
	movss	%xmm12, 16(%rsp)
	movss	%xmm13, 12(%rsp)
	movss	%xmm14, 8(%rsp)
	movss	%xmm15, 4(%rsp)
	movss	%xmm0, (%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	0(%rbp), %rdi
	movq	%rax, %rbx
	movq	16(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	24(%rbp), %rcx
	movss	(%rsp), %xmm0
	testq	%rdi, %rdi
	movss	4(%rsp), %xmm15
	movss	8(%rsp), %xmm14
	movss	12(%rsp), %xmm13
	movss	16(%rsp), %xmm12
	movss	20(%rsp), %xmm11
	movss	24(%rsp), %xmm10
	movss	28(%rsp), %xmm9
	movss	32(%rsp), %xmm8
	movss	36(%rsp), %xmm7
	movss	40(%rsp), %xmm6
	movss	44(%rsp), %xmm5
	movss	48(%rsp), %xmm4
	movss	52(%rsp), %xmm3
	movss	56(%rsp), %xmm2
	movss	60(%rsp), %xmm1
	jle	.L54
	movq	%rdi, %r8
	salq	$4, %r8
	addq	%rax, %r8
	.p2align 4,,10
	.p2align 3
.L55:
	movzbl	(%rax), %esi
	addq	$16, %rax
	movss	(%rdx,%rsi,4), %xmm0
	movzbl	-15(%rax), %esi
	movss	1024(%rdx,%rsi,4), %xmm15
	movzbl	-14(%rax), %esi
	movss	2048(%rdx,%rsi,4), %xmm14
	movzbl	-13(%rax), %esi
	movss	3072(%rdx,%rsi,4), %xmm13
	movzbl	-12(%rax), %esi
	movss	4096(%rdx,%rsi,4), %xmm12
	movzbl	-11(%rax), %esi
	movss	5120(%rdx,%rsi,4), %xmm11
	movzbl	-10(%rax), %esi
	movss	6144(%rdx,%rsi,4), %xmm10
	movzbl	-9(%rax), %esi
	movss	7168(%rdx,%rsi,4), %xmm9
	movzbl	-8(%rax), %esi
	movss	8192(%rdx,%rsi,4), %xmm8
	movzbl	-7(%rax), %esi
	movss	9216(%rdx,%rsi,4), %xmm7
	movzbl	-6(%rax), %esi
	movss	10240(%rdx,%rsi,4), %xmm6
	movzbl	-5(%rax), %esi
	movss	11264(%rdx,%rsi,4), %xmm5
	movzbl	-4(%rax), %esi
	movss	12288(%rdx,%rsi,4), %xmm4
	movzbl	-3(%rax), %esi
	movss	13312(%rdx,%rsi,4), %xmm3
	movzbl	-2(%rax), %esi
	movss	14336(%rdx,%rsi,4), %xmm2
	movzbl	-1(%rax), %esi
	cmpq	%r8, %rax
	movss	15360(%rdx,%rsi,4), %xmm1
	jne	.L55
.L54:
	addss	%xmm15, %xmm0
	testq	%rdi, %rdi
	movq	%rcx, %rax
	leaq	(%rcx,%rdi,4), %rdx
	addss	%xmm14, %xmm0
	addss	%xmm13, %xmm0
	addss	%xmm12, %xmm0
	addss	%xmm11, %xmm0
	addss	%xmm10, %xmm0
	addss	%xmm9, %xmm0
	addss	%xmm8, %xmm0
	addss	%xmm7, %xmm0
	addss	%xmm6, %xmm0
	addss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	jle	.L57
	.p2align 4,,10
	.p2align 3
.L60:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L60
.L57:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	xorl	%eax, %eax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rbp)
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1824:
	.size	_Z30thread_func_unroll_scan_no_addPv, .-_Z30thread_func_unroll_scan_no_addPv
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	_Z23thread_func_unroll_scanPv
	.type	_Z23thread_func_unroll_scanPv, @function
_Z23thread_func_unroll_scanPv:
.LFB1825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	0(%rbp), %rdi
	movq	%rax, %rbx
	movq	16(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	24(%rbp), %rcx
	testq	%rdi, %rdi
	jle	.L65
	salq	$4, %rdi
	addq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L66:
	movzbl	1(%rax), %r8d
	movzbl	(%rax), %esi
	addq	$16, %rax
	addq	$4, %rcx
	movss	1024(%rdx,%r8,4), %xmm0
	addss	(%rdx,%rsi,4), %xmm0
	movzbl	-14(%rax), %esi
	addss	2048(%rdx,%rsi,4), %xmm0
	movzbl	-13(%rax), %esi
	addss	3072(%rdx,%rsi,4), %xmm0
	movzbl	-12(%rax), %esi
	addss	4096(%rdx,%rsi,4), %xmm0
	movzbl	-11(%rax), %esi
	addss	5120(%rdx,%rsi,4), %xmm0
	movzbl	-10(%rax), %esi
	addss	6144(%rdx,%rsi,4), %xmm0
	movzbl	-9(%rax), %esi
	addss	7168(%rdx,%rsi,4), %xmm0
	movzbl	-8(%rax), %esi
	addss	8192(%rdx,%rsi,4), %xmm0
	movzbl	-7(%rax), %esi
	addss	9216(%rdx,%rsi,4), %xmm0
	movzbl	-6(%rax), %esi
	addss	10240(%rdx,%rsi,4), %xmm0
	movzbl	-5(%rax), %esi
	addss	11264(%rdx,%rsi,4), %xmm0
	movzbl	-4(%rax), %esi
	addss	12288(%rdx,%rsi,4), %xmm0
	movzbl	-3(%rax), %esi
	addss	13312(%rdx,%rsi,4), %xmm0
	movzbl	-2(%rax), %esi
	addss	14336(%rdx,%rsi,4), %xmm0
	movzbl	-1(%rax), %esi
	addss	15360(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -4(%rcx)
	cmpq	%rax, %rdi
	jne	.L66
.L65:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	xorl	%eax, %eax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1825:
	.size	_Z23thread_func_unroll_scanPv, .-_Z23thread_func_unroll_scanPv
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	_Z32thread_func_unroll_scan_prefetchPv
	.type	_Z32thread_func_unroll_scan_prefetchPv, @function
_Z32thread_func_unroll_scan_prefetchPv:
.LFB1826:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	movq	%rdi, %rbx
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	%rdi, 200(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	16(%rbx), %r12
	movq	%rax, 192(%rsp)
	movq	24(%rbx), %rax
	movq	(%rbx), %rdi
	movq	8(%rbx), %r13
	movq	%rax, 40(%rsp)
	leaq	1024(%r12), %rax
	cmpq	$1, %rdi
	movq	%rdi, 184(%rsp)
	movq	0(%r13), %rcx
	movq	%rax, 48(%rsp)
	leaq	2048(%r12), %rax
	movq	8(%r13), %rbp
	movq	%rax, 56(%rsp)
	leaq	3072(%r12), %rax
	movq	%rax, 64(%rsp)
	leaq	4096(%r12), %rax
	movq	%rax, 72(%rsp)
	leaq	5120(%r12), %rax
	movq	%rax, 80(%rsp)
	leaq	6144(%r12), %rax
	movq	%rax, 88(%rsp)
	leaq	7168(%r12), %rax
	movq	%rax, 96(%rsp)
	leaq	8192(%r12), %rax
	movq	%rax, 104(%rsp)
	leaq	9216(%r12), %rax
	movq	%rax, 112(%rsp)
	leaq	10240(%r12), %rax
	movq	%rax, 120(%rsp)
	leaq	11264(%r12), %rax
	movq	%rax, 128(%rsp)
	leaq	12288(%r12), %rax
	movq	%rax, 136(%rsp)
	leaq	13312(%r12), %rax
	movq	%rax, 144(%rsp)
	leaq	14336(%r12), %rax
	movq	%rax, 152(%rsp)
	leaq	15360(%r12), %rax
	movq	%rax, 160(%rsp)
	leaq	-4(,%rdi,4), %rax
	movq	%rax, 176(%rsp)
	jle	.L71
	xorl	%r14d, %r14d
	movq	%r12, 168(%rsp)
	movq	%rbp, %rax
	.p2align 4,,10
	.p2align 3
.L72:
	movq	48(%rsp), %rbx
	movzbl	%ch, %edx
	movzbl	%cl, %esi
	movq	%rsi, %r12
	movq	%rcx, %rbp
	movq	%rcx, %r11
	movq	%rcx, %r10
	shrq	$24, %rbp
	shrq	$40, %r11
	movss	(%rbx,%rdx,4), %xmm0
	movq	%rcx, %rdx
	shrq	$16, %rdx
	movq	%rcx, %rbx
	shrq	$56, %rcx
	movzbl	%dl, %esi
	movq	%rax, %rdx
	movq	%rcx, 8(%rsp)
	shrq	$48, %rdx
	movq	%rsi, (%rsp)
	movzbl	%bpl, %ebp
	movzbl	%dl, %ecx
	movq	168(%rsp), %rdx
	shrq	$32, %rbx
	movzbl	%bl, %ebx
	movzbl	%r11b, %r11d
	shrq	$48, %r10
	movzbl	%r10b, %r10d
	movzbl	%al, %r15d
	movzbl	%ah, %esi
	addss	(%rdx,%r12,4), %xmm0
	movq	56(%rsp), %rdx
	movq	%rax, %r9
	movq	(%rsp), %r12
	movq	%rsi, 16(%rsp)
	shrq	$16, %r9
	movzbl	%r9b, %r9d
	movq	%rax, %r8
	movq	%rax, %rdi
	movq	%rax, %rsi
	shrq	$56, %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	16(%r13,%r14,4), %rcx
	shrq	$24, %r8
	movq	24(%r13,%r14,4), %rax
	movzbl	%r8b, %r8d
	shrq	$32, %rdi
	addss	(%rdx,%r12,4), %xmm0
	movq	64(%rsp), %rdx
	movzbl	%dil, %edi
	shrq	$40, %rsi
	movzbl	%sil, %esi
	addss	(%rdx,%rbp,4), %xmm0
	movq	72(%rsp), %rdx
	addss	(%rdx,%rbx,4), %xmm0
	movq	80(%rsp), %rdx
	movq	8(%rsp), %rbx
	addss	(%rdx,%r11,4), %xmm0
	movq	88(%rsp), %rdx
	addss	(%rdx,%r10,4), %xmm0
	movq	96(%rsp), %rdx
	addss	(%rdx,%rbx,4), %xmm0
	movq	104(%rsp), %rbx
	movq	16(%rsp), %rdx
	addss	(%rbx,%r15,4), %xmm0
	movq	112(%rsp), %rbx
	addss	(%rbx,%rdx,4), %xmm0
	movq	120(%rsp), %rbx
	addss	(%rbx,%r9,4), %xmm0
	movq	128(%rsp), %rbx
	addss	(%rbx,%r8,4), %xmm0
	movq	136(%rsp), %rbx
	addss	(%rbx,%rdi,4), %xmm0
	movq	144(%rsp), %rbx
	movq	24(%rsp), %rdi
	addss	(%rbx,%rsi,4), %xmm0
	movq	152(%rsp), %rsi
	addss	(%rsi,%rdi,4), %xmm0
	movq	32(%rsp), %rdi
	movq	160(%rsp), %rsi
	addss	(%rsi,%rdi,4), %xmm0
	movq	40(%rsp), %rdi
	movss	%xmm0, (%rdi,%r14)
	addq	$4, %r14
	cmpq	%r14, 176(%rsp)
	jne	.L72
	movq	168(%rsp), %r12
	movq	%rax, %rbp
.L71:
	movq	48(%rsp), %rdi
	movzbl	%cl, %edx
	movzbl	%ch, %eax
	movss	(%r12,%rdx,4), %xmm0
	movq	80(%rsp), %rsi
	addss	(%rdi,%rax,4), %xmm0
	movq	56(%rsp), %rdi
	movq	%rcx, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	addss	(%rdi,%rax,4), %xmm0
	movq	64(%rsp), %rdi
	movq	%rcx, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	addss	(%rdi,%rax,4), %xmm0
	movq	72(%rsp), %rdi
	movq	%rcx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	movq	88(%rsp), %rdi
	shrq	$40, %rax
	movzbl	%al, %eax
	addss	(%rsi,%rax,4), %xmm0
	movq	%rcx, %rax
	movq	160(%rsp), %rsi
	shrq	$48, %rax
	movzbl	%al, %eax
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	movq	96(%rsp), %rcx
	shrq	$56, %rax
	addss	(%rcx,%rax,4), %xmm0
	movq	104(%rsp), %rcx
	movzbl	%bpl, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	112(%rsp), %rcx
	movq	%rbp, %rax
	movzbl	%ah, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	120(%rsp), %rcx
	movq	%rbp, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	128(%rsp), %rcx
	movq	%rbp, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	136(%rsp), %rcx
	movq	%rbp, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	144(%rsp), %rcx
	movq	%rbp, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	152(%rsp), %rcx
	movq	%rbp, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	addss	(%rcx,%rax,4), %xmm0
	movq	%rbp, %rax
	shrq	$56, %rax
	addss	(%rsi,%rax,4), %xmm0
	movq	40(%rsp), %rax
	movq	184(%rsp), %rdi
	movss	%xmm0, -4(%rax,%rdi,4)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	192(%rsp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	200(%rsp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	movq	216(%rsp), %rsi
	xorq	%fs:40, %rsi
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rax)
	jne	.L78
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L78:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1826:
	.size	_Z32thread_func_unroll_scan_prefetchPv, .-_Z32thread_func_unroll_scan_prefetchPv
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	_Z45thread_func_unroll_scan_longer_codes_prefetchPv
	.type	_Z45thread_func_unroll_scan_longer_codes_prefetchPv, @function
_Z45thread_func_unroll_scan_longer_codes_prefetchPv:
.LFB1827:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	movq	%rdi, %rbx
	subq	$2184, %rsp
	.cfi_def_cfa_offset 2240
	movq	%rdi, 104(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 2168(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	(%rbx), %r15
	movq	8(%rbx), %rsi
	movl	$128, %ecx
	movq	24(%rbx), %rdx
	movq	%rax, 96(%rsp)
	leaq	112(%rsp), %rdi
	movq	16(%rbx), %rax
	movq	%rsi, 72(%rsp)
	testq	%r15, %r15
	rep movsq
	leaq	63(%r15), %rcx
	movq	%rdx, 64(%rsp)
	leaq	2048(%rax), %rdx
	leaq	4096(%rax), %rbx
	leaq	1024(%rax), %r13
	leaq	7168(%rax), %r14
	cmovns	%r15, %rcx
	movq	%rdx, 8(%rsp)
	leaq	3072(%rax), %rdx
	sarq	$6, %rcx
	movq	%rbx, 24(%rsp)
	leaq	6144(%rax), %rbx
	leaq	-1(%rcx), %rsi
	movq	%rdx, 16(%rsp)
	leaq	5120(%rax), %rdx
	movq	%rbx, 40(%rsp)
	leaq	9216(%rax), %r8
	leaq	10240(%rax), %r9
	testq	%rsi, %rsi
	movq	%rdx, 32(%rsp)
	leaq	11264(%rax), %r10
	leaq	8192(%rax), %rdx
	leaq	12288(%rax), %r11
	leaq	13312(%rax), %rbx
	leaq	14336(%rax), %rbp
	leaq	15360(%rax), %r12
	movq	%rsi, 88(%rsp)
	jle	.L83
	salq	$8, %rcx
	movq	$0, 56(%rsp)
	leaq	-256(%rcx), %rsi
	movq	%rsi, 80(%rsp)
	leaq	1136(%rsp), %rsi
	movq	%rsi, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L84:
	movq	72(%rsp), %rcx
	movq	56(%rsp), %r15
	leaq	1136(%rsp), %rdi
	leaq	1024(%rcx,%r15,4), %rsi
	movl	$128, %ecx
	rep movsq
	movq	64(%rsp), %rsi
	leaq	112(%rsp), %rcx
	addq	%r15, %rsi
	.p2align 4,,10
	.p2align 3
.L82:
	movzbl	(%rcx), %r15d
	movzbl	1(%rcx), %edi
	addq	$4, %rsi
	addq	$16, %rcx
	movss	(%rax,%r15,4), %xmm0
	movq	8(%rsp), %r15
	addss	0(%r13,%rdi,4), %xmm0
	movzbl	-14(%rcx), %edi
	addss	(%r15,%rdi,4), %xmm0
	movzbl	-13(%rcx), %edi
	movq	16(%rsp), %r15
	addss	(%r15,%rdi,4), %xmm0
	movzbl	-12(%rcx), %edi
	movq	24(%rsp), %r15
	addss	(%r15,%rdi,4), %xmm0
	movzbl	-11(%rcx), %edi
	movq	32(%rsp), %r15
	addss	(%r15,%rdi,4), %xmm0
	movzbl	-10(%rcx), %edi
	movq	40(%rsp), %r15
	addss	(%r15,%rdi,4), %xmm0
	movzbl	-9(%rcx), %edi
	addss	(%r14,%rdi,4), %xmm0
	movzbl	-8(%rcx), %edi
	addss	(%rdx,%rdi,4), %xmm0
	movzbl	-7(%rcx), %edi
	addss	(%r8,%rdi,4), %xmm0
	movzbl	-6(%rcx), %edi
	addss	(%r9,%rdi,4), %xmm0
	movzbl	-5(%rcx), %edi
	addss	(%r10,%rdi,4), %xmm0
	movzbl	-4(%rcx), %edi
	addss	(%r11,%rdi,4), %xmm0
	movzbl	-3(%rcx), %edi
	addss	(%rbx,%rdi,4), %xmm0
	movzbl	-2(%rcx), %edi
	addss	0(%rbp,%rdi,4), %xmm0
	movzbl	-1(%rcx), %edi
	addss	(%r12,%rdi,4), %xmm0
	movss	%xmm0, -4(%rsi)
	cmpq	48(%rsp), %rcx
	jne	.L82
	addq	$256, 56(%rsp)
	movl	$128, %ecx
	leaq	112(%rsp), %rdi
	leaq	1136(%rsp), %rsi
	rep movsq
	movq	56(%rsp), %rsi
	cmpq	80(%rsp), %rsi
	jne	.L84
.L83:
	movq	88(%rsp), %rsi
	movq	64(%rsp), %r15
	leaq	112(%rsp), %rcx
	salq	$8, %rsi
	addq	%rsi, %r15
	leaq	1024(%rcx), %rsi
	movq	%rsi, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L81:
	movzbl	(%rcx), %edi
	movzbl	1(%rcx), %esi
	addq	$4, %r15
	addq	$16, %rcx
	movss	(%rax,%rdi,4), %xmm0
	movq	8(%rsp), %rdi
	addss	0(%r13,%rsi,4), %xmm0
	movzbl	-14(%rcx), %esi
	addss	(%rdi,%rsi,4), %xmm0
	movzbl	-13(%rcx), %esi
	movq	16(%rsp), %rdi
	addss	(%rdi,%rsi,4), %xmm0
	movzbl	-12(%rcx), %esi
	movq	24(%rsp), %rdi
	addss	(%rdi,%rsi,4), %xmm0
	movzbl	-11(%rcx), %esi
	movq	32(%rsp), %rdi
	addss	(%rdi,%rsi,4), %xmm0
	movzbl	-10(%rcx), %esi
	movq	40(%rsp), %rdi
	addss	(%rdi,%rsi,4), %xmm0
	movzbl	-9(%rcx), %esi
	addss	(%r14,%rsi,4), %xmm0
	movzbl	-8(%rcx), %esi
	addss	(%rdx,%rsi,4), %xmm0
	movzbl	-7(%rcx), %esi
	addss	(%r8,%rsi,4), %xmm0
	movzbl	-6(%rcx), %esi
	addss	(%r9,%rsi,4), %xmm0
	movzbl	-5(%rcx), %esi
	addss	(%r10,%rsi,4), %xmm0
	movzbl	-4(%rcx), %esi
	addss	(%r11,%rsi,4), %xmm0
	movzbl	-3(%rcx), %esi
	addss	(%rbx,%rsi,4), %xmm0
	movzbl	-2(%rcx), %esi
	addss	0(%rbp,%rsi,4), %xmm0
	movzbl	-1(%rcx), %esi
	addss	(%r12,%rsi,4), %xmm0
	movss	%xmm0, -4(%r15)
	cmpq	%rcx, 48(%rsp)
	jne	.L81
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	96(%rsp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	%rdx, %rax
	sarq	$18, %rax
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	movq	104(%rsp), %rax
	movq	2168(%rsp), %rbx
	xorq	%fs:40, %rbx
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rax)
	jne	.L89
	addq	$2184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L89:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1827:
	.size	_Z45thread_func_unroll_scan_longer_codes_prefetchPv, .-_Z45thread_func_unroll_scan_longer_codes_prefetchPv
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Z38thread_func_unroll_scan_shift_prefetchPv
	.type	_Z38thread_func_unroll_scan_shift_prefetchPv, @function
_Z38thread_func_unroll_scan_shift_prefetchPv:
.LFB1828:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	(%r12), %r13
	movq	8(%r12), %r8
	movq	%rax, %rbx
	movq	16(%r12), %rax
	xorl	%edx, %edx
	movq	24(%r12), %r11
	cmpq	$1, %r13
	movq	(%r8), %rcx
	movq	8(%r8), %rsi
	leaq	8192(%rax), %rbp
	leaq	-4(,%r13,4), %rdi
	jle	.L92
	.p2align 4,,10
	.p2align 3
.L93:
	andl	$15, %ecx
	movss	1024(%rax), %xmm0
	movq	%rcx, %r10
	andl	$15, %esi
	movq	16(%r8,%rdx,4), %rcx
	addss	(%rax,%r10,4), %xmm0
	movq	%rsi, %r9
	movq	24(%r8,%rdx,4), %rsi
	addss	2048(%rax), %xmm0
	addss	3072(%rax), %xmm0
	addss	4096(%rax), %xmm0
	addss	5120(%rax), %xmm0
	addss	6144(%rax), %xmm0
	addss	7168(%rax), %xmm0
	addss	0(%rbp,%r9,4), %xmm0
	addss	9216(%rax), %xmm0
	addss	10240(%rax), %xmm0
	addss	11264(%rax), %xmm0
	addss	12288(%rax), %xmm0
	addss	13312(%rax), %xmm0
	addss	14336(%rax), %xmm0
	addss	15360(%rax), %xmm0
	movss	%xmm0, (%r11,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.L93
.L92:
	andl	$15, %ecx
	andl	$15, %esi
	movss	(%rax,%rcx,4), %xmm0
	addss	1024(%rax), %xmm0
	addss	2048(%rax), %xmm0
	addss	3072(%rax), %xmm0
	addss	4096(%rax), %xmm0
	addss	5120(%rax), %xmm0
	addss	6144(%rax), %xmm0
	addss	7168(%rax), %xmm0
	addss	0(%rbp,%rsi,4), %xmm0
	addss	9216(%rax), %xmm0
	addss	10240(%rax), %xmm0
	addss	11264(%rax), %xmm0
	addss	12288(%rax), %xmm0
	addss	13312(%rax), %xmm0
	addss	14336(%rax), %xmm0
	addss	15360(%rax), %xmm0
	movss	%xmm0, -4(%r11,%r13,4)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	movq	8(%rsp), %rbx
	xorq	%fs:40, %rbx
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%r12)
	jne	.L99
	addq	$24, %rsp
	.cfi_remember_state
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
.L99:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1828:
	.size	_Z38thread_func_unroll_scan_shift_prefetchPv, .-_Z38thread_func_unroll_scan_shift_prefetchPv
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z22thread_func_faiss_scanPv
	.type	_Z22thread_func_faiss_scanPv, @function
_Z22thread_func_faiss_scanPv:
.LFB1829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	movq	16(%rbp), %r10
	movq	8(%rbp), %rax
	movq	24(%rbp), %r8
	testq	%rdx, %rdx
	jle	.L103
	pxor	%xmm1, %xmm1
	leaq	(%r8,%rdx,4), %r9
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	16(%rax), %rsi
	movaps	%xmm1, %xmm0
	movq	%r10, %rdx
	.p2align 4,,10
	.p2align 3
.L102:
	addq	$1, %rax
	movzbl	-1(%rax), %ecx
	addss	(%rdx,%rcx,4), %xmm0
	addq	$1024, %rdx
	cmpq	%rax, %rsi
	jne	.L102
	movss	%xmm0, (%r8)
	addq	$4, %r8
	cmpq	%r8, %r9
	jne	.L104
.L103:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	pxor	%xmm0, %xmm0
	imulq	%rdx
	sarq	$63, %rcx
	xorl	%eax, %eax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 32(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1829:
	.size	_Z22thread_func_faiss_scanPv, .-_Z22thread_func_faiss_scanPv
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC14:
	.string	"Usage: ./simple_cp_multi_thread <num_threads>\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC15:
	.string	"stoi"
.LC16:
	.string	"Scanning "
.LC17:
	.string	" PQ codes ("
.LC18:
	.string	" bytes per vec), "
.LC20:
	.string	" GB in total\n"
.LC21:
	.string	"\nIteration "
.LC22:
	.string	": "
.LC23:
	.string	"unroll read codes: size = "
.LC24:
	.string	" bytes\ntime (all sync)="
.LC25:
	.string	" seconds\n"
.LC26:
	.string	"throughput: "
.LC29:
	.string	"GB/s\n"
.LC30:
	.string	"time (thread average)="
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"unroll read longer codes: size = "
	.section	.rodata.str1.1
.LC32:
	.string	"longer code size = "
.LC33:
	.string	" bytes (instead of 16)"
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"unroll read codes (prefetch): size = "
	.align 8
.LC35:
	.string	"unroll read longer codes (prefetch): size = "
	.section	.rodata.str1.1
.LC36:
	.string	"unroll scan (no add): size = "
.LC37:
	.string	"unroll scan: size = "
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"unroll scan (prefetch): size = "
	.align 8
.LC39:
	.string	"unroll scan longer (prefetch): size = "
	.align 8
.LC40:
	.string	"unroll scan (shift + prefetch): size = "
	.section	.rodata.str1.1
.LC41:
	.string	"fasiss scan: size = "
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"basic_string::_M_construct null not valid"
	.section	.text.unlikely
.LCOLDB43:
	.section	.text.startup,"ax",@progbits
.LHOTB43:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1830:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1830
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$136, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L109
	movl	$.LC14, %esi
	movl	$_ZSt4cout, %edi
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L109:
	movq	8(%rbx), %r12
	leaq	-96(%rbp), %rax
	leaq	16(%rax), %r14
	testq	%r12, %r12
	movq	%r14, -96(%rbp)
	je	.L110
	movq	%r12, %rdi
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rbx
	movq	%rax, -104(%rbp)
	ja	.L237
	cmpq	$1, %rax
	je	.L238
	testq	%rax, %rax
	leaq	-104(%rbp), %r13
	jne	.L239
.L114:
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-96(%rbp), %r12
	call	__errno_location
	movl	$10, %edx
	movl	$0, (%rax)
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	strtol
	cmpq	-104(%rbp), %r12
	movq	%rax, -128(%rbp)
	je	.L240
	cmpl	$34, (%rbx)
	je	.L116
	movl	$2147483648, %eax
	addq	-128(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	ja	.L116
	movq	-96(%rbp), %rdi
	leaq	-96(%rbp), %rax
	movl	-128(%rbp), %ebx
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	.L118
	call	_ZdlPv
.L118:
	movq	-128(%rbp), %rcx
	movl	$1000000000, %eax
	cqto
	idivq	%rcx
	movq	%rax, -136(%rbp)
	movabsq	$1143914305352105984, %rax
	cmpq	%rax, %rcx
	ja	.L119
	movq	-128(%rbp), %r12
	movq	%r12, %rax
	salq	$3, %rax
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rax, -120(%rbp)
	call	_Znam
	movq	%r14, %rdi
	movq	%rax, %r15
	call	_Znam
	movq	%r14, %rdi
	movq	%rax, -144(%rbp)
	call	_Znam
	movq	%r14, %rdi
	movq	%rax, %r13
	call	_Znam
	testq	%r12, %r12
	movq	%rax, -160(%rbp)
	jle	.L189
	movq	-136(%rbp), %rcx
	movl	%r12d, %eax
	movl	%ebx, -176(%rbp)
	subl	$1, %eax
	xorl	%r12d, %r12d
	movl	%eax, -168(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rcx, %r14
	salq	$2, %rcx
	salq	$4, %r14
	movq	%rax, -152(%rbp)
	movq	%rcx, %rbx
	.p2align 4,,10
	.p2align 3
.L121:
	movq	%r14, %rdi
	call	_Znam
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rax, %rdi
	movq	%rax, (%r15,%r12)
	call	memset
	movl	$16384, %edi
	call	_Znam
	movq	-144(%rbp), %rcx
	xorl	%esi, %esi
	movl	$16384, %edx
	movq	%rax, %rdi
	movq	%rax, (%rcx,%r12)
	call	memset
	movabsq	$2287828610704211968, %rcx
	cmpq	%rcx, -136(%rbp)
	ja	.L119
	movq	%rbx, %rdi
	call	_Znam
	xorl	%esi, %esi
	movq	%rax, 0(%r13,%r12)
	movq	%rbx, %rdx
	movq	%rax, %rdi
	addq	$8, %r12
	call	memset
	cmpq	-152(%rbp), %r12
	jne	.L121
	movq	-120(%rbp), %r14
	movq	-160(%rbp), %rdi
	xorl	%esi, %esi
	movl	-176(%rbp), %ebx
	movq	%r14, %rdx
	call	memset
	movq	%r14, %rax
	movq	-144(%rbp), %rsi
	movq	-160(%rbp), %rdi
	addq	$22, %rax
	movq	-152(%rbp), %r8
	movq	-136(%rbp), %r9
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	-128(%rbp), %rax
	movq	%rsp, %r12
	leaq	(%rax,%rax,4), %rax
	leaq	22(,%rax,8), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	xorl	%eax, %eax
	movq	%rsp, %rdx
	movq	%rsp, -120(%rbp)
	.p2align 4,,10
	.p2align 3
.L122:
	movq	(%r15,%rax), %rcx
	movsd	(%rdi,%rax), %xmm0
	movq	%r9, (%rdx)
	addq	$40, %rdx
	movsd	%xmm0, -8(%rdx)
	movq	%rcx, -32(%rdx)
	movq	(%rsi,%rax), %rcx
	movq	%rcx, -24(%rdx)
	movq	0(%r13,%rax), %rcx
	addq	$8, %rax
	movq	%rcx, -16(%rdx)
	cmpq	%rax, %r8
	jne	.L122
.L191:
	movl	$9, %edx
	movl	$.LC16, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1000000000, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$11, %edx
	movq	%rax, %r13
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r13, %rdi
	movl	$16, %esi
	call	_ZNSolsEi
	movl	$17, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC19(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	-168(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	$0, -160(%rbp)
	leaq	5(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %r13
.L186:
	movl	$11, %edx
	movl	$.LC21, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	-160(%rbp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movq	%rax, %r14
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r15
	testq	%r15, %r15
	je	.L241
	cmpb	$0, 56(%r15)
	je	.L124
	movsbl	67(%r15), %esi
.L125:
	movq	%r14, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -136(%rbp)
	jle	.L126
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L127:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z34thread_func_unroll_scan_read_codesPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L127
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L129:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L129
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-136(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	movq	$0, -152(%rbp)
	pxor	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm3
	movq	%rax, %rcx
	movsd	%xmm3, -144(%rbp)
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L131:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L131
.L130:
	pxor	%xmm4, %xmm4
	movl	$26, %edx
	movl	$.LC23, %esi
	movl	$_ZSt4cout, %edi
	cvtsi2sd	%ebx, %xmm4
	divsd	%xmm4, %xmm0
	movsd	%xmm4, -136(%rbp)
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm5
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm5
	movapd	%xmm5, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L132
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L133:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z41thread_func_unroll_scan_read_longer_codesPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L133
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L135:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L135
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L137:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L137
.L136:
	divsd	-136(%rbp), %xmm0
	movl	$33, %edx
	movl	$.LC31, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$19, %edx
	movq	%rax, %r14
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r14, %rdi
	movl	$1024, %esi
	call	_ZNSolsEi
	movl	$22, %edx
	movq	%rax, %r14
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm7
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L138
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L139:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z43thread_func_unroll_scan_read_codes_prefetchPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L139
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L141:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L141
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L143:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L143
.L142:
	divsd	-136(%rbp), %xmm0
	movl	$37, %edx
	movl	$.LC34, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm2
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm2
	movapd	%xmm2, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L144
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L145:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L145
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L147:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L147
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L149:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L149
.L148:
	divsd	-136(%rbp), %xmm0
	movl	$44, %edx
	movl	$.LC35, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$19, %edx
	movq	%rax, %r14
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r14, %rdi
	movl	$1024, %esi
	call	_ZNSolsEi
	movl	$22, %edx
	movq	%rax, %r14
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm3
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm3
	movapd	%xmm3, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L150
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L151:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z30thread_func_unroll_scan_no_addPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L151
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L153:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L153
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L155:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L155
.L154:
	divsd	-136(%rbp), %xmm0
	movl	$29, %edx
	movl	$.LC36, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm7
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L156
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L157:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z23thread_func_unroll_scanPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L157
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L159:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L159
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L161:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L161
.L160:
	divsd	-136(%rbp), %xmm0
	movl	$20, %edx
	movl	$.LC37, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm2
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm2
	movapd	%xmm2, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L162
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L163:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z32thread_func_unroll_scan_prefetchPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L163
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L165:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L165
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L167:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L167
.L166:
	divsd	-136(%rbp), %xmm0
	movl	$31, %edx
	movl	$.LC38, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm6
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm6
	movapd	%xmm6, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L168
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L169:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z45thread_func_unroll_scan_longer_codes_prefetchPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L169
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L171:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L171
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L173:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L173
.L172:
	divsd	-136(%rbp), %xmm0
	movl	$38, %edx
	movl	$.LC39, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$19, %edx
	movq	%rax, %r14
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r14, %rdi
	movl	$1024, %esi
	call	_ZNSolsEi
	movl	$22, %edx
	movq	%rax, %r14
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm7
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L174
	movq	-120(%rbp), %r14
	movq	%r12, %r15
	.p2align 4,,10
	.p2align 3
.L175:
	movq	%r14, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$_Z38thread_func_unroll_scan_shift_prefetchPv, %edx
	addq	$40, %r14
	addq	$8, %r15
	call	pthread_create
	cmpq	%r14, %r13
	jne	.L175
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L177:
	movq	(%r12,%r14,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r14
	call	pthread_join
	cmpl	%r14d, %ebx
	jg	.L177
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L179:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L179
.L178:
	divsd	-136(%rbp), %xmm0
	movl	$39, %edx
	movl	$.LC40, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -168(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-176(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm1
	movq	%r14, %rdi
	divsd	-176(%rbp), %xmm1
	movapd	%xmm1, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r14
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-168(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r14
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r14, %rdi
	divsd	-168(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	cmpq	$0, -128(%rbp)
	movq	%rax, -168(%rbp)
	jle	.L180
	movq	-120(%rbp), %r15
	movq	%r12, %r14
	.p2align 4,,10
	.p2align 3
.L181:
	movq	%r15, %rcx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movl	$_Z22thread_func_faiss_scanPv, %edx
	addq	$40, %r15
	addq	$8, %r14
	call	pthread_create
	cmpq	%r15, %r13
	jne	.L181
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L183:
	movq	(%r12,%r15,8), %rdi
	xorl	%esi, %esi
	addq	$1, %r15
	call	pthread_join
	cmpl	%r15d, %ebx
	jg	.L183
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movabsq	$4835703278458516699, %rdx
	pxor	%xmm0, %xmm0
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	movq	-120(%rbp), %rax
	sarq	$18, %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm0
	leaq	32(%rax), %rdx
	xorl	%eax, %eax
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L185:
	addl	$1, %eax
	addsd	(%rdx), %xmm0
	addq	$40, %rdx
	cmpl	%ebx, %eax
	jl	.L185
.L184:
	divsd	-136(%rbp), %xmm0
	movl	$20, %edx
	movl	$.LC41, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, -136(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movl	$23, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movq	%rax, -152(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	-152(%rbp), %rcx
	movsd	-144(%rbp), %xmm0
	movq	%rcx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r15
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm5
	movq	%r15, %rdi
	divsd	-144(%rbp), %xmm5
	movapd	%xmm5, %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movq	%rax, %r15
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC30, %esi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-136(%rbp), %xmm0
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %edx
	movq	%rax, %r15
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC26, %esi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC27(%rip), %xmm0
	movq	%r15, %rdi
	divsd	-136(%rbp), %xmm0
	divsd	.LC28(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, -160(%rbp)
	movl	-160(%rbp), %eax
	cmpl	$3, %eax
	jne	.L186
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L242
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	.cfi_restore_state
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rdx
	movl	$10, %esi
	movq	48(%rdx), %rdx
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rdx
	je	.L125
	movq	%r15, %rdi
	call	*%rdx
	movsbl	%al, %esi
	jmp	.L125
.L237:
	leaq	-104(%rbp), %r13
	leaq	-96(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
.L112:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy
	jmp	.L114
.L180:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L184
.L174:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L178
.L168:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L172
.L162:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L166
.L156:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L160
.L150:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L154
.L144:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L148
.L138:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L142
.L132:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-168(%rbp), %rax
	movl	$1000000, %ecx
	pxor	%xmm0, %xmm0
	cqto
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L136
.L126:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-136(%rbp), %rax
	movl	$1000000, %ecx
	movq	$0, -152(%rbp)
	pxor	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	cqto
	movsd	%xmm1, -144(%rbp)
	idivq	%rcx
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L130
.L238:
	movzbl	(%r12), %eax
	leaq	-104(%rbp), %r13
	movb	%al, -80(%rbp)
	jmp	.L114
.L110:
	movl	$.LC42, %edi
	call	_ZSt19__throw_logic_errorPKc
.L239:
	movq	%r14, %rdi
	jmp	.L112
.L189:
	movq	-120(%rbp), %r15
	movq	-160(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	memset
	movq	-128(%rbp), %rcx
	movq	%r15, %rax
	addq	$22, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	imulq	$40, %rcx, %rax
	movq	%rsp, %r12
	addq	$22, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rcx, %rax
	subl	$1, %eax
	movq	%rsp, -120(%rbp)
	movl	%eax, -168(%rbp)
	jmp	.L191
.L119:
	call	__cxa_throw_bad_array_new_length
.L241:
	call	_ZSt16__throw_bad_castv
.LEHE0:
.L116:
	movl	$.LC15, %edi
.LEHB1:
	call	_ZSt20__throw_out_of_rangePKc
.L242:
	call	__stack_chk_fail
.L240:
	movl	$.LC15, %edi
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE1:
.L194:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	-96(%rbp), %rdi
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rdi
	je	.L188
	call	_ZdlPv
.L188:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1830:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1830:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1830-.LLSDACSB1830
.LLSDACSB1830:
	.uleb128 .LEHB0-.LFB1830
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1830
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L194-.LFB1830
	.uleb128 0
	.uleb128 .LEHB2-.LFB1830
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1830:
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE43:
	.section	.text.startup
.LHOTE43:
	.section	.text.unlikely
.LCOLDB44:
	.section	.text.startup
.LHOTB44:
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv, @function
_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv:
.LFB2182:
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
.LFE2182:
	.size	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv, .-_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv
	.section	.text.unlikely
.LCOLDE44:
	.section	.text.startup
.LHOTE44:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1083129856
	.align 8
.LC19:
	.long	0
	.long	1076887552
	.align 8
.LC27:
	.long	0
	.long	1108200805
	.align 8
.LC28:
	.long	0
	.long	1104006501
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

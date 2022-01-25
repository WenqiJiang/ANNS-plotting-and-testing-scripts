	.file	"PQ_scan_multi_thread.cpp"
	.text
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rdi
	movq	24(%rax), %rcx
	testq	%rdx, %rdx
	jle	.L2
	movq	%rdi, %rax
	movq	%rdx, %rsi
	salq	$4, %rsi
	addq	%rdi, %rsi
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rsi, (%rsp)
.L3:
	movzbl	(%rax), %r15d
	movzbl	1(%rax), %r14d
	movzbl	2(%rax), %r13d
	movzbl	3(%rax), %r12d
	movzbl	4(%rax), %esi
	movzbl	5(%rax), %edi
	movb	%dil, 41(%rsp)
	movzbl	6(%rax), %ebx
	movb	%bl, 42(%rsp)
	movzbl	7(%rax), %edx
	movzbl	8(%rax), %ecx
	movzbl	9(%rax), %edi
	movzbl	10(%rax), %r8d
	movzbl	11(%rax), %r9d
	movzbl	12(%rax), %r10d
	movzbl	13(%rax), %r11d
	movzbl	14(%rax), %ebp
	movzbl	15(%rax), %ebx
	addq	$16, %rax
	cmpq	(%rsp), %rax
	jne	.L3
	movb	%sil, (%rsp)
	movb	%dl, 43(%rsp)
	movq	24(%rsp), %rdx
	movb	%cl, 24(%rsp)
	movq	32(%rsp), %rcx
	movb	%dil, 32(%rsp)
	movb	%r8b, 44(%rsp)
	movb	%r9b, 45(%rsp)
	movb	%r10b, 46(%rsp)
	movb	%r11b, 47(%rsp)
.L2:
	movzbl	%r15b, %esi
	movzbl	%r14b, %r14d
	addl	%r14d, %esi
	movzbl	%r13b, %r13d
	addl	%r13d, %esi
	movzbl	%r12b, %r12d
	addl	%r12d, %esi
	movzbl	(%rsp), %eax
	addl	%eax, %esi
	movzbl	41(%rsp), %eax
	addl	%eax, %esi
	movzbl	42(%rsp), %eax
	addl	%eax, %esi
	movzbl	43(%rsp), %eax
	addl	%eax, %esi
	movzbl	24(%rsp), %eax
	addl	%eax, %esi
	movzbl	32(%rsp), %eax
	addl	%eax, %esi
	movzbl	44(%rsp), %eax
	addl	%eax, %esi
	movzbl	45(%rsp), %eax
	addl	%eax, %esi
	movzbl	46(%rsp), %eax
	addl	%eax, %esi
	movzbl	47(%rsp), %eax
	addl	%esi, %eax
	movzbl	%bpl, %ebp
	addl	%eax, %ebp
	movzbl	%bl, %ebx
	addl	%ebp, %ebx
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	testq	%rdx, %rdx
	jle	.L4
	movq	%rcx, %rax
	leaq	(%rcx,%rdx,4), %rdx
.L5:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L5
.L4:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	16(%rsp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movq	8(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	addq	$56, %rsp
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
	.cfi_endproc
.LFE1812:
	.size	_Z34thread_func_unroll_scan_read_codesPv, .-_Z34thread_func_unroll_scan_read_codesPv
	.globl	_Z41thread_func_unroll_scan_read_longer_codesPv
	.type	_Z41thread_func_unroll_scan_read_longer_codesPv, @function
_Z41thread_func_unroll_scan_read_longer_codesPv:
.LFB1821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$2072, %rsp
	.cfi_def_cfa_offset 2096
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 2056(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movq	8(%rbx), %r8
	movq	24(%rbx), %r11
	movq	(%rbx), %rdx
	leaq	63(%rdx), %rax
	testq	%rdx, %rdx
	cmovns	%rdx, %rax
	sarq	$6, %rax
	testq	%rax, %rax
	jle	.L10
	movq	%rax, %r10
	movl	$0, %r9d
.L12:
	leaq	1024(%rsp), %rdi
	movl	$128, %ecx
	movq	%r8, %rsi
	rep movsq
	addq	$1024, %r8
	movl	$0, %eax
.L11:
	movzbl	1024(%rsp,%rax), %edx
	movb	%dl, (%rsp,%rax)
	addq	$1, %rax
	cmpq	$1024, %rax
	jne	.L11
	addq	$1, %r9
	cmpq	%r10, %r9
	jne	.L12
.L10:
	movzbl	(%rsp), %edx
	movzbl	1(%rsp), %eax
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
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, (%r11)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$18, %rax
	sarq	$63, %rcx
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rbx)
	movq	2056(%rsp), %rbx
	xorq	%fs:40, %rbx
	je	.L13
	call	__stack_chk_fail
.L13:
	addq	$2072, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1821:
	.size	_Z41thread_func_unroll_scan_read_longer_codesPv, .-_Z41thread_func_unroll_scan_read_longer_codesPv
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	movq	24(%rbx), %rdi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	addq	$16, %rax
	leaq	-1(%rsi), %r8
	cmpq	$1, %r8
	jle	.L18
	movq	%r8, %r9
	movl	$1, %edx
.L19:
	movq	(%rax), %r8
	movq	8(%rax), %rcx
	addq	$16, %rax
	addq	$1, %rdx
	cmpq	%r9, %rdx
	jne	.L19
	movq	%r8, %rdx
.L18:
	movzbl	%dl, %r8d
	movzbl	%dh, %eax
	addl	%eax, %r8d
	movq	%rdx, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	addl	%eax, %r8d
	movq	%rdx, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	addl	%eax, %r8d
	movq	%rdx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	addl	%eax, %r8d
	movq	%rdx, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	addl	%eax, %r8d
	movq	%rdx, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	addl	%r8d, %eax
	shrq	$56, %rdx
	addl	%eax, %edx
	movzbl	%cl, %eax
	addl	%eax, %edx
	movzbl	%ch, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	%rcx, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	addl	%eax, %edx
	shrq	$56, %rcx
	movq	%rcx, %rax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	testq	%rsi, %rsi
	jle	.L20
	movq	%rdi, %rax
	leaq	(%rdi,%rsi,4), %rdx
.L21:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L21
.L20:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rbx)
	movq	8(%rsp), %rdi
	xorq	%fs:40, %rdi
	je	.L22
	call	__stack_chk_fail
.L22:
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1822:
	.size	_Z43thread_func_unroll_scan_read_codes_prefetchPv, .-_Z43thread_func_unroll_scan_read_codes_prefetchPv
	.globl	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv
	.type	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, @function
_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv:
.LFB1823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$3096, %rsp
	.cfi_def_cfa_offset 3120
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 3080(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movq	(%rbx), %r11
	movq	8(%rbx), %r8
	movq	24(%rbx), %r9
	leaq	1024(%rsp), %rdi
	movl	$128, %ecx
	movq	%r8, %rsi
	rep movsq
	addq	$1024, %r8
	leaq	63(%r11), %rax
	testq	%r11, %r11
	cmovs	%rax, %r11
	sarq	$6, %r11
	leaq	-1(%r11), %rax
	movq	%rax, %r11
	movl	$0, %r10d
	testq	%rax, %rax
	jg	.L35
.L30:
	movl	$0, %eax
	jmp	.L28
.L35:
	leaq	2048(%rsp), %rdi
	movl	$128, %ecx
	movq	%r8, %rsi
	rep movsq
	addq	$1024, %r8
	movl	$0, %eax
.L29:
	movzbl	1024(%rsp,%rax), %edx
	movb	%dl, (%rsp,%rax)
	addq	$1, %rax
	cmpq	$1024, %rax
	jne	.L29
	leaq	1024(%rsp), %rdi
	leaq	2048(%rsp), %rsi
	movl	$128, %ecx
	rep movsq
	addq	$1, %r10
	cmpq	%r11, %r10
	jne	.L35
	jmp	.L30
.L28:
	movzbl	1024(%rsp,%rax), %edx
	movb	%dl, (%rsp,%rax)
	addq	$1, %rax
	cmpq	$1024, %rax
	jne	.L28
	movzbl	(%rsp), %edx
	movzbl	1(%rsp), %eax
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
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, (%r9)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$18, %rax
	sarq	$63, %rcx
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rbx)
	movq	3080(%rsp), %rbx
	xorq	%fs:40, %rbx
	je	.L32
	call	__stack_chk_fail
.L32:
	addq	$3096, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1823:
	.size	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, .-_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv
	.globl	_Z30thread_func_unroll_scan_no_addPv
	.type	_Z30thread_func_unroll_scan_no_addPv, @function
_Z30thread_func_unroll_scan_no_addPv:
.LFB1824:
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
	movq	%rdi, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rcx
	movq	16(%rax), %rdx
	movq	24(%rax), %rdi
	testq	%rsi, %rsi
	jle	.L38
	movq	%rcx, %rax
	movq	%rsi, %r8
	salq	$4, %r8
	addq	%rcx, %r8
.L39:
	movzbl	(%rax), %ecx
	movss	(%rdx,%rcx,4), %xmm0
	movzbl	1(%rax), %ecx
	movss	1024(%rdx,%rcx,4), %xmm1
	movzbl	2(%rax), %ecx
	movss	2048(%rdx,%rcx,4), %xmm2
	movzbl	3(%rax), %ecx
	movss	3072(%rdx,%rcx,4), %xmm3
	movzbl	4(%rax), %ecx
	movss	4096(%rdx,%rcx,4), %xmm4
	movzbl	5(%rax), %ecx
	movss	5120(%rdx,%rcx,4), %xmm5
	movzbl	6(%rax), %ecx
	movss	6144(%rdx,%rcx,4), %xmm6
	movzbl	7(%rax), %ecx
	movss	7168(%rdx,%rcx,4), %xmm7
	movzbl	8(%rax), %ecx
	movss	8192(%rdx,%rcx,4), %xmm8
	movzbl	9(%rax), %ecx
	movss	9216(%rdx,%rcx,4), %xmm9
	movzbl	10(%rax), %ecx
	movss	10240(%rdx,%rcx,4), %xmm10
	movzbl	11(%rax), %ecx
	movss	11264(%rdx,%rcx,4), %xmm11
	movzbl	12(%rax), %ecx
	movss	12288(%rdx,%rcx,4), %xmm12
	movzbl	13(%rax), %ecx
	movss	13312(%rdx,%rcx,4), %xmm13
	movzbl	14(%rax), %ecx
	movss	14336(%rdx,%rcx,4), %xmm14
	movzbl	15(%rax), %ecx
	movss	15360(%rdx,%rcx,4), %xmm15
	addq	$16, %rax
	cmpq	%r8, %rax
	jne	.L39
	movss	%xmm0, 24(%rsp)
	movss	%xmm1, 28(%rsp)
	movss	%xmm2, 32(%rsp)
	movss	%xmm3, 36(%rsp)
	movss	%xmm4, 40(%rsp)
	movss	%xmm5, 44(%rsp)
	movss	%xmm6, 48(%rsp)
	movss	%xmm7, 52(%rsp)
	movss	%xmm8, 56(%rsp)
	movss	%xmm9, 60(%rsp)
	movd	%xmm10, %r15d
	movd	%xmm11, %r14d
	movd	%xmm12, %r13d
	movd	%xmm13, %r12d
	movd	%xmm14, %ebp
	movd	%xmm15, %ebx
.L38:
	movss	28(%rsp), %xmm0
	addss	24(%rsp), %xmm0
	addss	32(%rsp), %xmm0
	addss	36(%rsp), %xmm0
	addss	40(%rsp), %xmm0
	addss	44(%rsp), %xmm0
	addss	48(%rsp), %xmm0
	addss	52(%rsp), %xmm0
	addss	56(%rsp), %xmm0
	addss	60(%rsp), %xmm0
	movl	%r15d, 24(%rsp)
	movss	24(%rsp), %xmm3
	addss	%xmm3, %xmm0
	movl	%r14d, 24(%rsp)
	movss	24(%rsp), %xmm4
	addss	%xmm4, %xmm0
	movl	%r13d, 24(%rsp)
	movss	24(%rsp), %xmm5
	addss	%xmm5, %xmm0
	movl	%r12d, 24(%rsp)
	movss	24(%rsp), %xmm6
	addss	%xmm6, %xmm0
	movl	%ebp, 24(%rsp)
	movss	24(%rsp), %xmm7
	addss	%xmm7, %xmm0
	movl	%ebx, 24(%rsp)
	movss	24(%rsp), %xmm1
	addss	%xmm1, %xmm0
	testq	%rsi, %rsi
	jle	.L40
	movq	%rdi, %rax
	leaq	(%rdi,%rsi,4), %rdx
.L41:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L41
.L40:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	16(%rsp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movq	8(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	addq	$72, %rsp
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
	.cfi_endproc
.LFE1824:
	.size	_Z30thread_func_unroll_scan_no_addPv, .-_Z30thread_func_unroll_scan_no_addPv
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rcx
	testq	%rdi, %rdi
	jle	.L46
	movq	%rsi, %rax
	salq	$4, %rdi
	addq	%rsi, %rdi
.L47:
	movzbl	1(%rax), %r8d
	movzbl	(%rax), %esi
	movss	1024(%rdx,%r8,4), %xmm0
	addss	(%rdx,%rsi,4), %xmm0
	movzbl	2(%rax), %esi
	addss	2048(%rdx,%rsi,4), %xmm0
	movzbl	3(%rax), %esi
	addss	3072(%rdx,%rsi,4), %xmm0
	movzbl	4(%rax), %esi
	addss	4096(%rdx,%rsi,4), %xmm0
	movzbl	5(%rax), %esi
	addss	5120(%rdx,%rsi,4), %xmm0
	movzbl	6(%rax), %esi
	addss	6144(%rdx,%rsi,4), %xmm0
	movzbl	7(%rax), %esi
	addss	7168(%rdx,%rsi,4), %xmm0
	movzbl	8(%rax), %esi
	addss	8192(%rdx,%rsi,4), %xmm0
	movzbl	9(%rax), %esi
	addss	9216(%rdx,%rsi,4), %xmm0
	movzbl	10(%rax), %esi
	addss	10240(%rdx,%rsi,4), %xmm0
	movzbl	11(%rax), %esi
	addss	11264(%rdx,%rsi,4), %xmm0
	movzbl	12(%rax), %esi
	addss	12288(%rdx,%rsi,4), %xmm0
	movzbl	13(%rax), %esi
	addss	13312(%rdx,%rsi,4), %xmm0
	movzbl	14(%rax), %esi
	addss	14336(%rdx,%rsi,4), %xmm0
	movzbl	15(%rax), %esi
	addss	15360(%rdx,%rsi,4), %xmm0
	movss	%xmm0, (%rcx)
	addq	$16, %rax
	addq	$4, %rcx
	cmpq	%rdi, %rax
	jne	.L47
.L46:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rbx)
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	%rdi, %rbx
	movq	%rdi, 200(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 192(%rsp)
	movq	(%rbx), %rdi
	movq	%rdi, 184(%rsp)
	movq	8(%rbx), %r13
	movq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	movq	%rax, 40(%rsp)
	leaq	1024(%rbp), %rax
	movq	%rax, 48(%rsp)
	leaq	2048(%rbp), %rax
	movq	%rax, 56(%rsp)
	leaq	3072(%rbp), %rax
	movq	%rax, 64(%rsp)
	leaq	4096(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	5120(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	6144(%rbp), %rax
	movq	%rax, 88(%rsp)
	leaq	7168(%rbp), %rax
	movq	%rax, 96(%rsp)
	leaq	8192(%rbp), %rax
	movq	%rax, 104(%rsp)
	leaq	9216(%rbp), %rax
	movq	%rax, 112(%rsp)
	leaq	10240(%rbp), %rax
	movq	%rax, 120(%rsp)
	leaq	11264(%rbp), %rax
	movq	%rax, 128(%rsp)
	leaq	12288(%rbp), %rax
	movq	%rax, 136(%rsp)
	leaq	13312(%rbp), %rax
	movq	%rax, 144(%rsp)
	leaq	14336(%rbp), %rax
	movq	%rax, 152(%rsp)
	leaq	15360(%rbp), %rax
	movq	%rax, 160(%rsp)
	movq	0(%r13), %rcx
	movq	8(%r13), %r12
	leaq	-1(%rdi), %rax
	testq	%rax, %rax
	jle	.L51
	leaq	-4(,%rdi,4), %rax
	movq	%rax, 176(%rsp)
	movl	$0, %r14d
	movq	%rbp, 168(%rsp)
	movq	%r12, %rax
.L52:
	movzbl	%cl, %esi
	movq	%rsi, %r12
	movzbl	%ch, %edx
	movq	48(%rsp), %rbx
	movss	(%rbx,%rdx,4), %xmm0
	movq	%rcx, %rdx
	shrq	$16, %rdx
	movzbl	%dl, %esi
	movq	%rsi, (%rsp)
	movq	%rcx, %rbp
	shrq	$24, %rbp
	movzbl	%bpl, %ebp
	movq	%rcx, %rbx
	shrq	$32, %rbx
	movzbl	%bl, %ebx
	movq	%rcx, %r11
	shrq	$40, %r11
	movzbl	%r11b, %r11d
	movq	%rcx, %r10
	shrq	$48, %r10
	movzbl	%r10b, %r10d
	shrq	$56, %rcx
	movq	%rcx, 8(%rsp)
	movzbl	%al, %r15d
	movzbl	%ah, %esi
	movq	%rsi, 16(%rsp)
	movq	%rax, %r9
	shrq	$16, %r9
	movzbl	%r9b, %r9d
	movq	%rax, %r8
	shrq	$24, %r8
	movzbl	%r8b, %r8d
	movq	%rax, %rdi
	shrq	$32, %rdi
	movzbl	%dil, %edi
	movq	%rax, %rsi
	shrq	$40, %rsi
	movzbl	%sil, %esi
	movq	%rax, %rdx
	shrq	$48, %rdx
	movzbl	%dl, %ecx
	movq	%rcx, 24(%rsp)
	shrq	$56, %rax
	movq	%rax, 32(%rsp)
	movq	16(%r13,%r14,4), %rcx
	movq	24(%r13,%r14,4), %rax
	movq	168(%rsp), %rdx
	addss	(%rdx,%r12,4), %xmm0
	movq	56(%rsp), %rdx
	movq	(%rsp), %r12
	addss	(%rdx,%r12,4), %xmm0
	movq	64(%rsp), %rdx
	addss	(%rdx,%rbp,4), %xmm0
	movq	72(%rsp), %rdx
	addss	(%rdx,%rbx,4), %xmm0
	movq	80(%rsp), %rdx
	addss	(%rdx,%r11,4), %xmm0
	movq	88(%rsp), %rdx
	addss	(%rdx,%r10,4), %xmm0
	movq	96(%rsp), %rdx
	movq	8(%rsp), %rbx
	addss	(%rdx,%rbx,4), %xmm0
	movq	104(%rsp), %rbx
	addss	(%rbx,%r15,4), %xmm0
	movq	112(%rsp), %rbx
	movq	16(%rsp), %rdx
	addss	(%rbx,%rdx,4), %xmm0
	movq	120(%rsp), %rbx
	addss	(%rbx,%r9,4), %xmm0
	movq	128(%rsp), %rbx
	addss	(%rbx,%r8,4), %xmm0
	movq	136(%rsp), %rbx
	addss	(%rbx,%rdi,4), %xmm0
	movq	144(%rsp), %rbx
	addss	(%rbx,%rsi,4), %xmm0
	movq	152(%rsp), %rsi
	movq	24(%rsp), %rdi
	addss	(%rsi,%rdi,4), %xmm0
	movq	160(%rsp), %rsi
	movq	32(%rsp), %rdi
	addss	(%rsi,%rdi,4), %xmm0
	movq	40(%rsp), %rdi
	movss	%xmm0, (%rdi,%r14)
	addq	$4, %r14
	cmpq	176(%rsp), %r14
	jne	.L52
	movq	168(%rsp), %rbp
	movq	%rax, %r12
.L51:
	movzbl	%cl, %edx
	movzbl	%ch, %eax
	movss	0(%rbp,%rdx,4), %xmm0
	movq	48(%rsp), %rdi
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	movq	56(%rsp), %rdi
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	movq	64(%rsp), %rdi
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	movq	72(%rsp), %rdi
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	movq	80(%rsp), %rsi
	addss	(%rsi,%rax,4), %xmm0
	movq	%rcx, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	movq	88(%rsp), %rdi
	addss	(%rdi,%rax,4), %xmm0
	movq	%rcx, %rax
	shrq	$56, %rax
	movq	96(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movzbl	%r12b, %eax
	movq	104(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	movzbl	%ah, %eax
	movq	112(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	shrq	$16, %rax
	movzbl	%al, %eax
	movq	120(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	movq	128(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	shrq	$32, %rax
	movzbl	%al, %eax
	movq	136(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	shrq	$40, %rax
	movzbl	%al, %eax
	movq	144(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	shrq	$48, %rax
	movzbl	%al, %eax
	movq	152(%rsp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movq	%r12, %rax
	shrq	$56, %rax
	movq	160(%rsp), %rsi
	addss	(%rsi,%rax,4), %xmm0
	movq	40(%rsp), %rax
	movq	184(%rsp), %rdi
	movss	%xmm0, -4(%rax,%rdi,4)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	192(%rsp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movq	200(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	movq	216(%rsp), %rsi
	xorq	%fs:40, %rsi
	je	.L53
	call	__stack_chk_fail
.L53:
	addq	$232, %rsp
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
	.cfi_endproc
.LFE1826:
	.size	_Z32thread_func_unroll_scan_prefetchPv, .-_Z32thread_func_unroll_scan_prefetchPv
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
	subq	$2184, %rsp
	.cfi_def_cfa_offset 2240
	movq	%rdi, %rbx
	movq	%rdi, 104(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 2168(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 96(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	movq	%rsi, 72(%rsp)
	movq	16(%rbx), %r8
	movq	24(%rbx), %rbx
	movq	%rbx, 56(%rsp)
	leaq	1024(%r8), %rbx
	movq	%rbx, (%rsp)
	leaq	2048(%r8), %rbx
	movq	%rbx, 8(%rsp)
	leaq	3072(%r8), %rbx
	movq	%rbx, 16(%rsp)
	leaq	4096(%r8), %rbx
	movq	%rbx, 24(%rsp)
	leaq	5120(%r8), %rbx
	movq	%rbx, 32(%rsp)
	leaq	6144(%r8), %rbx
	movq	%rbx, 64(%rsp)
	leaq	7168(%r8), %r9
	leaq	8192(%r8), %r10
	leaq	9216(%r8), %r11
	leaq	10240(%r8), %rbx
	leaq	11264(%r8), %rbp
	leaq	12288(%r8), %r12
	leaq	13312(%r8), %r13
	leaq	14336(%r8), %r14
	leaq	15360(%r8), %r15
	leaq	112(%rsp), %rdi
	movl	$128, %ecx
	rep movsq
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	leaq	-1(%rax), %rdi
	movq	%rdi, 88(%rsp)
	testq	%rdi, %rdi
	jg	.L57
.L60:
	leaq	112(%rsp), %rax
	movq	88(%rsp), %rsi
	salq	$8, %rsi
	addq	56(%rsp), %rsi
	leaq	1024(%rax), %rdi
	movq	%rdi, 40(%rsp)
	movq	64(%rsp), %rdi
	jmp	.L58
.L57:
	salq	$8, %rax
	subq	$256, %rax
	movq	%rax, 80(%rsp)
	movq	$0, 48(%rsp)
.L61:
	leaq	1136(%rsp), %rdi
	movq	72(%rsp), %rsi
	movq	48(%rsp), %rdx
	leaq	1024(%rsi,%rdx,4), %rsi
	movl	$128, %ecx
	rep movsq
	leaq	112(%rsp), %rax
	movq	56(%rsp), %rsi
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	leaq	1024(%rax), %rdi
	movq	%rdi, 40(%rsp)
	movq	64(%rsp), %rdi
.L59:
	movzbl	(%rax), %esi
	movzbl	1(%rax), %ecx
	movss	(%r8,%rsi,4), %xmm0
	movq	(%rsp), %rsi
	addss	(%rsi,%rcx,4), %xmm0
	movzbl	2(%rax), %ecx
	movq	8(%rsp), %rsi
	addss	(%rsi,%rcx,4), %xmm0
	movzbl	3(%rax), %ecx
	movq	16(%rsp), %rsi
	addss	(%rsi,%rcx,4), %xmm0
	movzbl	4(%rax), %ecx
	movq	24(%rsp), %rsi
	addss	(%rsi,%rcx,4), %xmm0
	movzbl	5(%rax), %ecx
	movq	32(%rsp), %rsi
	addss	(%rsi,%rcx,4), %xmm0
	movzbl	6(%rax), %ecx
	addss	(%rdi,%rcx,4), %xmm0
	movzbl	7(%rax), %ecx
	addss	(%r9,%rcx,4), %xmm0
	movzbl	8(%rax), %ecx
	addss	(%r10,%rcx,4), %xmm0
	movzbl	9(%rax), %ecx
	addss	(%r11,%rcx,4), %xmm0
	movzbl	10(%rax), %ecx
	addss	(%rbx,%rcx,4), %xmm0
	movzbl	11(%rax), %ecx
	addss	0(%rbp,%rcx,4), %xmm0
	movzbl	12(%rax), %ecx
	addss	(%r12,%rcx,4), %xmm0
	movzbl	13(%rax), %ecx
	addss	0(%r13,%rcx,4), %xmm0
	movzbl	14(%rax), %ecx
	addss	(%r14,%rcx,4), %xmm0
	movzbl	15(%rax), %ecx
	addss	(%r15,%rcx,4), %xmm0
	movss	%xmm0, (%rdx)
	addq	$16, %rax
	addq	$4, %rdx
	cmpq	40(%rsp), %rax
	jne	.L59
	leaq	112(%rsp), %rdi
	leaq	1136(%rsp), %rsi
	movl	$128, %ecx
	rep movsq
	addq	$256, 48(%rsp)
	movq	48(%rsp), %rax
	cmpq	80(%rsp), %rax
	jne	.L61
	jmp	.L60
.L58:
	movzbl	(%rax), %ecx
	movzbl	1(%rax), %edx
	movss	(%r8,%rcx,4), %xmm0
	movq	(%rsp), %rcx
	addss	(%rcx,%rdx,4), %xmm0
	movzbl	2(%rax), %edx
	movq	8(%rsp), %rcx
	addss	(%rcx,%rdx,4), %xmm0
	movzbl	3(%rax), %edx
	movq	16(%rsp), %rcx
	addss	(%rcx,%rdx,4), %xmm0
	movzbl	4(%rax), %edx
	movq	24(%rsp), %rcx
	addss	(%rcx,%rdx,4), %xmm0
	movzbl	5(%rax), %edx
	movq	32(%rsp), %rcx
	addss	(%rcx,%rdx,4), %xmm0
	movzbl	6(%rax), %edx
	addss	(%rdi,%rdx,4), %xmm0
	movzbl	7(%rax), %edx
	addss	(%r9,%rdx,4), %xmm0
	movzbl	8(%rax), %edx
	addss	(%r10,%rdx,4), %xmm0
	movzbl	9(%rax), %edx
	addss	(%r11,%rdx,4), %xmm0
	movzbl	10(%rax), %edx
	addss	(%rbx,%rdx,4), %xmm0
	movzbl	11(%rax), %edx
	addss	0(%rbp,%rdx,4), %xmm0
	movzbl	12(%rax), %edx
	addss	(%r12,%rdx,4), %xmm0
	movzbl	13(%rax), %edx
	addss	0(%r13,%rdx,4), %xmm0
	movzbl	14(%rax), %edx
	addss	(%r14,%rdx,4), %xmm0
	movzbl	15(%rax), %edx
	addss	(%r15,%rdx,4), %xmm0
	movss	%xmm0, (%rsi)
	addq	$16, %rax
	addq	$4, %rsi
	cmpq	40(%rsp), %rax
	jne	.L58
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	96(%rsp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$18, %rax
	sarq	$63, %rcx
	subq	%rcx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movq	104(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	movq	2168(%rsp), %rbx
	xorq	%fs:40, %rbx
	je	.L62
	call	__stack_chk_fail
.L62:
	addq	$2184, %rsp
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
	.cfi_endproc
.LFE1827:
	.size	_Z45thread_func_unroll_scan_longer_codes_prefetchPv, .-_Z45thread_func_unroll_scan_longer_codes_prefetchPv
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
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movq	(%rbx), %r11
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rax
	movq	24(%rbx), %r10
	leaq	8192(%rax), %r12
	movq	(%rdi), %rsi
	movq	8(%rdi), %rcx
	leaq	-1(%r11), %rdx
	testq	%rdx, %rdx
	jle	.L67
	leaq	-4(,%r11,4), %r13
	movl	$0, %edx
.L68:
	andl	$15, %esi
	movq	%rsi, %r9
	movss	1024(%rax), %xmm0
	andl	$15, %ecx
	movq	%rcx, %r8
	movq	16(%rdi,%rdx,4), %rsi
	movq	24(%rdi,%rdx,4), %rcx
	addss	(%rax,%r9,4), %xmm0
	addss	2048(%rax), %xmm0
	addss	3072(%rax), %xmm0
	addss	4096(%rax), %xmm0
	addss	5120(%rax), %xmm0
	addss	6144(%rax), %xmm0
	addss	7168(%rax), %xmm0
	addss	(%r12,%r8,4), %xmm0
	addss	9216(%rax), %xmm0
	addss	10240(%rax), %xmm0
	addss	11264(%rax), %xmm0
	addss	12288(%rax), %xmm0
	addss	13312(%rax), %xmm0
	addss	14336(%rax), %xmm0
	addss	15360(%rax), %xmm0
	movss	%xmm0, (%r10,%rdx)
	addq	$4, %rdx
	cmpq	%r13, %rdx
	jne	.L68
.L67:
	andl	$15, %esi
	movss	(%rax,%rsi,4), %xmm0
	addss	1024(%rax), %xmm0
	addss	2048(%rax), %xmm0
	addss	3072(%rax), %xmm0
	addss	4096(%rax), %xmm0
	addss	5120(%rax), %xmm0
	addss	6144(%rax), %xmm0
	addss	7168(%rax), %xmm0
	andl	$15, %ecx
	addss	(%r12,%rcx,4), %xmm0
	addss	9216(%rax), %xmm0
	addss	10240(%rax), %xmm0
	addss	11264(%rax), %xmm0
	addss	12288(%rax), %xmm0
	addss	13312(%rax), %xmm0
	addss	14336(%rax), %xmm0
	addss	15360(%rax), %xmm0
	movss	%xmm0, -4(%r10,%r11,4)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rbx)
	movq	8(%rsp), %rbx
	xorq	%fs:40, %rbx
	je	.L69
	call	__stack_chk_fail
.L69:
	addq	$24, %rsp
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
.LFE1828:
	.size	_Z38thread_func_unroll_scan_shift_prefetchPv, .-_Z38thread_func_unroll_scan_shift_prefetchPv
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	movq	16(%rbx), %r8
	movq	24(%rbx), %rdx
	testq	%rcx, %rcx
	jle	.L73
	movq	%rdx, %rdi
	leaq	(%rdx,%rcx,4), %r9
.L75:
	leaq	16(%rax), %rsi
	movq	%r8, %rdx
	pxor	%xmm0, %xmm0
.L74:
	addq	$1, %rax
	movzbl	-1(%rax), %ecx
	addss	(%rdx,%rcx,4), %xmm0
	addq	$1024, %rdx
	cmpq	%rax, %rsi
	jne	.L74
	movss	%xmm0, (%rdi)
	addq	$4, %rdi
	movq	%rsi, %rax
	cmpq	%rdi, %r9
	jne	.L75
.L73:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%rbp, %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rbx)
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Usage: ./simple_cp_multi_thread <num_threads>\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"stoi"
.LC5:
	.string	"Scanning "
.LC6:
	.string	" PQ codes ("
.LC7:
	.string	" bytes per vec), "
.LC9:
	.string	" GB in total\n"
.LC10:
	.string	"\nIteration "
.LC11:
	.string	": "
.LC12:
	.string	"unroll read codes: size = "
.LC13:
	.string	" bytes\ntime (all sync)="
.LC14:
	.string	" seconds\n"
.LC15:
	.string	"throughput: "
.LC18:
	.string	"GB/s\n"
.LC19:
	.string	"time (thread average)="
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"unroll read longer codes: size = "
	.section	.rodata.str1.1
.LC21:
	.string	"longer code size = "
.LC22:
	.string	" bytes (instead of 16)"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"unroll read codes (prefetch): size = "
	.align 8
.LC24:
	.string	"unroll read longer codes (prefetch): size = "
	.section	.rodata.str1.1
.LC25:
	.string	"unroll scan (no add): size = "
.LC26:
	.string	"unroll scan: size = "
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"unroll scan (prefetch): size = "
	.align 8
.LC28:
	.string	"unroll scan longer (prefetch): size = "
	.align 8
.LC29:
	.string	"unroll scan (shift + prefetch): size = "
	.section	.rodata.str1.1
.LC30:
	.string	"fasiss scan: size = "
	.text
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
	subq	$152, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L80
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L80:
	movq	8(%rbx), %rsi
	leaq	-105(%rbp), %rdx
	leaq	-96(%rbp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE0:
	movq	-96(%rbp), %r12
	call	__errno_location
	movq	%rax, %rbx
	movl	$0, (%rax)
	movl	$10, %edx
	leaq	-104(%rbp), %rsi
	movq	%r12, %rdi
	call	strtol
	movq	%rax, -144(%rbp)
	cmpq	-104(%rbp), %r12
	jne	.L81
	movl	$.LC4, %edi
.LEHB1:
	call	_ZSt24__throw_invalid_argumentPKc
.L81:
	cmpl	$34, (%rbx)
	je	.L82
	movl	$2147483648, %eax
	addq	-144(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jbe	.L83
.L82:
	movl	$.LC4, %edi
	call	_ZSt20__throw_out_of_rangePKc
.LEHE1:
.L83:
	movq	-144(%rbp), %rbx
	movl	%ebx, %r14d
	movq	-96(%rbp), %rdi
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L84
	call	_ZdlPv
	movslq	%ebx, %rax
	movq	%rax, %rbx
	movq	%rax, -176(%rbp)
	movl	$1000000000, %eax
	cqto
	idivq	%rbx
	movq	%rax, -168(%rbp)
	movabsq	$1143914305352105984, %rax
	cmpq	%rax, %rbx
	ja	.L85
	leaq	0(,%rbx,8), %rax
	movq	%rax, -152(%rbp)
	movq	%rax, %rdi
.LEHB2:
	call	_Znam
	movq	%rax, %r15
	jmp	.L86
.L85:
	call	__cxa_throw_bad_array_new_length
.L86:
	movq	-152(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znam
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_Znam
	movq	%rax, %r13
	movq	%rbx, %rdi
	call	_Znam
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rsi
	testl	%esi, %esi
	jle	.L87
	movq	-168(%rbp), %rbx
	movq	%rbx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	%rbx, -136(%rbp)
	leaq	0(,%rbx,4), %rax
	movq	%rax, %rdx
	leal	-1(%rsi), %eax
	leaq	8(,%rax,8), %rax
	movq	%rax, -128(%rbp)
	movl	$0, %ebx
	movq	%r15, -120(%rbp)
	movq	%rdx, %r15
	movl	%r14d, -180(%rbp)
	movq	%rcx, %r14
.L90:
	movq	%r14, %rdi
	call	_Znam
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx,%rbx)
	movq	%r14, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$16384, %edi
	call	_Znam
	movq	%rax, (%r12,%rbx)
	movl	$16384, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movabsq	$2287828610704211968, %rcx
	cmpq	%rcx, -136(%rbp)
	ja	.L88
	movq	%r15, %rdi
	call	_Znam
	movq	%rax, 0(%r13,%rbx)
	movq	%r15, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	addq	$8, %rbx
	cmpq	-128(%rbp), %rbx
	jne	.L90
	movq	-120(%rbp), %r15
	movl	-180(%rbp), %r14d
	movq	-152(%rbp), %rdx
	movl	$0, %esi
	movq	-160(%rbp), %rdi
	call	memset
	movl	$16, %ecx
	movq	-176(%rbp), %rsi
	leaq	22(,%rsi,8), %rax
	movl	$0, %edx
	divq	%rcx
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, %rbx
	leaq	(%rsi,%rsi,4), %rax
	leaq	22(,%rax,8), %rax
	movl	$0, %edx
	divq	%rcx
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	%rsp, -120(%rbp)
	movl	$0, %edx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdi
	movq	-128(%rbp), %r8
	jmp	.L91
.L88:
	call	__cxa_throw_bad_array_new_length
.L91:
	movq	%rsi, (%rax)
	movq	(%r15,%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	(%r12,%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	0(%r13,%rdx), %rcx
	movq	%rcx, 24(%rax)
	movsd	(%rdi,%rdx), %xmm0
	movsd	%xmm0, 32(%rax)
	addq	$40, %rax
	addq	$8, %rdx
	cmpq	%rdx, %r8
	jne	.L91
.L159:
	movl	$9, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1000000000, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r12
	movl	$11, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$16, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi
	movq	%rax, %r12
	movl	$17, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC8(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	-144(%rbp), %rax
	leal	-1(%rax), %eax
	leaq	5(%rax,%rax,4), %rax
	movq	-120(%rbp), %rcx
	leaq	(%rcx,%rax,8), %r12
	movl	$0, -136(%rbp)
.L155:
	movl	$11, %edx
	movl	$.LC10, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	-136(%rbp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movq	%rax, %r15
	movl	$2, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %r13
	testq	%r13, %r13
	jne	.L92
	call	_ZSt16__throw_bad_castv
.L92:
	cmpb	$0, 56(%r13)
	je	.L93
	movzbl	67(%r13), %eax
	jmp	.L94
.L93:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	%r13, %rdi
	call	*48(%rax)
.L94:
	movsbl	%al, %esi
	movq	%r15, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -128(%rbp)
	testl	%r14d, %r14d
	jle	.L95
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L96:
	movq	%r13, %rcx
	movl	$_Z34thread_func_unroll_scan_read_codesPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L96
	movl	$0, %r13d
.L98:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L98
	jmp	.L97
.L95:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-128(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L99
.L100:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L100
.L99:
	pxor	%xmm4, %xmm4
	cvtsi2sd	%r14d, %xmm4
	movsd	%xmm4, -128(%rbp)
	divsd	%xmm4, %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$26, %edx
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm5
	divsd	-152(%rbp), %xmm5
	movapd	%xmm5, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L101
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L102:
	movq	%r13, %rcx
	movl	$_Z41thread_func_unroll_scan_read_longer_codesPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L102
	movl	$0, %r13d
.L104:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L104
	jmp	.L103
.L101:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L105
.L106:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L106
.L105:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$33, %edx
	movl	$.LC20, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$19, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1024, %esi
	movq	%r13, %rdi
	call	_ZNSolsEi
	movq	%rax, %r13
	movl	$22, %edx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm7
	divsd	-152(%rbp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L107
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L108:
	movq	%r13, %rcx
	movl	$_Z43thread_func_unroll_scan_read_codes_prefetchPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L108
	movl	$0, %r13d
.L110:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L110
	jmp	.L109
.L107:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L111
.L112:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L112
.L111:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$37, %edx
	movl	$.LC23, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm2
	divsd	-152(%rbp), %xmm2
	movapd	%xmm2, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L113
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L114:
	movq	%r13, %rcx
	movl	$_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L114
	movl	$0, %r13d
.L116:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L116
	jmp	.L115
.L113:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L117
.L118:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L118
.L117:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$44, %edx
	movl	$.LC24, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$19, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1024, %esi
	movq	%r13, %rdi
	call	_ZNSolsEi
	movq	%rax, %r13
	movl	$22, %edx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm3
	divsd	-152(%rbp), %xmm3
	movapd	%xmm3, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L119
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L120:
	movq	%r13, %rcx
	movl	$_Z30thread_func_unroll_scan_no_addPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L120
	movl	$0, %r13d
.L122:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L122
	jmp	.L121
.L119:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L123
.L124:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L124
.L123:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$29, %edx
	movl	$.LC25, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm7
	divsd	-152(%rbp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L125
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L126:
	movq	%r13, %rcx
	movl	$_Z23thread_func_unroll_scanPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L126
	movl	$0, %r13d
.L128:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L128
	jmp	.L127
.L125:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L129
.L130:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L130
.L129:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$20, %edx
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm2
	divsd	-152(%rbp), %xmm2
	movapd	%xmm2, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L131
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L132:
	movq	%r13, %rcx
	movl	$_Z32thread_func_unroll_scan_prefetchPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L132
	movl	$0, %r13d
.L134:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L134
	jmp	.L133
.L131:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L135
.L136:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L136
.L135:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$31, %edx
	movl	$.LC27, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm6
	divsd	-152(%rbp), %xmm6
	movapd	%xmm6, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L137
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L138:
	movq	%r13, %rcx
	movl	$_Z45thread_func_unroll_scan_longer_codes_prefetchPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L138
	movl	$0, %r13d
.L140:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L140
	jmp	.L139
.L137:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L141
.L142:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L142
.L141:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$38, %edx
	movl	$.LC28, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$19, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1024, %esi
	movq	%r13, %rdi
	call	_ZNSolsEi
	movq	%rax, %r13
	movl	$22, %edx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm7
	divsd	-152(%rbp), %xmm7
	movapd	%xmm7, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L143
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L144:
	movq	%r13, %rcx
	movl	$_Z38thread_func_unroll_scan_shift_prefetchPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r13, %r12
	jne	.L144
	movl	$0, %r13d
.L146:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L146
	jmp	.L145
.L143:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L147
.L148:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L148
.L147:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$39, %edx
	movl	$.LC29, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-152(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm1
	divsd	-152(%rbp), %xmm1
	movapd	%xmm1, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-144(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	testl	%r14d, %r14d
	jle	.L149
	movq	%rbx, %r15
	movq	-120(%rbp), %r13
.L150:
	movq	%r13, %rcx
	movl	$_Z22thread_func_faiss_scanPv, %edx
	movl	$0, %esi
	movq	%r15, %rdi
	call	pthread_create
	addq	$8, %r15
	addq	$40, %r13
	cmpq	%r12, %r13
	jne	.L150
	movl	$0, %r13d
.L152:
	movq	(%rbx,%r13,8), %rdi
	movl	$0, %esi
	call	pthread_join
	addq	$1, %r13
	cmpl	%r13d, %r14d
	jg	.L152
	jmp	.L151
.L149:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movl	$1000000, %ecx
	cqto
	idivq	%rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -144(%rbp)
	pxor	%xmm0, %xmm0
	jmp	.L153
.L154:
	addsd	(%rdx), %xmm0
	addl	$1, %eax
	addq	$40, %rdx
	cmpl	%r14d, %eax
	jl	.L154
.L153:
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	$20, %edx
	movl	$.LC30, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movabsq	$16000000000, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r13
	movl	$23, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-144(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm5
	divsd	-144(%rbp), %xmm5
	movapd	%xmm5, %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$22, %edx
	movl	$.LC19, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	-128(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movl	$9, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$12, %edx
	movl	$.LC15, %esi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	.LC16(%rip), %xmm0
	divsd	-128(%rbp), %xmm0
	divsd	.LC17(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$5, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, -136(%rbp)
	movl	-136(%rbp), %eax
	cmpl	$3, %eax
	jne	.L155
	movl	$0, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L160
	jmp	.L184
.L161:
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L157
	call	_ZdlPv
.L157:
	movq	%rbx, %rdi
	call	_Unwind_Resume
.L158:
	movq	-176(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -152(%rbp)
	movq	%rax, %rdi
	call	_Znam
.LEHE2:
	movq	%rax, %r15
	jmp	.L86
.L84:
	movslq	-144(%rbp), %rax
	movq	%rax, %rbx
	movq	%rax, -176(%rbp)
	movl	$1000000000, %eax
	cqto
	idivq	%rbx
	movq	%rax, -168(%rbp)
	movabsq	$1143914305352105984, %rax
	cmpq	%rax, %rbx
	jbe	.L158
	jmp	.L85
.L87:
	movq	-152(%rbp), %rdx
	movl	$0, %esi
	movq	-160(%rbp), %rdi
	call	memset
	movl	$16, %ecx
	movq	-176(%rbp), %rsi
	leaq	22(,%rsi,8), %rax
	movl	$0, %edx
	divq	%rcx
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, %rbx
	imulq	$40, %rsi, %rax
	addq	$22, %rax
	movl	$0, %edx
	divq	%rcx
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, -120(%rbp)
	jmp	.L159
.L97:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-128(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L100
.L103:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L106
.L109:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L112
.L115:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L118
.L121:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L124
.L127:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L130
.L133:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L136
.L139:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L142
.L145:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L148
.L151:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	imulq	%rdx
	sarq	$18, %rdx
	sarq	$63, %rcx
	subq	%rcx, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-120(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	jmp	.L154
.L184:
	call	__stack_chk_fail
.L160:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
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
	.uleb128 .L161-.LFB1830
	.uleb128 0
	.uleb128 .LEHB2-.LFB1830
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1830:
	.text
	.size	main, .-main
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
	call	__cxa_atexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2182:
	.size	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv, .-_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.align 8
.LC8:
	.long	0
	.long	1076887552
	.align 8
.LC16:
	.long	0
	.long	1108200805
	.align 8
.LC17:
	.long	0
	.long	1104006501
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

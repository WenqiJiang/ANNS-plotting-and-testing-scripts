	.file	"PQ_scan_multi_thread.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
.LC0:
	.string	"stoi"
	.section	.text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB816:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, %rsi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$.LC0, %esi
	movl	$strtol, %edi
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB1660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1660:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB1664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1664:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB1666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1666:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB1717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	subq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail
.L10:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1717:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIINS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.set	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIINS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB1716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -32(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L13
	call	__stack_chk_fail
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1716:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIIT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.set	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIIT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_:
.LFB1722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1722:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB1719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L17
	call	__stack_chk_fail
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1719:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB1718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1718:
	.size	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv:
.LFB1723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1723:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.text
	.globl	_Z34thread_func_unroll_scan_read_codesPv
	.type	_Z34thread_func_unroll_scan_read_codesPv, @function
_Z34thread_func_unroll_scan_read_codesPv:
.LFB1715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -168(%rbp)
.L24:
	movq	-168(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jge	.L23
	movq	-168(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -32(%rbp)
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -31(%rbp)
	movq	-104(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -30(%rbp)
	movq	-104(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-104(%rbp), %rax
	movzbl	4(%rax), %eax
	movb	%al, -28(%rbp)
	movq	-104(%rbp), %rax
	movzbl	5(%rax), %eax
	movb	%al, -27(%rbp)
	movq	-104(%rbp), %rax
	movzbl	6(%rax), %eax
	movb	%al, -26(%rbp)
	movq	-104(%rbp), %rax
	movzbl	7(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-104(%rbp), %rax
	movzbl	8(%rax), %eax
	movb	%al, -24(%rbp)
	movq	-104(%rbp), %rax
	movzbl	9(%rax), %eax
	movb	%al, -23(%rbp)
	movq	-104(%rbp), %rax
	movzbl	10(%rax), %eax
	movb	%al, -22(%rbp)
	movq	-104(%rbp), %rax
	movzbl	11(%rax), %eax
	movb	%al, -21(%rbp)
	movq	-104(%rbp), %rax
	movzbl	12(%rax), %eax
	movb	%al, -20(%rbp)
	movq	-104(%rbp), %rax
	movzbl	13(%rax), %eax
	movb	%al, -19(%rbp)
	movq	-104(%rbp), %rax
	movzbl	14(%rax), %eax
	movb	%al, -18(%rbp)
	movq	-104(%rbp), %rax
	movzbl	15(%rax), %eax
	movb	%al, -17(%rbp)
	addq	$1, -168(%rbp)
	jmp	.L24
.L23:
	movzbl	-32(%rbp), %eax
	movzbl	%al, %edx
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-30(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-29(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-28(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-27(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-26(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-25(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-24(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-23(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-22(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-21(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-20(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-19(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-18(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-17(%rbp), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -228(%rbp)
	movq	$0, -160(%rbp)
.L26:
	movq	-160(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jge	.L25
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	-228(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -160(%rbp)
	jmp	.L26
.L25:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -208(%rbp)
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-152(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L27
	call	__stack_chk_fail
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1715:
	.size	_Z34thread_func_unroll_scan_read_codesPv, .-_Z34thread_func_unroll_scan_read_codesPv
	.globl	_Z41thread_func_unroll_scan_read_longer_codesPv
	.type	_Z41thread_func_unroll_scan_read_longer_codesPv, @function
_Z41thread_func_unroll_scan_read_longer_codesPv:
.LFB1724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2208, %rsp
	movq	%rdi, -2200(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -2176(%rbp)
	movq	-2200(%rbp), %rax
	movq	%rax, -2096(%rbp)
	movq	-2096(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2088(%rbp)
	movq	-2096(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -2112(%rbp)
	movq	-2096(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -2080(%rbp)
	movq	-2096(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -2072(%rbp)
	movq	$0, -2104(%rbp)
.L32:
	movq	-2088(%rbp), %rax
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	cmpq	-2104(%rbp), %rax
	jle	.L29
	movq	-2112(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	addq	$1024, -2112(%rbp)
	movl	$0, -2184(%rbp)
.L31:
	cmpl	$1023, -2184(%rbp)
	jg	.L30
	movl	-2184(%rbp), %eax
	cltq
	movzbl	-1040(%rbp,%rax), %edx
	movl	-2184(%rbp), %eax
	cltq
	movb	%dl, -2064(%rbp,%rax)
	addl	$1, -2184(%rbp)
	jmp	.L31
.L30:
	addq	$1, -2104(%rbp)
	jmp	.L32
.L29:
	movzbl	-2064(%rbp), %eax
	movzbl	%al, %edx
	movzbl	-2063(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2062(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2061(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2060(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2059(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2058(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2057(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2056(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2055(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2054(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2053(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2052(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2051(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2050(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-2049(%rbp), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -2180(%rbp)
	movq	-2072(%rbp), %rax
	movss	-2180(%rbp), %xmm0
	movss	%xmm0, (%rax)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -2160(%rbp)
	leaq	-2176(%rbp), %rdx
	leaq	-2160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -2144(%rbp)
	leaq	-2144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -2128(%rbp)
	leaq	-2128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-2096(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L33
	call	__stack_chk_fail
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1724:
	.size	_Z41thread_func_unroll_scan_read_longer_codesPv, .-_Z41thread_func_unroll_scan_read_longer_codesPv
	.globl	_Z43thread_func_unroll_scan_read_codes_prefetchPv
	.type	_Z43thread_func_unroll_scan_read_codes_prefetchPv, @function
_Z43thread_func_unroll_scan_read_codes_prefetchPv:
.LFB1725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addq	$16, -192(%rbp)
	movq	$1, -184(%rbp)
.L36:
	movq	-160(%rbp), %rax
	subq	$1, %rax
	cmpq	-184(%rbp), %rax
	jle	.L35
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addq	$16, -192(%rbp)
	movzbl	-48(%rbp), %eax
	movb	%al, -64(%rbp)
	movzbl	-47(%rbp), %eax
	movb	%al, -63(%rbp)
	movzbl	-46(%rbp), %eax
	movb	%al, -62(%rbp)
	movzbl	-45(%rbp), %eax
	movb	%al, -61(%rbp)
	movzbl	-44(%rbp), %eax
	movb	%al, -60(%rbp)
	movzbl	-43(%rbp), %eax
	movb	%al, -59(%rbp)
	movzbl	-42(%rbp), %eax
	movb	%al, -58(%rbp)
	movzbl	-41(%rbp), %eax
	movb	%al, -57(%rbp)
	movzbl	-40(%rbp), %eax
	movb	%al, -56(%rbp)
	movzbl	-39(%rbp), %eax
	movb	%al, -55(%rbp)
	movzbl	-38(%rbp), %eax
	movb	%al, -54(%rbp)
	movzbl	-37(%rbp), %eax
	movb	%al, -53(%rbp)
	movzbl	-36(%rbp), %eax
	movb	%al, -52(%rbp)
	movzbl	-35(%rbp), %eax
	movb	%al, -51(%rbp)
	movzbl	-34(%rbp), %eax
	movb	%al, -50(%rbp)
	movzbl	-33(%rbp), %eax
	movb	%al, -49(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addq	$1, -184(%rbp)
	jmp	.L36
.L35:
	movzbl	-48(%rbp), %eax
	movb	%al, -64(%rbp)
	movzbl	-47(%rbp), %eax
	movb	%al, -63(%rbp)
	movzbl	-46(%rbp), %eax
	movb	%al, -62(%rbp)
	movzbl	-45(%rbp), %eax
	movb	%al, -61(%rbp)
	movzbl	-44(%rbp), %eax
	movb	%al, -60(%rbp)
	movzbl	-43(%rbp), %eax
	movb	%al, -59(%rbp)
	movzbl	-42(%rbp), %eax
	movb	%al, -58(%rbp)
	movzbl	-41(%rbp), %eax
	movb	%al, -57(%rbp)
	movzbl	-40(%rbp), %eax
	movb	%al, -56(%rbp)
	movzbl	-39(%rbp), %eax
	movb	%al, -55(%rbp)
	movzbl	-38(%rbp), %eax
	movb	%al, -54(%rbp)
	movzbl	-37(%rbp), %eax
	movb	%al, -53(%rbp)
	movzbl	-36(%rbp), %eax
	movb	%al, -52(%rbp)
	movzbl	-35(%rbp), %eax
	movb	%al, -51(%rbp)
	movzbl	-34(%rbp), %eax
	movb	%al, -50(%rbp)
	movzbl	-33(%rbp), %eax
	movb	%al, -49(%rbp)
	movzbl	-64(%rbp), %eax
	movzbl	%al, %edx
	movzbl	-63(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-62(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-61(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-60(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-59(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-58(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-57(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-56(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-55(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-54(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-53(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-52(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-51(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-50(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-49(%rbp), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -260(%rbp)
	movq	$0, -176(%rbp)
.L38:
	movq	-176(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jge	.L37
	movq	-176(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movss	-260(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -176(%rbp)
	jmp	.L38
.L37:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L39
	call	__stack_chk_fail
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1725:
	.size	_Z43thread_func_unroll_scan_read_codes_prefetchPv, .-_Z43thread_func_unroll_scan_read_codes_prefetchPv
	.globl	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv
	.type	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, @function
_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv:
.LFB1726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3232, %rsp
	movq	%rdi, -3224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -3200(%rbp)
	movq	-3224(%rbp), %rax
	movq	%rax, -3120(%rbp)
	movq	-3120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -3112(%rbp)
	movq	-3120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -3136(%rbp)
	movq	-3120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -3104(%rbp)
	movq	-3120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -3096(%rbp)
	movq	-3136(%rbp), %rdx
	leaq	-2064(%rbp), %rax
	movq	%rdx, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	addq	$1024, -3136(%rbp)
	movq	$0, -3128(%rbp)
.L44:
	movq	-3112(%rbp), %rax
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	subq	$1, %rax
	cmpq	-3128(%rbp), %rax
	jle	.L41
	movq	-3136(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	addq	$1024, -3136(%rbp)
	movl	$0, -3212(%rbp)
.L43:
	cmpl	$1023, -3212(%rbp)
	jg	.L42
	movl	-3212(%rbp), %eax
	cltq
	movzbl	-2064(%rbp,%rax), %edx
	movl	-3212(%rbp), %eax
	cltq
	movb	%dl, -3088(%rbp,%rax)
	addl	$1, -3212(%rbp)
	jmp	.L43
.L42:
	leaq	-2064(%rbp), %rax
	leaq	-1040(%rbp), %rdx
	movl	$128, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	addq	$1, -3128(%rbp)
	jmp	.L44
.L41:
	movl	$0, -3208(%rbp)
.L46:
	cmpl	$1023, -3208(%rbp)
	jg	.L45
	movl	-3208(%rbp), %eax
	cltq
	movzbl	-2064(%rbp,%rax), %edx
	movl	-3208(%rbp), %eax
	cltq
	movb	%dl, -3088(%rbp,%rax)
	addl	$1, -3208(%rbp)
	jmp	.L46
.L45:
	movzbl	-3088(%rbp), %eax
	movzbl	%al, %edx
	movzbl	-3087(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3086(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3085(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3084(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3083(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3082(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3081(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3080(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3079(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3078(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3077(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3076(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3075(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3074(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movzbl	-3073(%rbp), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -3204(%rbp)
	movq	-3096(%rbp), %rax
	movss	-3204(%rbp), %xmm0
	movss	%xmm0, (%rax)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -3184(%rbp)
	leaq	-3200(%rbp), %rdx
	leaq	-3184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -3168(%rbp)
	leaq	-3168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -3152(%rbp)
	leaq	-3152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-3120(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L47
	call	__stack_chk_fail
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1726:
	.size	_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, .-_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv
	.globl	_Z30thread_func_unroll_scan_no_addPv
	.type	_Z30thread_func_unroll_scan_no_addPv, @function
_Z30thread_func_unroll_scan_no_addPv:
.LFB1727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -360(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -336(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-240(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rax
	addq	$2048, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	addq	$3072, %rax
	movq	%rax, -192(%rbp)
	movq	-240(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -184(%rbp)
	movq	-240(%rbp), %rax
	addq	$5120, %rax
	movq	%rax, -176(%rbp)
	movq	-240(%rbp), %rax
	addq	$6144, %rax
	movq	%rax, -168(%rbp)
	movq	-240(%rbp), %rax
	addq	$7168, %rax
	movq	%rax, -160(%rbp)
	movq	-240(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -152(%rbp)
	movq	-240(%rbp), %rax
	addq	$9216, %rax
	movq	%rax, -144(%rbp)
	movq	-240(%rbp), %rax
	addq	$10240, %rax
	movq	%rax, -136(%rbp)
	movq	-240(%rbp), %rax
	addq	$11264, %rax
	movq	%rax, -128(%rbp)
	movq	-240(%rbp), %rax
	addq	$12288, %rax
	movq	%rax, -120(%rbp)
	movq	-240(%rbp), %rax
	addq	$13312, %rax
	movq	%rax, -112(%rbp)
	movq	-240(%rbp), %rax
	addq	$14336, %rax
	movq	%rax, -104(%rbp)
	movq	-240(%rbp), %rax
	addq	$15360, %rax
	movq	%rax, -96(%rbp)
	movq	$0, -280(%rbp)
.L50:
	movq	-280(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jge	.L49
	movq	-280(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
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
	addq	$1, -280(%rbp)
	jmp	.L50
.L49:
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
	movss	%xmm0, -340(%rbp)
	movq	$0, -272(%rbp)
.L52:
	movq	-272(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jge	.L51
	movq	-272(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movss	-340(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -272(%rbp)
	jmp	.L52
.L51:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -320(%rbp)
	leaq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -288(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-264(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L53
	call	__stack_chk_fail
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1727:
	.size	_Z30thread_func_unroll_scan_no_addPv, .-_Z30thread_func_unroll_scan_no_addPv
	.globl	_Z23thread_func_unroll_scanPv
	.type	_Z23thread_func_unroll_scanPv, @function
_Z23thread_func_unroll_scanPv:
.LFB1728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -360(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -336(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-240(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rax
	addq	$2048, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	addq	$3072, %rax
	movq	%rax, -192(%rbp)
	movq	-240(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -184(%rbp)
	movq	-240(%rbp), %rax
	addq	$5120, %rax
	movq	%rax, -176(%rbp)
	movq	-240(%rbp), %rax
	addq	$6144, %rax
	movq	%rax, -168(%rbp)
	movq	-240(%rbp), %rax
	addq	$7168, %rax
	movq	%rax, -160(%rbp)
	movq	-240(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -152(%rbp)
	movq	-240(%rbp), %rax
	addq	$9216, %rax
	movq	%rax, -144(%rbp)
	movq	-240(%rbp), %rax
	addq	$10240, %rax
	movq	%rax, -136(%rbp)
	movq	-240(%rbp), %rax
	addq	$11264, %rax
	movq	%rax, -128(%rbp)
	movq	-240(%rbp), %rax
	addq	$12288, %rax
	movq	%rax, -120(%rbp)
	movq	-240(%rbp), %rax
	addq	$13312, %rax
	movq	%rax, -112(%rbp)
	movq	-240(%rbp), %rax
	addq	$14336, %rax
	movq	%rax, -104(%rbp)
	movq	-240(%rbp), %rax
	addq	$15360, %rax
	movq	%rax, -96(%rbp)
	movq	$0, -272(%rbp)
.L56:
	movq	-272(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jge	.L55
	movq	-272(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
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
	movss	%xmm0, -340(%rbp)
	movq	-272(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movss	-340(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -272(%rbp)
	jmp	.L56
.L55:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -320(%rbp)
	leaq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -288(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-264(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L57
	call	__stack_chk_fail
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1728:
	.size	_Z23thread_func_unroll_scanPv, .-_Z23thread_func_unroll_scanPv
	.globl	_Z32thread_func_unroll_scan_prefetchPv
	.type	_Z32thread_func_unroll_scan_prefetchPv, @function
_Z32thread_func_unroll_scan_prefetchPv:
.LFB1729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -352(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-280(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rax
	addq	$2048, %rax
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rax
	addq	$3072, %rax
	movq	%rax, -216(%rbp)
	movq	-264(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -208(%rbp)
	movq	-264(%rbp), %rax
	addq	$5120, %rax
	movq	%rax, -200(%rbp)
	movq	-264(%rbp), %rax
	addq	$6144, %rax
	movq	%rax, -192(%rbp)
	movq	-264(%rbp), %rax
	addq	$7168, %rax
	movq	%rax, -184(%rbp)
	movq	-264(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -176(%rbp)
	movq	-264(%rbp), %rax
	addq	$9216, %rax
	movq	%rax, -168(%rbp)
	movq	-264(%rbp), %rax
	addq	$10240, %rax
	movq	%rax, -160(%rbp)
	movq	-264(%rbp), %rax
	addq	$11264, %rax
	movq	%rax, -152(%rbp)
	movq	-264(%rbp), %rax
	addq	$12288, %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	addq	$13312, %rax
	movq	%rax, -136(%rbp)
	movq	-264(%rbp), %rax
	addq	$14336, %rax
	movq	%rax, -128(%rbp)
	movq	-264(%rbp), %rax
	addq	$15360, %rax
	movq	%rax, -120(%rbp)
	movq	-296(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addq	$16, -296(%rbp)
	movq	$0, -288(%rbp)
.L60:
	movq	-272(%rbp), %rax
	subq	$1, %rax
	cmpq	-288(%rbp), %rax
	jle	.L59
	movq	-296(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addq	$16, -296(%rbp)
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -112(%rbp)
	movzbl	-47(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -108(%rbp)
	movzbl	-46(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	movzbl	-45(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -100(%rbp)
	movzbl	-44(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -96(%rbp)
	movzbl	-43(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
	movzbl	-42(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -88(%rbp)
	movzbl	-41(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -84(%rbp)
	movzbl	-40(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -80(%rbp)
	movzbl	-39(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp)
	movzbl	-38(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	movzbl	-37(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	movzbl	-36(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	movzbl	-35(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movzbl	-34(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	movzbl	-33(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movss	-112(%rbp), %xmm1
	movss	-108(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-96(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1
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
	movss	%xmm0, -360(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movss	-360(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -288(%rbp)
	jmp	.L60
.L59:
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -112(%rbp)
	movzbl	-47(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -108(%rbp)
	movzbl	-46(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	movzbl	-45(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -100(%rbp)
	movzbl	-44(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -96(%rbp)
	movzbl	-43(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
	movzbl	-42(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -88(%rbp)
	movzbl	-41(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -84(%rbp)
	movzbl	-40(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -80(%rbp)
	movzbl	-39(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp)
	movzbl	-38(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	movzbl	-37(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	movzbl	-36(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	movzbl	-35(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movzbl	-34(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	movzbl	-33(%rbp), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-112(%rbp), %xmm1
	movss	-108(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-96(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1
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
	movss	%xmm0, -356(%rbp)
	movq	-272(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movss	-356(%rbp), %xmm0
	movss	%xmm0, (%rax)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -336(%rbp)
	leaq	-352(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -320(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-280(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L61
	call	__stack_chk_fail
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1729:
	.size	_Z32thread_func_unroll_scan_prefetchPv, .-_Z32thread_func_unroll_scan_prefetchPv
	.globl	_Z45thread_func_unroll_scan_longer_codes_prefetchPv
	.type	_Z45thread_func_unroll_scan_longer_codes_prefetchPv, @function
_Z45thread_func_unroll_scan_longer_codes_prefetchPv:
.LFB1730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2400, %rsp
	movq	%rdi, -2392(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -2368(%rbp)
	movq	-2392(%rbp), %rax
	movq	%rax, -2296(%rbp)
	movq	-2296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2288(%rbp)
	movq	-2296(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -2312(%rbp)
	movq	-2296(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -2280(%rbp)
	movq	-2296(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -2272(%rbp)
	movq	-2280(%rbp), %rax
	movq	%rax, -2264(%rbp)
	movq	-2280(%rbp), %rax
	movq	%rax, -2256(%rbp)
	movq	-2280(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -2248(%rbp)
	movq	-2280(%rbp), %rax
	addq	$2048, %rax
	movq	%rax, -2240(%rbp)
	movq	-2280(%rbp), %rax
	addq	$3072, %rax
	movq	%rax, -2232(%rbp)
	movq	-2280(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -2224(%rbp)
	movq	-2280(%rbp), %rax
	addq	$5120, %rax
	movq	%rax, -2216(%rbp)
	movq	-2280(%rbp), %rax
	addq	$6144, %rax
	movq	%rax, -2208(%rbp)
	movq	-2280(%rbp), %rax
	addq	$7168, %rax
	movq	%rax, -2200(%rbp)
	movq	-2280(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -2192(%rbp)
	movq	-2280(%rbp), %rax
	addq	$9216, %rax
	movq	%rax, -2184(%rbp)
	movq	-2280(%rbp), %rax
	addq	$10240, %rax
	movq	%rax, -2176(%rbp)
	movq	-2280(%rbp), %rax
	addq	$11264, %rax
	movq	%rax, -2168(%rbp)
	movq	-2280(%rbp), %rax
	addq	$12288, %rax
	movq	%rax, -2160(%rbp)
	movq	-2280(%rbp), %rax
	addq	$13312, %rax
	movq	%rax, -2152(%rbp)
	movq	-2280(%rbp), %rax
	addq	$14336, %rax
	movq	%rax, -2144(%rbp)
	movq	-2280(%rbp), %rax
	addq	$15360, %rax
	movq	%rax, -2136(%rbp)
	movq	-2312(%rbp), %rdx
	leaq	-2064(%rbp), %rax
	movq	%rdx, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	addq	$1024, -2312(%rbp)
	movq	$0, -2304(%rbp)
.L66:
	movq	-2288(%rbp), %rax
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	subq	$1, %rax
	cmpq	-2304(%rbp), %rax
	jle	.L63
	movq	-2312(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	addq	$1024, -2312(%rbp)
	movl	$0, -2384(%rbp)
.L65:
	cmpl	$63, -2384(%rbp)
	jg	.L64
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2256(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2128(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$1, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2248(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2124(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$2, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2240(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2120(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$3, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2232(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2116(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$4, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2224(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2112(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$5, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2216(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2108(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$6, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2104(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$7, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2200(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2100(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$8, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2192(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2096(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$9, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2184(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2092(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$10, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2176(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2088(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$11, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2084(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$12, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2160(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2080(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$13, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2076(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$14, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2144(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2072(%rbp)
	movl	-2384(%rbp), %eax
	sall	$4, %eax
	addl	$15, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2068(%rbp)
	movss	-2128(%rbp), %xmm1
	movss	-2124(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-2120(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2116(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2112(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2108(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2100(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2096(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2092(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2088(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2084(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2080(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2076(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2072(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2068(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -2376(%rbp)
	movq	-2304(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movl	-2384(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-2272(%rbp), %rax
	addq	%rdx, %rax
	movss	-2376(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -2384(%rbp)
	jmp	.L65
.L64:
	leaq	-2064(%rbp), %rax
	leaq	-1040(%rbp), %rdx
	movl	$128, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	addq	$1, -2304(%rbp)
	jmp	.L66
.L63:
	movl	$0, -2380(%rbp)
.L68:
	cmpl	$63, -2380(%rbp)
	jg	.L67
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2256(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2128(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$1, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2248(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2124(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$2, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2240(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2120(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$3, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2232(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2116(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$4, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2224(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2112(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$5, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2216(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2108(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$6, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2104(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$7, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2200(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2100(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$8, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2192(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2096(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$9, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2184(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2092(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$10, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2176(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2088(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$11, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2084(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$12, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2160(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2080(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$13, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2152(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2076(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$14, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2144(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2072(%rbp)
	movl	-2380(%rbp), %eax
	sall	$4, %eax
	addl	$15, %eax
	cltq
	movzbl	-2064(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -2068(%rbp)
	movss	-2128(%rbp), %xmm1
	movss	-2124(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-2120(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2116(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2112(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2108(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2100(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2096(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2092(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2088(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2084(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2080(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2076(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2072(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-2068(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -2372(%rbp)
	movq	-2288(%rbp), %rax
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	subq	$1, %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movl	-2380(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-2272(%rbp), %rax
	addq	%rdx, %rax
	movss	-2372(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -2380(%rbp)
	jmp	.L68
.L67:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -2352(%rbp)
	leaq	-2368(%rbp), %rdx
	leaq	-2352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -2336(%rbp)
	leaq	-2336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -2320(%rbp)
	leaq	-2320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-2296(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L69
	call	__stack_chk_fail
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1730:
	.size	_Z45thread_func_unroll_scan_longer_codes_prefetchPv, .-_Z45thread_func_unroll_scan_longer_codes_prefetchPv
	.globl	_Z38thread_func_unroll_scan_shift_prefetchPv
	.type	_Z38thread_func_unroll_scan_shift_prefetchPv, @function
_Z38thread_func_unroll_scan_shift_prefetchPv:
.LFB1731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$640, %rsp
	movq	%rdi, -632(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -608(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-536(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-536(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-536(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-520(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -488(%rbp)
	movq	-520(%rbp), %rax
	addq	$2048, %rax
	movq	%rax, -480(%rbp)
	movq	-520(%rbp), %rax
	addq	$3072, %rax
	movq	%rax, -472(%rbp)
	movq	-520(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -464(%rbp)
	movq	-520(%rbp), %rax
	addq	$5120, %rax
	movq	%rax, -456(%rbp)
	movq	-520(%rbp), %rax
	addq	$6144, %rax
	movq	%rax, -448(%rbp)
	movq	-520(%rbp), %rax
	addq	$7168, %rax
	movq	%rax, -440(%rbp)
	movq	-520(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -432(%rbp)
	movq	-520(%rbp), %rax
	addq	$9216, %rax
	movq	%rax, -424(%rbp)
	movq	-520(%rbp), %rax
	addq	$10240, %rax
	movq	%rax, -416(%rbp)
	movq	-520(%rbp), %rax
	addq	$11264, %rax
	movq	%rax, -408(%rbp)
	movq	-520(%rbp), %rax
	addq	$12288, %rax
	movq	%rax, -400(%rbp)
	movq	-520(%rbp), %rax
	addq	$13312, %rax
	movq	%rax, -392(%rbp)
	movq	-520(%rbp), %rax
	addq	$14336, %rax
	movq	%rax, -384(%rbp)
	movq	-520(%rbp), %rax
	addq	$15360, %rax
	movq	%rax, -376(%rbp)
	movq	-552(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	addq	$16, -552(%rbp)
	movq	$0, -544(%rbp)
.L72:
	movq	-528(%rbp), %rax
	subq	$1, %rax
	cmpq	-544(%rbp), %rax
	jle	.L71
	movq	-552(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	addq	$16, -552(%rbp)
	movq	-112(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	-104(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	-368(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -80(%rbp)
	movq	-360(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-488(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-352(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-480(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	movq	-344(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-472(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-336(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-464(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	movq	-328(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-456(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-320(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-448(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-312(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-440(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-304(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-296(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-288(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-280(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-408(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-272(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-400(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-264(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-392(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-256(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-384(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
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
	movss	%xmm0, -616(%rbp)
	movq	-544(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-512(%rbp), %rax
	addq	%rdx, %rax
	movss	-616(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -544(%rbp)
	jmp	.L72
.L71:
	movq	-112(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	-104(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	-240(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -80(%rbp)
	movq	-232(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-488(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-224(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-480(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	movq	-216(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-472(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-208(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-464(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	movq	-200(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-456(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-192(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-448(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-440(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-176(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-168(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-160(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-152(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-408(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-400(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-136(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-392(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-128(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-384(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-120(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-376(%rbp), %rax
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
	movss	%xmm0, -612(%rbp)
	movq	-528(%rbp), %rax
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-512(%rbp), %rax
	addq	%rdx, %rax
	movss	-612(%rbp), %xmm0
	movss	%xmm0, (%rax)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -592(%rbp)
	leaq	-608(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -576(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -560(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-536(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L73
	call	__stack_chk_fail
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	_Z38thread_func_unroll_scan_shift_prefetchPv, .-_Z38thread_func_unroll_scan_shift_prefetchPv
	.globl	_Z22thread_func_faiss_scanPv
	.type	_Z22thread_func_faiss_scanPv, @function
_Z22thread_func_faiss_scanPv:
.LFB1732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -72(%rbp)
.L78:
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.L75
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	addq	$16, -80(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -148(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
.L77:
	cmpq	$15, -48(%rbp)
	jg	.L76
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-148(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)
	addq	$1024, -56(%rbp)
	addq	$1, -48(%rbp)
	jmp	.L77
.L76:
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movss	-148(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$1, -72(%rbp)
	jmp	.L78
.L75:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -128(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	nop
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L79
	call	__stack_chk_fail
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	_Z22thread_func_faiss_scanPv, .-_Z22thread_func_faiss_scanPv
	.section	.rodata
	.align 8
.LC3:
	.string	"Usage: ./simple_cp_multi_thread <num_threads>\n"
.LC6:
	.string	"Scanning "
.LC7:
	.string	" PQ codes ("
.LC8:
	.string	" bytes per vec), "
.LC9:
	.string	" GB in total\n"
.LC11:
	.string	"\nIteration "
.LC12:
	.string	": "
.LC13:
	.string	"unroll read codes: size = "
.LC14:
	.string	" bytes\ntime (all sync)="
.LC15:
	.string	" seconds\n"
.LC16:
	.string	"throughput: "
.LC17:
	.string	"GB/s\n"
.LC18:
	.string	"time (thread average)="
	.align 8
.LC19:
	.string	"unroll read longer codes: size = "
.LC20:
	.string	"longer code size = "
.LC21:
	.string	" bytes (instead of 16)"
	.align 8
.LC22:
	.string	"unroll read codes (prefetch): size = "
	.align 8
.LC23:
	.string	"unroll read longer codes (prefetch): size = "
.LC24:
	.string	"unroll scan (no add): size = "
.LC25:
	.string	"unroll scan: size = "
	.align 8
.LC26:
	.string	"unroll scan (prefetch): size = "
	.align 8
.LC27:
	.string	"unroll scan longer (prefetch): size = "
	.align 8
.LC28:
	.string	"unroll scan (shift + prefetch): size = "
.LC29:
	.string	"fasiss scan: size = "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1733:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1733
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
	subq	$424, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -404(%rbp)
	movq	%rsi, -416(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -424(%rbp)
	cmpl	$2, -404(%rbp)
	je	.L81
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE0:
.L81:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movq	-416(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-208(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE1:
	leaq	-96(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE2:
	movl	%eax, -260(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	$1000000000, -192(%rbp)
	movl	-260(%rbp), %eax
	movslq	%eax, %rbx
	movq	-192(%rbp), %rax
	cqto
	idivq	%rbx
	movq	%rax, -184(%rbp)
	movl	-260(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L82
	salq	$3, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Znam
	movq	%rax, -176(%rbp)
	movl	-260(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L84
	jmp	.L164
.L82:
	call	__cxa_throw_bad_array_new_length
.L164:
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -168(%rbp)
	movl	-260(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L86
	jmp	.L165
.L84:
	call	__cxa_throw_bad_array_new_length
.L165:
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -160(%rbp)
	movl	-260(%rbp), %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L88
	jmp	.L166
.L86:
	call	__cxa_throw_bad_array_new_length
.L166:
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -152(%rbp)
	movl	$0, -392(%rbp)
	jmp	.L93
.L88:
	call	__cxa_throw_bad_array_new_length
.L93:
	movl	-392(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L90
	movl	-392(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-184(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movq	-184(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movl	-392(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	-392(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$16384, %edi
	call	_Znam
	movq	%rax, (%rbx)
	movl	$16384, %ecx
	movl	-392(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	-392(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-184(%rbp), %rax
	movabsq	$2287828610704211968, %rdx
	cmpq	%rdx, %rax
	ja	.L91
	salq	$2, %rax
	jmp	.L167
.L91:
	call	__cxa_throw_bad_array_new_length
.L167:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, (%rbx)
	movq	-184(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movl	-392(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-160(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	addl	$1, -392(%rbp)
	jmp	.L93
.L90:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	-260(%rbp), %eax
	cltq
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -464(%rbp)
	movq	$0, -456(%rbp)
	addq	$1, %rax
	salq	$3, %rax
	leaq	7(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -136(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	imulq	$320, %r15, %rdx
	imulq	$0, %r14, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$320, %eax
	mulq	%r14
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rcx, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	imulq	$320, %r13, %rdx
	imulq	$0, %r12, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$320, %eax
	mulq	%r12
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rcx, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	7(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -120(%rbp)
	movl	$0, -388(%rbp)
.L95:
	movl	-388(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L94
	movq	-120(%rbp), %rcx
	movl	-388(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-388(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-120(%rbp), %rsi
	movl	-388(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movq	%rcx, (%rax)
	movl	-388(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-120(%rbp), %rsi
	movl	-388(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movl	-388(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-120(%rbp), %rsi
	movl	-388(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$24, %rax
	movq	%rcx, (%rax)
	movl	-388(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movq	-120(%rbp), %rcx
	movl	-388(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	%xmm0, (%rax)
	addl	$1, -388(%rbp)
	jmp	.L95
.L94:
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-192(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEl
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	$0, -384(%rbp)
.L157:
	cmpl	$2, -384(%rbp)
	jg	.L96
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-384(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -380(%rbp)
.L98:
	movl	-380(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L97
	movl	-380(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-380(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z34thread_func_unroll_scan_read_codesPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -380(%rbp)
	jmp	.L98
.L97:
	movl	$0, -376(%rbp)
.L100:
	movl	-376(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L99
	movq	-136(%rbp), %rax
	movl	-376(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -376(%rbp)
	jmp	.L100
.L99:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -372(%rbp)
.L102:
	movl	-372(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L101
	movq	-120(%rbp), %rcx
	movl	-372(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -372(%rbp)
	jmp	.L102
.L101:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -368(%rbp)
.L104:
	movl	-368(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L103
	movl	-368(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-368(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z41thread_func_unroll_scan_read_longer_codesPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -368(%rbp)
	jmp	.L104
.L103:
	movl	$0, -364(%rbp)
.L106:
	movl	-364(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L105
	movq	-136(%rbp), %rax
	movl	-364(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -364(%rbp)
	jmp	.L106
.L105:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -360(%rbp)
.L108:
	movl	-360(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L107
	movq	-120(%rbp), %rcx
	movl	-360(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -360(%rbp)
	jmp	.L108
.L107:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1024, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -356(%rbp)
.L110:
	movl	-356(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L109
	movl	-356(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-356(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z43thread_func_unroll_scan_read_codes_prefetchPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -356(%rbp)
	jmp	.L110
.L109:
	movl	$0, -352(%rbp)
.L112:
	movl	-352(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L111
	movq	-136(%rbp), %rax
	movl	-352(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -352(%rbp)
	jmp	.L112
.L111:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -348(%rbp)
.L114:
	movl	-348(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L113
	movq	-120(%rbp), %rcx
	movl	-348(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -348(%rbp)
	jmp	.L114
.L113:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movsd	%xmm4, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC22, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -344(%rbp)
.L116:
	movl	-344(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L115
	movl	-344(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-344(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z50thread_func_unroll_scan_read_longer_codes_prefetchPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -344(%rbp)
	jmp	.L116
.L115:
	movl	$0, -340(%rbp)
.L118:
	movl	-340(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L117
	movq	-136(%rbp), %rax
	movl	-340(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -340(%rbp)
	jmp	.L118
.L117:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -336(%rbp)
.L120:
	movl	-336(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L119
	movq	-120(%rbp), %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -336(%rbp)
	jmp	.L120
.L119:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm5
	divsd	%xmm1, %xmm5
	movsd	%xmm5, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC23, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1024, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -332(%rbp)
.L122:
	movl	-332(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L121
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z30thread_func_unroll_scan_no_addPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -332(%rbp)
	jmp	.L122
.L121:
	movl	$0, -328(%rbp)
.L124:
	movl	-328(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L123
	movq	-136(%rbp), %rax
	movl	-328(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -328(%rbp)
	jmp	.L124
.L123:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -324(%rbp)
.L126:
	movl	-324(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L125
	movq	-120(%rbp), %rcx
	movl	-324(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -324(%rbp)
	jmp	.L126
.L125:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm6
	divsd	%xmm1, %xmm6
	movsd	%xmm6, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC24, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -320(%rbp)
.L128:
	movl	-320(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L127
	movl	-320(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-320(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z23thread_func_unroll_scanPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -320(%rbp)
	jmp	.L128
.L127:
	movl	$0, -316(%rbp)
.L130:
	movl	-316(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L129
	movq	-136(%rbp), %rax
	movl	-316(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -316(%rbp)
	jmp	.L130
.L129:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -312(%rbp)
.L132:
	movl	-312(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L131
	movq	-120(%rbp), %rcx
	movl	-312(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -312(%rbp)
	jmp	.L132
.L131:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm7
	divsd	%xmm1, %xmm7
	movsd	%xmm7, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC25, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -308(%rbp)
.L134:
	movl	-308(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L133
	movl	-308(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-308(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z32thread_func_unroll_scan_prefetchPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -308(%rbp)
	jmp	.L134
.L133:
	movl	$0, -304(%rbp)
.L136:
	movl	-304(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L135
	movq	-136(%rbp), %rax
	movl	-304(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -304(%rbp)
	jmp	.L136
.L135:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -300(%rbp)
.L138:
	movl	-300(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L137
	movq	-120(%rbp), %rcx
	movl	-300(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -300(%rbp)
	jmp	.L138
.L137:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -296(%rbp)
.L140:
	movl	-296(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L139
	movl	-296(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z45thread_func_unroll_scan_longer_codes_prefetchPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -296(%rbp)
	jmp	.L140
.L139:
	movl	$0, -292(%rbp)
.L142:
	movl	-292(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L141
	movq	-136(%rbp), %rax
	movl	-292(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -292(%rbp)
	jmp	.L142
.L141:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -288(%rbp)
.L144:
	movl	-288(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L143
	movq	-120(%rbp), %rcx
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -288(%rbp)
	jmp	.L144
.L143:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC27, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1024, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -284(%rbp)
.L146:
	movl	-284(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L145
	movl	-284(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z38thread_func_unroll_scan_shift_prefetchPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -284(%rbp)
	jmp	.L146
.L145:
	movl	$0, -280(%rbp)
.L148:
	movl	-280(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L147
	movq	-136(%rbp), %rax
	movl	-280(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -280(%rbp)
	jmp	.L148
.L147:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -276(%rbp)
.L150:
	movl	-276(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L149
	movq	-120(%rbp), %rcx
	movl	-276(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -276(%rbp)
	jmp	.L150
.L149:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movsd	%xmm4, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC28, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -256(%rbp)
	movl	$0, -272(%rbp)
.L152:
	movl	-272(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L151
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-120(%rbp), %rdx
	addq	%rax, %rdx
	movl	-272(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	movl	$_Z22thread_func_faiss_scanPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -272(%rbp)
	jmp	.L152
.L151:
	movl	$0, -268(%rbp)
.L154:
	movl	-268(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L153
	movq	-136(%rbp), %rax
	movl	-268(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -268(%rbp)
	jmp	.L154
.L153:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -264(%rbp)
.L156:
	movl	-264(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.L155
	movq	-120(%rbp), %rcx
	movl	-264(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	addl	$1, -264(%rbp)
	jmp	.L156
.L155:
	pxor	%xmm0, %xmm0
	cvtsi2sd	-260(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -448(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm0, %xmm5
	divsd	%xmm1, %xmm5
	movsd	%xmm5, -464(%rbp)
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rbx
	movl	$.LC29, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)
	movsd	-432(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-464(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)
	movsd	-464(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-448(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addl	$1, -384(%rbp)
	jmp	.L157
.L96:
	movl	$0, %eax
	movq	-424(%rbp), %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L161
	jmp	.L168
.L163:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L160
.L162:
	movq	%rax, %rbx
.L160:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE3:
.L168:
	call	__stack_chk_fail
.L161:
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
.LFE1733:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1733:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1733-.LLSDACSB1733
.LLSDACSB1733:
	.uleb128 .LEHB0-.LFB1733
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1733
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L162-.LFB1733
	.uleb128 0
	.uleb128 .LEHB2-.LFB1733
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L163-.LFB1733
	.uleb128 0
	.uleb128 .LEHB3-.LFB1733
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1733:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB1735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	__errno_location
	movl	$0, (%rax)
	movl	-68(%rbp), %edx
	leaq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L170
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc
.L170:
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L171
	cmpq	$-2147483648, -16(%rbp)
	jl	.L171
	cmpq	$2147483647, -16(%rbp)
	jle	.L172
.L171:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc
.L172:
	movq	-16(%rbp), %rax
	movl	%eax, -28(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L173
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L173:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L175
	call	__stack_chk_fail
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1735:
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.weak	_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.set	_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2084:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L178
	cmpl	$65535, -8(%rbp)
	jne	.L178
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L178:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2084:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv, @function
_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv:
.LFB2085:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2085:
	.size	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv, .-_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z34thread_func_unroll_scan_read_codesPv
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1083129856
	.align 4
.LC4:
	.long	1098907648
	.align 8
.LC5:
	.long	0
	.long	1104006501
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

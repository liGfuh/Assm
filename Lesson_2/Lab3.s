	.file	"Lab3.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.globl	arr1D
	.data
	.align 8
	.type	arr1D, @object
	.size	arr1D, 12
arr1D:
	.long	10
	.long	20
	.long	30
	.globl	arr2D
	.align 16
	.type	arr2D, @object
	.size	arr2D, 24
arr2D:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.globl	res1
	.bss
	.align 4
	.type	res1, @object
	.size	res1, 4
res1:
	.zero	4
	.globl	res2
	.align 4
	.type	res2, @object
	.size	res2, 4
res2:
	.zero	4
	.section	.rodata
.LC0:
	.string	"arr1D[2]   = "
.LC1:
	.base64	"ICjQntC20LjQtNCw0LXQvCAzMCkA"
.LC2:
	.string	"arr2D[1][1] = "
.LC3:
	.base64	"ICjQntC20LjQtNCw0LXQvCA1KQA="
	.text
	.globl	main
	.type	main, @function
main:
.LFB1976:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
#APP
# 11 "Lab3.cpp" 1
	.intel_syntax noprefix
	mov eax, [arr1D + 8]
	mov res1, eax
	mov ebx, [arr2D + 16]
	mov res2, ebx
	.att_syntax
# 0 "" 2
#NO_APP
	lea	rdx, .LC0[rip]
	lea	rax, _ZSt4cout[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR res1[rip]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rdx, .LC2[rip]
	lea	rax, _ZSt4cout[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR res2[rip]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1976:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
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

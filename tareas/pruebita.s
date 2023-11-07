	.file	"pruebita.c"
# GNU C17 (GCC) version 13.2.1 20230801 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 13.2.1 20230801, GMP version 6.3.0, MPFR version 4.2.0-p12, MPC version 1.3.1, isl version isl-0.26-GMP

# warning: MPFR header version 4.2.0-p12 differs from library version 4.2.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2
	.text
	.p2align 4
	.globl	fuumo
	.type	fuumo, @function
fuumo:
.LFB11:
	.cfi_startproc
# pruebita.c:5:     return (1.0 + 0.0 * x);
	pxor	%xmm0, %xmm0	# _27
	cvtsi2sdl	%edi, %xmm0	# x, _27
# pruebita.c:4:   if (n == 0){
	testl	%esi, %esi	# n
	je	.L9	#,
# pruebita.c:3: int fuumo (int x, int n){
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# pruebita.c:7:     return (2.0 * x);
	addsd	%xmm0, %xmm0	# _27, _10
# pruebita.c:3: int fuumo (int x, int n){
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %ebx	# tmp112, n
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# pruebita.c:6:   } else if (n == 1) {
	cmpl	$1, %esi	#, n
	jne	.L4	#,
# pruebita.c:11: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# pruebita.c:7:     return (2.0 * x);
	cvttsd2sil	%xmm0, %eax	# _10, <retval>
# pruebita.c:11: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	leal	-1(%rsi), %r12d	#, _15
	movl	%edi, %ebp	# tmp111, x
	movsd	%xmm0, (%rsp)	# _10, %sfp
	movl	%r12d, %esi	# _15,
	call	fuumo	#
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	pxor	%xmm1, %xmm1	# tmp104
	movsd	(%rsp), %xmm0	# %sfp, _10
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movl	%ebp, %edi	# x,
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	cvtsi2sdl	%eax, %xmm1	# tmp113, tmp104
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	leal	-2(%rbx), %esi	#, tmp106
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	mulsd	%xmm0, %xmm1	# _10, _18
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	pxor	%xmm0, %xmm0	# tmp105
	cvtsi2sdl	%r12d, %xmm0	# _15, tmp105
	addsd	%xmm0, %xmm0	# tmp105, tmp105
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movsd	%xmm1, 8(%rsp)	# _18, %sfp
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movsd	%xmm0, (%rsp)	# tmp105, %sfp
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	call	fuumo	#
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	pxor	%xmm0, %xmm0	# tmp107
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movsd	8(%rsp), %xmm1	# %sfp, _18
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	cvtsi2sdl	%eax, %xmm0	# tmp114, tmp107
	mulsd	(%rsp), %xmm0	# %sfp, tmp108
# pruebita.c:11: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# pruebita.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	subsd	%xmm0, %xmm1	# tmp108, tmp109
	cvttsd2sil	%xmm1, %eax	# tmp109, <retval>
# pruebita.c:11: }
	ret	
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
# pruebita.c:5:     return (1.0 + 0.0 * x);
	pxor	%xmm1, %xmm1	# tmp101
	mulsd	%xmm1, %xmm0	# tmp101, tmp100
# pruebita.c:5:     return (1.0 + 0.0 * x);
	addsd	.LC1(%rip), %xmm0	#, tmp102
	cvttsd2sil	%xmm0, %eax	# tmp102, <retval>
# pruebita.c:11: }
	ret	
	.cfi_endproc
.LFE11:
	.size	fuumo, .-fuumo
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%d"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# pruebita.c:15:   scanf("%d", &x);
	leaq	.LC2(%rip), %rbx	#, tmp88
	movq	%rbx, %rdi	# tmp88,
# pruebita.c:13: int main(){
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# pruebita.c:13: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	movq	%rax, 8(%rsp)	# tmp97, D.3247
	xorl	%eax, %eax	# tmp97
# pruebita.c:15:   scanf("%d", &x);
	movq	%rsp, %rsi	#, tmp87
	call	__isoc99_scanf@PLT	#
# pruebita.c:16:   scanf("%d", &n);
	leaq	4(%rsp), %rsi	#, tmp89
	movq	%rbx, %rdi	# tmp88,
	xorl	%eax, %eax	#
	call	__isoc99_scanf@PLT	#
# pruebita.c:17:   printf("%d", fuumo(x,n));
	movl	4(%rsp), %esi	# n,
	movl	(%rsp), %edi	# x,
	call	fuumo	#
# pruebita.c:17:   printf("%d", fuumo(x,n));
	movq	%rbx, %rdi	# tmp88,
# pruebita.c:17:   printf("%d", fuumo(x,n));
	movl	%eax, %esi	# tmp96, _3
# pruebita.c:17:   printf("%d", fuumo(x,n));
	xorl	%eax, %eax	#
	call	printf@PLT	#
# pruebita.c:19: }
	movq	8(%rsp), %rax	# D.3247, tmp98
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	jne	.L13	#,
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits

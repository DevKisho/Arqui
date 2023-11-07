	.file	"prueba2.c"
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
# prueba2.c:5:     return (1.0 + 0.0 * x);
	pxor	%xmm0, %xmm0	# _28
	cvtsi2sdl	%edi, %xmm0	# x, _28
# prueba2.c:4:   if (n == 0){
	testl	%esi, %esi	# n
	je	.L9	#,
# prueba2.c:3: int fuumo (int x, int n){
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# prueba2.c:7:     return (2.0 * x);
	addsd	%xmm0, %xmm0	# _28, _27
# prueba2.c:3: int fuumo (int x, int n){
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %ebx	# tmp112, n
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# prueba2.c:6:   } else if (n == 1) {
	cmpl	$1, %esi	#, n
	jne	.L4	#,
# prueba2.c:11: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# prueba2.c:7:     return (2.0 * x);
	cvttsd2sil	%xmm0, %eax	# _27, <retval>
# prueba2.c:11: }
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
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	leal	-1(%rsi), %r12d	#, _8
	movl	%edi, %ebp	# tmp111, x
	movsd	%xmm0, (%rsp)	# _27, %sfp
	movl	%r12d, %esi	# _8,
	call	fuumo	#
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	pxor	%xmm1, %xmm1	# tmp104
	movsd	(%rsp), %xmm0	# %sfp, _27
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movl	%ebp, %edi	# x,
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	cvtsi2sdl	%eax, %xmm1	# tmp113, tmp104
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	leal	-2(%rbx), %esi	#, tmp106
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	mulsd	%xmm0, %xmm1	# _27, _11
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	pxor	%xmm0, %xmm0	# tmp105
	cvtsi2sdl	%r12d, %xmm0	# _8, tmp105
	addsd	%xmm0, %xmm0	# tmp105, tmp105
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movsd	%xmm1, 8(%rsp)	# _11, %sfp
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movsd	%xmm0, (%rsp)	# tmp105, %sfp
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	call	fuumo	#
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	pxor	%xmm0, %xmm0	# tmp107
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	movsd	8(%rsp), %xmm1	# %sfp, _11
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	cvtsi2sdl	%eax, %xmm0	# tmp114, tmp107
	mulsd	(%rsp), %xmm0	# %sfp, tmp108
# prueba2.c:11: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# prueba2.c:9:     return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
	subsd	%xmm0, %xmm1	# tmp108, tmp109
	cvttsd2sil	%xmm1, %eax	# tmp109, <retval>
# prueba2.c:11: }
	ret	
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
# prueba2.c:5:     return (1.0 + 0.0 * x);
	pxor	%xmm1, %xmm1	# tmp101
	mulsd	%xmm1, %xmm0	# tmp101, tmp100
# prueba2.c:5:     return (1.0 + 0.0 * x);
	addsd	.LC1(%rip), %xmm0	#, tmp102
	cvttsd2sil	%xmm0, %eax	# tmp102, <retval>
# prueba2.c:11: }
	ret	
	.cfi_endproc
.LFE11:
	.size	fuumo, .-fuumo
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits

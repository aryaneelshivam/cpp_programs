	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 5	sdk_version 15, 5
	.globl	__Z5powerii                     ; -- Begin function _Z5powerii
	.p2align	2
__Z5powerii:                            ; @_Z5powerii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w8, [x29, #-12]
	cbz	w8, LBB0_2
	b	LBB0_1
LBB0_1:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	b.ne	LBB0_3
	b	LBB0_2
LBB0_2:
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB0_6
LBB0_3:
	ldur	w0, [x29, #-8]
	ldur	w8, [x29, #-12]
	mov	w9, #2                          ; =0x2
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	sdiv	w1, w8, w9
	bl	__Z5powerii
	ldr	w10, [sp, #12]                  ; 4-byte Folded Reload
	str	w0, [sp, #16]
	ldur	w8, [x29, #-12]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, LBB0_5
	b	LBB0_4
LBB0_4:
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	LBB0_6
LBB0_5:
	ldur	w8, [x29, #-8]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	LBB0_6
LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	str	w8, [sp]                        ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #8]
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #4]
	ldr	w0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__Z5powerii
	mov	x1, x0
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

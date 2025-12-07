	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 5	sdk_version 15, 5
	.globl	__Z8issortedNSt3__16vectorIiNS_9allocatorIiEEEEi ; -- Begin function _Z8issortedNSt3__16vectorIiNS_9allocatorIiEEEEi
	.p2align	2
__Z8issortedNSt3__16vectorIiNS_9allocatorIiEEEEi: ; @_Z8issortedNSt3__16vectorIiNS_9allocatorIiEEEEi
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-16]
	stur	w1, [x29, #-20]
	ldursw	x1, [x29, #-20]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldrsw	x8, [x8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x9, x0, #1
	subs	x8, x8, x9
	b.ne	LBB0_2
	b	LBB0_1
LBB0_1:
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB0_7
LBB0_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursw	x1, [x29, #-20]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w8, [x8]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	add	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x1, w8
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [x0]
	subs	w8, w8, w9
	b.le	LBB0_4
	b	LBB0_3
LBB0_3:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB0_7
LBB0_4:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #48
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	add	w1, w8, #1
Ltmp0:
	bl	__Z8issortedNSt3__16vectorIiNS_9allocatorIiEEEEi
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
Ltmp1:
	b	LBB0_5
LBB0_5:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	b	LBB0_7
LBB0_6:
Ltmp2:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	b	LBB0_8
LBB0_7:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB0_8:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1               ;   Call between Ltmp1 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne190102Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
Ltmp5:
	adrp	x0, __ZNSt3__13cinE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__13cinE@GOTPAGEOFF]
	sub	x1, x29, #36
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp6:
	b	LBB5_1
LBB5_1:                                 ; %.split
	adrp	x9, l_constinit@PAGE
	add	x9, x9, l_constinit@PAGEOFF
	ldr	q0, [x9]
	sub	x8, x29, #32
	stur	q0, [x29, #-32]
	ldr	w9, [x9, #16]
	stur	w9, [x29, #-16]
	str	x8, [sp, #48]
	mov	x8, #5                          ; =0x5
	str	x8, [sp, #56]
	ldr	x1, [sp, #48]
	ldr	x2, [sp, #56]
Ltmp7:
	add	x0, sp, #64
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE
Ltmp8:
	b	LBB5_2
LBB5_2:                                 ; %.split.split
Ltmp10:
	add	x0, sp, #24
	add	x1, sp, #64
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
Ltmp11:
	b	LBB5_3
LBB5_3:
	ldur	w1, [x29, #-36]
Ltmp13:
	add	x0, sp, #24
	bl	__Z8issortedNSt3__16vectorIiNS_9allocatorIiEEEEi
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
Ltmp14:
	b	LBB5_4
LBB5_4:
Ltmp15:
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb
Ltmp16:
	b	LBB5_5
LBB5_5:
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	add	x0, sp, #64
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB5_7
	b	LBB5_6
LBB5_6:
	bl	___stack_chk_fail
LBB5_7:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB5_8:
Ltmp12:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB5_10
LBB5_9:
Ltmp17:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	b	LBB5_10
LBB5_10:
	add	x0, sp, #64
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne190102Ev
	b	LBB5_11
LBB5_11:
	ldr	x0, [sp, #16]
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB5_13
LBB5_12:                                ; %cleanup_resume
Ltmp9:
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB5_13
LBB5_13:                                ; %unwind_resume
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 1 <<
	.uleb128 Ltmp8-Ltmp5                    ;   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin1             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin1            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp16-Ltmp13                  ;   Call between Ltmp13 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin1            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp16              ;   Call between Ltmp16 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne190102ESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	sub	x8, x29, #24
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	xzr, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne190102IS2_vLi0EEES2_RKS2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	sub	x2, x29, #25
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnS3_EEOT_OT0_
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne190102Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne190102IPiS5_EEvT_T0_m
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne190102IS2_vLi0EEES2_RKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne190102IS2_vLi0EEES2_RKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne190102IS2_vLi0EEES2_RKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne190102IS2_vLi0EEES2_RKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE37select_on_container_copy_constructionB8ne190102IS2_vLi0EEES2_RKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnS3_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnS3_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnS3_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnS3_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnS3_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnS3_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne190102IPiS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne190102IPiS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne190102IPiS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne190102IPiS5_EEvT_T0_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__init_with_sizeB8ne190102IPiS5_EEvT_T0_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
	ldr	x0, [sp, #40]
	add	x8, sp, #48
	bl	__ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.ls	LBB11_5
	b	LBB11_1
LBB11_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp19:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em
Ltmp20:
	b	LBB11_2
LBB11_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
Ltmp21:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
Ltmp22:
	b	LBB11_3
LBB11_3:
	b	LBB11_5
LBB11_4:
Ltmp23:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #48
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	b	LBB11_6
LBB11_5:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB11_6:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp19-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp22-Ltmp19                  ;   Call between Ltmp19 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin2            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp22              ;   Call between Ltmp22 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.globl	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev: ; @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnS3_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnS3_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnS3_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnS3_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnS3_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102IS2_Li0EEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102IS2_Li0EEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102IS2_Li0EEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102IS2_Li0EEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102IS2_Li0EEEOT_: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102IS2_Li0EEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB19_2
	b	LBB19_1
LBB19_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev
LBB19_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]
	str	x1, [sp, #40]
	ldr	x8, [sp, #32]
	str	x8, [x0]
	ldr	x8, [sp, #32]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #40]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp27:
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp28:
	b	LBB20_1
LBB20_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB20_2:
Ltmp29:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	b	LBB20_3
LBB20_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table20:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp27-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin3            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp28              ;   Call between Ltmp28 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC1B8ne190102ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEC2B8ne190102ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_ ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne190102ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp33:
	bl	__ZNSt3__13minB8ne190102ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp34:
	b	LBB26_1
LBB26_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB26_2:
Ltmp35:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table26:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp33-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin4            ;     jumps to Ltmp35
	.byte	1                               ;   On action: 1
Lcst_end4:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne190102INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIiE8allocateB8ne190102Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne190102Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne190102ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB8ne190102ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB8ne190102ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB8ne190102ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB8ne190102ImEERKT_S3_S3_: ; @_ZNSt3__13minB8ne190102ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB8ne190102Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB8ne190102ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB36_2
	b	LBB36_1
LBB36_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB36_3
LBB36_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB36_3
LBB36_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB8ne190102ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev ; -- Begin function _ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev
	.globl	__ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev
	.weak_definition	__ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev
	.p2align	2
__ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev: ; @_ZNKSt3__19allocatorIiE8max_sizeB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #4611686018427387903        ; =0x3fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne190102Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne190102EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne190102EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne190102EPKc: ; @_ZNSt3__120__throw_length_errorB8ne190102EPKc
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp39:
	bl	__ZNSt12length_errorC1B8ne190102EPKc
Ltmp40:
	b	LBB40_1
LBB40_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB40_2:
Ltmp41:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB40_3
LBB40_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table40:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp39-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp39
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp40-Ltmp39                  ;   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin5            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp40              ;   Call between Ltmp40 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne190102EPKc ; -- Begin function _ZNSt12length_errorC1B8ne190102EPKc
	.globl	__ZNSt12length_errorC1B8ne190102EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne190102EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne190102EPKc:   ; @_ZNSt12length_errorC1B8ne190102EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B8ne190102EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B8ne190102EPKc ; -- Begin function _ZNSt12length_errorC2B8ne190102EPKc
	.globl	__ZNSt12length_errorC2B8ne190102EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B8ne190102EPKc
	.p2align	2
__ZNSt12length_errorC2B8ne190102EPKc:   ; @_ZNSt12length_errorC2B8ne190102EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiE8allocateB8ne190102Em ; -- Begin function _ZNSt3__19allocatorIiE8allocateB8ne190102Em
	.globl	__ZNSt3__19allocatorIiE8allocateB8ne190102Em
	.weak_definition	__ZNSt3__19allocatorIiE8allocateB8ne190102Em
	.p2align	2
__ZNSt3__19allocatorIiE8allocateB8ne190102Em: ; @_ZNSt3__19allocatorIiE8allocateB8ne190102Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne190102IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB43_2
	b	LBB43_1
LBB43_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne190102v
LBB43_2:
	ldr	x8, [sp, #16]
	lsl	x0, x8, #2
	mov	x1, #4                          ; =0x4
	bl	__ZNSt3__117__libcpp_allocateB8ne190102Emm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne190102v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne190102v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne190102v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB8ne190102v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne190102v: ; @_ZSt28__throw_bad_array_new_lengthB8ne190102v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne190102Emm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne190102Emm
	.globl	__ZNSt3__117__libcpp_allocateB8ne190102Emm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne190102Emm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne190102Emm: ; @_ZNSt3__117__libcpp_allocateB8ne190102Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB8ne190102IJmEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.globl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.globl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev: ; @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPiS3_S3_EET2_RT_T0_T1_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne190102ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_
	.globl	__ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_: ; @_ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEiiiLi0EEEPT2_RT_PT0_S8_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp45:
	bl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp46:
	b	LBB58_1
LBB58_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB58_2:
Ltmp47:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table58:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp45-Lfunc_begin6            ; >> Call Site 1 <<
	.uleb128 Ltmp46-Ltmp45                  ;   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin6            ;     jumps to Ltmp47
	.byte	1                               ;   On action: 1
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_ ; -- Begin function _ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.globl	__ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.weak_definition	__ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.p2align	2
__ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_: ; @_ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPiS1_EC1B8ne190102IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC1B8ne190102IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC1B8ne190102IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC1B8ne190102IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC1B8ne190102IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC1B8ne190102IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPiS1_EC2B8ne190102IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC2B8ne190102IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC2B8ne190102IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC2B8ne190102IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC2B8ne190102IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC2B8ne190102IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB8ne190102IPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPiS4_S4_Li0EEENS_4pairIT0_T2_EES6_T1_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB8ne190102IPiS1_EENS_4pairIT0_S3_EET_S5_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IiiLi0EEENS_4pairIPT_PT0_EES6_S6_S8_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne190102IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IiiLi0EEENS_4pairIPT_PT0_EES6_S6_S8_ ; -- Begin function _ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IiiLi0EEENS_4pairIPT_PT0_EES6_S6_S8_
	.weak_definition	__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IiiLi0EEENS_4pairIPT_PT0_EES6_S6_S8_
	.p2align	2
__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IiiLi0EEENS_4pairIPT_PT0_EES6_S6_S8_: ; @_ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IiiLi0EEENS_4pairIPT_PT0_EES6_S6_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne190102IPiS1_EET_S2_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB8ne190102IiiEENS_4pairIPT_PT0_EES3_S3_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne190102IiiLi0EEEPT_S2_PT0_NS_15__element_countE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.ls	LBB68_2
	b	LBB68_1
LBB68_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #2
	add	x2, x8, #4
	bl	_memmove
	b	LBB68_2
LBB68_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.globl	__ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_: ; @_ZNSt3__19make_pairB8ne190102IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPiS1_EC1B8ne190102IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC1B8ne190102IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC1B8ne190102IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC1B8ne190102IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC1B8ne190102IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC1B8ne190102IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPiS1_EC2B8ne190102IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPiS1_EC2B8ne190102IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPiS1_EC2B8ne190102IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPiS1_EC2B8ne190102IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPiS1_EC2B8ne190102IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPiS1_EC2B8ne190102IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_: ; @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne190102ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne190102ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED2B8ne190102Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB76_3
	b	LBB76_1
LBB76_1:
Ltmp52:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev
Ltmp53:
	b	LBB76_2
LBB76_2:
	b	LBB76_3
LBB76_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB76_4:
Ltmp54:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table76:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp52-Lfunc_begin7            ; >> Call Site 1 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin7            ;     jumps to Ltmp54
	.byte	1                               ;   On action: 1
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB77_2
	b	LBB77_1
LBB77_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim
	b	LBB77_2
LBB77_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne190102ERS2_Pim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIiE10deallocateB8ne190102EPim
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne190102EPi
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB82_1
LBB82_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB82_4
	b	LBB82_2
LBB82_2:                                ;   in Loop: Header=BB82_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne190102IiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp56:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne190102IiLi0EEEvRS2_PT_
Ltmp57:
	b	LBB82_3
LBB82_3:                                ;   in Loop: Header=BB82_1 Depth=1
	b	LBB82_1
LBB82_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB82_5:
Ltmp58:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table82:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp56-Lfunc_begin8            ; >> Call Site 1 <<
	.uleb128 Ltmp57-Ltmp56                  ;   Call between Ltmp56 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin8            ;     jumps to Ltmp58
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne190102IiLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne190102IiLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne190102IiLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne190102IiLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne190102IiLi0EEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIiE7destroyB8ne190102EPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiE7destroyB8ne190102EPi ; -- Begin function _ZNSt3__19allocatorIiE7destroyB8ne190102EPi
	.globl	__ZNSt3__19allocatorIiE7destroyB8ne190102EPi
	.weak_definition	__ZNSt3__19allocatorIiE7destroyB8ne190102EPi
	.p2align	2
__ZNSt3__19allocatorIiE7destroyB8ne190102EPi: ; @_ZNSt3__19allocatorIiE7destroyB8ne190102EPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiE10deallocateB8ne190102EPim ; -- Begin function _ZNSt3__19allocatorIiE10deallocateB8ne190102EPim
	.globl	__ZNSt3__19allocatorIiE10deallocateB8ne190102EPim
	.weak_definition	__ZNSt3__19allocatorIiE10deallocateB8ne190102EPim
	.p2align	2
__ZNSt3__19allocatorIiE10deallocateB8ne190102EPim: ; @_ZNSt3__19allocatorIiE10deallocateB8ne190102EPim
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #2
Ltmp60:
	mov	x2, #4                          ; =0x4
	bl	__ZNSt3__119__libcpp_deallocateB8ne190102EPvmm
Ltmp61:
	b	LBB85_1
LBB85_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB85_2:
Ltmp62:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table85:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp60-Lfunc_begin9            ; >> Call Site 1 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin9            ;     jumps to Ltmp62
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne190102EPvmm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne190102EPvmm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne190102EPvmm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne190102EPvmm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne190102EPvmm: ; @_ZNSt3__119__libcpp_deallocateB8ne190102EPvmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB8ne190102IJEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne190102IJPvEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.globl	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev: ; @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev: ; @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne190102Ev
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp64:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
Ltmp65:
	b	LBB92_1
LBB92_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne190102Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB92_2:
Ltmp66:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table92:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp64-Lfunc_begin10           ; >> Call Site 1 <<
	.uleb128 Ltmp65-Ltmp64                  ;   Call between Ltmp64 and Ltmp65
	.uleb128 Ltmp66-Lfunc_begin10           ;     jumps to Ltmp66
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne190102ESt16initializer_listIiE
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #24
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-16]
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	sub	x1, x29, #40
	stur	xzr, [x29, #-40]
	add	x0, x8, #16
	sub	x2, x29, #41
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, sp, #72
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne190102ERS3_
	ldr	x0, [sp, #72]
	sub	x8, x29, #64
	bl	__ZNSt3__122__make_exception_guardB8ne190102INS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	subs	x8, x0, #0
	b.ls	LBB93_5
	b	LBB93_1
LBB93_1:
	sub	x0, x29, #24
	bl	__ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	mov	x1, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
Ltmp67:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8ne190102Em
Ltmp68:
	b	LBB93_2
LBB93_2:
	sub	x0, x29, #24
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE5beginB8ne190102Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE3endB8ne190102Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
Ltmp69:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
Ltmp70:
	b	LBB93_3
LBB93_3:
	b	LBB93_5
LBB93_4:
Ltmp71:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	sub	x0, x29, #64
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	b	LBB93_6
LBB93_5:
	sub	x0, x29, #64
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEE10__completeB8ne190102Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIiNS_9allocatorIiEEE16__destroy_vectorEED1B8ne190102Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB93_6:
	ldr	x0, [sp, #64]
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table93:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp67-Lfunc_begin11           ;   Call between Lfunc_begin11 and Ltmp67
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin11           ; >> Call Site 2 <<
	.uleb128 Ltmp70-Ltmp67                  ;   Call between Ltmp67 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin11           ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin11           ; >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp70             ;   Call between Ltmp70 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIiE4sizeB8ne190102Ev ; -- Begin function _ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	.globl	__ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	.weak_definition	__ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	.p2align	2
__ZNKSt16initializer_listIiE4sizeB8ne190102Ev: ; @_ZNKSt16initializer_listIiE4sizeB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPKiS6_EEvT_T0_m
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne190102ERS3_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ne190102Ev
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp73:
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp74:
	b	LBB96_1
LBB96_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB96_2:
Ltmp75:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne190102Ev
	b	LBB96_3
LBB96_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table96:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp73-Lfunc_begin12           ;   Call between Lfunc_begin12 and Ltmp73
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin12           ; >> Call Site 2 <<
	.uleb128 Ltmp74-Ltmp73                  ;   Call between Ltmp73 and Ltmp74
	.uleb128 Ltmp75-Lfunc_begin12           ;     jumps to Ltmp75
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin12           ; >> Call Site 3 <<
	.uleb128 Lfunc_end12-Ltmp74             ;   Call between Ltmp74 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt16initializer_listIiE5beginB8ne190102Ev ; -- Begin function _ZNKSt16initializer_listIiE5beginB8ne190102Ev
	.globl	__ZNKSt16initializer_listIiE5beginB8ne190102Ev
	.weak_definition	__ZNKSt16initializer_listIiE5beginB8ne190102Ev
	.p2align	2
__ZNKSt16initializer_listIiE5beginB8ne190102Ev: ; @_ZNKSt16initializer_listIiE5beginB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIiE3endB8ne190102Ev ; -- Begin function _ZNKSt16initializer_listIiE3endB8ne190102Ev
	.globl	__ZNKSt16initializer_listIiE3endB8ne190102Ev
	.weak_definition	__ZNKSt16initializer_listIiE3endB8ne190102Ev
	.p2align	2
__ZNKSt16initializer_listIiE3endB8ne190102Ev: ; @_ZNKSt16initializer_listIiE3endB8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	add	x0, x8, x9, lsl #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ne190102IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne190102IDnLi0EEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ne190102ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIiEC2B8ne190102Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIiEC2B8ne190102Ev ; -- Begin function _ZNSt3__19allocatorIiEC2B8ne190102Ev
	.globl	__ZNSt3__19allocatorIiEC2B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIiEC2B8ne190102Ev
	.p2align	2
__ZNSt3__19allocatorIiEC2B8ne190102Ev:  ; @_ZNSt3__19allocatorIiEC2B8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne190102Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne190102INS_9allocatorIiEEPKiS4_PiEET2_RT_T0_T1_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.globl	__ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_: ; @_ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne190102INS_9allocatorIiEEKiiiLi0EEEPT2_RT_PT0_S9_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.globl	__ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_: ; @_ZNSt3__19make_pairB8ne190102IPKiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKiS2_EC1B8ne190102IS2_S2_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.globl	__ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_: ; @_ZNSt3__113__unwrap_iterB8ne190102IPKiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiS2_EC1B8ne190102IS2_S2_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiS2_EC1B8ne190102IS2_S2_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiS2_EC1B8ne190102IS2_S2_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiS2_EC1B8ne190102IS2_S2_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiS2_EC1B8ne190102IS2_S2_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKiS2_EC2B8ne190102IS2_S2_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiS2_EC2B8ne190102IS2_S2_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiS2_EC2B8ne190102IS2_S2_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiS2_EC2B8ne190102IS2_S2_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiS2_EC2B8ne190102IS2_S2_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiS2_EC2B8ne190102IS2_S2_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_: ; @_ZNSt3__118__unwrap_iter_implIPKiLb1EE8__unwrapB8ne190102ES2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_ ; -- Begin function _ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_
	.globl	__ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_
	.weak_definition	__ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_
	.p2align	2
__ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_: ; @_ZNSt3__14copyB8ne190102IPKiPiEET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__16__copyB8ne190102INS_17_ClassicAlgPolicyEPKiS3_PiEENS_4pairIT0_T2_EES6_T1_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne190102INS_11__copy_implINS_17_ClassicAlgPolicyEEEPKiS5_PiLi0EEENS_4pairIT0_T2_EES8_T1_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB8ne190102IPKiS2_EENS_4pairIT0_S4_EET_S6_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne190102IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IKiiLi0EEENS_4pairIPT_PT0_EES7_S7_S9_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne190102IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IKiiLi0EEENS_4pairIPT_PT0_EES7_S7_S9_ ; -- Begin function _ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IKiiLi0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.weak_definition	__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IKiiLi0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.p2align	2
__ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IKiiLi0EEENS_4pairIPT_PT0_EES7_S7_S9_: ; @_ZNKSt3__111__copy_implINS_17_ClassicAlgPolicyEEclB8ne190102IKiiLi0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.globl	__ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_: ; @_ZNSt3__19make_pairB8ne190102IPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKiPiEC1B8ne190102IS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne190102IPKiS2_EET_S3_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNSt3__119__copy_trivial_implB8ne190102IKiiEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne190102IiKiLi0EEEPT_S3_PT0_NS_15__element_countE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.ls	LBB119_2
	b	LBB119_1
LBB119_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #2
	add	x2, x8, #4
	bl	_memmove
	b	LBB119_2
LBB119_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_ ; -- Begin function _ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.globl	__ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.weak_definition	__ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.p2align	2
__ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_: ; @_ZNSt3__19make_pairB8ne190102IRPKiPiEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKiPiEC1B8ne190102IRS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC1B8ne190102IRS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC1B8ne190102IRS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC1B8ne190102IRS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC1B8ne190102IRS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC1B8ne190102IRS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKiPiEC2B8ne190102IRS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC2B8ne190102IRS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC2B8ne190102IRS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC2B8ne190102IRS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC2B8ne190102IRS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC2B8ne190102IRS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC1B8ne190102IS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC1B8ne190102IS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC1B8ne190102IS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC1B8ne190102IS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC1B8ne190102IS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKiPiEC2B8ne190102IS2_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKiPiEC2B8ne190102IS2_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKiPiEC2B8ne190102IS2_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKiPiEC2B8ne190102IS2_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKiPiEC2B8ne190102IS2_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPKiPiEC2B8ne190102IS2_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_: ; @_ZNSt3__113__rewrap_iterB8ne190102IPKiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp83:
	bl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp84:
	b	LBB125_1
LBB125_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB125_2:
Ltmp85:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table125:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp83-Lfunc_begin13           ; >> Call Site 1 <<
	.uleb128 Ltmp84-Ltmp83                  ;   Call between Ltmp83 and Ltmp84
	.uleb128 Ltmp85-Lfunc_begin13           ;     jumps to Ltmp85
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_: ; @_ZNSt3__118__unwrap_iter_implIPKiLb1EE8__rewrapB8ne190102ES2_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne190102IKiEEPT_S3_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #4                         ; =0x4
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @constinit
l_constinit:
	.long	1                               ; 0x1
	.long	6                               ; 0x6
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"vector"

.subsections_via_symbols

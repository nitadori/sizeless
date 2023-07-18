	.text
	.file	"su3.cpp"
	.globl	main                    // -- Begin function main
	.p2align	3
	.type	main,@function
main:                                   // @main
.Lfunc_begin0:
	.file	1 "/home/rccs-sdt/a01009/sizeless" "su3.cpp"
	.loc	1 164 0                 // su3.cpp:164:0
	.cfi_startproc
// %bb.0:
	stp	d13, d12, [sp, #-144]!  // 16-byte Folded Spill
	stp	d11, d10, [sp, #16]     // 16-byte Folded Spill
	stp	d9, d8, [sp, #32]       // 16-byte Folded Spill
	stp	x28, x27, [sp, #48]     // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]    // 16-byte Folded Spill
	stp	x29, x30, [sp, #128]    // 16-byte Folded Spill
	add	x29, sp, #128           // =128
	sub	sp, sp, #96             // =96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
.Ltmp0:
	.loc	1 165 11 prologue_end   // su3.cpp:165:11
	cmp	w0, #2                  // =2
	b.lt	.LBB0_2
// %bb.1:
	.loc	1 165 23 is_stmt 0      // su3.cpp:165:23
	ldr	x0, [x1, #8]
.Ltmp1:
	.file	2 "/home/rccs-sdt/a01009/sizeless" "/opt/FJSVxos/devkit/aarch64/rfs/usr/include/stdlib.h"
	.loc	2 363 16 is_stmt 1      // /opt/FJSVxos/devkit/aarch64/rfs/usr/include/stdlib.h:363:16
	mov	w2, #10
	mov	x1, xzr
	bl	strtol
	b	.LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0        // /opt/FJSVxos/devkit/aarch64/rfs/usr/include/stdlib.h:0:16
	orr	w0, wzr, #0x4
.LBB0_3:
	.loc	1 181 2 is_stmt 1       // su3.cpp:181:2
	addvl	x22, sp, #-18
	mov	sp, x22
	cntw	x8, all, mul #9
	stur	x0, [x29, #-152]        // 8-byte Folded Spill
	.loc	1 181 22 is_stmt 0      // su3.cpp:181:22
	cbz	x8, .LBB0_8
// %bb.4:
.Ltmp3:
	.file	3 "/home/rccs-sdt/a01009/sizeless" "/opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex"
	.loc	3 1081 9 is_stmt 1      // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	rdvl	x8, #1
	cmp	x8, #17                 // =17
	b.hs	.LBB0_6
// %bb.5:
	rdvl	x2, #18
	mov	x0, x22
	mov	w1, wzr
	bl	memset
	ldur	x0, [x29, #-152]        // 8-byte Folded Reload
	b	.LBB0_8
.LBB0_6:
	rdvl	x9, #18
	mov	z0.b, #0                // =0x0
	mov	x8, xzr
	whilelo	p0.b, xzr, x9
	.p2align	2
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	st1b	{ z0.b }, p0, [x22, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x9
	b.mi	.LBB0_7
.Ltmp4:
.LBB0_8:
	.loc	1 182 2                 // su3.cpp:182:2
	mov	w9, w0
	cntw	x8, all, mul #3
	mul	x20, x9, x8
	mov	x8, sp
	sub	x21, x8, x20, lsl #3
	mov	sp, x21
	stur	x9, [x29, #-144]        // 8-byte Folded Spill
	.loc	1 182 22 is_stmt 0      // su3.cpp:182:22
	cbz	x20, .LBB0_11
// %bb.9:
	rdvl	x8, #6
	mul	x24, x9, x8
.Ltmp5:
	.loc	3 1081 9 is_stmt 1      // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	rdvl	x19, #1
	cmp	x19, #17                // =17
	b.hs	.LBB0_12
// %bb.10:
	mov	x0, x21
	mov	w1, wzr
	mov	x2, x24
	bl	memset
	b	.LBB0_14
.Ltmp6:
.LBB0_11:
	.loc	3 0 9 is_stmt 0         // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:0:9
	sub	x8, x29, #136           // =136
	sub	x23, x29, #136          // =136
	.loc	1 183 23 is_stmt 1      // su3.cpp:183:23
	stur	x8, [x29, #-160]        // 8-byte Folded Spill
	b	.LBB0_22
.LBB0_12:
	.loc	1 0 23 is_stmt 0        // su3.cpp:0:23
	mov	z0.b, #0                // =0x0
.Ltmp7:
	.loc	3 1081 9 is_stmt 1      // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	mov	x8, xzr
	whilelo	p0.b, xzr, x24
	.p2align	2
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	st1b	{ z0.b }, p0, [x21, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x24
	b.mi	.LBB0_13
.Ltmp8:
.LBB0_14:
	.loc	1 183 2                 // su3.cpp:183:2
	lsl	x20, x20, #3
	add	x9, x20, #15            // =15
	mov	x8, sp
	and	x9, x9, #0x1ffffffffff0
	sub	x0, x8, x9
	mov	sp, x0
.Ltmp9:
	.loc	3 1081 9                // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	stur	x0, [x29, #-160]        // 8-byte Folded Spill
	cmp	x19, #17                // =17
	b.hs	.LBB0_16
// %bb.15:
	mov	w1, wzr
	mov	x2, x24
	bl	memset
	b	.LBB0_18
.LBB0_16:
	.loc	3 0 9 is_stmt 0         // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:0:9
	mov	z0.b, #0                // =0x0
	.loc	3 1081 9                // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	mov	x8, xzr
	whilelo	p0.b, xzr, x24
	.p2align	2
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	st1b	{ z0.b }, p0, [x0, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x24
	b.mi	.LBB0_17
.Ltmp10:
.LBB0_18:
	.loc	1 183 2 is_stmt 1       // su3.cpp:183:2
	add	x9, x20, #15            // =15
	mov	x8, sp
	and	x9, x9, #0x1ffffffffff0
	sub	x23, x8, x9
	mov	sp, x23
.Ltmp11:
	.loc	3 1081 9                // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	cmp	x19, #17                // =17
	b.hs	.LBB0_20
// %bb.19:
	mov	x0, x23
	mov	w1, wzr
	mov	x2, x24
	bl	memset
	b	.LBB0_22
.LBB0_20:
	.loc	3 0 9 is_stmt 0         // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:0:9
	mov	z0.b, #0                // =0x0
	.loc	3 1081 9                // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1081:9
	mov	x8, xzr
	whilelo	p0.b, xzr, x24
	.p2align	2
.LBB0_21:                               // =>This Inner Loop Header: Depth=1
	st1b	{ z0.b }, p0, [x23, x8]
	incp	x8, p0.b
	whilelo	p0.b, x8, x24
	b.mi	.LBB0_21
.Ltmp12:
.LBB0_22:
	.loc	1 185 2 is_stmt 1       // su3.cpp:185:2
	mov	w0, #334
	bl	srand48
	.loc	1 189 3                 // su3.cpp:189:3
	rdvl	x8, #18
	lsr	x8, x8, #2
	cmp	w8, #1                  // =1
	b.lt	.LBB0_25
// %bb.23:
	.loc	1 0 3 is_stmt 0         // su3.cpp:0:3
	cnth	x19, all, mul #9
	mov	x20, x22
	.p2align	2
.LBB0_24:                               // =>This Inner Loop Header: Depth=1
	.loc	1 189 35                // su3.cpp:189:35
	bl	drand48
	fcvt	s0, d0
	.loc	1 189 33                // su3.cpp:189:33
	str	s0, [x20], #4
	.loc	1 189 17                // su3.cpp:189:17
	subs	x19, x19, #1            // =1
	.loc	1 189 3                 // su3.cpp:189:3
	b.ne	.LBB0_24
.LBB0_25:
	.loc	1 0 3                   // su3.cpp:0:3
	ldur	x10, [x29, #-144]       // 8-byte Folded Reload
	.loc	1 193 13 is_stmt 1      // su3.cpp:193:13
	rdvl	x8, #6
	mul	x8, x10, x8
	.loc	1 193 25 is_stmt 0      // su3.cpp:193:25
	lsr	x8, x8, #2
	.loc	1 194 3 is_stmt 1       // su3.cpp:194:3
	cmp	w8, #1                  // =1
	b.lt	.LBB0_29
// %bb.26:
	.loc	1 0 3 is_stmt 0         // su3.cpp:0:3
	and	x19, x8, #0xfffffff8
	mov	x20, x21
	.p2align	2
.LBB0_27:                               // =>This Inner Loop Header: Depth=1
	.loc	1 194 35                // su3.cpp:194:35
	bl	drand48
	fcvt	s0, d0
	.loc	1 194 33                // su3.cpp:194:33
	str	s0, [x20], #4
	.loc	1 194 17                // su3.cpp:194:17
	subs	x19, x19, #1            // =1
	.loc	1 194 3                 // su3.cpp:194:3
	b.ne	.LBB0_27
// %bb.28:
	.loc	1 0 3                   // su3.cpp:0:3
	ldur	x10, [x29, #-144]       // 8-byte Folded Reload
.LBB0_29:
	ldur	x12, [x29, #-152]       // 8-byte Folded Reload
	.loc	1 197 2 is_stmt 1       // su3.cpp:197:2
	cntw	x11
	cbz	x11, .LBB0_42
// %bb.30:
	.loc	1 0 2 is_stmt 0         // su3.cpp:0:2
	rdvl	x8, #1
	lsr	x8, x8, #4
	orr	w9, wzr, #0x1
	mul	x8, x8, x9
	ldur	x9, [x29, #-160]        // 8-byte Folded Reload
	.loc	1 197 2                 // su3.cpp:197:2
	mul	x8, x10, x8
	mul	x27, x10, x11
	mov	x13, xzr
	add	x14, x22, #4            // =4
	add	x15, x21, #4            // =4
	lsl	x20, x8, #5
	stp	x23, x22, [x29, #-184]  // 16-byte Folded Spill
	stur	x21, [x29, #-168]       // 8-byte Folded Spill
	.p2align	2
.LBB0_31:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_33 Depth 2
                                        //       Child Loop BB0_34 Depth 3
                                        //         Child Loop BB0_36 Depth 4
	.loc	1 198 3 is_stmt 1       // su3.cpp:198:3
	cmp	w12, #1                 // =1
	b.lt	.LBB0_40
// %bb.32:                              //   in Loop: Header=BB0_31 Depth=1
	.loc	1 0 3 is_stmt 0         // su3.cpp:0:3
	mov	x23, xzr
	add	x16, x9, x13, lsl #3
	mov	x24, x15
	.p2align	2
.LBB0_33:                               //   Parent Loop BB0_31 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_34 Depth 3
                                        //         Child Loop BB0_36 Depth 4
	mul	x8, x23, x11
	mov	x19, xzr
	mov	x22, x14
	add	x26, x16, x8, lsl #3
	.p2align	2
.LBB0_34:                               //   Parent Loop BB0_31 Depth=1
                                        //     Parent Loop BB0_33 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_36 Depth 4
	fmov	s8, wzr
	fmov	s9, wzr
	orr	w25, wzr, #0x3
	mov	x21, x24
	mov	x28, x22
	b	.LBB0_36
.LBB0_35:                               //   in Loop: Header=BB0_36 Depth=4
	stp	x14, x13, [x29, #-200]  // 16-byte Folded Spill
	stp	x16, x15, [x29, #-216]  // 16-byte Folded Spill
.Ltmp13:
	.loc	3 1197 13 is_stmt 1     // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1197:13
	bl	__mulsc3
	ldp	x16, x15, [x29, #-216]  // 16-byte Folded Reload
	ldur	x10, [x29, #-144]       // 8-byte Folded Reload
	ldp	x14, x13, [x29, #-200]  // 16-byte Folded Reload
	mov	v4.16b, v0.16b
	ldp	x9, x12, [x29, #-160]   // 16-byte Folded Reload
	mov	v5.16b, v1.16b
	cntw	x11
	b	.LBB0_37
.Ltmp14:
	.p2align	2
.LBB0_36:                               //   Parent Loop BB0_31 Depth=1
                                        //     Parent Loop BB0_33 Depth=2
                                        //       Parent Loop BB0_34 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	.loc	3 388 26                // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:388:26
	ldp	s0, s1, [x28, #-4]
.Ltmp15:
	.loc	3 1097 29               // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1097:29
	ldp	s2, s3, [x21, #-4]
.Ltmp16:
	.loc	3 1197 13               // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1197:13
	fmul	s7, s1, s2
	fmul	s4, s0, s2
	fmul	s5, s1, s3
	fmul	s6, s0, s3
	fsub	s4, s4, s5
	fadd	s5, s7, s6
	fcmp	s4, s4
	fccmp	s5, s5, #0, vs
	b.vs	.LBB0_35
.Ltmp17:
.LBB0_37:                               //   in Loop: Header=BB0_36 Depth=4
	.loc	1 201 19                // su3.cpp:201:19
	addvl	x28, x28, #2
	add	x21, x21, x20
.Ltmp18:
	.loc	3 1176 22               // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1176:22
	fadd	s9, s9, s4
	.loc	3 1177 22               // /opt/FJSVxos/devkit/aarch64/rfs/lib/gcc/aarch64-redhat-linux/8/../../../../include/c++/8/complex:1177:22
	fadd	s8, s8, s5
.Ltmp19:
	.loc	1 201 19                // su3.cpp:201:19
	subs	x25, x25, #1            // =1
	b.ne	.LBB0_36
// %bb.38:                              //   in Loop: Header=BB0_34 Depth=3
	.loc	1 204 5                 // su3.cpp:204:5
	mul	x8, x27, x19
	.loc	1 199 23                // su3.cpp:199:23
	add	x19, x19, #1            // =1
	.loc	1 204 5                 // su3.cpp:204:5
	add	x8, x26, x8, lsl #3
	.loc	1 199 4                 // su3.cpp:199:4
	addvl	x22, x22, #6
	.loc	1 204 19                // su3.cpp:204:19
	stp	s9, s8, [x8]
	.loc	1 199 4                 // su3.cpp:199:4
	cmp	x19, #3                 // =3
	b.ne	.LBB0_34
// %bb.39:                              //   in Loop: Header=BB0_33 Depth=2
	.loc	1 198 23                // su3.cpp:198:23
	add	x23, x23, #1            // =1
	.loc	1 198 3 is_stmt 0       // su3.cpp:198:3
	addvl	x24, x24, #2
	cmp	x23, x10
	b.ne	.LBB0_33
.LBB0_40:                               //   in Loop: Header=BB0_31 Depth=1
	.loc	1 197 24 is_stmt 1      // su3.cpp:197:24
	add	x13, x13, #1            // =1
	.loc	1 197 2 is_stmt 0       // su3.cpp:197:2
	add	x14, x14, #8            // =8
	add	x15, x15, #8            // =8
	cmp	x13, x11
	b.ne	.LBB0_31
// %bb.41:
	.loc	1 0 2                   // su3.cpp:0:2
	ldp	x22, x21, [x29, #-176]  // 16-byte Folded Reload
	ldur	x23, [x29, #-184]       // 8-byte Folded Reload
.LBB0_42:
.Ltmp20:
	.loc	1 14 10 is_stmt 1       // su3.cpp:14:10
	ptrue	p0.s
.Ltmp21:
	.loc	1 35 9                  // su3.cpp:35:9
	addvl	x8, x22, #8
	.loc	1 36 9                  // su3.cpp:36:9
	addvl	x9, x22, #9
	.loc	1 43 9                  // su3.cpp:43:9
	addvl	x10, x22, #13
	.loc	1 37 9                  // su3.cpp:37:9
	addvl	x11, x22, #10
	.loc	1 24 9                  // su3.cpp:24:9
	ld1w	{ z0.s }, p0/z, [x22]
	.loc	1 25 9                  // su3.cpp:25:9
	ld1w	{ z1.s }, p0/z, [x22, #1, mul vl]
	.loc	1 26 9                  // su3.cpp:26:9
	ld1w	{ z2.s }, p0/z, [x22, #2, mul vl]
	.loc	1 27 9                  // su3.cpp:27:9
	ld1w	{ z3.s }, p0/z, [x22, #3, mul vl]
	.loc	1 28 9                  // su3.cpp:28:9
	ld1w	{ z4.s }, p0/z, [x22, #4, mul vl]
	.loc	1 29 9                  // su3.cpp:29:9
	ld1w	{ z5.s }, p0/z, [x22, #5, mul vl]
	.loc	1 33 9                  // su3.cpp:33:9
	ld1w	{ z6.s }, p0/z, [x22, #6, mul vl]
	.loc	1 34 9                  // su3.cpp:34:9
	ld1w	{ z7.s }, p0/z, [x22, #7, mul vl]
	.loc	1 35 9                  // su3.cpp:35:9
	ld1w	{ z16.s }, p0/z, [x8]
	.loc	1 36 9                  // su3.cpp:36:9
	ld1w	{ z17.s }, p0/z, [x9]
	.loc	1 37 9                  // su3.cpp:37:9
	ld1w	{ z18.s }, p0/z, [x11]
	.loc	1 38 9                  // su3.cpp:38:9
	addvl	x8, x22, #11
	.loc	1 40 5                  // su3.cpp:40:5
	addvl	x9, x22, #12
	.loc	1 44 9                  // su3.cpp:44:9
	addvl	x11, x22, #14
	.loc	1 38 9                  // su3.cpp:38:9
	ld1w	{ z19.s }, p0/z, [x8]
	.loc	1 42 9                  // su3.cpp:42:9
	ld1w	{ z20.s }, p0/z, [x9]
	.loc	1 43 9                  // su3.cpp:43:9
	ld1w	{ z21.s }, p0/z, [x10]
	.loc	1 44 9                  // su3.cpp:44:9
	ld1w	{ z22.s }, p0/z, [x11]
	.loc	1 45 9                  // su3.cpp:45:9
	addvl	x8, x22, #15
	.loc	1 46 9                  // su3.cpp:46:9
	addvl	x9, x22, #16
	.loc	1 47 9                  // su3.cpp:47:9
	addvl	x10, x22, #17
	.loc	1 45 9                  // su3.cpp:45:9
	ld1w	{ z23.s }, p0/z, [x8]
	.loc	1 46 9                  // su3.cpp:46:9
	ld1w	{ z24.s }, p0/z, [x9]
	.loc	1 47 9                  // su3.cpp:47:9
	ld1w	{ z25.s }, p0/z, [x10]
.Ltmp22:
	.loc	1 154 3                 // su3.cpp:154:3
	cmp	w12, #1                 // =1
	b.lt	.LBB0_45
// %bb.43:
	.loc	1 0 3 is_stmt 0         // su3.cpp:0:3
	mov	x8, xzr
	.p2align	2
.LBB0_44:                               // =>This Inner Loop Header: Depth=1
.Ltmp23:
	.loc	1 88 10 is_stmt 1       // su3.cpp:88:10
	add	x9, x21, x8
	.loc	1 91 9                  // su3.cpp:91:9
	mov	z28.d, z0.d
	.loc	1 93 9                  // su3.cpp:93:9
	mov	z29.d, z0.d
	.loc	1 96 9                  // su3.cpp:96:9
	mov	z10.d, z6.d
	.loc	1 98 9                  // su3.cpp:98:9
	mov	z11.d, z6.d
	.loc	1 101 9                 // su3.cpp:101:9
	mov	z12.d, z20.d
	.loc	1 103 9                 // su3.cpp:103:9
	mov	z13.d, z20.d
	.loc	1 88 10                 // su3.cpp:88:10
	ld1w	{ z26.s }, p0/z, [x9]
	.loc	1 89 10                 // su3.cpp:89:10
	ld1w	{ z27.s }, p0/z, [x9, #1, mul vl]
	.loc	1 107 10                // su3.cpp:107:10
	ld1w	{ z30.s }, p0/z, [x9, #2, mul vl]
	.loc	1 108 10                // su3.cpp:108:10
	ld1w	{ z31.s }, p0/z, [x9, #3, mul vl]
	.loc	1 101 9                 // su3.cpp:101:9
	fmul	z12.s, p0/m, z12.s, z26.s
	.loc	1 91 9                  // su3.cpp:91:9
	fmul	z28.s, p0/m, z28.s, z26.s
	.loc	1 96 9                  // su3.cpp:96:9
	fmul	z10.s, p0/m, z10.s, z26.s
	.loc	1 103 9                 // su3.cpp:103:9
	fmul	z13.s, p0/m, z13.s, z27.s
	.loc	1 92 9                  // su3.cpp:92:9
	fmls	z28.s, p0/m, z1.s, z27.s
	.loc	1 97 9                  // su3.cpp:97:9
	fmls	z10.s, p0/m, z7.s, z27.s
	.loc	1 102 9                 // su3.cpp:102:9
	fmls	z12.s, p0/m, z21.s, z27.s
	.loc	1 104 9                 // su3.cpp:104:9
	fmla	z13.s, p0/m, z21.s, z26.s
	.loc	1 110 9                 // su3.cpp:110:9
	fmla	z28.s, p0/m, z2.s, z30.s
	.loc	1 115 9                 // su3.cpp:115:9
	fmla	z10.s, p0/m, z16.s, z30.s
	.loc	1 120 9                 // su3.cpp:120:9
	fmla	z12.s, p0/m, z22.s, z30.s
	.loc	1 122 9                 // su3.cpp:122:9
	fmla	z13.s, p0/m, z22.s, z31.s
	.loc	1 111 9                 // su3.cpp:111:9
	fmls	z28.s, p0/m, z3.s, z31.s
	.loc	1 116 9                 // su3.cpp:116:9
	fmls	z10.s, p0/m, z17.s, z31.s
	.loc	1 121 9                 // su3.cpp:121:9
	fmls	z12.s, p0/m, z23.s, z31.s
	.loc	1 123 9                 // su3.cpp:123:9
	fmla	z13.s, p0/m, z23.s, z30.s
	.loc	1 98 9                  // su3.cpp:98:9
	fmul	z11.s, p0/m, z11.s, z27.s
	.loc	1 93 9                  // su3.cpp:93:9
	fmul	z29.s, p0/m, z29.s, z27.s
	.loc	1 94 9                  // su3.cpp:94:9
	fmla	z29.s, p0/m, z1.s, z26.s
	.loc	1 99 9                  // su3.cpp:99:9
	fmla	z11.s, p0/m, z7.s, z26.s
	.loc	1 112 9                 // su3.cpp:112:9
	fmla	z29.s, p0/m, z2.s, z31.s
	.loc	1 117 9                 // su3.cpp:117:9
	fmla	z11.s, p0/m, z16.s, z31.s
	.loc	1 113 9                 // su3.cpp:113:9
	fmla	z29.s, p0/m, z3.s, z30.s
	.loc	1 118 9                 // su3.cpp:118:9
	fmla	z11.s, p0/m, z17.s, z30.s
	.loc	1 126 10                // su3.cpp:126:10
	ld1w	{ z8.s }, p0/z, [x9, #4, mul vl]
	.loc	1 127 10                // su3.cpp:127:10
	ld1w	{ z9.s }, p0/z, [x9, #5, mul vl]
	.loc	1 129 9                 // su3.cpp:129:9
	fmla	z28.s, p0/m, z4.s, z8.s
	.loc	1 131 9                 // su3.cpp:131:9
	fmla	z29.s, p0/m, z4.s, z9.s
	.loc	1 136 9                 // su3.cpp:136:9
	fmla	z11.s, p0/m, z18.s, z9.s
	.loc	1 139 9                 // su3.cpp:139:9
	fmla	z12.s, p0/m, z24.s, z8.s
	.loc	1 141 9                 // su3.cpp:141:9
	fmla	z13.s, p0/m, z24.s, z9.s
	.loc	1 134 9                 // su3.cpp:134:9
	fmla	z10.s, p0/m, z18.s, z8.s
	.loc	1 130 9                 // su3.cpp:130:9
	fmls	z28.s, p0/m, z5.s, z9.s
	.loc	1 132 9                 // su3.cpp:132:9
	fmla	z29.s, p0/m, z5.s, z8.s
	.loc	1 137 9                 // su3.cpp:137:9
	fmla	z11.s, p0/m, z19.s, z8.s
	.loc	1 140 9                 // su3.cpp:140:9
	fmls	z12.s, p0/m, z25.s, z9.s
	.loc	1 142 9                 // su3.cpp:142:9
	fmla	z13.s, p0/m, z25.s, z8.s
	.loc	1 135 9                 // su3.cpp:135:9
	fmls	z10.s, p0/m, z19.s, z9.s
	.loc	1 145 3                 // su3.cpp:145:3
	add	x9, x23, x8
.Ltmp24:
	.loc	1 154 17                // su3.cpp:154:17
	addvl	x8, x8, #6
.Ltmp25:
	.loc	1 145 3                 // su3.cpp:145:3
	st1w	{ z28.s }, p0, [x9]
	.loc	1 146 3                 // su3.cpp:146:3
	st1w	{ z29.s }, p0, [x9, #1, mul vl]
	.loc	1 147 3                 // su3.cpp:147:3
	st1w	{ z10.s }, p0, [x9, #2, mul vl]
	.loc	1 148 3                 // su3.cpp:148:3
	st1w	{ z11.s }, p0, [x9, #3, mul vl]
	.loc	1 149 3                 // su3.cpp:149:3
	st1w	{ z12.s }, p0, [x9, #4, mul vl]
	.loc	1 150 3                 // su3.cpp:150:3
	st1w	{ z13.s }, p0, [x9, #5, mul vl]
.Ltmp26:
	.loc	1 154 17                // su3.cpp:154:17
	subs	w12, w12, #1            // =1
	.loc	1 154 3 is_stmt 0       // su3.cpp:154:3
	b.ne	.LBB0_44
.Ltmp27:
.LBB0_45:
	.loc	1 213 1 is_stmt 1       // su3.cpp:213:1
	mov	w0, wzr
	sub	sp, x29, #128           // =128
	ldp	x29, x30, [sp, #128]    // 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]    // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]     // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]     // 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]       // 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]     // 16-byte Folded Reload
	ldp	d13, d12, [sp], #144    // 16-byte Folded Reload
	ret
.Ltmp28:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang: Fujitsu C/C++ Compiler 4.9.0 (Dec  2 2022 16:06:23) (based on LLVM 7.1.0)" // string offset=0
.Linfo_string1:
	.asciz	"su3.cpp"               // string offset=81
.Linfo_string2:
	.asciz	"/home/rccs-sdt/a01009/sizeless" // string offset=89
.Linfo_string3:
	.asciz	"atoi"                  // string offset=120
.Linfo_string4:
	.asciz	"_ZNSt7complexIfEC2Eff" // string offset=125
.Linfo_string5:
	.asciz	"complex"               // string offset=147
.Linfo_string6:
	.asciz	"_ZNSt7complexIfEmLIfEERS0_RKS_IT_E" // string offset=155
.Linfo_string7:
	.asciz	"operator*=<float>"     // string offset=190
.Linfo_string8:
	.asciz	"_ZStmlIfESt7complexIT_ERKS2_S4_" // string offset=208
.Linfo_string9:
	.asciz	"operator*<float>"      // string offset=240
.Linfo_string10:
	.asciz	"_ZNKSt7complexIfE4realB5cxx11Ev" // string offset=257
.Linfo_string11:
	.asciz	"real"                  // string offset=289
.Linfo_string12:
	.asciz	"_ZNSt7complexIfEpLIfEERS0_RKS_IT_E" // string offset=294
.Linfo_string13:
	.asciz	"operator+=<float>"     // string offset=329
.Linfo_string14:
	.asciz	"_ZN7SVGauge7svptrueE__SVFloat32_t" // string offset=347
.Linfo_string15:
	.asciz	"svptrue"               // string offset=381
.Linfo_string16:
	.asciz	"_ZN7SVGauge4loadEPKf"  // string offset=389
.Linfo_string17:
	.asciz	"load"                  // string offset=410
.Linfo_string18:
	.asciz	"_ZN7SVGauge4multEPKfPfi" // string offset=415
.Linfo_string19:
	.asciz	"mult"                  // string offset=439
.Linfo_string20:
	.asciz	"_ZN7SVGauge4multEPKfPf" // string offset=444
.Linfo_string21:
	.asciz	"main"                  // string offset=467
	.section	.debug_abbrev,"",@progbits
	.byte	1                       // Abbreviation Code
	.byte	17                      // DW_TAG_compile_unit
	.byte	1                       // DW_CHILDREN_yes
	.byte	37                      // DW_AT_producer
	.byte	14                      // DW_FORM_strp
	.byte	19                      // DW_AT_language
	.byte	5                       // DW_FORM_data2
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	16                      // DW_AT_stmt_list
	.byte	23                      // DW_FORM_sec_offset
	.byte	27                      // DW_AT_comp_dir
	.byte	14                      // DW_FORM_strp
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	2                       // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	3                       // Abbreviation Code
	.ascii	"\200\340\003"          // DW_TAG_FJ_loop
	.byte	0                       // DW_CHILDREN_no
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.ascii	"\200f"                 // DW_AT_FJ_loop_start_line
	.byte	11                      // DW_FORM_data1
	.ascii	"\201f"                 // DW_AT_FJ_loop_end_line
	.byte	11                      // DW_FORM_data1
	.ascii	"\202f"                 // DW_AT_FJ_loop_nest_level
	.byte	11                      // DW_FORM_data1
	.ascii	"\203f"                 // DW_AT_FJ_loop_type
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	4                       // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	0                       // DW_CHILDREN_no
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	5                       // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	0                       // DW_CHILDREN_no
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	85                      // DW_AT_ranges
	.byte	23                      // DW_FORM_sec_offset
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	6                       // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	1                       // DW_CHILDREN_yes
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	7                       // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	1                       // DW_CHILDREN_yes
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	85                      // DW_AT_ranges
	.byte	23                      // DW_FORM_sec_offset
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	5                       // DW_FORM_data2
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	8                       // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	0                       // DW_CHILDREN_no
	.byte	49                      // DW_AT_abstract_origin
	.byte	19                      // DW_FORM_ref4
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	88                      // DW_AT_call_file
	.byte	11                      // DW_FORM_data1
	.byte	89                      // DW_AT_call_line
	.byte	5                       // DW_FORM_data2
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	9                       // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	10                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	0                       // DW_CHILDREN_no
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	5                       // DW_FORM_data2
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	11                      // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	0                       // DW_CHILDREN_no
	.byte	110                     // DW_AT_linkage_name
	.byte	14                      // DW_FORM_strp
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	0                       // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	442                     // Length of Unit
	.hword	4                       // DWARF version number
	.word	.debug_abbrev           // Offset Into Abbrev. Section
	.byte	8                       // Address Size (in bytes)
	.byte	1                       // Abbrev [1] 0xb:0x1b3 DW_TAG_compile_unit
	.word	.Linfo_string0          // DW_AT_producer
	.hword	4                       // DW_AT_language
	.word	.Linfo_string1          // DW_AT_name
	.word	.Lline_table_start0     // DW_AT_stmt_list
	.word	.Linfo_string2          // DW_AT_comp_dir
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0 // DW_AT_high_pc
	.byte	2                       // Abbrev [2] 0x2a:0x123 DW_TAG_subprogram
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0 // DW_AT_high_pc
	.word	.Linfo_string21         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	164                     // DW_AT_decl_line
	.byte	3                       // Abbrev [3] 0x3d:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	189                     // DW_AT_FJ_loop_start_line
	.byte	189                     // DW_AT_FJ_loop_end_line
	.byte	1                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	3                       // Abbrev [3] 0x43:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	194                     // DW_AT_FJ_loop_start_line
	.byte	194                     // DW_AT_FJ_loop_end_line
	.byte	1                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	3                       // Abbrev [3] 0x49:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	197                     // DW_AT_FJ_loop_start_line
	.byte	207                     // DW_AT_FJ_loop_end_line
	.byte	1                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	3                       // Abbrev [3] 0x4f:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	198                     // DW_AT_FJ_loop_start_line
	.byte	206                     // DW_AT_FJ_loop_end_line
	.byte	2                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	3                       // Abbrev [3] 0x55:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	199                     // DW_AT_FJ_loop_start_line
	.byte	205                     // DW_AT_FJ_loop_end_line
	.byte	3                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	3                       // Abbrev [3] 0x5b:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	201                     // DW_AT_FJ_loop_start_line
	.byte	203                     // DW_AT_FJ_loop_end_line
	.byte	4                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	3                       // Abbrev [3] 0x61:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	154                     // DW_AT_FJ_loop_start_line
	.byte	158                     // DW_AT_FJ_loop_end_line
	.byte	1                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	4                       // Abbrev [4] 0x67:0x13 DW_TAG_inlined_subroutine
	.word	333                     // DW_AT_abstract_origin
	.xword	.Ltmp1                  // DW_AT_low_pc
	.word	.Ltmp2-.Ltmp1           // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	165                     // DW_AT_call_line
	.byte	4                       // Abbrev [4] 0x7a:0x13 DW_TAG_inlined_subroutine
	.word	341                     // DW_AT_abstract_origin
	.xword	.Ltmp3                  // DW_AT_low_pc
	.word	.Ltmp4-.Ltmp3           // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	181                     // DW_AT_call_line
	.byte	5                       // Abbrev [5] 0x8d:0xb DW_TAG_inlined_subroutine
	.word	341                     // DW_AT_abstract_origin
	.word	.Ldebug_ranges0         // DW_AT_ranges
	.byte	1                       // DW_AT_call_file
	.byte	182                     // DW_AT_call_line
	.byte	4                       // Abbrev [4] 0x98:0x13 DW_TAG_inlined_subroutine
	.word	341                     // DW_AT_abstract_origin
	.xword	.Ltmp9                  // DW_AT_low_pc
	.word	.Ltmp10-.Ltmp9          // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	183                     // DW_AT_call_line
	.byte	4                       // Abbrev [4] 0xab:0x13 DW_TAG_inlined_subroutine
	.word	341                     // DW_AT_abstract_origin
	.xword	.Ltmp11                 // DW_AT_low_pc
	.word	.Ltmp12-.Ltmp11         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	183                     // DW_AT_call_line
	.byte	6                       // Abbrev [6] 0xbe:0x35 DW_TAG_inlined_subroutine
	.word	365                     // DW_AT_abstract_origin
	.xword	.Ltmp13                 // DW_AT_low_pc
	.word	.Ltmp17-.Ltmp13         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	202                     // DW_AT_call_line
	.byte	7                       // Abbrev [7] 0xd1:0x21 DW_TAG_inlined_subroutine
	.word	353                     // DW_AT_abstract_origin
	.word	.Ldebug_ranges1         // DW_AT_ranges
	.byte	3                       // DW_AT_call_file
	.hword	389                     // DW_AT_call_line
	.byte	8                       // Abbrev [8] 0xdd:0x14 DW_TAG_inlined_subroutine
	.word	377                     // DW_AT_abstract_origin
	.xword	.Ltmp15                 // DW_AT_low_pc
	.word	.Ltmp16-.Ltmp15         // DW_AT_high_pc
	.byte	3                       // DW_AT_call_file
	.hword	1195                    // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	4                       // Abbrev [4] 0xf3:0x13 DW_TAG_inlined_subroutine
	.word	389                     // DW_AT_abstract_origin
	.xword	.Ltmp18                 // DW_AT_low_pc
	.word	.Ltmp19-.Ltmp18         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	202                     // DW_AT_call_line
	.byte	6                       // Abbrev [6] 0x106:0x27 DW_TAG_inlined_subroutine
	.word	412                     // DW_AT_abstract_origin
	.xword	.Ltmp20                 // DW_AT_low_pc
	.word	.Ltmp22-.Ltmp20         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	210                     // DW_AT_call_line
	.byte	4                       // Abbrev [4] 0x119:0x13 DW_TAG_inlined_subroutine
	.word	401                     // DW_AT_abstract_origin
	.xword	.Ltmp20                 // DW_AT_low_pc
	.word	.Ltmp21-.Ltmp20         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	22                      // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	6                       // Abbrev [6] 0x12d:0x1f DW_TAG_inlined_subroutine
	.word	423                     // DW_AT_abstract_origin
	.xword	.Ltmp22                 // DW_AT_low_pc
	.word	.Ltmp27-.Ltmp22         // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	211                     // DW_AT_call_line
	.byte	5                       // Abbrev [5] 0x140:0xb DW_TAG_inlined_subroutine
	.word	434                     // DW_AT_abstract_origin
	.word	.Ldebug_ranges2         // DW_AT_ranges
	.byte	1                       // DW_AT_call_file
	.byte	155                     // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	9                       // Abbrev [9] 0x14d:0x8 DW_TAG_subprogram
	.word	.Linfo_string3          // DW_AT_name
	.byte	2                       // DW_AT_decl_file
	.hword	361                     // DW_AT_decl_line
	.byte	10                      // Abbrev [10] 0x155:0xc DW_TAG_subprogram
	.word	.Linfo_string4          // DW_AT_linkage_name
	.word	.Linfo_string5          // DW_AT_name
	.byte	3                       // DW_AT_decl_file
	.hword	1079                    // DW_AT_decl_line
	.byte	10                      // Abbrev [10] 0x161:0xc DW_TAG_subprogram
	.word	.Linfo_string6          // DW_AT_linkage_name
	.word	.Linfo_string7          // DW_AT_name
	.byte	3                       // DW_AT_decl_file
	.hword	1192                    // DW_AT_decl_line
	.byte	10                      // Abbrev [10] 0x16d:0xc DW_TAG_subprogram
	.word	.Linfo_string8          // DW_AT_linkage_name
	.word	.Linfo_string9          // DW_AT_name
	.byte	3                       // DW_AT_decl_file
	.hword	386                     // DW_AT_decl_line
	.byte	10                      // Abbrev [10] 0x179:0xc DW_TAG_subprogram
	.word	.Linfo_string10         // DW_AT_linkage_name
	.word	.Linfo_string11         // DW_AT_name
	.byte	3                       // DW_AT_decl_file
	.hword	1097                    // DW_AT_decl_line
	.byte	10                      // Abbrev [10] 0x185:0xc DW_TAG_subprogram
	.word	.Linfo_string12         // DW_AT_linkage_name
	.word	.Linfo_string13         // DW_AT_name
	.byte	3                       // DW_AT_decl_file
	.hword	1174                    // DW_AT_decl_line
	.byte	11                      // Abbrev [11] 0x191:0xb DW_TAG_subprogram
	.word	.Linfo_string14         // DW_AT_linkage_name
	.word	.Linfo_string15         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	13                      // DW_AT_decl_line
	.byte	11                      // Abbrev [11] 0x19c:0xb DW_TAG_subprogram
	.word	.Linfo_string16         // DW_AT_linkage_name
	.word	.Linfo_string17         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	20                      // DW_AT_decl_line
	.byte	11                      // Abbrev [11] 0x1a7:0xb DW_TAG_subprogram
	.word	.Linfo_string18         // DW_AT_linkage_name
	.word	.Linfo_string19         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	152                     // DW_AT_decl_line
	.byte	11                      // Abbrev [11] 0x1b2:0xb DW_TAG_subprogram
	.word	.Linfo_string20         // DW_AT_linkage_name
	.word	.Linfo_string19         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	81                      // DW_AT_decl_line
	.byte	0                       // End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.xword	.Ltmp5-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp7-.Lfunc_begin0
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges1:
	.xword	.Ltmp13-.Lfunc_begin0
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp15-.Lfunc_begin0
	.xword	.Ltmp17-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges2:
	.xword	.Ltmp23-.Lfunc_begin0
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp25-.Lfunc_begin0
	.xword	.Ltmp26-.Lfunc_begin0
	.xword	0
	.xword	0
	.section	.debug_macinfo,"",@progbits
	.byte	0                       // End Of Macro List Mark

	.ident	"clang: Fujitsu C/C++ Compiler 4.9.0 (Dec  2 2022 16:06:23) (based on LLVM 7.1.0)"
	.section	.fj.compile_info, "e"
	.ascii	"C++::clang-libstdc++"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

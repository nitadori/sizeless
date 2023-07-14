	.text
	.file	"su3.cpp"
	.globl	main                    // -- Begin function main
	.p2align	3
	.type	main,@function
main:                                   // @main
.Lfunc_begin0:
	.file	1 "/home/rccs-sdt/a01009/sizeless" "su3.cpp"
	.loc	1 163 0                 // su3.cpp:163:0
	.cfi_startproc
// %bb.0:
	stp	d13, d12, [sp, #-144]!  // 16-byte Folded Spill
	stp	d11, d10, [sp, #16]     // 16-byte Folded Spill
	stp	d9, d8, [sp, #32]       // 16-byte Folded Spill
	str	x28, [sp, #48]          // 8-byte Folded Spill
	stp	x26, x25, [sp, #64]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]    // 16-byte Folded Spill
	stp	x29, x30, [sp, #128]    // 16-byte Folded Spill
	add	x29, sp, #128           // =128
	sub	sp, sp, #1152           // =1152
	mov	x19, sp
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
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
.Ltmp0:
	.loc	1 164 16 prologue_end   // su3.cpp:164:16
	ldr	x0, [x1, #8]
.Ltmp1:
	.file	2 "/home/rccs-sdt/a01009/sizeless" "/opt/FJSVxos/devkit/aarch64/rfs/usr/include/stdlib.h"
	.loc	2 363 16                // /opt/FJSVxos/devkit/aarch64/rfs/usr/include/stdlib.h:363:16
	mov	w2, #10
	mov	x1, xzr
	bl	strtol
	mov	x20, x0
.Ltmp2:
	.loc	1 167 18                // su3.cpp:167:18
	add	w8, w20, w20, lsl #1
	lsl	w24, w8, #5
	.loc	1 167 2 is_stmt 0       // su3.cpp:167:2
	mov	x21, sp
	sub	x22, sp, w24, uxtw #2
	mov	sp, x22
	mov	x25, xzr
	mov	x23, x22
	add	x26, x19, #0            // =0
	.p2align	2
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	.loc	1 169 26 is_stmt 1      // su3.cpp:169:26
	bl	drand48
	fcvt	s0, d0
	.loc	1 169 24 is_stmt 0      // su3.cpp:169:24
	str	s0, [x26, x25]
	.loc	1 169 14                // su3.cpp:169:14
	add	x25, x25, #4            // =4
	cmp	x25, #1152              // =1152
	b.ne	.LBB0_1
// %bb.2:
	.loc	1 170 14 is_stmt 1      // su3.cpp:170:14
	cbz	x24, .LBB0_5
// %bb.3:
	.loc	1 170 26 is_stmt 0      // su3.cpp:170:26
	add	w8, w20, w20, lsl #1
	and	x8, x8, #0x7ffffff
	lsl	x24, x8, #7
	.p2align	2
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	bl	drand48
	fcvt	s0, d0
	.loc	1 170 24                // su3.cpp:170:24
	str	s0, [x23], #4
	.loc	1 170 14                // su3.cpp:170:14
	subs	x24, x24, #4            // =4
	b.ne	.LBB0_4
.LBB0_5:
.Ltmp3:
	.loc	1 13 10 is_stmt 1       // su3.cpp:13:10
	ptrue	p0.s
	add	x8, x19, #0             // =0
.Ltmp4:
	.loc	1 34 9                  // su3.cpp:34:9
	addvl	x9, x8, #8
	.loc	1 35 9                  // su3.cpp:35:9
	addvl	x10, x8, #9
	.loc	1 42 9                  // su3.cpp:42:9
	addvl	x11, x8, #13
	.loc	1 36 9                  // su3.cpp:36:9
	addvl	x12, x8, #10
	.loc	1 23 9                  // su3.cpp:23:9
	ld1w	{ z0.s }, p0/z, [x19]
	.loc	1 24 9                  // su3.cpp:24:9
	ld1w	{ z1.s }, p0/z, [x8, #1, mul vl]
	.loc	1 25 9                  // su3.cpp:25:9
	ld1w	{ z2.s }, p0/z, [x8, #2, mul vl]
	.loc	1 26 9                  // su3.cpp:26:9
	ld1w	{ z3.s }, p0/z, [x8, #3, mul vl]
	.loc	1 27 9                  // su3.cpp:27:9
	ld1w	{ z4.s }, p0/z, [x8, #4, mul vl]
	.loc	1 28 9                  // su3.cpp:28:9
	ld1w	{ z5.s }, p0/z, [x8, #5, mul vl]
	.loc	1 32 9                  // su3.cpp:32:9
	ld1w	{ z6.s }, p0/z, [x8, #6, mul vl]
	.loc	1 33 9                  // su3.cpp:33:9
	ld1w	{ z7.s }, p0/z, [x8, #7, mul vl]
	.loc	1 34 9                  // su3.cpp:34:9
	ld1w	{ z16.s }, p0/z, [x9]
	.loc	1 35 9                  // su3.cpp:35:9
	ld1w	{ z17.s }, p0/z, [x10]
	.loc	1 36 9                  // su3.cpp:36:9
	ld1w	{ z18.s }, p0/z, [x12]
	.loc	1 37 9                  // su3.cpp:37:9
	addvl	x9, x8, #11
	.loc	1 39 5                  // su3.cpp:39:5
	addvl	x10, x8, #12
	.loc	1 37 9                  // su3.cpp:37:9
	ld1w	{ z19.s }, p0/z, [x9]
	.loc	1 41 9                  // su3.cpp:41:9
	ld1w	{ z20.s }, p0/z, [x10]
	.loc	1 42 9                  // su3.cpp:42:9
	ld1w	{ z21.s }, p0/z, [x11]
	.loc	1 44 9                  // su3.cpp:44:9
	addvl	x9, x8, #15
	.loc	1 45 9                  // su3.cpp:45:9
	addvl	x10, x8, #16
	.loc	1 46 9                  // su3.cpp:46:9
	addvl	x11, x8, #17
	.loc	1 43 9                  // su3.cpp:43:9
	addvl	x8, x8, #14
	ld1w	{ z22.s }, p0/z, [x8]
	.loc	1 44 9                  // su3.cpp:44:9
	ld1w	{ z23.s }, p0/z, [x9]
	.loc	1 45 9                  // su3.cpp:45:9
	ld1w	{ z24.s }, p0/z, [x10]
	.loc	1 46 9                  // su3.cpp:46:9
	ld1w	{ z25.s }, p0/z, [x11]
.Ltmp5:
	.loc	1 153 3                 // su3.cpp:153:3
	cmp	w20, #1                 // =1
	b.lt	.LBB0_8
.Ltmp6:
// %bb.6:
	.loc	1 175 15                // su3.cpp:175:15
	adrp	x9, ext
	ldr	x9, [x9, :lo12:ext]
	mov	x8, xzr
	.p2align	2
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
.Ltmp7:
	.loc	1 87 10                 // su3.cpp:87:10
	add	x10, x22, x8
	.loc	1 90 9                  // su3.cpp:90:9
	mov	z28.d, z0.d
	.loc	1 92 9                  // su3.cpp:92:9
	mov	z29.d, z0.d
	.loc	1 95 9                  // su3.cpp:95:9
	mov	z10.d, z6.d
	.loc	1 97 9                  // su3.cpp:97:9
	mov	z11.d, z6.d
	.loc	1 100 9                 // su3.cpp:100:9
	mov	z12.d, z20.d
	.loc	1 102 9                 // su3.cpp:102:9
	mov	z13.d, z20.d
	.loc	1 87 10                 // su3.cpp:87:10
	ld1w	{ z26.s }, p0/z, [x10]
	.loc	1 88 10                 // su3.cpp:88:10
	ld1w	{ z27.s }, p0/z, [x10, #1, mul vl]
	.loc	1 106 10                // su3.cpp:106:10
	ld1w	{ z30.s }, p0/z, [x10, #2, mul vl]
	.loc	1 107 10                // su3.cpp:107:10
	ld1w	{ z31.s }, p0/z, [x10, #3, mul vl]
	.loc	1 100 9                 // su3.cpp:100:9
	fmul	z12.s, p0/m, z12.s, z26.s
	.loc	1 90 9                  // su3.cpp:90:9
	fmul	z28.s, p0/m, z28.s, z26.s
	.loc	1 95 9                  // su3.cpp:95:9
	fmul	z10.s, p0/m, z10.s, z26.s
	.loc	1 102 9                 // su3.cpp:102:9
	fmul	z13.s, p0/m, z13.s, z27.s
	.loc	1 91 9                  // su3.cpp:91:9
	fmls	z28.s, p0/m, z1.s, z27.s
	.loc	1 96 9                  // su3.cpp:96:9
	fmls	z10.s, p0/m, z7.s, z27.s
	.loc	1 101 9                 // su3.cpp:101:9
	fmls	z12.s, p0/m, z21.s, z27.s
	.loc	1 103 9                 // su3.cpp:103:9
	fmla	z13.s, p0/m, z21.s, z26.s
	.loc	1 109 9                 // su3.cpp:109:9
	fmla	z28.s, p0/m, z2.s, z30.s
	.loc	1 114 9                 // su3.cpp:114:9
	fmla	z10.s, p0/m, z16.s, z30.s
	.loc	1 119 9                 // su3.cpp:119:9
	fmla	z12.s, p0/m, z22.s, z30.s
	.loc	1 121 9                 // su3.cpp:121:9
	fmla	z13.s, p0/m, z22.s, z31.s
	.loc	1 110 9                 // su3.cpp:110:9
	fmls	z28.s, p0/m, z3.s, z31.s
	.loc	1 115 9                 // su3.cpp:115:9
	fmls	z10.s, p0/m, z17.s, z31.s
	.loc	1 120 9                 // su3.cpp:120:9
	fmls	z12.s, p0/m, z23.s, z31.s
	.loc	1 122 9                 // su3.cpp:122:9
	fmla	z13.s, p0/m, z23.s, z30.s
	.loc	1 97 9                  // su3.cpp:97:9
	fmul	z11.s, p0/m, z11.s, z27.s
	.loc	1 92 9                  // su3.cpp:92:9
	fmul	z29.s, p0/m, z29.s, z27.s
	.loc	1 93 9                  // su3.cpp:93:9
	fmla	z29.s, p0/m, z1.s, z26.s
	.loc	1 98 9                  // su3.cpp:98:9
	fmla	z11.s, p0/m, z7.s, z26.s
	.loc	1 111 9                 // su3.cpp:111:9
	fmla	z29.s, p0/m, z2.s, z31.s
	.loc	1 116 9                 // su3.cpp:116:9
	fmla	z11.s, p0/m, z16.s, z31.s
	.loc	1 112 9                 // su3.cpp:112:9
	fmla	z29.s, p0/m, z3.s, z30.s
	.loc	1 117 9                 // su3.cpp:117:9
	fmla	z11.s, p0/m, z17.s, z30.s
	.loc	1 125 10                // su3.cpp:125:10
	ld1w	{ z8.s }, p0/z, [x10, #4, mul vl]
	.loc	1 126 10                // su3.cpp:126:10
	ld1w	{ z9.s }, p0/z, [x10, #5, mul vl]
	.loc	1 128 9                 // su3.cpp:128:9
	fmla	z28.s, p0/m, z4.s, z8.s
	.loc	1 130 9                 // su3.cpp:130:9
	fmla	z29.s, p0/m, z4.s, z9.s
	.loc	1 135 9                 // su3.cpp:135:9
	fmla	z11.s, p0/m, z18.s, z9.s
	.loc	1 138 9                 // su3.cpp:138:9
	fmla	z12.s, p0/m, z24.s, z8.s
	.loc	1 140 9                 // su3.cpp:140:9
	fmla	z13.s, p0/m, z24.s, z9.s
	.loc	1 133 9                 // su3.cpp:133:9
	fmla	z10.s, p0/m, z18.s, z8.s
	.loc	1 129 9                 // su3.cpp:129:9
	fmls	z28.s, p0/m, z5.s, z9.s
	.loc	1 131 9                 // su3.cpp:131:9
	fmla	z29.s, p0/m, z5.s, z8.s
	.loc	1 136 9                 // su3.cpp:136:9
	fmla	z11.s, p0/m, z19.s, z8.s
	.loc	1 139 9                 // su3.cpp:139:9
	fmls	z12.s, p0/m, z25.s, z9.s
	.loc	1 141 9                 // su3.cpp:141:9
	fmla	z13.s, p0/m, z25.s, z8.s
	.loc	1 134 9                 // su3.cpp:134:9
	fmls	z10.s, p0/m, z19.s, z9.s
	.loc	1 144 3                 // su3.cpp:144:3
	add	x10, x9, x8
.Ltmp8:
	.loc	1 153 17                // su3.cpp:153:17
	addvl	x8, x8, #6
.Ltmp9:
	.loc	1 144 3                 // su3.cpp:144:3
	st1w	{ z28.s }, p0, [x10]
	.loc	1 145 3                 // su3.cpp:145:3
	st1w	{ z29.s }, p0, [x10, #1, mul vl]
	.loc	1 146 3                 // su3.cpp:146:3
	st1w	{ z10.s }, p0, [x10, #2, mul vl]
	.loc	1 147 3                 // su3.cpp:147:3
	st1w	{ z11.s }, p0, [x10, #3, mul vl]
	.loc	1 148 3                 // su3.cpp:148:3
	st1w	{ z12.s }, p0, [x10, #4, mul vl]
	.loc	1 149 3                 // su3.cpp:149:3
	st1w	{ z13.s }, p0, [x10, #5, mul vl]
.Ltmp10:
	.loc	1 153 17                // su3.cpp:153:17
	subs	w20, w20, #1            // =1
	.loc	1 153 3 is_stmt 0       // su3.cpp:153:3
	b.ne	.LBB0_7
.Ltmp11:
.LBB0_8:
	.loc	1 176 1 is_stmt 1       // su3.cpp:176:1
	mov	sp, x21
	mov	w0, wzr
	sub	sp, x29, #128           // =128
	ldp	x29, x30, [sp, #128]    // 16-byte Folded Reload
	ldr	x28, [sp, #48]          // 8-byte Folded Reload
	ldp	x20, x19, [sp, #112]    // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]     // 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]       // 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]     // 16-byte Folded Reload
	ldp	d13, d12, [sp], #144    // 16-byte Folded Reload
	ret
.Ltmp12:
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
	.asciz	"_ZN5Gauge7svptrueE__SVFloat32_t" // string offset=125
.Linfo_string5:
	.asciz	"svptrue"               // string offset=157
.Linfo_string6:
	.asciz	"_ZN5Gauge4loadEPKf"    // string offset=165
.Linfo_string7:
	.asciz	"load"                  // string offset=184
.Linfo_string8:
	.asciz	"_ZN5Gauge4multEPKfPfi" // string offset=189
.Linfo_string9:
	.asciz	"mult"                  // string offset=211
.Linfo_string10:
	.asciz	"_ZN5Gauge4multEPKfPf"  // string offset=216
.Linfo_string11:
	.asciz	"main"                  // string offset=237
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
	.byte	6                       // Abbreviation Code
	.byte	29                      // DW_TAG_inlined_subroutine
	.byte	1                       // DW_CHILDREN_yes
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
	.byte	7                       // Abbreviation Code
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
	.byte	8                       // Abbreviation Code
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
	.byte	9                       // Abbreviation Code
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
	.word	198                     // Length of Unit
	.hword	4                       // DWARF version number
	.word	.debug_abbrev           // Offset Into Abbrev. Section
	.byte	8                       // Address Size (in bytes)
	.byte	1                       // Abbrev [1] 0xb:0xbf DW_TAG_compile_unit
	.word	.Linfo_string0          // DW_AT_producer
	.hword	4                       // DW_AT_language
	.word	.Linfo_string1          // DW_AT_name
	.word	.Lline_table_start0     // DW_AT_stmt_list
	.word	.Linfo_string2          // DW_AT_comp_dir
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0 // DW_AT_high_pc
	.byte	2                       // Abbrev [2] 0x2a:0x6b DW_TAG_subprogram
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0 // DW_AT_high_pc
	.word	.Linfo_string11         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	163                     // DW_AT_decl_line
	.byte	3                       // Abbrev [3] 0x3d:0x6 DW_TAG_FJ_loop
	.byte	1                       // DW_AT_decl_file
	.byte	153                     // DW_AT_FJ_loop_start_line
	.byte	157                     // DW_AT_FJ_loop_end_line
	.byte	1                       // DW_AT_FJ_loop_nest_level
	.byte	5                       // DW_AT_FJ_loop_type
	.byte	4                       // Abbrev [4] 0x43:0x13 DW_TAG_inlined_subroutine
	.word	149                     // DW_AT_abstract_origin
	.xword	.Ltmp1                  // DW_AT_low_pc
	.word	.Ltmp2-.Ltmp1           // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	164                     // DW_AT_call_line
	.byte	5                       // Abbrev [5] 0x56:0x27 DW_TAG_inlined_subroutine
	.word	168                     // DW_AT_abstract_origin
	.xword	.Ltmp3                  // DW_AT_low_pc
	.word	.Ltmp5-.Ltmp3           // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	173                     // DW_AT_call_line
	.byte	4                       // Abbrev [4] 0x69:0x13 DW_TAG_inlined_subroutine
	.word	157                     // DW_AT_abstract_origin
	.xword	.Ltmp3                  // DW_AT_low_pc
	.word	.Ltmp4-.Ltmp3           // DW_AT_high_pc
	.byte	1                       // DW_AT_call_file
	.byte	21                      // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	6                       // Abbrev [6] 0x7d:0x17 DW_TAG_inlined_subroutine
	.word	179                     // DW_AT_abstract_origin
	.word	.Ldebug_ranges0         // DW_AT_ranges
	.byte	1                       // DW_AT_call_file
	.byte	175                     // DW_AT_call_line
	.byte	7                       // Abbrev [7] 0x88:0xb DW_TAG_inlined_subroutine
	.word	190                     // DW_AT_abstract_origin
	.word	.Ldebug_ranges1         // DW_AT_ranges
	.byte	1                       // DW_AT_call_file
	.byte	154                     // DW_AT_call_line
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
	.byte	8                       // Abbrev [8] 0x95:0x8 DW_TAG_subprogram
	.word	.Linfo_string3          // DW_AT_name
	.byte	2                       // DW_AT_decl_file
	.hword	361                     // DW_AT_decl_line
	.byte	9                       // Abbrev [9] 0x9d:0xb DW_TAG_subprogram
	.word	.Linfo_string4          // DW_AT_linkage_name
	.word	.Linfo_string5          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	12                      // DW_AT_decl_line
	.byte	9                       // Abbrev [9] 0xa8:0xb DW_TAG_subprogram
	.word	.Linfo_string6          // DW_AT_linkage_name
	.word	.Linfo_string7          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	19                      // DW_AT_decl_line
	.byte	9                       // Abbrev [9] 0xb3:0xb DW_TAG_subprogram
	.word	.Linfo_string8          // DW_AT_linkage_name
	.word	.Linfo_string9          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	151                     // DW_AT_decl_line
	.byte	9                       // Abbrev [9] 0xbe:0xb DW_TAG_subprogram
	.word	.Linfo_string10         // DW_AT_linkage_name
	.word	.Linfo_string9          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	80                      // DW_AT_decl_line
	.byte	0                       // End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.xword	.Ltmp5-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp7-.Lfunc_begin0
	.xword	.Ltmp11-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges1:
	.xword	.Ltmp7-.Lfunc_begin0
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp9-.Lfunc_begin0
	.xword	.Ltmp10-.Lfunc_begin0
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

	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"check.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "check/check.c"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC24:
	.ascii	"HIGH\000"
	.align	2
.LC25:
	.ascii	"LOW\000"
	.align	2
.LC26:
	.ascii	"YES\000"
	.align	2
.LC27:
	.ascii	"NO\000"
	.align	2
.LC28:
	.ascii	"---- OV7670 Pinovi tokom %d ms ----\012\000"
	.align	2
.LC29:
	.ascii	"PCLK  : %s\012\000"
	.align	2
.LC30:
	.ascii	"PCLK ever HIGH : %s\012\000"
	.align	2
.LC31:
	.ascii	"PCLK ever LOW  : %s\012\000"
	.align	2
.LC32:
	.ascii	"HSYNC : %s\012\000"
	.align	2
.LC33:
	.ascii	"HSYNC ever HIGH : %s\012\000"
	.align	2
.LC34:
	.ascii	"HSYNC ever LOW  : %s\012\000"
	.align	2
.LC35:
	.ascii	"VSYNC : %s\012\000"
	.align	2
.LC36:
	.ascii	"VSYNC ever HIGH : %s\012\000"
	.align	2
.LC37:
	.ascii	"VSYNC ever LOW  : %s\012\000"
	.align	2
.LC38:
	.ascii	"D0    : %s\012\000"
	.align	2
.LC39:
	.ascii	"D0 ever HIGH : %s\012\000"
	.align	2
.LC40:
	.ascii	"D0 ever LOW  : %s\012\000"
	.align	2
.LC41:
	.ascii	"D1    : %s\012\000"
	.align	2
.LC42:
	.ascii	"D1 ever HIGH : %s\012\000"
	.align	2
.LC43:
	.ascii	"D1 ever LOW  : %s\012\000"
	.align	2
.LC44:
	.ascii	"D2    : %s\012\000"
	.align	2
.LC45:
	.ascii	"D2 ever HIGH : %s\012\000"
	.align	2
.LC46:
	.ascii	"D2 ever LOW  : %s\012\000"
	.align	2
.LC47:
	.ascii	"D3    : %s\012\000"
	.align	2
.LC48:
	.ascii	"D3 ever HIGH : %s\012\000"
	.align	2
.LC49:
	.ascii	"D3 ever LOW  : %s\012\000"
	.align	2
.LC50:
	.ascii	"D4    : %s\012\000"
	.align	2
.LC51:
	.ascii	"D4 ever HIGH : %s\012\000"
	.align	2
.LC52:
	.ascii	"D4 ever LOW  : %s\012\000"
	.align	2
.LC53:
	.ascii	"D5    : %s\012\000"
	.align	2
.LC54:
	.ascii	"D5 ever HIGH : %s\012\000"
	.align	2
.LC55:
	.ascii	"D5 ever LOW  : %s\012\000"
	.align	2
.LC56:
	.ascii	"D6    : %s\012\000"
	.align	2
.LC57:
	.ascii	"D6 ever HIGH : %s\012\000"
	.align	2
.LC58:
	.ascii	"D6 ever LOW  : %s\012\000"
	.align	2
.LC59:
	.ascii	"D7    : %s\012\000"
	.align	2
.LC60:
	.ascii	"D7 ever HIGH : %s\012\000"
	.align	2
.LC61:
	.ascii	"D7 ever LOW  : %s\012\000"
	.align	2
.LC62:
	.ascii	"------------------------------------\012\000"
	.align	2
.LC63:
	.ascii	"GPIOA: MODER-[0x%X], AFR-[0x%X], IDR[0x%X]\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CheckPins_Interval
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CheckPins_Interval, %function
OV7670_CheckPins_Interval:
.LVL0:
.LFB110:
	.loc 1 13 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 14 5 view .LVU1
	.loc 1 13 1 is_stmt 0 view .LVU2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #124
	.cfi_def_cfa_offset 160
	.loc 1 13 1 view .LVU3
	mov	r8, r0
	.loc 1 14 22 view .LVU4
	bl	getSYSTIMER_TIM7
.LVL1:
	.loc 1 17 5 is_stmt 1 view .LVU5
	.loc 1 18 5 view .LVU6
	.loc 1 19 5 view .LVU7
	.loc 1 22 5 view .LVU8
	.loc 1 23 5 view .LVU9
	.loc 1 24 5 view .LVU10
	.loc 1 25 5 view .LVU11
	.loc 1 26 5 view .LVU12
	.loc 1 27 5 view .LVU13
	.loc 1 28 5 view .LVU14
	.loc 1 30 5 view .LVU15
	.loc 1 28 64 is_stmt 0 view .LVU16
	movs	r6, #0
	str	r8, [sp, #68]
	.loc 1 28 30 view .LVU17
	strd	r6, r6, [sp, #56]
	.loc 1 27 64 view .LVU18
	strd	r6, r6, [sp, #48]
	.loc 1 27 30 view .LVU19
	strd	r6, r6, [sp, #40]
	.loc 1 26 67 view .LVU20
	strd	r6, r6, [sp, #32]
	.loc 1 26 31 view .LVU21
	strd	r6, r6, [sp, #24]
	.loc 1 25 67 view .LVU22
	strd	r6, r6, [sp, #16]
	.loc 1 25 31 view .LVU23
	strd	r6, r6, [sp, #8]
	.loc 1 24 13 view .LVU24
	strd	r6, r6, [sp, #104]
	.loc 1 23 13 view .LVU25
	strd	r6, r6, [sp, #96]
	.loc 1 22 13 view .LVU26
	strd	r6, r6, [sp, #88]
	.loc 1 17 28 view .LVU27
	strd	r6, r6, [sp, #76]
	.loc 1 25 13 view .LVU28
	str	r6, [sp, #4]
	.loc 1 19 52 view .LVU29
	mov	r10, r6
	.loc 1 19 39 view .LVU30
	mov	fp, r6
	.loc 1 19 13 view .LVU31
	mov	r7, r6
	.loc 1 18 52 view .LVU32
	mov	r5, r6
	.loc 1 18 26 view .LVU33
	mov	r4, r6
	.loc 1 17 13 view .LVU34
	str	r6, [sp, #72]
	str	r6, [sp, #64]
	str	r0, [sp, #84]
	mov	r9, r6
	mov	r8, r6
.LVL2:
	.loc 1 30 11 view .LVU35
	b	.L2
.LVL3:
.L79:
.LBB4:
	.loc 1 43 9 is_stmt 1 view .LVU36
	.loc 1 40 26 is_stmt 0 view .LVU37
	str	r6, [sp, #72]
	.loc 1 40 45 view .LVU38
	movs	r1, #1
	.loc 1 43 12 view .LVU39
	ands	r6, r4, #16
	.loc 1 40 45 view .LVU40
	str	r1, [sp, #92]
	.loc 1 43 12 view .LVU41
	bne	.L41
.L80:
	.loc 1 47 9 is_stmt 1 view .LVU42
	.loc 1 44 47 is_stmt 0 view .LVU43
	movs	r1, #1
	.loc 1 47 12 view .LVU44
	ands	r3, r3, #128
.LVL4:
	.loc 1 44 27 view .LVU45
	str	r6, [sp, #76]
	.loc 1 44 47 view .LVU46
	str	r1, [sp, #100]
	.loc 1 47 12 view .LVU47
	beq	.L42
.L81:
	.loc 1 47 70 view .LVU48
	movs	r3, #1
	str	r3, [sp, #104]
	.loc 1 47 49 view .LVU49
	str	r3, [sp, #80]
.L5:
	.loc 1 51 9 is_stmt 1 view .LVU50
	.loc 1 56 66 is_stmt 0 view .LVU51
	ldr	r3, [sp, #24]
	.loc 1 56 17 view .LVU52
	ubfx	r9, r2, #3, #1
	.loc 1 56 66 view .LVU53
	orr	r3, r3, r9
	str	r3, [sp, #24]
.LVL5:
	.loc 1 51 66 view .LVU54
	ldr	r3, [sp, #4]
	.loc 1 51 17 view .LVU55
	ubfx	r6, r4, #9, #1
.LVL6:
	.loc 1 51 53 is_stmt 1 view .LVU56
	.loc 1 51 66 is_stmt 0 view .LVU57
	orrs	r3, r3, r6
	str	r3, [sp, #4]
.LVL7:
	.loc 1 51 78 is_stmt 1 view .LVU58
	.loc 1 52 66 is_stmt 0 view .LVU59
	ldr	r3, [sp, #8]
	.loc 1 52 17 view .LVU60
	ubfx	r4, r4, #10, #1
.LVL8:
	.loc 1 52 66 view .LVU61
	orrs	r3, r3, r4
	str	r3, [sp, #8]
.LVL9:
	.loc 1 53 66 view .LVU62
	ldr	r3, [sp, #12]
	.loc 1 53 17 view .LVU63
	ubfx	r7, r5, #8, #1
	.loc 1 53 66 view .LVU64
	orrs	r3, r3, r7
	str	r3, [sp, #12]
.LVL10:
	.loc 1 54 66 view .LVU65
	ldr	r3, [sp, #16]
	.loc 1 54 17 view .LVU66
	ubfx	r5, r5, #9, #1
.LVL11:
	.loc 1 54 66 view .LVU67
	orrs	r3, r3, r5
	str	r3, [sp, #16]
.LVL12:
	.loc 1 55 66 view .LVU68
	ldr	r3, [sp, #20]
	.loc 1 55 17 view .LVU69
	ubfx	fp, r0, #4, #1
	.loc 1 55 66 view .LVU70
	orr	r3, r3, fp
	str	r3, [sp, #20]
.LVL13:
	.loc 1 57 66 view .LVU71
	ldr	r3, [sp, #28]
	.loc 1 57 17 view .LVU72
	ubfx	r8, r0, #5, #1
	.loc 1 57 66 view .LVU73
	orr	r3, r3, r8
	str	r3, [sp, #28]
.LVL14:
	.loc 1 58 66 view .LVU74
	ldr	r3, [sp, #32]
	.loc 1 58 17 view .LVU75
	ubfx	r10, r0, #6, #1
	.loc 1 58 66 view .LVU76
	orr	r3, r3, r10
	str	r3, [sp, #32]
.LVL15:
	.loc 1 51 90 view .LVU77
	ldr	r3, [sp, #36]
	eor	r0, r6, #1
.LVL16:
	.loc 1 51 90 view .LVU78
	orrs	r3, r3, r0
	str	r3, [sp, #36]
.LVL17:
	.loc 1 52 9 is_stmt 1 view .LVU79
	.loc 1 52 53 view .LVU80
	.loc 1 52 78 view .LVU81
	.loc 1 52 90 is_stmt 0 view .LVU82
	ldr	r3, [sp, #40]
	eor	r0, r4, #1
	orrs	r3, r3, r0
	str	r3, [sp, #40]
.LVL18:
	.loc 1 53 9 is_stmt 1 view .LVU83
	.loc 1 53 53 view .LVU84
	.loc 1 53 78 view .LVU85
	.loc 1 53 90 is_stmt 0 view .LVU86
	ldr	r3, [sp, #44]
	eor	r0, r7, #1
	orrs	r3, r3, r0
	str	r3, [sp, #44]
.LVL19:
	.loc 1 54 9 is_stmt 1 view .LVU87
	.loc 1 54 53 view .LVU88
	.loc 1 54 78 view .LVU89
	.loc 1 54 90 is_stmt 0 view .LVU90
	ldr	r3, [sp, #48]
	eor	r0, r5, #1
	orrs	r3, r3, r0
	str	r3, [sp, #48]
.LVL20:
	.loc 1 55 9 is_stmt 1 view .LVU91
	.loc 1 55 53 view .LVU92
	.loc 1 55 78 view .LVU93
	.loc 1 55 90 is_stmt 0 view .LVU94
	ldr	r3, [sp, #52]
	eor	r0, fp, #1
	orrs	r3, r3, r0
	str	r3, [sp, #52]
.LVL21:
	.loc 1 56 9 is_stmt 1 view .LVU95
	.loc 1 56 53 view .LVU96
	.loc 1 56 78 view .LVU97
	.loc 1 56 90 is_stmt 0 view .LVU98
	ldr	r3, [sp, #56]
	eor	r0, r9, #1
	orrs	r3, r3, r0
	str	r3, [sp, #56]
.LVL22:
	.loc 1 57 9 is_stmt 1 view .LVU99
	.loc 1 57 53 view .LVU100
	.loc 1 57 78 view .LVU101
	.loc 1 57 90 is_stmt 0 view .LVU102
	ldr	r3, [sp, #60]
	eor	r0, r8, #1
	orrs	r3, r3, r0
	str	r3, [sp, #60]
.LVL23:
	.loc 1 58 9 is_stmt 1 view .LVU103
	.loc 1 58 53 view .LVU104
	.loc 1 58 78 view .LVU105
	.loc 1 58 90 is_stmt 0 view .LVU106
	ldr	r3, [sp, #64]
	eor	r0, r10, #1
	orrs	r3, r3, r0
	str	r3, [sp, #64]
.LVL24:
.L2:
	.loc 1 58 90 view .LVU107
.LBE4:
	.loc 1 30 41 is_stmt 1 view .LVU108
	.loc 1 30 13 is_stmt 0 view .LVU109
	bl	getSYSTIMER_TIM7
.LVL25:
	.loc 1 30 32 view .LVU110
	ldr	r3, [sp, #84]
	subs	r0, r0, r3
	.loc 1 30 41 view .LVU111
	ldr	r3, [sp, #68]
	cmp	r0, r3
	bcs	.L78
.LBB5:
	.loc 1 32 9 is_stmt 1 view .LVU112
	.loc 1 32 18 is_stmt 0 view .LVU113
	ldr	r3, .L82
	.loc 1 34 18 view .LVU114
	ldr	r1, .L82+4
	.loc 1 32 18 view .LVU115
	ldr	r4, [r3, #16]
.LVL26:
	.loc 1 33 9 is_stmt 1 view .LVU116
	.loc 1 35 18 is_stmt 0 view .LVU117
	ldr	r2, .L82+8
	.loc 1 33 18 view .LVU118
	add	r3, r3, #1024
	.loc 1 39 12 view .LVU119
	ands	r6, r4, #64
	.loc 1 33 18 view .LVU120
	ldr	r3, [r3, #16]
.LVL27:
	.loc 1 34 9 is_stmt 1 view .LVU121
	.loc 1 34 18 is_stmt 0 view .LVU122
	ldr	r5, [r1, #16]
.LVL28:
	.loc 1 35 9 is_stmt 1 view .LVU123
	.loc 1 35 18 is_stmt 0 view .LVU124
	ldr	r2, [r2, #16]
.LVL29:
	.loc 1 36 9 is_stmt 1 view .LVU125
	.loc 1 36 18 is_stmt 0 view .LVU126
	ldr	r0, [r1, #2064]
.LVL30:
	.loc 1 39 9 is_stmt 1 view .LVU127
	.loc 1 39 12 is_stmt 0 view .LVU128
	beq	.L79
	.loc 1 39 68 view .LVU129
	movs	r1, #1
	.loc 1 43 12 view .LVU130
	ands	r6, r4, #16
	.loc 1 39 68 view .LVU131
	str	r1, [sp, #88]
	.loc 1 39 48 view .LVU132
	str	r1, [sp, #72]
	.loc 1 43 9 is_stmt 1 view .LVU133
	.loc 1 43 12 is_stmt 0 view .LVU134
	beq	.L80
.L41:
	.loc 1 43 70 view .LVU135
	movs	r1, #1
	.loc 1 47 12 view .LVU136
	ands	r3, r3, #128
.LVL31:
	.loc 1 43 70 view .LVU137
	str	r1, [sp, #96]
	.loc 1 43 49 view .LVU138
	str	r1, [sp, #76]
	.loc 1 47 9 is_stmt 1 view .LVU139
	.loc 1 47 12 is_stmt 0 view .LVU140
	bne	.L81
.L42:
	.loc 1 48 27 view .LVU141
	str	r3, [sp, #80]
	.loc 1 48 47 view .LVU142
	movs	r3, #1
	str	r3, [sp, #108]
	b	.L5
.L83:
	.align	2
.L82:
	.word	1073872896
	.word	1073874944
	.word	1073875968
.LVL32:
.L78:
	.loc 1 48 47 view .LVU143
.LBE5:
	.loc 1 62 5 is_stmt 1 view .LVU144
	str	r6, [sp, #84]
.LVL33:
	.loc 1 62 5 is_stmt 0 view .LVU145
	str	r7, [sp, #116]
	mov	r7, fp
	mov	fp, r8
	ldrd	r6, r8, [sp, #64]
	ldr	r0, .L84
	str	r9, [sp, #112]
	mov	r1, r8
	bl	printUSART2
.LVL34:
	.loc 1 63 5 is_stmt 1 view .LVU146
	ldr	r3, .L84+4
	ldr	r2, [sp, #72]
	ldr	r1, .L84+8
	ldr	r0, .L84+12
	.loc 1 64 5 is_stmt 0 view .LVU147
	ldr	r9, .L84+156
	ldr	r8, .L84+160
	.loc 1 63 5 view .LVU148
	cmp	r2, #0
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL35:
	.loc 1 64 5 is_stmt 1 view .LVU149
	ldr	r2, [sp, #88]
	ldr	r0, .L84+16
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL36:
	.loc 1 65 5 view .LVU150
	ldr	r2, [sp, #92]
	ldr	r0, .L84+20
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL37:
	.loc 1 67 5 view .LVU151
	ldr	r3, .L84+4
	ldr	r2, [sp, #76]
	ldr	r1, .L84+8
	ldr	r0, .L84+24
	cmp	r2, #0
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL38:
	.loc 1 68 5 view .LVU152
	ldr	r2, [sp, #96]
	ldr	r0, .L84+28
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL39:
	.loc 1 69 5 view .LVU153
	ldr	r2, [sp, #100]
	ldr	r0, .L84+32
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL40:
	.loc 1 71 5 view .LVU154
	ldr	r3, .L84+4
	ldr	r2, [sp, #80]
	ldr	r1, .L84+8
	ldr	r0, .L84+36
	cmp	r2, #0
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL41:
	.loc 1 72 5 view .LVU155
	ldr	r2, [sp, #104]
	ldr	r0, .L84+40
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL42:
	.loc 1 73 5 view .LVU156
	ldr	r2, [sp, #108]
	ldr	r0, .L84+44
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL43:
	.loc 1 75 5 view .LVU157
	ldr	r3, .L84+4
	ldr	r2, [sp, #84]
	ldr	r1, .L84+8
	ldr	r0, .L84+48
	cmp	r2, #0
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL44:
	.loc 1 76 5 view .LVU158
	ldr	r2, [sp, #4]
	ldr	r0, .L84+52
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL45:
	.loc 1 77 5 view .LVU159
	ldr	r2, [sp, #36]
	ldr	r0, .L84+56
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL46:
	.loc 1 79 5 view .LVU160
	ldr	r3, .L84+4
	ldr	r1, .L84+8
	ldr	r0, .L84+60
	cmp	r4, #0
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL47:
	.loc 1 80 5 view .LVU161
	ldr	r2, [sp, #8]
	ldr	r0, .L84+64
	.loc 1 83 5 is_stmt 0 view .LVU162
	ldr	r4, .L84+4
	.loc 1 80 5 view .LVU163
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL48:
	.loc 1 81 5 is_stmt 1 view .LVU164
	ldr	r2, [sp, #40]
	ldr	r0, .L84+68
	cmp	r2, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL49:
	.loc 1 83 5 view .LVU165
	ldr	r3, [sp, #116]
	ldr	r1, .L84+8
	ldr	r0, .L84+72
	cmp	r3, #0
	it	ne
	movne	r1, r4
	bl	printUSART2
.LVL50:
	.loc 1 84 5 view .LVU166
	ldr	r3, [sp, #12]
	ldr	r0, .L84+76
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL51:
	.loc 1 85 5 view .LVU167
	ldr	r3, [sp, #44]
	ldr	r0, .L84+80
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL52:
	.loc 1 87 5 view .LVU168
	ldr	r1, .L84+8
	ldr	r0, .L84+84
	cmp	r5, #0
	it	ne
	movne	r1, r4
	bl	printUSART2
.LVL53:
	.loc 1 88 5 view .LVU169
	ldr	r3, [sp, #16]
	ldr	r0, .L84+88
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL54:
	.loc 1 89 5 view .LVU170
	ldr	r3, [sp, #48]
	ldr	r0, .L84+92
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL55:
	.loc 1 91 5 view .LVU171
	ldr	r1, .L84+8
	ldr	r0, .L84+96
	cmp	r7, #0
	it	ne
	movne	r1, r4
	bl	printUSART2
.LVL56:
	.loc 1 92 5 view .LVU172
	ldr	r3, [sp, #20]
	ldr	r0, .L84+100
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL57:
	.loc 1 93 5 view .LVU173
	ldr	r3, [sp, #52]
	ldr	r0, .L84+104
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL58:
	.loc 1 95 5 view .LVU174
	ldr	r2, [sp, #112]
	ldr	r1, .L84+8
	ldr	r0, .L84+108
	cmp	r2, #0
	it	ne
	movne	r1, r4
	bl	printUSART2
.LVL59:
	.loc 1 96 5 view .LVU175
	ldr	r3, [sp, #24]
	ldr	r0, .L84+112
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL60:
	.loc 1 97 5 view .LVU176
	ldr	r3, [sp, #56]
	ldr	r0, .L84+116
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL61:
	.loc 1 99 5 view .LVU177
	ldr	r1, .L84+8
	ldr	r0, .L84+120
	cmp	fp, #0
	it	ne
	movne	r1, r4
	bl	printUSART2
.LVL62:
	.loc 1 100 5 view .LVU178
	ldr	r3, [sp, #28]
	ldr	r0, .L84+124
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL63:
	.loc 1 101 5 view .LVU179
	ldr	r3, [sp, #60]
	ldr	r0, .L84+128
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL64:
	.loc 1 103 5 view .LVU180
	ldr	r1, .L84+8
	ldr	r0, .L84+132
	cmp	r10, #0
	it	ne
	movne	r1, r4
	bl	printUSART2
.LVL65:
	.loc 1 104 5 view .LVU181
	ldr	r3, [sp, #32]
	ldr	r0, .L84+136
	cmp	r3, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	bl	printUSART2
.LVL66:
	.loc 1 105 5 view .LVU182
	cmp	r6, #0
	ite	eq
	moveq	r1, r9
	movne	r1, r8
	ldr	r0, .L84+140
	bl	printUSART2
.LVL67:
	.loc 1 107 5 view .LVU183
	ldr	r0, .L84+144
	bl	printUSART2
.LVL68:
	.loc 1 108 5 view .LVU184
	.loc 1 108 70 is_stmt 0 view .LVU185
	ldr	r3, .L84+148
	.loc 1 108 5 view .LVU186
	ldr	r0, .L84+152
	.loc 1 108 70 view .LVU187
	ldr	r1, [r3]
	.loc 1 108 89 view .LVU188
	ldr	r2, [r3, #36]
	.loc 1 108 99 view .LVU189
	ldr	r3, [r3, #16]
	.loc 1 108 5 view .LVU190
	bl	printUSART2
.LVL69:
	.loc 1 109 5 is_stmt 1 view .LVU191
	ldr	r0, .L84+144
	.loc 1 110 1 is_stmt 0 view .LVU192
	add	sp, sp, #124
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL70:
	.loc 1 109 5 view .LVU193
	b	printUSART2
.LVL71:
.L85:
	.align	2
.L84:
	.word	.LC28
	.word	.LC24
	.word	.LC25
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	1073872896
	.word	.LC63
	.word	.LC27
	.word	.LC26
	.cfi_endproc
.LFE110:
	.size	OV7670_CheckPins_Interval, .-OV7670_CheckPins_Interval
	.section	.rodata.str1.4
	.align	2
.LC64:
	.ascii	"D0-D7: %d %d %d %d %d %d %d %d | PCLK: %d | HSYNC: "
	.ascii	"%d | VSYNC: %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_TestPins
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_TestPins, %function
OV7670_TestPins:
.LVL72:
.LFB111:
	.loc 1 114 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 115 5 view .LVU195
	.loc 1 116 5 view .LVU196
	.loc 1 114 1 is_stmt 0 view .LVU197
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 114 1 view .LVU198
	mov	r10, r0
	str	r1, [sp, #36]
	.loc 1 116 22 view .LVU199
	bl	getSYSTIMER_TIM7
.LVL73:
.LBB6:
	.loc 1 123 28 view .LVU200
	ldr	r9, .L90+16
	.loc 1 125 28 view .LVU201
	ldr	r8, .L90+20
.LBE6:
	.loc 1 116 22 view .LVU202
	str	r0, [sp, #32]
.LVL74:
	.loc 1 118 5 is_stmt 1 view .LVU203
	.loc 1 118 11 is_stmt 0 view .LVU204
	b	.L87
.LVL75:
.L88:
.LBB7:
	.loc 1 121 28 view .LVU205
	ldr	r1, [r7, #16]
.LVL76:
	.loc 1 122 9 is_stmt 1 view .LVU206
	.loc 1 122 28 is_stmt 0 view .LVU207
	ldr	r2, [r7, #16]
.LVL77:
	.loc 1 123 9 is_stmt 1 view .LVU208
	.loc 1 123 28 is_stmt 0 view .LVU209
	ldr	r3, [r9, #16]
.LVL78:
	.loc 1 124 9 is_stmt 1 view .LVU210
	.loc 1 124 28 is_stmt 0 view .LVU211
	ldr	r4, [r9, #16]
.LVL79:
	.loc 1 125 9 is_stmt 1 view .LVU212
	.loc 1 125 28 is_stmt 0 view .LVU213
	ldr	r5, [r8, #16]
.LVL80:
	.loc 1 126 9 is_stmt 1 view .LVU214
	.loc 1 126 28 is_stmt 0 view .LVU215
	ldr	r6, [r6, #16]
.LVL81:
	.loc 1 127 9 is_stmt 1 view .LVU216
	.loc 1 127 28 is_stmt 0 view .LVU217
	ldr	r0, [r8, #16]
.LVL82:
	.loc 1 128 9 is_stmt 1 view .LVU218
	.loc 1 128 28 is_stmt 0 view .LVU219
	ldr	ip, [r8, #16]
.LVL83:
	.loc 1 131 9 is_stmt 1 view .LVU220
	.loc 1 131 31 is_stmt 0 view .LVU221
	ldr	lr, [r7, #16]
.LVL84:
	.loc 1 132 9 is_stmt 1 view .LVU222
	.loc 1 132 31 is_stmt 0 view .LVU223
	ldr	r7, [r7, #16]
.LVL85:
	.loc 1 133 9 is_stmt 1 view .LVU224
	.loc 1 132 53 is_stmt 0 view .LVU225
	ubfx	fp, r7, #4, #1
	.loc 1 133 31 view .LVU226
	ldr	r7, .L90
.LVL86:
	.loc 1 133 31 view .LVU227
	ldr	r7, [r7, #16]
.LVL87:
	.loc 1 135 9 is_stmt 1 view .LVU228
	.loc 1 127 51 is_stmt 0 view .LVU229
	ubfx	r0, r0, #5, #1
.LVL88:
	.loc 1 128 51 view .LVU230
	ubfx	ip, ip, #6, #1
.LVL89:
	.loc 1 131 53 view .LVU231
	ubfx	lr, lr, #6, #1
.LVL90:
	.loc 1 126 51 view .LVU232
	ubfx	r6, r6, #3, #1
.LVL91:
	.loc 1 125 51 view .LVU233
	ubfx	r5, r5, #4, #1
.LVL92:
	.loc 1 124 51 view .LVU234
	ubfx	r4, r4, #9, #1
.LVL93:
	.loc 1 133 53 view .LVU235
	ubfx	r7, r7, #7, #1
.LVL94:
	.loc 1 135 9 view .LVU236
	str	r0, [sp, #12]
	strd	lr, fp, [sp, #20]
	ldr	r0, .L90+4
	str	ip, [sp, #16]
	strd	r5, r6, [sp, #4]
	ubfx	r3, r3, #8, #1
.LVL95:
	.loc 1 135 9 view .LVU237
	ubfx	r2, r2, #10, #1
.LVL96:
	.loc 1 135 9 view .LVU238
	ubfx	r1, r1, #9, #1
.LVL97:
	.loc 1 135 9 view .LVU239
	str	r7, [sp, #28]
	str	r4, [sp]
	bl	printUSART2
.LVL98:
	.loc 1 138 9 is_stmt 1 view .LVU240
	ldr	r0, [sp, #36]
	bl	delay_ms
.LVL99:
.L87:
	.loc 1 138 9 is_stmt 0 view .LVU241
.LBE7:
	.loc 1 118 41 is_stmt 1 view .LVU242
	.loc 1 118 13 is_stmt 0 view .LVU243
	bl	getSYSTIMER_TIM7
.LVL100:
.LBB8:
	.loc 1 121 9 is_stmt 1 view .LVU244
.LBE8:
	.loc 1 118 32 is_stmt 0 view .LVU245
	ldr	r3, [sp, #32]
.LBB9:
	.loc 1 121 28 view .LVU246
	ldr	r7, .L90+8
	.loc 1 126 28 view .LVU247
	ldr	r6, .L90+12
.LBE9:
	.loc 1 118 32 view .LVU248
	subs	r0, r0, r3
	.loc 1 118 41 view .LVU249
	cmp	r0, r10
	bcc	.L88
	.loc 1 140 1 view .LVU250
	add	sp, sp, #44
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL101:
.L91:
	.loc 1 140 1 view .LVU251
	.align	2
.L90:
	.word	1073873920
	.word	.LC64
	.word	1073872896
	.word	1073875968
	.word	1073874944
	.word	1073876992
	.cfi_endproc
.LFE111:
	.size	OV7670_TestPins, .-OV7670_TestPins
	.section	.rodata.str1.4
	.align	2
.LC65:
	.ascii	"ERROR: DMA2 clock not enabled!\012\000"
	.align	2
.LC66:
	.ascii	"ERROR: DMA2 PAR wrong (0x%xb)\012\000"
	.align	2
.LC67:
	.ascii	"ERROR: DMA2 M0AR wrong (0x%xb)\012\000"
	.align	2
.LC68:
	.ascii	"ERROR: DMA2 NDTR wrong (%xb)\012\000"
	.align	2
.LC69:
	.ascii	"ERROR: DMA2 channel not set to 1!\012\000"
	.align	2
.LC70:
	.ascii	"ERROR: DMA2 MINC not set!\012\000"
	.align	2
.LC71:
	.ascii	"ERROR: DMA2 not configured as peripheral-to-memory!"
	.ascii	"\012\000"
	.align	2
.LC72:
	.ascii	"ERROR: DMA2 PSIZE not 16-bit!\012\000"
	.align	2
.LC73:
	.ascii	"ERROR: DMA2 MSIZE not 16-bit!\012\000"
	.align	2
.LC74:
	.ascii	"ERROR: DMA2 priority not very high!\012\000"
	.align	2
.LC75:
	.ascii	"ERROR: DMA2 stream not enabled!\012\000"
	.align	2
.LC76:
	.ascii	"DMA2_Stream1 configuration OK!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	verify_DMA2_for_OV7670
	.syntax unified
	.thumb
	.thumb_func
	.type	verify_DMA2_for_OV7670, %function
verify_DMA2_for_OV7670:
.LVL102:
.LFB112:
	.loc 1 146 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 147 5 view .LVU253
	.loc 1 150 5 view .LVU254
	.loc 1 150 14 is_stmt 0 view .LVU255
	ldr	r3, .L137
	.loc 1 146 1 view .LVU256
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 150 14 view .LVU257
	ldr	r4, [r3, #48]
	.loc 1 150 8 view .LVU258
	ands	r4, r4, #4194304
	.loc 1 146 1 view .LVU259
	mov	r6, r0
	mov	r5, r1
	.loc 1 150 8 view .LVU260
	beq	.L134
	.loc 1 147 9 view .LVU261
	movs	r4, #1
.LVL103:
.L93:
	.loc 1 156 5 is_stmt 1 view .LVU262
	.loc 1 156 21 is_stmt 0 view .LVU263
	ldr	r3, .L137+4
	.loc 1 156 8 view .LVU264
	ldr	r2, .L137+8
	.loc 1 156 21 view .LVU265
	ldr	r1, [r3, #48]
	.loc 1 156 8 view .LVU266
	cmp	r1, r2
	beq	.L94
	.loc 1 157 9 is_stmt 1 view .LVU267
	.loc 1 157 68 is_stmt 0 view .LVU268
	ldr	r1, [r3, #48]
	.loc 1 157 9 view .LVU269
	ldr	r0, .L137+12
	bl	printUSART2
.LVL104:
	.loc 1 158 9 is_stmt 1 view .LVU270
	.loc 1 158 12 is_stmt 0 view .LVU271
	movs	r4, #0
.LVL105:
.L94:
	.loc 1 162 5 is_stmt 1 view .LVU272
	.loc 1 162 21 is_stmt 0 view .LVU273
	ldr	r3, .L137+4
	ldr	r2, [r3, #52]
	.loc 1 162 8 view .LVU274
	cmp	r6, r2
	beq	.L95
	.loc 1 163 9 is_stmt 1 view .LVU275
	.loc 1 163 69 is_stmt 0 view .LVU276
	ldr	r1, [r3, #52]
	.loc 1 163 9 view .LVU277
	ldr	r0, .L137+16
	bl	printUSART2
.LVL106:
	.loc 1 164 9 is_stmt 1 view .LVU278
	.loc 1 164 12 is_stmt 0 view .LVU279
	movs	r4, #0
.LVL107:
.L95:
	.loc 1 168 5 is_stmt 1 view .LVU280
	.loc 1 168 21 is_stmt 0 view .LVU281
	ldr	r3, .L137+4
	ldr	r2, [r3, #44]
	.loc 1 168 8 view .LVU282
	cmp	r2, r5
	beq	.L96
	.loc 1 169 9 is_stmt 1 view .LVU283
	.loc 1 169 67 is_stmt 0 view .LVU284
	ldr	r1, [r3, #44]
	.loc 1 169 9 view .LVU285
	ldr	r0, .L137+20
	bl	printUSART2
.LVL108:
	.loc 1 170 9 is_stmt 1 view .LVU286
	.loc 1 170 12 is_stmt 0 view .LVU287
	movs	r4, #0
.LVL109:
.L96:
	.loc 1 174 5 is_stmt 1 view .LVU288
	.loc 1 174 14 is_stmt 0 view .LVU289
	ldr	r3, .L137+4
	ldr	r5, [r3, #40]
.LVL110:
	.loc 1 176 5 is_stmt 1 view .LVU290
	.loc 1 176 21 is_stmt 0 view .LVU291
	ubfx	r3, r5, #25, #3
	.loc 1 176 8 view .LVU292
	cmp	r3, #1
	beq	.L97
	.loc 1 177 9 is_stmt 1 view .LVU293
	ldr	r0, .L137+24
	bl	printUSART2
.LVL111:
	.loc 1 178 9 view .LVU294
	.loc 1 178 12 is_stmt 0 view .LVU295
	movs	r4, #0
.LVL112:
.L97:
	.loc 1 181 5 is_stmt 1 view .LVU296
	.loc 1 181 8 is_stmt 0 view .LVU297
	ands	r6, r5, #1024
.LVL113:
	.loc 1 181 8 view .LVU298
	beq	.L135
.LVL114:
.L98:
	.loc 1 186 5 is_stmt 1 view .LVU299
	.loc 1 186 9 is_stmt 0 view .LVU300
	and	r3, r5, #192
	.loc 1 186 8 view .LVU301
	cmp	r3, #64
	beq	.L99
	.loc 1 187 9 is_stmt 1 view .LVU302
	ldr	r0, .L137+28
	bl	printUSART2
.LVL115:
	.loc 1 188 9 view .LVU303
	.loc 1 188 12 is_stmt 0 view .LVU304
	movs	r4, #0
.LVL116:
.L99:
	.loc 1 191 5 is_stmt 1 view .LVU305
	.loc 1 191 9 is_stmt 0 view .LVU306
	and	r3, r5, #6144
	.loc 1 191 8 view .LVU307
	cmp	r3, #2048
	beq	.L100
	.loc 1 192 9 is_stmt 1 view .LVU308
	ldr	r0, .L137+32
	bl	printUSART2
.LVL117:
	.loc 1 193 9 view .LVU309
	.loc 1 193 12 is_stmt 0 view .LVU310
	movs	r4, #0
.LVL118:
.L100:
	.loc 1 196 5 is_stmt 1 view .LVU311
	.loc 1 196 9 is_stmt 0 view .LVU312
	and	r3, r5, #24576
	.loc 1 196 8 view .LVU313
	cmp	r3, #8192
	bne	.L136
	.loc 1 201 5 is_stmt 1 view .LVU314
	.loc 1 201 8 is_stmt 0 view .LVU315
	tst	r5, #196608
	beq	.L107
	.loc 1 206 5 is_stmt 1 view .LVU316
	.loc 1 206 8 is_stmt 0 view .LVU317
	lsls	r3, r5, #31
	bpl	.L103
	.loc 1 211 5 is_stmt 1 view .LVU318
	.loc 1 211 8 is_stmt 0 view .LVU319
	cbz	r4, .L105
	.loc 1 212 9 is_stmt 1 view .LVU320
	ldr	r0, .L137+36
	bl	printUSART2
.LVL119:
	.loc 1 215 5 view .LVU321
	.loc 1 216 1 is_stmt 0 view .LVU322
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.LVL120:
.L107:
	.loc 1 202 9 is_stmt 1 view .LVU323
	ldr	r0, .L137+40
	bl	printUSART2
.LVL121:
	.loc 1 203 9 view .LVU324
	.loc 1 206 5 view .LVU325
	.loc 1 206 8 is_stmt 0 view .LVU326
	lsls	r1, r5, #31
	bpl	.L103
.LVL122:
.L105:
	.loc 1 193 12 view .LVU327
	movs	r4, #0
	.loc 1 216 1 view .LVU328
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.LVL123:
.L136:
	.loc 1 197 9 is_stmt 1 view .LVU329
	ldr	r0, .L137+44
	bl	printUSART2
.LVL124:
	.loc 1 198 9 view .LVU330
	.loc 1 201 5 view .LVU331
	.loc 1 201 8 is_stmt 0 view .LVU332
	tst	r5, #196608
	beq	.L107
	.loc 1 206 5 is_stmt 1 view .LVU333
	.loc 1 206 8 is_stmt 0 view .LVU334
	lsls	r2, r5, #31
	bmi	.L105
.LVL125:
.L103:
	.loc 1 207 9 is_stmt 1 view .LVU335
	ldr	r0, .L137+48
	bl	printUSART2
.LVL126:
	.loc 1 208 9 view .LVU336
	.loc 1 211 5 view .LVU337
	b	.L105
.LVL127:
.L135:
	.loc 1 182 9 view .LVU338
	ldr	r0, .L137+52
	bl	printUSART2
.LVL128:
	.loc 1 183 9 view .LVU339
	.loc 1 183 12 is_stmt 0 view .LVU340
	mov	r4, r6
	b	.L98
.LVL129:
.L134:
	.loc 1 151 9 is_stmt 1 view .LVU341
	ldr	r0, .L137+56
.LVL130:
	.loc 1 151 9 is_stmt 0 view .LVU342
	bl	printUSART2
.LVL131:
	.loc 1 152 9 is_stmt 1 view .LVU343
	.loc 1 152 9 is_stmt 0 view .LVU344
	b	.L93
.L138:
	.align	2
.L137:
	.word	1073887232
	.word	1073898496
	.word	1342505000
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC71
	.word	.LC72
	.word	.LC76
	.word	.LC74
	.word	.LC73
	.word	.LC75
	.word	.LC70
	.word	.LC65
	.cfi_endproc
.LFE112:
	.size	verify_DMA2_for_OV7670, .-verify_DMA2_for_OV7670
	.section	.rodata.str1.4
	.align	2
.LC77:
	.ascii	"REG 0x%xb = 0x%xb\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	dump_ov7670_regs
	.syntax unified
	.thumb
	.thumb_func
	.type	dump_ov7670_regs, %function
dump_ov7670_regs:
.LFB113:
	.loc 1 229 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 230 5 view .LVU346
	.loc 1 231 5 view .LVU347
.LBB10:
	.loc 1 231 10 view .LVU348
.LVL132:
	.loc 1 231 23 view .LVU349
.LBE10:
	.loc 1 229 29 is_stmt 0 view .LVU350
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	ldr	r4, .L143
.LBB11:
	.loc 1 233 9 view .LVU351
	ldr	r7, .L143+4
.LBE11:
	.loc 1 229 29 view .LVU352
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	adds	r6, r4, #6
.LVL133:
.L140:
.LBB12:
	.loc 1 232 9 is_stmt 1 discriminator 3 view .LVU353
	.loc 1 232 30 is_stmt 0 discriminator 3 view .LVU354
	ldrb	r5, [r4], #1	@ zero_extendqisi2
.LVL134:
	.loc 1 232 9 discriminator 3 view .LVU355
	movs	r2, #1
	add	r1, sp, #4
	mov	r0, r5
	bl	readI2C
.LVL135:
	.loc 1 233 9 is_stmt 1 discriminator 3 view .LVU356
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	mov	r0, r7
	mov	r1, r5
	bl	printUSART2
.LVL136:
	.loc 1 234 9 discriminator 3 view .LVU357
	movs	r0, #2
	bl	delay_ms
.LVL137:
	.loc 1 231 80 discriminator 3 view .LVU358
	.loc 1 231 23 discriminator 3 view .LVU359
	cmp	r4, r6
	bne	.L140
.LBE12:
	.loc 1 236 1 is_stmt 0 view .LVU360
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL138:
.L144:
	.loc 1 236 1 view .LVU361
	.align	2
.L143:
	.word	.LANCHOR0
	.word	.LC77
	.cfi_endproc
.LFE113:
	.size	dump_ov7670_regs, .-dump_ov7670_regs
	.section	.rodata.str1.4
	.align	2
.LC78:
	.ascii	"OK:   reg 0x%xb = 0x%xb\012\000"
	.align	2
.LC79:
	.ascii	"ERROR: reg 0x%xb = 0x%xb, expected 0x%xb\012\000"
	.align	2
.LC80:
	.ascii	"OV7670 -> verify regs zavrsen!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	verify_ov7670_regs
	.syntax unified
	.thumb
	.thumb_func
	.type	verify_ov7670_regs, %function
verify_ov7670_regs:
.LFB114:
	.loc 1 259 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 260 5 view .LVU363
	.loc 1 261 5 view .LVU364
.LVL139:
	.loc 1 262 5 view .LVU365
	.loc 1 265 5 view .LVU366
	.loc 1 259 1 is_stmt 0 view .LVU367
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 265 5 view .LVU368
	movs	r0, #100
	.loc 1 259 1 view .LVU369
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 265 5 view .LVU370
	bl	delay_ms
.LVL140:
	.loc 1 267 5 is_stmt 1 view .LVU371
	.loc 1 267 5 is_stmt 0 view .LVU372
	ldr	r8, .L159+12
	.loc 1 265 5 view .LVU373
	movs	r7, #0
.LVL141:
.L154:
.LBB13:
	.loc 1 268 9 is_stmt 1 view .LVU374
	.loc 1 268 45 is_stmt 0 view .LVU375
	uxth	r3, r7
	.loc 1 269 17 view .LVU376
	add	r2, r8, r3, lsl #1
	.loc 1 268 17 view .LVU377
	ldrb	r4, [r8, r3, lsl #1]	@ zero_extendqisi2
.LVL142:
	.loc 1 269 9 is_stmt 1 view .LVU378
	.loc 1 269 17 is_stmt 0 view .LVU379
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
.LVL143:
	.loc 1 272 9 is_stmt 1 view .LVU380
	.loc 1 272 12 is_stmt 0 view .LVU381
	cmp	r4, #255
	bne	.L146
	.loc 1 272 25 discriminator 1 view .LVU382
	cmp	r6, #255
	bne	.L158
.LBE13:
	.loc 1 301 5 is_stmt 1 view .LVU383
	ldr	r0, .L159
	bl	printUSART2
.LVL144:
	.loc 1 302 1 is_stmt 0 view .LVU384
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL145:
.L146:
	.cfi_restore_state
.LBB14:
	.loc 1 281 9 is_stmt 1 view .LVU385
	.loc 1 281 12 is_stmt 0 view .LVU386
	cmp	r4, #18
	itet	eq
	moveq	r9, #0
	.loc 1 292 13 view .LVU387
	movne	r9, r6
	.loc 1 281 46 view .LVU388
	moveq	r6, r9
.LVL146:
	.loc 1 284 9 is_stmt 1 view .LVU389
	.loc 1 285 9 view .LVU390
	.loc 1 285 16 view .LVU391
	.loc 1 281 46 is_stmt 0 view .LVU392
	movs	r5, #3
.LVL147:
.L151:
	.loc 1 286 13 is_stmt 1 view .LVU393
	mov	r0, r4
	movs	r2, #1
	add	r1, sp, #4
	bl	readI2C
.LVL148:
	.loc 1 287 13 view .LVU394
	.loc 1 288 13 view .LVU395
	.loc 1 287 16 is_stmt 0 view .LVU396
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	cmp	r3, r6
	.loc 1 288 13 view .LVU397
	mov	r0, #1
	.loc 1 287 16 view .LVU398
	beq	.L150
	.loc 1 288 13 view .LVU399
	bl	delay_ms
.LVL149:
	.loc 1 285 16 is_stmt 1 view .LVU400
	subs	r5, r5, #1
	bne	.L151
	.loc 1 291 16 is_stmt 0 view .LVU401
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	.loc 1 291 9 is_stmt 1 view .LVU402
	.loc 1 291 12 is_stmt 0 view .LVU403
	cmp	r6, r2
	beq	.L150
	.loc 1 294 13 is_stmt 1 view .LVU404
	ldr	r0, .L159+4
	mov	r3, r9
	mov	r1, r4
	bl	printUSART2
.LVL150:
.L153:
	.loc 1 298 9 view .LVU405
	movs	r0, #2
	bl	delay_ms
.LVL151:
.L148:
	.loc 1 298 9 is_stmt 0 view .LVU406
.LBE14:
	.loc 1 267 18 is_stmt 1 view .LVU407
	.loc 1 267 5 view .LVU408
	adds	r7, r7, #1
.LVL152:
	.loc 1 267 22 is_stmt 0 view .LVU409
	b	.L154
.LVL153:
.L158:
.LBB15:
	.loc 1 274 9 is_stmt 1 discriminator 1 view .LVU410
	.loc 1 276 13 discriminator 1 view .LVU411
	movs	r0, #100
	bl	delay_ms
.LVL154:
	.loc 1 277 13 discriminator 1 view .LVU412
	b	.L148
.L150:
	.loc 1 292 13 view .LVU413
	ldr	r0, .L159+8
	mov	r2, r9
	mov	r1, r4
	bl	printUSART2
.LVL155:
	b	.L153
.L160:
	.align	2
.L159:
	.word	.LC80
	.word	.LC79
	.word	.LC78
	.word	ov7670_qqvga_rgb565
.LBE15:
	.cfi_endproc
.LFE114:
	.size	verify_ov7670_regs, .-verify_ov7670_regs
	.section	.rodata.str1.4
	.align	2
.LC81:
	.ascii	"=== DCMI Debug Start ===\012\000"
	.align	2
.LC82:
	.ascii	"CR  = 0x%xb\012\000"
	.align	2
.LC83:
	.ascii	"CWSIZE = 0x%xb\012\000"
	.align	2
.LC84:
	.ascii	"CWSTRTR = 0x%xb\012\000"
	.align	2
.LC85:
	.ascii	"SR  = 0x%xb\012\000"
	.align	2
.LC86:
	.ascii	"MISR = 0x%xb\012\000"
	.align	2
.LC87:
	.ascii	"Capture enabled: CR = 0x%xb\012\000"
	.align	2
.LC88:
	.ascii	"MISR = 0x%xb, CR = 0x%xb\012\000"
	.align	2
.LC89:
	.ascii	"Pins: D0-D7: %d %d %d %d %d %d %d %d | PCLK: %d | H"
	.ascii	"SYNC: %d | VSYNC: %d\012\000"
	.align	2
.LC90:
	.ascii	"ERROR: Capture timeout!\012\000"
	.align	2
.LC91:
	.ascii	"After capture: MISR = 0x%xb, CR = 0x%xb\012\000"
	.align	2
.LC92:
	.ascii	"=== DCMI Debug End ===\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_CaptureFrame_Debug
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CaptureFrame_Debug, %function
DCMI_CaptureFrame_Debug:
.LFB115:
	.loc 1 310 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 312 5 view .LVU415
	.loc 1 310 1 is_stmt 0 view .LVU416
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 312 15 view .LVU417
	ldr	r5, .L171
	.loc 1 315 5 view .LVU418
	ldr	r0, .L171+4
	.loc 1 312 15 view .LVU419
	movs	r3, #31
	.loc 1 310 1 view .LVU420
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 312 15 view .LVU421
	str	r3, [r5, #20]
	.loc 1 315 5 is_stmt 1 view .LVU422
	bl	printUSART2
.LVL156:
	.loc 1 316 5 view .LVU423
	.loc 1 316 38 is_stmt 0 view .LVU424
	ldr	r1, [r5]
	.loc 1 316 5 view .LVU425
	ldr	r0, .L171+8
	bl	printUSART2
.LVL157:
	.loc 1 317 5 is_stmt 1 view .LVU426
	.loc 1 317 41 is_stmt 0 view .LVU427
	ldr	r1, [r5, #36]
	.loc 1 317 5 view .LVU428
	ldr	r0, .L171+12
	bl	printUSART2
.LVL158:
	.loc 1 318 5 is_stmt 1 view .LVU429
	.loc 1 318 42 is_stmt 0 view .LVU430
	ldr	r1, [r5, #32]
	.loc 1 318 5 view .LVU431
	ldr	r0, .L171+16
	bl	printUSART2
.LVL159:
	.loc 1 319 5 is_stmt 1 view .LVU432
	.loc 1 319 38 is_stmt 0 view .LVU433
	ldr	r1, [r5, #4]
	.loc 1 319 5 view .LVU434
	ldr	r0, .L171+20
	bl	printUSART2
.LVL160:
	.loc 1 320 5 is_stmt 1 view .LVU435
	.loc 1 320 39 is_stmt 0 view .LVU436
	ldr	r1, [r5, #16]
	.loc 1 320 5 view .LVU437
	ldr	r0, .L171+24
	bl	printUSART2
.LVL161:
	.loc 1 323 5 is_stmt 1 view .LVU438
	.loc 1 323 9 is_stmt 0 view .LVU439
	ldr	r3, [r5]
	.loc 1 324 5 view .LVU440
	ldr	r0, .L171+28
	.loc 1 323 14 view .LVU441
	orr	r3, r3, #1
	str	r3, [r5]
	.loc 1 324 5 is_stmt 1 view .LVU442
	.loc 1 324 54 is_stmt 0 view .LVU443
	ldr	r1, [r5]
	.loc 1 324 5 view .LVU444
	bl	printUSART2
.LVL162:
	.loc 1 327 5 is_stmt 1 view .LVU445
	.loc 1 328 5 view .LVU446
	.loc 1 330 5 view .LVU447
	.loc 1 330 48 view .LVU448
	.loc 1 330 18 is_stmt 0 view .LVU449
	ldr	r3, [r5, #16]
	.loc 1 330 48 view .LVU450
	ands	r3, r3, #1
	bne	.L166
	.loc 1 330 58 view .LVU451
	ldr	r4, .L171+32
	.loc 1 341 70 view .LVU452
	ldr	r6, .L171+36
	b	.L165
.LVL163:
.L163:
	.loc 1 345 9 is_stmt 1 view .LVU453
.LBB16:
.LBI16:
	.file 2 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h"
	.loc 2 269 57 view .LVU454
.LBB17:
	.loc 2 271 3 view .LVU455
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 is_stmt 0 view .LVU456
	.thumb
	.syntax unified
.LBE17:
.LBE16:
	.loc 1 330 48 is_stmt 1 view .LVU457
	.loc 1 330 18 is_stmt 0 view .LVU458
	ldr	r2, [r5, #16]
	.loc 1 330 48 view .LVU459
	lsls	r2, r2, #31
	bmi	.L164
.L169:
	.loc 1 330 48 discriminator 1 view .LVU460
	subs	r4, r4, #1
.LVL164:
	.loc 1 330 48 discriminator 1 view .LVU461
	bcc	.L166
.LVL165:
.L165:
	.loc 1 332 9 is_stmt 1 view .LVU462
	.loc 1 333 12 is_stmt 0 view .LVU463
	ldr	r2, .L171+40
	.loc 1 332 16 view .LVU464
	adds	r3, r3, #1
.LVL166:
	.loc 1 333 9 is_stmt 1 view .LVU465
	.loc 1 333 12 is_stmt 0 view .LVU466
	cmp	r3, r2
	bne	.L163
	.loc 1 335 13 is_stmt 1 view .LVU467
.LVL167:
	.loc 1 337 13 view .LVU468
	.loc 1 337 59 is_stmt 0 view .LVU469
	ldr	r1, [r5, #16]
	.loc 1 337 13 view .LVU470
	ldr	r0, .L171+44
	.loc 1 337 71 view .LVU471
	ldr	r2, [r5]
	.loc 1 337 13 view .LVU472
	bl	printUSART2
.LVL168:
	.loc 1 340 13 is_stmt 1 view .LVU473
	.loc 1 341 31 is_stmt 0 view .LVU474
	ldr	lr, .L171+68
	ldr	r1, [lr, #16]
	.loc 1 341 50 view .LVU475
	ldr	r2, [lr, #16]
	.loc 1 341 70 view .LVU476
	ldr	r3, [r6, #16]
	.loc 1 341 89 view .LVU477
	ldr	r7, [r6, #16]
	.loc 1 342 31 view .LVU478
	ldr	ip, [r6, #16]
	.loc 1 342 50 view .LVU479
	ldr	r0, [r6, #16]
	.loc 1 340 13 view .LVU480
	ubfx	r0, r0, #3, #1
	str	r0, [sp, #36]
	.loc 1 342 69 view .LVU481
	ldr	r0, .L171+48
	ldr	r8, [r0, #16]
	.loc 1 342 88 view .LVU482
	ldr	r9, [r0, #16]
	.loc 1 343 31 view .LVU483
	ldr	r10, [lr, #16]
	.loc 1 343 50 view .LVU484
	ldr	fp, [r6, #16]
	.loc 1 343 69 view .LVU485
	ldr	lr, [r6, #16]
	.loc 1 340 13 view .LVU486
	ldr	r0, [sp, #36]
	str	r0, [sp, #8]
	ubfx	ip, ip, #2, #1
	ubfx	lr, lr, #5, #1
	ubfx	r7, r7, #1, #1
	ubfx	r8, r8, #6, #1
	ubfx	r9, r9, #7, #1
	ubfx	r10, r10, #6, #1
	ubfx	fp, fp, #4, #1
	strd	r10, fp, [sp, #20]
	strd	r8, r9, [sp, #12]
	strd	r7, ip, [sp]
	ldr	r0, .L171+52
	str	lr, [sp, #28]
	and	r3, r3, #1
	ubfx	r2, r2, #10, #1
	ubfx	r1, r1, #9, #1
	bl	printUSART2
.LVL169:
	.loc 1 335 21 view .LVU487
	movs	r3, #0
.LVL170:
	.loc 1 345 9 is_stmt 1 view .LVU488
.LBB19:
	.loc 2 269 57 view .LVU489
.LBB18:
	.loc 2 271 3 view .LVU490
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 is_stmt 0 view .LVU491
	.thumb
	.syntax unified
.LBE18:
.LBE19:
	.loc 1 330 48 is_stmt 1 view .LVU492
	.loc 1 330 18 is_stmt 0 view .LVU493
	ldr	r2, [r5, #16]
	.loc 1 330 48 view .LVU494
	lsls	r2, r2, #31
	bpl	.L169
.L164:
	.loc 1 348 5 is_stmt 1 view .LVU495
	.loc 1 348 7 is_stmt 0 view .LVU496
	cbz	r4, .L170
.LVL171:
.L166:
	.loc 1 352 5 is_stmt 1 view .LVU497
	.loc 1 352 66 is_stmt 0 view .LVU498
	ldr	r3, .L171
	.loc 1 352 5 view .LVU499
	ldr	r0, .L171+56
	.loc 1 352 66 view .LVU500
	ldr	r1, [r3, #16]
	.loc 1 352 78 view .LVU501
	ldr	r2, [r3]
	.loc 1 352 5 view .LVU502
	bl	printUSART2
.LVL172:
	.loc 1 353 5 is_stmt 1 view .LVU503
	ldr	r0, .L171+60
	.loc 1 354 1 is_stmt 0 view .LVU504
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 353 5 view .LVU505
	b	printUSART2
.LVL173:
.L170:
	.cfi_restore_state
	.loc 1 349 9 is_stmt 1 view .LVU506
	ldr	r0, .L171+64
	bl	printUSART2
.LVL174:
	.loc 1 349 9 is_stmt 0 view .LVU507
	b	.L166
.L172:
	.align	2
.L171:
	.word	1342504960
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	999999
	.word	1073873920
	.word	100001
	.word	.LC88
	.word	1073874944
	.word	.LC89
	.word	.LC91
	.word	.LC92
	.word	.LC90
	.word	1073872896
	.cfi_endproc
.LFE115:
	.size	DCMI_CaptureFrame_Debug, .-DCMI_CaptureFrame_Debug
	.section	.rodata.str1.4
	.align	2
.LC93:
	.ascii	"Pixel %d = 0x%xb (empty)\012\000"
	.align	2
.LC94:
	.ascii	"Pixel %d = 0x%xb\012\000"
	.align	2
.LC95:
	.ascii	"Frame verification done: %d empty pixels out of %d\012"
	.ascii	"\000"
	.text
	.align	1
	.p2align 2,,3
	.global	verify_full_frame_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	verify_full_frame_buffer, %function
verify_full_frame_buffer:
.LVL175:
.LFB116:
	.loc 1 359 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 360 5 view .LVU509
	.loc 1 361 5 view .LVU510
	.loc 1 363 5 view .LVU511
	.loc 1 363 18 view .LVU512
	.loc 1 359 1 is_stmt 0 view .LVU513
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 363 18 view .LVU514
	mov	r6, r1
	cbz	r1, .L178
	.loc 1 361 14 view .LVU515
	movs	r7, #0
	.loc 1 373 13 view .LVU516
	ldr	r9, .L182+4
	.loc 1 369 13 view .LVU517
	ldr	r8, .L182+8
	subs	r5, r0, #2
	.loc 1 363 11 view .LVU518
	mov	r4, r7
	b	.L177
.LVL176:
.L181:
	.loc 1 363 27 view .LVU519
	adds	r4, r4, #1
	.loc 1 369 13 view .LVU520
	bl	printUSART2
.LVL177:
	.loc 1 363 18 view .LVU521
	cmp	r6, r4
	.loc 1 368 24 view .LVU522
	add	r7, r7, #1
.LVL178:
	.loc 1 369 13 is_stmt 1 view .LVU523
	.loc 1 363 27 view .LVU524
	.loc 1 363 18 view .LVU525
	beq	.L174
.LVL179:
.L177:
	.loc 1 366 9 view .LVU526
	.loc 1 368 13 view .LVU527
	.loc 1 373 13 view .LVU528
	.loc 1 366 15 is_stmt 0 view .LVU529
	ldrh	r2, [r5, #2]!
	.loc 1 369 13 view .LVU530
	mov	r1, r4
	mov	r0, r8
	.loc 1 366 11 view .LVU531
	cmp	r2, #0
	beq	.L181
	.loc 1 373 13 view .LVU532
	mov	r0, r9
	.loc 1 363 27 view .LVU533
	adds	r4, r4, #1
.LVL180:
	.loc 1 373 13 view .LVU534
	bl	printUSART2
.LVL181:
	.loc 1 363 27 is_stmt 1 view .LVU535
	.loc 1 363 18 view .LVU536
	cmp	r6, r4
	bne	.L177
.L174:
	.loc 1 377 5 view .LVU537
	mov	r2, r6
	mov	r1, r7
	ldr	r0, .L182
	.loc 1 378 1 is_stmt 0 view .LVU538
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL182:
	.loc 1 377 5 view .LVU539
	b	printUSART2
.LVL183:
.L178:
	.cfi_restore_state
	.loc 1 361 14 view .LVU540
	mov	r7, r1
	.loc 1 377 5 is_stmt 1 view .LVU541
	mov	r2, r6
	mov	r1, r7
.LVL184:
	.loc 1 377 5 is_stmt 0 view .LVU542
	ldr	r0, .L182
.LVL185:
	.loc 1 378 1 view .LVU543
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL186:
	.loc 1 377 5 view .LVU544
	b	printUSART2
.LVL187:
.L183:
	.loc 1 377 5 view .LVU545
	.align	2
.L182:
	.word	.LC95
	.word	.LC94
	.word	.LC93
	.cfi_endproc
.LFE116:
	.size	verify_full_frame_buffer, .-verify_full_frame_buffer
	.section	.rodata.str1.4
	.align	2
.LC96:
	.ascii	"DCMI_SR: 0x%xb, VSYNC=%d, HSYNC=%d, FNE=%d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_DebugStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_DebugStatus, %function
DCMI_DebugStatus:
.LFB117:
	.loc 1 383 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 384 5 view .LVU547
	.loc 1 383 1 is_stmt 0 view .LVU548
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 384 14 view .LVU549
	ldr	r3, .L186
	.loc 1 385 5 view .LVU550
	ldr	r0, .L186+4
	.loc 1 384 14 view .LVU551
	ldr	r1, [r3, #4]
.LVL188:
	.loc 1 385 5 is_stmt 1 view .LVU552
	.loc 1 383 1 is_stmt 0 view .LVU553
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 385 5 view .LVU554
	ubfx	r3, r1, #2, #1
	str	r3, [sp]
	ubfx	r2, r1, #1, #1
	and	r3, r1, #1
	bl	printUSART2
.LVL189:
	.loc 1 390 1 view .LVU555
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L187:
	.align	2
.L186:
	.word	1342504960
	.word	.LC96
	.cfi_endproc
.LFE117:
	.size	DCMI_DebugStatus, .-DCMI_DebugStatus
	.section	.rodata.str1.4
	.align	2
.LC97:
	.ascii	"[OK]\000"
	.align	2
.LC98:
	.ascii	"[MISMATCH]\000"
	.align	2
.LC101:
	.ascii	"\012--- OV7670 Register Check ---\012\000"
	.align	2
.LC102:
	.ascii	"Reg 0x%xb -> Read: 0x%xb | Expected: 0x%xb %s\012\000"
	.align	2
.LC103:
	.ascii	"--- End of check ---\012\012\000"
	.align	2
.LC99:
	.ascii	"\022\021\014rpqs\242@\025\023\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CheckRegisters
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CheckRegisters, %function
OV7670_CheckRegisters:
.LFB118:
	.loc 1 398 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 399 5 view .LVU557
	.loc 1 398 1 is_stmt 0 view .LVU558
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 399 13 view .LVU559
	ldr	r3, .L194
	.loc 1 416 13 view .LVU560
	ldr	r5, .L194+4
.LBB20:
	.loc 1 455 9 view .LVU561
	ldr	r10, .L194+16
	ldr	r9, .L194+20
	ldr	r8, .L194+24
.LBE20:
	.loc 1 399 13 view .LVU562
	ldm	r3, {r0, r1, r2}
	.loc 1 398 1 view .LVU563
	sub	sp, sp, #40
	.cfi_def_cfa_offset 72
	.loc 1 399 13 view .LVU564
	add	r4, sp, #16
	stmia	r4!, {r0, r1}
	strh	r2, [r4], #2	@ movhi
	lsrs	r1, r2, #16
	strb	r1, [r4]
	.loc 1 414 5 is_stmt 1 view .LVU565
	.loc 1 416 5 view .LVU566
	.loc 1 416 13 is_stmt 0 view .LVU567
	ldm	r5, {r0, r1, r2}
	add	r3, sp, #28
	stmia	r3!, {r0, r1}
	strh	r2, [r3], #2	@ movhi
	lsrs	r1, r2, #16
	.loc 1 449 5 view .LVU568
	ldr	r0, .L194+8
	.loc 1 416 13 view .LVU569
	strb	r1, [r3]
	.loc 1 449 5 is_stmt 1 view .LVU570
	bl	printUSART2
.LVL190:
	.loc 1 451 5 view .LVU571
.LBB21:
	.loc 1 451 10 view .LVU572
	.loc 1 451 27 view .LVU573
	add	r4, sp, #16
	add	r6, sp, #28
	add	r7, sp, #27
.LVL191:
.L190:
	.loc 1 453 9 view .LVU574
	ldrb	r5, [r4], #1	@ zero_extendqisi2
.LVL192:
	.loc 1 453 9 is_stmt 0 view .LVU575
	movs	r2, #1
	add	r1, sp, #15
	mov	r0, r5
	bl	readI2C
.LVL193:
	.loc 1 455 9 is_stmt 1 view .LVU576
	ldrb	r1, [sp, #15]	@ zero_extendqisi2
	.loc 1 458 21 is_stmt 0 view .LVU577
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	.loc 1 455 9 view .LVU578
	cmp	r1, r3
	ite	ne
	movne	r0, r10
	moveq	r0, r9
	mov	r2, r1
	str	r0, [sp]
	mov	r1, r5
	mov	r0, r8
	bl	printUSART2
.LVL194:
	.loc 1 451 48 is_stmt 1 view .LVU579
	.loc 1 451 27 view .LVU580
	cmp	r4, r7
	bne	.L190
.LBE21:
	.loc 1 463 5 view .LVU581
	ldr	r0, .L194+12
	bl	printUSART2
.LVL195:
	.loc 1 464 1 is_stmt 0 view .LVU582
	add	sp, sp, #40
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL196:
.L195:
	.loc 1 464 1 view .LVU583
	.align	2
.L194:
	.word	.LC99
	.word	.LANCHOR0+8
	.word	.LC101
	.word	.LC103
	.word	.LC98
	.word	.LC97
	.word	.LC102
	.cfi_endproc
.LFE118:
	.size	OV7670_CheckRegisters, .-OV7670_CheckRegisters
	.section	.rodata.str1.4
	.align	2
.LC104:
	.ascii	"---- OV7670 pin monitoring %d ms ----\012\000"
	.align	2
.LC105:
	.ascii	"PCLK  : seen HIGH=%d, LOW=%d\012\000"
	.align	2
.LC106:
	.ascii	"HSYNC : seen HIGH=%d, LOW=%d\012\000"
	.align	2
.LC107:
	.ascii	"VSYNC : seen HIGH=%d, LOW=%d\012\000"
	.align	2
.LC108:
	.ascii	"D%d    : seen HIGH=%d, LOW=%d\012\000"
	.align	2
.LC109:
	.ascii	"--------------------------------------\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CheckPins_Interval_V2
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CheckPins_Interval_V2, %function
OV7670_CheckPins_Interval_V2:
.LVL197:
.LFB119:
	.loc 1 469 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 470 5 view .LVU585
	.loc 1 469 1 is_stmt 0 view .LVU586
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 469 1 view .LVU587
	str	r0, [sp]
	.loc 1 470 22 view .LVU588
	bl	getSYSTIMER_TIM7
.LVL198:
	.loc 1 474 13 view .LVU589
	movs	r3, #0
	strd	r0, r3, [sp, #4]
	.loc 1 474 35 view .LVU590
	strd	r3, r3, [sp, #12]
	.loc 1 473 29 view .LVU591
	mov	r9, r3
	.loc 1 474 35 view .LVU592
	str	r3, [sp, #20]
	.loc 1 476 5 is_stmt 1 view .LVU593
	.loc 1 473 13 is_stmt 0 view .LVU594
	mov	r6, r3
	.loc 1 472 29 view .LVU595
	mov	r5, r3
	.loc 1 471 28 view .LVU596
	mov	r8, r3
	.loc 1 471 13 view .LVU597
	mov	r7, r3
	mov	r10, r3
.L197:
.LVL199:
	.loc 1 476 41 is_stmt 1 view .LVU598
	.loc 1 476 13 is_stmt 0 view .LVU599
	bl	getSYSTIMER_TIM7
.LVL200:
	.loc 1 476 32 view .LVU600
	ldr	r3, [sp, #4]
	subs	r0, r0, r3
	.loc 1 476 41 view .LVU601
	ldr	r3, [sp]
	cmp	r0, r3
	bcs	.L212
.LBB22:
	.loc 1 478 9 is_stmt 1 view .LVU602
	.loc 1 478 18 is_stmt 0 view .LVU603
	ldr	r3, .L214
	.loc 1 480 18 view .LVU604
	ldr	r2, .L214+4
	.loc 1 478 18 view .LVU605
	ldr	r1, [r3, #16]
.LVL201:
	.loc 1 479 9 is_stmt 1 view .LVU606
	.loc 1 479 18 is_stmt 0 view .LVU607
	add	r3, r3, #1024
	ldr	r3, [r3, #16]
.LVL202:
	.loc 1 480 9 is_stmt 1 view .LVU608
	.loc 1 480 18 is_stmt 0 view .LVU609
	ldr	r4, [r2, #16]
.LVL203:
	.loc 1 481 9 is_stmt 1 view .LVU610
	.loc 1 487 18 is_stmt 0 view .LVU611
	and	ip, r3, #128
	.loc 1 481 18 view .LVU612
	ldr	r3, .L214+8
.LVL204:
	.loc 1 481 18 view .LVU613
	ldr	r3, [r3, #16]
.LVL205:
	.loc 1 482 9 is_stmt 1 view .LVU614
	.loc 1 496 22 is_stmt 0 view .LVU615
	lsr	lr, r3, #3
	.loc 1 482 18 view .LVU616
	ldr	r3, .L214+12
.LVL206:
	.loc 1 482 18 view .LVU617
	ldr	r0, [r3, #16]
.LVL207:
	.loc 1 485 9 is_stmt 1 view .LVU618
	.loc 1 491 28 is_stmt 0 view .LVU619
	movs	r2, #0
	.loc 1 491 22 view .LVU620
	lsrs	r3, r1, #9
	.loc 1 491 28 view .LVU621
	bfi	r2, r3, #0, #8
	.loc 1 495 22 view .LVU622
	lsr	fp, r0, #4
	.loc 1 491 28 view .LVU623
	movs	r3, #0
	bfi	r3, fp, #0, #8
	bfi	r3, lr, #8, #8
	.loc 1 492 22 view .LVU624
	lsr	lr, r1, #10
	.loc 1 491 28 view .LVU625
	bfi	r2, lr, #8, #8
	.loc 1 485 18 view .LVU626
	and	lr, r1, #64
	.loc 1 485 59 view .LVU627
	cmp	lr, #0
	.loc 1 486 18 view .LVU628
	and	r1, r1, #16
.LVL208:
	.loc 1 485 59 view .LVU629
	ite	eq
	moveq	r8, #1
.LVL209:
	.loc 1 485 59 view .LVU630
	movne	r7, #1
.LVL210:
	.loc 1 486 9 is_stmt 1 view .LVU631
	.loc 1 486 61 is_stmt 0 view .LVU632
	cmp	r1, #0
	.loc 1 493 22 view .LVU633
	lsr	r1, r4, #8
	.loc 1 491 28 view .LVU634
	bfi	r2, r1, #16, #8
	.loc 1 494 22 view .LVU635
	lsr	r4, r4, #9
.LVL211:
	.loc 1 491 28 view .LVU636
	bfi	r2, r4, #24, #8
	and	r2, r2, #16843009
	.loc 1 491 14 view .LVU637
	str	r2, [sp, #24]
	.loc 1 497 22 view .LVU638
	lsr	r2, r0, #5
	.loc 1 491 28 view .LVU639
	bfi	r3, r2, #16, #8
	.loc 1 498 22 view .LVU640
	lsr	r0, r0, #6
.LVL212:
	.loc 1 491 28 view .LVU641
	bfi	r3, r0, #24, #8
	and	r3, r3, #16843009
	.loc 1 486 61 view .LVU642
	ite	eq
	moveq	r9, #1
.LVL213:
	.loc 1 486 61 view .LVU643
	movne	r6, #1
.LVL214:
	.loc 1 487 9 is_stmt 1 view .LVU644
	.loc 1 487 41 is_stmt 0 view .LVU645
	cmp	ip, #0
	.loc 1 491 14 view .LVU646
	str	r3, [sp, #28]
	.loc 1 487 41 view .LVU647
	ite	ne
	movne	r10, #1
.LVL215:
	.loc 1 487 41 view .LVU648
	moveq	r5, #1
.LVL216:
	.loc 1 490 9 is_stmt 1 view .LVU649
	.loc 1 491 9 view .LVU650
	.loc 1 492 9 view .LVU651
	.loc 1 493 9 view .LVU652
	.loc 1 494 9 view .LVU653
	.loc 1 495 9 view .LVU654
	.loc 1 496 9 view .LVU655
	.loc 1 497 9 view .LVU656
	.loc 1 498 9 view .LVU657
	.loc 1 500 9 view .LVU658
.LBB23:
	.loc 1 500 14 view .LVU659
	.loc 1 500 27 view .LVU660
	add	r3, sp, #23
	add	r1, sp, #8
	add	r2, sp, #16
	add	ip, sp, #31
	.loc 1 502 32 is_stmt 0 view .LVU661
	movs	r4, #1
	b	.L203
.LVL217:
.L213:
	.loc 1 501 38 discriminator 1 view .LVU662
	strb	r4, [r1]
.L202:
	.loc 1 500 33 is_stmt 1 discriminator 2 view .LVU663
.LVL218:
	.loc 1 500 27 discriminator 2 view .LVU664
	cmp	ip, r3
	add	r1, r1, #1
	add	r2, r2, #1
	beq	.L197
.LVL219:
.L203:
	.loc 1 501 13 view .LVU665
	.loc 1 501 23 view .LVU666
	.loc 1 502 18 view .LVU667
	.loc 1 501 16 is_stmt 0 view .LVU668
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
.LVL220:
	.loc 1 501 16 view .LVU669
	cmp	r0, #0
	bne	.L213
	.loc 1 502 32 view .LVU670
	strb	r4, [r2]
	b	.L202
.LVL221:
.L212:
	.loc 1 502 32 view .LVU671
.LBE23:
.LBE22:
	.loc 1 507 5 is_stmt 1 view .LVU672
	mov	r1, r3
	ldr	r0, .L214+16
	bl	printUSART2
.LVL222:
	.loc 1 508 5 view .LVU673
	mov	r1, r7
	ldr	r0, .L214+20
.LBB24:
	.loc 1 513 9 is_stmt 0 view .LVU674
	ldr	r7, .L214+24
.LVL223:
	.loc 1 513 9 view .LVU675
.LBE24:
	.loc 1 508 5 view .LVU676
	mov	r2, r8
	bl	printUSART2
.LVL224:
	.loc 1 509 5 is_stmt 1 view .LVU677
	mov	r1, r6
	ldr	r0, .L214+28
	mov	r2, r9
	bl	printUSART2
.LVL225:
	.loc 1 510 5 view .LVU678
	mov	r2, r5
	ldr	r0, .L214+32
	mov	r1, r10
	bl	printUSART2
.LVL226:
	.loc 1 512 5 view .LVU679
.LBB25:
	.loc 1 512 10 view .LVU680
	.loc 1 512 23 view .LVU681
	add	r6, sp, #7
.LVL227:
	.loc 1 512 23 is_stmt 0 view .LVU682
	add	r5, sp, #15
.LVL228:
	.loc 1 512 14 view .LVU683
	movs	r4, #0
.LVL229:
.L205:
	.loc 1 513 9 is_stmt 1 discriminator 3 view .LVU684
	mov	r1, r4
	ldrb	r3, [r5, #1]!	@ zero_extendqisi2
	ldrb	r2, [r6, #1]!	@ zero_extendqisi2
	mov	r0, r7
	.loc 1 512 29 is_stmt 0 discriminator 3 view .LVU685
	adds	r4, r4, #1
.LVL230:
	.loc 1 513 9 discriminator 3 view .LVU686
	bl	printUSART2
.LVL231:
	.loc 1 512 29 is_stmt 1 discriminator 3 view .LVU687
	.loc 1 512 23 discriminator 3 view .LVU688
	cmp	r4, #8
	bne	.L205
.LBE25:
	.loc 1 515 5 view .LVU689
	ldr	r0, .L214+36
	.loc 1 516 1 is_stmt 0 view .LVU690
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
.LVL232:
	.loc 1 516 1 view .LVU691
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL233:
	.loc 1 515 5 view .LVU692
	b	printUSART2
.LVL234:
.L215:
	.align	2
.L214:
	.word	1073872896
	.word	1073874944
	.word	1073875968
	.word	1073876992
	.word	.LC104
	.word	.LC105
	.word	.LC108
	.word	.LC106
	.word	.LC107
	.word	.LC109
	.cfi_endproc
.LFE119:
	.size	OV7670_CheckPins_Interval_V2, .-OV7670_CheckPins_Interval_V2
	.section	.rodata.str1.4
	.align	2
.LC110:
	.ascii	"Pixel %d: 0x%xb\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	printFrameBuffer
	.syntax unified
	.thumb
	.thumb_func
	.type	printFrameBuffer, %function
printFrameBuffer:
.LVL235:
.LFB120:
	.loc 1 521 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 522 5 view .LVU694
.LBB26:
	.loc 1 522 10 view .LVU695
	.loc 1 522 28 view .LVU696
	cbz	r0, .L224
.LBE26:
	.loc 1 521 1 is_stmt 0 view .LVU697
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	ldr	r7, .L227
.LBB27:
	.loc 1 524 9 view .LVU698
	ldr	r6, .L227+4
	mov	r5, r0
	.loc 1 522 19 view .LVU699
	movs	r4, #0
.LVL236:
.L218:
	.loc 1 524 9 is_stmt 1 discriminator 3 view .LVU700
	.loc 1 524 57 is_stmt 0 discriminator 3 view .LVU701
	ldrh	r2, [r7, r4, lsl #1]
	.loc 1 524 9 discriminator 3 view .LVU702
	mov	r1, r4
	uxth	r2, r2
	mov	r0, r6
	.loc 1 522 34 discriminator 3 view .LVU703
	adds	r4, r4, #1
.LVL237:
	.loc 1 524 9 discriminator 3 view .LVU704
	bl	printUSART2
.LVL238:
	.loc 1 522 34 is_stmt 1 discriminator 3 view .LVU705
	.loc 1 522 28 discriminator 3 view .LVU706
	cmp	r5, r4
	bne	.L218
.LBE27:
	.loc 1 526 1 is_stmt 0 view .LVU707
	pop	{r3, r4, r5, r6, r7, pc}
.LVL239:
.L224:
	.cfi_def_cfa_offset 0
	.cfi_restore 3
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.loc 1 526 1 view .LVU708
	bx	lr
.L228:
	.align	2
.L227:
	.word	frame_buffer
	.word	.LC110
	.cfi_endproc
.LFE120:
	.size	printFrameBuffer, .-printFrameBuffer
	.section	.rodata.str1.4
	.align	2
.LC111:
	.ascii	"=== DEBUG FRAME BUFFER ===\012\000"
	.align	2
.LC112:
	.ascii	"Prvih 10 pixela:\012\000"
	.align	2
.LC113:
	.ascii	"Zadnjih 10 pixela:\012\000"
	.align	2
.LC114:
	.ascii	"Pins: D0=%d D1=%d PCLK=%d HSYNC=%d VSYNC=%d\012\000"
	.align	2
.LC115:
	.ascii	"==========================\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	debugFrameBuffer
	.syntax unified
	.thumb
	.thumb_func
	.type	debugFrameBuffer, %function
debugFrameBuffer:
.LFB121:
	.loc 1 531 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 532 5 view .LVU710
	.loc 1 531 1 is_stmt 0 view .LVU711
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 532 5 view .LVU712
	ldr	r0, .L235
	ldr	r5, .L235+4
.LBB28:
	.loc 1 537 9 view .LVU713
	ldr	r6, .L235+8
.LBE28:
	.loc 1 531 1 view .LVU714
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 532 5 view .LVU715
	bl	printUSART2
.LVL240:
	.loc 1 535 5 is_stmt 1 view .LVU716
	ldr	r0, .L235+12
	bl	printUSART2
.LVL241:
	.loc 1 536 5 view .LVU717
.LBB29:
	.loc 1 536 10 view .LVU718
	.loc 1 536 28 view .LVU719
	.loc 1 536 19 is_stmt 0 view .LVU720
	movs	r4, #0
.LVL242:
.L230:
	.loc 1 537 9 is_stmt 1 discriminator 3 view .LVU721
	.loc 1 537 57 is_stmt 0 discriminator 3 view .LVU722
	ldrh	r2, [r5, r4, lsl #1]
	.loc 1 537 9 discriminator 3 view .LVU723
	mov	r1, r4
	uxth	r2, r2
	mov	r0, r6
	.loc 1 536 35 discriminator 3 view .LVU724
	adds	r4, r4, #1
.LVL243:
	.loc 1 537 9 discriminator 3 view .LVU725
	bl	printUSART2
.LVL244:
	.loc 1 536 35 is_stmt 1 discriminator 3 view .LVU726
	.loc 1 536 28 discriminator 3 view .LVU727
	cmp	r4, #10
	bne	.L230
.LBE29:
	.loc 1 540 5 view .LVU728
	ldr	r0, .L235+16
.LBB30:
	.loc 1 542 9 is_stmt 0 view .LVU729
	ldr	r6, .L235+8
.LBE30:
	.loc 1 540 5 view .LVU730
	bl	printUSART2
.LVL245:
	.loc 1 541 5 is_stmt 1 view .LVU731
.LBB31:
	.loc 1 541 10 view .LVU732
	.loc 1 541 45 view .LVU733
	.loc 1 541 19 is_stmt 0 view .LVU734
	movw	r4, #9590
.LVL246:
.L231:
	.loc 1 542 9 is_stmt 1 discriminator 3 view .LVU735
	.loc 1 542 57 is_stmt 0 discriminator 3 view .LVU736
	ldrh	r2, [r5, r4, lsl #1]
	.loc 1 542 9 discriminator 3 view .LVU737
	mov	r1, r4
	uxth	r2, r2
	mov	r0, r6
	.loc 1 541 61 discriminator 3 view .LVU738
	adds	r4, r4, #1
.LVL247:
	.loc 1 542 9 discriminator 3 view .LVU739
	bl	printUSART2
.LVL248:
	.loc 1 541 61 is_stmt 1 discriminator 3 view .LVU740
	.loc 1 541 45 discriminator 3 view .LVU741
	cmp	r4, #9600
	bne	.L231
.LBE31:
	.loc 1 545 5 view .LVU742
	.loc 1 545 24 is_stmt 0 view .LVU743
	ldr	r0, .L235+20
	.loc 1 549 27 view .LVU744
	ldr	r4, .L235+24
.LVL249:
	.loc 1 545 24 view .LVU745
	ldr	r1, [r0, #16]
.LVL250:
	.loc 1 546 5 is_stmt 1 view .LVU746
	.loc 1 546 24 is_stmt 0 view .LVU747
	ldr	r2, [r0, #16]
.LVL251:
	.loc 1 547 5 is_stmt 1 view .LVU748
	.loc 1 547 26 is_stmt 0 view .LVU749
	ldr	r3, [r0, #16]
.LVL252:
	.loc 1 548 5 is_stmt 1 view .LVU750
	.loc 1 548 27 is_stmt 0 view .LVU751
	ldr	r0, [r0, #16]
.LVL253:
	.loc 1 549 5 is_stmt 1 view .LVU752
	.loc 1 549 27 is_stmt 0 view .LVU753
	ldr	r4, [r4, #16]
.LVL254:
	.loc 1 551 5 is_stmt 1 view .LVU754
	.loc 1 548 49 is_stmt 0 view .LVU755
	ubfx	r0, r0, #4, #1
.LVL255:
	.loc 1 549 49 view .LVU756
	ubfx	r4, r4, #7, #1
.LVL256:
	.loc 1 551 5 view .LVU757
	str	r0, [sp]
	ubfx	r3, r3, #6, #1
.LVL257:
	.loc 1 551 5 view .LVU758
	ldr	r0, .L235+28
	str	r4, [sp, #4]
	ubfx	r2, r2, #10, #1
.LVL258:
	.loc 1 551 5 view .LVU759
	ubfx	r1, r1, #9, #1
.LVL259:
	.loc 1 551 5 view .LVU760
	bl	printUSART2
.LVL260:
	.loc 1 553 5 is_stmt 1 view .LVU761
	ldr	r0, .L235+32
	.loc 1 554 1 is_stmt 0 view .LVU762
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 553 5 view .LVU763
	b	printUSART2
.LVL261:
.L236:
	.align	2
.L235:
	.word	.LC111
	.word	frame_buffer
	.word	.LC110
	.word	.LC112
	.word	.LC113
	.word	1073872896
	.word	1073873920
	.word	.LC114
	.word	.LC115
	.cfi_endproc
.LFE121:
	.size	debugFrameBuffer, .-debugFrameBuffer
	.section	.rodata.str1.4
	.align	2
.LC116:
	.ascii	"frame_buffer[%d] = 0x%xb\012\000"
	.align	2
.LC117:
	.ascii	"Ukupno non-zero elemenata = %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	printNonZeroPixels
	.syntax unified
	.thumb
	.thumb_func
	.type	printNonZeroPixels, %function
printNonZeroPixels:
.LFB122:
	.loc 1 559 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 560 5 view .LVU765
.LVL262:
	.loc 1 561 5 view .LVU766
.LBB32:
	.loc 1 561 9 view .LVU767
	.loc 1 561 24 view .LVU768
.LBE32:
	.loc 1 559 1 is_stmt 0 view .LVU769
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB33:
	.loc 1 561 18 view .LVU770
	movs	r4, #0
	ldr	r5, .L246
	.loc 1 563 13 view .LVU771
	ldr	r7, .L246+4
.LBE33:
	.loc 1 560 9 view .LVU772
	mov	r6, r4
	b	.L239
.LVL263:
.L238:
.LBB34:
	.loc 1 561 39 is_stmt 1 discriminator 2 view .LVU773
	adds	r4, r4, #1
.LVL264:
	.loc 1 561 24 discriminator 2 view .LVU774
	cmp	r4, #9600
	beq	.L245
.LVL265:
.L239:
	.loc 1 562 9 view .LVU775
	.loc 1 562 24 is_stmt 0 view .LVU776
	ldrh	r3, [r5, r4, lsl #1]
	uxth	r3, r3
	.loc 1 562 11 view .LVU777
	cmp	r3, #0
	beq	.L238
	.loc 1 563 13 is_stmt 1 view .LVU778
	.loc 1 563 70 is_stmt 0 view .LVU779
	ldrh	r2, [r5, r4, lsl #1]
	.loc 1 563 13 view .LVU780
	mov	r1, r4
	uxth	r2, r2
	mov	r0, r7
	.loc 1 561 39 view .LVU781
	adds	r4, r4, #1
.LVL266:
	.loc 1 563 13 view .LVU782
	bl	printUSART2
.LVL267:
	.loc 1 564 13 is_stmt 1 view .LVU783
	.loc 1 561 24 is_stmt 0 view .LVU784
	cmp	r4, #9600
	.loc 1 564 18 view .LVU785
	add	r6, r6, #1
.LVL268:
	.loc 1 561 39 is_stmt 1 view .LVU786
	.loc 1 561 24 view .LVU787
	bne	.L239
.L245:
	.loc 1 561 24 is_stmt 0 view .LVU788
.LBE34:
	.loc 1 567 5 is_stmt 1 view .LVU789
	mov	r1, r6
	ldr	r0, .L246+8
	.loc 1 568 1 is_stmt 0 view .LVU790
	pop	{r3, r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL269:
	.loc 1 567 5 view .LVU791
	b	printUSART2
.LVL270:
.L247:
	.loc 1 567 5 view .LVU792
	.align	2
.L246:
	.word	frame_buffer
	.word	.LC116
	.word	.LC117
	.cfi_endproc
.LFE122:
	.size	printNonZeroPixels, .-printNonZeroPixels
	.section	.rodata.str1.4
	.align	2
.LC118:
	.ascii	"=== Test: direktno citanje DCMI->DR ===\012\000"
	.align	2
.LC119:
	.ascii	"ERROR: Nema FRAME signala!\012\000"
	.align	2
.LC120:
	.ascii	"[%lu] data = 0x%08lx\012\000"
	.align	2
.LC121:
	.ascii	"Ukupno procitano rijeci = %lu\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_Test_ReadFrame
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_Test_ReadFrame, %function
OV7670_Test_ReadFrame:
.LFB123:
	.loc 1 574 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 575 5 view .LVU794
	ldr	r0, .L260
	.loc 1 574 1 is_stmt 0 view .LVU795
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 575 5 view .LVU796
	bl	printUSART2
.LVL271:
	.loc 1 578 5 is_stmt 1 view .LVU797
	.loc 1 578 9 is_stmt 0 view .LVU798
	ldr	r1, .L260+4
	.loc 1 587 11 view .LVU799
	ldr	r3, .L260+8
	.loc 1 578 9 view .LVU800
	ldr	r2, [r1]
	.loc 1 579 15 view .LVU801
	movs	r0, #31
	.loc 1 578 14 view .LVU802
	bic	r2, r2, #1
	str	r2, [r1]
	.loc 1 579 5 is_stmt 1 view .LVU803
	.loc 1 579 15 is_stmt 0 view .LVU804
	str	r0, [r1, #20]
	.loc 1 582 5 is_stmt 1 view .LVU805
	.loc 1 582 9 is_stmt 0 view .LVU806
	ldr	r2, [r1]
	.loc 1 582 14 view .LVU807
	orr	r2, r2, #1
	str	r2, [r1]
	.loc 1 584 5 is_stmt 1 view .LVU808
.LVL272:
	.loc 1 585 5 view .LVU809
	.loc 1 587 5 view .LVU810
	.loc 1 587 11 is_stmt 0 view .LVU811
	b	.L249
.LVL273:
.L250:
	.loc 1 589 12 view .LVU812
	subs	r3, r3, #1
	beq	.L259
.L249:
	.loc 1 589 9 is_stmt 1 view .LVU813
	.loc 1 587 12 view .LVU814
	.loc 1 587 18 is_stmt 0 view .LVU815
	ldr	r2, [r1, #8]
	.loc 1 587 12 view .LVU816
	lsls	r2, r2, #31
	bpl	.L250
	.loc 1 599 16 view .LVU817
	ldr	r5, .L260+4
.LBB35:
	.loc 1 602 9 view .LVU818
	ldr	r6, .L260+12
.LBE35:
	.loc 1 598 11 view .LVU819
	movs	r4, #0
	b	.L251
.LVL274:
.L253:
.LBB36:
	.loc 1 601 18 view .LVU820
	ldr	r2, [r5, #40]
.LVL275:
	.loc 1 602 9 is_stmt 1 view .LVU821
	.loc 1 604 14 is_stmt 0 view .LVU822
	adds	r4, r4, #1
	.loc 1 602 9 view .LVU823
	bl	printUSART2
.LVL276:
	.loc 1 604 9 is_stmt 1 view .LVU824
	.loc 1 605 9 view .LVU825
	.loc 1 605 12 is_stmt 0 view .LVU826
	cmp	r4, #50
	beq	.L252
.LVL277:
.L251:
	.loc 1 601 9 is_stmt 1 view .LVU827
	.loc 1 601 9 is_stmt 0 view .LVU828
.LBE36:
	.loc 1 599 12 is_stmt 1 view .LVU829
	.loc 1 599 16 is_stmt 0 view .LVU830
	ldr	r3, [r5, #4]
	.loc 1 599 12 view .LVU831
	lsls	r3, r3, #29
.LBB37:
	.loc 1 602 9 view .LVU832
	mov	r1, r4
	mov	r0, r6
.LBE37:
	.loc 1 599 12 view .LVU833
	bmi	.L253
.L252:
	.loc 1 608 5 is_stmt 1 view .LVU834
	mov	r1, r4
	ldr	r0, .L260+16
	.loc 1 609 1 is_stmt 0 view .LVU835
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL278:
	.loc 1 608 5 view .LVU836
	b	printUSART2
.LVL279:
.L259:
	.cfi_restore_state
	.loc 1 591 13 is_stmt 1 view .LVU837
	.loc 1 609 1 is_stmt 0 view .LVU838
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 591 13 view .LVU839
	ldr	r0, .L260+20
	b	printUSART2
.LVL280:
.L261:
	.align	2
.L260:
	.word	.LC118
	.word	1342504960
	.word	5000000
	.word	.LC120
	.word	.LC121
	.word	.LC119
	.cfi_endproc
.LFE123:
	.size	OV7670_Test_ReadFrame, .-OV7670_Test_ReadFrame
	.section	.rodata.str1.4
	.align	2
.LC122:
	.ascii	"RISING\000"
	.align	2
.LC123:
	.ascii	"FALLING\000"
	.align	2
.LC124:
	.ascii	"=== Test: VSYNC/PCLK polariteti ===\012\000"
	.align	2
.LC125:
	.ascii	"\012[Kombinacija] VSYNC=%s, PCLK=%s\012\000"
	.align	2
.LC126:
	.ascii	" Pix[%d] = 0x%08X\012\000"
	.align	2
.LC127:
	.ascii	" \342\234\205 Ova kombinacija daje podatke!\012\000"
	.align	2
.LC128:
	.ascii	" \342\235\214 FRAME do\305\241ao ali svi pikseli nu"
	.ascii	"la!\012\000"
	.align	2
.LC129:
	.ascii	"\012=== Test zavr\305\241en ===\012\000"
	.align	2
.LC130:
	.ascii	" -> Nema FRAME signala!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_TestPolarityCombos
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_TestPolarityCombos, %function
OV7670_TestPolarityCombos:
.LFB124:
	.loc 1 615 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 616 5 view .LVU841
	.loc 1 615 1 is_stmt 0 view .LVU842
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 616 5 view .LVU843
	ldr	r0, .L292
.LBB38:
.LBB39:
.LBB40:
	.loc 1 627 22 view .LVU844
	ldr	r4, .L292+4
.LBE40:
.LBE39:
.LBE38:
	.loc 1 616 5 view .LVU845
	bl	printUSART2
.LVL281:
	.loc 1 619 5 is_stmt 1 view .LVU846
.LBB57:
	.loc 1 619 10 view .LVU847
	.loc 1 619 25 view .LVU848
.LBE57:
	.loc 1 616 5 is_stmt 0 view .LVU849
	mov	r8, #2
.LBB58:
.LBB54:
.LBB48:
	.loc 1 627 22 view .LVU850
	mov	r9, #0
.LVL282:
.L263:
	.loc 1 627 22 view .LVU851
.LBE48:
	.loc 1 620 31 is_stmt 1 view .LVU852
.LBB49:
	.loc 1 623 16 is_stmt 0 view .LVU853
	ldr	r6, .L292+8
.LBE49:
	.loc 1 620 18 view .LVU854
	movs	r7, #0
.LVL283:
.L276:
.LBB50:
	.loc 1 623 13 is_stmt 1 view .LVU855
	.loc 1 623 16 is_stmt 0 view .LVU856
	ldr	r3, [r6, #20]
	.loc 1 623 27 view .LVU857
	orr	r3, r3, #1
	str	r3, [r6, #20]
	.loc 1 624 13 is_stmt 1 view .LVU858
	.loc 1 624 16 is_stmt 0 view .LVU859
	ldr	r3, [r6, #20]
	.loc 1 624 27 view .LVU860
	bic	r3, r3, #1
	str	r3, [r6, #20]
	.loc 1 627 13 is_stmt 1 view .LVU861
	.loc 1 627 22 is_stmt 0 view .LVU862
	str	r9, [r4]
	.loc 1 628 13 is_stmt 1 view .LVU863
	.loc 1 628 17 is_stmt 0 view .LVU864
	ldr	r3, [r4]
	.loc 1 628 22 view .LVU865
	orr	r3, r3, #16384
	str	r3, [r4]
	.loc 1 629 13 is_stmt 1 view .LVU866
	.loc 1 629 17 is_stmt 0 view .LVU867
	ldr	r3, [r4]
	.loc 1 629 22 view .LVU868
	orr	r3, r3, #2
	str	r3, [r4]
	.loc 1 630 13 is_stmt 1 view .LVU869
	.loc 1 630 17 is_stmt 0 view .LVU870
	ldr	r3, [r4]
	.loc 1 630 22 view .LVU871
	orr	r3, r3, #64
	str	r3, [r4]
	.loc 1 632 13 is_stmt 1 view .LVU872
	.loc 1 632 16 is_stmt 0 view .LVU873
	cmp	r8, #2
	.loc 1 632 25 view .LVU874
	ldr	r3, [r4]
	.loc 1 632 16 view .LVU875
	beq	.L264
	.loc 1 632 21 is_stmt 1 discriminator 1 view .LVU876
	.loc 1 632 30 is_stmt 0 discriminator 1 view .LVU877
	orr	r3, r3, #128
	str	r3, [r4]
	.loc 1 635 13 is_stmt 1 discriminator 1 view .LVU878
	.loc 1 635 26 is_stmt 0 discriminator 1 view .LVU879
	ldr	r3, [r4]
	.loc 1 635 16 discriminator 1 view .LVU880
	cmp	r7, #0
	beq	.L265
	.loc 1 635 22 is_stmt 1 view .LVU881
	.loc 1 635 31 is_stmt 0 view .LVU882
	orr	r3, r3, #32
	.loc 1 639 13 view .LVU883
	ldr	r1, .L292+12
	ldr	r2, .L292+16
	.loc 1 635 31 view .LVU884
	str	r3, [r4]
	.loc 1 639 13 is_stmt 1 view .LVU885
.L266:
	.loc 1 639 13 is_stmt 0 discriminator 8 view .LVU886
	ldr	r0, .L292+20
	bl	printUSART2
.LVL284:
	.loc 1 644 13 is_stmt 1 discriminator 8 view .LVU887
	.loc 1 644 17 is_stmt 0 discriminator 8 view .LVU888
	ldr	r2, [r4]
	.loc 1 647 22 discriminator 8 view .LVU889
	ldr	r3, .L292+24
	.loc 1 644 22 discriminator 8 view .LVU890
	orr	r2, r2, #1
	str	r2, [r4]
	.loc 1 647 13 is_stmt 1 discriminator 8 view .LVU891
.LVL285:
	.loc 1 648 13 discriminator 8 view .LVU892
	.loc 1 648 19 is_stmt 0 discriminator 8 view .LVU893
	b	.L269
.LVL286:
.L289:
	.loc 1 648 56 discriminator 1 view .LVU894
	subs	r3, r3, #1
.LVL287:
	.loc 1 648 56 discriminator 1 view .LVU895
	beq	.L288
.LVL288:
.L269:
	.loc 1 648 56 is_stmt 1 discriminator 2 view .LVU896
	.loc 1 648 26 is_stmt 0 discriminator 2 view .LVU897
	ldr	r2, [r4, #16]
	.loc 1 648 56 discriminator 2 view .LVU898
	lsls	r2, r2, #31
	bpl	.L289
	.loc 1 650 13 is_stmt 1 view .LVU899
	.loc 1 656 13 view .LVU900
	.loc 1 656 17 is_stmt 0 view .LVU901
	ldr	r3, [r4, #20]
.LVL289:
.LBB41:
.LBB42:
	.loc 1 665 21 view .LVU902
	ldr	r10, .L292+52
.LBE42:
	.loc 1 660 22 view .LVU903
	movs	r5, #0
.LBE41:
	.loc 1 656 23 view .LVU904
	orr	r3, r3, #1
	str	r3, [r4, #20]
	.loc 1 659 13 is_stmt 1 view .LVU905
.LVL290:
	.loc 1 660 13 view .LVU906
.LBB45:
	.loc 1 660 18 view .LVU907
	.loc 1 660 31 view .LVU908
	.loc 1 660 31 is_stmt 0 view .LVU909
.LBE45:
	.loc 1 659 17 view .LVU910
	mov	fp, r5
.LVL291:
.L271:
.LBB46:
.LBB43:
	.loc 1 661 24 is_stmt 1 discriminator 1 view .LVU911
	.loc 1 661 30 is_stmt 0 discriminator 1 view .LVU912
	ldr	r3, [r4, #4]
	.loc 1 661 24 discriminator 1 view .LVU913
	lsls	r3, r3, #29
	bpl	.L271
	.loc 1 662 17 is_stmt 1 view .LVU914
	.loc 1 662 26 is_stmt 0 view .LVU915
	ldr	r2, [r4, #40]
.LVL292:
	.loc 1 663 17 is_stmt 1 view .LVU916
	.loc 1 663 20 is_stmt 0 view .LVU917
	cbnz	r2, .L290
.LVL293:
.L272:
	.loc 1 663 20 view .LVU918
.LBE43:
	.loc 1 660 38 is_stmt 1 discriminator 2 view .LVU919
	adds	r5, r5, #1
.LVL294:
	.loc 1 660 31 discriminator 2 view .LVU920
	cmp	r5, #20
	bne	.L271
	.loc 1 660 31 is_stmt 0 discriminator 2 view .LVU921
.LBE46:
	.loc 1 669 13 is_stmt 1 view .LVU922
	.loc 1 669 16 is_stmt 0 view .LVU923
	cmp	fp, #0
	beq	.L274
	.loc 1 670 17 is_stmt 1 view .LVU924
	ldr	r0, .L292+28
	bl	printUSART2
.LVL295:
.L275:
	.loc 1 670 17 is_stmt 0 view .LVU925
.LBE50:
	.loc 1 620 39 is_stmt 1 discriminator 2 view .LVU926
	.loc 1 620 31 discriminator 2 view .LVU927
	cbnz	r7, .L291
	.loc 1 620 39 is_stmt 0 view .LVU928
	movs	r7, #1
.LVL296:
	.loc 1 620 39 view .LVU929
	b	.L276
.LVL297:
.L290:
.LBB51:
.LBB47:
.LBB44:
	.loc 1 664 21 is_stmt 1 view .LVU930
	.loc 1 665 21 is_stmt 0 view .LVU931
	mov	r1, r5
	mov	r0, r10
	.loc 1 664 28 view .LVU932
	add	fp, fp, #1
.LVL298:
	.loc 1 665 21 is_stmt 1 view .LVU933
	bl	printUSART2
.LVL299:
	.loc 1 665 21 is_stmt 0 view .LVU934
	b	.L272
.LVL300:
.L291:
	.loc 1 665 21 view .LVU935
.LBE44:
.LBE47:
.LBE51:
.LBE54:
	.loc 1 619 32 is_stmt 1 discriminator 2 view .LVU936
	.loc 1 619 25 discriminator 2 view .LVU937
	cmp	r8, #1
	beq	.L277
	mov	r8, #1
.LVL301:
	.loc 1 619 25 is_stmt 0 discriminator 2 view .LVU938
	b	.L263
.LVL302:
.L288:
.LBB55:
.LBB52:
	.loc 1 650 13 is_stmt 1 view .LVU939
	.loc 1 651 17 view .LVU940
	ldr	r0, .L292+32
	bl	printUSART2
.LVL303:
	.loc 1 652 17 view .LVU941
	b	.L275
.LVL304:
.L264:
	.loc 1 633 21 view .LVU942
	.loc 1 633 30 is_stmt 0 view .LVU943
	bic	r3, r3, #128
	str	r3, [r4]
	.loc 1 635 13 is_stmt 1 view .LVU944
	.loc 1 635 26 is_stmt 0 view .LVU945
	ldr	r3, [r4]
	.loc 1 635 16 view .LVU946
	cbz	r7, .L267
	.loc 1 635 22 is_stmt 1 discriminator 1 view .LVU947
	.loc 1 635 31 is_stmt 0 discriminator 1 view .LVU948
	orr	r3, r3, #32
	.loc 1 639 13 discriminator 1 view .LVU949
	ldr	r1, .L292+36
	ldr	r2, .L292+16
	.loc 1 635 31 discriminator 1 view .LVU950
	str	r3, [r4]
	.loc 1 639 13 is_stmt 1 discriminator 1 view .LVU951
	b	.L266
.LVL305:
.L274:
	.loc 1 672 17 view .LVU952
	ldr	r0, .L292+40
	bl	printUSART2
.LVL306:
	b	.L275
.LVL307:
.L277:
	.loc 1 672 17 is_stmt 0 view .LVU953
.LBE52:
.LBE55:
.LBE58:
	.loc 1 676 5 is_stmt 1 view .LVU954
	.loc 1 677 1 is_stmt 0 view .LVU955
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL308:
	.loc 1 676 5 view .LVU956
	ldr	r0, .L292+44
	b	printUSART2
.LVL309:
.L267:
	.cfi_restore_state
.LBB59:
.LBB56:
.LBB53:
	.loc 1 636 22 is_stmt 1 view .LVU957
	.loc 1 636 31 is_stmt 0 view .LVU958
	bic	r3, r3, #32
	.loc 1 639 13 view .LVU959
	ldr	r1, .L292+36
	ldr	r2, .L292+48
	.loc 1 636 31 view .LVU960
	str	r3, [r4]
	.loc 1 639 13 is_stmt 1 view .LVU961
	b	.L266
.L265:
	.loc 1 636 22 view .LVU962
	.loc 1 636 31 is_stmt 0 view .LVU963
	bic	r3, r3, #32
	.loc 1 639 13 view .LVU964
	ldr	r1, .L292+12
	ldr	r2, .L292+48
	.loc 1 636 31 view .LVU965
	str	r3, [r4]
	.loc 1 639 13 is_stmt 1 view .LVU966
	b	.L266
.L293:
	.align	2
.L292:
	.word	.LC124
	.word	1342504960
	.word	1073887232
	.word	.LC24
	.word	.LC122
	.word	.LC125
	.word	1000000
	.word	.LC127
	.word	.LC130
	.word	.LC25
	.word	.LC128
	.word	.LC129
	.word	.LC123
	.word	.LC126
.LBE53:
.LBE56:
.LBE59:
	.cfi_endproc
.LFE124:
	.size	OV7670_TestPolarityCombos, .-OV7670_TestPolarityCombos
	.section	.rodata.str1.4
	.align	2
.LC131:
	.ascii	"=== Test: DCMI FIFO (ignorisi FRAME) ===\012\000"
	.align	2
.LC132:
	.ascii	"DCMI capture startovan.\012\000"
	.align	2
.LC133:
	.ascii	"FIFO DATA = 0x%xb\012\000"
	.align	2
.LC134:
	.ascii	"OK: Kamera salje piksele (FIFO radi).\012\000"
	.align	2
.LC135:
	.ascii	"ERROR: FIFO je uvijek prazan! Nema podataka sa kame"
	.ascii	"re.\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_TestFIFO
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_TestFIFO, %function
OV7670_TestFIFO:
.LFB125:
	.loc 1 683 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 684 5 view .LVU968
	.loc 1 683 1 is_stmt 0 view .LVU969
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 687 9 view .LVU970
	ldr	r4, .L301
	.loc 1 684 5 view .LVU971
	ldr	r0, .L301+4
	bl	printUSART2
.LVL310:
	.loc 1 687 5 is_stmt 1 view .LVU972
	.loc 1 687 9 is_stmt 0 view .LVU973
	ldr	r3, [r4]
	.loc 1 694 5 view .LVU974
	ldr	r0, .L301+8
	.loc 1 688 14 view .LVU975
	movs	r2, #0
	.loc 1 687 14 view .LVU976
	bic	r3, r3, #16384
	str	r3, [r4]
	.loc 1 688 5 is_stmt 1 view .LVU977
	.loc 1 688 14 is_stmt 0 view .LVU978
	str	r2, [r4]
	.loc 1 689 5 is_stmt 1 view .LVU979
	.loc 1 689 9 is_stmt 0 view .LVU980
	ldr	r3, [r4]
	.loc 1 689 14 view .LVU981
	orr	r3, r3, #2
	str	r3, [r4]
	.loc 1 690 5 is_stmt 1 view .LVU982
	.loc 1 690 9 is_stmt 0 view .LVU983
	ldr	r3, [r4]
	.loc 1 690 14 view .LVU984
	orr	r3, r3, #16384
	str	r3, [r4]
	.loc 1 693 5 is_stmt 1 view .LVU985
	.loc 1 693 9 is_stmt 0 view .LVU986
	ldr	r3, [r4]
	.loc 1 693 14 view .LVU987
	orr	r3, r3, #1
	str	r3, [r4]
	.loc 1 694 5 is_stmt 1 view .LVU988
	bl	printUSART2
.LVL311:
	.loc 1 697 5 view .LVU989
	.loc 1 698 5 view .LVU990
	.loc 1 700 5 view .LVU991
	.loc 1 700 11 is_stmt 0 view .LVU992
	ldr	r3, .L301+12
.LVL312:
.L295:
	.loc 1 702 9 is_stmt 1 view .LVU993
	.loc 1 700 12 view .LVU994
	.loc 1 700 12 is_stmt 0 view .LVU995
	subs	r3, r3, #1
	beq	.L300
	.loc 1 702 17 view .LVU996
	ldr	r2, [r4, #4]
	.loc 1 702 12 view .LVU997
	lsls	r2, r2, #29
	bpl	.L295
.LBB60:
	.loc 1 704 13 is_stmt 1 view .LVU998
	.loc 1 704 22 is_stmt 0 view .LVU999
	ldr	r1, [r4, #40]
.LVL313:
	.loc 1 705 13 is_stmt 1 view .LVU1000
	ldr	r0, .L301+16
	uxth	r1, r1
.LVL314:
	.loc 1 705 13 is_stmt 0 view .LVU1001
	bl	printUSART2
.LVL315:
	.loc 1 706 13 is_stmt 1 view .LVU1002
	.loc 1 707 13 view .LVU1003
	.loc 1 707 13 is_stmt 0 view .LVU1004
.LBE60:
	.loc 1 711 5 is_stmt 1 view .LVU1005
	.loc 1 714 9 view .LVU1006
	.loc 1 715 1 is_stmt 0 view .LVU1007
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 714 9 view .LVU1008
	ldr	r0, .L301+20
	b	printUSART2
.LVL316:
.L300:
	.cfi_restore_state
	.loc 1 711 5 is_stmt 1 view .LVU1009
	.loc 1 712 9 view .LVU1010
	.loc 1 715 1 is_stmt 0 view .LVU1011
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 712 9 view .LVU1012
	ldr	r0, .L301+24
	b	printUSART2
.LVL317:
.L302:
	.align	2
.L301:
	.word	1342504960
	.word	.LC131
	.word	.LC132
	.word	1000001
	.word	.LC133
	.word	.LC134
	.word	.LC135
	.cfi_endproc
.LFE125:
	.size	OV7670_TestFIFO, .-OV7670_TestFIFO
	.section	.rodata.str1.4
	.align	2
.LC137:
	.ascii	"Reg %s OK (0x%x)\012\000"
	.align	2
.LC138:
	.ascii	"Reg %s MISMATCH! Expected 0x%x, Read 0x%x\012\000"
	.align	2
.LC139:
	.ascii	"-> OV7670 verifikacija zavrsena!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_VerifyRegisters
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_VerifyRegisters, %function
OV7670_VerifyRegisters:
.LFB126:
	.loc 1 719 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 720 5 view .LVU1014
	.loc 1 719 1 is_stmt 0 view .LVU1015
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #120
	.cfi_def_cfa_offset 144
	.loc 1 724 7 view .LVU1016
	ldr	r1, .L310
.LBB61:
	.loc 1 754 13 view .LVU1017
	ldr	r7, .L310+4
	.loc 1 750 13 view .LVU1018
	ldr	r8, .L310+12
.LBE61:
	.loc 1 724 7 view .LVU1019
	movs	r2, #112
	add	r0, sp, #8
	bl	memcpy
.LVL318:
	.loc 1 743 5 is_stmt 1 view .LVU1020
	.loc 1 744 5 view .LVU1021
.LBB62:
	.loc 1 744 10 view .LVU1022
	.loc 1 744 23 view .LVU1023
	add	r4, sp, #8
	add	r6, sp, #120
	.loc 1 746 13 is_stmt 0 view .LVU1024
	movs	r5, #0
	b	.L306
.LVL319:
.L304:
	.loc 1 754 13 view .LVU1025
	bl	printUSART2
.LVL320:
	.loc 1 757 9 is_stmt 1 view .LVU1026
	.loc 1 744 23 is_stmt 0 view .LVU1027
	adds	r4, r4, #8
	.loc 1 757 9 view .LVU1028
	movs	r0, #10
	bl	delay_ms
.LVL321:
	.loc 1 744 66 is_stmt 1 view .LVU1029
	.loc 1 744 23 view .LVU1030
	cmp	r4, r6
	beq	.L309
.L306:
	.loc 1 746 9 view .LVU1031
	.loc 1 747 9 is_stmt 0 view .LVU1032
	ldrb	r0, [r4]	@ zero_extendqisi2
	.loc 1 746 13 view .LVU1033
	strb	r5, [sp, #7]
	.loc 1 747 9 is_stmt 1 view .LVU1034
	add	r1, sp, #7
	movs	r2, #1
	bl	readI2C
.LVL322:
	.loc 1 748 9 view .LVU1035
	.loc 1 754 13 view .LVU1036
	.loc 1 748 32 is_stmt 0 view .LVU1037
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	.loc 1 748 17 view .LVU1038
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 750 13 view .LVU1039
	ldr	r1, [r4, #4]
	.loc 1 748 12 view .LVU1040
	cmp	r2, r3
	.loc 1 754 13 view .LVU1041
	mov	r0, r7
	.loc 1 748 12 view .LVU1042
	bne	.L304
	.loc 1 750 13 is_stmt 1 view .LVU1043
	mov	r0, r8
	bl	printUSART2
.LVL323:
	.loc 1 757 9 view .LVU1044
	.loc 1 744 23 is_stmt 0 view .LVU1045
	adds	r4, r4, #8
	.loc 1 757 9 view .LVU1046
	movs	r0, #10
	bl	delay_ms
.LVL324:
	.loc 1 744 66 is_stmt 1 view .LVU1047
	.loc 1 744 23 view .LVU1048
	cmp	r4, r6
	bne	.L306
.L309:
.LBE62:
	.loc 1 760 5 view .LVU1049
	ldr	r0, .L310+8
	bl	printUSART2
.LVL325:
	.loc 1 761 1 is_stmt 0 view .LVU1050
	add	sp, sp, #120
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L311:
	.align	2
.L310:
	.word	.LANCHOR0+20
	.word	.LC138
	.word	.LC139
	.word	.LC137
	.cfi_endproc
.LFE126:
	.size	OV7670_VerifyRegisters, .-OV7670_VerifyRegisters
	.section	.rodata.str1.4
	.align	2
.LC140:
	.ascii	"\012=== DATA PINS & SYNC PINS ACTIVITY CHECK ===\012"
	.ascii	"\000"
	.align	2
.LC141:
	.ascii	"Monitoring D0-D7 + HSYNC/VSYNC/PCLK for 1 second..."
	.ascii	"\012\000"
	.align	2
.LC142:
	.ascii	"D0 (PA9) activity: %d/1000\012\000"
	.align	2
.LC143:
	.ascii	"D1 (PA10) activity: %d/1000\012\000"
	.align	2
.LC144:
	.ascii	"D2 (PC8) activity: %d/1000\012\000"
	.align	2
.LC145:
	.ascii	"D3 (PC9) activity: %d/1000\012\000"
	.align	2
.LC146:
	.ascii	"D4 (PE4) activity: %d/1000\012\000"
	.align	2
.LC147:
	.ascii	"D5 (PB6) activity: %d/1000\012\000"
	.align	2
.LC148:
	.ascii	"D6 (PE5) activity: %d/1000\012\000"
	.align	2
.LC149:
	.ascii	"D7 (PE6) activity: %d/1000\012\000"
	.align	2
.LC150:
	.ascii	"HSYNC (PA4) activity: %d/1000\012\000"
	.align	2
.LC151:
	.ascii	"VSYNC (PB7) activity: %d/1000\012\000"
	.align	2
.LC152:
	.ascii	"PCLK (PA6) activity: %d/1000\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	check_data_pins_activity
	.syntax unified
	.thumb
	.thumb_func
	.type	check_data_pins_activity, %function
check_data_pins_activity:
.LFB127:
	.loc 1 765 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 766 5 view .LVU1052
	.loc 1 765 1 is_stmt 0 view .LVU1053
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 766 5 view .LVU1054
	ldr	r0, .L360
.LBB63:
	.loc 1 775 17 view .LVU1055
	ldr	r4, .L360+4
	.loc 1 777 17 view .LVU1056
	ldr	r9, .L360+64
	.loc 1 779 17 view .LVU1057
	ldr	r5, .L360+8
	.loc 1 780 17 view .LVU1058
	ldr	r7, .L360+12
.LBE63:
	.loc 1 765 1 view .LVU1059
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 771 48 view .LVU1060
	mov	r8, #0
	.loc 1 766 5 view .LVU1061
	bl	printUSART2
.LVL326:
	.loc 1 767 5 is_stmt 1 view .LVU1062
	ldr	r0, .L360+16
	bl	printUSART2
.LVL327:
	.loc 1 769 5 view .LVU1063
	.loc 1 770 5 view .LVU1064
	.loc 1 771 5 view .LVU1065
	.loc 1 773 5 view .LVU1066
.LBB64:
	.loc 1 773 9 view .LVU1067
	.loc 1 773 22 view .LVU1068
.LBE64:
	.loc 1 771 14 is_stmt 0 view .LVU1069
	strd	r8, r8, [sp, #20]
	.loc 1 770 28 view .LVU1070
	strd	r8, r8, [sp, #8]
	.loc 1 769 56 view .LVU1071
	strd	r8, r8, [sp]
	.loc 1 767 5 view .LVU1072
	mov	r6, #1000
	.loc 1 770 56 view .LVU1073
	str	r8, [sp, #16]
	.loc 1 769 42 view .LVU1074
	mov	r10, r8
	.loc 1 769 28 view .LVU1075
	mov	fp, r8
	.loc 1 769 14 view .LVU1076
	str	r8, [sp, #28]
.LVL328:
.L324:
.LBB65:
	.loc 1 775 9 is_stmt 1 view .LVU1077
	.loc 1 775 17 is_stmt 0 view .LVU1078
	ldr	r2, [r4, #16]
	.loc 1 775 11 view .LVU1079
	lsls	r1, r2, #22
	bpl	.L313
	.loc 1 775 41 is_stmt 1 discriminator 1 view .LVU1080
	.loc 1 775 49 is_stmt 0 discriminator 1 view .LVU1081
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.LVL329:
.L313:
	.loc 1 776 9 is_stmt 1 view .LVU1082
	.loc 1 776 17 is_stmt 0 view .LVU1083
	ldr	r2, [r4, #16]
	.loc 1 776 11 view .LVU1084
	lsls	r2, r2, #21
	.loc 1 776 42 is_stmt 1 view .LVU1085
	.loc 1 777 17 is_stmt 0 view .LVU1086
	ldr	r2, [r9, #16]
	.loc 1 776 50 view .LVU1087
	it	mi
	addmi	fp, fp, #1
.LVL330:
	.loc 1 777 9 is_stmt 1 view .LVU1088
	.loc 1 777 11 is_stmt 0 view .LVU1089
	lsls	r3, r2, #23
	.loc 1 777 41 is_stmt 1 view .LVU1090
	.loc 1 778 17 is_stmt 0 view .LVU1091
	ldr	r2, [r9, #16]
	.loc 1 777 49 view .LVU1092
	it	mi
	addmi	r10, r10, #1
.LVL331:
	.loc 1 778 9 is_stmt 1 view .LVU1093
	.loc 1 778 11 is_stmt 0 view .LVU1094
	lsls	r0, r2, #22
	bpl	.L316
	.loc 1 778 41 is_stmt 1 discriminator 1 view .LVU1095
	.loc 1 778 49 is_stmt 0 discriminator 1 view .LVU1096
	ldr	r3, [sp]
	adds	r3, r3, #1
	str	r3, [sp]
.LVL332:
.L316:
	.loc 1 779 9 is_stmt 1 view .LVU1097
	.loc 1 779 17 is_stmt 0 view .LVU1098
	ldr	r2, [r5, #16]
	.loc 1 779 11 view .LVU1099
	lsls	r1, r2, #27
	bpl	.L317
	.loc 1 779 41 is_stmt 1 discriminator 1 view .LVU1100
	.loc 1 779 49 is_stmt 0 discriminator 1 view .LVU1101
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	str	r3, [sp, #4]
.LVL333:
.L317:
	.loc 1 780 9 is_stmt 1 view .LVU1102
	.loc 1 780 17 is_stmt 0 view .LVU1103
	ldr	r2, [r7, #16]
	.loc 1 780 11 view .LVU1104
	lsls	r2, r2, #25
	bpl	.L318
	.loc 1 780 41 is_stmt 1 discriminator 1 view .LVU1105
	.loc 1 780 49 is_stmt 0 discriminator 1 view .LVU1106
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
.LVL334:
.L318:
	.loc 1 781 9 is_stmt 1 view .LVU1107
	.loc 1 781 17 is_stmt 0 view .LVU1108
	ldr	r2, [r5, #16]
	.loc 1 781 11 view .LVU1109
	lsls	r3, r2, #26
	bpl	.L319
	.loc 1 781 41 is_stmt 1 discriminator 1 view .LVU1110
	.loc 1 781 49 is_stmt 0 discriminator 1 view .LVU1111
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.LVL335:
.L319:
	.loc 1 782 9 is_stmt 1 view .LVU1112
	.loc 1 782 17 is_stmt 0 view .LVU1113
	ldr	r2, [r5, #16]
	.loc 1 782 11 view .LVU1114
	lsls	r0, r2, #25
	bpl	.L320
	.loc 1 782 41 is_stmt 1 discriminator 1 view .LVU1115
	.loc 1 782 49 is_stmt 0 discriminator 1 view .LVU1116
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
.LVL336:
.L320:
	.loc 1 785 9 is_stmt 1 view .LVU1117
	.loc 1 785 17 is_stmt 0 view .LVU1118
	ldr	r2, [r4, #16]
	.loc 1 785 11 view .LVU1119
	lsls	r1, r2, #27
	bpl	.L321
	.loc 1 785 41 is_stmt 1 discriminator 1 view .LVU1120
	.loc 1 785 52 is_stmt 0 discriminator 1 view .LVU1121
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
.LVL337:
.L321:
	.loc 1 786 9 is_stmt 1 view .LVU1122
	.loc 1 786 17 is_stmt 0 view .LVU1123
	ldr	r2, [r7, #16]
	.loc 1 786 11 view .LVU1124
	lsls	r2, r2, #24
	bpl	.L322
	.loc 1 786 41 is_stmt 1 discriminator 1 view .LVU1125
	.loc 1 786 52 is_stmt 0 discriminator 1 view .LVU1126
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	str	r3, [sp, #24]
.LVL338:
.L322:
	.loc 1 787 9 is_stmt 1 view .LVU1127
	.loc 1 787 17 is_stmt 0 view .LVU1128
	ldr	r2, [r4, #16]
	.loc 1 789 9 view .LVU1129
	movs	r0, #1
	.loc 1 787 11 view .LVU1130
	lsls	r3, r2, #25
	.loc 1 787 41 is_stmt 1 view .LVU1131
	.loc 1 787 51 is_stmt 0 view .LVU1132
	it	mi
	addmi	r8, r8, #1
.LVL339:
	.loc 1 789 9 is_stmt 1 view .LVU1133
	bl	delay_ms
.LVL340:
	.loc 1 773 31 view .LVU1134
	.loc 1 773 22 view .LVU1135
	subs	r6, r6, #1
	bne	.L324
.LBE65:
	.loc 1 792 5 is_stmt 0 view .LVU1136
	ldr	r1, [sp, #28]
	.loc 1 792 5 is_stmt 1 view .LVU1137
	ldr	r0, .L360+20
	bl	printUSART2
.LVL341:
	.loc 1 793 5 view .LVU1138
	mov	r1, fp
	ldr	r0, .L360+24
	bl	printUSART2
.LVL342:
	.loc 1 794 5 view .LVU1139
	mov	r1, r10
	ldr	r0, .L360+28
	bl	printUSART2
.LVL343:
	.loc 1 795 5 view .LVU1140
	ldr	r1, [sp]
	ldr	r0, .L360+32
	bl	printUSART2
.LVL344:
	.loc 1 796 5 view .LVU1141
	ldr	r1, [sp, #4]
	ldr	r0, .L360+36
	bl	printUSART2
.LVL345:
	.loc 1 797 5 view .LVU1142
	ldr	r1, [sp, #8]
	ldr	r0, .L360+40
	bl	printUSART2
.LVL346:
	.loc 1 798 5 view .LVU1143
	ldr	r1, [sp, #12]
	ldr	r0, .L360+44
	bl	printUSART2
.LVL347:
	.loc 1 799 5 view .LVU1144
	ldr	r1, [sp, #16]
	ldr	r0, .L360+48
	bl	printUSART2
.LVL348:
	.loc 1 801 5 view .LVU1145
	ldr	r1, [sp, #20]
	ldr	r0, .L360+52
	bl	printUSART2
.LVL349:
	.loc 1 802 5 view .LVU1146
	ldr	r1, [sp, #24]
	ldr	r0, .L360+56
	bl	printUSART2
.LVL350:
	.loc 1 803 5 view .LVU1147
	ldr	r0, .L360+60
	mov	r1, r8
	.loc 1 804 1 is_stmt 0 view .LVU1148
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
.LVL351:
	.loc 1 804 1 view .LVU1149
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL352:
	.loc 1 803 5 view .LVU1150
	b	printUSART2
.LVL353:
.L361:
	.loc 1 803 5 view .LVU1151
	.align	2
.L360:
	.word	.LC140
	.word	1073872896
	.word	1073876992
	.word	1073873920
	.word	.LC141
	.word	.LC142
	.word	.LC143
	.word	.LC144
	.word	.LC145
	.word	.LC146
	.word	.LC147
	.word	.LC148
	.word	.LC149
	.word	.LC150
	.word	.LC151
	.word	.LC152
	.word	1073874944
	.cfi_endproc
.LFE127:
	.size	check_data_pins_activity, .-check_data_pins_activity
	.section	.rodata.str1.4
	.align	2
.LC153:
	.ascii	"\012=== FRAME ACTIVITY CHECK ===\012\000"
	.align	2
.LC154:
	.ascii	"Monitoring VSYNC/HSYNC/PCLK for 2 seconds...\012\000"
	.align	2
.LC155:
	.ascii	"Frame start! Previous frame had %d lines\012\000"
	.align	2
.LC156:
	.ascii	"Monitoring done.\012\000"
	.align	2
.LC157:
	.ascii	"Total frames detected: %d\012\000"
	.align	2
.LC158:
	.ascii	"Total PCLK pulses: %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	check_frame_activity
	.syntax unified
	.thumb
	.thumb_func
	.type	check_frame_activity, %function
check_frame_activity:
.LFB129:
	.loc 1 829 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 830 5 view .LVU1153
	.loc 1 829 1 is_stmt 0 view .LVU1154
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 830 5 view .LVU1155
	ldr	r0, .L379
	.loc 1 841 32 view .LVU1156
	ldr	r8, .L379+28
	.loc 1 829 1 view .LVU1157
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 830 5 view .LVU1158
	bl	printUSART2
.LVL354:
	.loc 1 831 5 is_stmt 1 view .LVU1159
	ldr	r0, .L379+4
	bl	printUSART2
.LVL355:
	.loc 1 833 5 view .LVU1160
	.loc 1 834 5 view .LVU1161
	.loc 1 835 5 view .LVU1162
	.loc 1 837 5 view .LVU1163
	.loc 1 838 5 view .LVU1164
	.loc 1 840 5 view .LVU1165
	.loc 1 840 32 is_stmt 0 view .LVU1166
	ldr	r3, .L379+8
	ldr	r7, [r3, #16]
	.loc 1 841 32 view .LVU1167
	ldr	r6, [r8, #16]
	.loc 1 842 32 view .LVU1168
	ldr	r4, [r8, #16]
	.loc 1 835 14 view .LVU1169
	movs	r3, #0
	.loc 1 840 13 view .LVU1170
	ubfx	r7, r7, #7, #1
.LVL356:
	.loc 1 841 5 is_stmt 1 view .LVU1171
	.loc 1 841 13 is_stmt 0 view .LVU1172
	ubfx	r6, r6, #4, #1
.LVL357:
	.loc 1 842 5 is_stmt 1 view .LVU1173
	.loc 1 842 13 is_stmt 0 view .LVU1174
	ubfx	r4, r4, #6, #1
.LVL358:
	.loc 1 844 5 is_stmt 1 view .LVU1175
	.loc 1 845 5 view .LVU1176
.LBB66:
	.loc 1 845 9 view .LVU1177
	.loc 1 845 19 view .LVU1178
.LBE66:
	.loc 1 835 14 is_stmt 0 view .LVU1179
	str	r3, [sp, #8]
	.loc 1 842 13 view .LVU1180
	mov	r5, #2000
	.loc 1 834 14 view .LVU1181
	str	r3, [sp, #4]
	.loc 1 833 14 view .LVU1182
	str	r3, [sp, #12]
.LVL359:
.L366:
.LBB69:
.LBB67:
	.loc 1 847 9 is_stmt 1 view .LVU1183
	.loc 1 847 28 is_stmt 0 view .LVU1184
	ldr	r3, .L379+8
	ldr	r3, [r3, #16]
	.loc 1 848 28 view .LVU1185
	ldr	r1, [r8, #16]
	.loc 1 847 48 view .LVU1186
	and	r0, r3, #128
	mov	fp, r7
	.loc 1 847 17 view .LVU1187
	ubfx	r7, r3, #7, #1
.LVL360:
	.loc 1 848 9 is_stmt 1 view .LVU1188
	mov	r3, r4
	.loc 1 849 28 is_stmt 0 view .LVU1189
	ldr	r4, [r8, #16]
.LVL361:
	.loc 1 849 28 view .LVU1190
	mov	r2, r6
	.loc 1 849 48 view .LVU1191
	and	r9, r4, #64
	.loc 1 848 48 view .LVU1192
	and	r10, r1, #16
	.loc 1 848 17 view .LVU1193
	ubfx	r6, r1, #4, #1
.LVL362:
	.loc 1 849 9 is_stmt 1 view .LVU1194
	.loc 1 849 17 is_stmt 0 view .LVU1195
	ubfx	r4, r4, #6, #1
.LVL363:
	.loc 1 852 9 is_stmt 1 view .LVU1196
	.loc 1 852 11 is_stmt 0 view .LVU1197
	cbz	r0, .L363
	.loc 1 852 15 discriminator 1 view .LVU1198
	cmp	fp, #0
	beq	.L378
.LVL364:
.L363:
	.loc 1 861 9 is_stmt 1 view .LVU1199
	.loc 1 878 9 is_stmt 0 view .LVU1200
	movs	r0, #1
	.loc 1 861 11 view .LVU1201
	cmp	r10, #0
	beq	.L364
	.loc 1 863 13 is_stmt 1 discriminator 1 view .LVU1202
	.loc 1 861 15 is_stmt 0 discriminator 1 view .LVU1203
	cbnz	r2, .L364
	.loc 1 863 24 view .LVU1204
	ldr	r2, [sp, #4]
	add	r2, r2, r0
	str	r2, [sp, #4]
.LVL365:
	.loc 1 864 13 is_stmt 1 view .LVU1205
.L364:
	.loc 1 868 9 view .LVU1206
	.loc 1 868 11 is_stmt 0 view .LVU1207
	cmp	r9, #0
	beq	.L365
	.loc 1 870 13 is_stmt 1 discriminator 1 view .LVU1208
	.loc 1 868 15 is_stmt 0 discriminator 1 view .LVU1209
	cbnz	r3, .L365
	.loc 1 870 23 view .LVU1210
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
.LVL366:
	.loc 1 871 13 is_stmt 1 view .LVU1211
.L365:
	.loc 1 874 9 discriminator 2 view .LVU1212
	.loc 1 875 9 discriminator 2 view .LVU1213
	.loc 1 876 9 discriminator 2 view .LVU1214
	.loc 1 878 9 discriminator 2 view .LVU1215
	bl	delay_ms
.LVL367:
.LBE67:
	.loc 1 845 27 discriminator 2 view .LVU1216
	.loc 1 845 19 discriminator 2 view .LVU1217
	subs	r5, r5, #1
	bne	.L366
.LBE69:
	.loc 1 881 5 view .LVU1218
	ldr	r0, .L379+12
	bl	printUSART2
.LVL368:
	.loc 1 882 5 view .LVU1219
	ldr	r1, [sp, #12]
	ldr	r0, .L379+16
	bl	printUSART2
.LVL369:
	.loc 1 883 5 view .LVU1220
	ldr	r1, [sp, #8]
	ldr	r0, .L379+20
	.loc 1 884 1 is_stmt 0 view .LVU1221
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL370:
	.loc 1 883 5 view .LVU1222
	b	printUSART2
.LVL371:
.L378:
	.cfi_restore_state
.LBB70:
.LBB68:
	.loc 1 857 13 view .LVU1223
	ldr	r1, [sp, #4]
	ldr	r0, .L379+24
	strd	r2, r3, [sp, #16]
	.loc 1 854 13 is_stmt 1 view .LVU1224
	.loc 1 857 13 is_stmt 0 view .LVU1225
	bl	printUSART2
.LVL372:
	.loc 1 854 24 view .LVU1226
	ldr	r3, [sp, #12]
	.loc 1 856 25 view .LVU1227
	str	fp, [sp, #4]
.LVL373:
	.loc 1 854 24 view .LVU1228
	adds	r3, r3, #1
	str	r3, [sp, #12]
.LVL374:
	.loc 1 854 24 view .LVU1229
	ldrd	r2, r3, [sp, #16]
.LVL375:
	.loc 1 855 13 is_stmt 1 view .LVU1230
	.loc 1 856 13 view .LVU1231
	.loc 1 857 13 view .LVU1232
	b	.L363
.L380:
	.align	2
.L379:
	.word	.LC153
	.word	.LC154
	.word	1073873920
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	.LC155
	.word	1073872896
.LBE68:
.LBE70:
	.cfi_endproc
.LFE129:
	.size	check_frame_activity, .-check_frame_activity
	.section	.rodata.str1.4
	.align	2
.LC159:
	.ascii	"\012=== DETAILED FRAME CHECK ===\012\000"
	.align	2
.LC160:
	.ascii	"Frame %d start! Lines in previous frame: %d\012\000"
	.align	2
.LC161:
	.ascii	" Line %d PCLK count: %d\012\000"
	.align	2
.LC162:
	.ascii	"Monitoring done. Total frames: %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	check_frame_detailed
	.syntax unified
	.thumb
	.thumb_func
	.type	check_frame_detailed, %function
check_frame_detailed:
.LFB130:
	.loc 1 889 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 890 5 view .LVU1234
	.loc 1 889 1 is_stmt 0 view .LVU1235
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 890 5 view .LVU1236
	ldr	r0, .L399
	.loc 1 894 32 view .LVU1237
	ldr	r8, .L399+28
	.loc 1 895 13 view .LVU1238
	ldr	r5, .L399+4
	.loc 1 889 1 view .LVU1239
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 890 5 view .LVU1240
	bl	printUSART2
.LVL376:
	.loc 1 891 5 is_stmt 1 view .LVU1241
	ldr	r0, .L399+8
	bl	printUSART2
.LVL377:
	.loc 1 893 5 view .LVU1242
	.loc 1 893 32 is_stmt 0 view .LVU1243
	ldr	r3, .L399+12
	ldr	r7, [r3, #16]
	.loc 1 894 32 view .LVU1244
	ldr	r6, [r8, #16]
	.loc 1 895 32 view .LVU1245
	ldr	r4, [r8, #16]
	.loc 1 899 14 view .LVU1246
	movs	r3, #0
	.loc 1 893 13 view .LVU1247
	ubfx	r7, r7, #7, #1
.LVL378:
	.loc 1 894 5 is_stmt 1 view .LVU1248
	.loc 1 894 13 is_stmt 0 view .LVU1249
	ubfx	r6, r6, #4, #1
.LVL379:
	.loc 1 895 5 is_stmt 1 view .LVU1250
	.loc 1 895 13 is_stmt 0 view .LVU1251
	ubfx	r4, r4, #6, #1
.LVL380:
	.loc 1 897 5 is_stmt 1 view .LVU1252
	.loc 1 898 5 view .LVU1253
	.loc 1 899 5 view .LVU1254
	.loc 1 901 5 view .LVU1255
.LBB71:
	.loc 1 901 9 view .LVU1256
	.loc 1 901 27 view .LVU1257
.LBE71:
	.loc 1 899 14 is_stmt 0 view .LVU1258
	str	r3, [sp, #4]
	.loc 1 898 14 view .LVU1259
	str	r3, [sp, #8]
	.loc 1 897 14 view .LVU1260
	str	r3, [sp]
.LVL381:
.L385:
.LBB74:
.LBB72:
	.loc 1 903 9 is_stmt 1 view .LVU1261
	.loc 1 903 28 is_stmt 0 view .LVU1262
	ldr	r3, .L399+12
	ldr	r2, [r3, #16]
	.loc 1 904 28 view .LVU1263
	ldr	r3, [r8, #16]
	mov	fp, r6
	.loc 1 904 48 view .LVU1264
	and	r10, r3, #16
	.loc 1 904 17 view .LVU1265
	ubfx	r6, r3, #4, #1
.LVL382:
	.loc 1 904 17 view .LVU1266
	mov	r3, r4
	.loc 1 905 28 view .LVU1267
	ldr	r4, [r8, #16]
.LVL383:
	.loc 1 903 48 view .LVU1268
	and	r1, r2, #128
	mov	r0, r7
	.loc 1 905 48 view .LVU1269
	and	r9, r4, #64
	.loc 1 903 17 view .LVU1270
	ubfx	r7, r2, #7, #1
.LVL384:
	.loc 1 904 9 is_stmt 1 view .LVU1271
	.loc 1 905 9 view .LVU1272
	.loc 1 905 17 is_stmt 0 view .LVU1273
	ubfx	r4, r4, #6, #1
.LVL385:
	.loc 1 908 9 is_stmt 1 view .LVU1274
	.loc 1 908 11 is_stmt 0 view .LVU1275
	cbz	r1, .L382
	.loc 1 908 15 discriminator 1 view .LVU1276
	cbz	r0, .L397
.LVL386:
.L382:
	.loc 1 916 9 is_stmt 1 view .LVU1277
	.loc 1 916 11 is_stmt 0 view .LVU1278
	cmp	r10, #0
	beq	.L383
	.loc 1 916 15 discriminator 1 view .LVU1279
	cmp	fp, #0
	beq	.L398
.LVL387:
.L383:
	.loc 1 924 9 is_stmt 1 view .LVU1280
	.loc 1 924 11 is_stmt 0 view .LVU1281
	cmp	r9, #0
	beq	.L384
	.loc 1 926 13 is_stmt 1 discriminator 1 view .LVU1282
	.loc 1 924 15 is_stmt 0 discriminator 1 view .LVU1283
	cbnz	r3, .L384
	.loc 1 926 28 view .LVU1284
	ldr	r3, [sp]
	adds	r3, r3, #1
	str	r3, [sp]
.LVL388:
.L384:
	.loc 1 929 9 is_stmt 1 discriminator 2 view .LVU1285
	.loc 1 930 9 discriminator 2 view .LVU1286
	.loc 1 931 9 discriminator 2 view .LVU1287
	.loc 1 931 9 is_stmt 0 discriminator 2 view .LVU1288
.LBE72:
	.loc 1 901 39 is_stmt 1 discriminator 2 view .LVU1289
	.loc 1 901 27 discriminator 2 view .LVU1290
	subs	r5, r5, #1
	bne	.L385
.LBE74:
	.loc 1 934 5 view .LVU1291
	ldr	r0, .L399+16
	ldr	r1, [sp, #8]
	.loc 1 935 1 is_stmt 0 view .LVU1292
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL389:
	.loc 1 935 1 view .LVU1293
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL390:
	.loc 1 934 5 view .LVU1294
	b	printUSART2
.LVL391:
.L397:
	.cfi_restore_state
	.loc 1 934 5 view .LVU1295
	str	r3, [sp, #12]
.LBB75:
.LBB73:
	.loc 1 910 13 is_stmt 1 view .LVU1296
	.loc 1 910 24 is_stmt 0 view .LVU1297
	ldr	r3, [sp, #8]
	.loc 1 911 13 view .LVU1298
	ldr	r2, [sp, #4]
	.loc 1 912 24 view .LVU1299
	str	r0, [sp, #4]
.LVL392:
	.loc 1 910 24 view .LVU1300
	adds	r3, r3, #1
	.loc 1 911 13 view .LVU1301
	mov	r1, r3
	ldr	r0, .L399+20
	.loc 1 910 24 view .LVU1302
	str	r3, [sp, #8]
.LVL393:
	.loc 1 911 13 is_stmt 1 view .LVU1303
	bl	printUSART2
.LVL394:
	.loc 1 911 13 is_stmt 0 view .LVU1304
	ldr	r3, [sp, #12]
	.loc 1 912 13 is_stmt 1 view .LVU1305
.LVL395:
	.loc 1 912 13 is_stmt 0 view .LVU1306
	b	.L382
.LVL396:
.L398:
	.loc 1 912 13 view .LVU1307
	str	r3, [sp, #12]
	.loc 1 918 13 is_stmt 1 view .LVU1308
	.loc 1 918 23 is_stmt 0 view .LVU1309
	ldr	r3, [sp, #4]
	.loc 1 919 13 view .LVU1310
	ldr	r2, [sp]
	ldr	r0, .L399+24
	.loc 1 918 23 view .LVU1311
	adds	r3, r3, #1
	.loc 1 919 13 view .LVU1312
	mov	r1, r3
	.loc 1 918 23 view .LVU1313
	str	r3, [sp, #4]
.LVL397:
	.loc 1 919 13 is_stmt 1 view .LVU1314
	bl	printUSART2
.LVL398:
	.loc 1 920 13 view .LVU1315
	.loc 1 920 29 is_stmt 0 view .LVU1316
	ldr	r3, [sp, #12]
	str	fp, [sp]
	b	.L383
.L400:
	.align	2
.L399:
	.word	.LC159
	.word	2000000
	.word	.LC154
	.word	1073873920
	.word	.LC162
	.word	.LC160
	.word	.LC161
	.word	1073872896
.LBE73:
.LBE75:
	.cfi_endproc
.LFE130:
	.size	check_frame_detailed, .-check_frame_detailed
	.section	.rodata.str1.4
	.align	2
.LC163:
	.ascii	"ON\012\000"
	.align	2
.LC164:
	.ascii	"OFF\012\000"
	.align	2
.LC165:
	.ascii	"Memory-to-peripheral / Memory-to-memory\012\000"
	.align	2
.LC166:
	.ascii	"Peripheral-to-memory\012\000"
	.align	2
.LC167:
	.ascii	"ENABLED\012\000"
	.align	2
.LC168:
	.ascii	"DISABLED\012\000"
	.align	2
.LC169:
	.ascii	"ON\000"
	.align	2
.LC170:
	.ascii	"OFF\000"
	.align	2
.LC171:
	.ascii	"=== DMA2 Stream1 Status Check ===\012\000"
	.align	2
.LC172:
	.ascii	"EN bit: \000"
	.align	2
.LC173:
	.ascii	"Direction: \000"
	.align	2
.LC174:
	.ascii	"MINC (Memory increment): \000"
	.align	2
.LC175:
	.ascii	"PINC (Peripheral increment): \000"
	.align	2
.LC176:
	.ascii	"MSIZE: \000"
	.align	2
.LC177:
	.ascii	"8-bit\012\000"
	.align	2
.LC178:
	.ascii	"16-bit\012\000"
	.align	2
.LC179:
	.ascii	"32-bit\012\000"
	.align	2
.LC180:
	.ascii	"Reserved\012\000"
	.align	2
.LC181:
	.ascii	"PSIZE: \000"
	.align	2
.LC182:
	.ascii	"NDTR (Number of elements): %d\012\000"
	.align	2
.LC183:
	.ascii	"M0AR (Memory address): 0x%xw\012\000"
	.align	2
.LC184:
	.ascii	"PAR  (Peripheral address): 0x%xw\012\000"
	.align	2
.LC185:
	.ascii	"Interrupts: TCIE=\000"
	.align	2
.LC186:
	.ascii	", HTIE=\000"
	.align	2
.LC187:
	.ascii	", TEIE=\000"
	.align	2
.LC188:
	.ascii	", DMEIE=\000"
	.align	2
.LC189:
	.ascii	"Direct mode (DMDIS): \000"
	.align	2
.LC190:
	.ascii	"=== DMA2 Stream1 configuration check DONE ===\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	checkDMA2_Stream1_status
	.syntax unified
	.thumb
	.thumb_func
	.type	checkDMA2_Stream1_status, %function
checkDMA2_Stream1_status:
.LFB131:
	.loc 1 940 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 941 5 view .LVU1318
	.loc 1 940 1 is_stmt 0 view .LVU1319
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 941 5 view .LVU1320
	ldr	r0, .L431
	.loc 1 945 30 view .LVU1321
	ldr	r4, .L431+4
	.loc 1 953 5 view .LVU1322
	ldr	r6, .L431+8
	ldr	r5, .L431+12
	.loc 1 941 5 view .LVU1323
	bl	printUSART2
.LVL399:
	.loc 1 944 5 is_stmt 1 view .LVU1324
	ldr	r0, .L431+16
	bl	printUSART2
.LVL400:
	.loc 1 945 5 view .LVU1325
	.loc 1 945 30 is_stmt 0 view .LVU1326
	ldr	r2, [r4, #40]
	.loc 1 945 5 view .LVU1327
	ldr	r3, .L431+20
	ldr	r0, .L431+24
	tst	r2, #1
	it	ne
	movne	r0, r3
	bl	printUSART2
.LVL401:
	.loc 1 948 5 is_stmt 1 view .LVU1328
	ldr	r0, .L431+28
	bl	printUSART2
.LVL402:
	.loc 1 949 5 view .LVU1329
	.loc 1 949 30 is_stmt 0 view .LVU1330
	ldr	r2, [r4, #40]
	.loc 1 949 5 view .LVU1331
	ldr	r3, .L431+32
	ldr	r0, .L431+36
	tst	r2, #192
	it	ne
	movne	r0, r3
	bl	printUSART2
.LVL403:
	.loc 1 952 5 is_stmt 1 view .LVU1332
	ldr	r0, .L431+40
	bl	printUSART2
.LVL404:
	.loc 1 953 5 view .LVU1333
	.loc 1 953 30 is_stmt 0 view .LVU1334
	ldr	r3, [r4, #40]
	.loc 1 953 5 view .LVU1335
	tst	r3, #1024
	ite	eq
	moveq	r0, r6
	movne	r0, r5
	bl	printUSART2
.LVL405:
	.loc 1 956 5 is_stmt 1 view .LVU1336
	ldr	r0, .L431+44
	bl	printUSART2
.LVL406:
	.loc 1 957 5 view .LVU1337
	.loc 1 957 30 is_stmt 0 view .LVU1338
	ldr	r3, [r4, #40]
	.loc 1 957 5 view .LVU1339
	tst	r3, #512
	ite	eq
	moveq	r0, r6
	movne	r0, r5
	bl	printUSART2
.LVL407:
	.loc 1 960 5 is_stmt 1 view .LVU1340
	ldr	r0, .L431+48
	bl	printUSART2
.LVL408:
	.loc 1 961 5 view .LVU1341
	.loc 1 961 26 is_stmt 0 view .LVU1342
	ldr	r3, [r4, #40]
	.loc 1 961 49 view .LVU1343
	ubfx	r3, r3, #13, #2
	.loc 1 961 5 view .LVU1344
	cmp	r3, #1
	beq	.L406
	cmp	r3, #2
	beq	.L407
	cmp	r3, #0
	beq	.L429
	.loc 1 965 18 is_stmt 1 view .LVU1345
	ldr	r0, .L431+52
	bl	printUSART2
.LVL409:
	.loc 1 965 45 view .LVU1346
.L409:
	.loc 1 967 5 view .LVU1347
	ldr	r0, .L431+56
	bl	printUSART2
.LVL410:
	.loc 1 968 5 view .LVU1348
	.loc 1 968 26 is_stmt 0 view .LVU1349
	ldr	r3, .L431+4
	ldr	r3, [r3, #40]
	.loc 1 968 49 view .LVU1350
	ubfx	r3, r3, #11, #2
	.loc 1 968 5 view .LVU1351
	cmp	r3, #1
	beq	.L410
	cmp	r3, #2
	beq	.L411
	cmp	r3, #0
	beq	.L430
	.loc 1 972 18 is_stmt 1 view .LVU1352
	ldr	r0, .L431+52
	bl	printUSART2
.LVL411:
	.loc 1 972 45 view .LVU1353
.L413:
	.loc 1 976 5 view .LVU1354
	.loc 1 976 63 is_stmt 0 view .LVU1355
	ldr	r4, .L431+4
	.loc 1 976 5 view .LVU1356
	ldr	r0, .L431+60
	.loc 1 976 63 view .LVU1357
	ldr	r1, [r4, #44]
	.loc 1 985 5 view .LVU1358
	ldr	r6, .L431+64
	ldr	r5, .L431+68
	.loc 1 976 5 view .LVU1359
	bl	printUSART2
.LVL412:
	.loc 1 979 5 is_stmt 1 view .LVU1360
	.loc 1 979 62 is_stmt 0 view .LVU1361
	ldr	r1, [r4, #52]
	.loc 1 979 5 view .LVU1362
	ldr	r0, .L431+72
	bl	printUSART2
.LVL413:
	.loc 1 981 5 is_stmt 1 view .LVU1363
	.loc 1 981 66 is_stmt 0 view .LVU1364
	ldr	r1, [r4, #48]
	.loc 1 981 5 view .LVU1365
	ldr	r0, .L431+76
	bl	printUSART2
.LVL414:
	.loc 1 984 5 is_stmt 1 view .LVU1366
	ldr	r0, .L431+80
	bl	printUSART2
.LVL415:
	.loc 1 985 5 view .LVU1367
	.loc 1 985 30 is_stmt 0 view .LVU1368
	ldr	r3, [r4, #40]
	.loc 1 985 5 view .LVU1369
	tst	r3, #16
	ite	eq
	moveq	r0, r6
	movne	r0, r5
	bl	printUSART2
.LVL416:
	.loc 1 986 5 is_stmt 1 view .LVU1370
	ldr	r0, .L431+84
	bl	printUSART2
.LVL417:
	.loc 1 987 5 view .LVU1371
	.loc 1 987 30 is_stmt 0 view .LVU1372
	ldr	r3, [r4, #40]
	.loc 1 987 5 view .LVU1373
	tst	r3, #8
	ite	eq
	moveq	r0, r6
	movne	r0, r5
	bl	printUSART2
.LVL418:
	.loc 1 988 5 is_stmt 1 view .LVU1374
	ldr	r0, .L431+88
	bl	printUSART2
.LVL419:
	.loc 1 989 5 view .LVU1375
	.loc 1 989 30 is_stmt 0 view .LVU1376
	ldr	r3, [r4, #40]
	.loc 1 989 5 view .LVU1377
	tst	r3, #4
	ite	eq
	moveq	r0, r6
	movne	r0, r5
	bl	printUSART2
.LVL420:
	.loc 1 990 5 is_stmt 1 view .LVU1378
	ldr	r0, .L431+92
	bl	printUSART2
.LVL421:
	.loc 1 991 5 view .LVU1379
	.loc 1 991 30 is_stmt 0 view .LVU1380
	ldr	r2, [r4, #40]
	.loc 1 991 5 view .LVU1381
	ldr	r3, .L431+20
	ldr	r0, .L431+24
	tst	r2, #2
	it	ne
	movne	r0, r3
	bl	printUSART2
.LVL422:
	.loc 1 994 5 is_stmt 1 view .LVU1382
	ldr	r0, .L431+96
	bl	printUSART2
.LVL423:
	.loc 1 995 5 view .LVU1383
	.loc 1 995 30 is_stmt 0 view .LVU1384
	ldr	r2, [r4, #60]
	.loc 1 995 5 view .LVU1385
	ldr	r3, .L431+8
	ldr	r0, .L431+12
	tst	r2, #4
	it	ne
	movne	r0, r3
	bl	printUSART2
.LVL424:
	.loc 1 997 5 is_stmt 1 view .LVU1386
	.loc 1 998 1 is_stmt 0 view .LVU1387
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 997 5 view .LVU1388
	ldr	r0, .L431+100
	b	printUSART2
.LVL425:
.L406:
	.cfi_restore_state
	.loc 1 963 17 is_stmt 1 view .LVU1389
	ldr	r0, .L431+104
	bl	printUSART2
.LVL426:
	.loc 1 963 42 view .LVU1390
	b	.L409
.L430:
	.loc 1 969 17 view .LVU1391
	ldr	r0, .L431+108
	bl	printUSART2
.LVL427:
	.loc 1 969 41 view .LVU1392
	b	.L413
.L411:
	.loc 1 971 17 view .LVU1393
	ldr	r0, .L431+112
	bl	printUSART2
.LVL428:
	.loc 1 971 42 view .LVU1394
	b	.L413
.L410:
	.loc 1 970 17 view .LVU1395
	ldr	r0, .L431+104
	bl	printUSART2
.LVL429:
	.loc 1 970 42 view .LVU1396
	b	.L413
.L429:
	.loc 1 962 17 view .LVU1397
	ldr	r0, .L431+108
	bl	printUSART2
.LVL430:
	.loc 1 962 41 view .LVU1398
	b	.L409
.L407:
	.loc 1 964 17 view .LVU1399
	ldr	r0, .L431+112
	bl	printUSART2
.LVL431:
	.loc 1 964 42 view .LVU1400
	b	.L409
.L432:
	.align	2
.L431:
	.word	.LC171
	.word	1073898496
	.word	.LC168
	.word	.LC167
	.word	.LC172
	.word	.LC163
	.word	.LC164
	.word	.LC173
	.word	.LC165
	.word	.LC166
	.word	.LC174
	.word	.LC175
	.word	.LC176
	.word	.LC180
	.word	.LC181
	.word	.LC182
	.word	.LC170
	.word	.LC169
	.word	.LC183
	.word	.LC184
	.word	.LC185
	.word	.LC186
	.word	.LC187
	.word	.LC188
	.word	.LC189
	.word	.LC190
	.word	.LC178
	.word	.LC177
	.word	.LC179
	.cfi_endproc
.LFE131:
	.size	checkDMA2_Stream1_status, .-checkDMA2_Stream1_status
	.section	.rodata.str1.4
	.align	2
.LC192:
	.ascii	"Reg %s OK (0x%xb)\012\000"
	.align	2
.LC193:
	.ascii	"Reg %s MISMATCH! Expected 0x%xb, Read 0x%xb\012\000"
	.align	2
.LC194:
	.ascii	"-> OV7670 verifikacija (custom QQVGA sa resetom i c"
	.ascii	"lock) zavrsena!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_VerifyRegisters_Custom
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_VerifyRegisters_Custom, %function
OV7670_VerifyRegisters_Custom:
.LFB132:
	.loc 1 1003 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1004 5 view .LVU1402
	.loc 1 1003 1 is_stmt 0 view .LVU1403
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #120
	.cfi_def_cfa_offset 144
	.loc 1 1008 7 view .LVU1404
	ldr	r1, .L440
.LBB76:
	.loc 1 1036 13 view .LVU1405
	ldr	r7, .L440+4
	.loc 1 1032 13 view .LVU1406
	ldr	r8, .L440+12
.LBE76:
	.loc 1 1008 7 view .LVU1407
	movs	r2, #112
	add	r0, sp, #8
	bl	memcpy
.LVL432:
	.loc 1 1025 5 is_stmt 1 view .LVU1408
	.loc 1 1026 5 view .LVU1409
.LBB77:
	.loc 1 1026 10 view .LVU1410
	.loc 1 1026 23 view .LVU1411
	add	r4, sp, #8
	add	r6, sp, #120
	.loc 1 1028 13 is_stmt 0 view .LVU1412
	movs	r5, #0
	b	.L436
.LVL433:
.L434:
	.loc 1 1036 13 view .LVU1413
	bl	printUSART2
.LVL434:
	.loc 1 1039 9 is_stmt 1 view .LVU1414
	.loc 1 1026 23 is_stmt 0 view .LVU1415
	adds	r4, r4, #8
	.loc 1 1039 9 view .LVU1416
	movs	r0, #10
	bl	delay_ms
.LVL435:
	.loc 1 1026 66 is_stmt 1 view .LVU1417
	.loc 1 1026 23 view .LVU1418
	cmp	r4, r6
	beq	.L439
.L436:
	.loc 1 1028 9 view .LVU1419
	.loc 1 1029 9 is_stmt 0 view .LVU1420
	ldrb	r0, [r4]	@ zero_extendqisi2
	.loc 1 1028 13 view .LVU1421
	strb	r5, [sp, #7]
	.loc 1 1029 9 is_stmt 1 view .LVU1422
	add	r1, sp, #7
	movs	r2, #1
	bl	readI2C
.LVL436:
	.loc 1 1030 9 view .LVU1423
	.loc 1 1036 13 view .LVU1424
	.loc 1 1030 32 is_stmt 0 view .LVU1425
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	.loc 1 1030 17 view .LVU1426
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 1032 13 view .LVU1427
	ldr	r1, [r4, #4]
	.loc 1 1030 12 view .LVU1428
	cmp	r2, r3
	.loc 1 1036 13 view .LVU1429
	mov	r0, r7
	.loc 1 1030 12 view .LVU1430
	bne	.L434
	.loc 1 1032 13 is_stmt 1 view .LVU1431
	mov	r0, r8
	bl	printUSART2
.LVL437:
	.loc 1 1039 9 view .LVU1432
	.loc 1 1026 23 is_stmt 0 view .LVU1433
	adds	r4, r4, #8
	.loc 1 1039 9 view .LVU1434
	movs	r0, #10
	bl	delay_ms
.LVL438:
	.loc 1 1026 66 is_stmt 1 view .LVU1435
	.loc 1 1026 23 view .LVU1436
	cmp	r4, r6
	bne	.L436
.L439:
.LBE77:
	.loc 1 1042 5 view .LVU1437
	ldr	r0, .L440+8
	bl	printUSART2
.LVL439:
	.loc 1 1043 1 is_stmt 0 view .LVU1438
	add	sp, sp, #120
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L441:
	.align	2
.L440:
	.word	.LANCHOR0+132
	.word	.LC193
	.word	.LC194
	.word	.LC192
	.cfi_endproc
.LFE132:
	.size	OV7670_VerifyRegisters_Custom, .-OV7670_VerifyRegisters_Custom
	.section	.rodata.str1.4
	.align	2
.LC195:
	.ascii	"\012=== DATA PINS & SYNC PINS EDGE ACTIVITY CHECK ="
	.ascii	"==\012\000"
	.align	2
.LC196:
	.ascii	"D0 (PA9) edges: %d\012\000"
	.align	2
.LC197:
	.ascii	"D1 (PA10) edges: %d\012\000"
	.align	2
.LC198:
	.ascii	"D2 (PC8) edges: %d\012\000"
	.align	2
.LC199:
	.ascii	"D3 (PC9) edges: %d\012\000"
	.align	2
.LC200:
	.ascii	"D4 (PE4) edges: %d\012\000"
	.align	2
.LC201:
	.ascii	"D5 (PB6) edges: %d\012\000"
	.align	2
.LC202:
	.ascii	"D6 (PE5) edges: %d\012\000"
	.align	2
.LC203:
	.ascii	"D7 (PE6) edges: %d\012\000"
	.align	2
.LC204:
	.ascii	"HSYNC edges: %d\012\000"
	.align	2
.LC205:
	.ascii	"VSYNC edges: %d\012\000"
	.align	2
.LC206:
	.ascii	"PCLK edges: %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	check_data_pins_activity_edges
	.syntax unified
	.thumb
	.thumb_func
	.type	check_data_pins_activity_edges, %function
check_data_pins_activity_edges:
.LFB133:
	.loc 1 1048 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1049 5 view .LVU1440
	.loc 1 1048 1 is_stmt 0 view .LVU1441
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 1049 5 view .LVU1442
	ldr	r0, .L490
.LBB78:
.LBB79:
	.loc 1 1065 29 view .LVU1443
	ldr	r9, .L490+56
.LBE79:
.LBE78:
	.loc 1 1048 1 view .LVU1444
	sub	sp, sp, #140
	.cfi_def_cfa_offset 176
	.loc 1 1058 46 view .LVU1445
	mov	r10, #0
	.loc 1 1049 5 view .LVU1446
	bl	printUSART2
.LVL440:
	.loc 1 1050 5 is_stmt 1 view .LVU1447
	ldr	r0, .L490+4
	bl	printUSART2
.LVL441:
	.loc 1 1052 5 view .LVU1448
	.loc 1 1053 5 view .LVU1449
	.loc 1 1054 5 view .LVU1450
	.loc 1 1056 5 view .LVU1451
	.loc 1 1057 5 view .LVU1452
	.loc 1 1058 5 view .LVU1453
	.loc 1 1060 5 view .LVU1454
.LBB81:
	.loc 1 1060 9 view .LVU1455
	.loc 1 1060 22 view .LVU1456
.LBE81:
	.loc 1 1058 14 is_stmt 0 view .LVU1457
	strd	r10, r10, [sp, #12]
	.loc 1 1054 31 view .LVU1458
	strd	r10, r10, [sp, #128]
	.loc 1 1053 56 view .LVU1459
	strd	r10, r10, [sp, #120]
	.loc 1 1053 28 view .LVU1460
	strd	r10, r10, [sp, #112]
	.loc 1 1052 56 view .LVU1461
	strd	r10, r10, [sp, #104]
	.loc 1 1052 28 view .LVU1462
	strd	r10, r10, [sp, #96]
	.loc 1 1050 5 view .LVU1463
	mov	r3, #1000
	str	r3, [sp, #4]
	.loc 1 1057 53 view .LVU1464
	str	r10, [sp, #8]
	.loc 1 1057 40 view .LVU1465
	mov	r4, r10
	.loc 1 1057 27 view .LVU1466
	mov	r5, r10
	.loc 1 1057 14 view .LVU1467
	mov	r6, r10
	.loc 1 1056 53 view .LVU1468
	mov	r7, r10
	.loc 1 1056 27 view .LVU1469
	mov	r8, r10
	.loc 1 1056 14 view .LVU1470
	mov	fp, r10
	.loc 1 1052 14 view .LVU1471
	str	r10, [sp, #92]
	str	r10, [sp, #20]
.LVL442:
.L454:
.LBB82:
.LBB80:
	.loc 1 1061 9 is_stmt 1 view .LVU1472
	ldr	r3, [sp, #20]
	str	r3, [sp, #64]
	ldr	r3, [sp, #8]
	str	r3, [sp, #60]
	ldr	r3, [sp, #12]
	str	r3, [sp, #56]
	ldr	r3, [sp, #16]
	strd	fp, r8, [sp, #84]
	strd	r10, r3, [sp, #48]
	.loc 1 1061 29 is_stmt 0 view .LVU1473
	ldr	r8, .L490+60
.LVL443:
	.loc 1 1063 29 view .LVU1474
	ldr	r3, .L490+8
	.loc 1 1061 29 view .LVU1475
	ldr	lr, [r8, #16]
	.loc 1 1062 29 view .LVU1476
	ldr	fp, [r8, #16]
.LVL444:
	.loc 1 1062 29 view .LVU1477
	strd	r6, r7, [sp, #76]
	.loc 1 1066 29 view .LVU1478
	sub	r3, r3, #1024
	.loc 1 1063 29 view .LVU1479
	ldr	r7, [r3, #1040]
.LVL445:
	.loc 1 1064 29 view .LVU1480
	ldr	r6, [r3, #1040]
.LVL446:
	.loc 1 1064 29 view .LVU1481
	strd	r4, r5, [sp, #68]
	.loc 1 1065 29 view .LVU1482
	ldr	r5, [r9, #16]
.LVL447:
	.loc 1 1066 29 view .LVU1483
	ldr	r4, [r3, #16]
.LVL448:
	.loc 1 1067 29 view .LVU1484
	ldr	r0, [r9, #16]
	.loc 1 1068 29 view .LVU1485
	ldr	r1, [r9, #16]
	.loc 1 1070 32 view .LVU1486
	ldr	r2, [r8, #16]
	.loc 1 1071 32 view .LVU1487
	ldr	r3, [r3, #16]
	str	r3, [sp, #16]
.LVL449:
	.loc 1 1061 57 view .LVU1488
	and	r3, lr, #512
	.loc 1 1072 31 view .LVU1489
	ldr	r10, [r8, #16]
.LVL450:
	.loc 1 1061 57 view .LVU1490
	str	r3, [sp, #24]
	.loc 1 1064 57 view .LVU1491
	and	r3, r6, #512
	str	r3, [sp, #28]
	.loc 1 1065 57 view .LVU1492
	and	r3, r5, #16
	str	r3, [sp, #32]
	.loc 1 1066 57 view .LVU1493
	and	r3, r4, #64
	str	r3, [sp, #36]
	.loc 1 1067 57 view .LVU1494
	and	r3, r0, #32
	ubfx	r0, r0, #5, #1
	str	r3, [sp, #40]
	str	r0, [sp, #20]
.LVL451:
	.loc 1 1071 60 view .LVU1495
	ldr	r3, [sp, #16]
	.loc 1 1068 57 view .LVU1496
	and	r0, r1, #64
	ubfx	r1, r1, #6, #1
	str	r1, [sp, #8]
.LVL452:
	.loc 1 1070 60 view .LVU1497
	and	r1, r2, #16
	ubfx	r2, r2, #4, #1
	str	r2, [sp, #12]
.LVL453:
	.loc 1 1071 60 view .LVU1498
	and	r2, r3, #128
	ubfx	r3, r3, #7, #1
	str	r3, [sp, #16]
	.loc 1 1072 59 view .LVU1499
	and	r3, r10, #64
	str	r3, [sp, #44]
	.loc 1 1075 11 view .LVU1500
	ldr	r3, [sp, #24]
	.loc 1 1061 57 view .LVU1501
	ubfx	r8, lr, #9, #1
.LVL454:
	.loc 1 1062 9 is_stmt 1 view .LVU1502
	.loc 1 1063 57 is_stmt 0 view .LVU1503
	and	ip, r7, #256
	.loc 1 1062 58 view .LVU1504
	and	lr, fp, #1024
	.loc 1 1063 57 view .LVU1505
	ubfx	r7, r7, #8, #1
	.loc 1 1062 58 view .LVU1506
	ubfx	fp, fp, #10, #1
.LVL455:
	.loc 1 1063 9 is_stmt 1 view .LVU1507
	.loc 1 1064 9 view .LVU1508
	.loc 1 1064 57 is_stmt 0 view .LVU1509
	ubfx	r6, r6, #9, #1
.LVL456:
	.loc 1 1065 9 is_stmt 1 view .LVU1510
	.loc 1 1065 57 is_stmt 0 view .LVU1511
	ubfx	r5, r5, #4, #1
.LVL457:
	.loc 1 1066 9 is_stmt 1 view .LVU1512
	.loc 1 1066 57 is_stmt 0 view .LVU1513
	ubfx	r4, r4, #6, #1
.LVL458:
	.loc 1 1067 9 is_stmt 1 view .LVU1514
	.loc 1 1068 9 view .LVU1515
	.loc 1 1070 9 view .LVU1516
	.loc 1 1071 9 view .LVU1517
	.loc 1 1072 9 view .LVU1518
	.loc 1 1072 59 is_stmt 0 view .LVU1519
	ubfx	r10, r10, #6, #1
.LVL459:
	.loc 1 1075 9 is_stmt 1 view .LVU1520
	.loc 1 1075 11 is_stmt 0 view .LVU1521
	cbz	r3, .L443
	.loc 1 1075 15 discriminator 1 view .LVU1522
	ldr	r3, [sp, #88]
	cbnz	r3, .L443
	.loc 1 1075 28 is_stmt 1 discriminator 2 view .LVU1523
	.loc 1 1075 36 is_stmt 0 discriminator 2 view .LVU1524
	ldr	r3, [sp, #92]
	adds	r3, r3, #1
	str	r3, [sp, #92]
.LVL460:
.L443:
	.loc 1 1076 9 is_stmt 1 view .LVU1525
	.loc 1 1076 11 is_stmt 0 view .LVU1526
	cmp	lr, #0
	beq	.L444
	.loc 1 1076 15 discriminator 1 view .LVU1527
	ldr	r3, [sp, #84]
	cbnz	r3, .L444
	.loc 1 1076 28 is_stmt 1 discriminator 2 view .LVU1528
	.loc 1 1076 36 is_stmt 0 discriminator 2 view .LVU1529
	ldr	r3, [sp, #96]
	adds	r3, r3, #1
	str	r3, [sp, #96]
.LVL461:
.L444:
	.loc 1 1077 9 is_stmt 1 view .LVU1530
	.loc 1 1077 11 is_stmt 0 view .LVU1531
	cmp	ip, #0
	beq	.L445
	.loc 1 1077 15 discriminator 1 view .LVU1532
	ldr	r3, [sp, #80]
	cbnz	r3, .L445
	.loc 1 1077 28 is_stmt 1 discriminator 2 view .LVU1533
	.loc 1 1077 36 is_stmt 0 discriminator 2 view .LVU1534
	ldr	r3, [sp, #100]
	adds	r3, r3, #1
	str	r3, [sp, #100]
.LVL462:
.L445:
	.loc 1 1078 9 is_stmt 1 view .LVU1535
	.loc 1 1078 11 is_stmt 0 view .LVU1536
	ldr	r3, [sp, #28]
	cbz	r3, .L446
	.loc 1 1078 15 discriminator 1 view .LVU1537
	ldr	r3, [sp, #76]
	cbnz	r3, .L446
	.loc 1 1078 28 is_stmt 1 discriminator 2 view .LVU1538
	.loc 1 1078 36 is_stmt 0 discriminator 2 view .LVU1539
	ldr	r3, [sp, #104]
	adds	r3, r3, #1
	str	r3, [sp, #104]
.LVL463:
.L446:
	.loc 1 1079 9 is_stmt 1 view .LVU1540
	.loc 1 1079 11 is_stmt 0 view .LVU1541
	ldr	r3, [sp, #32]
	cbz	r3, .L447
	.loc 1 1079 15 discriminator 1 view .LVU1542
	ldr	r3, [sp, #72]
	cbnz	r3, .L447
	.loc 1 1079 28 is_stmt 1 discriminator 2 view .LVU1543
	.loc 1 1079 36 is_stmt 0 discriminator 2 view .LVU1544
	ldr	r3, [sp, #108]
	adds	r3, r3, #1
	str	r3, [sp, #108]
.LVL464:
.L447:
	.loc 1 1080 9 is_stmt 1 view .LVU1545
	.loc 1 1080 11 is_stmt 0 view .LVU1546
	ldr	r3, [sp, #36]
	cbz	r3, .L448
	.loc 1 1080 15 discriminator 1 view .LVU1547
	ldr	r3, [sp, #68]
	cbnz	r3, .L448
	.loc 1 1080 28 is_stmt 1 discriminator 2 view .LVU1548
	.loc 1 1080 36 is_stmt 0 discriminator 2 view .LVU1549
	ldr	r3, [sp, #112]
	adds	r3, r3, #1
	str	r3, [sp, #112]
.LVL465:
.L448:
	.loc 1 1081 9 is_stmt 1 view .LVU1550
	.loc 1 1081 11 is_stmt 0 view .LVU1551
	ldr	r3, [sp, #40]
	cbz	r3, .L449
	.loc 1 1081 15 discriminator 1 view .LVU1552
	ldr	r3, [sp, #64]
	cbnz	r3, .L449
	.loc 1 1081 28 is_stmt 1 discriminator 2 view .LVU1553
	.loc 1 1081 36 is_stmt 0 discriminator 2 view .LVU1554
	ldr	r3, [sp, #116]
	adds	r3, r3, #1
	str	r3, [sp, #116]
.LVL466:
.L449:
	.loc 1 1082 9 is_stmt 1 view .LVU1555
	.loc 1 1082 11 is_stmt 0 view .LVU1556
	cbz	r0, .L450
	.loc 1 1082 15 discriminator 1 view .LVU1557
	ldr	r3, [sp, #60]
	cbnz	r3, .L450
	.loc 1 1082 28 is_stmt 1 discriminator 2 view .LVU1558
	.loc 1 1082 36 is_stmt 0 discriminator 2 view .LVU1559
	ldr	r3, [sp, #120]
	adds	r3, r3, #1
	str	r3, [sp, #120]
.LVL467:
.L450:
	.loc 1 1084 9 is_stmt 1 view .LVU1560
	.loc 1 1084 11 is_stmt 0 view .LVU1561
	cbz	r1, .L451
	.loc 1 1084 18 discriminator 1 view .LVU1562
	ldr	r3, [sp, #56]
	cbnz	r3, .L451
	.loc 1 1084 34 is_stmt 1 discriminator 2 view .LVU1563
	.loc 1 1084 45 is_stmt 0 discriminator 2 view .LVU1564
	ldr	r3, [sp, #124]
	adds	r3, r3, #1
	str	r3, [sp, #124]
.LVL468:
.L451:
	.loc 1 1085 9 is_stmt 1 view .LVU1565
	.loc 1 1085 11 is_stmt 0 view .LVU1566
	cbz	r2, .L452
	.loc 1 1085 18 discriminator 1 view .LVU1567
	ldr	r3, [sp, #52]
	cbnz	r3, .L452
	.loc 1 1085 34 is_stmt 1 discriminator 2 view .LVU1568
	.loc 1 1085 45 is_stmt 0 discriminator 2 view .LVU1569
	ldr	r3, [sp, #128]
	adds	r3, r3, #1
	str	r3, [sp, #128]
.LVL469:
.L452:
	.loc 1 1086 9 is_stmt 1 view .LVU1570
	.loc 1 1086 11 is_stmt 0 view .LVU1571
	ldr	r3, [sp, #44]
	cbz	r3, .L453
	.loc 1 1086 17 discriminator 1 view .LVU1572
	ldr	r3, [sp, #48]
	cbnz	r3, .L453
	.loc 1 1086 32 is_stmt 1 discriminator 2 view .LVU1573
	.loc 1 1086 42 is_stmt 0 discriminator 2 view .LVU1574
	ldr	r3, [sp, #132]
	adds	r3, r3, #1
	str	r3, [sp, #132]
.LVL470:
.L453:
	.loc 1 1089 9 is_stmt 1 discriminator 2 view .LVU1575
	.loc 1 1089 23 discriminator 2 view .LVU1576
	.loc 1 1089 37 discriminator 2 view .LVU1577
	.loc 1 1089 51 discriminator 2 view .LVU1578
	.loc 1 1090 9 discriminator 2 view .LVU1579
	.loc 1 1090 23 discriminator 2 view .LVU1580
	.loc 1 1090 37 discriminator 2 view .LVU1581
	.loc 1 1090 51 discriminator 2 view .LVU1582
	.loc 1 1091 9 discriminator 2 view .LVU1583
	.loc 1 1091 29 discriminator 2 view .LVU1584
	.loc 1 1091 49 discriminator 2 view .LVU1585
	.loc 1 1093 9 discriminator 2 view .LVU1586
	movs	r0, #1
	bl	delay_ms
.LVL471:
.LBE80:
	.loc 1 1060 31 discriminator 2 view .LVU1587
	.loc 1 1060 22 discriminator 2 view .LVU1588
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	bne	.L454
.LBE82:
	.loc 1 1096 5 view .LVU1589
	ldr	r1, [sp, #92]
	ldr	r0, .L490+12
	bl	printUSART2
.LVL472:
	.loc 1 1097 5 view .LVU1590
	ldr	r1, [sp, #96]
	ldr	r0, .L490+16
	bl	printUSART2
.LVL473:
	.loc 1 1098 5 view .LVU1591
	ldr	r1, [sp, #100]
	ldr	r0, .L490+20
	bl	printUSART2
.LVL474:
	.loc 1 1099 5 view .LVU1592
	ldr	r1, [sp, #104]
	ldr	r0, .L490+24
	bl	printUSART2
.LVL475:
	.loc 1 1100 5 view .LVU1593
	ldr	r1, [sp, #108]
	ldr	r0, .L490+28
	bl	printUSART2
.LVL476:
	.loc 1 1101 5 view .LVU1594
	ldr	r1, [sp, #112]
	ldr	r0, .L490+32
	bl	printUSART2
.LVL477:
	.loc 1 1102 5 view .LVU1595
	ldr	r1, [sp, #116]
	ldr	r0, .L490+36
	bl	printUSART2
.LVL478:
	.loc 1 1103 5 view .LVU1596
	ldr	r1, [sp, #120]
	ldr	r0, .L490+40
	bl	printUSART2
.LVL479:
	.loc 1 1105 5 view .LVU1597
	ldr	r1, [sp, #124]
	ldr	r0, .L490+44
	bl	printUSART2
.LVL480:
	.loc 1 1106 5 view .LVU1598
	ldr	r1, [sp, #128]
	ldr	r0, .L490+48
	bl	printUSART2
.LVL481:
	.loc 1 1107 5 view .LVU1599
	ldr	r1, [sp, #132]
	ldr	r0, .L490+52
	.loc 1 1108 1 is_stmt 0 view .LVU1600
	add	sp, sp, #140
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL482:
	.loc 1 1107 5 view .LVU1601
	b	printUSART2
.LVL483:
.L491:
	.align	2
.L490:
	.word	.LC195
	.word	.LC141
	.word	1073874944
	.word	.LC196
	.word	.LC197
	.word	.LC198
	.word	.LC199
	.word	.LC200
	.word	.LC201
	.word	.LC202
	.word	.LC203
	.word	.LC204
	.word	.LC205
	.word	.LC206
	.word	1073876992
	.word	1073872896
	.cfi_endproc
.LFE133:
	.size	check_data_pins_activity_edges, .-check_data_pins_activity_edges
	.section	.rodata.str1.4
	.align	2
.LC207:
	.ascii	"high\000"
	.align	2
.LC208:
	.ascii	"low\000"
	.align	2
.LC209:
	.ascii	"rising\000"
	.align	2
.LC210:
	.ascii	"falling\000"
	.align	2
.LC211:
	.ascii	"snapshot\000"
	.align	2
.LC212:
	.ascii	"continuous\000"
	.align	2
.LC213:
	.ascii	"DCMI->CR = 0x%xw\012\000"
	.align	2
.LC214:
	.ascii	"HSYNC active %s\012\000"
	.align	2
.LC215:
	.ascii	"VSYNC active %s\012\000"
	.align	2
.LC216:
	.ascii	"PCLK polarity = %s edge\012\000"
	.align	2
.LC217:
	.ascii	"ESS = %d\012\000"
	.align	2
.LC218:
	.ascii	"JPEG = %d\012\000"
	.align	2
.LC219:
	.ascii	"CROP = %d\012\000"
	.align	2
.LC220:
	.ascii	"CM (mode) = %s\012\000"
	.align	2
.LC221:
	.ascii	"DCMI ENABLE = %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_CheckConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CheckConfig, %function
DCMI_CheckConfig:
.LFB128:
	.loc 1 809 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 810 5 view .LVU1603
	.loc 1 809 1 is_stmt 0 view .LVU1604
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 810 43 view .LVU1605
	ldr	r4, .L502
	.loc 1 810 5 view .LVU1606
	ldr	r0, .L502+4
	.loc 1 810 43 view .LVU1607
	ldr	r1, [r4]
	.loc 1 811 5 view .LVU1608
	ldr	r6, .L502+8
	ldr	r5, .L502+12
	.loc 1 810 5 view .LVU1609
	bl	printUSART2
.LVL484:
	.loc 1 811 5 is_stmt 1 view .LVU1610
	.loc 1 811 43 is_stmt 0 view .LVU1611
	ldr	r3, [r4]
	.loc 1 811 5 view .LVU1612
	ldr	r0, .L502+16
	tst	r3, #64
	ite	eq
	moveq	r1, r6
	movne	r1, r5
	bl	printUSART2
.LVL485:
	.loc 1 812 5 is_stmt 1 view .LVU1613
	.loc 1 812 43 is_stmt 0 view .LVU1614
	ldr	r3, [r4]
	.loc 1 812 5 view .LVU1615
	ldr	r0, .L502+20
	tst	r3, #128
	ite	eq
	moveq	r1, r6
	movne	r1, r5
	bl	printUSART2
.LVL486:
	.loc 1 813 5 is_stmt 1 view .LVU1616
	.loc 1 813 51 is_stmt 0 view .LVU1617
	ldr	r2, [r4]
	.loc 1 813 5 view .LVU1618
	ldr	r3, .L502+24
	ldr	r1, .L502+28
	ldr	r0, .L502+32
	tst	r2, #32
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL487:
	.loc 1 814 5 is_stmt 1 view .LVU1619
	.loc 1 814 36 is_stmt 0 view .LVU1620
	ldr	r1, [r4]
	.loc 1 814 5 view .LVU1621
	ldr	r0, .L502+36
	ubfx	r1, r1, #4, #1
	bl	printUSART2
.LVL488:
	.loc 1 815 5 is_stmt 1 view .LVU1622
	.loc 1 815 37 is_stmt 0 view .LVU1623
	ldr	r1, [r4]
	.loc 1 815 5 view .LVU1624
	ldr	r0, .L502+40
	ubfx	r1, r1, #3, #1
	bl	printUSART2
.LVL489:
	.loc 1 816 5 is_stmt 1 view .LVU1625
	.loc 1 816 37 is_stmt 0 view .LVU1626
	ldr	r1, [r4]
	.loc 1 816 5 view .LVU1627
	ldr	r0, .L502+44
	ubfx	r1, r1, #2, #1
	bl	printUSART2
.LVL490:
	.loc 1 817 5 is_stmt 1 view .LVU1628
	.loc 1 817 42 is_stmt 0 view .LVU1629
	ldr	r2, [r4]
	.loc 1 817 5 view .LVU1630
	ldr	r3, .L502+48
	ldr	r1, .L502+52
	ldr	r0, .L502+56
	tst	r2, #2
	it	ne
	movne	r1, r3
	bl	printUSART2
.LVL491:
	.loc 1 818 5 is_stmt 1 view .LVU1631
	.loc 1 818 44 is_stmt 0 view .LVU1632
	ldr	r1, [r4]
	.loc 1 818 5 view .LVU1633
	ldr	r0, .L502+60
	ubfx	r1, r1, #14, #1
	bl	printUSART2
.LVL492:
	.loc 1 822 5 is_stmt 1 view .LVU1634
	.loc 1 824 1 is_stmt 0 view .LVU1635
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 822 5 view .LVU1636
	b	check_data_pins_activity_edges
.LVL493:
.L503:
	.align	2
.L502:
	.word	1342504960
	.word	.LC213
	.word	.LC208
	.word	.LC207
	.word	.LC214
	.word	.LC215
	.word	.LC209
	.word	.LC210
	.word	.LC216
	.word	.LC217
	.word	.LC218
	.word	.LC219
	.word	.LC211
	.word	.LC212
	.word	.LC220
	.word	.LC221
	.cfi_endproc
.LFE128:
	.size	DCMI_CheckConfig, .-DCMI_CheckConfig
	.section	.rodata.str1.4
	.align	2
.LC222:
	.ascii	"==== DMA2 Stream1 Debug ====\012\000"
	.align	2
.LC223:
	.ascii	"CR = 0x%x | NDTR = %d | PAR = 0x%x | M0AR = 0x%x | "
	.ascii	"FCR = 0x%x\012\000"
	.align	2
.LC224:
	.ascii	"Flags: TCIF=%d, HTIF=%d, TEIF=%d, DMEIF=%d, FEIF=%d"
	.ascii	"\012\000"
	.align	2
.LC225:
	.ascii	"DCMI->DR sample = 0x%x\012\000"
	.align	2
.LC226:
	.ascii	"DCMI CR = 0x%x | SR = 0x%x | VSPOL=%d, HSPOL=%d, PC"
	.ascii	"KPOL=%d\012\000"
	.align	2
.LC227:
	.ascii	"===========================\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	dma2_debug
	.syntax unified
	.thumb
	.thumb_func
	.type	dma2_debug, %function
dma2_debug:
.LFB134:
	.loc 1 1112 23 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1113 5 view .LVU1638
	.loc 1 1112 23 is_stmt 0 view .LVU1639
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 1113 14 view .LVU1640
	ldr	r0, .L506
	.loc 1 1112 23 view .LVU1641
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 1 1113 14 view .LVU1642
	ldr	r6, [r0, #40]
.LVL494:
	.loc 1 1114 5 is_stmt 1 view .LVU1643
	.loc 1 1114 14 is_stmt 0 view .LVU1644
	ldr	r7, [r0, #44]
.LVL495:
	.loc 1 1115 5 is_stmt 1 view .LVU1645
	.loc 1 1115 14 is_stmt 0 view .LVU1646
	ldr	r8, [r0, #48]
.LVL496:
	.loc 1 1116 5 is_stmt 1 view .LVU1647
	.loc 1 1116 14 is_stmt 0 view .LVU1648
	ldr	r5, [r0, #52]
.LVL497:
	.loc 1 1117 5 is_stmt 1 view .LVU1649
	.loc 1 1117 14 is_stmt 0 view .LVU1650
	ldr	r9, [r0, #60]
.LVL498:
	.loc 1 1119 5 is_stmt 1 view .LVU1651
	.loc 1 1119 26 is_stmt 0 view .LVU1652
	ldr	r4, [r0]
	.loc 1 1122 5 view .LVU1653
	ldr	r0, .L506+4
	bl	printUSART2
.LVL499:
	.loc 1 1119 14 view .LVU1654
	and	r4, r4, #3904
.LVL500:
	.loc 1 1122 5 is_stmt 1 view .LVU1655
	.loc 1 1123 5 view .LVU1656
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	str	r5, [sp]
	ldr	r0, .L506+8
	str	r9, [sp, #4]
	bl	printUSART2
.LVL501:
	.loc 1 1126 5 view .LVU1657
	ubfx	r5, r4, #6, #1
.LVL502:
	.loc 1 1126 5 is_stmt 0 view .LVU1658
	ubfx	r2, r4, #10, #1
	ubfx	r0, r4, #8, #1
	ubfx	r3, r4, #9, #1
	lsrs	r1, r4, #11
	.loc 1 1134 36 view .LVU1659
	ldr	r4, .L506+12
.LVL503:
	.loc 1 1126 5 view .LVU1660
	strd	r0, r5, [sp]
	ldr	r0, .L506+16
	bl	printUSART2
.LVL504:
	.loc 1 1134 5 is_stmt 1 view .LVU1661
	.loc 1 1134 36 is_stmt 0 view .LVU1662
	ldr	r3, [r4, #40]
	.loc 1 1135 5 view .LVU1663
	ldr	r0, .L506+20
	.loc 1 1134 23 view .LVU1664
	uxth	r3, r3
	strh	r3, [sp, #14]	@ movhi
	.loc 1 1135 5 is_stmt 1 view .LVU1665
	ldrh	r1, [sp, #14]
	uxth	r1, r1
	bl	printUSART2
.LVL505:
	.loc 1 1138 5 view .LVU1666
	.loc 1 1139 21 is_stmt 0 view .LVU1667
	ldr	r1, [r4]
	.loc 1 1139 31 view .LVU1668
	ldr	r2, [r4, #4]
	.loc 1 1140 22 view .LVU1669
	ldr	r3, [r4]
	.loc 1 1141 22 view .LVU1670
	ldr	r5, [r4]
	.loc 1 1142 22 view .LVU1671
	ldr	r0, [r4]
	.loc 1 1138 5 view .LVU1672
	ubfx	r5, r5, #6, #1
	ubfx	r0, r0, #5, #1
	str	r0, [sp, #4]
	str	r5, [sp]
	ldr	r0, .L506+24
	ubfx	r3, r3, #7, #1
	bl	printUSART2
.LVL506:
	.loc 1 1143 5 is_stmt 1 view .LVU1673
	ldr	r0, .L506+28
	.loc 1 1144 1 is_stmt 0 view .LVU1674
	add	sp, sp, #20
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL507:
	.loc 1 1143 5 view .LVU1675
	b	printUSART2
.LVL508:
.L507:
	.align	2
.L506:
	.word	1073898496
	.word	.LC222
	.word	.LC223
	.word	1342504960
	.word	.LC224
	.word	.LC225
	.word	.LC226
	.word	.LC227
	.cfi_endproc
.LFE134:
	.size	dma2_debug, .-dma2_debug
	.section	.rodata.str1.4
	.align	2
.LC228:
	.ascii	"\012=== DCMI DEBUG STATUS ===\012\000"
	.align	2
.LC229:
	.ascii	"DCMI SR   : 0x%xw | FNE=%d VSYNC=%d HSYNC=%d\012\000"
	.align	2
.LC230:
	.ascii	"DCMI RISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d"
	.ascii	" LINE=%d\012\000"
	.align	2
.LC231:
	.ascii	"DCMI MISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d"
	.ascii	" LINE=%d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_debugStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_debugStatus, %function
DCMI_debugStatus:
.LFB135:
	.loc 1 1149 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1150 5 view .LVU1677
	.loc 1 1149 1 is_stmt 0 view .LVU1678
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1150 14 view .LVU1679
	ldr	r3, .L510
	.loc 1 1154 5 view .LVU1680
	ldr	r0, .L510+4
	.loc 1 1150 14 view .LVU1681
	ldr	r6, [r3, #4]
.LVL509:
	.loc 1 1151 5 is_stmt 1 view .LVU1682
	.loc 1 1151 14 is_stmt 0 view .LVU1683
	ldr	r5, [r3, #8]
.LVL510:
	.loc 1 1152 5 is_stmt 1 view .LVU1684
	.loc 1 1152 14 is_stmt 0 view .LVU1685
	ldr	r4, [r3, #16]
.LVL511:
	.loc 1 1154 5 is_stmt 1 view .LVU1686
	.loc 1 1149 1 is_stmt 0 view .LVU1687
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 1 1154 5 view .LVU1688
	bl	printUSART2
.LVL512:
	.loc 1 1157 5 is_stmt 1 view .LVU1689
	and	r2, r6, #1
	ubfx	r3, r6, #1, #1
	str	r2, [sp]
	mov	r1, r6
	ubfx	r2, r6, #2, #1
	ldr	r0, .L510+8
	bl	printUSART2
.LVL513:
	.loc 1 1164 5 view .LVU1690
	ubfx	r2, r5, #4, #1
	ubfx	r3, r5, #3, #1
	ubfx	r0, r5, #2, #1
	strd	r3, r2, [sp, #4]
	mov	r1, r5
	ubfx	r3, r5, #1, #1
	and	r2, r5, #1
	str	r0, [sp]
	ldr	r0, .L510+12
	bl	printUSART2
.LVL514:
	.loc 1 1174 5 view .LVU1691
	ubfx	r1, r4, #4, #1
	ubfx	r2, r4, #3, #1
	ubfx	r3, r4, #2, #1
	strd	r2, r1, [sp, #4]
	str	r3, [sp]
	ldr	r0, .L510+16
	ubfx	r3, r4, #1, #1
	and	r2, r4, #1
	mov	r1, r4
	bl	printUSART2
.LVL515:
	.loc 1 1182 5 view .LVU1692
	ldr	r0, .L510+20
	.loc 1 1183 1 is_stmt 0 view .LVU1693
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL516:
	.loc 1 1182 5 view .LVU1694
	b	printUSART2
.LVL517:
.L511:
	.align	2
.L510:
	.word	1342504960
	.word	.LC228
	.word	.LC229
	.word	.LC230
	.word	.LC231
	.word	.LC115
	.cfi_endproc
.LFE135:
	.size	DCMI_debugStatus, .-DCMI_debugStatus
	.align	1
	.p2align 2,,3
	.global	send_frame_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	send_frame_buffer, %function
send_frame_buffer:
.LVL518:
.LFB136:
	.loc 1 1188 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1189 5 view .LVU1696
	.loc 1 1188 1 is_stmt 0 view .LVU1697
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 1188 1 view .LVU1698
	mov	r5, r0
	.loc 1 1189 5 view .LVU1699
	movs	r0, #170
.LVL519:
	.loc 1 1188 1 view .LVU1700
	mov	r7, r1
	.loc 1 1189 5 view .LVU1701
	bl	putcharUSART2
.LVL520:
	.loc 1 1190 5 is_stmt 1 view .LVU1702
	movs	r0, #85
	bl	putcharUSART2
.LVL521:
	.loc 1 1192 5 view .LVU1703
.LBB83:
	.loc 1 1192 9 view .LVU1704
	.loc 1 1192 27 view .LVU1705
	cbz	r7, .L512
	.loc 1 1192 18 is_stmt 0 view .LVU1706
	movs	r6, #0
.LVL522:
.L514:
.LBB84:
	.loc 1 1194 9 is_stmt 1 discriminator 3 view .LVU1707
	.loc 1 1194 31 is_stmt 0 discriminator 3 view .LVU1708
	ldrh	r4, [r5]
	.loc 1 1195 30 discriminator 3 view .LVU1709
	ldrh	r0, [r5], #2
	.loc 1 1194 31 discriminator 3 view .LVU1710
	uxth	r4, r4
.LVL523:
	.loc 1 1195 9 is_stmt 1 discriminator 3 view .LVU1711
	.loc 1 1197 9 discriminator 3 view .LVU1712
	uxtb	r0, r0
	.loc 1 1197 9 is_stmt 0 discriminator 3 view .LVU1713
	bl	putcharUSART2
.LVL524:
	.loc 1 1198 9 is_stmt 1 discriminator 3 view .LVU1714
.LBE84:
	.loc 1 1192 36 is_stmt 0 discriminator 3 view .LVU1715
	adds	r6, r6, #1
.LVL525:
.LBB85:
	.loc 1 1198 9 discriminator 3 view .LVU1716
	lsrs	r0, r4, #8
	bl	putcharUSART2
.LVL526:
.LBE85:
	.loc 1 1192 36 is_stmt 1 discriminator 3 view .LVU1717
	.loc 1 1192 27 discriminator 3 view .LVU1718
	cmp	r7, r6
	bne	.L514
.LVL527:
.L512:
	.loc 1 1192 27 is_stmt 0 discriminator 3 view .LVU1719
.LBE83:
	.loc 1 1201 1 view .LVU1720
	pop	{r3, r4, r5, r6, r7, pc}
	.loc 1 1201 1 view .LVU1721
	.cfi_endproc
.LFE136:
	.size	send_frame_buffer, .-send_frame_buffer
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"COM7_RESET\000"
	.align	2
.LC1:
	.ascii	"CLKRC\000"
	.align	2
.LC2:
	.ascii	"COM3\000"
	.align	2
.LC16:
	.ascii	"COM7_QQVGAMODE\000"
	.align	2
.LC8:
	.ascii	"COM14\000"
	.align	2
.LC17:
	.ascii	"HSTART\000"
	.align	2
.LC18:
	.ascii	"HSTOP\000"
	.align	2
.LC19:
	.ascii	"HREF\000"
	.align	2
.LC20:
	.ascii	"VSTRT\000"
	.align	2
.LC21:
	.ascii	"VSTOP\000"
	.align	2
.LC22:
	.ascii	"VREF\000"
	.align	2
.LC3:
	.ascii	"SCALING_DCWCTR\000"
	.align	2
.LC6:
	.ascii	"SCALING_PCLK_DIV\000"
	.align	2
.LC10:
	.ascii	"COM10\000"
	.align	2
.LC0:
	.ascii	"COM7\000"
	.align	2
.LC4:
	.ascii	"SCALING_XSC\000"
	.align	2
.LC5:
	.ascii	"SCALING_YSC\000"
	.align	2
.LC7:
	.ascii	"SCALING_PCLK_DELAY\000"
	.align	2
.LC9:
	.ascii	"COM15\000"
	.align	2
.LC11:
	.ascii	"TSLB\000"
	.align	2
.LC12:
	.ascii	"COM11\000"
	.align	2
.LC13:
	.ascii	"COM8\000"
	.global	regs_to_verify
	.align	2
.LC232:
	.ascii	"DBLV\000"
	.align	2
.LC233:
	.ascii	"VSTART\000"
	.global	regs_to_check
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	regs_to_check, %object
	.size	regs_to_check, 6
regs_to_check:
	.ascii	"\022\021k@s\242"
	.space	2
.LC100:
	.ascii	"\004\001\000\000\000\000\000\000\320 \347"
	.space	1
.LC136:
	.byte	18
	.byte	4
	.space	2
	.word	.LC0
	.byte	17
	.byte	3
	.space	2
	.word	.LC1
	.byte	12
	.byte	4
	.space	2
	.word	.LC2
	.byte	114
	.byte	34
	.space	2
	.word	.LC3
	.byte	112
	.byte	58
	.space	2
	.word	.LC4
	.byte	113
	.byte	53
	.space	2
	.word	.LC5
	.byte	115
	.byte	-14
	.space	2
	.word	.LC6
	.byte	-94
	.byte	2
	.space	2
	.word	.LC7
	.byte	62
	.byte	26
	.space	2
	.word	.LC8
	.byte	64
	.byte	-48
	.space	2
	.word	.LC9
	.byte	21
	.byte	32
	.space	2
	.word	.LC10
	.byte	58
	.byte	4
	.space	2
	.word	.LC11
	.byte	59
	.byte	10
	.space	2
	.word	.LC12
	.byte	19
	.byte	-25
	.space	2
	.word	.LC13
.LC191:
	.byte	18
	.byte	-128
	.space	2
	.word	.LC15
	.byte	17
	.byte	3
	.space	2
	.word	.LC1
	.byte	12
	.byte	4
	.space	2
	.word	.LC2
	.byte	18
	.byte	4
	.space	2
	.word	.LC16
	.byte	62
	.byte	26
	.space	2
	.word	.LC8
	.byte	23
	.byte	22
	.space	2
	.word	.LC17
	.byte	24
	.byte	4
	.space	2
	.word	.LC18
	.byte	50
	.byte	-92
	.space	2
	.word	.LC19
	.byte	25
	.byte	2
	.space	2
	.word	.LC20
	.byte	26
	.byte	122
	.space	2
	.word	.LC21
	.byte	3
	.byte	-92
	.space	2
	.word	.LC22
	.byte	114
	.byte	34
	.space	2
	.word	.LC3
	.byte	115
	.byte	-14
	.space	2
	.word	.LC6
	.byte	21
	.byte	2
	.space	2
	.word	.LC10
	.type	regs_to_verify, %object
	.size	regs_to_verify, 120
regs_to_verify:
	.byte	18
	.byte	3
	.space	2
	.word	.LC0
	.byte	17
	.byte	1
	.space	2
	.word	.LC1
	.byte	107
	.byte	74
	.space	2
	.word	.LC232
	.byte	64
	.byte	0
	.space	2
	.word	.LC9
	.byte	115
	.byte	-15
	.space	2
	.word	.LC6
	.byte	-94
	.byte	2
	.space	2
	.word	.LC7
	.byte	23
	.byte	22
	.space	2
	.word	.LC17
	.byte	24
	.byte	4
	.space	2
	.word	.LC18
	.byte	50
	.byte	-128
	.space	2
	.word	.LC19
	.byte	25
	.byte	2
	.space	2
	.word	.LC233
	.byte	26
	.byte	122
	.space	2
	.word	.LC21
	.byte	3
	.byte	10
	.space	2
	.word	.LC22
	.byte	112
	.byte	58
	.space	2
	.word	.LC4
	.byte	113
	.byte	53
	.space	2
	.word	.LC5
	.byte	114
	.byte	17
	.space	2
	.word	.LC3
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 4 "check/check.h"
	.file 5 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 6 "check/../DCMI/dcmi.h"
	.file 7 "check/../ov7670/ov7670.h"
	.file 8 "check/../usart/usart.h"
	.file 9 "check/../i2c/i2c.h"
	.file 10 "check/../delay/delay.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x31d1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x29
	.4byte	.LASF205
	.byte	0x1d
	.4byte	.LASF206
	.4byte	.LASF207
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x16
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x18
	.4byte	0x53
	.uleb128 0x10
	.4byte	0x42
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x16
	.4byte	.LASF6
	.byte	0x3
	.byte	0x31
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x1c
	.4byte	0x5a
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x16
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.byte	0x19
	.4byte	0x83
	.uleb128 0x1c
	.4byte	0x72
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2a
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x24
	.byte	0x8
	.byte	0x4
	.byte	0x9
	.4byte	0xcc
	.uleb128 0x20
	.ascii	"reg\000"
	.byte	0x4
	.byte	0xa
	.4byte	0x42
	.byte	0
	.uleb128 0x25
	.4byte	.LASF12
	.byte	0xb
	.byte	0xd
	.4byte	0x42
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF13
	.byte	0xc
	.byte	0x11
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	0xd8
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x10
	.4byte	0xd1
	.uleb128 0x16
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.4byte	0x9f
	.uleb128 0x10
	.4byte	0xdd
	.uleb128 0xd
	.4byte	0x4e
	.4byte	0xf9
	.uleb128 0x21
	.byte	0
	.uleb128 0x10
	.4byte	0xee
	.uleb128 0x1d
	.4byte	.LASF16
	.byte	0x4
	.byte	0x11
	.byte	0x16
	.4byte	0xf9
	.uleb128 0xd
	.4byte	0xe9
	.4byte	0x115
	.uleb128 0x21
	.byte	0
	.uleb128 0x10
	.4byte	0x10a
	.uleb128 0x1d
	.4byte	.LASF17
	.byte	0x4
	.byte	0x12
	.byte	0x1e
	.4byte	0x115
	.uleb128 0x13
	.byte	0x2c
	.byte	0x5
	.2byte	0x1c4
	.byte	0x9
	.4byte	0x1c3
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x1c6
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.ascii	"SR\000"
	.byte	0x5
	.2byte	0x1c7
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x1c8
	.byte	0x11
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.ascii	"IER\000"
	.byte	0x5
	.2byte	0x1c9
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x1ca
	.byte	0x11
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.ascii	"ICR\000"
	.byte	0x5
	.2byte	0x1cb
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x1cc
	.byte	0x11
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x1cd
	.byte	0x11
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x1ce
	.byte	0x11
	.4byte	0x7e
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x1cf
	.byte	0x11
	.4byte	0x7e
	.byte	0x24
	.uleb128 0xb
	.ascii	"DR\000"
	.byte	0x5
	.2byte	0x1d0
	.4byte	0x7e
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.4byte	.LASF24
	.2byte	0x1d1
	.4byte	0x126
	.uleb128 0x13
	.byte	0x18
	.byte	0x5
	.2byte	0x1d7
	.byte	0x9
	.4byte	0x229
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x1d9
	.4byte	0x7e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x1da
	.byte	0x11
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.ascii	"PAR\000"
	.byte	0x5
	.2byte	0x1db
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x1dc
	.byte	0x11
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x1dd
	.byte	0x11
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.ascii	"FCR\000"
	.byte	0x5
	.2byte	0x1de
	.4byte	0x7e
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF28
	.2byte	0x1df
	.4byte	0x1ce
	.uleb128 0x13
	.byte	0x10
	.byte	0x5
	.2byte	0x1e1
	.byte	0x9
	.4byte	0x277
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x1e3
	.byte	0x11
	.4byte	0x7e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x1e4
	.byte	0x11
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x1e5
	.byte	0x11
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x1e6
	.byte	0x11
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF33
	.2byte	0x1e7
	.4byte	0x234
	.uleb128 0xd
	.4byte	0x72
	.4byte	0x292
	.uleb128 0x11
	.4byte	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0x28
	.byte	0x5
	.2byte	0x28e
	.byte	0x9
	.4byte	0x326
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x290
	.byte	0x11
	.4byte	0x7e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x291
	.byte	0x11
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x292
	.byte	0x11
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x293
	.byte	0x11
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.ascii	"IDR\000"
	.byte	0x5
	.2byte	0x294
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.ascii	"ODR\000"
	.byte	0x5
	.2byte	0x295
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x296
	.byte	0x11
	.4byte	0x66
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x297
	.byte	0x11
	.4byte	0x66
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x298
	.byte	0x11
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xb
	.ascii	"AFR\000"
	.byte	0x5
	.2byte	0x299
	.4byte	0x336
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x336
	.uleb128 0x11
	.4byte	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	0x326
	.uleb128 0x18
	.4byte	.LASF41
	.2byte	0x29a
	.4byte	0x292
	.uleb128 0x13
	.byte	0x88
	.byte	0x5
	.2byte	0x2dd
	.byte	0x9
	.4byte	0x4f1
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x2df
	.4byte	0x7e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x2e0
	.byte	0x11
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2e1
	.byte	0x11
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.ascii	"CIR\000"
	.byte	0x5
	.2byte	0x2e2
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x2e3
	.byte	0x11
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x2e4
	.byte	0x11
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x2e5
	.byte	0x11
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x2e6
	.byte	0x11
	.4byte	0x72
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x2e7
	.byte	0x11
	.4byte	0x7e
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x2e8
	.byte	0x11
	.4byte	0x7e
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x2e9
	.byte	0x11
	.4byte	0x282
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x2ea
	.byte	0x11
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x2eb
	.byte	0x11
	.4byte	0x7e
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x2ec
	.byte	0x11
	.4byte	0x7e
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x2ed
	.byte	0x11
	.4byte	0x72
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x2ee
	.byte	0x11
	.4byte	0x7e
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x2ef
	.byte	0x11
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x2f0
	.byte	0x11
	.4byte	0x282
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x2f1
	.byte	0x11
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x2f2
	.byte	0x11
	.4byte	0x7e
	.byte	0x54
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x2f3
	.byte	0x11
	.4byte	0x7e
	.byte	0x58
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x2f4
	.byte	0x11
	.4byte	0x72
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x2f5
	.byte	0x11
	.4byte	0x7e
	.byte	0x60
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x2f6
	.byte	0x11
	.4byte	0x7e
	.byte	0x64
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x2f7
	.byte	0x11
	.4byte	0x282
	.byte	0x68
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x2f8
	.byte	0x11
	.4byte	0x7e
	.byte	0x70
	.uleb128 0xb
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x2f9
	.4byte	0x7e
	.byte	0x74
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x2fa
	.byte	0x11
	.4byte	0x282
	.byte	0x78
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2fb
	.byte	0x11
	.4byte	0x7e
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x2fc
	.byte	0x11
	.4byte	0x7e
	.byte	0x84
	.byte	0
	.uleb128 0x18
	.4byte	.LASF69
	.2byte	0x2fd
	.4byte	0x346
	.uleb128 0xd
	.4byte	0x66
	.4byte	0x50d
	.uleb128 0x2b
	.4byte	0x98
	.2byte	0x4aff
	.byte	0
	.uleb128 0x1c
	.4byte	0x4fc
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0x6
	.byte	0xe
	.byte	0x1a
	.4byte	0x50d
	.uleb128 0x24
	.byte	0x2
	.byte	0x7
	.byte	0xd
	.4byte	0x53f
	.uleb128 0x20
	.ascii	"reg\000"
	.byte	0x7
	.byte	0xe
	.4byte	0x42
	.byte	0
	.uleb128 0x20
	.ascii	"val\000"
	.byte	0x7
	.byte	0xf
	.4byte	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x7
	.byte	0x10
	.byte	0x3
	.4byte	0x51e
	.uleb128 0x10
	.4byte	0x53f
	.uleb128 0xd
	.4byte	0x54b
	.4byte	0x55b
	.uleb128 0x21
	.byte	0
	.uleb128 0x10
	.4byte	0x550
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x7
	.byte	0x15
	.byte	0x1f
	.4byte	0x55b
	.uleb128 0xd
	.4byte	0x4e
	.4byte	0x57c
	.uleb128 0x11
	.4byte	0x98
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0x56c
	.uleb128 0x26
	.4byte	0xfe
	.byte	0xdc
	.byte	0xf
	.4byte	0x57c
	.uleb128 0x5
	.byte	0x3
	.4byte	regs_to_check
	.uleb128 0xd
	.4byte	0xe9
	.4byte	0x5a2
	.uleb128 0x11
	.4byte	0x98
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.4byte	0x592
	.uleb128 0x26
	.4byte	0x11a
	.byte	0xf0
	.byte	0x17
	.4byte	0x5a2
	.uleb128 0x5
	.byte	0x3
	.4byte	regs_to_verify
	.uleb128 0x1e
	.4byte	.LASF73
	.byte	0x8
	.byte	0xf
	.4byte	0x5c9
	.uleb128 0x15
	.4byte	0x42
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x9
	.byte	0x14
	.4byte	0x5e4
	.uleb128 0x15
	.4byte	0x42
	.uleb128 0x15
	.4byte	0x5e4
	.uleb128 0x15
	.4byte	0x5a
	.byte	0
	.uleb128 0x17
	.4byte	0x42
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0xa
	.byte	0x9
	.4byte	0x5fa
	.uleb128 0x15
	.4byte	0x72
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x8
	.byte	0x10
	.4byte	0x60c
	.uleb128 0x15
	.4byte	0x60c
	.uleb128 0x27
	.byte	0
	.uleb128 0x17
	.4byte	0xd1
	.uleb128 0x2c
	.4byte	.LASF77
	.byte	0xa
	.byte	0x19
	.byte	0xa
	.4byte	0x72
	.4byte	0x623
	.uleb128 0x27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF81
	.2byte	0x4a3
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ee
	.uleb128 0x1f
	.4byte	.LASF78
	.2byte	0x4a3
	.byte	0x2b
	.4byte	0x6ee
	.4byte	.LLST213
	.4byte	.LVUS213
	.uleb128 0x1f
	.4byte	.LASF79
	.2byte	0x4a3
	.byte	0x3c
	.4byte	0x72
	.4byte	.LLST214
	.4byte	.LVUS214
	.uleb128 0x22
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.4byte	0x6c9
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x4a8
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST215
	.4byte	.LVUS215
	.uleb128 0x12
	.4byte	.LLRL216
	.uleb128 0x3
	.4byte	.LASF80
	.2byte	0x4aa
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST217
	.4byte	.LVUS217
	.uleb128 0x5
	.ascii	"low\000"
	.2byte	0x4ab
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST218
	.4byte	.LVUS218
	.uleb128 0x9
	.4byte	.LVL524
	.4byte	0x5b8
	.uleb128 0x7
	.4byte	.LVL526
	.4byte	0x5b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL520
	.4byte	0x5b8
	.4byte	0x6dd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xaa
	.byte	0
	.uleb128 0x7
	.4byte	.LVL521
	.4byte	0x5b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x66
	.uleb128 0x8
	.4byte	.LASF82
	.2byte	0x47c
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x846
	.uleb128 0x5
	.ascii	"sr\000"
	.2byte	0x47e
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST210
	.4byte	.LVUS210
	.uleb128 0x3
	.4byte	.LASF83
	.2byte	0x47f
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST211
	.4byte	.LVUS211
	.uleb128 0x3
	.4byte	.LASF84
	.2byte	0x480
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST212
	.4byte	.LVUS212
	.uleb128 0x2
	.4byte	.LVL512
	.4byte	0x5fa
	.4byte	0x75a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC228
	.byte	0
	.uleb128 0x2
	.4byte	.LVL513
	.4byte	0x5fa
	.4byte	0x794
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC229
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL514
	.4byte	0x5fa
	.4byte	0x7e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC230
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xff
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x2
	.4byte	.LVL515
	.4byte	0x5fa
	.4byte	0x832
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC231
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xff
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LVL517
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC115
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF85
	.2byte	0x458
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x996
	.uleb128 0x5
	.ascii	"cr\000"
	.2byte	0x459
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST204
	.4byte	.LVUS204
	.uleb128 0x3
	.4byte	.LASF86
	.2byte	0x45a
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST205
	.4byte	.LVUS205
	.uleb128 0x5
	.ascii	"par\000"
	.2byte	0x45b
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST206
	.4byte	.LVUS206
	.uleb128 0x3
	.4byte	.LASF87
	.2byte	0x45c
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST207
	.4byte	.LVUS207
	.uleb128 0x5
	.ascii	"fcr\000"
	.2byte	0x45d
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST208
	.4byte	.LVUS208
	.uleb128 0x3
	.4byte	.LASF88
	.2byte	0x45f
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST209
	.4byte	.LVUS209
	.uleb128 0x14
	.4byte	.LASF116
	.2byte	0x46e
	.byte	0x17
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LVL499
	.4byte	0x5fa
	.4byte	0x8f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC222
	.byte	0
	.uleb128 0x2
	.4byte	.LVL501
	.4byte	0x5fa
	.4byte	0x92f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC223
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL504
	.4byte	0x5fa
	.4byte	0x94d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC224
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL505
	.4byte	0x5fa
	.4byte	0x964
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC225
	.byte	0
	.uleb128 0x2
	.4byte	.LVL506
	.4byte	0x5fa
	.4byte	0x982
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC226
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL508
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC227
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.2byte	0x417
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde2
	.uleb128 0x3
	.4byte	.LASF90
	.2byte	0x41c
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST168
	.4byte	.LVUS168
	.uleb128 0x3
	.4byte	.LASF91
	.2byte	0x41c
	.byte	0x1c
	.4byte	0x72
	.4byte	.LLST169
	.4byte	.LVUS169
	.uleb128 0x3
	.4byte	.LASF92
	.2byte	0x41c
	.byte	0x2a
	.4byte	0x72
	.4byte	.LLST170
	.4byte	.LVUS170
	.uleb128 0x3
	.4byte	.LASF93
	.2byte	0x41c
	.byte	0x38
	.4byte	0x72
	.4byte	.LLST171
	.4byte	.LVUS171
	.uleb128 0x3
	.4byte	.LASF94
	.2byte	0x41d
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST172
	.4byte	.LVUS172
	.uleb128 0x3
	.4byte	.LASF95
	.2byte	0x41d
	.byte	0x1c
	.4byte	0x72
	.4byte	.LLST173
	.4byte	.LVUS173
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x41d
	.byte	0x2a
	.4byte	0x72
	.4byte	.LLST174
	.4byte	.LVUS174
	.uleb128 0x3
	.4byte	.LASF97
	.2byte	0x41d
	.byte	0x38
	.4byte	0x72
	.4byte	.LLST175
	.4byte	.LVUS175
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0x41e
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST176
	.4byte	.LVUS176
	.uleb128 0x3
	.4byte	.LASF99
	.2byte	0x41e
	.byte	0x1f
	.4byte	0x72
	.4byte	.LLST177
	.4byte	.LVUS177
	.uleb128 0x3
	.4byte	.LASF100
	.2byte	0x41e
	.byte	0x30
	.4byte	0x72
	.4byte	.LLST178
	.4byte	.LVUS178
	.uleb128 0x3
	.4byte	.LASF101
	.2byte	0x420
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST179
	.4byte	.LVUS179
	.uleb128 0x3
	.4byte	.LASF102
	.2byte	0x420
	.byte	0x1b
	.4byte	0x72
	.4byte	.LLST180
	.4byte	.LVUS180
	.uleb128 0x3
	.4byte	.LASF103
	.2byte	0x420
	.byte	0x28
	.4byte	0x72
	.4byte	.LLST181
	.4byte	.LVUS181
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x420
	.byte	0x35
	.4byte	0x72
	.4byte	.LLST182
	.4byte	.LVUS182
	.uleb128 0x3
	.4byte	.LASF105
	.2byte	0x421
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST183
	.4byte	.LVUS183
	.uleb128 0x3
	.4byte	.LASF106
	.2byte	0x421
	.byte	0x1b
	.4byte	0x72
	.4byte	.LLST184
	.4byte	.LVUS184
	.uleb128 0x3
	.4byte	.LASF107
	.2byte	0x421
	.byte	0x28
	.4byte	0x72
	.4byte	.LLST185
	.4byte	.LVUS185
	.uleb128 0x3
	.4byte	.LASF108
	.2byte	0x421
	.byte	0x35
	.4byte	0x72
	.4byte	.LLST186
	.4byte	.LVUS186
	.uleb128 0x3
	.4byte	.LASF109
	.2byte	0x422
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST187
	.4byte	.LVUS187
	.uleb128 0x3
	.4byte	.LASF110
	.2byte	0x422
	.byte	0x1e
	.4byte	0x72
	.4byte	.LLST188
	.4byte	.LVUS188
	.uleb128 0x3
	.4byte	.LASF111
	.2byte	0x422
	.byte	0x2e
	.4byte	0x72
	.4byte	.LLST189
	.4byte	.LVUS189
	.uleb128 0xa
	.4byte	.LLRL190
	.4byte	0xc68
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x424
	.byte	0xd
	.4byte	0x91
	.4byte	.LLST191
	.4byte	.LVUS191
	.uleb128 0x12
	.4byte	.LLRL192
	.uleb128 0x5
	.ascii	"d0\000"
	.2byte	0x425
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST193
	.4byte	.LVUS193
	.uleb128 0x5
	.ascii	"d1\000"
	.2byte	0x426
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST194
	.4byte	.LVUS194
	.uleb128 0x5
	.ascii	"d2\000"
	.2byte	0x427
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST195
	.4byte	.LVUS195
	.uleb128 0x5
	.ascii	"d3\000"
	.2byte	0x428
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST196
	.4byte	.LVUS196
	.uleb128 0x5
	.ascii	"d4\000"
	.2byte	0x429
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST197
	.4byte	.LVUS197
	.uleb128 0x5
	.ascii	"d5\000"
	.2byte	0x42a
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST198
	.4byte	.LVUS198
	.uleb128 0x5
	.ascii	"d6\000"
	.2byte	0x42b
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST199
	.4byte	.LVUS199
	.uleb128 0x5
	.ascii	"d7\000"
	.2byte	0x42c
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST200
	.4byte	.LVUS200
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x42e
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST201
	.4byte	.LVUS201
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x42f
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST202
	.4byte	.LVUS202
	.uleb128 0x3
	.4byte	.LASF114
	.2byte	0x430
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST203
	.4byte	.LVUS203
	.uleb128 0x7
	.4byte	.LVL471
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL440
	.4byte	0x5fa
	.4byte	0xc7f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC195
	.byte	0
	.uleb128 0x2
	.4byte	.LVL441
	.4byte	0x5fa
	.4byte	0xc96
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.byte	0
	.uleb128 0x2
	.4byte	.LVL472
	.4byte	0x5fa
	.4byte	0xcb5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC196
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL473
	.4byte	0x5fa
	.4byte	0xcd4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC197
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL474
	.4byte	0x5fa
	.4byte	0xcf3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC198
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL475
	.4byte	0x5fa
	.4byte	0xd12
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC199
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL476
	.4byte	0x5fa
	.4byte	0xd31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC200
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL477
	.4byte	0x5fa
	.4byte	0xd4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC201
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL478
	.4byte	0x5fa
	.4byte	0xd6d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC202
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL479
	.4byte	0x5fa
	.4byte	0xd8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC203
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL480
	.4byte	0x5fa
	.4byte	0xda9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC204
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL481
	.4byte	0x5fa
	.4byte	0xdc7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC205
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL483
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC206
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -44
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF115
	.2byte	0x3ea
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef8
	.uleb128 0x13
	.byte	0x8
	.byte	0x1
	.2byte	0x3ec
	.byte	0x5
	.4byte	0xe2b
	.uleb128 0xb
	.ascii	"reg\000"
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x42
	.byte	0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x3ee
	.byte	0x11
	.4byte	0x42
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x3ef
	.byte	0x15
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF117
	.2byte	0x3f0
	.byte	0x7
	.4byte	0xef8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.ascii	"val\000"
	.2byte	0x401
	.byte	0xd
	.4byte	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0xa
	.4byte	.LLRL166
	.4byte	0xec0
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x402
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST167
	.4byte	.LVUS167
	.uleb128 0x9
	.4byte	.LVL434
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL435
	.4byte	0x5e9
	.4byte	0xe82
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL436
	.4byte	0x5c9
	.4byte	0xe9c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL437
	.4byte	0x5fa
	.4byte	0xeb0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LVL438
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL432
	.4byte	0x31c9
	.4byte	0xee4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+132
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x7
	.4byte	.LVL439
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC194
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xdf7
	.4byte	0xf08
	.uleb128 0x11
	.4byte	0x98
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF118
	.2byte	0x3ab
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1193
	.uleb128 0x2
	.4byte	.LVL399
	.4byte	0x5fa
	.4byte	0xf34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC171
	.byte	0
	.uleb128 0x2
	.4byte	.LVL400
	.4byte	0x5fa
	.4byte	0xf4b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC172
	.byte	0
	.uleb128 0x9
	.4byte	.LVL401
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL402
	.4byte	0x5fa
	.4byte	0xf6b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC173
	.byte	0
	.uleb128 0x9
	.4byte	.LVL403
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL404
	.4byte	0x5fa
	.4byte	0xf8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC174
	.byte	0
	.uleb128 0x9
	.4byte	.LVL405
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL406
	.4byte	0x5fa
	.4byte	0xfab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC175
	.byte	0
	.uleb128 0x9
	.4byte	.LVL407
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL408
	.4byte	0x5fa
	.4byte	0xfcb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC176
	.byte	0
	.uleb128 0x2
	.4byte	.LVL409
	.4byte	0x5fa
	.4byte	0xfe2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC180
	.byte	0
	.uleb128 0x2
	.4byte	.LVL410
	.4byte	0x5fa
	.4byte	0xff9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC181
	.byte	0
	.uleb128 0x2
	.4byte	.LVL411
	.4byte	0x5fa
	.4byte	0x1010
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC180
	.byte	0
	.uleb128 0x2
	.4byte	.LVL412
	.4byte	0x5fa
	.4byte	0x1027
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC182
	.byte	0
	.uleb128 0x2
	.4byte	.LVL413
	.4byte	0x5fa
	.4byte	0x103e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC183
	.byte	0
	.uleb128 0x2
	.4byte	.LVL414
	.4byte	0x5fa
	.4byte	0x1055
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC184
	.byte	0
	.uleb128 0x2
	.4byte	.LVL415
	.4byte	0x5fa
	.4byte	0x106c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC185
	.byte	0
	.uleb128 0x9
	.4byte	.LVL416
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL417
	.4byte	0x5fa
	.4byte	0x108c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC186
	.byte	0
	.uleb128 0x9
	.4byte	.LVL418
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL419
	.4byte	0x5fa
	.4byte	0x10ac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC187
	.byte	0
	.uleb128 0x9
	.4byte	.LVL420
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL421
	.4byte	0x5fa
	.4byte	0x10cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC188
	.byte	0
	.uleb128 0x9
	.4byte	.LVL422
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL423
	.4byte	0x5fa
	.4byte	0x10ec
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC189
	.byte	0
	.uleb128 0x9
	.4byte	.LVL424
	.4byte	0x5fa
	.uleb128 0x1a
	.4byte	.LVL425
	.4byte	0x5fa
	.4byte	0x110c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC190
	.byte	0
	.uleb128 0x2
	.4byte	.LVL426
	.4byte	0x5fa
	.4byte	0x1123
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC178
	.byte	0
	.uleb128 0x2
	.4byte	.LVL427
	.4byte	0x5fa
	.4byte	0x113a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC177
	.byte	0
	.uleb128 0x2
	.4byte	.LVL428
	.4byte	0x5fa
	.4byte	0x1151
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC179
	.byte	0
	.uleb128 0x2
	.4byte	.LVL429
	.4byte	0x5fa
	.4byte	0x1168
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC178
	.byte	0
	.uleb128 0x2
	.4byte	.LVL430
	.4byte	0x5fa
	.4byte	0x117f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC177
	.byte	0
	.uleb128 0x7
	.4byte	.LVL431
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC179
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF119
	.2byte	0x378
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1303
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x37d
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST154
	.4byte	.LVUS154
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x37e
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST155
	.4byte	.LVUS155
	.uleb128 0x3
	.4byte	.LASF122
	.2byte	0x37f
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST156
	.4byte	.LVUS156
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x381
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x3
	.4byte	.LASF124
	.2byte	0x382
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST158
	.4byte	.LVUS158
	.uleb128 0x3
	.4byte	.LASF125
	.2byte	0x383
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST159
	.4byte	.LVUS159
	.uleb128 0xa
	.4byte	.LLRL160
	.4byte	0x12ba
	.uleb128 0x5
	.ascii	"t\000"
	.2byte	0x385
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST161
	.4byte	.LVUS161
	.uleb128 0x12
	.4byte	.LLRL162
	.uleb128 0x5
	.ascii	"vs\000"
	.2byte	0x387
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST163
	.4byte	.LVUS163
	.uleb128 0x5
	.ascii	"hs\000"
	.2byte	0x388
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST164
	.4byte	.LVUS164
	.uleb128 0x5
	.ascii	"pc\000"
	.2byte	0x389
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST165
	.4byte	.LVUS165
	.uleb128 0x2
	.4byte	.LVL394
	.4byte	0x5fa
	.4byte	0x1297
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC160
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LVL398
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC161
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL376
	.4byte	0x5fa
	.4byte	0x12d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC159
	.byte	0
	.uleb128 0x2
	.4byte	.LVL377
	.4byte	0x5fa
	.4byte	0x12e8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC154
	.byte	0
	.uleb128 0xc
	.4byte	.LVL391
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC162
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF126
	.2byte	0x33c
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c2
	.uleb128 0x3
	.4byte	.LASF99
	.2byte	0x341
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST140
	.4byte	.LVUS140
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0x342
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST141
	.4byte	.LVUS141
	.uleb128 0x3
	.4byte	.LASF100
	.2byte	0x343
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST142
	.4byte	.LVUS142
	.uleb128 0x3
	.4byte	.LASF127
	.2byte	0x345
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST143
	.4byte	.LVUS143
	.uleb128 0x3
	.4byte	.LASF128
	.2byte	0x346
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST144
	.4byte	.LVUS144
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x348
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST145
	.4byte	.LVUS145
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x349
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST146
	.4byte	.LVUS146
	.uleb128 0x3
	.4byte	.LASF122
	.2byte	0x34a
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST147
	.4byte	.LVUS147
	.uleb128 0x2d
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x34c
	.byte	0xe
	.4byte	0x72
	.byte	0
	.uleb128 0xa
	.4byte	.LLRL148
	.4byte	0x1444
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x34d
	.byte	0xd
	.4byte	0x91
	.4byte	.LLST149
	.4byte	.LVUS149
	.uleb128 0x12
	.4byte	.LLRL150
	.uleb128 0x5
	.ascii	"vs\000"
	.2byte	0x34f
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST151
	.4byte	.LVUS151
	.uleb128 0x5
	.ascii	"hs\000"
	.2byte	0x350
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST152
	.4byte	.LVUS152
	.uleb128 0x5
	.ascii	"pc\000"
	.2byte	0x351
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST153
	.4byte	.LVUS153
	.uleb128 0x9
	.4byte	.LVL367
	.4byte	0x5e9
	.uleb128 0x7
	.4byte	.LVL372
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC155
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL354
	.4byte	0x5fa
	.4byte	0x145b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC153
	.byte	0
	.uleb128 0x2
	.4byte	.LVL355
	.4byte	0x5fa
	.4byte	0x1472
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC154
	.byte	0
	.uleb128 0x2
	.4byte	.LVL368
	.4byte	0x5fa
	.4byte	0x1489
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC156
	.byte	0
	.uleb128 0x2
	.4byte	.LVL369
	.4byte	0x5fa
	.4byte	0x14a7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC157
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL371
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC158
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -56
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.2byte	0x328
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b0
	.uleb128 0x2
	.4byte	.LVL484
	.4byte	0x5fa
	.4byte	0x14ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC213
	.byte	0
	.uleb128 0x2
	.4byte	.LVL485
	.4byte	0x5fa
	.4byte	0x1505
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC214
	.byte	0
	.uleb128 0x2
	.4byte	.LVL486
	.4byte	0x5fa
	.4byte	0x151c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC215
	.byte	0
	.uleb128 0x2
	.4byte	.LVL487
	.4byte	0x5fa
	.4byte	0x1533
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC216
	.byte	0
	.uleb128 0x2
	.4byte	.LVL488
	.4byte	0x5fa
	.4byte	0x154a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC217
	.byte	0
	.uleb128 0x2
	.4byte	.LVL489
	.4byte	0x5fa
	.4byte	0x1561
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC218
	.byte	0
	.uleb128 0x2
	.4byte	.LVL490
	.4byte	0x5fa
	.4byte	0x1578
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC219
	.byte	0
	.uleb128 0x2
	.4byte	.LVL491
	.4byte	0x5fa
	.4byte	0x158f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC220
	.byte	0
	.uleb128 0x2
	.4byte	.LVL492
	.4byte	0x5fa
	.4byte	0x15a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC221
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL493
	.4byte	0x996
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.2byte	0x2fc
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1839
	.uleb128 0x3
	.4byte	.LASF90
	.2byte	0x301
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x3
	.4byte	.LASF91
	.2byte	0x301
	.byte	0x1c
	.4byte	0x72
	.4byte	.LLST128
	.4byte	.LVUS128
	.uleb128 0x3
	.4byte	.LASF92
	.2byte	0x301
	.byte	0x2a
	.4byte	0x72
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0x3
	.4byte	.LASF93
	.2byte	0x301
	.byte	0x38
	.4byte	0x72
	.4byte	.LLST130
	.4byte	.LVUS130
	.uleb128 0x3
	.4byte	.LASF94
	.2byte	0x302
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST131
	.4byte	.LVUS131
	.uleb128 0x3
	.4byte	.LASF95
	.2byte	0x302
	.byte	0x1c
	.4byte	0x72
	.4byte	.LLST132
	.4byte	.LVUS132
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x302
	.byte	0x2a
	.4byte	0x72
	.4byte	.LLST133
	.4byte	.LVUS133
	.uleb128 0x3
	.4byte	.LASF97
	.2byte	0x302
	.byte	0x38
	.4byte	0x72
	.4byte	.LLST134
	.4byte	.LVUS134
	.uleb128 0x3
	.4byte	.LASF98
	.2byte	0x303
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST135
	.4byte	.LVUS135
	.uleb128 0x3
	.4byte	.LASF99
	.2byte	0x303
	.byte	0x1f
	.4byte	0x72
	.4byte	.LLST136
	.4byte	.LVUS136
	.uleb128 0x3
	.4byte	.LASF100
	.2byte	0x303
	.byte	0x30
	.4byte	0x72
	.4byte	.LLST137
	.4byte	.LVUS137
	.uleb128 0xa
	.4byte	.LLRL138
	.4byte	0x16cc
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x305
	.byte	0xd
	.4byte	0x91
	.4byte	.LLST139
	.4byte	.LVUS139
	.uleb128 0x7
	.4byte	.LVL340
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL326
	.4byte	0x5fa
	.4byte	0x16e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC140
	.byte	0
	.uleb128 0x2
	.4byte	.LVL327
	.4byte	0x5fa
	.4byte	0x16fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.byte	0
	.uleb128 0x2
	.4byte	.LVL341
	.4byte	0x5fa
	.4byte	0x1718
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC142
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL342
	.4byte	0x5fa
	.4byte	0x1735
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC143
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL343
	.4byte	0x5fa
	.4byte	0x1752
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC144
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL344
	.4byte	0x5fa
	.4byte	0x1770
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC145
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL345
	.4byte	0x5fa
	.4byte	0x178f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC146
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL346
	.4byte	0x5fa
	.4byte	0x17ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC147
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL347
	.4byte	0x5fa
	.4byte	0x17cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC148
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL348
	.4byte	0x5fa
	.4byte	0x17e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC149
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL349
	.4byte	0x5fa
	.4byte	0x1807
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC150
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL350
	.4byte	0x5fa
	.4byte	0x1825
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC151
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LVL353
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC152
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.2byte	0x2ce
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194f
	.uleb128 0x13
	.byte	0x8
	.byte	0x1
	.2byte	0x2d0
	.byte	0x5
	.4byte	0x1882
	.uleb128 0xb
	.ascii	"reg\000"
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x42
	.byte	0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x2d2
	.byte	0x11
	.4byte	0x42
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x2d3
	.byte	0x15
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF117
	.2byte	0x2d4
	.byte	0x7
	.4byte	0x194f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.ascii	"val\000"
	.2byte	0x2e7
	.byte	0xd
	.4byte	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0xa
	.4byte	.LLRL125
	.4byte	0x1917
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x2e8
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x9
	.4byte	.LVL320
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL321
	.4byte	0x5e9
	.4byte	0x18d9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL322
	.4byte	0x5c9
	.4byte	0x18f3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL323
	.4byte	0x5fa
	.4byte	0x1907
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LVL324
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL318
	.4byte	0x31c9
	.4byte	0x193b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x7
	.4byte	.LVL325
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC139
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x184e
	.4byte	0x195f
	.uleb128 0x11
	.4byte	0x98
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.2byte	0x2aa
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a2a
	.uleb128 0x3
	.4byte	.LASF134
	.2byte	0x2b9
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST122
	.4byte	.LVUS122
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x2ba
	.byte	0x9
	.4byte	0x91
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x22
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0x19d1
	.uleb128 0x5
	.ascii	"pix\000"
	.2byte	0x2c0
	.byte	0x16
	.4byte	0x72
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x7
	.4byte	.LVL315
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC133
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL310
	.4byte	0x5fa
	.4byte	0x19e8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC131
	.byte	0
	.uleb128 0x2
	.4byte	.LVL311
	.4byte	0x5fa
	.4byte	0x19ff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL316
	.4byte	0x5fa
	.4byte	0x1a16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC134
	.byte	0
	.uleb128 0xc
	.4byte	.LVL317
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC135
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF136
	.2byte	0x266
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b71
	.uleb128 0xa
	.4byte	.LLRL111
	.4byte	0x1b46
	.uleb128 0x5
	.ascii	"vs\000"
	.2byte	0x26b
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST112
	.4byte	.LVUS112
	.uleb128 0x12
	.4byte	.LLRL113
	.uleb128 0x5
	.ascii	"pck\000"
	.2byte	0x26c
	.byte	0x12
	.4byte	0x91
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x12
	.4byte	.LLRL115
	.uleb128 0x3
	.4byte	.LASF134
	.2byte	0x287
	.byte	0x16
	.4byte	0x72
	.4byte	.LLST116
	.4byte	.LVUS116
	.uleb128 0x3
	.4byte	.LASF137
	.2byte	0x293
	.byte	0x11
	.4byte	0x91
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0xa
	.4byte	.LLRL118
	.4byte	0x1aeb
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x294
	.byte	0x16
	.4byte	0x91
	.4byte	.LLST119
	.4byte	.LVUS119
	.uleb128 0x12
	.4byte	.LLRL120
	.uleb128 0x5
	.ascii	"d\000"
	.2byte	0x296
	.byte	0x1a
	.4byte	0x72
	.4byte	.LLST121
	.4byte	.LVUS121
	.uleb128 0x7
	.4byte	.LVL299
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL284
	.4byte	0x5fa
	.4byte	0x1b02
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC125
	.byte	0
	.uleb128 0x2
	.4byte	.LVL295
	.4byte	0x5fa
	.4byte	0x1b19
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC127
	.byte	0
	.uleb128 0x2
	.4byte	.LVL303
	.4byte	0x5fa
	.4byte	0x1b30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC130
	.byte	0
	.uleb128 0x7
	.4byte	.LVL306
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL281
	.4byte	0x5fa
	.4byte	0x1b5d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.byte	0
	.uleb128 0xc
	.4byte	.LVL309
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF138
	.2byte	0x23d
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c17
	.uleb128 0x3
	.4byte	.LASF139
	.2byte	0x248
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST107
	.4byte	.LVUS107
	.uleb128 0x3
	.4byte	.LASF134
	.2byte	0x249
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST108
	.4byte	.LVUS108
	.uleb128 0xa
	.4byte	.LLRL109
	.4byte	0x1bd5
	.uleb128 0x3
	.4byte	.LASF140
	.2byte	0x259
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST110
	.4byte	.LVUS110
	.uleb128 0x9
	.4byte	.LVL276
	.4byte	0x5fa
	.byte	0
	.uleb128 0x2
	.4byte	.LVL271
	.4byte	0x5fa
	.4byte	0x1bec
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC118
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL279
	.4byte	0x5fa
	.4byte	0x1c03
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC121
	.byte	0
	.uleb128 0xc
	.4byte	.LVL280
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC119
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF141
	.2byte	0x22e
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c86
	.uleb128 0x3
	.4byte	.LASF139
	.2byte	0x230
	.byte	0x9
	.4byte	0x91
	.4byte	.LLST104
	.4byte	.LVUS104
	.uleb128 0xa
	.4byte	.LLRL105
	.4byte	0x1c72
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x231
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST106
	.4byte	.LVUS106
	.uleb128 0x7
	.4byte	.LVL267
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL270
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF142
	.2byte	0x212
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd8
	.uleb128 0x5
	.ascii	"d0\000"
	.2byte	0x221
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST95
	.4byte	.LVUS95
	.uleb128 0x5
	.ascii	"d1\000"
	.2byte	0x222
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST96
	.4byte	.LVUS96
	.uleb128 0x3
	.4byte	.LASF114
	.2byte	0x223
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST97
	.4byte	.LVUS97
	.uleb128 0x3
	.4byte	.LASF112
	.2byte	0x224
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST98
	.4byte	.LVUS98
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x225
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST99
	.4byte	.LVUS99
	.uleb128 0xa
	.4byte	.LLRL100
	.4byte	0x1d2f
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x218
	.byte	0x13
	.4byte	0x72
	.4byte	.LLST101
	.4byte	.LVUS101
	.uleb128 0x7
	.4byte	.LVL244
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LLRL102
	.4byte	0x1d61
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x21d
	.byte	0x13
	.4byte	0x72
	.4byte	.LLST103
	.4byte	.LVUS103
	.uleb128 0x7
	.4byte	.LVL248
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL240
	.4byte	0x5fa
	.4byte	0x1d78
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC111
	.byte	0
	.uleb128 0x2
	.4byte	.LVL241
	.4byte	0x5fa
	.4byte	0x1d8f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.byte	0
	.uleb128 0x2
	.4byte	.LVL245
	.4byte	0x5fa
	.4byte	0x1da6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC113
	.byte	0
	.uleb128 0x2
	.4byte	.LVL260
	.4byte	0x5fa
	.4byte	0x1dc4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC114
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL261
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC115
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF143
	.2byte	0x208
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e2e
	.uleb128 0x28
	.ascii	"n\000"
	.2byte	0x208
	.byte	0x20
	.4byte	0x72
	.4byte	.LLST92
	.4byte	.LVUS92
	.uleb128 0x12
	.4byte	.LLRL93
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x20a
	.byte	0x13
	.4byte	0x72
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x7
	.4byte	.LVL238
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.2byte	0x1d4
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x206e
	.uleb128 0x1f
	.4byte	.LASF145
	.2byte	0x1d4
	.byte	0x2c
	.4byte	0x72
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x2f
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1d6
	.byte	0xe
	.4byte	0x72
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x1d7
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x1d7
	.byte	0x1c
	.4byte	0x42
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x1d8
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x3
	.4byte	.LASF149
	.2byte	0x1d8
	.byte	0x1d
	.4byte	0x42
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0x3
	.4byte	.LASF150
	.2byte	0x1d9
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x3
	.4byte	.LASF151
	.2byte	0x1d9
	.byte	0x1d
	.4byte	0x42
	.4byte	.LLST83
	.4byte	.LVUS83
	.uleb128 0x14
	.4byte	.LASF152
	.2byte	0x1da
	.byte	0xd
	.4byte	0x206e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LASF153
	.2byte	0x1da
	.byte	0x23
	.4byte	0x206e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1f95
	.uleb128 0x3
	.4byte	.LASF154
	.2byte	0x1de
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x3
	.4byte	.LASF155
	.2byte	0x1df
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0x3
	.4byte	.LASF156
	.2byte	0x1e0
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST86
	.4byte	.LVUS86
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x1e1
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST87
	.4byte	.LVUS87
	.uleb128 0x3
	.4byte	.LASF158
	.2byte	0x1e2
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST88
	.4byte	.LVUS88
	.uleb128 0x19
	.ascii	"d\000"
	.2byte	0x1ea
	.byte	0x11
	.4byte	0x206e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x1f4
	.byte	0x12
	.4byte	0x91
	.4byte	.LLST89
	.4byte	.LVUS89
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LLRL90
	.4byte	0x1fc7
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x200
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0x7
	.4byte	.LVL231
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL198
	.4byte	0x611
	.uleb128 0x9
	.4byte	.LVL200
	.4byte	0x611
	.uleb128 0x2
	.4byte	.LVL222
	.4byte	0x5fa
	.4byte	0x1ff7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC104
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL224
	.4byte	0x5fa
	.4byte	0x2014
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL225
	.4byte	0x5fa
	.4byte	0x2037
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC106
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL226
	.4byte	0x5fa
	.4byte	0x205a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL234
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC109
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x42
	.4byte	0x207e
	.uleb128 0x11
	.4byte	0x98
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF159
	.2byte	0x18d
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213c
	.uleb128 0x14
	.4byte	.LASF160
	.2byte	0x18f
	.byte	0xd
	.4byte	0x213c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.ascii	"val\000"
	.2byte	0x19e
	.byte	0xd
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x14
	.4byte	.LASF12
	.2byte	0x1a0
	.byte	0xd
	.4byte	0x213c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LLRL75
	.4byte	0x2111
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x1c3
	.byte	0x12
	.4byte	0x42
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x2
	.4byte	.LVL193
	.4byte	0x5c9
	.4byte	0x20fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x7
	.4byte	.LVL194
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL190
	.4byte	0x5fa
	.4byte	0x2128
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC101
	.byte	0
	.uleb128 0x7
	.4byte	.LVL195
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC103
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x42
	.4byte	0x214c
	.uleb128 0x11
	.4byte	0x98
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF161
	.2byte	0x17e
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2188
	.uleb128 0x5
	.ascii	"sr\000"
	.2byte	0x180
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x7
	.4byte	.LVL189
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF162
	.2byte	0x166
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x224e
	.uleb128 0x28
	.ascii	"buf\000"
	.2byte	0x166
	.byte	0x29
	.4byte	0x224e
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x1f
	.4byte	.LASF79
	.2byte	0x166
	.byte	0x37
	.4byte	0x72
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x168
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x3
	.4byte	.LASF163
	.2byte	0x169
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x9
	.4byte	.LVL177
	.4byte	0x5fa
	.uleb128 0x2
	.4byte	.LVL181
	.4byte	0x5fa
	.4byte	0x220e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL183
	.4byte	0x5fa
	.4byte	0x222c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xc
	.4byte	.LVL187
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF164
	.2byte	0x135
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23de
	.uleb128 0x3
	.4byte	.LASF134
	.2byte	0x147
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x3
	.4byte	.LASF165
	.2byte	0x148
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x31
	.4byte	0x31bf
	.4byte	.LBI16
	.byte	.LVU454
	.4byte	.LLRL69
	.byte	0x1
	.2byte	0x159
	.byte	0x9
	.uleb128 0x2
	.4byte	.LVL156
	.4byte	0x5fa
	.4byte	0x22b9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.byte	0
	.uleb128 0x2
	.4byte	.LVL157
	.4byte	0x5fa
	.4byte	0x22d0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.byte	0
	.uleb128 0x2
	.4byte	.LVL158
	.4byte	0x5fa
	.4byte	0x22e7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.byte	0
	.uleb128 0x2
	.4byte	.LVL159
	.4byte	0x5fa
	.4byte	0x22fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.byte	0
	.uleb128 0x2
	.4byte	.LVL160
	.4byte	0x5fa
	.4byte	0x2315
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.byte	0
	.uleb128 0x2
	.4byte	.LVL161
	.4byte	0x5fa
	.4byte	0x232c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.byte	0
	.uleb128 0x2
	.4byte	.LVL162
	.4byte	0x5fa
	.4byte	0x2343
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.byte	0
	.uleb128 0x2
	.4byte	.LVL168
	.4byte	0x5fa
	.4byte	0x235a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.byte	0
	.uleb128 0x2
	.4byte	.LVL169
	.4byte	0x5fa
	.4byte	0x239c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL172
	.4byte	0x5fa
	.4byte	0x23b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL173
	.4byte	0x5fa
	.4byte	0x23ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.byte	0
	.uleb128 0x7
	.4byte	.LVL174
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF166
	.2byte	0x102
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x251d
	.uleb128 0x19
	.ascii	"buf\000"
	.2byte	0x104
	.byte	0xd
	.4byte	0x251d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.ascii	"i\000"
	.2byte	0x105
	.byte	0xe
	.4byte	0x5a
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x3
	.4byte	.LASF167
	.2byte	0x106
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0xa
	.4byte	.LLRL64
	.4byte	0x24f5
	.uleb128 0x5
	.ascii	"reg\000"
	.2byte	0x10c
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x3
	.4byte	.LASF12
	.2byte	0x10d
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x2
	.4byte	.LVL148
	.4byte	0x5c9
	.4byte	0x2478
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL149
	.4byte	0x5e9
	.4byte	0x248b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL150
	.4byte	0x5fa
	.4byte	0x24ae
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL151
	.4byte	0x5e9
	.4byte	0x24c1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2
	.4byte	.LVL154
	.4byte	0x5e9
	.4byte	0x24d5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.4byte	.LVL155
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL140
	.4byte	0x5e9
	.4byte	0x2509
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.4byte	.LVL144
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x42
	.4byte	0x252d
	.uleb128 0x11
	.4byte	0x98
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0xe5
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25b0
	.uleb128 0x32
	.ascii	"buf\000"
	.byte	0x1
	.byte	0xe6
	.byte	0xd
	.4byte	0x251d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LLRL60
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0xe7
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x2
	.4byte	.LVL135
	.4byte	0x5c9
	.4byte	0x2585
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL136
	.4byte	0x5fa
	.4byte	0x259f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LVL137
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF208
	.byte	0x1
	.byte	0x91
	.byte	0x5
	.4byte	0x91
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2725
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x91
	.byte	0x26
	.4byte	0x224e
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x91
	.byte	0x36
	.4byte	0x72
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0xe
	.ascii	"ok\000"
	.byte	0x93
	.byte	0x9
	.4byte	0x91
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0xe
	.ascii	"cr\000"
	.byte	0xae
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x2
	.4byte	.LVL104
	.4byte	0x5fa
	.4byte	0x262b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.byte	0
	.uleb128 0x2
	.4byte	.LVL106
	.4byte	0x5fa
	.4byte	0x2642
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0
	.uleb128 0x2
	.4byte	.LVL108
	.4byte	0x5fa
	.4byte	0x2659
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.uleb128 0x2
	.4byte	.LVL111
	.4byte	0x5fa
	.4byte	0x2670
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.byte	0
	.uleb128 0x2
	.4byte	.LVL115
	.4byte	0x5fa
	.4byte	0x2687
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.byte	0
	.uleb128 0x2
	.4byte	.LVL117
	.4byte	0x5fa
	.4byte	0x269e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.uleb128 0x2
	.4byte	.LVL119
	.4byte	0x5fa
	.4byte	0x26b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.byte	0
	.uleb128 0x2
	.4byte	.LVL121
	.4byte	0x5fa
	.4byte	0x26cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.uleb128 0x2
	.4byte	.LVL124
	.4byte	0x5fa
	.4byte	0x26e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.uleb128 0x2
	.4byte	.LVL126
	.4byte	0x5fa
	.4byte	0x26fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.byte	0
	.uleb128 0x2
	.4byte	.LVL128
	.4byte	0x5fa
	.4byte	0x2711
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0
	.uleb128 0x7
	.4byte	.LVL131
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0x71
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28b0
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x71
	.byte	0x1f
	.4byte	0x72
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x71
	.byte	0x35
	.4byte	0x72
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x34
	.4byte	.LASF173
	.byte	0x1
	.byte	0x73
	.byte	0xe
	.4byte	0x72
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x74
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0xa
	.4byte	.LLRL44
	.4byte	0x289d
	.uleb128 0xe
	.ascii	"d0\000"
	.byte	0x79
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0xe
	.ascii	"d1\000"
	.byte	0x7a
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0xe
	.ascii	"d2\000"
	.byte	0x7b
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0xe
	.ascii	"d3\000"
	.byte	0x7c
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0xe
	.ascii	"d4\000"
	.byte	0x7d
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0xe
	.ascii	"d5\000"
	.byte	0x7e
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0xe
	.ascii	"d6\000"
	.byte	0x7f
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0xe
	.ascii	"d7\000"
	.byte	0x80
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x83
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x84
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x85
	.byte	0x11
	.4byte	0x42
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x2
	.4byte	.LVL98
	.4byte	0x5fa
	.4byte	0x288b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LVL99
	.4byte	0x5e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL73
	.4byte	0x611
	.uleb128 0x9
	.4byte	.LVL100
	.4byte	0x611
	.byte	0
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0xc
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31bf
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0xc
	.byte	0x29
	.4byte	0x72
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0xe
	.byte	0xe
	.4byte	0x72
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x6
	.4byte	.LASF146
	.byte	0x11
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0x11
	.byte	0x1c
	.4byte	0x42
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x11
	.byte	0x2c
	.4byte	0x42
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x6
	.4byte	.LASF175
	.byte	0x12
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x6
	.4byte	.LASF176
	.byte	0x12
	.byte	0x1a
	.4byte	0x42
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x6
	.4byte	.LASF177
	.byte	0x12
	.byte	0x27
	.4byte	0x42
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x6
	.4byte	.LASF178
	.byte	0x12
	.byte	0x34
	.4byte	0x42
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x6
	.4byte	.LASF179
	.byte	0x13
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x6
	.4byte	.LASF180
	.byte	0x13
	.byte	0x1a
	.4byte	0x42
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x6
	.4byte	.LASF181
	.byte	0x13
	.byte	0x27
	.4byte	0x42
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0x13
	.byte	0x34
	.4byte	0x42
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0x16
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x6
	.4byte	.LASF184
	.byte	0x16
	.byte	0x21
	.4byte	0x42
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0x17
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0x17
	.byte	0x22
	.4byte	0x42
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x6
	.4byte	.LASF187
	.byte	0x18
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x6
	.4byte	.LASF188
	.byte	0x18
	.byte	0x22
	.4byte	0x42
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x6
	.4byte	.LASF189
	.byte	0x19
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x6
	.4byte	.LASF190
	.byte	0x19
	.byte	0x1f
	.4byte	0x42
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x6
	.4byte	.LASF191
	.byte	0x19
	.byte	0x31
	.4byte	0x42
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x6
	.4byte	.LASF192
	.byte	0x19
	.byte	0x43
	.4byte	0x42
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0x1a
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0x1a
	.byte	0x1f
	.4byte	0x42
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x1a
	.byte	0x31
	.4byte	0x42
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x6
	.4byte	.LASF196
	.byte	0x1a
	.byte	0x43
	.4byte	0x42
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0x1b
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x6
	.4byte	.LASF198
	.byte	0x1b
	.byte	0x1e
	.4byte	0x42
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0x1b
	.byte	0x2f
	.4byte	0x42
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x6
	.4byte	.LASF200
	.byte	0x1b
	.byte	0x40
	.4byte	0x42
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x1c
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0x1c
	.byte	0x1e
	.4byte	0x42
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x1c
	.byte	0x2f
	.4byte	0x42
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0x1c
	.byte	0x40
	.4byte	0x42
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0xa
	.4byte	.LLRL35
	.4byte	0x2bc6
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x20
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0x21
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0x22
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0x23
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0x24
	.byte	0x12
	.4byte	0x72
	.4byte	.LLST40
	.4byte	.LVUS40
	.byte	0
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x611
	.uleb128 0x9
	.4byte	.LVL25
	.4byte	0x611
	.uleb128 0x2
	.4byte	.LVL34
	.4byte	0x5fa
	.4byte	0x2bf5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL35
	.4byte	0x5fa
	.4byte	0x2c25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x15
	.byte	0x3
	.4byte	.LC25
	.byte	0x3
	.4byte	.LC24
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL36
	.4byte	0x5fa
	.4byte	0x2c4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL37
	.4byte	0x5fa
	.4byte	0x2c79
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL38
	.4byte	0x5fa
	.4byte	0x2ca9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x15
	.byte	0x3
	.4byte	.LC25
	.byte	0x3
	.4byte	.LC24
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL39
	.4byte	0x5fa
	.4byte	0x2cd2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xe
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL40
	.4byte	0x5fa
	.4byte	0x2cfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xe
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL41
	.4byte	0x5fa
	.4byte	0x2d2b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x15
	.byte	0x3
	.4byte	.LC25
	.byte	0x3
	.4byte	.LC24
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL42
	.4byte	0x5fa
	.4byte	0x2d54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xe
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL43
	.4byte	0x5fa
	.4byte	0x2d7d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xe
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL44
	.4byte	0x5fa
	.4byte	0x2dad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x15
	.byte	0x3
	.4byte	.LC25
	.byte	0x3
	.4byte	.LC24
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL45
	.4byte	0x5fa
	.4byte	0x2dd7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL46
	.4byte	0x5fa
	.4byte	0x2e01
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -124
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL47
	.4byte	0x5fa
	.4byte	0x2e2f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x13
	.byte	0x3
	.4byte	.LC25
	.byte	0x3
	.4byte	.LC24
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL48
	.4byte	0x5fa
	.4byte	0x2e59
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL49
	.4byte	0x5fa
	.4byte	0x2e83
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL50
	.4byte	0x5fa
	.4byte	0x2eaf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x11
	.byte	0x3
	.4byte	.LC25
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL51
	.4byte	0x5fa
	.4byte	0x2ed9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL52
	.4byte	0x5fa
	.4byte	0x2f03
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -116
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL53
	.4byte	0x5fa
	.4byte	0x2f2e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x10
	.byte	0x3
	.4byte	.LC25
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL54
	.4byte	0x5fa
	.4byte	0x2f58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL55
	.4byte	0x5fa
	.4byte	0x2f82
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL56
	.4byte	0x5fa
	.4byte	0x2fad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x10
	.byte	0x3
	.4byte	.LC25
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL57
	.4byte	0x5fa
	.4byte	0x2fd7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -140
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL58
	.4byte	0x5fa
	.4byte	0x3001
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL59
	.4byte	0x5fa
	.4byte	0x302d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x11
	.byte	0x3
	.4byte	.LC25
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL60
	.4byte	0x5fa
	.4byte	0x3057
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL61
	.4byte	0x5fa
	.4byte	0x3081
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL62
	.4byte	0x5fa
	.4byte	0x30ac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x10
	.byte	0x3
	.4byte	.LC25
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL63
	.4byte	0x5fa
	.4byte	0x30d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL64
	.4byte	0x5fa
	.4byte	0x3100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL65
	.4byte	0x5fa
	.4byte	0x312b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x10
	.byte	0x3
	.4byte	.LC25
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL66
	.4byte	0x5fa
	.4byte	0x3155
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL67
	.4byte	0x5fa
	.4byte	0x317d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xd
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL68
	.4byte	0x5fa
	.4byte	0x3194
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.uleb128 0x2
	.4byte	.LVL69
	.4byte	0x5fa
	.4byte	0x31ab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.byte	0
	.uleb128 0xc
	.4byte	.LVL71
	.4byte	0x5fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF209
	.byte	0x2
	.2byte	0x10d
	.byte	0x39
	.byte	0x3
	.uleb128 0x36
	.4byte	.LASF210
	.4byte	.LASF211
	.byte	0xb
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS213:
	.uleb128 0
	.uleb128 .LVU1700
	.uleb128 .LVU1700
	.uleb128 .LVU1707
	.uleb128 .LVU1707
	.uleb128 0
.LLST213:
	.byte	0x4
	.uleb128 .LVL518-.Ltext0
	.uleb128 .LVL519-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL519-.Ltext0
	.uleb128 .LVL522-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL522-.Ltext0
	.uleb128 .LFE136-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS214:
	.uleb128 0
	.uleb128 .LVU1702
	.uleb128 .LVU1702
	.uleb128 0
.LLST214:
	.byte	0x4
	.uleb128 .LVL518-.Ltext0
	.uleb128 .LVL520-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL520-1-.Ltext0
	.uleb128 .LFE136-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS215:
	.uleb128 .LVU1705
	.uleb128 .LVU1707
	.uleb128 .LVU1707
	.uleb128 .LVU1716
	.uleb128 .LVU1716
	.uleb128 .LVU1718
	.uleb128 .LVU1718
	.uleb128 .LVU1719
.LLST215:
	.byte	0x4
	.uleb128 .LVL521-.Ltext0
	.uleb128 .LVL522-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL522-.Ltext0
	.uleb128 .LVL525-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL525-.Ltext0
	.uleb128 .LVL526-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL526-.Ltext0
	.uleb128 .LVL527-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS217:
	.uleb128 .LVU1711
	.uleb128 .LVU1719
.LLST217:
	.byte	0x4
	.uleb128 .LVL523-.Ltext0
	.uleb128 .LVL527-.Ltext0
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS218:
	.uleb128 .LVU1712
	.uleb128 .LVU1714
.LLST218:
	.byte	0x4
	.uleb128 .LVL523-.Ltext0
	.uleb128 .LVL524-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS210:
	.uleb128 .LVU1682
	.uleb128 .LVU1694
.LLST210:
	.byte	0x4
	.uleb128 .LVL509-.Ltext0
	.uleb128 .LVL516-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS211:
	.uleb128 .LVU1684
	.uleb128 .LVU1694
.LLST211:
	.byte	0x4
	.uleb128 .LVL510-.Ltext0
	.uleb128 .LVL516-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS212:
	.uleb128 .LVU1686
	.uleb128 .LVU1694
.LLST212:
	.byte	0x4
	.uleb128 .LVL511-.Ltext0
	.uleb128 .LVL516-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS204:
	.uleb128 .LVU1643
	.uleb128 .LVU1675
.LLST204:
	.byte	0x4
	.uleb128 .LVL494-.Ltext0
	.uleb128 .LVL507-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS205:
	.uleb128 .LVU1645
	.uleb128 .LVU1675
.LLST205:
	.byte	0x4
	.uleb128 .LVL495-.Ltext0
	.uleb128 .LVL507-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS206:
	.uleb128 .LVU1647
	.uleb128 .LVU1675
.LLST206:
	.byte	0x4
	.uleb128 .LVL496-.Ltext0
	.uleb128 .LVL507-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS207:
	.uleb128 .LVU1649
	.uleb128 .LVU1658
.LLST207:
	.byte	0x4
	.uleb128 .LVL497-.Ltext0
	.uleb128 .LVL502-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS208:
	.uleb128 .LVU1651
	.uleb128 .LVU1675
.LLST208:
	.byte	0x4
	.uleb128 .LVL498-.Ltext0
	.uleb128 .LVL507-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS209:
	.uleb128 .LVU1655
	.uleb128 .LVU1660
.LLST209:
	.byte	0x4
	.uleb128 .LVL500-.Ltext0
	.uleb128 .LVL503-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS168:
	.uleb128 .LVU1449
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST168:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -84
	.byte	0
.LVUS169:
	.uleb128 .LVU1449
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST169:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -80
	.byte	0
.LVUS170:
	.uleb128 .LVU1449
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST170:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -76
	.byte	0
.LVUS171:
	.uleb128 .LVU1449
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST171:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -72
	.byte	0
.LVUS172:
	.uleb128 .LVU1450
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST172:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -68
	.byte	0
.LVUS173:
	.uleb128 .LVU1450
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST173:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
.LVUS174:
	.uleb128 .LVU1450
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST174:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -60
	.byte	0
.LVUS175:
	.uleb128 .LVU1450
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST175:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -56
	.byte	0
.LVUS176:
	.uleb128 .LVU1451
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST176:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -52
	.byte	0
.LVUS177:
	.uleb128 .LVU1451
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST177:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -48
	.byte	0
.LVUS178:
	.uleb128 .LVU1451
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST178:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -44
	.byte	0
.LVUS179:
	.uleb128 .LVU1452
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1474
	.uleb128 .LVU1474
	.uleb128 .LVU1576
	.uleb128 .LVU1576
	.uleb128 .LVU1601
.LLST179:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL443-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL443-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS180:
	.uleb128 .LVU1452
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1477
	.uleb128 .LVU1477
	.uleb128 .LVU1577
	.uleb128 .LVU1577
	.uleb128 .LVU1601
.LLST180:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL444-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL444-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS181:
	.uleb128 .LVU1452
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1480
	.uleb128 .LVU1480
	.uleb128 .LVU1578
	.uleb128 .LVU1578
	.uleb128 .LVU1601
.LLST181:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL445-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL445-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS182:
	.uleb128 .LVU1452
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1481
	.uleb128 .LVU1481
	.uleb128 .LVU1579
	.uleb128 .LVU1579
	.uleb128 .LVU1601
.LLST182:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL446-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL446-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS183:
	.uleb128 .LVU1453
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1483
	.uleb128 .LVU1483
	.uleb128 .LVU1580
	.uleb128 .LVU1580
	.uleb128 .LVU1601
.LLST183:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL447-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL447-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS184:
	.uleb128 .LVU1453
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1484
	.uleb128 .LVU1484
	.uleb128 .LVU1581
	.uleb128 .LVU1581
	.uleb128 .LVU1601
.LLST184:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL448-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL448-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS185:
	.uleb128 .LVU1453
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1495
	.uleb128 .LVU1495
	.uleb128 .LVU1582
	.uleb128 .LVU1582
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST185:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL451-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x4
	.uleb128 .LVL451-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -156
	.byte	0
.LVUS186:
	.uleb128 .LVU1453
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1497
	.uleb128 .LVU1497
	.uleb128 .LVU1583
	.uleb128 .LVU1583
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST186:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL452-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x4
	.uleb128 .LVL452-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -168
	.byte	0
.LVUS187:
	.uleb128 .LVU1454
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1498
	.uleb128 .LVU1498
	.uleb128 .LVU1584
	.uleb128 .LVU1584
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST187:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL453-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x4
	.uleb128 .LVL453-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -164
	.byte	0
.LVUS188:
	.uleb128 .LVU1454
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1488
	.uleb128 .LVU1488
	.uleb128 .LVU1585
	.uleb128 .LVU1585
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST188:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL449-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x4
	.uleb128 .LVL449-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -160
	.byte	0
.LVUS189:
	.uleb128 .LVU1454
	.uleb128 .LVU1472
	.uleb128 .LVU1472
	.uleb128 .LVU1490
	.uleb128 .LVU1490
	.uleb128 .LVU1586
	.uleb128 .LVU1586
	.uleb128 .LVU1601
.LLST189:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL442-.Ltext0
	.uleb128 .LVL450-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL450-.Ltext0
	.uleb128 .LVL470-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x4
	.uleb128 .LVL470-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS191:
	.uleb128 .LVU1456
	.uleb128 .LVU1472
.LLST191:
	.byte	0x4
	.uleb128 .LVL441-.Ltext0
	.uleb128 .LVL442-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS193:
	.uleb128 .LVU1502
	.uleb128 .LVU1601
.LLST193:
	.byte	0x4
	.uleb128 .LVL454-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS194:
	.uleb128 .LVU1507
	.uleb128 .LVU1601
.LLST194:
	.byte	0x4
	.uleb128 .LVL455-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS195:
	.uleb128 .LVU1508
	.uleb128 .LVU1601
.LLST195:
	.byte	0x4
	.uleb128 .LVL455-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS196:
	.uleb128 .LVU1510
	.uleb128 .LVU1601
.LLST196:
	.byte	0x4
	.uleb128 .LVL456-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS197:
	.uleb128 .LVU1512
	.uleb128 .LVU1601
.LLST197:
	.byte	0x4
	.uleb128 .LVL457-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS198:
	.uleb128 .LVU1514
	.uleb128 .LVU1601
.LLST198:
	.byte	0x4
	.uleb128 .LVL458-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS199:
	.uleb128 .LVU1515
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST199:
	.byte	0x4
	.uleb128 .LVL458-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -156
	.byte	0
.LVUS200:
	.uleb128 .LVU1516
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST200:
	.byte	0x4
	.uleb128 .LVL458-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -168
	.byte	0
.LVUS201:
	.uleb128 .LVU1517
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST201:
	.byte	0x4
	.uleb128 .LVL458-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -164
	.byte	0
.LVUS202:
	.uleb128 .LVU1518
	.uleb128 .LVU1601
	.uleb128 .LVU1601
	.uleb128 0
.LLST202:
	.byte	0x4
	.uleb128 .LVL458-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x4
	.uleb128 .LVL482-.Ltext0
	.uleb128 .LFE133-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -160
	.byte	0
.LVUS203:
	.uleb128 .LVU1520
	.uleb128 .LVU1601
.LLST203:
	.byte	0x4
	.uleb128 .LVL459-.Ltext0
	.uleb128 .LVL482-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS167:
	.uleb128 .LVU1411
	.uleb128 .LVU1413
.LLST167:
	.byte	0x4
	.uleb128 .LVL432-.Ltext0
	.uleb128 .LVL433-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS154:
	.uleb128 .LVU1248
	.uleb128 .LVU1271
	.uleb128 .LVU1286
	.uleb128 .LVU1294
.LLST154:
	.byte	0x4
	.uleb128 .LVL378-.Ltext0
	.uleb128 .LVL384-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL388-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS155:
	.uleb128 .LVU1250
	.uleb128 .LVU1266
	.uleb128 .LVU1287
	.uleb128 .LVU1294
.LLST155:
	.byte	0x4
	.uleb128 .LVL379-.Ltext0
	.uleb128 .LVL382-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL388-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS156:
	.uleb128 .LVU1252
	.uleb128 .LVU1268
	.uleb128 .LVU1288
	.uleb128 .LVU1294
.LLST156:
	.byte	0x4
	.uleb128 .LVL380-.Ltext0
	.uleb128 .LVL383-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL388-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS157:
	.uleb128 .LVU1253
	.uleb128 .LVU1261
	.uleb128 .LVU1261
	.uleb128 .LVU1293
	.uleb128 .LVU1293
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 .LVU1295
	.uleb128 .LVU1295
	.uleb128 .LVU1316
	.uleb128 .LVU1316
	.uleb128 0
.LLST157:
	.byte	0x4
	.uleb128 .LVL380-.Ltext0
	.uleb128 .LVL381-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL381-.Ltext0
	.uleb128 .LVL389-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL389-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL390-.Ltext0
	.uleb128 .LVL391-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL391-.Ltext0
	.uleb128 .LVL398-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL398-.Ltext0
	.uleb128 .LFE130-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS158:
	.uleb128 .LVU1254
	.uleb128 .LVU1261
	.uleb128 .LVU1261
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 .LVU1295
	.uleb128 .LVU1295
	.uleb128 .LVU1295
	.uleb128 .LVU1295
	.uleb128 .LVU1303
	.uleb128 .LVU1303
	.uleb128 .LVU1304
	.uleb128 .LVU1304
	.uleb128 0
.LLST158:
	.byte	0x4
	.uleb128 .LVL380-.Ltext0
	.uleb128 .LVL381-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL381-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x4
	.uleb128 .LVL390-.Ltext0
	.uleb128 .LVL391-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL391-1-.Ltext0
	.uleb128 .LVL391-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -48
	.byte	0x4
	.uleb128 .LVL391-.Ltext0
	.uleb128 .LVL393-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x4
	.uleb128 .LVL393-.Ltext0
	.uleb128 .LVL394-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL394-1-.Ltext0
	.uleb128 .LFE130-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
.LVUS159:
	.uleb128 .LVU1255
	.uleb128 .LVU1261
	.uleb128 .LVU1261
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 .LVU1295
	.uleb128 .LVU1295
	.uleb128 .LVU1300
	.uleb128 .LVU1306
	.uleb128 .LVU1307
	.uleb128 .LVU1307
	.uleb128 .LVU1314
	.uleb128 .LVU1314
	.uleb128 .LVU1315
	.uleb128 .LVU1315
	.uleb128 0
.LLST159:
	.byte	0x4
	.uleb128 .LVL380-.Ltext0
	.uleb128 .LVL381-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL381-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL390-.Ltext0
	.uleb128 .LVL391-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL391-.Ltext0
	.uleb128 .LVL392-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL395-.Ltext0
	.uleb128 .LVL396-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL396-.Ltext0
	.uleb128 .LVL397-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL397-.Ltext0
	.uleb128 .LVL398-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL398-1-.Ltext0
	.uleb128 .LFE130-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
.LVUS161:
	.uleb128 .LVU1257
	.uleb128 .LVU1261
.LLST161:
	.byte	0x4
	.uleb128 .LVL380-.Ltext0
	.uleb128 .LVL381-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS163:
	.uleb128 .LVU1271
	.uleb128 .LVU1294
	.uleb128 .LVU1295
	.uleb128 0
.LLST163:
	.byte	0x4
	.uleb128 .LVL384-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL391-.Ltext0
	.uleb128 .LFE130-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS164:
	.uleb128 .LVU1272
	.uleb128 .LVU1294
	.uleb128 .LVU1295
	.uleb128 0
.LLST164:
	.byte	0x4
	.uleb128 .LVL384-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL391-.Ltext0
	.uleb128 .LFE130-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS165:
	.uleb128 .LVU1274
	.uleb128 .LVU1294
	.uleb128 .LVU1295
	.uleb128 0
.LLST165:
	.byte	0x4
	.uleb128 .LVL385-.Ltext0
	.uleb128 .LVL390-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL391-.Ltext0
	.uleb128 .LFE130-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS140:
	.uleb128 .LVU1161
	.uleb128 .LVU1183
	.uleb128 .LVU1183
	.uleb128 .LVU1222
	.uleb128 .LVU1222
	.uleb128 .LVU1223
	.uleb128 .LVU1223
	.uleb128 .LVU1229
	.uleb128 .LVU1230
	.uleb128 0
.LLST140:
	.byte	0x4
	.uleb128 .LVL355-.Ltext0
	.uleb128 .LVL359-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL359-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL370-.Ltext0
	.uleb128 .LVL371-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL371-.Ltext0
	.uleb128 .LVL374-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL375-.Ltext0
	.uleb128 .LFE129-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
.LVUS141:
	.uleb128 .LVU1162
	.uleb128 .LVU1183
	.uleb128 .LVU1183
	.uleb128 .LVU1205
	.uleb128 .LVU1205
	.uleb128 .LVU1206
	.uleb128 .LVU1206
	.uleb128 .LVU1222
	.uleb128 .LVU1222
	.uleb128 .LVU1223
	.uleb128 .LVU1223
	.uleb128 .LVU1228
	.uleb128 .LVU1232
	.uleb128 0
.LLST141:
	.byte	0x4
	.uleb128 .LVL355-.Ltext0
	.uleb128 .LVL359-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL359-.Ltext0
	.uleb128 .LVL365-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x4
	.uleb128 .LVL365-.Ltext0
	.uleb128 .LVL365-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL365-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x4
	.uleb128 .LVL370-.Ltext0
	.uleb128 .LVL371-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -60
	.byte	0x4
	.uleb128 .LVL371-.Ltext0
	.uleb128 .LVL373-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x4
	.uleb128 .LVL375-.Ltext0
	.uleb128 .LFE129-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS142:
	.uleb128 .LVU1163
	.uleb128 .LVU1183
	.uleb128 .LVU1183
	.uleb128 .LVU1211
	.uleb128 .LVU1211
	.uleb128 .LVU1212
	.uleb128 .LVU1212
	.uleb128 .LVU1222
	.uleb128 .LVU1222
	.uleb128 .LVU1223
	.uleb128 .LVU1223
	.uleb128 0
.LLST142:
	.byte	0x4
	.uleb128 .LVL355-.Ltext0
	.uleb128 .LVL359-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL359-.Ltext0
	.uleb128 .LVL366-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL366-.Ltext0
	.uleb128 .LVL366-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL366-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL370-.Ltext0
	.uleb128 .LVL371-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL371-.Ltext0
	.uleb128 .LFE129-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
.LVUS143:
	.uleb128 .LVU1164
	.uleb128 .LVU1178
.LLST143:
	.byte	0x4
	.uleb128 .LVL355-.Ltext0
	.uleb128 .LVL358-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS144:
	.uleb128 .LVU1165
	.uleb128 .LVU1183
.LLST144:
	.byte	0x4
	.uleb128 .LVL355-.Ltext0
	.uleb128 .LVL359-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS145:
	.uleb128 .LVU1171
	.uleb128 .LVU1188
	.uleb128 .LVU1213
	.uleb128 .LVU1222
.LLST145:
	.byte	0x4
	.uleb128 .LVL356-.Ltext0
	.uleb128 .LVL360-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL366-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS146:
	.uleb128 .LVU1173
	.uleb128 .LVU1194
	.uleb128 .LVU1214
	.uleb128 .LVU1222
.LLST146:
	.byte	0x4
	.uleb128 .LVL357-.Ltext0
	.uleb128 .LVL362-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL366-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS147:
	.uleb128 .LVU1175
	.uleb128 .LVU1190
	.uleb128 .LVU1215
	.uleb128 .LVU1222
.LLST147:
	.byte	0x4
	.uleb128 .LVL358-.Ltext0
	.uleb128 .LVL361-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL366-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS149:
	.uleb128 .LVU1178
	.uleb128 .LVU1183
.LLST149:
	.byte	0x4
	.uleb128 .LVL358-.Ltext0
	.uleb128 .LVL359-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS151:
	.uleb128 .LVU1188
	.uleb128 .LVU1222
	.uleb128 .LVU1223
	.uleb128 0
.LLST151:
	.byte	0x4
	.uleb128 .LVL360-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL371-.Ltext0
	.uleb128 .LFE129-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS152:
	.uleb128 .LVU1194
	.uleb128 .LVU1222
	.uleb128 .LVU1223
	.uleb128 0
.LLST152:
	.byte	0x4
	.uleb128 .LVL362-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL371-.Ltext0
	.uleb128 .LFE129-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS153:
	.uleb128 .LVU1196
	.uleb128 .LVU1222
	.uleb128 .LVU1223
	.uleb128 0
.LLST153:
	.byte	0x4
	.uleb128 .LVL363-.Ltext0
	.uleb128 .LVL370-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL371-.Ltext0
	.uleb128 .LFE129-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS127:
	.uleb128 .LVU1064
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST127:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -44
	.byte	0
.LVUS128:
	.uleb128 .LVU1064
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
.LLST128:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS129:
	.uleb128 .LVU1064
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
.LLST129:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS130:
	.uleb128 .LVU1064
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1149
	.uleb128 .LVU1149
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST130:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL351-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL351-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -72
	.byte	0
.LVUS131:
	.uleb128 .LVU1065
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST131:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -68
	.byte	0
.LVUS132:
	.uleb128 .LVU1065
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST132:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
.LVUS133:
	.uleb128 .LVU1065
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST133:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -60
	.byte	0
.LVUS134:
	.uleb128 .LVU1065
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST134:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -56
	.byte	0
.LVUS135:
	.uleb128 .LVU1066
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST135:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -52
	.byte	0
.LVUS136:
	.uleb128 .LVU1066
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 0
.LLST136:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LFE127-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -48
	.byte	0
.LVUS137:
	.uleb128 .LVU1066
	.uleb128 .LVU1077
	.uleb128 .LVU1077
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 .LVU1151
.LLST137:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL328-.Ltext0
	.uleb128 .LVL352-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL352-.Ltext0
	.uleb128 .LVL353-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS139:
	.uleb128 .LVU1068
	.uleb128 .LVU1077
.LLST139:
	.byte	0x4
	.uleb128 .LVL327-.Ltext0
	.uleb128 .LVL328-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS126:
	.uleb128 .LVU1023
	.uleb128 .LVU1025
.LLST126:
	.byte	0x4
	.uleb128 .LVL318-.Ltext0
	.uleb128 .LVL319-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS122:
	.uleb128 .LVU990
	.uleb128 .LVU993
.LLST122:
	.byte	0x4
	.uleb128 .LVL311-.Ltext0
	.uleb128 .LVL312-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0
.LVUS123:
	.uleb128 .LVU991
	.uleb128 .LVU1003
	.uleb128 .LVU1003
	.uleb128 .LVU1009
	.uleb128 .LVU1009
	.uleb128 0
.LLST123:
	.byte	0x4
	.uleb128 .LVL311-.Ltext0
	.uleb128 .LVL315-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL315-.Ltext0
	.uleb128 .LVL316-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL316-.Ltext0
	.uleb128 .LFE125-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS124:
	.uleb128 .LVU1000
	.uleb128 .LVU1001
.LLST124:
	.byte	0x4
	.uleb128 .LVL313-.Ltext0
	.uleb128 .LVL314-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS112:
	.uleb128 .LVU848
	.uleb128 .LVU851
	.uleb128 .LVU851
	.uleb128 .LVU937
	.uleb128 .LVU937
	.uleb128 .LVU938
	.uleb128 .LVU939
	.uleb128 .LVU953
	.uleb128 .LVU953
	.uleb128 .LVU956
	.uleb128 .LVU957
	.uleb128 0
.LLST112:
	.byte	0x4
	.uleb128 .LVL281-.Ltext0
	.uleb128 .LVL282-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL282-.Ltext0
	.uleb128 .LVL300-.Ltext0
	.uleb128 0x5
	.byte	0x32
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL300-.Ltext0
	.uleb128 .LVL301-.Ltext0
	.uleb128 0x5
	.byte	0x33
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL302-.Ltext0
	.uleb128 .LVL307-.Ltext0
	.uleb128 0x5
	.byte	0x32
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL307-.Ltext0
	.uleb128 .LVL308-.Ltext0
	.uleb128 0x5
	.byte	0x33
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL309-.Ltext0
	.uleb128 .LFE124-.Ltext0
	.uleb128 0x5
	.byte	0x32
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS114:
	.uleb128 .LVU851
	.uleb128 .LVU855
	.uleb128 .LVU855
	.uleb128 .LVU927
	.uleb128 .LVU927
	.uleb128 .LVU929
	.uleb128 .LVU930
	.uleb128 .LVU935
	.uleb128 .LVU935
	.uleb128 .LVU939
	.uleb128 .LVU939
	.uleb128 .LVU953
	.uleb128 .LVU953
	.uleb128 .LVU956
	.uleb128 .LVU957
	.uleb128 0
.LLST114:
	.byte	0x4
	.uleb128 .LVL282-.Ltext0
	.uleb128 .LVL283-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL283-.Ltext0
	.uleb128 .LVL295-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL295-.Ltext0
	.uleb128 .LVL296-.Ltext0
	.uleb128 0xc
	.byte	0x31
	.byte	0x32
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL297-.Ltext0
	.uleb128 .LVL300-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL300-.Ltext0
	.uleb128 .LVL302-.Ltext0
	.uleb128 0xc
	.byte	0x31
	.byte	0x32
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL302-.Ltext0
	.uleb128 .LVL307-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL307-.Ltext0
	.uleb128 .LVL308-.Ltext0
	.uleb128 0xc
	.byte	0x31
	.byte	0x32
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL309-.Ltext0
	.uleb128 .LFE124-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS116:
	.uleb128 .LVU892
	.uleb128 .LVU894
	.uleb128 .LVU894
	.uleb128 .LVU895
	.uleb128 .LVU895
	.uleb128 .LVU896
	.uleb128 .LVU897
	.uleb128 .LVU902
	.uleb128 .LVU939
	.uleb128 .LVU942
.LLST116:
	.byte	0x4
	.uleb128 .LVL285-.Ltext0
	.uleb128 .LVL286-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL286-.Ltext0
	.uleb128 .LVL287-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL287-.Ltext0
	.uleb128 .LVL288-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL288-.Ltext0
	.uleb128 .LVL289-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL302-.Ltext0
	.uleb128 .LVL304-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS117:
	.uleb128 .LVU906
	.uleb128 .LVU909
	.uleb128 .LVU909
	.uleb128 .LVU911
	.uleb128 .LVU911
	.uleb128 .LVU925
	.uleb128 .LVU930
	.uleb128 .LVU935
	.uleb128 .LVU952
	.uleb128 .LVU953
.LLST117:
	.byte	0x4
	.uleb128 .LVL290-.Ltext0
	.uleb128 .LVL290-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL290-.Ltext0
	.uleb128 .LVL291-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL291-.Ltext0
	.uleb128 .LVL295-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL297-.Ltext0
	.uleb128 .LVL300-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL305-.Ltext0
	.uleb128 .LVL307-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS119:
	.uleb128 .LVU908
	.uleb128 .LVU909
	.uleb128 .LVU909
	.uleb128 .LVU925
	.uleb128 .LVU930
	.uleb128 .LVU935
	.uleb128 .LVU952
	.uleb128 .LVU953
.LLST119:
	.byte	0x4
	.uleb128 .LVL290-.Ltext0
	.uleb128 .LVL290-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL290-.Ltext0
	.uleb128 .LVL295-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL297-.Ltext0
	.uleb128 .LVL300-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL305-.Ltext0
	.uleb128 .LVL307-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS121:
	.uleb128 .LVU916
	.uleb128 .LVU918
	.uleb128 .LVU930
	.uleb128 .LVU934
.LLST121:
	.byte	0x4
	.uleb128 .LVL292-.Ltext0
	.uleb128 .LVL293-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL297-.Ltext0
	.uleb128 .LVL299-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS107:
	.uleb128 .LVU809
	.uleb128 .LVU820
	.uleb128 .LVU820
	.uleb128 .LVU824
	.uleb128 .LVU824
	.uleb128 .LVU825
	.uleb128 .LVU825
	.uleb128 .LVU827
	.uleb128 .LVU828
	.uleb128 .LVU836
	.uleb128 .LVU836
	.uleb128 .LVU837
	.uleb128 .LVU837
	.uleb128 0
.LLST107:
	.byte	0x4
	.uleb128 .LVL272-.Ltext0
	.uleb128 .LVL274-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL274-.Ltext0
	.uleb128 .LVL276-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL276-1-.Ltext0
	.uleb128 .LVL276-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL276-.Ltext0
	.uleb128 .LVL277-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL277-.Ltext0
	.uleb128 .LVL278-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL278-.Ltext0
	.uleb128 .LVL279-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL279-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS108:
	.uleb128 .LVU810
	.uleb128 .LVU812
.LLST108:
	.byte	0x4
	.uleb128 .LVL272-.Ltext0
	.uleb128 .LVL273-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x4c4b40
	.byte	0x9f
	.byte	0
.LVUS110:
	.uleb128 .LVU821
	.uleb128 .LVU824
.LLST110:
	.byte	0x4
	.uleb128 .LVL275-.Ltext0
	.uleb128 .LVL276-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS104:
	.uleb128 .LVU766
	.uleb128 .LVU773
	.uleb128 .LVU773
	.uleb128 .LVU791
	.uleb128 .LVU791
	.uleb128 .LVU792
.LLST104:
	.byte	0x4
	.uleb128 .LVL262-.Ltext0
	.uleb128 .LVL263-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL263-.Ltext0
	.uleb128 .LVL269-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL269-.Ltext0
	.uleb128 .LVL270-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS106:
	.uleb128 .LVU768
	.uleb128 .LVU773
	.uleb128 .LVU773
	.uleb128 .LVU782
	.uleb128 .LVU782
	.uleb128 .LVU783
	.uleb128 .LVU783
	.uleb128 .LVU787
	.uleb128 .LVU787
	.uleb128 .LVU791
.LLST106:
	.byte	0x4
	.uleb128 .LVL262-.Ltext0
	.uleb128 .LVL263-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL263-.Ltext0
	.uleb128 .LVL266-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL266-.Ltext0
	.uleb128 .LVL267-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL267-1-.Ltext0
	.uleb128 .LVL268-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL268-.Ltext0
	.uleb128 .LVL269-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS95:
	.uleb128 .LVU746
	.uleb128 .LVU760
.LLST95:
	.byte	0x4
	.uleb128 .LVL250-.Ltext0
	.uleb128 .LVL259-.Ltext0
	.uleb128 0x9
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS96:
	.uleb128 .LVU748
	.uleb128 .LVU759
.LLST96:
	.byte	0x4
	.uleb128 .LVL251-.Ltext0
	.uleb128 .LVL258-.Ltext0
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x400
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS97:
	.uleb128 .LVU750
	.uleb128 .LVU758
.LLST97:
	.byte	0x4
	.uleb128 .LVL252-.Ltext0
	.uleb128 .LVL257-.Ltext0
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS98:
	.uleb128 .LVU752
	.uleb128 .LVU756
.LLST98:
	.byte	0x4
	.uleb128 .LVL253-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS99:
	.uleb128 .LVU754
	.uleb128 .LVU757
.LLST99:
	.byte	0x4
	.uleb128 .LVL254-.Ltext0
	.uleb128 .LVL256-.Ltext0
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS101:
	.uleb128 .LVU719
	.uleb128 .LVU721
	.uleb128 .LVU721
	.uleb128 .LVU725
	.uleb128 .LVU725
	.uleb128 .LVU726
	.uleb128 .LVU726
	.uleb128 .LVU727
	.uleb128 .LVU727
	.uleb128 .LVU735
.LLST101:
	.byte	0x4
	.uleb128 .LVL241-.Ltext0
	.uleb128 .LVL242-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL242-.Ltext0
	.uleb128 .LVL243-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL243-.Ltext0
	.uleb128 .LVL244-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL244-1-.Ltext0
	.uleb128 .LVL244-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL244-.Ltext0
	.uleb128 .LVL246-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS103:
	.uleb128 .LVU733
	.uleb128 .LVU735
	.uleb128 .LVU735
	.uleb128 .LVU739
	.uleb128 .LVU739
	.uleb128 .LVU740
	.uleb128 .LVU740
	.uleb128 .LVU741
	.uleb128 .LVU741
	.uleb128 .LVU745
.LLST103:
	.byte	0x4
	.uleb128 .LVL245-.Ltext0
	.uleb128 .LVL246-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x2576
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL246-.Ltext0
	.uleb128 .LVL247-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL247-.Ltext0
	.uleb128 .LVL248-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL248-1-.Ltext0
	.uleb128 .LVL248-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL248-.Ltext0
	.uleb128 .LVL249-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS92:
	.uleb128 0
	.uleb128 .LVU700
	.uleb128 .LVU700
	.uleb128 .LVU708
	.uleb128 .LVU708
	.uleb128 0
.LLST92:
	.byte	0x4
	.uleb128 .LVL235-.Ltext0
	.uleb128 .LVL236-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL236-.Ltext0
	.uleb128 .LVL239-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL239-.Ltext0
	.uleb128 .LFE120-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS94:
	.uleb128 .LVU696
	.uleb128 .LVU700
	.uleb128 .LVU700
	.uleb128 .LVU704
	.uleb128 .LVU704
	.uleb128 .LVU705
	.uleb128 .LVU705
	.uleb128 .LVU706
	.uleb128 .LVU706
	.uleb128 .LVU708
	.uleb128 .LVU708
	.uleb128 0
.LLST94:
	.byte	0x4
	.uleb128 .LVL235-.Ltext0
	.uleb128 .LVL236-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL236-.Ltext0
	.uleb128 .LVL237-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL237-.Ltext0
	.uleb128 .LVL238-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL238-1-.Ltext0
	.uleb128 .LVL238-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL238-.Ltext0
	.uleb128 .LVL239-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL239-.Ltext0
	.uleb128 .LFE120-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS77:
	.uleb128 0
	.uleb128 .LVU589
	.uleb128 .LVU589
	.uleb128 .LVU691
	.uleb128 .LVU691
	.uleb128 .LVU692
	.uleb128 .LVU692
	.uleb128 0
.LLST77:
	.byte	0x4
	.uleb128 .LVL197-.Ltext0
	.uleb128 .LVL198-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL198-1-.Ltext0
	.uleb128 .LVL232-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL232-.Ltext0
	.uleb128 .LVL233-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL233-.Ltext0
	.uleb128 .LFE119-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -72
	.byte	0
.LVUS78:
	.uleb128 .LVU598
	.uleb128 .LVU675
.LLST78:
	.byte	0x4
	.uleb128 .LVL199-.Ltext0
	.uleb128 .LVL223-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS79:
	.uleb128 .LVU598
	.uleb128 .LVU630
	.uleb128 .LVU631
	.uleb128 .LVU692
.LLST79:
	.byte	0x4
	.uleb128 .LVL199-.Ltext0
	.uleb128 .LVL209-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL210-.Ltext0
	.uleb128 .LVL233-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS80:
	.uleb128 .LVU598
	.uleb128 .LVU648
	.uleb128 .LVU649
	.uleb128 .LVU692
.LLST80:
	.byte	0x4
	.uleb128 .LVL199-.Ltext0
	.uleb128 .LVL215-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL216-.Ltext0
	.uleb128 .LVL233-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS81:
	.uleb128 .LVU598
	.uleb128 .LVU683
.LLST81:
	.byte	0x4
	.uleb128 .LVL199-.Ltext0
	.uleb128 .LVL228-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS82:
	.uleb128 .LVU598
	.uleb128 .LVU682
.LLST82:
	.byte	0x4
	.uleb128 .LVL199-.Ltext0
	.uleb128 .LVL227-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS83:
	.uleb128 .LVU598
	.uleb128 .LVU643
	.uleb128 .LVU644
	.uleb128 .LVU692
.LLST83:
	.byte	0x4
	.uleb128 .LVL199-.Ltext0
	.uleb128 .LVL213-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL214-.Ltext0
	.uleb128 .LVL233-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS84:
	.uleb128 .LVU606
	.uleb128 .LVU629
.LLST84:
	.byte	0x4
	.uleb128 .LVL201-.Ltext0
	.uleb128 .LVL208-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS85:
	.uleb128 .LVU608
	.uleb128 .LVU613
.LLST85:
	.byte	0x4
	.uleb128 .LVL202-.Ltext0
	.uleb128 .LVL204-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS86:
	.uleb128 .LVU610
	.uleb128 .LVU636
.LLST86:
	.byte	0x4
	.uleb128 .LVL203-.Ltext0
	.uleb128 .LVL211-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS87:
	.uleb128 .LVU614
	.uleb128 .LVU617
.LLST87:
	.byte	0x4
	.uleb128 .LVL205-.Ltext0
	.uleb128 .LVL206-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS88:
	.uleb128 .LVU618
	.uleb128 .LVU641
.LLST88:
	.byte	0x4
	.uleb128 .LVL207-.Ltext0
	.uleb128 .LVL212-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS89:
	.uleb128 .LVU660
	.uleb128 .LVU662
	.uleb128 .LVU662
	.uleb128 .LVU664
	.uleb128 .LVU664
	.uleb128 .LVU669
	.uleb128 .LVU669
	.uleb128 .LVU671
.LLST89:
	.byte	0x4
	.uleb128 .LVL216-.Ltext0
	.uleb128 .LVL217-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL217-.Ltext0
	.uleb128 .LVL218-.Ltext0
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL218-.Ltext0
	.uleb128 .LVL220-.Ltext0
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL220-.Ltext0
	.uleb128 .LVL221-.Ltext0
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.byte	0
.LVUS91:
	.uleb128 .LVU681
	.uleb128 .LVU684
	.uleb128 .LVU684
	.uleb128 .LVU686
	.uleb128 .LVU686
	.uleb128 .LVU687
	.uleb128 .LVU687
	.uleb128 .LVU688
	.uleb128 .LVU688
	.uleb128 .LVU692
.LLST91:
	.byte	0x4
	.uleb128 .LVL226-.Ltext0
	.uleb128 .LVL229-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL229-.Ltext0
	.uleb128 .LVL230-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL230-.Ltext0
	.uleb128 .LVL231-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL231-1-.Ltext0
	.uleb128 .LVL231-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL231-.Ltext0
	.uleb128 .LVL233-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS76:
	.uleb128 .LVU573
	.uleb128 .LVU574
	.uleb128 .LVU574
	.uleb128 .LVU575
	.uleb128 .LVU580
	.uleb128 .LVU583
.LLST76:
	.byte	0x4
	.uleb128 .LVL190-.Ltext0
	.uleb128 .LVL191-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL191-.Ltext0
	.uleb128 .LVL192-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL194-.Ltext0
	.uleb128 .LVL196-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -56
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS74:
	.uleb128 .LVU552
	.uleb128 .LVU555
.LLST74:
	.byte	0x4
	.uleb128 .LVL188-.Ltext0
	.uleb128 .LVL189-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU519
	.uleb128 .LVU519
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 .LVU543
	.uleb128 .LVU543
	.uleb128 0
.LLST70:
	.byte	0x4
	.uleb128 .LVL175-.Ltext0
	.uleb128 .LVL176-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL176-.Ltext0
	.uleb128 .LVL183-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL183-.Ltext0
	.uleb128 .LVL185-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL185-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU519
	.uleb128 .LVU519
	.uleb128 .LVU539
	.uleb128 .LVU539
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 .LVU542
	.uleb128 .LVU542
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 0
.LLST71:
	.byte	0x4
	.uleb128 .LVL175-.Ltext0
	.uleb128 .LVL176-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL176-.Ltext0
	.uleb128 .LVL182-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL182-.Ltext0
	.uleb128 .LVL183-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL183-1-.Ltext0
	.uleb128 .LVL183-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL183-.Ltext0
	.uleb128 .LVL184-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL184-.Ltext0
	.uleb128 .LVL186-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL186-.Ltext0
	.uleb128 .LVL187-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL187-1-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 .LVU512
	.uleb128 .LVU519
	.uleb128 .LVU519
	.uleb128 .LVU521
	.uleb128 .LVU521
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU534
	.uleb128 .LVU534
	.uleb128 .LVU535
	.uleb128 .LVU535
	.uleb128 .LVU536
	.uleb128 .LVU536
	.uleb128 .LVU539
	.uleb128 .LVU540
	.uleb128 0
.LLST72:
	.byte	0x4
	.uleb128 .LVL175-.Ltext0
	.uleb128 .LVL176-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL176-.Ltext0
	.uleb128 .LVL177-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL177-1-.Ltext0
	.uleb128 .LVL178-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL178-.Ltext0
	.uleb128 .LVL180-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL180-.Ltext0
	.uleb128 .LVL181-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL181-1-.Ltext0
	.uleb128 .LVL181-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL181-.Ltext0
	.uleb128 .LVL182-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL183-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS73:
	.uleb128 .LVU511
	.uleb128 .LVU519
	.uleb128 .LVU519
	.uleb128 .LVU539
	.uleb128 .LVU539
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 0
.LLST73:
	.byte	0x4
	.uleb128 .LVL175-.Ltext0
	.uleb128 .LVL176-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL176-.Ltext0
	.uleb128 .LVL182-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL182-.Ltext0
	.uleb128 .LVL183-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL183-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 .LVU446
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU462
	.uleb128 .LVU462
	.uleb128 .LVU497
	.uleb128 .LVU506
	.uleb128 0
.LLST67:
	.byte	0x4
	.uleb128 .LVL162-.Ltext0
	.uleb128 .LVL163-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL163-.Ltext0
	.uleb128 .LVL164-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL164-.Ltext0
	.uleb128 .LVL165-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL165-.Ltext0
	.uleb128 .LVL171-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL173-.Ltext0
	.uleb128 .LFE115-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS68:
	.uleb128 .LVU447
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU468
	.uleb128 .LVU468
	.uleb128 .LVU488
	.uleb128 .LVU488
	.uleb128 .LVU497
	.uleb128 .LVU506
	.uleb128 .LVU507
.LLST68:
	.byte	0x4
	.uleb128 .LVL162-.Ltext0
	.uleb128 .LVL163-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL163-.Ltext0
	.uleb128 .LVL167-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL167-.Ltext0
	.uleb128 .LVL170-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL170-.Ltext0
	.uleb128 .LVL171-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL173-.Ltext0
	.uleb128 .LVL174-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS62:
	.uleb128 .LVU365
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU408
	.uleb128 .LVU408
	.uleb128 .LVU409
	.uleb128 .LVU410
	.uleb128 0
.LLST62:
	.byte	0x4
	.uleb128 .LVL139-.Ltext0
	.uleb128 .LVL141-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL141-.Ltext0
	.uleb128 .LVL151-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL151-.Ltext0
	.uleb128 .LVL152-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.Ltext0
	.uleb128 .LFE114-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS63:
	.uleb128 .LVU390
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 .LVU393
.LLST63:
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LVL146-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LVL147-.Ltext0
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0
.LVUS65:
	.uleb128 .LVU378
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL142-.Ltext0
	.uleb128 .LFE114-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS66:
	.uleb128 .LVU380
	.uleb128 0
.LLST66:
	.byte	0x4
	.uleb128 .LVL143-.Ltext0
	.uleb128 .LFE114-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS61:
	.uleb128 .LVU349
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU361
.LLST61:
	.byte	0x4
	.uleb128 .LVL132-.Ltext0
	.uleb128 .LVL133-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL133-.Ltext0
	.uleb128 .LVL134-.Ltext0
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	regs_to_check
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL134-.Ltext0
	.uleb128 .LVL137-.Ltext0
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	regs_to_check+1
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL137-.Ltext0
	.uleb128 .LVL138-.Ltext0
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	regs_to_check
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 0
.LLST56:
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL113-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 0
.LLST57:
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL131-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL131-1-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS58:
	.uleb128 .LVU254
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU321
	.uleb128 .LVU325
	.uleb128 .LVU327
	.uleb128 .LVU329
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU337
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 0
.LLST58:
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL104-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL104-.Ltext0
	.uleb128 .LVL105-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL106-.Ltext0
	.uleb128 .LVL107-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL108-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL108-.Ltext0
	.uleb128 .LVL109-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL111-.Ltext0
	.uleb128 .LVL112-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL115-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL115-.Ltext0
	.uleb128 .LVL116-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL117-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL117-.Ltext0
	.uleb128 .LVL118-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL121-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL124-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL126-.Ltext0
	.uleb128 .LVL127-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL127-.Ltext0
	.uleb128 .LVL128-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL131-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU290
	.uleb128 .LVU341
.LLST59:
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 0
.LLST41:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 0
.LLST42:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -44
	.byte	0
.LVUS43:
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 0
.LLST43:
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -48
	.byte	0
.LVUS45:
	.uleb128 .LVU206
	.uleb128 .LVU239
.LLST45:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x9
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU208
	.uleb128 .LVU238
.LLST46:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x400
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 .LVU210
	.uleb128 .LVU237
.LLST47:
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x100
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS48:
	.uleb128 .LVU212
	.uleb128 .LVU235
.LLST48:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0x200
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS49:
	.uleb128 .LVU214
	.uleb128 .LVU234
.LLST49:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU216
	.uleb128 .LVU233
.LLST50:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU218
	.uleb128 .LVU230
.LLST51:
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS52:
	.uleb128 .LVU220
	.uleb128 .LVU231
.LLST52:
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 .LVU222
	.uleb128 .LVU232
.LLST53:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x8
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 .LVU224
	.uleb128 .LVU227
.LLST54:
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x7
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU228
	.uleb128 .LVU236
.LLST55:
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x8
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0x80
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -92
	.byte	0
.LVUS1:
	.uleb128 .LVU5
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU145
.LLST1:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
.LVUS2:
	.uleb128 .LVU6
	.uleb128 .LVU36
.LLST2:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU7
	.uleb128 .LVU36
	.uleb128 .LVU56
	.uleb128 .LVU107
.LLST5:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS6:
	.uleb128 .LVU7
	.uleb128 .LVU36
	.uleb128 .LVU80
	.uleb128 .LVU107
.LLST6:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU7
	.uleb128 .LVU36
	.uleb128 .LVU84
	.uleb128 .LVU107
.LLST7:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS8:
	.uleb128 .LVU7
	.uleb128 .LVU36
	.uleb128 .LVU88
	.uleb128 .LVU107
.LLST8:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS9:
	.uleb128 .LVU8
	.uleb128 .LVU36
	.uleb128 .LVU92
	.uleb128 .LVU107
.LLST9:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS10:
	.uleb128 .LVU8
	.uleb128 .LVU36
	.uleb128 .LVU96
	.uleb128 .LVU107
.LLST10:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS11:
	.uleb128 .LVU8
	.uleb128 .LVU36
	.uleb128 .LVU100
	.uleb128 .LVU107
.LLST11:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS12:
	.uleb128 .LVU8
	.uleb128 .LVU36
	.uleb128 .LVU104
	.uleb128 .LVU107
.LLST12:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS13:
	.uleb128 .LVU9
	.uleb128 .LVU36
.LLST13:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU10
	.uleb128 .LVU36
.LLST15:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU11
	.uleb128 .LVU36
.LLST17:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU12
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -156
	.byte	0
.LVUS20:
	.uleb128 .LVU12
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU62
	.uleb128 .LVU81
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -152
	.byte	0
.LVUS21:
	.uleb128 .LVU12
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU65
	.uleb128 .LVU85
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -148
	.byte	0
.LVUS22:
	.uleb128 .LVU12
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU68
	.uleb128 .LVU89
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -144
	.byte	0
.LVUS23:
	.uleb128 .LVU13
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU71
	.uleb128 .LVU93
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -140
	.byte	0
.LVUS24:
	.uleb128 .LVU13
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU54
	.uleb128 .LVU97
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -136
	.byte	0
.LVUS25:
	.uleb128 .LVU13
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU74
	.uleb128 .LVU101
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -132
	.byte	0
.LVUS26:
	.uleb128 .LVU13
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU77
	.uleb128 .LVU105
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -128
	.byte	0
.LVUS27:
	.uleb128 .LVU14
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -124
	.byte	0
.LVUS28:
	.uleb128 .LVU14
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -120
	.byte	0
.LVUS29:
	.uleb128 .LVU14
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST29:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -116
	.byte	0
.LVUS30:
	.uleb128 .LVU14
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST30:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -112
	.byte	0
.LVUS31:
	.uleb128 .LVU15
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST31:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -108
	.byte	0
.LVUS32:
	.uleb128 .LVU15
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST32:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -104
	.byte	0
.LVUS33:
	.uleb128 .LVU15
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST33:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -100
	.byte	0
.LVUS34:
	.uleb128 .LVU15
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST34:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -96
	.byte	0
.LVUS36:
	.uleb128 .LVU36
	.uleb128 .LVU61
	.uleb128 .LVU116
	.uleb128 .LVU143
.LLST36:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS37:
	.uleb128 .LVU36
	.uleb128 .LVU45
	.uleb128 .LVU121
	.uleb128 .LVU137
.LLST37:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS38:
	.uleb128 .LVU36
	.uleb128 .LVU67
	.uleb128 .LVU123
	.uleb128 .LVU143
.LLST38:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS39:
	.uleb128 .LVU36
	.uleb128 .LVU107
	.uleb128 .LVU125
	.uleb128 .LVU143
.LLST39:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS40:
	.uleb128 .LVU36
	.uleb128 .LVU78
	.uleb128 .LVU127
	.uleb128 .LVU143
.LLST40:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL35:
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB5-.Ltext0
	.uleb128 .LBE5-.Ltext0
	.byte	0
.LLRL44:
	.byte	0x4
	.uleb128 .LBB6-.Ltext0
	.uleb128 .LBE6-.Ltext0
	.byte	0x4
	.uleb128 .LBB7-.Ltext0
	.uleb128 .LBE7-.Ltext0
	.byte	0x4
	.uleb128 .LBB8-.Ltext0
	.uleb128 .LBE8-.Ltext0
	.byte	0x4
	.uleb128 .LBB9-.Ltext0
	.uleb128 .LBE9-.Ltext0
	.byte	0
.LLRL60:
	.byte	0x4
	.uleb128 .LBB10-.Ltext0
	.uleb128 .LBE10-.Ltext0
	.byte	0x4
	.uleb128 .LBB11-.Ltext0
	.uleb128 .LBE11-.Ltext0
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0
.LLRL64:
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB15-.Ltext0
	.uleb128 .LBE15-.Ltext0
	.byte	0
.LLRL69:
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.LLRL75:
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0
.LLRL90:
	.byte	0x4
	.uleb128 .LBB24-.Ltext0
	.uleb128 .LBE24-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0
.LLRL93:
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0x4
	.uleb128 .LBB27-.Ltext0
	.uleb128 .LBE27-.Ltext0
	.byte	0
.LLRL100:
	.byte	0x4
	.uleb128 .LBB28-.Ltext0
	.uleb128 .LBE28-.Ltext0
	.byte	0x4
	.uleb128 .LBB29-.Ltext0
	.uleb128 .LBE29-.Ltext0
	.byte	0
.LLRL102:
	.byte	0x4
	.uleb128 .LBB30-.Ltext0
	.uleb128 .LBE30-.Ltext0
	.byte	0x4
	.uleb128 .LBB31-.Ltext0
	.uleb128 .LBE31-.Ltext0
	.byte	0
.LLRL105:
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0x4
	.uleb128 .LBB33-.Ltext0
	.uleb128 .LBE33-.Ltext0
	.byte	0x4
	.uleb128 .LBB34-.Ltext0
	.uleb128 .LBE34-.Ltext0
	.byte	0
.LLRL109:
	.byte	0x4
	.uleb128 .LBB35-.Ltext0
	.uleb128 .LBE35-.Ltext0
	.byte	0x4
	.uleb128 .LBB36-.Ltext0
	.uleb128 .LBE36-.Ltext0
	.byte	0x4
	.uleb128 .LBB37-.Ltext0
	.uleb128 .LBE37-.Ltext0
	.byte	0
.LLRL111:
	.byte	0x4
	.uleb128 .LBB38-.Ltext0
	.uleb128 .LBE38-.Ltext0
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0x4
	.uleb128 .LBB58-.Ltext0
	.uleb128 .LBE58-.Ltext0
	.byte	0x4
	.uleb128 .LBB59-.Ltext0
	.uleb128 .LBE59-.Ltext0
	.byte	0
.LLRL113:
	.byte	0x4
	.uleb128 .LBB39-.Ltext0
	.uleb128 .LBE39-.Ltext0
	.byte	0x4
	.uleb128 .LBB54-.Ltext0
	.uleb128 .LBE54-.Ltext0
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0x4
	.uleb128 .LBB56-.Ltext0
	.uleb128 .LBE56-.Ltext0
	.byte	0
.LLRL115:
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB48-.Ltext0
	.uleb128 .LBE48-.Ltext0
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0x4
	.uleb128 .LBB51-.Ltext0
	.uleb128 .LBE51-.Ltext0
	.byte	0x4
	.uleb128 .LBB52-.Ltext0
	.uleb128 .LBE52-.Ltext0
	.byte	0x4
	.uleb128 .LBB53-.Ltext0
	.uleb128 .LBE53-.Ltext0
	.byte	0
.LLRL118:
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0x4
	.uleb128 .LBB45-.Ltext0
	.uleb128 .LBE45-.Ltext0
	.byte	0x4
	.uleb128 .LBB46-.Ltext0
	.uleb128 .LBE46-.Ltext0
	.byte	0x4
	.uleb128 .LBB47-.Ltext0
	.uleb128 .LBE47-.Ltext0
	.byte	0
.LLRL120:
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0x4
	.uleb128 .LBB43-.Ltext0
	.uleb128 .LBE43-.Ltext0
	.byte	0x4
	.uleb128 .LBB44-.Ltext0
	.uleb128 .LBE44-.Ltext0
	.byte	0
.LLRL125:
	.byte	0x4
	.uleb128 .LBB61-.Ltext0
	.uleb128 .LBE61-.Ltext0
	.byte	0x4
	.uleb128 .LBB62-.Ltext0
	.uleb128 .LBE62-.Ltext0
	.byte	0
.LLRL138:
	.byte	0x4
	.uleb128 .LBB63-.Ltext0
	.uleb128 .LBE63-.Ltext0
	.byte	0x4
	.uleb128 .LBB64-.Ltext0
	.uleb128 .LBE64-.Ltext0
	.byte	0x4
	.uleb128 .LBB65-.Ltext0
	.uleb128 .LBE65-.Ltext0
	.byte	0
.LLRL148:
	.byte	0x4
	.uleb128 .LBB66-.Ltext0
	.uleb128 .LBE66-.Ltext0
	.byte	0x4
	.uleb128 .LBB69-.Ltext0
	.uleb128 .LBE69-.Ltext0
	.byte	0x4
	.uleb128 .LBB70-.Ltext0
	.uleb128 .LBE70-.Ltext0
	.byte	0
.LLRL150:
	.byte	0x4
	.uleb128 .LBB67-.Ltext0
	.uleb128 .LBE67-.Ltext0
	.byte	0x4
	.uleb128 .LBB68-.Ltext0
	.uleb128 .LBE68-.Ltext0
	.byte	0
.LLRL160:
	.byte	0x4
	.uleb128 .LBB71-.Ltext0
	.uleb128 .LBE71-.Ltext0
	.byte	0x4
	.uleb128 .LBB74-.Ltext0
	.uleb128 .LBE74-.Ltext0
	.byte	0x4
	.uleb128 .LBB75-.Ltext0
	.uleb128 .LBE75-.Ltext0
	.byte	0
.LLRL162:
	.byte	0x4
	.uleb128 .LBB72-.Ltext0
	.uleb128 .LBE72-.Ltext0
	.byte	0x4
	.uleb128 .LBB73-.Ltext0
	.uleb128 .LBE73-.Ltext0
	.byte	0
.LLRL166:
	.byte	0x4
	.uleb128 .LBB76-.Ltext0
	.uleb128 .LBE76-.Ltext0
	.byte	0x4
	.uleb128 .LBB77-.Ltext0
	.uleb128 .LBE77-.Ltext0
	.byte	0
.LLRL190:
	.byte	0x4
	.uleb128 .LBB78-.Ltext0
	.uleb128 .LBE78-.Ltext0
	.byte	0x4
	.uleb128 .LBB81-.Ltext0
	.uleb128 .LBE81-.Ltext0
	.byte	0x4
	.uleb128 .LBB82-.Ltext0
	.uleb128 .LBE82-.Ltext0
	.byte	0
.LLRL192:
	.byte	0x4
	.uleb128 .LBB79-.Ltext0
	.uleb128 .LBE79-.Ltext0
	.byte	0x4
	.uleb128 .LBB80-.Ltext0
	.uleb128 .LBE80-.Ltext0
	.byte	0
.LLRL216:
	.byte	0x4
	.uleb128 .LBB84-.Ltext0
	.uleb128 .LBE84-.Ltext0
	.byte	0x4
	.uleb128 .LBB85-.Ltext0
	.uleb128 .LBE85-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF186:
	.ascii	"hsync_seen_low\000"
.LASF37:
	.ascii	"PUPDR\000"
.LASF94:
	.ascii	"d4_count\000"
.LASF40:
	.ascii	"LCKR\000"
.LASF26:
	.ascii	"M0AR\000"
.LASF194:
	.ascii	"d5_seen_high\000"
.LASF160:
	.ascii	"reg_list\000"
.LASF29:
	.ascii	"LISR\000"
.LASF142:
	.ascii	"debugFrameBuffer\000"
.LASF113:
	.ascii	"vsync\000"
.LASF35:
	.ascii	"OTYPER\000"
.LASF137:
	.ascii	"nonzero\000"
.LASF74:
	.ascii	"readI2C\000"
.LASF177:
	.ascii	"d2_high\000"
.LASF133:
	.ascii	"OV7670_TestFIFO\000"
.LASF30:
	.ascii	"HISR\000"
.LASF172:
	.ascii	"duration_ms\000"
.LASF34:
	.ascii	"MODER\000"
.LASF59:
	.ascii	"AHB2LPENR\000"
.LASF111:
	.ascii	"pclk_prev\000"
.LASF135:
	.ascii	"gotData\000"
.LASF140:
	.ascii	"data\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF107:
	.ascii	"d6_prev\000"
.LASF116:
	.ascii	"sample\000"
.LASF58:
	.ascii	"AHB1LPENR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF209:
	.ascii	"__NOP\000"
.LASF44:
	.ascii	"AHB1RSTR\000"
.LASF73:
	.ascii	"putcharUSART2\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF161:
	.ascii	"DCMI_DebugStatus\000"
.LASF102:
	.ascii	"d1_prev\000"
.LASF174:
	.ascii	"OV7670_CheckPins_Interval\000"
.LASF126:
	.ascii	"check_frame_activity\000"
.LASF110:
	.ascii	"vsync_prev\000"
.LASF18:
	.ascii	"RISR\000"
.LASF189:
	.ascii	"d0_seen_high\000"
.LASF69:
	.ascii	"RCC_TypeDef\000"
.LASF178:
	.ascii	"d3_high\000"
.LASF2:
	.ascii	"long int\000"
.LASF71:
	.ascii	"ov7670_reg_val_t\000"
.LASF49:
	.ascii	"APB2RSTR\000"
.LASF67:
	.ascii	"SSCGR\000"
.LASF21:
	.ascii	"ESUR\000"
.LASF210:
	.ascii	"memcpy\000"
.LASF81:
	.ascii	"send_frame_buffer\000"
.LASF108:
	.ascii	"d7_prev\000"
.LASF169:
	.ascii	"buff0\000"
.LASF118:
	.ascii	"checkDMA2_Stream1_status\000"
.LASF188:
	.ascii	"vsync_seen_low\000"
.LASF83:
	.ascii	"risr\000"
.LASF41:
	.ascii	"GPIO_TypeDef\000"
.LASF16:
	.ascii	"regs_to_check\000"
.LASF139:
	.ascii	"count\000"
.LASF15:
	.ascii	"OV7670_RegCheck\000"
.LASF170:
	.ascii	"tsize\000"
.LASF36:
	.ascii	"OSPEEDR\000"
.LASF184:
	.ascii	"pclk_seen_low\000"
.LASF115:
	.ascii	"OV7670_VerifyRegisters_Custom\000"
.LASF205:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF207:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/kod_sa_3_stm32.BACKUP\000"
.LASF179:
	.ascii	"d4_high\000"
.LASF33:
	.ascii	"DMA_TypeDef\000"
.LASF162:
	.ascii	"verify_full_frame_buffer\000"
.LASF103:
	.ascii	"d2_prev\000"
.LASF100:
	.ascii	"pclk_count\000"
.LASF85:
	.ascii	"dma2_debug\000"
.LASF89:
	.ascii	"check_data_pins_activity_edges\000"
.LASF151:
	.ascii	"hsync_low\000"
.LASF32:
	.ascii	"HIFCR\000"
.LASF24:
	.ascii	"DCMI_TypeDef\000"
.LASF128:
	.ascii	"lines_per_frame\000"
.LASF96:
	.ascii	"d6_count\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"expected\000"
.LASF144:
	.ascii	"OV7670_CheckPins_Interval_V2\000"
.LASF141:
	.ascii	"printNonZeroPixels\000"
.LASF138:
	.ascii	"OV7670_Test_ReadFrame\000"
.LASF123:
	.ascii	"line_pclk_count\000"
.LASF23:
	.ascii	"CWSIZER\000"
.LASF143:
	.ascii	"printFrameBuffer\000"
.LASF206:
	.ascii	"check/check.c\000"
.LASF117:
	.ascii	"registers\000"
.LASF13:
	.ascii	"name\000"
.LASF191:
	.ascii	"d2_seen_high\000"
.LASF79:
	.ascii	"size\000"
.LASF63:
	.ascii	"APB2LPENR\000"
.LASF62:
	.ascii	"APB1LPENR\000"
.LASF68:
	.ascii	"PLLI2SCFGR\000"
.LASF42:
	.ascii	"PLLCFGR\000"
.LASF167:
	.ascii	"retry\000"
.LASF121:
	.ascii	"last_hsync\000"
.LASF28:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF211:
	.ascii	"__builtin_memcpy\000"
.LASF147:
	.ascii	"pclk_low\000"
.LASF99:
	.ascii	"vsync_count\000"
.LASF119:
	.ascii	"check_frame_detailed\000"
.LASF104:
	.ascii	"d3_prev\000"
.LASF72:
	.ascii	"ov7670_qqvga_rgb565\000"
.LASF76:
	.ascii	"printUSART2\000"
.LASF152:
	.ascii	"d_seen_high\000"
.LASF150:
	.ascii	"hsync_high\000"
.LASF91:
	.ascii	"d1_count\000"
.LASF195:
	.ascii	"d6_seen_high\000"
.LASF20:
	.ascii	"ESCR\000"
.LASF130:
	.ascii	"DCMI_CheckConfig\000"
.LASF148:
	.ascii	"vsync_high\000"
.LASF31:
	.ascii	"LIFCR\000"
.LASF17:
	.ascii	"regs_to_verify\000"
.LASF93:
	.ascii	"d3_count\000"
.LASF124:
	.ascii	"frame_count\000"
.LASF125:
	.ascii	"line_count\000"
.LASF95:
	.ascii	"d5_count\000"
.LASF175:
	.ascii	"d0_high\000"
.LASF171:
	.ascii	"OV7670_TestPins\000"
.LASF82:
	.ascii	"DCMI_debugStatus\000"
.LASF53:
	.ascii	"AHB3ENR\000"
.LASF201:
	.ascii	"d4_seen_low\000"
.LASF202:
	.ascii	"d5_seen_low\000"
.LASF203:
	.ascii	"d6_seen_low\000"
.LASF204:
	.ascii	"d7_seen_low\000"
.LASF105:
	.ascii	"d4_prev\000"
.LASF48:
	.ascii	"APB1RSTR\000"
.LASF22:
	.ascii	"CWSTRTR\000"
.LASF187:
	.ascii	"vsync_seen_high\000"
.LASF149:
	.ascii	"vsync_low\000"
.LASF47:
	.ascii	"RESERVED0\000"
.LASF50:
	.ascii	"RESERVED1\000"
.LASF54:
	.ascii	"RESERVED2\000"
.LASF57:
	.ascii	"RESERVED3\000"
.LASF61:
	.ascii	"RESERVED4\000"
.LASF64:
	.ascii	"RESERVED5\000"
.LASF66:
	.ascii	"RESERVED6\000"
.LASF132:
	.ascii	"OV7670_VerifyRegisters\000"
.LASF168:
	.ascii	"dump_ov7670_regs\000"
.LASF176:
	.ascii	"d1_high\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF131:
	.ascii	"check_data_pins_activity\000"
.LASF166:
	.ascii	"verify_ov7670_regs\000"
.LASF70:
	.ascii	"frame_buffer\000"
.LASF159:
	.ascii	"OV7670_CheckRegisters\000"
.LASF1:
	.ascii	"short int\000"
.LASF114:
	.ascii	"pclk\000"
.LASF165:
	.ascii	"counter\000"
.LASF60:
	.ascii	"AHB3LPENR\000"
.LASF208:
	.ascii	"verify_DMA2_for_OV7670\000"
.LASF56:
	.ascii	"APB2ENR\000"
.LASF46:
	.ascii	"AHB3RSTR\000"
.LASF75:
	.ascii	"delay_ms\000"
.LASF173:
	.ascii	"vsync_cnt\000"
.LASF180:
	.ascii	"d5_high\000"
.LASF109:
	.ascii	"hsync_prev\000"
.LASF55:
	.ascii	"APB1ENR\000"
.LASF77:
	.ascii	"getSYSTIMER_TIM7\000"
.LASF181:
	.ascii	"d6_high\000"
.LASF14:
	.ascii	"char\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF86:
	.ascii	"ndtr\000"
.LASF101:
	.ascii	"d0_prev\000"
.LASF45:
	.ascii	"AHB2RSTR\000"
.LASF87:
	.ascii	"m0ar\000"
.LASF153:
	.ascii	"d_seen_low\000"
.LASF78:
	.ascii	"buffer\000"
.LASF80:
	.ascii	"high\000"
.LASF25:
	.ascii	"NDTR\000"
.LASF127:
	.ascii	"line_pclk\000"
.LASF164:
	.ascii	"DCMI_CaptureFrame_Debug\000"
.LASF185:
	.ascii	"hsync_seen_high\000"
.LASF136:
	.ascii	"OV7670_TestPolarityCombos\000"
.LASF52:
	.ascii	"AHB2ENR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF197:
	.ascii	"d0_seen_low\000"
.LASF192:
	.ascii	"d3_seen_high\000"
.LASF198:
	.ascii	"d1_seen_low\000"
.LASF38:
	.ascii	"BSRRL\000"
.LASF199:
	.ascii	"d2_seen_low\000"
.LASF122:
	.ascii	"last_pclk\000"
.LASF27:
	.ascii	"M1AR\000"
.LASF84:
	.ascii	"misr\000"
.LASF183:
	.ascii	"pclk_seen_high\000"
.LASF97:
	.ascii	"d7_count\000"
.LASF19:
	.ascii	"MISR\000"
.LASF120:
	.ascii	"last_vsync\000"
.LASF193:
	.ascii	"d4_seen_high\000"
.LASF146:
	.ascii	"pclk_high\000"
.LASF65:
	.ascii	"BDCR\000"
.LASF39:
	.ascii	"BSRRH\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF88:
	.ascii	"flags\000"
.LASF145:
	.ascii	"interval_ms\000"
.LASF196:
	.ascii	"d7_seen_high\000"
.LASF51:
	.ascii	"AHB1ENR\000"
.LASF190:
	.ascii	"d1_seen_high\000"
.LASF43:
	.ascii	"CFGR\000"
.LASF200:
	.ascii	"d3_seen_low\000"
.LASF112:
	.ascii	"hsync\000"
.LASF129:
	.ascii	"start\000"
.LASF90:
	.ascii	"d0_count\000"
.LASF98:
	.ascii	"hsync_count\000"
.LASF134:
	.ascii	"timeout\000"
.LASF154:
	.ascii	"idrA\000"
.LASF155:
	.ascii	"idrB\000"
.LASF156:
	.ascii	"idrC\000"
.LASF157:
	.ascii	"idrD\000"
.LASF158:
	.ascii	"idrE\000"
.LASF182:
	.ascii	"d7_high\000"
.LASF163:
	.ascii	"error_count\000"
.LASF92:
	.ascii	"d2_count\000"
.LASF106:
	.ascii	"d5_prev\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

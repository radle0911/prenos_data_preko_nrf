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
	.file	"spi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "spi/spi.c"
	.align	1
	.p2align 2,,3
	.global	initSPI1_accelerometer
	.syntax unified
	.thumb
	.thumb_func
	.type	initSPI1_accelerometer, %function
initSPI1_accelerometer:
.LVL0:
.LFB110:
	.loc 1 8 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 14 5 view .LVU1
	.loc 1 14 8 is_stmt 0 view .LVU2
	ldr	r1, .L4
	.loc 1 15 10 view .LVU3
	ldr	r2, .L4+4
	.loc 1 26 10 view .LVU4
	ldr	r3, .L4+8
	.loc 1 8 1 view .LVU5
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 14 8 view .LVU6
	ldr	r4, [r1, #48]
	.loc 1 14 18 view .LVU7
	orr	r4, r4, #1
	str	r4, [r1, #48]
	.loc 1 15 5 is_stmt 1 view .LVU8
	.loc 1 15 10 is_stmt 0 view .LVU9
	ldr	r4, [r2]
	.loc 1 15 18 view .LVU10
	orr	r4, r4, #43008
	str	r4, [r2]
	.loc 1 16 5 is_stmt 1 view .LVU11
	.loc 1 16 10 is_stmt 0 view .LVU12
	ldr	r4, [r2, #4]
	.loc 1 16 19 view .LVU13
	bic	r4, r4, #224
	str	r4, [r2, #4]
	.loc 1 17 5 is_stmt 1 view .LVU14
	.loc 1 17 10 is_stmt 0 view .LVU15
	ldr	r4, [r2, #8]
	.loc 1 17 20 view .LVU16
	orr	r4, r4, #43008
	str	r4, [r2, #8]
	.loc 1 18 5 is_stmt 1 view .LVU17
	.loc 1 18 10 is_stmt 0 view .LVU18
	ldr	r4, [r2, #12]
	.loc 1 18 18 view .LVU19
	bic	r4, r4, #64512
	str	r4, [r2, #12]
	.loc 1 20 5 is_stmt 1 view .LVU20
	.loc 1 20 15 is_stmt 0 view .LVU21
	ldr	r4, [r2, #32]
	.loc 1 20 19 view .LVU22
	orr	r4, r4, #1426063360
	orr	r4, r4, #5570560
	str	r4, [r2, #32]
	.loc 1 25 5 is_stmt 1 view .LVU23
	.loc 1 25 8 is_stmt 0 view .LVU24
	ldr	r4, [r1, #48]
	.loc 1 25 18 view .LVU25
	orr	r4, r4, #16
	str	r4, [r1, #48]
	.loc 1 26 5 is_stmt 1 view .LVU26
	.loc 1 26 10 is_stmt 0 view .LVU27
	ldr	r4, [r3]
	.loc 1 26 18 view .LVU28
	orr	r4, r4, #64
	str	r4, [r3]
	.loc 1 27 5 is_stmt 1 view .LVU29
	.loc 1 27 10 is_stmt 0 view .LVU30
	ldr	r4, [r3, #4]
	.loc 1 27 19 view .LVU31
	bic	r4, r4, #8
	str	r4, [r3, #4]
	.loc 1 28 5 is_stmt 1 view .LVU32
	.loc 1 28 10 is_stmt 0 view .LVU33
	ldr	r4, [r3, #8]
	.loc 1 28 20 view .LVU34
	orr	r4, r4, #128
	str	r4, [r3, #8]
	.loc 1 29 5 is_stmt 1 view .LVU35
	.loc 1 29 10 is_stmt 0 view .LVU36
	ldr	r4, [r3, #12]
	.loc 1 29 18 view .LVU37
	bic	r4, r4, #192
	str	r4, [r3, #12]
	.loc 1 32 5 is_stmt 1 view .LVU38
	ldr	r4, [r3, #20]
	orr	r4, r4, #8
	str	r4, [r3, #20]
	.loc 1 32 17 view .LVU39
	.loc 1 37 5 view .LVU40
	.loc 1 37 8 is_stmt 0 view .LVU41
	ldr	r3, [r1, #68]
	.loc 1 38 9 view .LVU42
	sub	r2, r2, #53248
	.loc 1 37 18 view .LVU43
	orr	r3, r3, #4096
	str	r3, [r1, #68]
	.loc 1 38 5 is_stmt 1 view .LVU44
	.loc 1 38 9 is_stmt 0 view .LVU45
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 38 15 view .LVU46
	orr	r3, r3, #4
	strh	r3, [r2]	@ movhi
	.loc 1 39 5 is_stmt 1 view .LVU47
	.loc 1 39 9 is_stmt 0 view .LVU48
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 39 15 view .LVU49
	orr	r3, r3, #768
	strh	r3, [r2]	@ movhi
	.loc 1 40 5 is_stmt 1 view .LVU50
	.loc 1 40 9 is_stmt 0 view .LVU51
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 40 15 view .LVU52
	orrs	r3, r3, r0
	strh	r3, [r2]	@ movhi
	.loc 1 42 5 is_stmt 1 view .LVU53
	.loc 1 42 9 is_stmt 0 view .LVU54
	ldrh	r3, [r2]
	.loc 1 44 1 view .LVU55
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 42 9 view .LVU56
	uxth	r3, r3
	.loc 1 42 15 view .LVU57
	orr	r3, r3, #64
	strh	r3, [r2]	@ movhi
	.loc 1 44 1 view .LVU58
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073872896
	.word	1073876992
	.cfi_endproc
.LFE110:
	.size	initSPI1_accelerometer, .-initSPI1_accelerometer
	.align	1
	.p2align 2,,3
	.global	rxByteSPI1
	.syntax unified
	.thumb
	.thumb_func
	.type	rxByteSPI1, %function
rxByteSPI1:
.LFB111:
	.loc 1 49 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 50 3 view .LVU60
	.loc 1 52 3 view .LVU61
	.loc 1 52 12 is_stmt 0 view .LVU62
	ldr	r2, .L15
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
	.loc 1 61 3 is_stmt 1 view .LVU63
.L7:
	.loc 1 61 10 discriminator 1 view .LVU64
	.loc 1 61 16 is_stmt 0 discriminator 1 view .LVU65
	ldrh	r3, [r2, #8]
	.loc 1 61 10 discriminator 1 view .LVU66
	lsls	r0, r3, #30
	bpl	.L7
	.loc 1 62 16 view .LVU67
	ldr	r2, .L15
.L8:
	.loc 1 62 10 is_stmt 1 discriminator 1 view .LVU68
	.loc 1 62 16 is_stmt 0 discriminator 1 view .LVU69
	ldrh	r3, [r2, #8]
	.loc 1 62 10 discriminator 1 view .LVU70
	lsls	r1, r3, #31
	bpl	.L8
	.loc 1 63 14 view .LVU71
	ldr	r2, .L15
.L9:
	.loc 1 63 10 is_stmt 1 discriminator 1 view .LVU72
	.loc 1 63 14 is_stmt 0 discriminator 1 view .LVU73
	ldrh	r3, [r2, #8]
	.loc 1 63 10 discriminator 1 view .LVU74
	lsls	r3, r3, #24
	bmi	.L9
	.loc 1 64 3 is_stmt 1 view .LVU75
	.loc 1 64 14 is_stmt 0 view .LVU76
	ldrh	r0, [r2, #12]
.LVL1:
	.loc 1 66 3 is_stmt 1 view .LVU77
	.loc 1 67 1 is_stmt 0 view .LVU78
	uxtb	r0, r0
	.loc 1 67 1 view .LVU79
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073819648
	.cfi_endproc
.LFE111:
	.size	rxByteSPI1, .-rxByteSPI1
	.align	1
	.p2align 2,,3
	.global	txByteSPI1
	.syntax unified
	.thumb
	.thumb_func
	.type	txByteSPI1, %function
txByteSPI1:
.LVL2:
.LFB112:
	.loc 1 71 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 72 3 view .LVU81
	.loc 1 74 3 view .LVU82
	.loc 1 74 12 is_stmt 0 view .LVU83
	ldr	r2, .L26
	strh	r0, [r2, #12]	@ movhi
	.loc 1 76 3 is_stmt 1 view .LVU84
.LVL3:
.L18:
	.loc 1 76 10 discriminator 1 view .LVU85
	.loc 1 76 16 is_stmt 0 discriminator 1 view .LVU86
	ldrh	r3, [r2, #8]
	.loc 1 76 10 discriminator 1 view .LVU87
	lsls	r0, r3, #30
	bpl	.L18
	.loc 1 77 16 view .LVU88
	ldr	r2, .L26
.L19:
	.loc 1 77 10 is_stmt 1 discriminator 1 view .LVU89
	.loc 1 77 16 is_stmt 0 discriminator 1 view .LVU90
	ldrh	r3, [r2, #8]
	.loc 1 77 10 discriminator 1 view .LVU91
	lsls	r1, r3, #31
	bpl	.L19
	.loc 1 78 14 view .LVU92
	ldr	r2, .L26
.L20:
	.loc 1 78 10 is_stmt 1 discriminator 1 view .LVU93
	.loc 1 78 14 is_stmt 0 discriminator 1 view .LVU94
	ldrh	r3, [r2, #8]
	.loc 1 78 10 discriminator 1 view .LVU95
	lsls	r3, r3, #24
	bmi	.L20
	.loc 1 79 3 is_stmt 1 view .LVU96
	.loc 1 79 13 is_stmt 0 view .LVU97
	ldrh	r0, [r2, #12]
.LVL4:
	.loc 1 81 3 is_stmt 1 view .LVU98
	.loc 1 82 1 is_stmt 0 view .LVU99
	uxtb	r0, r0
	.loc 1 82 1 view .LVU100
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073819648
	.cfi_endproc
.LFE112:
	.size	txByteSPI1, .-txByteSPI1
	.align	1
	.p2align 2,,3
	.global	testSPI1_loopback
	.syntax unified
	.thumb
	.thumb_func
	.type	testSPI1_loopback, %function
testSPI1_loopback:
.LFB113:
	.loc 1 87 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 88 5 view .LVU102
.LVL5:
	.loc 1 89 5 view .LVU103
	.loc 1 91 5 view .LVU104
.LBB6:
.LBI6:
	.loc 1 70 9 view .LVU105
.LBB7:
	.loc 1 72 3 view .LVU106
	.loc 1 74 3 view .LVU107
	.loc 1 74 12 is_stmt 0 view .LVU108
	ldr	r2, .L37
	movs	r3, #165
	strh	r3, [r2, #12]	@ movhi
	.loc 1 76 3 is_stmt 1 view .LVU109
.L29:
	.loc 1 76 10 view .LVU110
	.loc 1 76 16 is_stmt 0 view .LVU111
	ldrh	r3, [r2, #8]
	.loc 1 76 10 view .LVU112
	lsls	r0, r3, #30
	bpl	.L29
	.loc 1 77 16 view .LVU113
	ldr	r2, .L37
.L30:
	.loc 1 77 10 is_stmt 1 view .LVU114
	.loc 1 77 16 is_stmt 0 view .LVU115
	ldrh	r3, [r2, #8]
	.loc 1 77 10 view .LVU116
	lsls	r1, r3, #31
	bpl	.L30
	.loc 1 78 14 view .LVU117
	ldr	r2, .L37
.L31:
	.loc 1 78 10 is_stmt 1 view .LVU118
	.loc 1 78 14 is_stmt 0 view .LVU119
	ldrh	r3, [r2, #8]
	.loc 1 78 10 view .LVU120
	lsls	r3, r3, #24
	bmi	.L31
	.loc 1 79 3 is_stmt 1 view .LVU121
	.loc 1 79 13 is_stmt 0 view .LVU122
	ldrh	r0, [r2, #12]
.LVL6:
	.loc 1 81 3 is_stmt 1 view .LVU123
	.loc 1 81 3 is_stmt 0 view .LVU124
.LBE7:
.LBE6:
	.loc 1 93 5 is_stmt 1 view .LVU125
	.loc 1 93 7 is_stmt 0 view .LVU126
	uxtb	r0, r0
	.loc 1 100 1 view .LVU127
	sub	r0, #165
.LVL7:
	.loc 1 100 1 view .LVU128
	clz	r0, r0
.LVL8:
	.loc 1 100 1 view .LVU129
	lsrs	r0, r0, #5
	bx	lr
.L38:
	.align	2
.L37:
	.word	1073819648
	.cfi_endproc
.LFE113:
	.size	testSPI1_loopback, .-testSPI1_loopback
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"primljeno\012\000"
	.align	2
.LC1:
	.ascii	"nije primljeno\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	provjera_loopback_test
	.syntax unified
	.thumb
	.thumb_func
	.type	provjera_loopback_test, %function
provjera_loopback_test:
.LFB114:
	.loc 1 105 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 3 view .LVU131
.LBB12:
.LBI12:
	.loc 1 86 9 view .LVU132
.LBB13:
	.loc 1 88 5 view .LVU133
.LVL9:
	.loc 1 89 5 view .LVU134
	.loc 1 91 5 view .LVU135
.LBB14:
.LBI14:
	.loc 1 70 9 view .LVU136
.LBB15:
	.loc 1 72 3 view .LVU137
	.loc 1 74 3 view .LVU138
	.loc 1 74 12 is_stmt 0 view .LVU139
	ldr	r2, .L50
	movs	r3, #165
	strh	r3, [r2, #12]	@ movhi
	.loc 1 76 3 is_stmt 1 view .LVU140
.L40:
	.loc 1 76 10 view .LVU141
	.loc 1 76 16 is_stmt 0 view .LVU142
	ldrh	r3, [r2, #8]
	.loc 1 76 10 view .LVU143
	lsls	r0, r3, #30
	bpl	.L40
	.loc 1 77 16 view .LVU144
	ldr	r2, .L50
.L41:
	.loc 1 77 10 is_stmt 1 view .LVU145
	.loc 1 77 16 is_stmt 0 view .LVU146
	ldrh	r3, [r2, #8]
	.loc 1 77 10 view .LVU147
	lsls	r1, r3, #31
	bpl	.L41
	.loc 1 78 14 view .LVU148
	ldr	r2, .L50
.L42:
	.loc 1 78 10 is_stmt 1 view .LVU149
	.loc 1 78 14 is_stmt 0 view .LVU150
	ldrh	r3, [r2, #8]
	.loc 1 78 10 view .LVU151
	lsls	r3, r3, #24
	bmi	.L42
	.loc 1 79 3 is_stmt 1 view .LVU152
	.loc 1 79 13 is_stmt 0 view .LVU153
	ldrh	r3, [r2, #12]
.LVL10:
	.loc 1 81 3 is_stmt 1 view .LVU154
	.loc 1 81 3 is_stmt 0 view .LVU155
.LBE15:
.LBE14:
	.loc 1 93 5 is_stmt 1 view .LVU156
	.loc 1 93 7 is_stmt 0 view .LVU157
	uxtb	r3, r3
	.loc 1 93 7 view .LVU158
	cmp	r3, #165
	beq	.L49
	.loc 1 98 9 is_stmt 1 view .LVU159
.LVL11:
	.loc 1 98 9 is_stmt 0 view .LVU160
.LBE13:
.LBE12:
	.loc 1 109 5 is_stmt 1 view .LVU161
	ldr	r0, .L50+4
	b	printUSART2
.LVL12:
.L49:
	.loc 1 107 5 view .LVU162
	ldr	r0, .L50+8
	b	printUSART2
.LVL13:
.L51:
	.align	2
.L50:
	.word	1073819648
	.word	.LC1
	.word	.LC0
	.cfi_endproc
.LFE114:
	.size	provjera_loopback_test, .-provjera_loopback_test
	.align	1
	.p2align 2,,3
	.global	initSPI2_nRF24lO1_carrier
	.syntax unified
	.thumb
	.thumb_func
	.type	initSPI2_nRF24lO1_carrier, %function
initSPI2_nRF24lO1_carrier:
.LVL14:
.LFB115:
	.loc 1 125 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 140 5 view .LVU164
	.loc 1 125 1 is_stmt 0 view .LVU165
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 140 8 view .LVU166
	ldr	r4, .L54
	.loc 1 141 10 view .LVU167
	ldr	r3, .L54+4
	.loc 1 140 8 view .LVU168
	ldr	r1, [r4, #48]
	.loc 1 165 15 view .LVU169
	ldr	r2, .L54+8
	.loc 1 140 18 view .LVU170
	orr	r1, r1, #2
	str	r1, [r4, #48]
	.loc 1 141 5 is_stmt 1 view .LVU171
	.loc 1 141 10 is_stmt 0 view .LVU172
	ldr	r1, [r3]
	.loc 1 141 18 view .LVU173
	bic	r1, r1, #-67108864
	str	r1, [r3]
	.loc 1 142 5 is_stmt 1 view .LVU174
	.loc 1 142 10 is_stmt 0 view .LVU175
	ldr	r1, [r3]
	.loc 1 142 18 view .LVU176
	orr	r1, r1, #-1476395008
	str	r1, [r3]
	.loc 1 143 5 is_stmt 1 view .LVU177
	.loc 1 143 10 is_stmt 0 view .LVU178
	ldr	r1, [r3, #4]
	.loc 1 143 19 view .LVU179
	bic	r1, r1, #57344
	str	r1, [r3, #4]
	.loc 1 144 5 is_stmt 1 view .LVU180
	.loc 1 144 10 is_stmt 0 view .LVU181
	ldr	r1, [r3, #8]
	.loc 1 144 20 view .LVU182
	orr	r1, r1, #-1476395008
	str	r1, [r3, #8]
	.loc 1 145 5 is_stmt 1 view .LVU183
	.loc 1 145 10 is_stmt 0 view .LVU184
	ldr	r1, [r3, #12]
	.loc 1 145 18 view .LVU185
	bic	r1, r1, #-67108864
	str	r1, [r3, #12]
	.loc 1 147 5 is_stmt 1 view .LVU186
	.loc 1 147 15 is_stmt 0 view .LVU187
	ldr	r1, [r3, #36]
	.loc 1 147 19 view .LVU188
	orr	r1, r1, #1426063360
	orr	r1, r1, #5242880
	str	r1, [r3, #36]
	.loc 1 152 5 is_stmt 1 view .LVU189
	.loc 1 152 10 is_stmt 0 view .LVU190
	ldr	r1, [r3]
	.loc 1 152 18 view .LVU191
	bic	r1, r1, #50331648
	str	r1, [r3]
	.loc 1 153 5 is_stmt 1 view .LVU192
	.loc 1 153 10 is_stmt 0 view .LVU193
	ldr	r1, [r3]
	.loc 1 153 18 view .LVU194
	orr	r1, r1, #16777216
	str	r1, [r3]
	.loc 1 154 5 is_stmt 1 view .LVU195
	.loc 1 154 10 is_stmt 0 view .LVU196
	ldr	r1, [r3, #4]
	.loc 1 154 19 view .LVU197
	bic	r1, r1, #4096
	str	r1, [r3, #4]
	.loc 1 155 5 is_stmt 1 view .LVU198
	.loc 1 155 10 is_stmt 0 view .LVU199
	ldr	r1, [r3, #8]
	.loc 1 155 20 view .LVU200
	orr	r1, r1, #33554432
	str	r1, [r3, #8]
	.loc 1 156 5 is_stmt 1 view .LVU201
	.loc 1 156 10 is_stmt 0 view .LVU202
	ldr	r1, [r3, #12]
	.loc 1 156 18 view .LVU203
	bic	r1, r1, #50331648
	str	r1, [r3, #12]
	.loc 1 158 5 is_stmt 1 view .LVU204
	ldr	r1, [r3, #20]
	orr	r1, r1, #4096
	str	r1, [r3, #20]
	.loc 1 158 17 view .LVU205
	.loc 1 163 5 view .LVU206
	.loc 1 163 8 is_stmt 0 view .LVU207
	ldr	r3, [r4, #64]
	.loc 1 165 15 view .LVU208
	movs	r1, #4
	.loc 1 163 18 view .LVU209
	orr	r3, r3, #16384
	str	r3, [r4, #64]
	.loc 1 165 5 is_stmt 1 view .LVU210
	.loc 1 165 15 is_stmt 0 view .LVU211
	strh	r1, [r2]	@ movhi
	.loc 1 166 5 is_stmt 1 view .LVU212
	.loc 1 166 9 is_stmt 0 view .LVU213
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 166 15 view .LVU214
	orr	r3, r3, #768
	strh	r3, [r2]	@ movhi
	.loc 1 167 5 is_stmt 1 view .LVU215
	.loc 1 167 9 is_stmt 0 view .LVU216
	ldrh	r3, [r2]
	.loc 1 171 1 view .LVU217
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 167 9 view .LVU218
	uxth	r3, r3
	.loc 1 167 15 view .LVU219
	orrs	r3, r3, r0
	strh	r3, [r2]	@ movhi
	.loc 1 169 5 is_stmt 1 view .LVU220
	.loc 1 169 9 is_stmt 0 view .LVU221
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 169 15 view .LVU222
	orr	r3, r3, #64
	strh	r3, [r2]	@ movhi
	.loc 1 171 1 view .LVU223
	bx	lr
.L55:
	.align	2
.L54:
	.word	1073887232
	.word	1073873920
	.word	1073756160
	.cfi_endproc
.LFE115:
	.size	initSPI2_nRF24lO1_carrier, .-initSPI2_nRF24lO1_carrier
	.align	1
	.p2align 2,,3
	.global	rxByteSPI2_nRF_carrier
	.syntax unified
	.thumb
	.thumb_func
	.type	rxByteSPI2_nRF_carrier, %function
rxByteSPI2_nRF_carrier:
.LFB116:
	.loc 1 176 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 177 3 view .LVU225
	.loc 1 179 3 view .LVU226
	.loc 1 179 12 is_stmt 0 view .LVU227
	ldr	r2, .L65
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
	.loc 1 188 3 is_stmt 1 view .LVU228
.L57:
	.loc 1 188 10 discriminator 1 view .LVU229
	.loc 1 188 16 is_stmt 0 discriminator 1 view .LVU230
	ldrh	r3, [r2, #8]
	.loc 1 188 10 discriminator 1 view .LVU231
	lsls	r0, r3, #30
	bpl	.L57
	.loc 1 189 16 view .LVU232
	ldr	r2, .L65
.L58:
	.loc 1 189 10 is_stmt 1 discriminator 1 view .LVU233
	.loc 1 189 16 is_stmt 0 discriminator 1 view .LVU234
	ldrh	r3, [r2, #8]
	.loc 1 189 10 discriminator 1 view .LVU235
	lsls	r1, r3, #31
	bpl	.L58
	.loc 1 190 14 view .LVU236
	ldr	r2, .L65
.L59:
	.loc 1 190 10 is_stmt 1 discriminator 1 view .LVU237
	.loc 1 190 14 is_stmt 0 discriminator 1 view .LVU238
	ldrh	r3, [r2, #8]
	.loc 1 190 10 discriminator 1 view .LVU239
	lsls	r3, r3, #24
	bmi	.L59
	.loc 1 191 3 is_stmt 1 view .LVU240
	.loc 1 191 14 is_stmt 0 view .LVU241
	ldrh	r0, [r2, #12]
.LVL15:
	.loc 1 193 3 is_stmt 1 view .LVU242
	.loc 1 194 1 is_stmt 0 view .LVU243
	uxtb	r0, r0
	.loc 1 194 1 view .LVU244
	bx	lr
.L66:
	.align	2
.L65:
	.word	1073756160
	.cfi_endproc
.LFE116:
	.size	rxByteSPI2_nRF_carrier, .-rxByteSPI2_nRF_carrier
	.align	1
	.p2align 2,,3
	.global	txByteSPI2_nRF_carrier
	.syntax unified
	.thumb
	.thumb_func
	.type	txByteSPI2_nRF_carrier, %function
txByteSPI2_nRF_carrier:
.LVL16:
.LFB117:
	.loc 1 198 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 199 3 view .LVU246
	.loc 1 201 3 view .LVU247
	.loc 1 201 12 is_stmt 0 view .LVU248
	ldr	r2, .L76
	strh	r0, [r2, #12]	@ movhi
	.loc 1 203 3 is_stmt 1 view .LVU249
.LVL17:
.L68:
	.loc 1 203 10 discriminator 1 view .LVU250
	.loc 1 203 16 is_stmt 0 discriminator 1 view .LVU251
	ldrh	r3, [r2, #8]
	.loc 1 203 10 discriminator 1 view .LVU252
	lsls	r0, r3, #30
	bpl	.L68
	.loc 1 204 16 view .LVU253
	ldr	r2, .L76
.L69:
	.loc 1 204 10 is_stmt 1 discriminator 1 view .LVU254
	.loc 1 204 16 is_stmt 0 discriminator 1 view .LVU255
	ldrh	r3, [r2, #8]
	.loc 1 204 10 discriminator 1 view .LVU256
	lsls	r1, r3, #31
	bpl	.L69
	.loc 1 205 14 view .LVU257
	ldr	r2, .L76
.L70:
	.loc 1 205 10 is_stmt 1 discriminator 1 view .LVU258
	.loc 1 205 14 is_stmt 0 discriminator 1 view .LVU259
	ldrh	r3, [r2, #8]
	.loc 1 205 10 discriminator 1 view .LVU260
	lsls	r3, r3, #24
	bmi	.L70
	.loc 1 206 3 is_stmt 1 view .LVU261
	.loc 1 206 13 is_stmt 0 view .LVU262
	ldrh	r0, [r2, #12]
.LVL18:
	.loc 1 208 3 is_stmt 1 view .LVU263
	.loc 1 209 1 is_stmt 0 view .LVU264
	uxtb	r0, r0
	.loc 1 209 1 view .LVU265
	bx	lr
.L77:
	.align	2
.L76:
	.word	1073756160
	.cfi_endproc
.LFE117:
	.size	txByteSPI2_nRF_carrier, .-txByteSPI2_nRF_carrier
	.align	1
	.p2align 2,,3
	.global	txSPI2_nRF_carrier
	.syntax unified
	.thumb
	.thumb_func
	.type	txSPI2_nRF_carrier, %function
txSPI2_nRF_carrier:
.LVL19:
.LFB118:
	.loc 1 213 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 214 3 view .LVU267
	.loc 1 215 3 view .LVU268
	.loc 1 215 12 view .LVU269
	cbz	r1, .L78
.LBB18:
.LBB19:
	.loc 1 201 12 is_stmt 0 view .LVU270
	ldr	r3, .L93
	add	r1, r1, r0
.LVL20:
.L83:
	.loc 1 201 12 view .LVU271
.LBE19:
.LBE18:
	.loc 1 217 5 is_stmt 1 discriminator 3 view .LVU272
	ldrb	r2, [r0], #1	@ zero_extendqisi2
.LVL21:
.LBB22:
.LBI18:
	.loc 1 197 9 discriminator 3 view .LVU273
.LBB20:
	.loc 1 199 3 discriminator 3 view .LVU274
	.loc 1 201 3 discriminator 3 view .LVU275
	.loc 1 201 12 is_stmt 0 discriminator 3 view .LVU276
	strh	r2, [r3, #12]	@ movhi
	.loc 1 203 3 is_stmt 1 discriminator 3 view .LVU277
.LVL22:
.L80:
	.loc 1 203 10 view .LVU278
	.loc 1 203 16 is_stmt 0 view .LVU279
	ldrh	r2, [r3, #8]
	.loc 1 203 10 view .LVU280
	lsls	r2, r2, #30
	bpl	.L80
.L81:
	.loc 1 204 10 is_stmt 1 view .LVU281
	.loc 1 204 16 is_stmt 0 view .LVU282
	ldrh	r2, [r3, #8]
	.loc 1 204 10 view .LVU283
	lsls	r2, r2, #31
	bpl	.L81
.L82:
	.loc 1 205 10 is_stmt 1 view .LVU284
	.loc 1 205 14 is_stmt 0 view .LVU285
	ldrh	r2, [r3, #8]
	.loc 1 205 10 view .LVU286
	lsls	r2, r2, #24
	bmi	.L82
	.loc 1 206 3 is_stmt 1 view .LVU287
.LBE20:
.LBE22:
	.loc 1 215 12 is_stmt 0 view .LVU288
	cmp	r0, r1
.LBB23:
.LBB21:
	.loc 1 206 13 view .LVU289
	ldrh	r2, [r3, #12]
.LVL23:
	.loc 1 208 3 is_stmt 1 view .LVU290
	.loc 1 208 3 is_stmt 0 view .LVU291
.LBE21:
.LBE23:
	.loc 1 215 19 is_stmt 1 view .LVU292
	.loc 1 215 12 view .LVU293
	bne	.L83
.LVL24:
.L78:
	.loc 1 219 1 is_stmt 0 view .LVU294
	bx	lr
.L94:
	.align	2
.L93:
	.word	1073756160
	.cfi_endproc
.LFE118:
	.size	txSPI2_nRF_carrier, .-txSPI2_nRF_carrier
	.align	1
	.p2align 2,,3
	.global	rxSPI2_nRF_carrier
	.syntax unified
	.thumb
	.thumb_func
	.type	rxSPI2_nRF_carrier, %function
rxSPI2_nRF_carrier:
.LVL25:
.LFB119:
	.loc 1 223 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 224 3 view .LVU296
	.loc 1 225 3 view .LVU297
	.loc 1 225 14 view .LVU298
	cbz	r1, .L95
.LBB26:
.LBB27:
	.loc 1 179 12 is_stmt 0 view .LVU299
	ldr	r3, .L110
	add	r1, r1, r0
.LVL26:
	.loc 1 179 12 view .LVU300
	mov	ip, #0	@ movhi
.LVL27:
.L100:
	.loc 1 179 12 view .LVU301
.LBE27:
.LBE26:
	.loc 1 226 5 is_stmt 1 discriminator 3 view .LVU302
.LBB29:
.LBI26:
	.loc 1 175 9 discriminator 3 view .LVU303
.LBB28:
	.loc 1 177 3 discriminator 3 view .LVU304
	.loc 1 179 3 discriminator 3 view .LVU305
	.loc 1 179 12 is_stmt 0 discriminator 3 view .LVU306
	strh	ip, [r3, #12]	@ movhi
	.loc 1 188 3 is_stmt 1 discriminator 3 view .LVU307
.L97:
	.loc 1 188 10 view .LVU308
	.loc 1 188 16 is_stmt 0 view .LVU309
	ldrh	r2, [r3, #8]
	.loc 1 188 10 view .LVU310
	lsls	r2, r2, #30
	bpl	.L97
.L98:
	.loc 1 189 10 is_stmt 1 view .LVU311
	.loc 1 189 16 is_stmt 0 view .LVU312
	ldrh	r2, [r3, #8]
	.loc 1 189 10 view .LVU313
	lsls	r2, r2, #31
	bpl	.L98
.L99:
	.loc 1 190 10 is_stmt 1 view .LVU314
	.loc 1 190 14 is_stmt 0 view .LVU315
	ldrh	r2, [r3, #8]
	.loc 1 190 10 view .LVU316
	lsls	r2, r2, #24
	bmi	.L99
	.loc 1 191 3 is_stmt 1 view .LVU317
	.loc 1 191 14 is_stmt 0 view .LVU318
	ldrh	r2, [r3, #12]
.LVL28:
	.loc 1 193 3 is_stmt 1 view .LVU319
	.loc 1 191 8 is_stmt 0 view .LVU320
	strb	r2, [r0], #1
.LVL29:
	.loc 1 191 8 view .LVU321
.LBE28:
.LBE29:
	.loc 1 225 22 is_stmt 1 view .LVU322
	.loc 1 225 14 view .LVU323
	cmp	r0, r1
	bne	.L100
.LVL30:
.L95:
	.loc 1 228 1 is_stmt 0 view .LVU324
	bx	lr
.L111:
	.align	2
.L110:
	.word	1073756160
	.cfi_endproc
.LFE119:
	.size	rxSPI2_nRF_carrier, .-rxSPI2_nRF_carrier
	.align	1
	.p2align 2,,3
	.global	initSPI3_nRF24lO1
	.syntax unified
	.thumb
	.thumb_func
	.type	initSPI3_nRF24lO1, %function
initSPI3_nRF24lO1:
.LVL31:
.LFB120:
	.loc 1 242 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 260 5 view .LVU326
	.loc 1 260 8 is_stmt 0 view .LVU327
	ldr	r1, .L114
	.loc 1 261 10 view .LVU328
	ldr	r3, .L114+4
	.loc 1 274 10 view .LVU329
	ldr	r2, .L114+8
	.loc 1 242 1 view .LVU330
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 260 8 view .LVU331
	ldr	r4, [r1, #48]
	.loc 1 260 18 view .LVU332
	orr	r4, r4, #2
	str	r4, [r1, #48]
	.loc 1 261 5 is_stmt 1 view .LVU333
	.loc 1 261 10 is_stmt 0 view .LVU334
	ldr	r4, [r3]
	.loc 1 261 18 view .LVU335
	bic	r4, r4, #4032
	str	r4, [r3]
	.loc 1 262 5 is_stmt 1 view .LVU336
	.loc 1 262 10 is_stmt 0 view .LVU337
	ldr	r4, [r3]
	.loc 1 262 18 view .LVU338
	orr	r4, r4, #2688
	str	r4, [r3]
	.loc 1 263 5 is_stmt 1 view .LVU339
	.loc 1 263 10 is_stmt 0 view .LVU340
	ldr	r4, [r3, #4]
	.loc 1 263 19 view .LVU341
	bic	r4, r4, #56
	str	r4, [r3, #4]
	.loc 1 264 5 is_stmt 1 view .LVU342
	.loc 1 264 10 is_stmt 0 view .LVU343
	ldr	r4, [r3, #8]
	.loc 1 264 20 view .LVU344
	orr	r4, r4, #2688
	str	r4, [r3, #8]
	.loc 1 265 5 is_stmt 1 view .LVU345
	.loc 1 265 10 is_stmt 0 view .LVU346
	ldr	r4, [r3, #12]
	.loc 1 265 18 view .LVU347
	bic	r4, r4, #4032
	str	r4, [r3, #12]
	.loc 1 267 5 is_stmt 1 view .LVU348
	.loc 1 267 15 is_stmt 0 view .LVU349
	ldr	r4, [r3, #32]
	.loc 1 267 19 view .LVU350
	bic	r4, r4, #6684672
	bic	r4, r4, #24576
	str	r4, [r3, #32]
	.loc 1 268 5 is_stmt 1 view .LVU351
	.loc 1 268 15 is_stmt 0 view .LVU352
	ldr	r4, [r3, #32]
	.loc 1 268 19 view .LVU353
	orr	r4, r4, #6684672
	orr	r4, r4, #24576
	str	r4, [r3, #32]
	.loc 1 273 5 is_stmt 1 view .LVU354
	.loc 1 273 8 is_stmt 0 view .LVU355
	ldr	r4, [r1, #48]
	.loc 1 273 18 view .LVU356
	orr	r4, r4, #8
	str	r4, [r1, #48]
	.loc 1 274 5 is_stmt 1 view .LVU357
	.loc 1 274 10 is_stmt 0 view .LVU358
	ldr	r4, [r2]
	.loc 1 274 18 view .LVU359
	bic	r4, r4, #49152
	str	r4, [r2]
	.loc 1 275 5 is_stmt 1 view .LVU360
	.loc 1 275 10 is_stmt 0 view .LVU361
	ldr	r4, [r2]
	.loc 1 275 18 view .LVU362
	orr	r4, r4, #16384
	str	r4, [r2]
	.loc 1 276 5 is_stmt 1 view .LVU363
	.loc 1 276 10 is_stmt 0 view .LVU364
	ldr	r4, [r2, #4]
	.loc 1 276 19 view .LVU365
	bic	r4, r4, #128
	str	r4, [r2, #4]
	.loc 1 277 5 is_stmt 1 view .LVU366
	.loc 1 277 10 is_stmt 0 view .LVU367
	ldr	r4, [r2, #8]
	.loc 1 277 20 view .LVU368
	orr	r4, r4, #32768
	str	r4, [r2, #8]
	.loc 1 278 5 is_stmt 1 view .LVU369
	.loc 1 278 10 is_stmt 0 view .LVU370
	ldr	r4, [r2, #12]
	.loc 1 278 18 view .LVU371
	bic	r4, r4, #49152
	str	r4, [r2, #12]
	.loc 1 280 5 is_stmt 1 view .LVU372
	ldr	r4, [r2, #20]
	orr	r4, r4, #128
	str	r4, [r2, #20]
	.loc 1 280 17 view .LVU373
	.loc 1 285 5 view .LVU374
	.loc 1 285 8 is_stmt 0 view .LVU375
	ldr	r2, [r1, #64]
	.loc 1 287 15 view .LVU376
	sub	r3, r3, #116736
	movs	r4, #4
	.loc 1 285 18 view .LVU377
	orr	r2, r2, #32768
	str	r2, [r1, #64]
	.loc 1 287 5 is_stmt 1 view .LVU378
	.loc 1 287 15 is_stmt 0 view .LVU379
	strh	r4, [r3]	@ movhi
	.loc 1 288 5 is_stmt 1 view .LVU380
	.loc 1 288 9 is_stmt 0 view .LVU381
	ldrh	r2, [r3]
	.loc 1 293 1 view .LVU382
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 288 9 view .LVU383
	uxth	r2, r2
	.loc 1 288 15 view .LVU384
	orr	r2, r2, #768
	strh	r2, [r3]	@ movhi
	.loc 1 289 5 is_stmt 1 view .LVU385
	.loc 1 289 9 is_stmt 0 view .LVU386
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 289 15 view .LVU387
	orrs	r2, r2, r0
	strh	r2, [r3]	@ movhi
	.loc 1 291 5 is_stmt 1 view .LVU388
	.loc 1 291 9 is_stmt 0 view .LVU389
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 291 15 view .LVU390
	orr	r2, r2, #64
	strh	r2, [r3]	@ movhi
	.loc 1 293 1 view .LVU391
	bx	lr
.L115:
	.align	2
.L114:
	.word	1073887232
	.word	1073873920
	.word	1073875968
	.cfi_endproc
.LFE120:
	.size	initSPI3_nRF24lO1, .-initSPI3_nRF24lO1
	.align	1
	.p2align 2,,3
	.global	rxByteSPI3_nRF
	.syntax unified
	.thumb
	.thumb_func
	.type	rxByteSPI3_nRF, %function
rxByteSPI3_nRF:
.LFB121:
	.loc 1 298 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 299 3 view .LVU393
	.loc 1 301 3 view .LVU394
	.loc 1 301 12 is_stmt 0 view .LVU395
	ldr	r2, .L125
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
	.loc 1 310 3 is_stmt 1 view .LVU396
.L117:
	.loc 1 310 10 discriminator 1 view .LVU397
	.loc 1 310 16 is_stmt 0 discriminator 1 view .LVU398
	ldrh	r3, [r2, #8]
	.loc 1 310 10 discriminator 1 view .LVU399
	lsls	r0, r3, #30
	bpl	.L117
	.loc 1 311 16 view .LVU400
	ldr	r2, .L125
.L118:
	.loc 1 311 10 is_stmt 1 discriminator 1 view .LVU401
	.loc 1 311 16 is_stmt 0 discriminator 1 view .LVU402
	ldrh	r3, [r2, #8]
	.loc 1 311 10 discriminator 1 view .LVU403
	lsls	r1, r3, #31
	bpl	.L118
	.loc 1 312 14 view .LVU404
	ldr	r2, .L125
.L119:
	.loc 1 312 10 is_stmt 1 discriminator 1 view .LVU405
	.loc 1 312 14 is_stmt 0 discriminator 1 view .LVU406
	ldrh	r3, [r2, #8]
	.loc 1 312 10 discriminator 1 view .LVU407
	lsls	r3, r3, #24
	bmi	.L119
	.loc 1 313 3 is_stmt 1 view .LVU408
	.loc 1 313 14 is_stmt 0 view .LVU409
	ldrh	r0, [r2, #12]
.LVL32:
	.loc 1 315 3 is_stmt 1 view .LVU410
	.loc 1 316 1 is_stmt 0 view .LVU411
	uxtb	r0, r0
	.loc 1 316 1 view .LVU412
	bx	lr
.L126:
	.align	2
.L125:
	.word	1073757184
	.cfi_endproc
.LFE121:
	.size	rxByteSPI3_nRF, .-rxByteSPI3_nRF
	.align	1
	.p2align 2,,3
	.global	txByteSPI3_nRF
	.syntax unified
	.thumb
	.thumb_func
	.type	txByteSPI3_nRF, %function
txByteSPI3_nRF:
.LVL33:
.LFB122:
	.loc 1 320 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 321 3 view .LVU414
	.loc 1 323 3 view .LVU415
	.loc 1 323 12 is_stmt 0 view .LVU416
	ldr	r2, .L136
	strh	r0, [r2, #12]	@ movhi
	.loc 1 325 3 is_stmt 1 view .LVU417
.LVL34:
.L128:
	.loc 1 325 10 discriminator 1 view .LVU418
	.loc 1 325 16 is_stmt 0 discriminator 1 view .LVU419
	ldrh	r3, [r2, #8]
	.loc 1 325 10 discriminator 1 view .LVU420
	lsls	r0, r3, #30
	bpl	.L128
	.loc 1 326 16 view .LVU421
	ldr	r2, .L136
.L129:
	.loc 1 326 10 is_stmt 1 discriminator 1 view .LVU422
	.loc 1 326 16 is_stmt 0 discriminator 1 view .LVU423
	ldrh	r3, [r2, #8]
	.loc 1 326 10 discriminator 1 view .LVU424
	lsls	r1, r3, #31
	bpl	.L129
	.loc 1 327 14 view .LVU425
	ldr	r2, .L136
.L130:
	.loc 1 327 10 is_stmt 1 discriminator 1 view .LVU426
	.loc 1 327 14 is_stmt 0 discriminator 1 view .LVU427
	ldrh	r3, [r2, #8]
	.loc 1 327 10 discriminator 1 view .LVU428
	lsls	r3, r3, #24
	bmi	.L130
	.loc 1 328 3 is_stmt 1 view .LVU429
	.loc 1 328 13 is_stmt 0 view .LVU430
	ldrh	r0, [r2, #12]
.LVL35:
	.loc 1 330 3 is_stmt 1 view .LVU431
	.loc 1 331 1 is_stmt 0 view .LVU432
	uxtb	r0, r0
	.loc 1 331 1 view .LVU433
	bx	lr
.L137:
	.align	2
.L136:
	.word	1073757184
	.cfi_endproc
.LFE122:
	.size	txByteSPI3_nRF, .-txByteSPI3_nRF
	.align	1
	.p2align 2,,3
	.global	txSPI3_nRF
	.syntax unified
	.thumb
	.thumb_func
	.type	txSPI3_nRF, %function
txSPI3_nRF:
.LVL36:
.LFB123:
	.loc 1 335 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 336 3 view .LVU435
	.loc 1 337 3 view .LVU436
	.loc 1 337 12 view .LVU437
	cbz	r1, .L138
.LBB32:
.LBB33:
	.loc 1 323 12 is_stmt 0 view .LVU438
	ldr	r3, .L153
	add	r1, r1, r0
.LVL37:
.L143:
	.loc 1 323 12 view .LVU439
.LBE33:
.LBE32:
	.loc 1 339 5 is_stmt 1 discriminator 3 view .LVU440
	ldrb	r2, [r0], #1	@ zero_extendqisi2
.LVL38:
.LBB36:
.LBI32:
	.loc 1 319 9 discriminator 3 view .LVU441
.LBB34:
	.loc 1 321 3 discriminator 3 view .LVU442
	.loc 1 323 3 discriminator 3 view .LVU443
	.loc 1 323 12 is_stmt 0 discriminator 3 view .LVU444
	strh	r2, [r3, #12]	@ movhi
	.loc 1 325 3 is_stmt 1 discriminator 3 view .LVU445
.LVL39:
.L140:
	.loc 1 325 10 view .LVU446
	.loc 1 325 16 is_stmt 0 view .LVU447
	ldrh	r2, [r3, #8]
	.loc 1 325 10 view .LVU448
	lsls	r2, r2, #30
	bpl	.L140
.L141:
	.loc 1 326 10 is_stmt 1 view .LVU449
	.loc 1 326 16 is_stmt 0 view .LVU450
	ldrh	r2, [r3, #8]
	.loc 1 326 10 view .LVU451
	lsls	r2, r2, #31
	bpl	.L141
.L142:
	.loc 1 327 10 is_stmt 1 view .LVU452
	.loc 1 327 14 is_stmt 0 view .LVU453
	ldrh	r2, [r3, #8]
	.loc 1 327 10 view .LVU454
	lsls	r2, r2, #24
	bmi	.L142
	.loc 1 328 3 is_stmt 1 view .LVU455
.LBE34:
.LBE36:
	.loc 1 337 12 is_stmt 0 view .LVU456
	cmp	r0, r1
.LBB37:
.LBB35:
	.loc 1 328 13 view .LVU457
	ldrh	r2, [r3, #12]
.LVL40:
	.loc 1 330 3 is_stmt 1 view .LVU458
	.loc 1 330 3 is_stmt 0 view .LVU459
.LBE35:
.LBE37:
	.loc 1 337 19 is_stmt 1 view .LVU460
	.loc 1 337 12 view .LVU461
	bne	.L143
.LVL41:
.L138:
	.loc 1 341 1 is_stmt 0 view .LVU462
	bx	lr
.L154:
	.align	2
.L153:
	.word	1073757184
	.cfi_endproc
.LFE123:
	.size	txSPI3_nRF, .-txSPI3_nRF
	.align	1
	.p2align 2,,3
	.global	rxSPI3_nRF
	.syntax unified
	.thumb
	.thumb_func
	.type	rxSPI3_nRF, %function
rxSPI3_nRF:
.LVL42:
.LFB124:
	.loc 1 345 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 346 3 view .LVU464
	.loc 1 347 3 view .LVU465
	.loc 1 347 14 view .LVU466
	cbz	r1, .L155
.LBB40:
.LBB41:
	.loc 1 301 12 is_stmt 0 view .LVU467
	ldr	r3, .L170
	add	r1, r1, r0
.LVL43:
	.loc 1 301 12 view .LVU468
	mov	ip, #0	@ movhi
.LVL44:
.L160:
	.loc 1 301 12 view .LVU469
.LBE41:
.LBE40:
	.loc 1 348 5 is_stmt 1 discriminator 3 view .LVU470
.LBB43:
.LBI40:
	.loc 1 297 9 discriminator 3 view .LVU471
.LBB42:
	.loc 1 299 3 discriminator 3 view .LVU472
	.loc 1 301 3 discriminator 3 view .LVU473
	.loc 1 301 12 is_stmt 0 discriminator 3 view .LVU474
	strh	ip, [r3, #12]	@ movhi
	.loc 1 310 3 is_stmt 1 discriminator 3 view .LVU475
.L157:
	.loc 1 310 10 view .LVU476
	.loc 1 310 16 is_stmt 0 view .LVU477
	ldrh	r2, [r3, #8]
	.loc 1 310 10 view .LVU478
	lsls	r2, r2, #30
	bpl	.L157
.L158:
	.loc 1 311 10 is_stmt 1 view .LVU479
	.loc 1 311 16 is_stmt 0 view .LVU480
	ldrh	r2, [r3, #8]
	.loc 1 311 10 view .LVU481
	lsls	r2, r2, #31
	bpl	.L158
.L159:
	.loc 1 312 10 is_stmt 1 view .LVU482
	.loc 1 312 14 is_stmt 0 view .LVU483
	ldrh	r2, [r3, #8]
	.loc 1 312 10 view .LVU484
	lsls	r2, r2, #24
	bmi	.L159
	.loc 1 313 3 is_stmt 1 view .LVU485
	.loc 1 313 14 is_stmt 0 view .LVU486
	ldrh	r2, [r3, #12]
.LVL45:
	.loc 1 315 3 is_stmt 1 view .LVU487
	.loc 1 313 8 is_stmt 0 view .LVU488
	strb	r2, [r0], #1
.LVL46:
	.loc 1 313 8 view .LVU489
.LBE42:
.LBE43:
	.loc 1 347 22 is_stmt 1 view .LVU490
	.loc 1 347 14 view .LVU491
	cmp	r0, r1
	bne	.L160
.LVL47:
.L155:
	.loc 1 350 1 is_stmt 0 view .LVU492
	bx	lr
.L171:
	.align	2
.L170:
	.word	1073757184
	.cfi_endproc
.LFE124:
	.size	rxSPI3_nRF, .-rxSPI3_nRF
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "spi/../usart/usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x8b6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1d
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xc
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0xc
	.4byte	.LASF6
	.byte	0x31
	.byte	0x19
	.4byte	0x64
	.uleb128 0xd
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xc
	.4byte	.LASF8
	.byte	0x34
	.byte	0x19
	.4byte	0x7b
	.uleb128 0xd
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x12
	.4byte	0x6b
	.4byte	0xa6
	.uleb128 0x13
	.4byte	0x90
	.byte	0
	.uleb128 0xe
	.byte	0x28
	.2byte	0x28e
	.4byte	0x127
	.uleb128 0x1
	.4byte	.LASF12
	.2byte	0x290
	.4byte	0x76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF13
	.2byte	0x291
	.4byte	0x76
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.2byte	0x292
	.4byte	0x76
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF15
	.2byte	0x293
	.4byte	0x76
	.byte	0xc
	.uleb128 0x4
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x76
	.byte	0x10
	.uleb128 0x4
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0x76
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x296
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x297
	.4byte	0x5f
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x298
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x4
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x136
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	0x76
	.4byte	0x136
	.uleb128 0x13
	.4byte	0x90
	.byte	0
	.uleb128 0xd
	.4byte	0x127
	.uleb128 0xf
	.4byte	.LASF19
	.2byte	0x29a
	.4byte	0xa6
	.uleb128 0xe
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x2b6
	.uleb128 0x4
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x2e0
	.4byte	0x76
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x2e1
	.4byte	0x76
	.byte	0x8
	.uleb128 0x4
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x76
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x2e3
	.4byte	0x76
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x2e4
	.4byte	0x76
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x2e5
	.4byte	0x76
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x2e6
	.4byte	0x6b
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x2e7
	.4byte	0x76
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x2e8
	.4byte	0x76
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x2e9
	.4byte	0x97
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x2ea
	.4byte	0x76
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x2eb
	.4byte	0x76
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x2ec
	.4byte	0x76
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x2ed
	.4byte	0x6b
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x2ee
	.4byte	0x76
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x2ef
	.4byte	0x76
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x2f0
	.4byte	0x97
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x2f1
	.4byte	0x76
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x2f2
	.4byte	0x76
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x2f3
	.4byte	0x76
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x2f4
	.4byte	0x6b
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x2f5
	.4byte	0x76
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x2f6
	.4byte	0x76
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x2f7
	.4byte	0x97
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x2f8
	.4byte	0x76
	.byte	0x70
	.uleb128 0x4
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x76
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x2fa
	.4byte	0x97
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x2fb
	.4byte	0x76
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2fc
	.4byte	0x76
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.2byte	0x2fd
	.4byte	0x146
	.uleb128 0xe
	.byte	0x24
	.2byte	0x34f
	.4byte	0x3a0
	.uleb128 0x4
	.ascii	"CR1\000"
	.2byte	0x351
	.4byte	0x5f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x352
	.4byte	0x54
	.byte	0x2
	.uleb128 0x4
	.ascii	"CR2\000"
	.2byte	0x353
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x354
	.4byte	0x54
	.byte	0x6
	.uleb128 0x4
	.ascii	"SR\000"
	.2byte	0x355
	.4byte	0x5f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x356
	.4byte	0x54
	.byte	0xa
	.uleb128 0x4
	.ascii	"DR\000"
	.2byte	0x357
	.4byte	0x5f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x358
	.4byte	0x54
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x359
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x35a
	.4byte	0x54
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x35b
	.4byte	0x5f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x35c
	.4byte	0x54
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x35d
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x35e
	.4byte	0x54
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x35f
	.4byte	0x5f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x360
	.4byte	0x54
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x361
	.4byte	0x5f
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF54
	.2byte	0x362
	.4byte	0x54
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.2byte	0x363
	.4byte	0x2c1
	.uleb128 0x23
	.4byte	.LASF78
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.4byte	0x3be
	.uleb128 0x24
	.4byte	0x3be
	.uleb128 0x25
	.byte	0
	.uleb128 0x14
	.4byte	0x3c3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF56
	.uleb128 0x15
	.4byte	.LASF59
	.2byte	0x158
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43e
	.uleb128 0x8
	.4byte	.LASF57
	.2byte	0x158
	.byte	0x1b
	.4byte	0x43e
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x8
	.4byte	.LASF58
	.2byte	0x158
	.byte	0x2a
	.4byte	0x54
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x16
	.ascii	"k\000"
	.2byte	0x15a
	.4byte	0x54
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x17
	.4byte	0x4e6
	.4byte	.LBI40
	.byte	.LVU471
	.4byte	.LLRL33
	.2byte	0x15c
	.byte	0xf
	.uleb128 0x9
	.4byte	.LLRL33
	.uleb128 0x2
	.4byte	0x4f5
	.4byte	.LLST34
	.4byte	.LVUS34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x42
	.uleb128 0x15
	.4byte	.LASF60
	.2byte	0x14e
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0x8
	.4byte	.LASF57
	.2byte	0x14e
	.byte	0x1b
	.4byte	0x43e
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x8
	.4byte	.LASF58
	.2byte	0x14e
	.byte	0x2a
	.4byte	0x54
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x16
	.ascii	"k\000"
	.2byte	0x150
	.4byte	0x54
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x17
	.4byte	0x4bc
	.4byte	.LBI32
	.byte	.LVU441
	.4byte	.LLRL28
	.2byte	0x153
	.byte	0x5
	.uleb128 0x5
	.4byte	0x4cb
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x9
	.4byte	.LLRL28
	.uleb128 0x18
	.4byte	0x4d8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF61
	.2byte	0x13f
	.4byte	0x42
	.4byte	0x4e6
	.uleb128 0x26
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x13f
	.byte	0x20
	.4byte	0x42
	.uleb128 0x27
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x141
	.byte	0xb
	.4byte	0x42
	.byte	0
	.uleb128 0x19
	.4byte	.LASF62
	.2byte	0x129
	.4byte	0x42
	.4byte	0x503
	.uleb128 0x28
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x12b
	.byte	0xb
	.4byte	0x42
	.byte	0
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0xf1
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x525
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0xf1
	.byte	0x21
	.4byte	0x54
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0xde
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x594
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xde
	.byte	0x23
	.4byte	0x43e
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xde
	.byte	0x32
	.4byte	0x54
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1a
	.ascii	"k\000"
	.byte	0xe0
	.4byte	0x54
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x1b
	.4byte	0x62c
	.4byte	.LBI26
	.byte	.LVU303
	.4byte	.LLRL20
	.byte	0xe2
	.byte	0xf
	.uleb128 0x9
	.4byte	.LLRL20
	.uleb128 0x2
	.4byte	0x63a
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0xd4
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x608
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xd4
	.byte	0x23
	.4byte	0x43e
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xd4
	.byte	0x32
	.4byte	0x54
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1a
	.ascii	"k\000"
	.byte	0xd6
	.4byte	0x54
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1b
	.4byte	0x608
	.4byte	.LBI18
	.byte	.LVU273
	.4byte	.LLRL15
	.byte	0xd9
	.byte	0x5
	.uleb128 0x5
	.4byte	0x616
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x9
	.4byte	.LLRL15
	.uleb128 0x18
	.4byte	0x621
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xc5
	.4byte	0x42
	.4byte	0x62c
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0xc5
	.byte	0x28
	.4byte	0x42
	.uleb128 0x1d
	.ascii	"tmp\000"
	.byte	0xc7
	.4byte	0x42
	.byte	0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xaf
	.4byte	0x42
	.4byte	0x646
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xb1
	.byte	0xb
	.4byte	0x42
	.byte	0
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x7c
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x668
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x7c
	.byte	0x29
	.4byte	0x54
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x29
	.4byte	.LASF79
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x703
	.uleb128 0x2a
	.4byte	0x703
	.4byte	.LBI12
	.byte	.LVU132
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	0x6d8
	.uleb128 0x1e
	.4byte	0x711
	.uleb128 0x2
	.4byte	0x71c
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1f
	.4byte	0x728
	.4byte	.LBI14
	.byte	.LVU136
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x5b
	.uleb128 0x5
	.4byte	0x736
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2
	.4byte	0x741
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0x3ab
	.4byte	0x6ef
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL13
	.4byte	0x3ab
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x56
	.4byte	0x42
	.4byte	0x728
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x58
	.byte	0xd
	.4byte	0x42
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x59
	.byte	0xd
	.4byte	0x42
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x46
	.4byte	0x42
	.4byte	0x74c
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x46
	.byte	0x1c
	.4byte	0x42
	.uleb128 0x1d
	.ascii	"tmp\000"
	.byte	0x48
	.4byte	0x42
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF80
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x42
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77b
	.uleb128 0x2e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x32
	.byte	0xb
	.4byte	0x42
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x7
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79d
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x7
	.byte	0x26
	.4byte	0x54
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.4byte	0x728
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cb
	.uleb128 0x5
	.4byte	0x736
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2
	.4byte	0x741
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x7
	.4byte	0x703
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81f
	.uleb128 0x1e
	.4byte	0x711
	.uleb128 0x2
	.4byte	0x71c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.4byte	0x728
	.4byte	.LBI6
	.byte	.LVU105
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x5b
	.uleb128 0x5
	.4byte	0x736
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2
	.4byte	0x741
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x62c
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x840
	.uleb128 0x2
	.4byte	0x63a
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x7
	.4byte	0x608
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86e
	.uleb128 0x5
	.4byte	0x616
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2
	.4byte	0x621
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x7
	.4byte	0x4e6
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88f
	.uleb128 0x2
	.4byte	0x4f5
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x2f
	.4byte	0x4bc
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	0x4cb
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x2
	.4byte	0x4d8
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.sleb128 9
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.sleb128 9
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 -91
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
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
.LVUS30:
	.uleb128 0
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 0
.LLST30:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LFE124-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU468
	.uleb128 .LVU468
	.uleb128 0
.LLST31:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LFE124-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU466
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 .LVU489
	.uleb128 .LVU491
	.uleb128 .LVU492
.LLST32:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU487
	.uleb128 .LVU488
.LLST34:
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU437
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 .LVU441
	.uleb128 .LVU461
	.uleb128 .LVU462
.LLST27:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU441
	.uleb128 .LVU446
.LLST29:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LFE119-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST18:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LFE119-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU298
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU321
	.uleb128 .LVU323
	.uleb128 .LVU324
.LLST19:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU319
	.uleb128 .LVU320
.LLST21:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE118-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE118-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU269
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU273
	.uleb128 .LVU293
	.uleb128 .LVU294
.LLST14:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU273
	.uleb128 .LVU278
.LLST16:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS6:
	.uleb128 .LVU155
	.uleb128 .LVU160
.LLST6:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU136
	.uleb128 .LVU155
.LLST7:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xa5
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU154
	.uleb128 .LVU155
.LLST8:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS0:
	.uleb128 .LVU77
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU98
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS3:
	.uleb128 .LVU124
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU129
.LLST3:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x4
	.byte	0x70
	.sleb128 165
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU105
	.uleb128 .LVU124
.LLST4:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xa5
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU123
	.uleb128 .LVU124
.LLST5:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS9:
	.uleb128 .LVU242
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU263
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS22:
	.uleb128 .LVU410
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LFE121-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU418
	.uleb128 .LVU418
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LFE122-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU431
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LFE122-.Ltext0
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
.LLRL15:
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0
.LLRL20:
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0x4
	.uleb128 .LBB29-.Ltext0
	.uleb128 .LBE29-.Ltext0
	.byte	0
.LLRL28:
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0x4
	.uleb128 .LBB36-.Ltext0
	.uleb128 .LBE36-.Ltext0
	.byte	0x4
	.uleb128 .LBB37-.Ltext0
	.uleb128 .LBE37-.Ltext0
	.byte	0
.LLRL33:
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB43-.Ltext0
	.uleb128 .LBE43-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF36:
	.ascii	"AHB1LPENR\000"
.LASF64:
	.ascii	"rxSPI2_nRF_carrier\000"
.LASF26:
	.ascii	"APB1RSTR\000"
.LASF30:
	.ascii	"AHB2ENR\000"
.LASF1:
	.ascii	"short int\000"
.LASF80:
	.ascii	"rxByteSPI1\000"
.LASF43:
	.ascii	"BDCR\000"
.LASF62:
	.ascii	"rxByteSPI3_nRF\000"
.LASF46:
	.ascii	"PLLI2SCFGR\000"
.LASF45:
	.ascii	"SSCGR\000"
.LASF50:
	.ascii	"TXCRCR\000"
.LASF38:
	.ascii	"AHB3LPENR\000"
.LASF49:
	.ascii	"RXCRCR\000"
.LASF35:
	.ascii	"RESERVED3\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF33:
	.ascii	"APB1ENR\000"
.LASF76:
	.ascii	"spi/spi.c\000"
.LASF72:
	.ascii	"receivedByte\000"
.LASF13:
	.ascii	"OTYPER\000"
.LASF67:
	.ascii	"rxByteSPI2_nRF_carrier\000"
.LASF31:
	.ascii	"AHB3ENR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"PUPDR\000"
.LASF2:
	.ascii	"long int\000"
.LASF47:
	.ascii	"RCC_TypeDef\000"
.LASF17:
	.ascii	"BSRRH\000"
.LASF12:
	.ascii	"MODER\000"
.LASF27:
	.ascii	"APB2RSTR\000"
.LASF16:
	.ascii	"BSRRL\000"
.LASF65:
	.ascii	"txSPI2_nRF_carrier\000"
.LASF70:
	.ascii	"testSPI1_loopback\000"
.LASF74:
	.ascii	"initSPI1_accelerometer\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF34:
	.ascii	"APB2ENR\000"
.LASF60:
	.ascii	"txSPI3_nRF\000"
.LASF73:
	.ascii	"txByteSPI1\000"
.LASF66:
	.ascii	"txByteSPI2_nRF_carrier\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF23:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"CFGR\000"
.LASF20:
	.ascii	"PLLCFGR\000"
.LASF69:
	.ascii	"prescaler\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"APB1LPENR\000"
.LASF58:
	.ascii	"size\000"
.LASF78:
	.ascii	"printUSART2\000"
.LASF56:
	.ascii	"char\000"
.LASF55:
	.ascii	"SPI_TypeDef\000"
.LASF53:
	.ascii	"I2SPR\000"
.LASF79:
	.ascii	"provjera_loopback_test\000"
.LASF59:
	.ascii	"rxSPI3_nRF\000"
.LASF57:
	.ascii	"data\000"
.LASF37:
	.ascii	"AHB2LPENR\000"
.LASF48:
	.ascii	"CRCPR\000"
.LASF25:
	.ascii	"RESERVED0\000"
.LASF28:
	.ascii	"RESERVED1\000"
.LASF32:
	.ascii	"RESERVED2\000"
.LASF14:
	.ascii	"OSPEEDR\000"
.LASF39:
	.ascii	"RESERVED4\000"
.LASF42:
	.ascii	"RESERVED5\000"
.LASF44:
	.ascii	"RESERVED6\000"
.LASF52:
	.ascii	"RESERVED7\000"
.LASF54:
	.ascii	"RESERVED8\000"
.LASF75:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF77:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/kod_sa_3_stm32.BACKUP\000"
.LASF71:
	.ascii	"sendByte\000"
.LASF29:
	.ascii	"AHB1ENR\000"
.LASF22:
	.ascii	"AHB1RSTR\000"
.LASF19:
	.ascii	"GPIO_TypeDef\000"
.LASF61:
	.ascii	"txByteSPI3_nRF\000"
.LASF24:
	.ascii	"AHB3RSTR\000"
.LASF63:
	.ascii	"initSPI3_nRF24lO1\000"
.LASF68:
	.ascii	"initSPI2_nRF24lO1_carrier\000"
.LASF51:
	.ascii	"I2SCFGR\000"
.LASF18:
	.ascii	"LCKR\000"
.LASF41:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

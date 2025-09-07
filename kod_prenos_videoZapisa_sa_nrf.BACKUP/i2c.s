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
	.file	"i2c.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "i2c/i2c.c"
	.align	1
	.p2align 2,,3
	.global	initI2C1
	.syntax unified
	.thumb
	.thumb_func
	.type	initI2C1, %function
initI2C1:
.LVL0:
.LFB110:
	.loc 1 11 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 14 5 view .LVU1
	.loc 1 14 8 is_stmt 0 view .LVU2
	ldr	r2, .L4
	.loc 1 16 10 view .LVU3
	ldr	r3, .L4+4
	.loc 1 14 8 view .LVU4
	ldr	r1, [r2, #48]
	.loc 1 14 18 view .LVU5
	orr	r1, r1, #2
	.loc 1 11 1 view .LVU6
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 14 18 view .LVU7
	str	r1, [r2, #48]
	.loc 1 16 5 is_stmt 1 view .LVU8
	.loc 1 16 10 is_stmt 0 view .LVU9
	ldr	r1, [r3]
	.loc 1 38 18 view .LVU10
	ldr	r4, .L4+8
	.loc 1 16 18 view .LVU11
	bic	r1, r1, #983040
	str	r1, [r3]
	.loc 1 17 5 is_stmt 1 view .LVU12
	.loc 1 17 10 is_stmt 0 view .LVU13
	ldr	r1, [r3]
	.loc 1 17 18 view .LVU14
	orr	r1, r1, #655360
	str	r1, [r3]
	.loc 1 27 5 is_stmt 1 view .LVU15
	.loc 1 27 10 is_stmt 0 view .LVU16
	ldr	r1, [r3, #4]
	.loc 1 27 19 view .LVU17
	orr	r1, r1, #768
	str	r1, [r3, #4]
	.loc 1 28 5 is_stmt 1 view .LVU18
	.loc 1 28 10 is_stmt 0 view .LVU19
	ldr	r1, [r3, #8]
	.loc 1 28 20 view .LVU20
	orr	r1, r1, #532480
	str	r1, [r3, #8]
	.loc 1 29 5 is_stmt 1 view .LVU21
	.loc 1 29 10 is_stmt 0 view .LVU22
	ldr	r1, [r3, #12]
	.loc 1 29 18 view .LVU23
	bic	r1, r1, #983040
	str	r1, [r3, #12]
	.loc 1 30 5 is_stmt 1 view .LVU24
	.loc 1 30 10 is_stmt 0 view .LVU25
	ldr	r1, [r3, #12]
	.loc 1 30 18 view .LVU26
	orr	r1, r1, #327680
	str	r1, [r3, #12]
	.loc 1 32 5 is_stmt 1 view .LVU27
	.loc 1 32 15 is_stmt 0 view .LVU28
	ldr	r1, [r3, #36]
	.loc 1 32 19 view .LVU29
	bic	r1, r1, #255
	str	r1, [r3, #36]
	.loc 1 33 5 is_stmt 1 view .LVU30
	.loc 1 33 15 is_stmt 0 view .LVU31
	ldr	r1, [r3, #36]
	.loc 1 33 19 view .LVU32
	orr	r1, r1, #68
	str	r1, [r3, #36]
	.loc 1 38 5 is_stmt 1 view .LVU33
	.loc 1 38 18 is_stmt 0 view .LVU34
	strb	r0, [r4]
	.loc 1 39 5 is_stmt 1 view .LVU35
	.loc 1 39 8 is_stmt 0 view .LVU36
	ldr	r1, [r2, #64]
	.loc 1 40 9 view .LVU37
	sub	r3, r3, #110592
	.loc 1 39 18 view .LVU38
	orr	r1, r1, #2097152
	str	r1, [r2, #64]
	.loc 1 40 5 is_stmt 1 view .LVU39
	.loc 1 40 9 is_stmt 0 view .LVU40
	ldrh	r2, [r3]
	.loc 1 40 15 view .LVU41
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	.loc 1 41 5 is_stmt 1 view .LVU42
	.loc 1 41 9 is_stmt 0 view .LVU43
	ldrh	r2, [r3]
	.loc 1 41 15 view .LVU44
	ubfx	r2, r2, #0, #15
	strh	r2, [r3]	@ movhi
	.loc 1 43 5 is_stmt 1 view .LVU45
	.loc 1 43 9 is_stmt 0 view .LVU46
	ldrh	r2, [r3]
	.loc 1 43 15 view .LVU47
	bic	r2, r2, #1
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3]	@ movhi
	.loc 1 46 5 is_stmt 1 view .LVU48
	.loc 1 46 15 is_stmt 0 view .LVU49
	movs	r4, #42
	.loc 1 61 16 view .LVU50
	movw	r2, #16434
	.loc 1 49 15 view .LVU51
	movs	r0, #210
.LVL1:
	.loc 1 52 17 view .LVU52
	movs	r1, #43
	.loc 1 46 15 view .LVU53
	strh	r4, [r3, #4]	@ movhi
	.loc 1 49 5 is_stmt 1 view .LVU54
	.loc 1 49 15 is_stmt 0 view .LVU55
	strh	r0, [r3, #28]	@ movhi
	.loc 1 52 5 is_stmt 1 view .LVU56
	.loc 1 52 17 is_stmt 0 view .LVU57
	strh	r1, [r3, #32]	@ movhi
	.loc 1 61 5 is_stmt 1 view .LVU58
	.loc 1 61 16 is_stmt 0 view .LVU59
	strh	r2, [r3, #8]	@ movhi
	.loc 1 76 5 is_stmt 1 view .LVU60
	.loc 1 76 9 is_stmt 0 view .LVU61
	ldrh	r2, [r3]
	.loc 1 80 1 view .LVU62
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 76 9 view .LVU63
	uxth	r2, r2
	.loc 1 76 15 view .LVU64
	orr	r2, r2, #1024
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 80 1 view .LVU65
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073873920
	.word	.LANCHOR0
	.cfi_endproc
.LFE110:
	.size	initI2C1, .-initI2C1
	.align	1
	.p2align 2,,3
	.global	rxByteNackI2C
	.syntax unified
	.thumb
	.thumb_func
	.type	rxByteNackI2C, %function
rxByteNackI2C:
.LFB113:
	.loc 1 129 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 130 3 view .LVU67
	.loc 1 131 3 view .LVU68
	.loc 1 133 3 view .LVU69
	.loc 1 133 7 is_stmt 0 view .LVU70
	ldr	r2, .L9
	.loc 1 143 15 view .LVU71
	ldr	r0, .L9+4
	.loc 1 133 7 view .LVU72
	ldrh	r3, [r2]
	.loc 1 133 13 view .LVU73
	bic	r3, r3, #1024
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 135 3 is_stmt 1 view .LVU74
	.loc 1 135 14 is_stmt 0 view .LVU75
	ldrh	r3, [r2, #20]
.LVL2:
	.loc 1 136 3 is_stmt 1 view .LVU76
	.loc 1 136 14 is_stmt 0 view .LVU77
	ldrh	r3, [r2, #24]
	.loc 1 138 3 is_stmt 1 view .LVU78
	.loc 1 138 7 is_stmt 0 view .LVU79
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 138 13 view .LVU80
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.LVL3:
.L7:
	.loc 1 140 3 is_stmt 1 view .LVU81
	.loc 1 141 5 view .LVU82
	.loc 1 141 17 is_stmt 0 view .LVU83
	ldrh	r1, [r2, #24]
.LVL4:
	.loc 1 142 5 is_stmt 1 view .LVU84
	.loc 1 142 18 is_stmt 0 view .LVU85
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL5:
	.loc 1 143 5 is_stmt 1 view .LVU86
	.loc 1 142 10 is_stmt 0 view .LVU87
	orr	r3, r3, r1, lsl #16
.LVL6:
	.loc 1 143 8 view .LVU88
	bics	r3, r0, r3
	bne	.L7
	.loc 1 152 3 is_stmt 1 view .LVU89
	.loc 1 152 14 is_stmt 0 view .LVU90
	ldrh	r0, [r2, #16]
.LVL7:
	.loc 1 153 3 is_stmt 1 view .LVU91
	.loc 1 156 1 is_stmt 0 view .LVU92
	uxtb	r0, r0
	.loc 1 156 1 view .LVU93
	bx	lr
.L10:
	.align	2
.L9:
	.word	1073763328
	.word	196672
	.cfi_endproc
.LFE113:
	.size	rxByteNackI2C, .-rxByteNackI2C
	.align	1
	.p2align 2,,3
	.global	rxByteAckI2C
	.syntax unified
	.thumb
	.thumb_func
	.type	rxByteAckI2C, %function
rxByteAckI2C:
.LFB114:
	.loc 1 160 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 161 3 view .LVU95
	.loc 1 162 3 view .LVU96
	.loc 1 163 3 view .LVU97
	.loc 1 163 7 is_stmt 0 view .LVU98
	ldr	r2, .L14
	.loc 1 168 15 view .LVU99
	ldr	r0, .L14+4
	.loc 1 163 7 view .LVU100
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 163 13 view .LVU101
	orr	r3, r3, #1024
	strh	r3, [r2]	@ movhi
.L12:
	.loc 1 165 3 is_stmt 1 view .LVU102
	.loc 1 166 5 view .LVU103
	.loc 1 166 17 is_stmt 0 view .LVU104
	ldrh	r1, [r2, #24]
.LVL8:
	.loc 1 167 5 is_stmt 1 view .LVU105
	.loc 1 167 18 is_stmt 0 view .LVU106
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL9:
	.loc 1 168 5 is_stmt 1 view .LVU107
	.loc 1 167 10 is_stmt 0 view .LVU108
	orr	r3, r3, r1, lsl #16
.LVL10:
	.loc 1 168 8 view .LVU109
	bics	r3, r0, r3
	bne	.L12
	.loc 1 177 3 is_stmt 1 view .LVU110
	.loc 1 177 14 is_stmt 0 view .LVU111
	ldrh	r0, [r2, #16]
.LVL11:
	.loc 1 178 3 is_stmt 1 view .LVU112
	.loc 1 179 1 is_stmt 0 view .LVU113
	uxtb	r0, r0
	.loc 1 179 1 view .LVU114
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073763328
	.word	196672
	.cfi_endproc
.LFE114:
	.size	rxByteAckI2C, .-rxByteAckI2C
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I2C timeout!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	txByteI2C1
	.syntax unified
	.thumb
	.thumb_func
	.type	txByteI2C1, %function
txByteI2C1:
.LVL12:
.LFB115:
	.loc 1 185 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 185 1 is_stmt 0 view .LVU116
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 188 17 view .LVU117
	ldr	r2, .L26
	.loc 1 190 15 view .LVU118
	ldr	r4, .L26+4
.L17:
	.loc 1 186 3 is_stmt 1 view .LVU119
	.loc 1 187 3 view .LVU120
	.loc 1 188 5 view .LVU121
	.loc 1 188 17 is_stmt 0 view .LVU122
	ldrh	r1, [r2, #24]
.LVL13:
	.loc 1 189 5 is_stmt 1 view .LVU123
	.loc 1 189 18 is_stmt 0 view .LVU124
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL14:
	.loc 1 190 5 is_stmt 1 view .LVU125
	.loc 1 189 10 is_stmt 0 view .LVU126
	orr	r3, r3, r1, lsl #16
.LVL15:
	.loc 1 190 8 view .LVU127
	bics	r3, r4, r3
	bne	.L17
	.loc 1 201 3 is_stmt 1 view .LVU128
	.loc 1 209 11 is_stmt 0 view .LVU129
	ldr	r3, .L26+8
	.loc 1 210 16 view .LVU130
	ldr	r1, .L26
	.loc 1 201 12 view .LVU131
	strh	r0, [r2, #16]	@ movhi
	.loc 1 208 3 is_stmt 1 view .LVU132
	.loc 1 209 3 view .LVU133
.LVL16:
	.loc 1 210 3 view .LVU134
	.loc 1 210 9 is_stmt 0 view .LVU135
	b	.L19
.LVL17:
.L24:
	.loc 1 210 37 discriminator 1 view .LVU136
	subs	r3, r3, #1
.LVL18:
	.loc 1 210 37 discriminator 1 view .LVU137
	bcc	.L16
.LVL19:
.L19:
	.loc 1 210 37 is_stmt 1 discriminator 2 view .LVU138
	.loc 1 210 16 is_stmt 0 discriminator 2 view .LVU139
	ldrh	r2, [r1, #20]
	.loc 1 210 37 discriminator 2 view .LVU140
	lsls	r2, r2, #29
	bpl	.L24
	.loc 1 211 3 is_stmt 1 view .LVU141
	.loc 1 211 5 is_stmt 0 view .LVU142
	cbz	r3, .L25
.LVL20:
.L16:
	.loc 1 217 1 view .LVU143
	ldr	r4, [sp], #4
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL21:
.L25:
	.cfi_restore_state
.LBB4:
.LBI4:
	.loc 1 184 6 is_stmt 1 view .LVU144
.LBB5:
	.loc 1 212 5 view .LVU145
	ldr	r0, .L26+12
.LVL22:
	.loc 1 212 5 is_stmt 0 view .LVU146
.LBE5:
.LBE4:
	.loc 1 217 1 view .LVU147
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB7:
.LBB6:
	.loc 1 212 5 view .LVU148
	b	printUSART2
.LVL23:
.L27:
	.loc 1 212 5 view .LVU149
	.align	2
.L26:
	.word	1073763328
	.word	458880
	.word	100000
	.word	.LC0
.LBE6:
.LBE7:
	.cfi_endproc
.LFE115:
	.size	txByteI2C1, .-txByteI2C1
	.align	1
	.p2align 2,,3
	.global	stopI2C1
	.syntax unified
	.thumb
	.thumb_func
	.type	stopI2C1, %function
stopI2C1:
.LFB116:
	.loc 1 222 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 223 3 view .LVU151
	.loc 1 224 3 view .LVU152
	.loc 1 224 7 is_stmt 0 view .LVU153
	ldr	r2, .L31
	.loc 1 228 15 view .LVU154
	ldr	r0, .L31+4
	.loc 1 224 7 view .LVU155
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 224 13 view .LVU156
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L29:
	.loc 1 225 3 is_stmt 1 view .LVU157
	.loc 1 226 5 view .LVU158
	.loc 1 226 17 is_stmt 0 view .LVU159
	ldrh	r1, [r2, #24]
.LVL24:
	.loc 1 227 5 is_stmt 1 view .LVU160
	.loc 1 227 18 is_stmt 0 view .LVU161
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL25:
	.loc 1 228 5 is_stmt 1 view .LVU162
	.loc 1 227 10 is_stmt 0 view .LVU163
	orr	r3, r3, r1, lsl #16
.LVL26:
	.loc 1 228 8 view .LVU164
	bics	r3, r0, r3
	bne	.L29
	.loc 1 239 1 view .LVU165
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073763328
	.word	458884
	.cfi_endproc
.LFE116:
	.size	stopI2C1, .-stopI2C1
	.align	1
	.p2align 2,,3
	.global	startI2C1
	.syntax unified
	.thumb
	.thumb_func
	.type	startI2C1, %function
startI2C1:
.LVL27:
.LFB117:
	.loc 1 259 30 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 260 5 view .LVU167
	.loc 1 263 5 view .LVU168
	.loc 1 263 11 is_stmt 0 view .LVU169
	ldr	r3, .L54
	.loc 1 263 17 view .LVU170
	ldr	r1, .L54+4
	.loc 1 263 11 view .LVU171
	b	.L35
.LVL28:
.L52:
	.loc 1 263 39 discriminator 1 view .LVU172
	subs	r3, r3, #1
	beq	.L34
.L35:
	.loc 1 263 39 is_stmt 1 discriminator 2 view .LVU173
	.loc 1 263 17 is_stmt 0 discriminator 2 view .LVU174
	ldrh	r2, [r1, #24]
	.loc 1 263 39 discriminator 2 view .LVU175
	lsls	r2, r2, #30
	bmi	.L52
.L34:
	.loc 1 266 5 is_stmt 1 view .LVU176
	.loc 1 266 9 is_stmt 0 view .LVU177
	ldr	r2, .L54+4
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 266 15 view .LVU178
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	.loc 1 269 5 is_stmt 1 view .LVU179
.L36:
	.loc 1 269 12 discriminator 1 view .LVU180
	.loc 1 269 18 is_stmt 0 discriminator 1 view .LVU181
	ldrh	r3, [r2, #20]
	.loc 1 269 12 discriminator 1 view .LVU182
	lsls	r3, r3, #31
	bpl	.L36
	.loc 1 272 5 is_stmt 1 view .LVU183
	.loc 1 273 18 is_stmt 0 view .LVU184
	ldr	r3, .L54+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 272 8 view .LVU185
	cbnz	r0, .L37
	.loc 1 273 9 is_stmt 1 view .LVU186
	.loc 1 273 18 is_stmt 0 view .LVU187
	orr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
.L38:
	.loc 1 278 18 discriminator 1 view .LVU188
	ldr	r2, .L54+4
.L39:
	.loc 1 278 12 is_stmt 1 discriminator 1 view .LVU189
	.loc 1 278 18 is_stmt 0 discriminator 1 view .LVU190
	ldrh	r3, [r2, #20]
	.loc 1 278 12 discriminator 1 view .LVU191
	lsls	r1, r3, #30
	bpl	.L39
	.loc 1 281 5 is_stmt 1 view .LVU192
	.loc 1 285 8 is_stmt 0 view .LVU193
	cmp	r0, #1
	.loc 1 281 5 view .LVU194
	ldrh	r3, [r2, #20]
	.loc 1 282 5 is_stmt 1 view .LVU195
	ldrh	r3, [r2, #24]
	.loc 1 285 5 view .LVU196
	.loc 1 285 8 is_stmt 0 view .LVU197
	beq	.L53
	.loc 1 287 1 view .LVU198
	bx	lr
.L37:
	.loc 1 275 9 is_stmt 1 view .LVU199
	.loc 1 275 18 is_stmt 0 view .LVU200
	uxtb	r3, r3
	strh	r3, [r2, #16]	@ movhi
	b	.L38
.L53:
	.loc 1 286 22 view .LVU201
	ldr	r2, .L54+4
.L41:
	.loc 1 286 16 is_stmt 1 discriminator 1 view .LVU202
	.loc 1 286 22 is_stmt 0 discriminator 1 view .LVU203
	ldrh	r3, [r2, #20]
	.loc 1 286 16 discriminator 1 view .LVU204
	lsls	r3, r3, #24
	bpl	.L41
	.loc 1 287 1 view .LVU205
	bx	lr
.L55:
	.align	2
.L54:
	.word	100000
	.word	1073763328
	.word	.LANCHOR0
	.cfi_endproc
.LFE117:
	.size	startI2C1, .-startI2C1
	.align	1
	.p2align 2,,3
	.global	writeI2C
	.syntax unified
	.thumb
	.thumb_func
	.type	writeI2C, %function
writeI2C:
.LVL29:
.LFB111:
	.loc 1 84 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 84 1 is_stmt 0 view .LVU207
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 84 1 view .LVU208
	mov	r6, r0
	.loc 1 85 3 is_stmt 1 view .LVU209
	movs	r0, #1
.LVL30:
	.loc 1 84 1 is_stmt 0 view .LVU210
	mov	r5, r2
	mov	r4, r1
	.loc 1 85 3 view .LVU211
	bl	startI2C1
.LVL31:
	.loc 1 87 3 is_stmt 1 view .LVU212
	mov	r0, r6
	bl	txByteI2C1
.LVL32:
	.loc 1 89 3 view .LVU213
.LBB11:
	.loc 1 89 8 view .LVU214
	.loc 1 89 26 view .LVU215
	cbz	r5, .L57
	add	r5, r5, r4
.LVL33:
.L58:
	.loc 1 91 5 discriminator 3 view .LVU216
	ldrb	r0, [r4], #1	@ zero_extendqisi2
.LVL34:
	.loc 1 91 5 is_stmt 0 discriminator 3 view .LVU217
	bl	txByteI2C1
.LVL35:
	.loc 1 89 36 is_stmt 1 discriminator 3 view .LVU218
	.loc 1 89 26 discriminator 3 view .LVU219
	cmp	r4, r5
	bne	.L58
.LVL36:
.L57:
	.loc 1 89 26 is_stmt 0 discriminator 3 view .LVU220
.LBE11:
	.loc 1 94 3 is_stmt 1 view .LVU221
.LBB12:
.LBI12:
	.loc 1 221 6 view .LVU222
.LBB13:
	.loc 1 223 3 view .LVU223
	.loc 1 224 3 view .LVU224
	.loc 1 224 7 is_stmt 0 view .LVU225
	ldr	r2, .L66
	.loc 1 228 15 view .LVU226
	ldr	r0, .L66+4
	.loc 1 224 7 view .LVU227
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 224 13 view .LVU228
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L59:
	.loc 1 225 3 is_stmt 1 view .LVU229
	.loc 1 226 5 view .LVU230
	.loc 1 226 17 is_stmt 0 view .LVU231
	ldrh	r1, [r2, #24]
.LVL37:
	.loc 1 227 5 is_stmt 1 view .LVU232
	.loc 1 227 18 is_stmt 0 view .LVU233
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL38:
	.loc 1 228 5 is_stmt 1 view .LVU234
	.loc 1 227 10 is_stmt 0 view .LVU235
	orr	r3, r3, r1, lsl #16
.LVL39:
	.loc 1 228 8 view .LVU236
	bics	r3, r0, r3
	bne	.L59
.LBE13:
.LBE12:
	.loc 1 95 1 view .LVU237
	pop	{r4, r5, r6, pc}
.L67:
	.align	2
.L66:
	.word	1073763328
	.word	458884
	.cfi_endproc
.LFE111:
	.size	writeI2C, .-writeI2C
	.align	1
	.p2align 2,,3
	.global	readI2C
	.syntax unified
	.thumb
	.thumb_func
	.type	readI2C, %function
readI2C:
.LVL40:
.LFB112:
	.loc 1 100 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 101 3 view .LVU239
	.loc 1 103 3 view .LVU240
	.loc 1 100 1 is_stmt 0 view .LVU241
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 100 1 view .LVU242
	mov	r6, r0
	.loc 1 103 3 view .LVU243
	movs	r0, #1
.LVL41:
	.loc 1 100 1 view .LVU244
	mov	r4, r2
	mov	r5, r1
	.loc 1 103 3 view .LVU245
	bl	startI2C1
.LVL42:
	.loc 1 105 3 is_stmt 1 view .LVU246
	mov	r0, r6
	bl	txByteI2C1
.LVL43:
	.loc 1 107 3 view .LVU247
.LBB20:
.LBI20:
	.loc 1 221 6 view .LVU248
.LBB21:
	.loc 1 223 3 view .LVU249
	.loc 1 224 3 view .LVU250
	.loc 1 224 7 is_stmt 0 view .LVU251
	ldr	r2, .L86
	.loc 1 228 15 view .LVU252
	ldr	r0, .L86+4
	.loc 1 224 7 view .LVU253
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 224 13 view .LVU254
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L69:
	.loc 1 225 3 is_stmt 1 view .LVU255
	.loc 1 226 5 view .LVU256
	.loc 1 226 17 is_stmt 0 view .LVU257
	ldrh	r1, [r2, #24]
.LVL44:
	.loc 1 227 5 is_stmt 1 view .LVU258
	.loc 1 227 18 is_stmt 0 view .LVU259
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL45:
	.loc 1 228 5 is_stmt 1 view .LVU260
	.loc 1 227 10 is_stmt 0 view .LVU261
	orr	r3, r3, r1, lsl #16
.LVL46:
	.loc 1 228 8 view .LVU262
	bics	r3, r0, r3
	bne	.L69
.LBE21:
.LBE20:
	.loc 1 110 16 view .LVU263
	ldr	r3, .L86
.LVL47:
.L70:
	.loc 1 110 12 is_stmt 1 discriminator 1 view .LVU264
	.loc 1 110 16 is_stmt 0 discriminator 1 view .LVU265
	ldrh	r0, [r3]
	.loc 1 110 12 discriminator 1 view .LVU266
	ands	r0, r0, #512
	bne	.L70
	.loc 1 113 3 is_stmt 1 view .LVU267
	bl	startI2C1
.LVL48:
	.loc 1 116 3 view .LVU268
	.loc 1 116 16 view .LVU269
	cbz	r4, .L68
.LBB22:
.LBB23:
	.loc 1 163 7 is_stmt 0 view .LVU270
	ldr	r2, .L86
	.loc 1 168 15 view .LVU271
	ldr	r1, .L86+8
.LBE23:
.LBE22:
	.loc 1 117 21 view .LVU272
	add	lr, r4, #-1
	mov	ip, r5
.LVL49:
.L76:
	.loc 1 117 5 is_stmt 1 view .LVU273
	.loc 1 117 8 is_stmt 0 view .LVU274
	cmp	r0, lr
.LBB26:
.LBB27:
	.loc 1 133 7 view .LVU275
	ldrh	r3, [r2]
.LBE27:
.LBE26:
	.loc 1 117 8 view .LVU276
	beq	.L85
	.loc 1 120 7 is_stmt 1 view .LVU277
.LBB29:
.LBI22:
	.loc 1 159 9 view .LVU278
.LBB24:
	.loc 1 161 3 view .LVU279
	.loc 1 162 3 view .LVU280
	.loc 1 163 3 view .LVU281
	.loc 1 163 7 is_stmt 0 view .LVU282
	uxth	r3, r3
	.loc 1 163 13 view .LVU283
	orr	r3, r3, #1024
	strh	r3, [r2]	@ movhi
.L75:
	.loc 1 165 3 is_stmt 1 view .LVU284
	.loc 1 166 5 view .LVU285
	.loc 1 166 17 is_stmt 0 view .LVU286
	ldrh	r5, [r2, #24]
.LVL50:
	.loc 1 167 5 is_stmt 1 view .LVU287
	.loc 1 167 18 is_stmt 0 view .LVU288
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL51:
	.loc 1 168 5 is_stmt 1 view .LVU289
	.loc 1 167 10 is_stmt 0 view .LVU290
	orr	r3, r3, r5, lsl #16
.LVL52:
	.loc 1 168 8 view .LVU291
	bics	r3, r1, r3
	bne	.L75
.LVL53:
.L84:
	.loc 1 177 3 is_stmt 1 view .LVU292
.LBE24:
.LBE29:
	.loc 1 116 16 is_stmt 0 view .LVU293
	adds	r0, r0, #1
.LVL54:
.LBB30:
.LBB25:
	.loc 1 177 14 view .LVU294
	ldrh	r3, [r2, #16]
.LVL55:
	.loc 1 178 3 is_stmt 1 view .LVU295
	.loc 1 177 8 is_stmt 0 view .LVU296
	strb	r3, [ip]
.LBE25:
.LBE30:
	.loc 1 116 24 is_stmt 1 view .LVU297
.LVL56:
	.loc 1 116 16 view .LVU298
	cmp	r0, r4
	add	ip, ip, #1
	bne	.L76
.L68:
	.loc 1 123 1 is_stmt 0 view .LVU299
	pop	{r4, r5, r6, pc}
.LVL57:
.L85:
	.loc 1 118 7 is_stmt 1 view .LVU300
.LBB31:
.LBI26:
	.loc 1 128 9 view .LVU301
.LBB28:
	.loc 1 130 3 view .LVU302
	.loc 1 131 3 view .LVU303
	.loc 1 133 3 view .LVU304
	.loc 1 133 13 is_stmt 0 view .LVU305
	bic	r3, r3, #1024
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 135 3 is_stmt 1 view .LVU306
	.loc 1 135 14 is_stmt 0 view .LVU307
	ldrh	r3, [r2, #20]
.LVL58:
	.loc 1 136 3 is_stmt 1 view .LVU308
	.loc 1 136 14 is_stmt 0 view .LVU309
	ldrh	r3, [r2, #24]
	.loc 1 138 3 is_stmt 1 view .LVU310
	.loc 1 138 7 is_stmt 0 view .LVU311
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 138 13 view .LVU312
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.LVL59:
.L73:
	.loc 1 140 3 is_stmt 1 view .LVU313
	.loc 1 141 5 view .LVU314
	.loc 1 141 17 is_stmt 0 view .LVU315
	ldrh	r5, [r2, #24]
.LVL60:
	.loc 1 142 5 is_stmt 1 view .LVU316
	.loc 1 142 18 is_stmt 0 view .LVU317
	ldrh	r3, [r2, #20]
	uxth	r3, r3
.LVL61:
	.loc 1 143 5 is_stmt 1 view .LVU318
	.loc 1 142 10 is_stmt 0 view .LVU319
	orr	r3, r3, r5, lsl #16
.LVL62:
	.loc 1 143 8 view .LVU320
	bics	r3, r1, r3
	bne	.L73
	b	.L84
.L87:
	.align	2
.L86:
	.word	1073763328
	.word	458884
	.word	196672
.LBE28:
.LBE31:
	.cfi_endproc
.LFE112:
	.size	readI2C, .-readI2C
	.global	i2c1_addresa
	.bss
	.set	.LANCHOR0,. + 0
	.type	i2c1_addresa, %object
	.size	i2c1_addresa, 1
i2c1_addresa:
	.space	1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "i2c/../usart/usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7ac
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1d
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x9
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x52
	.uleb128 0x8
	.4byte	0x42
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x9
	.4byte	.LASF6
	.byte	0x31
	.byte	0x19
	.4byte	0x69
	.uleb128 0x8
	.4byte	0x59
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x34
	.byte	0x19
	.4byte	0x80
	.uleb128 0x8
	.4byte	0x70
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x11
	.4byte	0x70
	.4byte	0xab
	.uleb128 0x12
	.4byte	0x95
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.2byte	0x28e
	.4byte	0x12c
	.uleb128 0x1
	.4byte	.LASF12
	.2byte	0x290
	.4byte	0x7b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF13
	.2byte	0x291
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.2byte	0x292
	.4byte	0x7b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF15
	.2byte	0x293
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x2
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x7b
	.byte	0x10
	.uleb128 0x2
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0x7b
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x296
	.4byte	0x64
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x297
	.4byte	0x64
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x298
	.4byte	0x7b
	.byte	0x1c
	.uleb128 0x2
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x13b
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	0x7b
	.4byte	0x13b
	.uleb128 0x12
	.4byte	0x95
	.byte	0
	.uleb128 0x8
	.4byte	0x12c
	.uleb128 0xb
	.4byte	.LASF19
	.2byte	0x29a
	.4byte	0xab
	.uleb128 0xa
	.byte	0x24
	.2byte	0x2ad
	.4byte	0x22b
	.uleb128 0x2
	.ascii	"CR1\000"
	.2byte	0x2af
	.4byte	0x64
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x2b0
	.4byte	0x59
	.byte	0x2
	.uleb128 0x2
	.ascii	"CR2\000"
	.2byte	0x2b1
	.4byte	0x64
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x2b2
	.4byte	0x59
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x2b3
	.4byte	0x64
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x2b4
	.4byte	0x59
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x2b5
	.4byte	0x64
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x2b6
	.4byte	0x59
	.byte	0xe
	.uleb128 0x2
	.ascii	"DR\000"
	.2byte	0x2b7
	.4byte	0x64
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x2b8
	.4byte	0x59
	.byte	0x12
	.uleb128 0x2
	.ascii	"SR1\000"
	.2byte	0x2b9
	.4byte	0x64
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x2ba
	.4byte	0x59
	.byte	0x16
	.uleb128 0x2
	.ascii	"SR2\000"
	.2byte	0x2bb
	.4byte	0x64
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x2bc
	.4byte	0x59
	.byte	0x1a
	.uleb128 0x2
	.ascii	"CCR\000"
	.2byte	0x2bd
	.4byte	0x64
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x2be
	.4byte	0x59
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x2bf
	.4byte	0x64
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x2c0
	.4byte	0x59
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.2byte	0x2c1
	.4byte	0x14b
	.uleb128 0xa
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x3a6
	.uleb128 0x2
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x7b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x2e0
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x2e1
	.4byte	0x7b
	.byte	0x8
	.uleb128 0x2
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x2e3
	.4byte	0x7b
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x2e4
	.4byte	0x7b
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x2e5
	.4byte	0x7b
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x2e6
	.4byte	0x70
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x2e7
	.4byte	0x7b
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x2e8
	.4byte	0x7b
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x2e9
	.4byte	0x9c
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x2ea
	.4byte	0x7b
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x2eb
	.4byte	0x7b
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x2ec
	.4byte	0x7b
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x2ed
	.4byte	0x70
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x2ee
	.4byte	0x7b
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x2ef
	.4byte	0x7b
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x2f0
	.4byte	0x9c
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x2f1
	.4byte	0x7b
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2f2
	.4byte	0x7b
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x2f3
	.4byte	0x7b
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x2f4
	.4byte	0x70
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x2f5
	.4byte	0x7b
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x2f6
	.4byte	0x7b
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x2f7
	.4byte	0x9c
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x2f8
	.4byte	0x7b
	.byte	0x70
	.uleb128 0x2
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x7b
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x2fa
	.4byte	0x9c
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x2fb
	.4byte	0x7b
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x2fc
	.4byte	0x7b
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.2byte	0x2fd
	.4byte	0x236
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x8
	.byte	0x12
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c1_addresa
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.4byte	0x3d6
	.uleb128 0x1f
	.4byte	0x3d6
	.uleb128 0x20
	.byte	0
	.uleb128 0x13
	.4byte	0x3db
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x103
	.byte	0x6
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41e
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x103
	.byte	0x18
	.4byte	0x42
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x23
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x104
	.byte	0xe
	.4byte	0x70
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.byte	0x1
	.4byte	0x437
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xdf
	.byte	0xc
	.4byte	0x70
	.byte	0
	.uleb128 0x25
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.byte	0x1
	.4byte	0x467
	.uleb128 0x26
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb8
	.byte	0x19
	.4byte	0x42
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xba
	.byte	0xc
	.4byte	0x70
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0xd0
	.byte	0xc
	.4byte	0x70
	.byte	0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x9f
	.4byte	0x42
	.4byte	0x48c
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xa1
	.byte	0xc
	.4byte	0x70
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0xa2
	.byte	0xb
	.4byte	0x42
	.byte	0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x80
	.4byte	0x42
	.4byte	0x4b1
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x82
	.byte	0xc
	.4byte	0x70
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0x83
	.byte	0xb
	.4byte	0x42
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x63
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cd
	.uleb128 0x15
	.ascii	"reg\000"
	.byte	0x63
	.byte	0x16
	.4byte	0x42
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x63
	.byte	0x24
	.4byte	0x5cd
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x63
	.byte	0x33
	.4byte	0x59
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x65
	.byte	0xc
	.4byte	0x59
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x17
	.4byte	0x41e
	.4byte	.LBI20
	.byte	.LVU248
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x6b
	.4byte	0x534
	.uleb128 0x3
	.4byte	0x42b
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0x18
	.4byte	0x467
	.4byte	.LBI22
	.byte	.LVU278
	.4byte	.LLRL22
	.byte	0x78
	.4byte	0x568
	.uleb128 0xd
	.4byte	.LLRL22
	.uleb128 0x3
	.4byte	0x475
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x3
	.4byte	0x480
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x48c
	.4byte	.LBI26
	.byte	.LVU301
	.4byte	.LLRL25
	.byte	0x76
	.4byte	0x594
	.uleb128 0xd
	.4byte	.LLRL25
	.uleb128 0x3
	.4byte	0x49a
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0xe
	.4byte	0x4a5
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL42
	.4byte	0x3e2
	.4byte	0x5a8
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL43
	.4byte	0x437
	.4byte	0x5bc
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0x3e2
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x42
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x53
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x691
	.uleb128 0x15
	.ascii	"reg\000"
	.byte	0x53
	.byte	0x17
	.4byte	0x42
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x53
	.byte	0x25
	.4byte	0x5cd
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x53
	.byte	0x34
	.4byte	0x59
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x27
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x647
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x59
	.byte	0x11
	.4byte	0x59
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0x437
	.byte	0
	.uleb128 0x17
	.4byte	0x41e
	.4byte	.LBI12
	.byte	.LVU222
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x5e
	.4byte	0x66c
	.uleb128 0x3
	.4byte	0x42b
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0xf
	.4byte	.LVL31
	.4byte	0x3e2
	.4byte	0x680
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x437
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0xa
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b9
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0xa
	.byte	0x17
	.4byte	0x42
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x10
	.4byte	0x48c
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e7
	.uleb128 0x3
	.4byte	0x49a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	0x4a5
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x10
	.4byte	0x467
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x715
	.uleb128 0x3
	.4byte	0x475
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x3
	.4byte	0x480
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x10
	.4byte	0x437
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x792
	.uleb128 0x1a
	.4byte	0x444
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3
	.4byte	0x450
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3
	.4byte	0x45b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x29
	.4byte	0x437
	.4byte	.LBI4
	.byte	.LVU144
	.4byte	.LLRL8
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.uleb128 0x1a
	.4byte	0x444
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xd
	.4byte	.LLRL8
	.uleb128 0xe
	.4byte	0x450
	.uleb128 0xe
	.4byte	0x45b
	.uleb128 0x2a
	.4byte	.LVL23
	.4byte	0x3c3
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x41e
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	0x42b
	.4byte	.LLST10
	.4byte	.LVUS10
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
.LVUS11:
	.uleb128 .LVU168
	.uleb128 .LVU172
.LLST11:
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x186a0
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 0
.LLST18:
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL42-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL42-1-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL42-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL42-1-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU269
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU294
	.uleb128 .LVU300
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS21:
	.uleb128 .LVU258
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU262
.LLST21:
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0xc
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU287
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU291
.LLST23:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0xc
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU295
	.uleb128 .LVU296
.LLST24:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS26:
	.uleb128 .LVU316
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU320
.LLST26:
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0xc
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL31-1-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL31-1-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU215
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU217
	.uleb128 .LVU219
	.uleb128 .LVU220
.LLST15:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU232
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU236
.LLST16:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0xc
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU88
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xc
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU91
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE113-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS3:
	.uleb128 .LVU105
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU109
.LLST3:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0xc
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU112
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE114-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LFE115-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU123
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU127
.LLST6:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0xc
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU143
	.uleb128 .LVU144
	.uleb128 .LVU149
.LLST7:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x186a0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL23-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 .LVU145
	.uleb128 .LVU146
.LLST9:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS10:
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU164
.LLST10:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0xc
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
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
.LLRL8:
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB7-.Ltext0
	.uleb128 .LBE7-.Ltext0
	.byte	0
.LLRL22:
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB29-.Ltext0
	.uleb128 .LBE29-.Ltext0
	.byte	0x4
	.uleb128 .LBB30-.Ltext0
	.uleb128 .LBE30-.Ltext0
	.byte	0
.LLRL25:
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0x4
	.uleb128 .LBB31-.Ltext0
	.uleb128 .LBE31-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF45:
	.ascii	"AHB1LPENR\000"
.LASF38:
	.ascii	"APB1RSTR\000"
.LASF41:
	.ascii	"AHB2ENR\000"
.LASF71:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrfV1.7\000"
.LASF1:
	.ascii	"short int\000"
.LASF67:
	.ascii	"initI2C1\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF52:
	.ascii	"PLLI2SCFGR\000"
.LASF59:
	.ascii	"sreg\000"
.LASF65:
	.ascii	"nbyte\000"
.LASF55:
	.ascii	"i2c1_addresa\000"
.LASF51:
	.ascii	"SSCGR\000"
.LASF47:
	.ascii	"AHB3LPENR\000"
.LASF34:
	.ascii	"CFGR\000"
.LASF21:
	.ascii	"RESERVED1\000"
.LASF66:
	.ascii	"writeI2C\000"
.LASF25:
	.ascii	"RESERVED3\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF43:
	.ascii	"APB1ENR\000"
.LASF64:
	.ascii	"readI2C\000"
.LASF13:
	.ascii	"OTYPER\000"
.LASF42:
	.ascii	"AHB3ENR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"PUPDR\000"
.LASF2:
	.ascii	"long int\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF17:
	.ascii	"BSRRH\000"
.LASF12:
	.ascii	"MODER\000"
.LASF39:
	.ascii	"APB2RSTR\000"
.LASF32:
	.ascii	"I2C_TypeDef\000"
.LASF16:
	.ascii	"BSRRL\000"
.LASF70:
	.ascii	"i2c/i2c.c\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF44:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF36:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF33:
	.ascii	"PLLCFGR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF48:
	.ascii	"APB1LPENR\000"
.LASF57:
	.ascii	"printUSART2\000"
.LASF54:
	.ascii	"char\000"
.LASF72:
	.ascii	"type\000"
.LASF68:
	.ascii	"adresa\000"
.LASF62:
	.ascii	"rxByteNackI2C\000"
.LASF22:
	.ascii	"OAR1\000"
.LASF24:
	.ascii	"OAR2\000"
.LASF60:
	.ascii	"data\000"
.LASF46:
	.ascii	"AHB2LPENR\000"
.LASF56:
	.ascii	"timeout\000"
.LASF20:
	.ascii	"RESERVED0\000"
.LASF30:
	.ascii	"TRISE\000"
.LASF23:
	.ascii	"RESERVED2\000"
.LASF14:
	.ascii	"OSPEEDR\000"
.LASF26:
	.ascii	"RESERVED4\000"
.LASF27:
	.ascii	"RESERVED5\000"
.LASF28:
	.ascii	"RESERVED6\000"
.LASF29:
	.ascii	"RESERVED7\000"
.LASF31:
	.ascii	"RESERVED8\000"
.LASF69:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF61:
	.ascii	"rxByteAckI2C\000"
.LASF58:
	.ascii	"txByteI2C1\000"
.LASF40:
	.ascii	"AHB1ENR\000"
.LASF63:
	.ascii	"startI2C1\000"
.LASF73:
	.ascii	"stopI2C1\000"
.LASF35:
	.ascii	"AHB1RSTR\000"
.LASF37:
	.ascii	"AHB3RSTR\000"
.LASF19:
	.ascii	"GPIO_TypeDef\000"
.LASF18:
	.ascii	"LCKR\000"
.LASF49:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

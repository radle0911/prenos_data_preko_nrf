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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "main.c"
	.align	1
	.p2align 2,,3
	.global	autic_double_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	autic_double_buffer, %function
autic_double_buffer:
.LFB111:
	.loc 1 180 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r6, .L26
	ldr	r5, .L26+4
	ldr	r9, .L26+12
	.loc 1 182 22 is_stmt 0 view .LVU1
	ldr	r8, .L26+16
.LBB6:
.LBB7:
	.loc 1 217 3 view .LVU2
	ldr	r7, .L26+8
.LBE7:
.LBE6:
	.loc 1 180 1 view .LVU3
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
.LBB11:
.LBB8:
	.loc 1 215 13 view .LVU4
	movw	r10, #21930
.L2:
.LBE8:
.LBE11:
	.loc 1 181 3 is_stmt 1 view .LVU5
	.loc 1 182 5 view .LVU6
	.loc 1 182 22 is_stmt 0 view .LVU7
	ldr	r4, [r8, #40]
	.loc 1 184 25 view .LVU8
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 182 8 view .LVU9
	ands	r4, r4, #524288
	beq	.L3
.L23:
	.loc 1 184 7 is_stmt 1 view .LVU10
	.loc 1 184 10 is_stmt 0 view .LVU11
	and	r4, r3, #255
	cmp	r3, #0
	bne	.L2
	.loc 1 188 9 is_stmt 1 view .LVU12
.LVL0:
.LBB12:
.LBI12:
	.loc 1 210 6 view .LVU13
.LBB13:
	.loc 1 211 3 view .LVU14
	.loc 1 212 3 view .LVU15
	.loc 1 215 3 view .LVU16
	.loc 1 216 3 view .LVU17
	.loc 1 217 3 is_stmt 0 view .LVU18
	mov	r1, sp
	mov	r0, r7
	.loc 1 215 13 view .LVU19
	strh	r10, [sp]	@ movhi
	.loc 1 217 3 is_stmt 1 view .LVU20
	ldr	fp, .L26+20
	bl	txDataNRF24L01
.LVL1:
	.loc 1 219 3 view .LVU21
	.loc 1 219 17 view .LVU22
	.loc 1 212 15 is_stmt 0 view .LVU23
	mov	r3, r4
	b	.L6
.LVL2:
.L5:
	.loc 1 219 28 is_stmt 1 view .LVU24
	.loc 1 219 17 view .LVU25
	cmp	r5, fp
	beq	.L21
.LVL3:
.L6:
	.loc 1 221 5 view .LVU26
	.loc 1 221 41 is_stmt 0 view .LVU27
	ldrh	r4, [fp]
.LVL4:
	.loc 1 222 42 view .LVU28
	ldrh	r1, [fp]
	.loc 1 221 17 view .LVU29
	add	r0, r3, #32
	.loc 1 222 17 view .LVU30
	add	r2, r3, #33
	.loc 1 221 17 view .LVU31
	add	r0, sp, r0
	.loc 1 222 17 view .LVU32
	add	r2, sp, r2
	.loc 1 222 13 view .LVU33
	adds	r3, r3, #2
.LVL5:
	.loc 1 222 19 view .LVU34
	ubfx	r1, r1, #8, #8
	.loc 1 225 8 view .LVU35
	cmp	r3, #32
	.loc 1 221 19 view .LVU36
	strb	r4, [r0, #-32]
	.loc 1 222 5 is_stmt 1 view .LVU37
.LVL6:
	.loc 1 219 17 is_stmt 0 view .LVU38
	add	fp, fp, #2
	.loc 1 222 19 view .LVU39
	strb	r1, [r2, #-32]
	.loc 1 225 5 is_stmt 1 view .LVU40
	.loc 1 225 8 is_stmt 0 view .LVU41
	bne	.L5
	.loc 1 226 7 is_stmt 1 view .LVU42
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL7:
	.loc 1 227 7 view .LVU43
	.loc 1 219 17 is_stmt 0 view .LVU44
	cmp	r5, fp
	.loc 1 227 9 view .LVU45
	mov	r3, #0
.LVL8:
	.loc 1 219 28 is_stmt 1 view .LVU46
	.loc 1 219 17 view .LVU47
	bne	.L6
.L21:
	.loc 1 232 3 view .LVU48
	.loc 1 232 6 is_stmt 0 view .LVU49
	cbnz	r3, .L22
.LVL9:
.L7:
	.loc 1 232 6 view .LVU50
.LBE13:
.LBE12:
	.loc 1 190 9 is_stmt 1 view .LVU51
	.loc 1 190 23 is_stmt 0 view .LVU52
	movs	r3, #1
	strb	r3, [r6]
	.loc 1 181 3 is_stmt 1 view .LVU53
	.loc 1 182 5 view .LVU54
	.loc 1 182 22 is_stmt 0 view .LVU55
	ldr	r4, [r8, #40]
	.loc 1 184 25 view .LVU56
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 182 8 view .LVU57
	ands	r4, r4, #524288
	bne	.L23
.L3:
	.loc 1 194 7 is_stmt 1 view .LVU58
	.loc 1 194 10 is_stmt 0 view .LVU59
	cmp	r3, #1
	bne	.L2
	.loc 1 198 9 is_stmt 1 view .LVU60
.LVL10:
.LBB15:
.LBI6:
	.loc 1 210 6 view .LVU61
.LBB9:
	.loc 1 211 3 view .LVU62
	.loc 1 212 3 view .LVU63
	.loc 1 215 3 view .LVU64
	.loc 1 216 3 view .LVU65
	.loc 1 217 3 is_stmt 0 view .LVU66
	mov	r1, sp
	mov	r0, r7
	.loc 1 215 13 view .LVU67
	strh	r10, [sp]	@ movhi
	.loc 1 217 3 is_stmt 1 view .LVU68
	ldr	fp, .L26+24
	bl	txDataNRF24L01
.LVL11:
	.loc 1 219 3 view .LVU69
	.loc 1 219 17 view .LVU70
	.loc 1 212 15 is_stmt 0 view .LVU71
	mov	r3, r4
	b	.L9
.LVL12:
.L8:
	.loc 1 219 28 is_stmt 1 view .LVU72
	.loc 1 219 17 view .LVU73
	cmp	fp, r9
	beq	.L24
.LVL13:
.L9:
	.loc 1 221 5 view .LVU74
	.loc 1 221 41 is_stmt 0 view .LVU75
	ldrh	r4, [fp]
.LVL14:
	.loc 1 222 42 view .LVU76
	ldrh	r1, [fp]
	.loc 1 221 17 view .LVU77
	add	r0, r3, #32
	.loc 1 222 17 view .LVU78
	add	r2, r3, #33
	.loc 1 221 17 view .LVU79
	add	r0, sp, r0
	.loc 1 222 17 view .LVU80
	add	r2, sp, r2
	.loc 1 222 13 view .LVU81
	adds	r3, r3, #2
.LVL15:
	.loc 1 222 19 view .LVU82
	ubfx	r1, r1, #8, #8
	.loc 1 225 8 view .LVU83
	cmp	r3, #32
	.loc 1 221 19 view .LVU84
	strb	r4, [r0, #-32]
	.loc 1 222 5 is_stmt 1 view .LVU85
.LVL16:
	.loc 1 219 17 is_stmt 0 view .LVU86
	add	fp, fp, #2
	.loc 1 222 19 view .LVU87
	strb	r1, [r2, #-32]
	.loc 1 225 5 is_stmt 1 view .LVU88
	.loc 1 225 8 is_stmt 0 view .LVU89
	bne	.L8
	.loc 1 226 7 is_stmt 1 view .LVU90
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL17:
	.loc 1 227 7 view .LVU91
	.loc 1 219 17 is_stmt 0 view .LVU92
	cmp	fp, r9
	.loc 1 227 9 view .LVU93
	mov	r3, #0
.LVL18:
	.loc 1 219 28 is_stmt 1 view .LVU94
	.loc 1 219 17 view .LVU95
	bne	.L9
.L24:
	.loc 1 232 3 view .LVU96
	.loc 1 232 6 is_stmt 0 view .LVU97
	cbnz	r3, .L25
.LVL19:
.L10:
	.loc 1 232 6 view .LVU98
.LBE9:
.LBE15:
	.loc 1 201 9 is_stmt 1 view .LVU99
	.loc 1 201 23 is_stmt 0 view .LVU100
	movs	r3, #0
	strb	r3, [r6]
	b	.L2
.LVL20:
.L22:
.LBB16:
.LBB14:
	.loc 1 233 5 is_stmt 1 view .LVU101
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL21:
	.loc 1 233 5 is_stmt 0 view .LVU102
	b	.L7
.LVL22:
.L25:
	.loc 1 233 5 view .LVU103
.LBE14:
.LBE16:
.LBB17:
.LBB10:
	.loc 1 233 5 is_stmt 1 view .LVU104
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL23:
	.loc 1 233 5 is_stmt 0 view .LVU105
	b	.L10
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	frame_buffer0+38400
	.word	c_nrf_slave_addr
	.word	frame_buffer1+38400
	.word	1073898496
	.word	frame_buffer0
	.word	frame_buffer1
.LBE10:
.LBE17:
	.cfi_endproc
.LFE111:
	.size	autic_double_buffer, .-autic_double_buffer
	.align	1
	.p2align 2,,3
	.global	sendFrameNRF
	.syntax unified
	.thumb
	.thumb_func
	.type	sendFrameNRF, %function
sendFrameNRF:
.LVL24:
.LFB112:
	.loc 1 210 69 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 211 3 view .LVU107
	.loc 1 212 3 view .LVU108
	.loc 1 215 3 view .LVU109
	.loc 1 216 3 view .LVU110
	.loc 1 210 69 is_stmt 0 view .LVU111
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 1 210 69 view .LVU112
	mov	r7, r1
	mov	r4, r0
	.loc 1 215 13 view .LVU113
	movw	r3, #21930
	.loc 1 217 3 view .LVU114
	ldr	r0, .L44
.LVL25:
	.loc 1 215 13 view .LVU115
	strh	r3, [sp]	@ movhi
	.loc 1 217 3 is_stmt 1 view .LVU116
	mov	r1, sp
.LVL26:
	.loc 1 217 3 is_stmt 0 view .LVU117
	bl	txDataNRF24L01
.LVL27:
	.loc 1 219 3 is_stmt 1 view .LVU118
	.loc 1 219 17 view .LVU119
	cbz	r7, .L28
	.loc 1 212 15 is_stmt 0 view .LVU120
	movs	r3, #0
	.loc 1 226 7 view .LVU121
	ldr	r6, .L44
	.loc 1 219 10 view .LVU122
	mov	r5, r3
	b	.L31
.LVL28:
.L30:
	.loc 1 219 28 is_stmt 1 discriminator 2 view .LVU123
	.loc 1 219 17 discriminator 2 view .LVU124
	cmp	r7, r5
	beq	.L42
.LVL29:
.L31:
	.loc 1 221 5 view .LVU125
	.loc 1 221 41 is_stmt 0 view .LVU126
	ldrh	r1, [r4]
.LVL30:
	.loc 1 222 42 view .LVU127
	ldrh	r0, [r4]
	.loc 1 221 17 view .LVU128
	add	ip, r3, #32
	.loc 1 222 17 view .LVU129
	add	r2, r3, #33
	.loc 1 221 17 view .LVU130
	add	ip, sp, ip
	.loc 1 222 17 view .LVU131
	add	r2, sp, r2
	.loc 1 222 13 view .LVU132
	adds	r3, r3, #2
	.loc 1 222 19 view .LVU133
	ubfx	r0, r0, #8, #8
	.loc 1 225 8 view .LVU134
	cmp	r3, #32
	.loc 1 221 19 view .LVU135
	strb	r1, [ip, #-32]
	.loc 1 222 5 is_stmt 1 view .LVU136
.LVL31:
	.loc 1 219 28 is_stmt 0 view .LVU137
	add	r5, r5, #1
.LVL32:
	.loc 1 222 19 view .LVU138
	strb	r0, [r2, #-32]
	.loc 1 225 5 is_stmt 1 view .LVU139
	.loc 1 219 17 is_stmt 0 view .LVU140
	add	r4, r4, #2
	.loc 1 225 8 view .LVU141
	bne	.L30
	.loc 1 226 7 is_stmt 1 view .LVU142
	mov	r1, sp
	mov	r0, r6
	bl	txDataNRF24L01
.LVL33:
	.loc 1 227 7 view .LVU143
	.loc 1 219 17 is_stmt 0 view .LVU144
	cmp	r7, r5
	.loc 1 227 9 view .LVU145
	mov	r3, #0
.LVL34:
	.loc 1 219 28 is_stmt 1 view .LVU146
	.loc 1 219 17 view .LVU147
	bne	.L31
.L42:
	.loc 1 232 3 view .LVU148
	.loc 1 232 6 is_stmt 0 view .LVU149
	cbnz	r3, .L43
.LVL35:
.L28:
	.loc 1 235 1 view .LVU150
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL36:
.L43:
	.cfi_restore_state
	.loc 1 233 5 is_stmt 1 view .LVU151
	mov	r1, sp
	ldr	r0, .L44
	bl	txDataNRF24L01
.LVL37:
	.loc 1 235 1 is_stmt 0 view .LVU152
	add	sp, sp, #36
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL38:
.L45:
	.loc 1 235 1 view .LVU153
	.align	2
.L44:
	.word	c_nrf_slave_addr
	.cfi_endproc
.LFE112:
	.size	sendFrameNRF, .-sendFrameNRF
	.align	1
	.p2align 2,,3
	.global	receiveFrameNRF
	.syntax unified
	.thumb
	.thumb_func
	.type	receiveFrameNRF, %function
receiveFrameNRF:
.LVL39:
.LFB114:
	.loc 1 249 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 250 5 view .LVU155
	.loc 1 251 5 view .LVU156
	.loc 1 252 5 view .LVU157
	.loc 1 249 1 is_stmt 0 view .LVU158
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 48
	.loc 1 252 14 view .LVU159
	lsls	r6, r1, #1
.LVL40:
	.loc 1 251 14 view .LVU160
	movs	r4, #0
.LVL41:
.L48:
	.loc 1 254 5 is_stmt 1 view .LVU161
	.loc 1 256 9 view .LVU162
	.loc 1 256 13 is_stmt 0 view .LVU163
	bl	dataReadyNRF24L01
.LVL42:
	.loc 1 256 12 view .LVU164
	cmp	r0, #1
	bne	.L48
	.loc 1 257 13 is_stmt 1 view .LVU165
	mov	r0, sp
	bl	rxDataNRF24L01
.LVL43:
	.loc 1 260 13 view .LVU166
	.loc 1 260 16 is_stmt 0 view .LVU167
	ldrb	r3, [sp]	@ zero_extendqisi2
	cmp	r3, #170
	beq	.L49
.L52:
.LVL44:
.LBB18:
	.loc 1 266 36 is_stmt 1 view .LVU168
	cmp	r6, r4
	bls	.L57
	mov	r3, sp
	add	r0, r4, #32
	b	.L56
.LVL45:
.L64:
.LBB19:
	.loc 1 275 31 is_stmt 0 view .LVU169
	adds	r4, r4, #1
.LVL46:
	.loc 1 270 49 view .LVU170
	ldrb	r2, [r3]	@ zero_extendqisi2
	strh	r2, [r5, r1]	@ movhi
	.loc 1 275 17 is_stmt 1 view .LVU171
.LVL47:
	.loc 1 275 17 is_stmt 0 view .LVU172
.LBE19:
	.loc 1 266 70 is_stmt 1 view .LVU173
	.loc 1 266 36 view .LVU174
	cmp	r4, r0
	add	r3, r3, #1
	beq	.L55
.LVL48:
.L65:
	.loc 1 266 36 is_stmt 0 discriminator 3 view .LVU175
	cmp	r6, r4
	beq	.L57
.LVL49:
.L56:
.LBB20:
	.loc 1 267 17 is_stmt 1 view .LVU176
	.loc 1 268 17 view .LVU177
	.loc 1 270 21 view .LVU178
	.loc 1 273 21 view .LVU179
	.loc 1 273 33 is_stmt 0 view .LVU180
	bic	r2, r4, #1
	.loc 1 268 20 view .LVU181
	tst	r4, #1
	.loc 1 270 33 view .LVU182
	mov	r1, r2
	.loc 1 268 20 view .LVU183
	beq	.L64
	.loc 1 273 45 view .LVU184
	ldrb	ip, [r3]	@ zero_extendqisi2
	.loc 1 273 41 view .LVU185
	ldrh	r1, [r5, r2]
	.loc 1 275 31 view .LVU186
	adds	r4, r4, #1
.LVL50:
	.loc 1 273 41 view .LVU187
	orr	r1, r1, ip, lsl #8
.LBE20:
	.loc 1 266 36 view .LVU188
	cmp	r4, r0
.LBB21:
	.loc 1 273 41 view .LVU189
	strh	r1, [r5, r2]	@ movhi
	.loc 1 275 17 is_stmt 1 view .LVU190
.LVL51:
	.loc 1 275 17 is_stmt 0 view .LVU191
.LBE21:
	.loc 1 266 70 is_stmt 1 view .LVU192
	.loc 1 266 36 view .LVU193
	add	r3, r3, #1
	bne	.L65
.LVL52:
.L55:
	.loc 1 266 36 is_stmt 0 view .LVU194
.LBE18:
	.loc 1 279 13 is_stmt 1 view .LVU195
	.loc 1 279 16 is_stmt 0 view .LVU196
	cmp	r6, r4
	bhi	.L48
.LVL53:
.L57:
	.loc 1 280 17 is_stmt 1 view .LVU197
	mov	r1, #19200
	mov	r0, r5
	bl	send_frame_buffer
.LVL54:
	.loc 1 281 17 view .LVU198
	.loc 1 285 1 is_stmt 0 view .LVU199
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL55:
.L49:
	.cfi_restore_state
	.loc 1 260 44 discriminator 1 view .LVU200
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #85
	bne	.L52
	.loc 1 261 32 view .LVU201
	movs	r4, #0
	b	.L48
	.cfi_endproc
.LFE114:
	.size	receiveFrameNRF, .-receiveFrameNRF
	.align	1
	.p2align 2,,3
	.global	kontroler_double_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	kontroler_double_buffer, %function
kontroler_double_buffer:
.LFB113:
	.loc 1 240 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 242 5 is_stmt 0 view .LVU203
	ldr	r4, .L69
.L67:
	.loc 1 241 3 is_stmt 1 discriminator 1 view .LVU204
	.loc 1 242 5 discriminator 1 view .LVU205
	mov	r1, #19200
	mov	r0, r4
	bl	receiveFrameNRF
.LVL56:
	.loc 1 241 9 discriminator 1 view .LVU206
	b	.L67
.L70:
	.align	2
.L69:
	.word	frame_buffer
	.cfi_endproc
.LFE113:
	.size	kontroler_double_buffer, .-kontroler_double_buffer
	.align	1
	.p2align 2,,3
	.global	DMA2_Stream1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream1_IRQHandler, %function
DMA2_Stream1_IRQHandler:
.LFB115:
	.loc 1 346 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 348 5 view .LVU208
	.loc 1 348 12 is_stmt 0 view .LVU209
	ldr	r3, .L82
	ldr	r2, [r3]
	.loc 1 348 7 view .LVU210
	lsls	r1, r2, #21
	.loc 1 349 9 is_stmt 1 view .LVU211
	.loc 1 354 5 view .LVU212
	.loc 1 349 21 is_stmt 0 view .LVU213
	itt	mi
	movmi	r2, #1024
	strmi	r2, [r3, #8]
	.loc 1 354 12 view .LVU214
	ldr	r3, .L82
	ldr	r2, [r3]
	.loc 1 354 7 view .LVU215
	lsls	r2, r2, #20
	bpl	.L71
	.loc 1 355 9 is_stmt 1 view .LVU216
	.loc 1 355 21 is_stmt 0 view .LVU217
	mov	r2, #2048
	str	r2, [r3, #8]
	.loc 1 357 9 is_stmt 1 view .LVU218
	.loc 1 357 26 is_stmt 0 view .LVU219
	ldr	r0, [r3, #40]
	.loc 1 359 27 view .LVU220
	ldr	r1, .L82+4
	ldr	r2, .L82+8
	ldr	r3, .L82+12
	tst	r0, #524288
	it	eq
	moveq	r3, r1
	.loc 1 365 22 view .LVU221
	movs	r1, #1
	str	r3, [r2, #4]
	.loc 1 365 9 is_stmt 1 view .LVU222
	.loc 1 365 22 is_stmt 0 view .LVU223
	strb	r1, [r2, #8]
.L71:
	.loc 1 367 1 view .LVU224
	bx	lr
.L83:
	.align	2
.L82:
	.word	1073898496
	.word	frame_buffer1
	.word	.LANCHOR0
	.word	frame_buffer0
	.cfi_endproc
.LFE115:
	.size	DMA2_Stream1_IRQHandler, .-DMA2_Stream1_IRQHandler
	.align	1
	.p2align 2,,3
	.global	autic_dma_interrupt
	.syntax unified
	.thumb
	.thumb_func
	.type	autic_dma_interrupt, %function
autic_dma_interrupt:
.LFB116:
	.loc 1 370 28 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	ldr	r9, .L99+4
.LBB24:
.LBB25:
	.loc 1 217 3 is_stmt 0 view .LVU226
	ldr	r5, .L99
.LBE25:
.LBE24:
	.loc 1 370 28 view .LVU227
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
.LBB29:
.LBB26:
	.loc 1 215 13 view .LVU228
	movw	r7, #21930
.LBE26:
.LBE29:
	.loc 1 375 26 view .LVU229
	movs	r6, #0
.L85:
	.loc 1 371 5 is_stmt 1 view .LVU230
	.loc 1 372 9 view .LVU231
	.loc 1 372 12 is_stmt 0 view .LVU232
	ldrb	r3, [r9, #8]	@ zero_extendqisi2
	.loc 1 372 11 view .LVU233
	cmp	r3, #0
	beq	.L85
	.loc 1 374 13 is_stmt 1 view .LVU234
	ldr	r4, [r9, #4]
.LVL57:
.LBB30:
.LBI24:
	.loc 1 210 6 view .LVU235
.LBB27:
	.loc 1 211 3 view .LVU236
	.loc 1 212 3 view .LVU237
	.loc 1 215 3 view .LVU238
	.loc 1 216 3 view .LVU239
	.loc 1 215 13 is_stmt 0 view .LVU240
	strh	r7, [sp]	@ movhi
	.loc 1 217 3 is_stmt 1 view .LVU241
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL58:
	.loc 1 219 3 view .LVU242
	.loc 1 219 17 view .LVU243
	add	r8, r4, #38400
	.loc 1 212 15 is_stmt 0 view .LVU244
	movs	r3, #0
	b	.L87
.LVL59:
.L86:
	.loc 1 219 28 is_stmt 1 view .LVU245
	.loc 1 219 17 view .LVU246
	cmp	r4, r8
	beq	.L97
.LVL60:
.L87:
	.loc 1 221 5 view .LVU247
	.loc 1 221 17 is_stmt 0 view .LVU248
	add	r2, r3, #32
	add	r2, sp, r2
	.loc 1 221 41 view .LVU249
	ldrh	r1, [r4]
	.loc 1 221 19 view .LVU250
	strb	r1, [r2, #-32]
	.loc 1 222 42 view .LVU251
	ldrh	r1, [r4]
.LVL61:
	.loc 1 222 5 is_stmt 1 view .LVU252
	.loc 1 222 17 is_stmt 0 view .LVU253
	add	r2, r3, #33
.LVL62:
	.loc 1 222 17 view .LVU254
	add	r2, sp, r2
	.loc 1 222 13 view .LVU255
	adds	r3, r3, #2
.LVL63:
	.loc 1 222 19 view .LVU256
	ubfx	r1, r1, #8, #8
	.loc 1 225 8 view .LVU257
	cmp	r3, #32
	.loc 1 219 17 view .LVU258
	add	r4, r4, #2
	.loc 1 222 19 view .LVU259
	strb	r1, [r2, #-32]
	.loc 1 225 5 is_stmt 1 view .LVU260
	.loc 1 225 8 is_stmt 0 view .LVU261
	bne	.L86
	.loc 1 226 7 is_stmt 1 view .LVU262
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL64:
	.loc 1 227 7 view .LVU263
	.loc 1 219 17 is_stmt 0 view .LVU264
	cmp	r4, r8
	.loc 1 227 9 view .LVU265
	mov	r3, #0
.LVL65:
	.loc 1 219 28 is_stmt 1 view .LVU266
	.loc 1 219 17 view .LVU267
	bne	.L87
.L97:
	.loc 1 232 3 view .LVU268
	.loc 1 232 6 is_stmt 0 view .LVU269
	cbnz	r3, .L98
.LVL66:
.L88:
	.loc 1 232 6 view .LVU270
.LBE27:
.LBE30:
	.loc 1 375 13 is_stmt 1 view .LVU271
	.loc 1 375 26 is_stmt 0 view .LVU272
	strb	r6, [r9, #8]
	b	.L85
.LVL67:
.L98:
.LBB31:
.LBB28:
	.loc 1 233 5 is_stmt 1 view .LVU273
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL68:
	.loc 1 233 5 is_stmt 0 view .LVU274
	b	.L88
.L100:
	.align	2
.L99:
	.word	c_nrf_slave_addr
	.word	.LANCHOR0
.LBE28:
.LBE31:
	.cfi_endproc
.LFE116:
	.size	autic_dma_interrupt, .-autic_dma_interrupt
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"izvrsavamo inicijalizaciju za Nrf modul\012\012\012"
	.ascii	"\000"
	.align	2
.LC1:
	.ascii	"\012\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwwwwwwwwwwwwwwwwww\012\000"
	.align	2
.LC2:
	.ascii	"w                   nRF24L01 Tx[1]-Rx[0] => [%d]   "
	.ascii	"            w\012\000"
	.align	2
.LC3:
	.ascii	"wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwwwwwwwwww\012\000"
	.align	2
.LC4:
	.ascii	"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"
	.ascii	"WWW\012\000"
	.align	2
.LC5:
	.ascii	"WWWWWWWWWWW  Circular buffer od OV7679   WWWWWWWWWW"
	.ascii	"WWW\012\000"
	.align	2
.LC6:
	.ascii	"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWwWWWW"
	.ascii	"WWW\012\012\012\000"
	.align	2
.LC7:
	.ascii	"==================================================="
	.ascii	"=============\012\000"
	.align	2
.LC8:
	.ascii	"DCMI inicijalizacija je zavrsena, vrsimo provjeru: "
	.ascii	"\012\012\000"
	.align	2
.LC9:
	.ascii	"###################################################"
	.ascii	"##############\012\000"
	.align	2
.LC10:
	.ascii	"Da li su upisane vrijednosti u nRF modul ???\012\000"
	.align	2
.LC11:
	.ascii	"NRF24L01_RF_SETUP = 0x%xh\012\000"
	.align	2
.LC12:
	.ascii	"NRF24L01_EN_AA = 0x%xh\012\000"
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.loc 1 43 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 44 3 view .LVU276
	.loc 1 43 1 is_stmt 0 view .LVU277
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 44 11 view .LVU278
	movs	r3, #0
	.loc 1 47 5 view .LVU279
	movs	r0, #45
	.loc 1 44 11 view .LVU280
	strb	r3, [sp, #7]
	.loc 1 47 5 is_stmt 1 view .LVU281
	bl	initUSART2
.LVL69:
	.loc 1 48 5 view .LVU282
	bl	initSYSTIMER_TIM7
.LVL70:
	.loc 1 49 5 view .LVU283
	bl	initSYSTIMER
.LVL71:
	.loc 1 52 3 view .LVU284
	ldr	r0, .L108
	bl	printUSART2
.LVL72:
	.loc 1 54 3 view .LVU285
	bl	initGPIOC6_GND
.LVL73:
	.loc 1 55 3 view .LVU286
	movs	r0, #10
	bl	delay_ms
.LVL74:
	.loc 1 56 3 view .LVU287
	add	r0, sp, #7
	bl	chkConnection_GPIOC6_GND
.LVL75:
	.loc 1 58 3 view .LVU288
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	bl	initnRF24L01
.LVL76:
	.loc 1 59 3 view .LVU289
	mov	r0, #1000
	bl	delay_ms
.LVL77:
	.loc 1 62 3 view .LVU290
	ldr	r0, .L108+4
	bl	printUSART2
.LVL78:
	.loc 1 63 3 view .LVU291
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r0, .L108+8
	bl	printUSART2
.LVL79:
	.loc 1 64 3 view .LVU292
	ldr	r0, .L108+12
	bl	printUSART2
.LVL80:
	.loc 1 69 3 view .LVU293
	.loc 1 69 6 is_stmt 0 view .LVU294
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L106
	.loc 1 122 5 is_stmt 1 view .LVU295
	bl	initLIS320DL
.LVL81:
	.loc 1 123 5 view .LVU296
	movs	r0, #10
	bl	delay_ms
.LVL82:
.L103:
	.loc 1 126 3 view .LVU297
	movs	r1, #0
	movs	r0, #1
	bl	conRegNRF24L01
.LVL83:
	.loc 1 127 3 view .LVU298
	movs	r0, #200
	bl	delay_ms
.LVL84:
	.loc 1 128 3 view .LVU299
	ldr	r0, .L108+16
	bl	printUSART2
.LVL85:
	.loc 1 129 3 view .LVU300
	ldr	r0, .L108+20
	bl	printUSART2
.LVL86:
	.loc 1 130 3 view .LVU301
	.loc 1 130 46 is_stmt 0 view .LVU302
	movs	r0, #6
	bl	getRegNRF24L01
.LVL87:
	mov	r1, r0
	.loc 1 130 3 view .LVU303
	ldr	r0, .L108+24
	bl	printUSART2
.LVL88:
	.loc 1 131 3 is_stmt 1 view .LVU304
	.loc 1 131 43 is_stmt 0 view .LVU305
	movs	r0, #1
	bl	getRegNRF24L01
.LVL89:
	mov	r1, r0
	.loc 1 131 3 view .LVU306
	ldr	r0, .L108+28
	bl	printUSART2
.LVL90:
	.loc 1 132 3 is_stmt 1 view .LVU307
	ldr	r0, .L108+16
	bl	printUSART2
.LVL91:
	.loc 1 136 3 view .LVU308
	.loc 1 136 6 is_stmt 0 view .LVU309
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L107
	.loc 1 141 5 is_stmt 1 view .LVU310
	bl	kontroler_double_buffer
.LVL92:
.L106:
	.loc 1 72 3 view .LVU311
	ldr	r0, .L108+32
	bl	printUSART2
.LVL93:
	.loc 1 73 3 view .LVU312
	ldr	r0, .L108+36
	bl	printUSART2
.LVL94:
	.loc 1 74 3 view .LVU313
	ldr	r0, .L108+40
	bl	printUSART2
.LVL95:
	.loc 1 81 3 view .LVU314
	bl	OV7670_XCLK_TIM1_init
.LVL96:
	.loc 1 82 3 view .LVU315
	movs	r0, #100
	bl	delay_ms
.LVL97:
	.loc 1 88 3 view .LVU316
	bl	getOV7670_ID
.LVL98:
	.loc 1 89 3 view .LVU317
	movs	r0, #50
	bl	delay_ms
.LVL99:
	.loc 1 96 3 view .LVU318
	bl	OV7670_SetupQQVGA_Custom_sa_neta
.LVL100:
	.loc 1 97 3 view .LVU319
	mov	r0, #1000
	bl	delay_ms
.LVL101:
	.loc 1 102 3 view .LVU320
	bl	OV7670_VerifyRegisters_Custom
.LVL102:
	.loc 1 103 3 view .LVU321
	ldr	r0, .L108+44
	bl	printUSART2
.LVL103:
	.loc 1 106 3 view .LVU322
	bl	DCMI_Init_OV7670_continuous_mode
.LVL104:
	.loc 1 108 3 view .LVU323
	ldr	r0, .L108+48
	bl	printUSART2
.LVL105:
	.loc 1 109 3 view .LVU324
	bl	DCMI_CheckConfig
.LVL106:
	.loc 1 112 3 view .LVU325
	ldr	r1, .L108+52
	ldr	r0, .L108+56
	mov	r2, #19200
	bl	initDMA2_for_OV7670_continuous_mode_double_buffer
.LVL107:
	.loc 1 113 3 view .LVU326
	movs	r0, #100
	bl	delay_ms
.LVL108:
	.loc 1 115 3 view .LVU327
	bl	checkDMA2_Stream1_status
.LVL109:
	.loc 1 119 3 view .LVU328
	bl	DCMI_start_continuous_mode
.LVL110:
	b	.L103
.L107:
	.loc 1 138 5 view .LVU329
	bl	autic_dma_interrupt
.LVL111:
.L109:
	.align	2
.L108:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	frame_buffer1
	.word	frame_buffer0
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.global	citamo_buffer
	.global	frame_ready
	.global	buffer_ready
	.global	frame_to_send
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	citamo_buffer, %object
	.size	citamo_buffer, 1
citamo_buffer:
	.space	1
	.space	3
	.type	frame_to_send, %object
	.size	frame_to_send, 4
frame_to_send:
	.space	4
	.type	buffer_ready, %object
	.size	buffer_ready, 1
buffer_ready:
	.space	1
	.type	frame_ready, %object
	.size	frame_ready, 1
frame_ready:
	.space	1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "DCMI/dcmi.h"
	.file 5 "nRF24L01/nRF24L01.h"
	.file 6 "check/check.h"
	.file 7 "lis302dl/lis302dl.h"
	.file 8 "./dma/dma.h"
	.file 9 "ov7670/ov7670.h"
	.file 10 "gpio/gpioc.h"
	.file 11 "delay/delay.h"
	.file 12 "usart/usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa54
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1d
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.LLRL24
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x13
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x52
	.uleb128 0xc
	.4byte	0x42
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x13
	.4byte	.LASF6
	.byte	0x31
	.byte	0x19
	.4byte	0x69
	.uleb128 0xc
	.4byte	0x59
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x13
	.4byte	.LASF8
	.byte	0x34
	.byte	0x19
	.4byte	0x80
	.uleb128 0xc
	.4byte	0x70
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x17
	.byte	0x18
	.2byte	0x1d7
	.4byte	0xec
	.uleb128 0x14
	.ascii	"CR\000"
	.2byte	0x1d9
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF12
	.2byte	0x1da
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x14
	.ascii	"PAR\000"
	.2byte	0x1db
	.4byte	0x7b
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF13
	.2byte	0x1dc
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF14
	.2byte	0x1dd
	.4byte	0x7b
	.byte	0x10
	.uleb128 0x14
	.ascii	"FCR\000"
	.2byte	0x1de
	.4byte	0x7b
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF15
	.2byte	0x1df
	.4byte	0x9c
	.uleb128 0x17
	.byte	0x10
	.2byte	0x1e1
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF16
	.2byte	0x1e3
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.2byte	0x1e4
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.2byte	0x1e5
	.4byte	0x7b
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF19
	.2byte	0x1e6
	.4byte	0x7b
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF20
	.2byte	0x1e7
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x19
	.4byte	0x13b
	.uleb128 0x15
	.4byte	0x64
	.4byte	0x158
	.uleb128 0x25
	.4byte	0x95
	.2byte	0x4aff
	.byte	0
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x4
	.byte	0xe
	.byte	0x1a
	.4byte	0x158
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x4
	.byte	0x11
	.byte	0x1a
	.4byte	0x158
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.byte	0x12
	.byte	0x1a
	.4byte	0x158
	.uleb128 0x15
	.4byte	0x142
	.4byte	0x191
	.uleb128 0x1a
	.4byte	0x95
	.byte	0x5
	.byte	0
	.uleb128 0x19
	.4byte	0x181
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x95
	.byte	0x13
	.4byte	0x191
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x21
	.byte	0x14
	.4byte	0x1ba
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_to_send
	.uleb128 0xf
	.4byte	0x64
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x22
	.byte	0x12
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer_ready
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x25
	.byte	0x12
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_ready
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x26
	.byte	0x12
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x3
	.4byte	citamo_buffer
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.4byte	0x208
	.uleb128 0x3
	.4byte	0x1ba
	.uleb128 0x3
	.4byte	0x70
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0xb7
	.4byte	0x219
	.uleb128 0x3
	.4byte	0x219
	.byte	0
	.uleb128 0xf
	.4byte	0x42
	.uleb128 0x26
	.4byte	.LASF67
	.byte	0x5
	.byte	0xb6
	.byte	0x9
	.4byte	0x42
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0xb2
	.4byte	0x42
	.4byte	0x243
	.uleb128 0x3
	.4byte	0x219
	.uleb128 0x3
	.4byte	0x219
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0xaf
	.4byte	0x42
	.4byte	0x257
	.uleb128 0x3
	.4byte	0x42
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x5
	.byte	0xac
	.4byte	0x26d
	.uleb128 0x3
	.4byte	0x42
	.uleb128 0x3
	.4byte	0x42
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x7
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x4
	.byte	0x30
	.4byte	0x281
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x8
	.byte	0xc
	.4byte	0x2a3
	.uleb128 0x3
	.4byte	0x1ba
	.uleb128 0x3
	.4byte	0x1ba
	.uleb128 0x3
	.4byte	0x59
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x4
	.byte	0x2f
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x9
	.byte	0x26
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x9
	.byte	0x1b
	.4byte	0x2cc
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x9
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x5
	.byte	0xaa
	.4byte	0x2e4
	.uleb128 0x3
	.4byte	0x42
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0xa
	.byte	0xa
	.4byte	0x2f5
	.uleb128 0x3
	.4byte	0x219
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0xb
	.byte	0x9
	.4byte	0x306
	.uleb128 0x3
	.4byte	0x70
	.byte	0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xa
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xc
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x3
	.4byte	0x31f
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.4byte	0x13b
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0xb
	.byte	0x11
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0xb
	.byte	0x17
	.4byte	0x338
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xc
	.byte	0xe
	.4byte	0x349
	.uleb128 0x3
	.4byte	0x70
	.byte	0
	.uleb128 0x27
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x172
	.byte	0x6
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x400
	.uleb128 0x28
	.4byte	0x533
	.4byte	.LBI24
	.byte	.LVU235
	.4byte	.LLRL19
	.byte	0x1
	.2byte	0x176
	.byte	0xd
	.uleb128 0xa
	.4byte	0x54b
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xa
	.4byte	0x540
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x11
	.4byte	.LLRL19
	.uleb128 0x12
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	0x562
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x8
	.4byte	0x56b
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x2
	.4byte	.LVL58
	.4byte	0x22a
	.4byte	0x3cd
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL64
	.4byte	0x22a
	.4byte	0x3e7
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL68
	.4byte	0x22a
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x159
	.byte	0x6
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF69
	.byte	0x1
	.byte	0xf8
	.byte	0x6
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f2
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0xf8
	.byte	0x20
	.4byte	0x4f2
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0xf8
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0xfa
	.byte	0xd
	.4byte	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0xfb
	.4byte	0x70
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0xfc
	.4byte	0x70
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2b
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x4bd
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10a
	.byte	0x16
	.4byte	0x8e
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x11
	.4byte	.LLRL17
	.uleb128 0x2d
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10b
	.byte	0x1a
	.4byte	0x70
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL42
	.4byte	0x21e
	.uleb128 0x2
	.4byte	.LVL43
	.4byte	0x208
	.4byte	0x4da
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL54
	.4byte	0x1f2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x59
	.uleb128 0x15
	.4byte	0x42
	.4byte	0x507
	.uleb128 0x1a
	.4byte	0x95
	.byte	0x1f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0xef
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x533
	.uleb128 0xb
	.4byte	.LVL56
	.4byte	0x413
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd2
	.byte	0x6
	.byte	0x1
	.4byte	0x575
	.uleb128 0x20
	.4byte	.LASF22
	.byte	0xd2
	.byte	0x26
	.4byte	0x1ba
	.uleb128 0x20
	.4byte	.LASF54
	.byte	0xd2
	.byte	0x3d
	.4byte	0x70
	.uleb128 0x2f
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd3
	.byte	0xb
	.4byte	0x4f7
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0xd4
	.byte	0xc
	.4byte	0x70
	.uleb128 0x21
	.ascii	"j\000"
	.byte	0xd4
	.byte	0xf
	.4byte	0x70
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0xb3
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ba
	.uleb128 0x30
	.4byte	0x533
	.4byte	.LBI6
	.byte	.LVU61
	.4byte	.LLRL0
	.byte	0x1
	.byte	0xc6
	.byte	0x9
	.4byte	0x623
	.uleb128 0xa
	.4byte	0x54b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	0x540
	.uleb128 0x11
	.4byte	.LLRL0
	.uleb128 0x12
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	0x562
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x8
	.4byte	0x56b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	0x22a
	.4byte	0x5f1
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL17
	.4byte	0x22a
	.4byte	0x60b
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL23
	.4byte	0x22a
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x533
	.4byte	.LBI12
	.byte	.LVU13
	.4byte	.LLRL4
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.uleb128 0xa
	.4byte	0x54b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.4byte	0x540
	.uleb128 0x11
	.4byte	.LLRL4
	.uleb128 0x12
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	0x562
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x8
	.4byte	0x56b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	0x22a
	.4byte	0x687
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL7
	.4byte	0x22a
	.4byte	0x6a1
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL21
	.4byte	0x22a
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x8e
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c7
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x2c
	.byte	0xb
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2
	.4byte	.LVL69
	.4byte	0x338
	.4byte	0x6f6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x4
	.4byte	.LVL70
	.4byte	0x32b
	.uleb128 0x4
	.4byte	.LVL71
	.4byte	0x324
	.uleb128 0x2
	.4byte	.LVL72
	.4byte	0x30d
	.4byte	0x71f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL73
	.4byte	0x306
	.uleb128 0x2
	.4byte	.LVL74
	.4byte	0x2f5
	.4byte	0x73b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL75
	.4byte	0x2e4
	.4byte	0x74f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	0x2d3
	.uleb128 0x2
	.4byte	.LVL77
	.4byte	0x2f5
	.4byte	0x76d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL78
	.4byte	0x30d
	.4byte	0x784
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2
	.4byte	.LVL79
	.4byte	0x30d
	.4byte	0x79b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL80
	.4byte	0x30d
	.4byte	0x7b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x4
	.4byte	.LVL81
	.4byte	0x26d
	.uleb128 0x2
	.4byte	.LVL82
	.4byte	0x2f5
	.4byte	0x7ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL83
	.4byte	0x257
	.4byte	0x7e6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.4byte	.LVL84
	.4byte	0x2f5
	.4byte	0x7fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL85
	.4byte	0x30d
	.4byte	0x811
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x2
	.4byte	.LVL86
	.4byte	0x30d
	.4byte	0x828
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2
	.4byte	.LVL87
	.4byte	0x243
	.4byte	0x83b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2
	.4byte	.LVL88
	.4byte	0x30d
	.4byte	0x852
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x2
	.4byte	.LVL89
	.4byte	0x243
	.4byte	0x865
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL90
	.4byte	0x30d
	.4byte	0x87c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x2
	.4byte	.LVL91
	.4byte	0x30d
	.4byte	0x893
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x4
	.4byte	.LVL92
	.4byte	0x507
	.uleb128 0x2
	.4byte	.LVL93
	.4byte	0x30d
	.4byte	0x8b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2
	.4byte	.LVL94
	.4byte	0x30d
	.4byte	0x8ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2
	.4byte	.LVL95
	.4byte	0x30d
	.4byte	0x8e1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x4
	.4byte	.LVL96
	.4byte	0x2cc
	.uleb128 0x2
	.4byte	.LVL97
	.4byte	0x2f5
	.4byte	0x8fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LVL98
	.4byte	0x2bf
	.uleb128 0x2
	.4byte	.LVL99
	.4byte	0x2f5
	.4byte	0x91b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL100
	.4byte	0x2b8
	.uleb128 0x2
	.4byte	.LVL101
	.4byte	0x2f5
	.4byte	0x939
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x4
	.4byte	.LVL102
	.4byte	0x2b1
	.uleb128 0x2
	.4byte	.LVL103
	.4byte	0x30d
	.4byte	0x959
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x4
	.4byte	.LVL104
	.4byte	0x2aa
	.uleb128 0x2
	.4byte	.LVL105
	.4byte	0x30d
	.4byte	0x979
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x4
	.4byte	.LVL106
	.4byte	0x2a3
	.uleb128 0x2
	.4byte	.LVL107
	.4byte	0x288
	.4byte	0x997
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.uleb128 0x2
	.4byte	.LVL108
	.4byte	0x2f5
	.4byte	0x9ab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LVL109
	.4byte	0x281
	.uleb128 0x4
	.4byte	.LVL110
	.4byte	0x274
	.uleb128 0x4
	.4byte	.LVL111
	.4byte	0x349
	.byte	0
	.uleb128 0x33
	.4byte	0x533
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	0x540
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xa
	.4byte	0x54b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x12
	.4byte	0x556
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	0x562
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x8
	.4byte	0x56b
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2
	.4byte	.LVL27
	.4byte	0x22a
	.4byte	0xa26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL33
	.4byte	0x22a
	.4byte	0xa40
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL37
	.4byte	0x22a
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
	.byte	0x7d
	.sleb128 0
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
.LVUS20:
	.uleb128 .LVU235
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL66-.LVL57
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL57
	.uleb128 .LFE116-.LVL57
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU235
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL59-.LVL57
	.uleb128 .LVL66-.LVL57
	.uleb128 0x5
	.byte	0x78
	.sleb128 -38400
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL57
	.uleb128 .LFE116-.LVL57
	.uleb128 0x5
	.byte	0x78
	.sleb128 -38400
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU243
	.uleb128 .LVU245
.LLST22:
	.byte	0x8
	.4byte	.LVL58
	.uleb128 .LVL59-.LVL58
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU238
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU263
	.uleb128 .LVU264
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 .LVU274
.LLST23:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL57
	.uleb128 .LVL61-.LVL57
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL61-.LVL57
	.uleb128 .LVL62-.LVL57
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL62-.LVL57
	.uleb128 .LVL63-.LVL57
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.LVL57
	.uleb128 .LVL64-1-.LVL57
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL64-.LVL57
	.uleb128 .LVL65-.LVL57
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.LVL57
	.uleb128 .LVL66-.LVL57
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL67-.LVL57
	.uleb128 .LVL68-1-.LVL57
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-.LVL39
	.uleb128 .LFE114-.LVL39
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-.LVL39
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL41-.LVL39
	.uleb128 .LFE114-.LVL39
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU157
	.uleb128 .LVU161
	.uleb128 .LVU168
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU200
.LLST14:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL39
	.uleb128 .LVL46-.LVL39
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL46-.LVL39
	.uleb128 .LVL47-.LVL39
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL39
	.uleb128 .LVL50-.LVL39
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL50-.LVL39
	.uleb128 .LVL51-.LVL39
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL39
	.uleb128 .LVL55-.LVL39
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS15:
	.uleb128 .LVU160
	.uleb128 0
.LLST15:
	.byte	0x8
	.4byte	.LVL40
	.uleb128 .LFE114-.LVL40
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS16:
	.uleb128 .LVU168
	.uleb128 .LVU200
.LLST16:
	.byte	0x8
	.4byte	.LVL44
	.uleb128 .LVL55-.LVL44
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU169
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU175
	.uleb128 .LVU177
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU194
.LLST18:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-.LVL45
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL45
	.uleb128 .LVL48-.LVL45
	.uleb128 0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.LVL45
	.uleb128 .LVL50-.LVL45
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL45
	.uleb128 .LVL52-.LVL45
	.uleb128 0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU61
	.uleb128 .LVU98
	.uleb128 .LVU103
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL19-.LVL10
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL10
	.uleb128 .LFE111-.LVL10
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU70
	.uleb128 .LVU72
.LLST2:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU64
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU98
	.uleb128 .LVU103
	.uleb128 .LVU105
.LLST3:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL14-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL15-.LVL10
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL10
	.uleb128 .LVL16-.LVL10
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL10
	.uleb128 .LVL17-1-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.LVL10
	.uleb128 .LVL18-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL10
	.uleb128 .LVL19-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL22-.LVL10
	.uleb128 .LVL23-1-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS5:
	.uleb128 .LVU13
	.uleb128 .LVU50
	.uleb128 .LVU101
	.uleb128 .LVU103
.LLST5:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL0
	.uleb128 .LVL22-.LVL0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU22
	.uleb128 .LVU24
.LLST6:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU16
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU43
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU50
	.uleb128 .LVU101
	.uleb128 .LVU102
.LLST7:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-1-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL20-.LVL0
	.uleb128 .LVL21-1-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL25-.LVL24
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.LVL24
	.uleb128 .LVL28-.LVL24
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL28-.LVL24
	.uleb128 .LFE112-.LVL24
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL26-.LVL24
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL26-.LVL24
	.uleb128 .LVL38-.LVL24
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL38-.LVL24
	.uleb128 .LFE112-.LVL24
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU119
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU153
.LLST10:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL27
	.uleb128 .LVL32-.LVL27
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.LVL27
	.uleb128 .LVL34-.LVL27
	.uleb128 0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL27
	.uleb128 .LVL35-.LVL27
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL36-.LVL27
	.uleb128 .LVL38-.LVL27
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS11:
	.uleb128 .LVU109
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU127
	.uleb128 .LVU137
	.uleb128 .LVU143
	.uleb128 .LVU144
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU152
.LLST11:
	.byte	0x6
	.4byte	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL28-.LVL24
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL24
	.uleb128 .LVL30-.LVL24
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL31-.LVL24
	.uleb128 .LVL33-1-.LVL24
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL33-.LVL24
	.uleb128 .LVL34-.LVL24
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL24
	.uleb128 .LVL35-.LVL24
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL36-.LVL24
	.uleb128 .LVL37-1-.LVL24
	.uleb128 0x1
	.byte	0x53
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
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
.LLRL0:
	.byte	0x5
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB11-.LBB6
	.uleb128 .LBE11-.LBB6
	.byte	0x4
	.uleb128 .LBB15-.LBB6
	.uleb128 .LBE15-.LBB6
	.byte	0x4
	.uleb128 .LBB17-.LBB6
	.uleb128 .LBE17-.LBB6
	.byte	0
.LLRL4:
	.byte	0x5
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB16-.LBB12
	.uleb128 .LBE16-.LBB12
	.byte	0
.LLRL17:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB20-.LBB19
	.uleb128 .LBE20-.LBB19
	.byte	0x4
	.uleb128 .LBB21-.LBB19
	.uleb128 .LBE21-.LBB19
	.byte	0
.LLRL19:
	.byte	0x5
	.4byte	.LBB24
	.byte	0x4
	.uleb128 .LBB24-.LBB24
	.uleb128 .LBE24-.LBB24
	.byte	0x4
	.uleb128 .LBB29-.LBB24
	.uleb128 .LBE29-.LBB24
	.byte	0x4
	.uleb128 .LBB30-.LBB24
	.uleb128 .LBE30-.LBB24
	.byte	0x4
	.uleb128 .LBB31-.LBB24
	.uleb128 .LBE31-.LBB24
	.byte	0
.LLRL24:
	.byte	0x7
	.4byte	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.4byte	.LFB110
	.uleb128 .LFE110-.LFB110
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"getOV7670_ID\000"
.LASF48:
	.ascii	"delay_ms\000"
.LASF59:
	.ascii	"kontroler_double_buffer\000"
.LASF45:
	.ascii	"OV7670_XCLK_TIM1_init\000"
.LASF15:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF43:
	.ascii	"DCMI_start_continuous_mode\000"
.LASF32:
	.ascii	"rxDataNRF24L01\000"
.LASF68:
	.ascii	"DMA2_Stream1_IRQHandler\000"
.LASF31:
	.ascii	"send_frame_buffer\000"
.LASF46:
	.ascii	"initnRF24L01\000"
.LASF70:
	.ascii	"main\000"
.LASF20:
	.ascii	"DMA_TypeDef\000"
.LASF62:
	.ascii	"autic_double_buffer\000"
.LASF57:
	.ascii	"index\000"
.LASF67:
	.ascii	"dataReadyNRF24L01\000"
.LASF61:
	.ascii	"packet\000"
.LASF29:
	.ascii	"frame_ready\000"
.LASF1:
	.ascii	"short int\000"
.LASF33:
	.ascii	"txDataNRF24L01\000"
.LASF54:
	.ascii	"length\000"
.LASF19:
	.ascii	"HIFCR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF42:
	.ascii	"OV7670_SetupQQVGA_Custom_sa_neta\000"
.LASF49:
	.ascii	"initGPIOC6_GND\000"
.LASF17:
	.ascii	"HISR\000"
.LASF2:
	.ascii	"long int\000"
.LASF53:
	.ascii	"initUSART2\000"
.LASF16:
	.ascii	"LISR\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF39:
	.ascii	"DCMI_CheckConfig\000"
.LASF23:
	.ascii	"frame_buffer0\000"
.LASF24:
	.ascii	"frame_buffer1\000"
.LASF26:
	.ascii	"long double\000"
.LASF28:
	.ascii	"buffer_ready\000"
.LASF47:
	.ascii	"chkConnection_GPIOC6_GND\000"
.LASF60:
	.ascii	"sendFrameNRF\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF51:
	.ascii	"initSYSTIMER\000"
.LASF55:
	.ascii	"bytes_received\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF41:
	.ascii	"OV7670_VerifyRegisters_Custom\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF14:
	.ascii	"M1AR\000"
.LASF50:
	.ascii	"printUSART2\000"
.LASF21:
	.ascii	"char\000"
.LASF69:
	.ascii	"receiveFrameNRF\000"
.LASF40:
	.ascii	"DCMI_Init_OV7670_continuous_mode\000"
.LASF56:
	.ascii	"total_bytes\000"
.LASF66:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrfV1.7\000"
.LASF25:
	.ascii	"c_nrf_slave_addr\000"
.LASF18:
	.ascii	"LIFCR\000"
.LASF38:
	.ascii	"initDMA2_for_OV7670_continuous_mode_double_buffer\000"
.LASF13:
	.ascii	"M0AR\000"
.LASF65:
	.ascii	"main.c\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF37:
	.ascii	"checkDMA2_Stream1_status\000"
.LASF12:
	.ascii	"NDTR\000"
.LASF64:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF22:
	.ascii	"frame_buffer\000"
.LASF52:
	.ascii	"initSYSTIMER_TIM7\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF34:
	.ascii	"getRegNRF24L01\000"
.LASF30:
	.ascii	"citamo_buffer\000"
.LASF35:
	.ascii	"conRegNRF24L01\000"
.LASF63:
	.ascii	"node_type\000"
.LASF58:
	.ascii	"autic_dma_interrupt\000"
.LASF27:
	.ascii	"frame_to_send\000"
.LASF36:
	.ascii	"initLIS320DL\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

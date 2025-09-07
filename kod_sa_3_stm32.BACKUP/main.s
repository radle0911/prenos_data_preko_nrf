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
	.loc 1 161 1 view -0
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
	.loc 1 163 22 is_stmt 0 view .LVU1
	ldr	r8, .L26+16
.LBB6:
.LBB7:
	.loc 1 199 3 view .LVU2
	ldr	r7, .L26+8
.LBE7:
.LBE6:
	.loc 1 161 1 view .LVU3
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
.LBB11:
.LBB8:
	.loc 1 197 13 view .LVU4
	movw	r10, #21930
.L2:
.LBE8:
.LBE11:
	.loc 1 162 3 is_stmt 1 view .LVU5
	.loc 1 163 5 view .LVU6
	.loc 1 163 22 is_stmt 0 view .LVU7
	ldr	r4, [r8, #40]
	.loc 1 165 25 view .LVU8
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 163 8 view .LVU9
	ands	r4, r4, #524288
	beq	.L3
.L23:
	.loc 1 165 7 is_stmt 1 view .LVU10
	.loc 1 165 10 is_stmt 0 view .LVU11
	and	r4, r3, #255
	cmp	r3, #0
	bne	.L2
	.loc 1 169 9 is_stmt 1 view .LVU12
.LVL0:
.LBB12:
.LBI12:
	.loc 1 191 6 view .LVU13
.LBB13:
	.loc 1 193 3 view .LVU14
	.loc 1 194 3 view .LVU15
	.loc 1 197 3 view .LVU16
	.loc 1 198 3 view .LVU17
	.loc 1 199 3 is_stmt 0 view .LVU18
	mov	r1, sp
	mov	r0, r7
	.loc 1 197 13 view .LVU19
	strh	r10, [sp]	@ movhi
	.loc 1 199 3 is_stmt 1 view .LVU20
	ldr	fp, .L26+20
	bl	txDataNRF24L01
.LVL1:
	.loc 1 201 3 view .LVU21
	.loc 1 201 17 view .LVU22
	.loc 1 194 15 is_stmt 0 view .LVU23
	mov	r3, r4
	b	.L6
.LVL2:
.L5:
	.loc 1 201 28 is_stmt 1 view .LVU24
	.loc 1 201 17 view .LVU25
	cmp	r5, fp
	beq	.L21
.LVL3:
.L6:
	.loc 1 203 5 view .LVU26
	.loc 1 203 41 is_stmt 0 view .LVU27
	ldrh	r4, [fp]
.LVL4:
	.loc 1 204 42 view .LVU28
	ldrh	r1, [fp]
	.loc 1 203 17 view .LVU29
	add	r0, r3, #32
	.loc 1 204 17 view .LVU30
	add	r2, r3, #33
	.loc 1 203 17 view .LVU31
	add	r0, sp, r0
	.loc 1 204 17 view .LVU32
	add	r2, sp, r2
	.loc 1 204 13 view .LVU33
	adds	r3, r3, #2
.LVL5:
	.loc 1 204 19 view .LVU34
	ubfx	r1, r1, #8, #8
	.loc 1 207 8 view .LVU35
	cmp	r3, #32
	.loc 1 203 19 view .LVU36
	strb	r4, [r0, #-32]
	.loc 1 204 5 is_stmt 1 view .LVU37
.LVL6:
	.loc 1 201 17 is_stmt 0 view .LVU38
	add	fp, fp, #2
	.loc 1 204 19 view .LVU39
	strb	r1, [r2, #-32]
	.loc 1 207 5 is_stmt 1 view .LVU40
	.loc 1 207 8 is_stmt 0 view .LVU41
	bne	.L5
	.loc 1 208 7 is_stmt 1 view .LVU42
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL7:
	.loc 1 209 7 view .LVU43
	.loc 1 201 17 is_stmt 0 view .LVU44
	cmp	r5, fp
	.loc 1 209 9 view .LVU45
	mov	r3, #0
.LVL8:
	.loc 1 201 28 is_stmt 1 view .LVU46
	.loc 1 201 17 view .LVU47
	bne	.L6
.L21:
	.loc 1 214 3 view .LVU48
	.loc 1 214 6 is_stmt 0 view .LVU49
	cbnz	r3, .L22
.LVL9:
.L7:
	.loc 1 214 6 view .LVU50
.LBE13:
.LBE12:
	.loc 1 171 9 is_stmt 1 view .LVU51
	.loc 1 171 23 is_stmt 0 view .LVU52
	movs	r3, #1
	strb	r3, [r6]
	.loc 1 162 3 is_stmt 1 view .LVU53
	.loc 1 163 5 view .LVU54
	.loc 1 163 22 is_stmt 0 view .LVU55
	ldr	r4, [r8, #40]
	.loc 1 165 25 view .LVU56
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 163 8 view .LVU57
	ands	r4, r4, #524288
	bne	.L23
.L3:
	.loc 1 175 7 is_stmt 1 view .LVU58
	.loc 1 175 10 is_stmt 0 view .LVU59
	cmp	r3, #1
	bne	.L2
	.loc 1 179 9 is_stmt 1 view .LVU60
.LVL10:
.LBB15:
.LBI6:
	.loc 1 191 6 view .LVU61
.LBB9:
	.loc 1 193 3 view .LVU62
	.loc 1 194 3 view .LVU63
	.loc 1 197 3 view .LVU64
	.loc 1 198 3 view .LVU65
	.loc 1 199 3 is_stmt 0 view .LVU66
	mov	r1, sp
	mov	r0, r7
	.loc 1 197 13 view .LVU67
	strh	r10, [sp]	@ movhi
	.loc 1 199 3 is_stmt 1 view .LVU68
	ldr	fp, .L26+24
	bl	txDataNRF24L01
.LVL11:
	.loc 1 201 3 view .LVU69
	.loc 1 201 17 view .LVU70
	.loc 1 194 15 is_stmt 0 view .LVU71
	mov	r3, r4
	b	.L9
.LVL12:
.L8:
	.loc 1 201 28 is_stmt 1 view .LVU72
	.loc 1 201 17 view .LVU73
	cmp	fp, r9
	beq	.L24
.LVL13:
.L9:
	.loc 1 203 5 view .LVU74
	.loc 1 203 41 is_stmt 0 view .LVU75
	ldrh	r4, [fp]
.LVL14:
	.loc 1 204 42 view .LVU76
	ldrh	r1, [fp]
	.loc 1 203 17 view .LVU77
	add	r0, r3, #32
	.loc 1 204 17 view .LVU78
	add	r2, r3, #33
	.loc 1 203 17 view .LVU79
	add	r0, sp, r0
	.loc 1 204 17 view .LVU80
	add	r2, sp, r2
	.loc 1 204 13 view .LVU81
	adds	r3, r3, #2
.LVL15:
	.loc 1 204 19 view .LVU82
	ubfx	r1, r1, #8, #8
	.loc 1 207 8 view .LVU83
	cmp	r3, #32
	.loc 1 203 19 view .LVU84
	strb	r4, [r0, #-32]
	.loc 1 204 5 is_stmt 1 view .LVU85
.LVL16:
	.loc 1 201 17 is_stmt 0 view .LVU86
	add	fp, fp, #2
	.loc 1 204 19 view .LVU87
	strb	r1, [r2, #-32]
	.loc 1 207 5 is_stmt 1 view .LVU88
	.loc 1 207 8 is_stmt 0 view .LVU89
	bne	.L8
	.loc 1 208 7 is_stmt 1 view .LVU90
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL17:
	.loc 1 209 7 view .LVU91
	.loc 1 201 17 is_stmt 0 view .LVU92
	cmp	fp, r9
	.loc 1 209 9 view .LVU93
	mov	r3, #0
.LVL18:
	.loc 1 201 28 is_stmt 1 view .LVU94
	.loc 1 201 17 view .LVU95
	bne	.L9
.L24:
	.loc 1 214 3 view .LVU96
	.loc 1 214 6 is_stmt 0 view .LVU97
	cbnz	r3, .L25
.LVL19:
.L10:
	.loc 1 214 6 view .LVU98
.LBE9:
.LBE15:
	.loc 1 182 9 is_stmt 1 view .LVU99
	.loc 1 182 23 is_stmt 0 view .LVU100
	movs	r3, #0
	strb	r3, [r6]
	b	.L2
.LVL20:
.L22:
.LBB16:
.LBB14:
	.loc 1 215 5 is_stmt 1 view .LVU101
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL21:
	.loc 1 215 5 is_stmt 0 view .LVU102
	b	.L7
.LVL22:
.L25:
	.loc 1 215 5 view .LVU103
.LBE14:
.LBE16:
.LBB17:
.LBB10:
	.loc 1 215 5 is_stmt 1 view .LVU104
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL23:
	.loc 1 215 5 is_stmt 0 view .LVU105
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
	.loc 1 192 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 193 3 view .LVU107
	.loc 1 194 3 view .LVU108
	.loc 1 197 3 view .LVU109
	.loc 1 198 3 view .LVU110
	.loc 1 192 1 is_stmt 0 view .LVU111
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 1 192 1 view .LVU112
	mov	r7, r1
	mov	r4, r0
	.loc 1 197 13 view .LVU113
	movw	r3, #21930
	.loc 1 199 3 view .LVU114
	ldr	r0, .L44
.LVL25:
	.loc 1 197 13 view .LVU115
	strh	r3, [sp]	@ movhi
	.loc 1 199 3 is_stmt 1 view .LVU116
	mov	r1, sp
.LVL26:
	.loc 1 199 3 is_stmt 0 view .LVU117
	bl	txDataNRF24L01
.LVL27:
	.loc 1 201 3 is_stmt 1 view .LVU118
	.loc 1 201 17 view .LVU119
	cbz	r7, .L28
	.loc 1 194 15 is_stmt 0 view .LVU120
	movs	r3, #0
	.loc 1 208 7 view .LVU121
	ldr	r6, .L44
	.loc 1 201 10 view .LVU122
	mov	r5, r3
	b	.L31
.LVL28:
.L30:
	.loc 1 201 28 is_stmt 1 discriminator 2 view .LVU123
	.loc 1 201 17 discriminator 2 view .LVU124
	cmp	r7, r5
	beq	.L42
.LVL29:
.L31:
	.loc 1 203 5 view .LVU125
	.loc 1 203 41 is_stmt 0 view .LVU126
	ldrh	r1, [r4]
.LVL30:
	.loc 1 204 42 view .LVU127
	ldrh	r0, [r4]
	.loc 1 203 17 view .LVU128
	add	ip, r3, #32
	.loc 1 204 17 view .LVU129
	add	r2, r3, #33
	.loc 1 203 17 view .LVU130
	add	ip, sp, ip
	.loc 1 204 17 view .LVU131
	add	r2, sp, r2
	.loc 1 204 13 view .LVU132
	adds	r3, r3, #2
	.loc 1 204 19 view .LVU133
	ubfx	r0, r0, #8, #8
	.loc 1 207 8 view .LVU134
	cmp	r3, #32
	.loc 1 203 19 view .LVU135
	strb	r1, [ip, #-32]
	.loc 1 204 5 is_stmt 1 view .LVU136
.LVL31:
	.loc 1 201 28 is_stmt 0 view .LVU137
	add	r5, r5, #1
.LVL32:
	.loc 1 204 19 view .LVU138
	strb	r0, [r2, #-32]
	.loc 1 207 5 is_stmt 1 view .LVU139
	.loc 1 201 17 is_stmt 0 view .LVU140
	add	r4, r4, #2
	.loc 1 207 8 view .LVU141
	bne	.L30
	.loc 1 208 7 is_stmt 1 view .LVU142
	mov	r1, sp
	mov	r0, r6
	bl	txDataNRF24L01
.LVL33:
	.loc 1 209 7 view .LVU143
	.loc 1 201 17 is_stmt 0 view .LVU144
	cmp	r7, r5
	.loc 1 209 9 view .LVU145
	mov	r3, #0
.LVL34:
	.loc 1 201 28 is_stmt 1 view .LVU146
	.loc 1 201 17 view .LVU147
	bne	.L31
.L42:
	.loc 1 214 3 view .LVU148
	.loc 1 214 6 is_stmt 0 view .LVU149
	cbnz	r3, .L43
.LVL35:
.L28:
	.loc 1 217 1 view .LVU150
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL36:
.L43:
	.cfi_restore_state
	.loc 1 215 5 is_stmt 1 view .LVU151
	mov	r1, sp
	ldr	r0, .L44
	bl	txDataNRF24L01
.LVL37:
	.loc 1 217 1 is_stmt 0 view .LVU152
	add	sp, sp, #36
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL38:
.L45:
	.loc 1 217 1 view .LVU153
	.align	2
.L44:
	.word	c_nrf_slave_addr
	.cfi_endproc
.LFE112:
	.size	sendFrameNRF, .-sendFrameNRF
	.align	1
	.p2align 2,,3
	.global	startMasterNodeSYS
	.syntax unified
	.thumb
	.thumb_func
	.type	startMasterNodeSYS, %function
startMasterNodeSYS:
.LFB115:
	.loc 1 286 26 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 287 3 view .LVU155
.LVL39:
	.loc 1 289 5 view .LVU156
	.loc 1 286 26 is_stmt 0 view .LVU157
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 289 5 view .LVU158
	ldr	r4, .L56
	adds	r0, r4, #4
	bl	getDataLIS302DL
.LVL40:
	.loc 1 290 5 is_stmt 1 view .LVU159
	adds	r1, r4, #4
	ldr	r0, .L56+4
	bl	txDataNRF24L01_SPI3
.LVL41:
	.loc 1 294 5 view .LVU160
	.loc 1 294 29 is_stmt 0 view .LVU161
	ldrsb	r2, [r4, #4]
	.loc 1 296 29 view .LVU162
	ldrsb	r3, [r4, #5]
	.loc 1 294 16 view .LVU163
	ldr	r1, .L56+8
	.loc 1 294 62 view .LVU164
	adds	r0, r2, #5
	.loc 1 294 57 view .LVU165
	itte	lt
	sublt	r0, r2, r2, lsl #3
	lsllt	r0, r0, #1
	.loc 1 294 62 view .LVU166
	movge	r0, #0
	.loc 1 296 60 view .LVU167
	cmp	r3, #5
	.loc 1 294 16 view .LVU168
	str	r0, [r1, #52]
	.loc 1 296 5 is_stmt 1 view .LVU169
	.loc 1 296 60 is_stmt 0 view .LVU170
	ble	.L48
	.loc 1 296 55 discriminator 1 view .LVU171
	rsb	r3, r3, r3, lsl #3
	lsls	r3, r3, #1
	.loc 1 296 16 discriminator 1 view .LVU172
	str	r3, [r1, #56]
	.loc 1 299 5 is_stmt 1 discriminator 1 view .LVU173
.L49:
	.loc 1 299 62 is_stmt 0 view .LVU174
	movs	r3, #0
.L51:
	.loc 1 299 16 discriminator 4 view .LVU175
	ldr	r1, .L56+8
	.loc 1 302 60 discriminator 4 view .LVU176
	cmp	r2, #5
	.loc 1 299 16 discriminator 4 view .LVU177
	str	r3, [r1, #64]
	.loc 1 302 5 is_stmt 1 discriminator 4 view .LVU178
	.loc 1 302 55 is_stmt 0 discriminator 4 view .LVU179
	it	gt
	rsbgt	r2, r2, r2, lsl #3
	.loc 1 302 16 discriminator 4 view .LVU180
	ldr	r3, .L56+8
	.loc 1 302 55 discriminator 4 view .LVU181
	ite	gt
	lslgt	r2, r2, #1
	.loc 1 302 60 discriminator 4 view .LVU182
	movle	r2, #0
	.loc 1 302 16 discriminator 4 view .LVU183
	str	r2, [r3, #60]
	.loc 1 306 1 discriminator 4 view .LVU184
	pop	{r4, pc}
.L48:
	.loc 1 296 16 discriminator 4 view .LVU185
	movs	r0, #0
	str	r0, [r1, #56]
	.loc 1 299 5 is_stmt 1 discriminator 4 view .LVU186
	.loc 1 299 62 is_stmt 0 discriminator 4 view .LVU187
	adds	r1, r3, #5
	bge	.L49
	.loc 1 299 57 discriminator 1 view .LVU188
	sub	r3, r3, r3, lsl #3
	lsls	r3, r3, #1
	b	.L51
.L57:
	.align	2
.L56:
	.word	.LANCHOR0
	.word	c_nrf_slave_addr_spi3
	.word	1073743872
	.cfi_endproc
.LFE115:
	.size	startMasterNodeSYS, .-startMasterNodeSYS
	.align	1
	.p2align 2,,3
	.global	receiveFrameNRF
	.syntax unified
	.thumb
	.thumb_func
	.type	receiveFrameNRF, %function
receiveFrameNRF:
.LVL42:
.LFB114:
	.loc 1 231 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 232 5 view .LVU190
	.loc 1 233 5 view .LVU191
	.loc 1 234 5 view .LVU192
	.loc 1 231 1 is_stmt 0 view .LVU193
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 48
	.loc 1 234 14 view .LVU194
	lsls	r6, r1, #1
.LVL43:
	.loc 1 240 3 is_stmt 1 view .LVU195
	.loc 1 233 14 is_stmt 0 view .LVU196
	movs	r4, #0
.LVL44:
.L60:
	.loc 1 242 5 is_stmt 1 view .LVU197
	.loc 1 244 9 view .LVU198
	.loc 1 244 13 is_stmt 0 view .LVU199
	bl	dataReadyNRF24L01
.LVL45:
	.loc 1 244 12 view .LVU200
	cmp	r0, #1
	bne	.L60
	.loc 1 245 13 is_stmt 1 view .LVU201
	mov	r0, sp
	bl	rxDataNRF24L01
.LVL46:
	.loc 1 248 13 view .LVU202
	.loc 1 248 16 is_stmt 0 view .LVU203
	ldrb	r3, [sp]	@ zero_extendqisi2
	cmp	r3, #170
	beq	.L61
.L64:
.LVL47:
.LBB18:
	.loc 1 254 36 is_stmt 1 view .LVU204
	cmp	r6, r4
	bls	.L69
	mov	r3, sp
	add	r0, r4, #32
	b	.L68
.LVL48:
.L76:
.LBB19:
	.loc 1 263 31 is_stmt 0 view .LVU205
	adds	r4, r4, #1
.LVL49:
	.loc 1 258 49 view .LVU206
	ldrb	r2, [r3]	@ zero_extendqisi2
	strh	r2, [r5, r1]	@ movhi
	.loc 1 263 17 is_stmt 1 view .LVU207
.LVL50:
	.loc 1 263 17 is_stmt 0 view .LVU208
.LBE19:
	.loc 1 254 70 is_stmt 1 view .LVU209
	.loc 1 254 36 view .LVU210
	cmp	r4, r0
	add	r3, r3, #1
	beq	.L67
.LVL51:
.L77:
	.loc 1 254 36 is_stmt 0 discriminator 3 view .LVU211
	cmp	r6, r4
	beq	.L69
.LVL52:
.L68:
.LBB20:
	.loc 1 255 17 is_stmt 1 view .LVU212
	.loc 1 256 17 view .LVU213
	.loc 1 258 21 view .LVU214
	.loc 1 261 21 view .LVU215
	.loc 1 261 33 is_stmt 0 view .LVU216
	bic	r2, r4, #1
	.loc 1 256 20 view .LVU217
	tst	r4, #1
	.loc 1 258 33 view .LVU218
	mov	r1, r2
	.loc 1 256 20 view .LVU219
	beq	.L76
	.loc 1 261 45 view .LVU220
	ldrb	ip, [r3]	@ zero_extendqisi2
	.loc 1 261 41 view .LVU221
	ldrh	r1, [r5, r2]
	.loc 1 263 31 view .LVU222
	adds	r4, r4, #1
.LVL53:
	.loc 1 261 41 view .LVU223
	orr	r1, r1, ip, lsl #8
.LBE20:
	.loc 1 254 36 view .LVU224
	cmp	r4, r0
.LBB21:
	.loc 1 261 41 view .LVU225
	strh	r1, [r5, r2]	@ movhi
	.loc 1 263 17 is_stmt 1 view .LVU226
.LVL54:
	.loc 1 263 17 is_stmt 0 view .LVU227
.LBE21:
	.loc 1 254 70 is_stmt 1 view .LVU228
	.loc 1 254 36 view .LVU229
	add	r3, r3, #1
	bne	.L77
.LVL55:
.L67:
	.loc 1 254 36 is_stmt 0 view .LVU230
.LBE18:
	.loc 1 267 13 is_stmt 1 view .LVU231
	.loc 1 267 16 is_stmt 0 view .LVU232
	cmp	r6, r4
	bhi	.L60
.LVL56:
.L69:
	.loc 1 268 17 is_stmt 1 view .LVU233
	mov	r1, #19200
	mov	r0, r5
	bl	send_frame_buffer
.LVL57:
	.loc 1 269 17 view .LVU234
	bl	startMasterNodeSYS
.LVL58:
	.loc 1 271 17 view .LVU235
	.loc 1 281 1 is_stmt 0 view .LVU236
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL59:
.L61:
	.cfi_restore_state
	.loc 1 248 44 discriminator 1 view .LVU237
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #85
	bne	.L64
	.loc 1 249 32 view .LVU238
	movs	r4, #0
	b	.L60
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
	.loc 1 222 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 224 5 is_stmt 0 view .LVU240
	ldr	r4, .L81
.L79:
	.loc 1 223 3 is_stmt 1 discriminator 1 view .LVU241
	.loc 1 224 5 discriminator 1 view .LVU242
	mov	r1, #19200
	mov	r0, r4
	bl	receiveFrameNRF
.LVL60:
	.loc 1 223 9 discriminator 1 view .LVU243
	b	.L79
.L82:
	.align	2
.L81:
	.word	frame_buffer
	.cfi_endproc
.LFE113:
	.size	kontroler_double_buffer, .-kontroler_double_buffer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> |[%d],[%d],[%d]|\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	startSlaveNodeSYS
	.syntax unified
	.thumb
	.thumb_func
	.type	startSlaveNodeSYS, %function
startSlaveNodeSYS:
.LFB116:
	.loc 1 309 25 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 317 7 is_stmt 0 view .LVU245
	ldr	r5, .L96
	.loc 1 320 18 view .LVU246
	ldr	r4, .L96+4
	.loc 1 309 25 view .LVU247
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 320 60 view .LVU248
	movs	r6, #0
.L84:
	.loc 1 310 3 is_stmt 1 view .LVU249
	.loc 1 311 3 view .LVU250
	.loc 1 312 3 view .LVU251
	.loc 1 314 5 view .LVU252
	.loc 1 314 21 is_stmt 0 view .LVU253
	bl	dataReadyNRF24L01_SPI3
.LVL61:
	.loc 1 315 5 is_stmt 1 view .LVU254
	.loc 1 315 8 is_stmt 0 view .LVU255
	cmp	r0, #1
	bne	.L84
	.loc 1 316 7 is_stmt 1 view .LVU256
	add	r0, sp, #4
.LVL62:
	.loc 1 316 7 is_stmt 0 view .LVU257
	bl	rxDataNRF24L01_SPI3
.LVL63:
	.loc 1 317 7 is_stmt 1 view .LVU258
	ldrsb	r3, [sp, #6]
	ldrsb	r2, [sp, #5]
	ldrsb	r1, [sp, #4]
	mov	r0, r5
	bl	printUSART2
.LVL64:
	.loc 1 320 7 view .LVU259
	.loc 1 320 29 is_stmt 0 view .LVU260
	ldrsb	r2, [sp, #4]
	.loc 1 320 60 view .LVU261
	adds	r0, r2, #5
	.loc 1 320 55 view .LVU262
	itte	lt
	sublt	r3, r2, r2, lsl #3
	lsllt	r3, r3, #1
	.loc 1 320 60 view .LVU263
	movge	r3, #0
	.loc 1 320 18 view .LVU264
	str	r3, [r4, #52]
	.loc 1 322 7 is_stmt 1 view .LVU265
	.loc 1 322 29 is_stmt 0 view .LVU266
	ldrsb	r3, [sp, #5]
	.loc 1 322 58 view .LVU267
	cmp	r3, #5
	ble	.L86
	.loc 1 322 53 discriminator 1 view .LVU268
	rsb	r3, r3, r3, lsl #3
	lsls	r3, r3, #1
	.loc 1 322 18 discriminator 1 view .LVU269
	str	r3, [r4, #56]
	.loc 1 325 7 is_stmt 1 discriminator 1 view .LVU270
.L87:
	.loc 1 325 60 is_stmt 0 view .LVU271
	movs	r3, #0
.L89:
	.loc 1 328 58 discriminator 4 view .LVU272
	cmp	r2, #5
	.loc 1 328 53 discriminator 4 view .LVU273
	itte	gt
	rsbgt	r2, r2, r2, lsl #3
	lslgt	r2, r2, #1
	.loc 1 328 58 discriminator 4 view .LVU274
	movle	r2, #0
	.loc 1 325 18 discriminator 4 view .LVU275
	str	r3, [r4, #64]
	.loc 1 328 7 is_stmt 1 discriminator 4 view .LVU276
	.loc 1 328 18 is_stmt 0 discriminator 4 view .LVU277
	str	r2, [r4, #60]
	b	.L84
.L86:
	.loc 1 325 60 discriminator 4 view .LVU278
	adds	r1, r3, #5
	.loc 1 322 18 discriminator 4 view .LVU279
	str	r6, [r4, #56]
	.loc 1 325 7 is_stmt 1 discriminator 4 view .LVU280
	.loc 1 325 60 is_stmt 0 discriminator 4 view .LVU281
	bge	.L87
	.loc 1 325 55 discriminator 1 view .LVU282
	sub	r3, r3, r3, lsl #3
	lsls	r3, r3, #1
	b	.L89
.L97:
	.align	2
.L96:
	.word	.LC0
	.word	1073743872
	.cfi_endproc
.LFE116:
	.size	startSlaveNodeSYS, .-startSlaveNodeSYS
	.align	1
	.p2align 2,,3
	.global	DMA2_Stream1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream1_IRQHandler, %function
DMA2_Stream1_IRQHandler:
.LFB117:
	.loc 1 342 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 344 5 view .LVU284
	.loc 1 344 12 is_stmt 0 view .LVU285
	ldr	r3, .L109
	ldr	r2, [r3]
	.loc 1 344 7 view .LVU286
	lsls	r1, r2, #21
	.loc 1 345 9 is_stmt 1 view .LVU287
	.loc 1 350 5 view .LVU288
	.loc 1 345 21 is_stmt 0 view .LVU289
	itt	mi
	movmi	r2, #1024
	strmi	r2, [r3, #8]
	.loc 1 350 12 view .LVU290
	ldr	r3, .L109
	ldr	r2, [r3]
	.loc 1 350 7 view .LVU291
	lsls	r2, r2, #20
	bpl	.L98
	.loc 1 351 9 is_stmt 1 view .LVU292
	.loc 1 351 21 is_stmt 0 view .LVU293
	mov	r2, #2048
	str	r2, [r3, #8]
	.loc 1 353 9 is_stmt 1 view .LVU294
	.loc 1 353 26 is_stmt 0 view .LVU295
	ldr	r0, [r3, #40]
	.loc 1 355 27 view .LVU296
	ldr	r1, .L109+4
	ldr	r2, .L109+8
	ldr	r3, .L109+12
	tst	r0, #524288
	it	eq
	moveq	r3, r1
	.loc 1 361 22 view .LVU297
	movs	r1, #1
	str	r3, [r2, #8]
	.loc 1 361 9 is_stmt 1 view .LVU298
	.loc 1 361 22 is_stmt 0 view .LVU299
	strb	r1, [r2, #12]
.L98:
	.loc 1 363 1 view .LVU300
	bx	lr
.L110:
	.align	2
.L109:
	.word	1073898496
	.word	frame_buffer1
	.word	.LANCHOR0
	.word	frame_buffer0
	.cfi_endproc
.LFE117:
	.size	DMA2_Stream1_IRQHandler, .-DMA2_Stream1_IRQHandler
	.align	1
	.p2align 2,,3
	.global	autic_dma_interrupt
	.syntax unified
	.thumb
	.thumb_func
	.type	autic_dma_interrupt, %function
autic_dma_interrupt:
.LFB118:
	.loc 1 366 28 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	ldr	r9, .L126+4
.LBB24:
.LBB25:
	.loc 1 199 3 is_stmt 0 view .LVU302
	ldr	r5, .L126
.LBE25:
.LBE24:
	.loc 1 366 28 view .LVU303
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
.LBB29:
.LBB26:
	.loc 1 197 13 view .LVU304
	movw	r7, #21930
.LBE26:
.LBE29:
	.loc 1 371 26 view .LVU305
	movs	r6, #0
.L112:
	.loc 1 367 5 is_stmt 1 view .LVU306
	.loc 1 368 9 view .LVU307
	.loc 1 368 12 is_stmt 0 view .LVU308
	ldrb	r3, [r9, #12]	@ zero_extendqisi2
	.loc 1 368 11 view .LVU309
	cmp	r3, #0
	beq	.L112
	.loc 1 370 13 is_stmt 1 view .LVU310
	ldr	r4, [r9, #8]
.LVL65:
.LBB30:
.LBI24:
	.loc 1 191 6 view .LVU311
.LBB27:
	.loc 1 193 3 view .LVU312
	.loc 1 194 3 view .LVU313
	.loc 1 197 3 view .LVU314
	.loc 1 198 3 view .LVU315
	.loc 1 197 13 is_stmt 0 view .LVU316
	strh	r7, [sp]	@ movhi
	.loc 1 199 3 is_stmt 1 view .LVU317
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL66:
	.loc 1 201 3 view .LVU318
	.loc 1 201 17 view .LVU319
	add	r8, r4, #38400
	.loc 1 194 15 is_stmt 0 view .LVU320
	movs	r3, #0
	b	.L114
.LVL67:
.L113:
	.loc 1 201 28 is_stmt 1 view .LVU321
	.loc 1 201 17 view .LVU322
	cmp	r4, r8
	beq	.L124
.LVL68:
.L114:
	.loc 1 203 5 view .LVU323
	.loc 1 203 17 is_stmt 0 view .LVU324
	add	r2, r3, #32
	add	r2, sp, r2
	.loc 1 203 41 view .LVU325
	ldrh	r1, [r4]
	.loc 1 203 19 view .LVU326
	strb	r1, [r2, #-32]
	.loc 1 204 42 view .LVU327
	ldrh	r1, [r4]
.LVL69:
	.loc 1 204 5 is_stmt 1 view .LVU328
	.loc 1 204 17 is_stmt 0 view .LVU329
	add	r2, r3, #33
.LVL70:
	.loc 1 204 17 view .LVU330
	add	r2, sp, r2
	.loc 1 204 13 view .LVU331
	adds	r3, r3, #2
.LVL71:
	.loc 1 204 19 view .LVU332
	ubfx	r1, r1, #8, #8
	.loc 1 207 8 view .LVU333
	cmp	r3, #32
	.loc 1 201 17 view .LVU334
	add	r4, r4, #2
	.loc 1 204 19 view .LVU335
	strb	r1, [r2, #-32]
	.loc 1 207 5 is_stmt 1 view .LVU336
	.loc 1 207 8 is_stmt 0 view .LVU337
	bne	.L113
	.loc 1 208 7 is_stmt 1 view .LVU338
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL72:
	.loc 1 209 7 view .LVU339
	.loc 1 201 17 is_stmt 0 view .LVU340
	cmp	r4, r8
	.loc 1 209 9 view .LVU341
	mov	r3, #0
.LVL73:
	.loc 1 201 28 is_stmt 1 view .LVU342
	.loc 1 201 17 view .LVU343
	bne	.L114
.L124:
	.loc 1 214 3 view .LVU344
	.loc 1 214 6 is_stmt 0 view .LVU345
	cbnz	r3, .L125
.LVL74:
.L115:
	.loc 1 214 6 view .LVU346
.LBE27:
.LBE30:
	.loc 1 371 13 is_stmt 1 view .LVU347
	.loc 1 371 26 is_stmt 0 view .LVU348
	strb	r6, [r9, #12]
	b	.L112
.LVL75:
.L125:
.LBB31:
.LBB28:
	.loc 1 215 5 is_stmt 1 view .LVU349
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL76:
	.loc 1 215 5 is_stmt 0 view .LVU350
	b	.L115
.L127:
	.align	2
.L126:
	.word	c_nrf_slave_addr
	.word	.LANCHOR0
.LBE28:
.LBE31:
	.cfi_endproc
.LFE118:
	.size	autic_dma_interrupt, .-autic_dma_interrupt
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"izvrsavamo inicijalizaciju za Nrf modul\012\012\012"
	.ascii	"\000"
	.align	2
.LC2:
	.ascii	"\012\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwwwwwwwwwwwwwwwwww\012\000"
	.align	2
.LC3:
	.ascii	"w                   nRF24L01 Tx[1]-Rx[0] => [%d]   "
	.ascii	"            w\012\000"
	.align	2
.LC4:
	.ascii	"wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwwwwwwwwww\012\000"
	.align	2
.LC5:
	.ascii	"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"
	.ascii	"WWW\012\000"
	.align	2
.LC6:
	.ascii	"WWWWWWWWWWW  Circular buffer od OV7679   WWWWWWWWWW"
	.ascii	"WWW\012\000"
	.align	2
.LC7:
	.ascii	"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWwWWWW"
	.ascii	"WWW\012\012\012\000"
	.align	2
.LC8:
	.ascii	"==================================================="
	.ascii	"=============\012\000"
	.align	2
.LC9:
	.ascii	"DCMI inicijalizacija je zavrsena, vrsimo provjeru: "
	.ascii	"\012\012\000"
	.align	2
.LC10:
	.ascii	"###################################################"
	.ascii	"##############\012\000"
	.align	2
.LC11:
	.ascii	"Da li su upisane vrijednosti u nRF modul ???\012\000"
	.align	2
.LC12:
	.ascii	"NRF24L01_RF_SETUP = 0x%xh\012\000"
	.align	2
.LC13:
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
	.loc 1 46 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 3 view .LVU352
	.loc 1 46 1 is_stmt 0 view .LVU353
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 47 11 view .LVU354
	movs	r3, #0
	.loc 1 50 5 view .LVU355
	movs	r0, #45
	.loc 1 47 11 view .LVU356
	strb	r3, [sp, #7]
	.loc 1 50 5 is_stmt 1 view .LVU357
	bl	initUSART2
.LVL77:
	.loc 1 51 5 view .LVU358
	bl	initSYSTIMER_TIM7
.LVL78:
	.loc 1 52 5 view .LVU359
	bl	initSYSTIMER
.LVL79:
	.loc 1 55 3 view .LVU360
	ldr	r0, .L135
	bl	printUSART2
.LVL80:
	.loc 1 57 3 view .LVU361
	bl	initGPIOC6_GND
.LVL81:
	.loc 1 58 3 view .LVU362
	movs	r0, #10
	bl	delay_ms
.LVL82:
	.loc 1 59 3 view .LVU363
	add	r0, sp, #7
	bl	chkConnection_GPIOC6_GND
.LVL83:
	.loc 1 61 3 view .LVU364
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	bl	initnRF24L01
.LVL84:
	.loc 1 62 3 view .LVU365
	mov	r0, #1000
	bl	delay_ms
.LVL85:
	.loc 1 65 3 view .LVU366
	ldr	r0, .L135+4
	bl	printUSART2
.LVL86:
	.loc 1 66 3 view .LVU367
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r0, .L135+8
	bl	printUSART2
.LVL87:
	.loc 1 67 3 view .LVU368
	ldr	r0, .L135+12
	bl	printUSART2
.LVL88:
	.loc 1 72 3 view .LVU369
	.loc 1 72 6 is_stmt 0 view .LVU370
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L133
	.loc 1 126 5 is_stmt 1 view .LVU371
	bl	initPWM
.LVL89:
	.loc 1 127 5 view .LVU372
	movs	r0, #10
	bl	delay_ms
.LVL90:
	.loc 1 129 5 view .LVU373
	bl	initLIS320DL
.LVL91:
	.loc 1 130 5 view .LVU374
	movs	r0, #10
	bl	delay_ms
.LVL92:
	.loc 1 132 5 view .LVU375
	movs	r0, #1
	bl	initnRF24L01_SPI3
.LVL93:
	.loc 1 133 5 view .LVU376
	mov	r0, #1000
	bl	delay_ms
.LVL94:
.L130:
	.loc 1 137 3 view .LVU377
	movs	r0, #200
	bl	delay_ms
.LVL95:
	.loc 1 138 3 view .LVU378
	ldr	r0, .L135+16
	bl	printUSART2
.LVL96:
	.loc 1 139 3 view .LVU379
	ldr	r0, .L135+20
	bl	printUSART2
.LVL97:
	.loc 1 140 3 view .LVU380
	.loc 1 140 46 is_stmt 0 view .LVU381
	movs	r0, #6
	bl	getRegNRF24L01
.LVL98:
	mov	r1, r0
	.loc 1 140 3 view .LVU382
	ldr	r0, .L135+24
	bl	printUSART2
.LVL99:
	.loc 1 141 3 is_stmt 1 view .LVU383
	.loc 1 141 43 is_stmt 0 view .LVU384
	movs	r0, #1
	bl	getRegNRF24L01
.LVL100:
	mov	r1, r0
	.loc 1 141 3 view .LVU385
	ldr	r0, .L135+28
	bl	printUSART2
.LVL101:
	.loc 1 142 3 is_stmt 1 view .LVU386
	ldr	r0, .L135+16
	bl	printUSART2
.LVL102:
	.loc 1 146 3 view .LVU387
	.loc 1 146 6 is_stmt 0 view .LVU388
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L134
	.loc 1 150 5 is_stmt 1 view .LVU389
	bl	kontroler_double_buffer
.LVL103:
.L133:
	.loc 1 76 3 view .LVU390
	ldr	r0, .L135+32
	bl	printUSART2
.LVL104:
	.loc 1 77 3 view .LVU391
	ldr	r0, .L135+36
	bl	printUSART2
.LVL105:
	.loc 1 78 3 view .LVU392
	ldr	r0, .L135+40
	bl	printUSART2
.LVL106:
	.loc 1 85 3 view .LVU393
	bl	OV7670_XCLK_TIM1_init
.LVL107:
	.loc 1 86 3 view .LVU394
	movs	r0, #100
	bl	delay_ms
.LVL108:
	.loc 1 92 3 view .LVU395
	bl	getOV7670_ID
.LVL109:
	.loc 1 93 3 view .LVU396
	movs	r0, #50
	bl	delay_ms
.LVL110:
	.loc 1 100 3 view .LVU397
	bl	OV7670_SetupQQVGA_Custom_sa_neta
.LVL111:
	.loc 1 101 3 view .LVU398
	mov	r0, #1000
	bl	delay_ms
.LVL112:
	.loc 1 106 3 view .LVU399
	bl	OV7670_VerifyRegisters_Custom
.LVL113:
	.loc 1 107 3 view .LVU400
	ldr	r0, .L135+44
	bl	printUSART2
.LVL114:
	.loc 1 110 3 view .LVU401
	bl	DCMI_Init_OV7670_continuous_mode
.LVL115:
	.loc 1 112 3 view .LVU402
	ldr	r0, .L135+48
	bl	printUSART2
.LVL116:
	.loc 1 113 3 view .LVU403
	bl	DCMI_CheckConfig
.LVL117:
	.loc 1 116 3 view .LVU404
	ldr	r1, .L135+52
	ldr	r0, .L135+56
	mov	r2, #19200
	bl	initDMA2_for_OV7670_continuous_mode_double_buffer
.LVL118:
	.loc 1 117 3 view .LVU405
	movs	r0, #100
	bl	delay_ms
.LVL119:
	.loc 1 119 3 view .LVU406
	bl	checkDMA2_Stream1_status
.LVL120:
	.loc 1 123 3 view .LVU407
	bl	DCMI_start_continuous_mode
.LVL121:
	b	.L130
.L134:
	.loc 1 148 5 view .LVU408
	bl	autic_dma_interrupt
.LVL122:
.L136:
	.align	2
.L135:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	frame_buffer1
	.word	frame_buffer0
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.global	accel_data
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
	.type	accel_data, %object
	.size	accel_data, 3
accel_data:
	.space	3
	.space	1
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
	.file 6 "lis302dl/lis302dl.h"
	.file 7 "check/check.h"
	.file 8 "led/led.h"
	.file 9 "./dma/dma.h"
	.file 10 "ov7670/ov7670.h"
	.file 11 "gpio/gpioc.h"
	.file 12 "delay/delay.h"
	.file 13 "usart/usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd9a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1d
	.4byte	.LASF106
	.4byte	.LASF107
	.4byte	.LLRL25
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x22
	.byte	0x17
	.4byte	0x31
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x5d
	.uleb128 0x12
	.4byte	0x4d
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x11
	.4byte	.LASF7
	.byte	0x31
	.byte	0x19
	.4byte	0x74
	.uleb128 0x12
	.4byte	0x64
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x34
	.byte	0x19
	.4byte	0x8b
	.uleb128 0x12
	.4byte	0x7b
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x27
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x17
	.byte	0x18
	.2byte	0x1d7
	.4byte	0xf7
	.uleb128 0x6
	.ascii	"CR\000"
	.2byte	0x1d9
	.4byte	0x86
	.byte	0
	.uleb128 0x3
	.4byte	.LASF13
	.2byte	0x1da
	.4byte	0x86
	.byte	0x4
	.uleb128 0x6
	.ascii	"PAR\000"
	.2byte	0x1db
	.4byte	0x86
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF14
	.2byte	0x1dc
	.4byte	0x86
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF15
	.2byte	0x1dd
	.4byte	0x86
	.byte	0x10
	.uleb128 0x6
	.ascii	"FCR\000"
	.2byte	0x1de
	.4byte	0x86
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF16
	.2byte	0x1df
	.4byte	0xa7
	.uleb128 0x17
	.byte	0x10
	.2byte	0x1e1
	.4byte	0x13b
	.uleb128 0x3
	.4byte	.LASF17
	.2byte	0x1e3
	.4byte	0x86
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.2byte	0x1e4
	.4byte	0x86
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.2byte	0x1e5
	.4byte	0x86
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF20
	.2byte	0x1e6
	.4byte	0x86
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF21
	.2byte	0x1e7
	.4byte	0x102
	.uleb128 0x17
	.byte	0x54
	.2byte	0x369
	.4byte	0x2fd
	.uleb128 0x6
	.ascii	"CR1\000"
	.2byte	0x36b
	.4byte	0x6f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.2byte	0x36c
	.4byte	0x64
	.byte	0x2
	.uleb128 0x6
	.ascii	"CR2\000"
	.2byte	0x36d
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF23
	.2byte	0x36e
	.4byte	0x64
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF24
	.2byte	0x36f
	.4byte	0x6f
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF25
	.2byte	0x370
	.4byte	0x64
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x371
	.4byte	0x6f
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF27
	.2byte	0x372
	.4byte	0x64
	.byte	0xe
	.uleb128 0x6
	.ascii	"SR\000"
	.2byte	0x373
	.4byte	0x6f
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF28
	.2byte	0x374
	.4byte	0x64
	.byte	0x12
	.uleb128 0x6
	.ascii	"EGR\000"
	.2byte	0x375
	.4byte	0x6f
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF29
	.2byte	0x376
	.4byte	0x64
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF30
	.2byte	0x377
	.4byte	0x6f
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF31
	.2byte	0x378
	.4byte	0x64
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF32
	.2byte	0x379
	.4byte	0x6f
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x37a
	.4byte	0x64
	.byte	0x1e
	.uleb128 0x3
	.4byte	.LASF34
	.2byte	0x37b
	.4byte	0x6f
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF35
	.2byte	0x37c
	.4byte	0x64
	.byte	0x22
	.uleb128 0x6
	.ascii	"CNT\000"
	.2byte	0x37d
	.4byte	0x86
	.byte	0x24
	.uleb128 0x6
	.ascii	"PSC\000"
	.2byte	0x37e
	.4byte	0x6f
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x37f
	.4byte	0x64
	.byte	0x2a
	.uleb128 0x6
	.ascii	"ARR\000"
	.2byte	0x380
	.4byte	0x86
	.byte	0x2c
	.uleb128 0x6
	.ascii	"RCR\000"
	.2byte	0x381
	.4byte	0x6f
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF37
	.2byte	0x382
	.4byte	0x64
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF38
	.2byte	0x383
	.4byte	0x86
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF39
	.2byte	0x384
	.4byte	0x86
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF40
	.2byte	0x385
	.4byte	0x86
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x386
	.4byte	0x86
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF42
	.2byte	0x387
	.4byte	0x6f
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x388
	.4byte	0x64
	.byte	0x46
	.uleb128 0x6
	.ascii	"DCR\000"
	.2byte	0x389
	.4byte	0x6f
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF44
	.2byte	0x38a
	.4byte	0x64
	.byte	0x4a
	.uleb128 0x3
	.4byte	.LASF45
	.2byte	0x38b
	.4byte	0x6f
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF46
	.2byte	0x38c
	.4byte	0x64
	.byte	0x4e
	.uleb128 0x6
	.ascii	"OR\000"
	.2byte	0x38d
	.4byte	0x6f
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF47
	.2byte	0x38e
	.4byte	0x64
	.byte	0x52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF48
	.2byte	0x38f
	.4byte	0x146
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF49
	.uleb128 0x1e
	.4byte	0x308
	.uleb128 0x13
	.4byte	0x6f
	.4byte	0x325
	.uleb128 0x28
	.4byte	0xa0
	.2byte	0x4aff
	.byte	0
	.uleb128 0x12
	.4byte	0x314
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x4
	.byte	0xe
	.byte	0x1a
	.4byte	0x325
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x4
	.byte	0x11
	.byte	0x1a
	.4byte	0x325
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x4
	.byte	0x12
	.byte	0x1a
	.4byte	0x325
	.uleb128 0x13
	.4byte	0x30f
	.4byte	0x35e
	.uleb128 0x19
	.4byte	0xa0
	.byte	0x5
	.byte	0
	.uleb128 0x1e
	.4byte	0x34e
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.byte	0x99
	.byte	0x13
	.4byte	0x35e
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x5
	.byte	0x9c
	.byte	0x13
	.4byte	0x35e
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.4byte	.LASF55
	.uleb128 0xe
	.4byte	0x308
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x23
	.byte	0x14
	.4byte	0x398
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_to_send
	.uleb128 0xe
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x24
	.byte	0x12
	.4byte	0x58
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer_ready
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x26
	.byte	0x12
	.4byte	0x58
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_ready
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x27
	.byte	0x12
	.4byte	0x58
	.uleb128 0x5
	.byte	0x3
	.4byte	citamo_buffer
	.uleb128 0x13
	.4byte	0x26
	.4byte	0x3e0
	.uleb128 0x19
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x2a
	.byte	0x8
	.4byte	0x3d0
	.uleb128 0x5
	.byte	0x3
	.4byte	accel_data
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x5
	.byte	0xe5
	.4byte	0x402
	.uleb128 0x4
	.4byte	0x402
	.byte	0
	.uleb128 0xe
	.4byte	0x4d
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0xe4
	.4byte	0x4d
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0xe3
	.4byte	0x4d
	.4byte	0x42a
	.uleb128 0x4
	.4byte	0x402
	.uleb128 0x4
	.4byte	0x402
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x6
	.byte	0x25
	.4byte	0x43b
	.uleb128 0x4
	.4byte	0x43b
	.byte	0
	.uleb128 0xe
	.4byte	0x26
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x7
	.byte	0x39
	.4byte	0x456
	.uleb128 0x4
	.4byte	0x398
	.uleb128 0x4
	.4byte	0x7b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x5
	.byte	0xc5
	.4byte	0x467
	.uleb128 0x4
	.4byte	0x402
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF66
	.byte	0xc4
	.4byte	0x4d
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0xc0
	.4byte	0x4d
	.4byte	0x48a
	.uleb128 0x4
	.4byte	0x402
	.uleb128 0x4
	.4byte	0x402
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0xbd
	.4byte	0x4d
	.4byte	0x49e
	.uleb128 0x4
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x5
	.byte	0xd7
	.4byte	0x4af
	.uleb128 0x4
	.4byte	0x4d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x6
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x8
	.byte	0x9
	.4byte	0x4c3
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x4
	.byte	0x30
	.4byte	0x4d0
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x9
	.byte	0xc
	.4byte	0x4f2
	.uleb128 0x4
	.4byte	0x398
	.uleb128 0x4
	.4byte	0x398
	.uleb128 0x4
	.4byte	0x64
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x4
	.byte	0x2f
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x7
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa
	.byte	0x26
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0xa
	.byte	0x1b
	.4byte	0x51b
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xa
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x5
	.byte	0xb8
	.4byte	0x533
	.uleb128 0x4
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0xb
	.byte	0xa
	.4byte	0x544
	.uleb128 0x4
	.4byte	0x402
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0xc
	.byte	0x9
	.4byte	0x555
	.uleb128 0x4
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xb
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0xd
	.byte	0x10
	.4byte	0x56e
	.uleb128 0x4
	.4byte	0x382
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xc
	.byte	0x11
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xc
	.byte	0x17
	.4byte	0x582
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0xd
	.byte	0xe
	.4byte	0x593
	.uleb128 0x4
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF90
	.2byte	0x16e
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x648
	.uleb128 0x29
	.4byte	0x84d
	.4byte	.LBI24
	.byte	.LVU311
	.4byte	.LLRL20
	.byte	0x1
	.2byte	0x172
	.byte	0xd
	.uleb128 0xc
	.4byte	0x865
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xc
	.4byte	0x85a
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x15
	.4byte	.LLRL20
	.uleb128 0x16
	.4byte	0x870
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	0x87c
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xa
	.4byte	0x885
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x2
	.4byte	.LVL66
	.4byte	0x471
	.4byte	0x615
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
	.4byte	.LVL72
	.4byte	0x471
	.4byte	0x62f
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
	.4byte	.LVL76
	.4byte	0x471
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
	.uleb128 0x2a
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x155
	.byte	0x6
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF91
	.2byte	0x135
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c2
	.uleb128 0x2b
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x136
	.byte	0xb
	.4byte	0x4d
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x20
	.4byte	.LASF94
	.2byte	0x137
	.byte	0xa
	.4byte	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LVL61
	.4byte	0x407
	.uleb128 0x2
	.4byte	.LVL63
	.4byte	0x3f1
	.4byte	0x6b1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LVL64
	.4byte	0x55c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF93
	.2byte	0x11e
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70f
	.uleb128 0x20
	.4byte	.LASF95
	.2byte	0x11f
	.byte	0xc
	.4byte	0x402
	.uleb128 0x6
	.byte	0x3
	.4byte	accel_data
	.byte	0x9f
	.uleb128 0x2
	.4byte	.LVL40
	.4byte	0x42a
	.4byte	0x6fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.4byte	.LVL41
	.4byte	0x411
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe6
	.byte	0x6
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80c
	.uleb128 0x21
	.4byte	.LASF50
	.byte	0xe6
	.byte	0x20
	.4byte	0x80c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0xe6
	.byte	0x37
	.4byte	0x7b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0xe8
	.byte	0xd
	.4byte	0x811
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0xe9
	.byte	0xe
	.4byte	0x7b
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0xea
	.byte	0xe
	.4byte	0x7b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0xf0
	.byte	0xc
	.4byte	0x402
	.uleb128 0x6
	.byte	0x3
	.4byte	accel_data
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x7ca
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x1
	.byte	0xfe
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x15
	.4byte	.LLRL17
	.uleb128 0x1d
	.4byte	.LASF100
	.byte	0xff
	.byte	0x1a
	.4byte	0x7b
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL45
	.4byte	0x467
	.uleb128 0x2
	.4byte	.LVL46
	.4byte	0x456
	.4byte	0x7e7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL57
	.4byte	0x440
	.4byte	0x802
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
	.uleb128 0x5
	.4byte	.LVL58
	.4byte	0x6c2
	.byte	0
	.uleb128 0xe
	.4byte	0x64
	.uleb128 0x13
	.4byte	0x4d
	.4byte	0x821
	.uleb128 0x19
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0xdd
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84d
	.uleb128 0xb
	.4byte	.LVL60
	.4byte	0x70f
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
	.uleb128 0x2f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xbf
	.byte	0x6
	.byte	0x1
	.4byte	0x88f
	.uleb128 0x23
	.4byte	.LASF50
	.byte	0xbf
	.byte	0x26
	.4byte	0x398
	.uleb128 0x23
	.4byte	.LASF96
	.byte	0xbf
	.byte	0x3d
	.4byte	0x7b
	.uleb128 0x30
	.4byte	.LASF97
	.byte	0x1
	.byte	0xc1
	.byte	0xb
	.4byte	0x811
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0xc2
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x24
	.ascii	"j\000"
	.byte	0xc2
	.byte	0xf
	.4byte	0x7b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0xa0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d4
	.uleb128 0x31
	.4byte	0x84d
	.4byte	.LBI6
	.byte	.LVU61
	.4byte	.LLRL0
	.byte	0x1
	.byte	0xb3
	.byte	0x9
	.4byte	0x93d
	.uleb128 0xc
	.4byte	0x865
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x25
	.4byte	0x85a
	.uleb128 0x15
	.4byte	.LLRL0
	.uleb128 0x16
	.4byte	0x870
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	0x87c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xa
	.4byte	0x885
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	0x471
	.4byte	0x90b
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
	.4byte	0x471
	.4byte	0x925
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
	.4byte	0x471
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
	.uleb128 0x32
	.4byte	0x84d
	.4byte	.LBI12
	.byte	.LVU13
	.4byte	.LLRL4
	.byte	0x1
	.byte	0xa9
	.byte	0x9
	.uleb128 0xc
	.4byte	0x865
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x25
	.4byte	0x85a
	.uleb128 0x15
	.4byte	.LLRL4
	.uleb128 0x16
	.4byte	0x870
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	0x87c
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xa
	.4byte	0x885
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	0x471
	.4byte	0x9a1
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
	.4byte	0x471
	.4byte	0x9bb
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
	.4byte	0x471
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
	.uleb128 0x33
	.4byte	.LASF110
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0d
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x2f
	.byte	0xb
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2
	.4byte	.LVL77
	.4byte	0x582
	.4byte	0xa10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x5
	.4byte	.LVL78
	.4byte	0x575
	.uleb128 0x5
	.4byte	.LVL79
	.4byte	0x56e
	.uleb128 0x2
	.4byte	.LVL80
	.4byte	0x55c
	.4byte	0xa39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x5
	.4byte	.LVL81
	.4byte	0x555
	.uleb128 0x2
	.4byte	.LVL82
	.4byte	0x544
	.4byte	0xa55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL83
	.4byte	0x533
	.4byte	0xa69
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LVL84
	.4byte	0x522
	.uleb128 0x2
	.4byte	.LVL85
	.4byte	0x544
	.4byte	0xa87
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL86
	.4byte	0x55c
	.4byte	0xa9e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL87
	.4byte	0x55c
	.4byte	0xab5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2
	.4byte	.LVL88
	.4byte	0x55c
	.4byte	0xacc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x5
	.4byte	.LVL89
	.4byte	0x4b6
	.uleb128 0x2
	.4byte	.LVL90
	.4byte	0x544
	.4byte	0xae8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x5
	.4byte	.LVL91
	.4byte	0x4af
	.uleb128 0x2
	.4byte	.LVL92
	.4byte	0x544
	.4byte	0xb04
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL93
	.4byte	0x49e
	.4byte	0xb17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL94
	.4byte	0x544
	.4byte	0xb2c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL95
	.4byte	0x544
	.4byte	0xb40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL96
	.4byte	0x55c
	.4byte	0xb57
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2
	.4byte	.LVL97
	.4byte	0x55c
	.4byte	0xb6e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x2
	.4byte	.LVL98
	.4byte	0x48a
	.4byte	0xb81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2
	.4byte	.LVL99
	.4byte	0x55c
	.4byte	0xb98
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x2
	.4byte	.LVL100
	.4byte	0x48a
	.4byte	0xbab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL101
	.4byte	0x55c
	.4byte	0xbc2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x2
	.4byte	.LVL102
	.4byte	0x55c
	.4byte	0xbd9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x5
	.4byte	.LVL103
	.4byte	0x821
	.uleb128 0x2
	.4byte	.LVL104
	.4byte	0x55c
	.4byte	0xbf9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2
	.4byte	.LVL105
	.4byte	0x55c
	.4byte	0xc10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL106
	.4byte	0x55c
	.4byte	0xc27
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x5
	.4byte	.LVL107
	.4byte	0x51b
	.uleb128 0x2
	.4byte	.LVL108
	.4byte	0x544
	.4byte	0xc44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x5
	.4byte	.LVL109
	.4byte	0x50e
	.uleb128 0x2
	.4byte	.LVL110
	.4byte	0x544
	.4byte	0xc61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	.LVL111
	.4byte	0x507
	.uleb128 0x2
	.4byte	.LVL112
	.4byte	0x544
	.4byte	0xc7f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x5
	.4byte	.LVL113
	.4byte	0x500
	.uleb128 0x2
	.4byte	.LVL114
	.4byte	0x55c
	.4byte	0xc9f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x5
	.4byte	.LVL115
	.4byte	0x4f9
	.uleb128 0x2
	.4byte	.LVL116
	.4byte	0x55c
	.4byte	0xcbf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x5
	.4byte	.LVL117
	.4byte	0x4f2
	.uleb128 0x2
	.4byte	.LVL118
	.4byte	0x4d7
	.4byte	0xcdd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.uleb128 0x2
	.4byte	.LVL119
	.4byte	0x544
	.4byte	0xcf1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x5
	.4byte	.LVL120
	.4byte	0x4d0
	.uleb128 0x5
	.4byte	.LVL121
	.4byte	0x4c3
	.uleb128 0x5
	.4byte	.LVL122
	.4byte	0x593
	.byte	0
	.uleb128 0x34
	.4byte	0x84d
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	0x85a
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xc
	.4byte	0x865
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x16
	.4byte	0x870
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	0x87c
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xa
	.4byte	0x885
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2
	.4byte	.LVL27
	.4byte	0x471
	.4byte	0xd6c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL33
	.4byte	0x471
	.4byte	0xd86
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
	.4byte	0x471
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
.LVUS21:
	.uleb128 .LVU311
	.uleb128 .LVU346
	.uleb128 .LVU349
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL74-.LVL65
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.LVL65
	.uleb128 .LFE118-.LVL65
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4b00
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU311
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU346
	.uleb128 .LVU349
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL67-.LVL65
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL67-.LVL65
	.uleb128 .LVL74-.LVL65
	.uleb128 0x5
	.byte	0x78
	.sleb128 -38400
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.LVL65
	.uleb128 .LFE118-.LVL65
	.uleb128 0x5
	.byte	0x78
	.sleb128 -38400
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU319
	.uleb128 .LVU321
.LLST23:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LVL67-.LVL66
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU314
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU339
	.uleb128 .LVU340
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU346
	.uleb128 .LVU349
	.uleb128 .LVU350
.LLST24:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL67-.LVL65
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL65
	.uleb128 .LVL69-.LVL65
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL69-.LVL65
	.uleb128 .LVL70-.LVL65
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL70-.LVL65
	.uleb128 .LVL71-.LVL65
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
	.uleb128 .LVL71-.LVL65
	.uleb128 .LVL72-1-.LVL65
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL72-.LVL65
	.uleb128 .LVL73-.LVL65
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.LVL65
	.uleb128 .LVL74-.LVL65
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL75-.LVL65
	.uleb128 .LVL76-1-.LVL65
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS19:
	.uleb128 .LVU254
	.uleb128 .LVU257
.LLST19:
	.byte	0x8
	.4byte	.LVL61
	.uleb128 .LVL62-.LVL61
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL44-.LVL42
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-.LVL42
	.uleb128 .LFE114-.LVL42
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL44-.LVL42
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL44-.LVL42
	.uleb128 .LFE114-.LVL42
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU192
	.uleb128 .LVU197
	.uleb128 .LVU204
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU237
.LLST14:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL44-.LVL42
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL42
	.uleb128 .LVL49-.LVL42
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL49-.LVL42
	.uleb128 .LVL50-.LVL42
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL42
	.uleb128 .LVL53-.LVL42
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL53-.LVL42
	.uleb128 .LVL54-.LVL42
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.LVL42
	.uleb128 .LVL59-.LVL42
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS15:
	.uleb128 .LVU195
	.uleb128 0
.LLST15:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LFE114-.LVL43
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS16:
	.uleb128 .LVU204
	.uleb128 .LVU237
.LLST16:
	.byte	0x8
	.4byte	.LVL47
	.uleb128 .LVL59-.LVL47
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU205
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU211
	.uleb128 .LVU213
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU230
.LLST18:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LVL51-.LVL48
	.uleb128 0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.LVL48
	.uleb128 .LVL53-.LVL48
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL48
	.uleb128 .LVL55-.LVL48
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
.LLRL20:
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
.LLRL25:
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
.LASF52:
	.ascii	"frame_buffer1\000"
.LASF51:
	.ascii	"frame_buffer0\000"
.LASF95:
	.ascii	"send_msg\000"
.LASF71:
	.ascii	"initPWM\000"
.LASF26:
	.ascii	"DIER\000"
.LASF14:
	.ascii	"M0AR\000"
.LASF81:
	.ascii	"OV7670_XCLK_TIM1_init\000"
.LASF85:
	.ascii	"initGPIOC6_GND\000"
.LASF48:
	.ascii	"TIM_TypeDef\000"
.LASF105:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF57:
	.ascii	"buffer_ready\000"
.LASF42:
	.ascii	"BDTR\000"
.LASF89:
	.ascii	"initUSART2\000"
.LASF30:
	.ascii	"CCMR1\000"
.LASF32:
	.ascii	"CCMR2\000"
.LASF3:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF80:
	.ascii	"getOV7670_ID\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF37:
	.ascii	"RESERVED10\000"
.LASF43:
	.ascii	"RESERVED11\000"
.LASF44:
	.ascii	"RESERVED12\000"
.LASF46:
	.ascii	"RESERVED13\000"
.LASF47:
	.ascii	"RESERVED14\000"
.LASF2:
	.ascii	"long int\000"
.LASF34:
	.ascii	"CCER\000"
.LASF63:
	.ascii	"send_frame_buffer\000"
.LASF94:
	.ascii	"nrf_data\000"
.LASF104:
	.ascii	"node_type\000"
.LASF74:
	.ascii	"checkDMA2_Stream1_status\000"
.LASF68:
	.ascii	"txDataNRF24L01\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF69:
	.ascii	"getRegNRF24L01\000"
.LASF78:
	.ascii	"OV7670_VerifyRegisters_Custom\000"
.LASF107:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/kod_sa_3_stm32.BACKUP\000"
.LASF99:
	.ascii	"total_bytes\000"
.LASF21:
	.ascii	"DMA_TypeDef\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF103:
	.ascii	"autic_double_buffer\000"
.LASF7:
	.ascii	"uint16_t\000"
.LASF58:
	.ascii	"frame_ready\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"c_nrf_slave_addr_spi3\000"
.LASF72:
	.ascii	"DCMI_start_continuous_mode\000"
.LASF24:
	.ascii	"SMCR\000"
.LASF83:
	.ascii	"chkConnection_GPIOC6_GND\000"
.LASF61:
	.ascii	"rxDataNRF24L01_SPI3\000"
.LASF106:
	.ascii	"main.c\000"
.LASF18:
	.ascii	"HISR\000"
.LASF82:
	.ascii	"initnRF24L01\000"
.LASF50:
	.ascii	"frame_buffer\000"
.LASF86:
	.ascii	"printUSART2\000"
.LASF19:
	.ascii	"LIFCR\000"
.LASF59:
	.ascii	"citamo_buffer\000"
.LASF75:
	.ascii	"initDMA2_for_OV7670_continuous_mode_double_buffer\000"
.LASF77:
	.ascii	"DCMI_Init_OV7670_continuous_mode\000"
.LASF90:
	.ascii	"autic_dma_interrupt\000"
.LASF97:
	.ascii	"packet\000"
.LASF79:
	.ascii	"OV7670_SetupQQVGA_Custom_sa_neta\000"
.LASF22:
	.ascii	"RESERVED0\000"
.LASF23:
	.ascii	"RESERVED1\000"
.LASF25:
	.ascii	"RESERVED2\000"
.LASF27:
	.ascii	"RESERVED3\000"
.LASF28:
	.ascii	"RESERVED4\000"
.LASF29:
	.ascii	"RESERVED5\000"
.LASF31:
	.ascii	"RESERVED6\000"
.LASF35:
	.ascii	"RESERVED8\000"
.LASF36:
	.ascii	"RESERVED9\000"
.LASF87:
	.ascii	"initSYSTIMER\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF108:
	.ascii	"DMA2_Stream1_IRQHandler\000"
.LASF65:
	.ascii	"dataReadyNRF24L01_SPI3\000"
.LASF1:
	.ascii	"short int\000"
.LASF88:
	.ascii	"initSYSTIMER_TIM7\000"
.LASF102:
	.ascii	"sendFrameNRF\000"
.LASF53:
	.ascii	"c_nrf_slave_addr\000"
.LASF84:
	.ascii	"delay_ms\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF33:
	.ascii	"RESERVED7\000"
.LASF109:
	.ascii	"receiveFrameNRF\000"
.LASF98:
	.ascii	"bytes_received\000"
.LASF55:
	.ascii	"long double\000"
.LASF96:
	.ascii	"length\000"
.LASF60:
	.ascii	"accel_data\000"
.LASF49:
	.ascii	"char\000"
.LASF101:
	.ascii	"kontroler_double_buffer\000"
.LASF45:
	.ascii	"DMAR\000"
.LASF100:
	.ascii	"index\000"
.LASF13:
	.ascii	"NDTR\000"
.LASF16:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF93:
	.ascii	"startMasterNodeSYS\000"
.LASF92:
	.ascii	"is_data_ready\000"
.LASF66:
	.ascii	"dataReadyNRF24L01\000"
.LASF4:
	.ascii	"int8_t\000"
.LASF15:
	.ascii	"M1AR\000"
.LASF64:
	.ascii	"rxDataNRF24L01\000"
.LASF38:
	.ascii	"CCR1\000"
.LASF39:
	.ascii	"CCR2\000"
.LASF40:
	.ascii	"CCR3\000"
.LASF41:
	.ascii	"CCR4\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF62:
	.ascii	"getDataLIS302DL\000"
.LASF70:
	.ascii	"initnRF24L01_SPI3\000"
.LASF67:
	.ascii	"txDataNRF24L01_SPI3\000"
.LASF73:
	.ascii	"initLIS320DL\000"
.LASF76:
	.ascii	"DCMI_CheckConfig\000"
.LASF110:
	.ascii	"main\000"
.LASF20:
	.ascii	"HIFCR\000"
.LASF91:
	.ascii	"startSlaveNodeSYS\000"
.LASF17:
	.ascii	"LISR\000"
.LASF56:
	.ascii	"frame_to_send\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

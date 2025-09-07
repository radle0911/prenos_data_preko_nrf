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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "usart/misc.c"
	.align	1
	.p2align 2,,3
	.global	getDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.type	getDNumMISC, %function
getDNumMISC:
.LVL0:
.LFB110:
	.loc 1 4 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 5 5 view .LVU1
	.loc 1 6 5 view .LVU2
	.loc 1 8 5 view .LVU3
	.loc 1 4 1 is_stmt 0 view .LVU4
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 6 14 view .LVU5
	ldr	r2, .L10
	.loc 1 16 14 view .LVU6
	ldr	r5, .L10+4
	.loc 1 8 19 is_stmt 1 view .LVU7
	.loc 1 4 1 is_stmt 0 view .LVU8
	mov	r4, r0
	.loc 1 10 21 view .LVU9
	movs	r6, #48
	adds	r0, r0, #10
.LVL1:
.L4:
	.loc 1 10 9 is_stmt 1 view .LVU10
	.loc 1 10 21 is_stmt 0 view .LVU11
	subs	r0, r0, #1
.LVL2:
	.loc 1 11 9 is_stmt 1 view .LVU12
	.loc 1 11 20 view .LVU13
	cmp	r1, r2
	.loc 1 10 21 is_stmt 0 view .LVU14
	it	cc
	strbcc	r6, [r0]
	.loc 1 11 20 view .LVU15
	bcc	.L3
	.loc 1 11 20 view .LVU16
	movs	r3, #49
.L2:
	.loc 1 13 13 is_stmt 1 view .LVU17
	.loc 1 14 13 view .LVU18
	.loc 1 14 17 is_stmt 0 view .LVU19
	subs	r1, r1, r2
.LVL3:
	.loc 1 11 20 is_stmt 1 view .LVU20
	add	ip, r3, #1
	cmp	r1, r2
	mov	lr, r3
	uxtb	r3, ip
	bcs	.L2
	strb	lr, [r0]
.L3:
	.loc 1 16 9 discriminator 2 view .LVU21
	.loc 1 16 14 is_stmt 0 discriminator 2 view .LVU22
	umull	r3, r2, r5, r2
.LVL4:
	.loc 1 8 19 discriminator 2 view .LVU23
	cmp	r0, r4
	.loc 1 16 14 discriminator 2 view .LVU24
	lsr	r2, r2, #3
.LVL5:
	.loc 1 8 26 is_stmt 1 discriminator 2 view .LVU25
	.loc 1 8 19 discriminator 2 view .LVU26
	bne	.L4
	.loc 1 18 1 is_stmt 0 view .LVU27
	pop	{r4, r5, r6, pc}
.LVL6:
.L11:
	.loc 1 18 1 view .LVU28
	.align	2
.L10:
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE110:
	.size	getDNumMISC, .-getDNumMISC
	.align	1
	.p2align 2,,3
	.global	putDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.type	putDNumMISC, %function
putDNumMISC:
.LVL7:
.LFB111:
	.loc 1 21 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 22 5 view .LVU30
	.loc 1 24 5 view .LVU31
	.loc 1 24 19 view .LVU32
	.loc 1 21 1 is_stmt 0 view .LVU33
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	adds	r0, r0, #9
.LVL8:
	.loc 1 26 9 is_stmt 1 view .LVU34
	mov	ip, #0
.LVL9:
.L14:
	.loc 1 28 13 view .LVU35
	.loc 1 28 22 is_stmt 0 view .LVU36
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 28 16 view .LVU37
	cmp	r3, #48
	beq	.L23
.LVL10:
.L13:
	.loc 1 30 17 is_stmt 1 view .LVU38
	.loc 1 31 17 view .LVU39
	.loc 1 31 24 is_stmt 0 view .LVU40
	ldrh	lr, [r1]
	.loc 1 31 29 view .LVU41
	strb	r3, [r2, lr]
	.loc 1 32 17 is_stmt 1 view .LVU42
	.loc 1 32 21 is_stmt 0 view .LVU43
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	b	.L16
.L24:
	.loc 1 37 31 view .LVU44
	ldrb	lr, [r0]	@ zero_extendqisi2
	.loc 1 37 25 view .LVU45
	strb	lr, [r2, r3]
	.loc 1 38 13 is_stmt 1 view .LVU46
	.loc 1 38 17 is_stmt 0 view .LVU47
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
.L16:
	.loc 1 24 19 discriminator 2 view .LVU48
	add	ip, ip, #1
.LVL11:
	.loc 1 26 9 is_stmt 1 discriminator 2 view .LVU49
	.loc 1 37 13 discriminator 2 view .LVU50
	.loc 1 24 19 is_stmt 0 discriminator 2 view .LVU51
	cmp	ip, #10
	.loc 1 32 21 discriminator 2 view .LVU52
	strh	r3, [r1]	@ movhi
	.loc 1 24 26 is_stmt 1 discriminator 2 view .LVU53
.LVL12:
	.loc 1 24 19 discriminator 2 view .LVU54
	add	r0, r0, #-1
	bne	.L24
	.loc 1 41 6 view .LVU55
	.loc 1 41 18 is_stmt 0 view .LVU56
	movs	r1, #0
.LVL13:
	.loc 1 41 18 view .LVU57
	strb	r1, [r2, r3]
	.loc 1 42 1 view .LVU58
	ldr	pc, [sp], #4
.LVL14:
.L23:
	.loc 1 24 26 is_stmt 1 discriminator 1 view .LVU59
	.loc 1 24 19 discriminator 1 view .LVU60
	.loc 1 28 37 is_stmt 0 discriminator 1 view .LVU61
	cmp	ip, #9
	beq	.L13
	.loc 1 24 19 view .LVU62
	add	ip, ip, #1
.LVL15:
	.loc 1 24 19 view .LVU63
	subs	r0, r0, #1
.LVL16:
	.loc 1 26 9 is_stmt 1 view .LVU64
	b	.L14
	.cfi_endproc
.LFE111:
	.size	putDNumMISC, .-putDNumMISC
	.align	1
	.p2align 2,,3
	.global	getStr4NumMISC
	.syntax unified
	.thumb
	.thumb_func
	.type	getStr4NumMISC, %function
getStr4NumMISC:
.LVL17:
.LFB112:
	.loc 1 45 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 5 view .LVU66
	.loc 1 48 5 view .LVU67
	.loc 1 49 5 view .LVU68
	.loc 1 50 5 view .LVU69
	.loc 1 45 1 is_stmt 0 view .LVU70
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 48
	.loc 1 50 14 view .LVU71
	movs	r3, #0
	.loc 1 53 5 view .LVU72
	cmp	r0, #256
	.loc 1 50 14 view .LVU73
	strh	r3, [sp, #2]	@ movhi
	.loc 1 51 5 is_stmt 1 view .LVU74
	.loc 1 51 13 is_stmt 0 view .LVU75
	strb	r3, [r2]
	.loc 1 53 5 is_stmt 1 view .LVU76
	beq	.L26
	bhi	.L27
	subs	r0, r0, #1
.LVL18:
	.loc 1 53 5 is_stmt 0 view .LVU77
	uxth	r3, r0
	cmp	r3, #31
	bhi	.L25
	cmp	r0, #31
	bhi	.L25
	tbb	[pc, r0]
.L30:
	.byte	(.L33-.L30)/2
	.byte	(.L32-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L31-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L29-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L29-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L25-.L30)/2
	.byte	(.L29-.L30)/2
	.p2align 1
.L29:
	.loc 1 110 4 is_stmt 1 view .LVU78
.LVL19:
	.loc 1 111 13 view .LVU79
	.loc 1 111 16 is_stmt 0 view .LVU80
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L46
	.loc 1 113 17 is_stmt 1 view .LVU81
	.loc 1 113 25 is_stmt 0 view .LVU82
	movs	r3, #45
	strb	r3, [r2]
	.loc 1 114 17 is_stmt 1 view .LVU83
	.loc 1 115 38 is_stmt 0 view .LVU84
	ldr	r3, [r1]
	.loc 1 114 18 view .LVU85
	movs	r0, #1
	.loc 1 115 38 view .LVU86
	rsbs	r3, r3, #0
	.loc 1 114 18 view .LVU87
	strh	r0, [sp, #2]	@ movhi
	.loc 1 115 17 is_stmt 1 view .LVU88
	.loc 1 115 26 is_stmt 0 view .LVU89
	str	r3, [r1]
.L46:
	.loc 1 118 13 is_stmt 1 view .LVU90
.LBB14:
.LBB15:
	.loc 1 6 14 is_stmt 0 view .LVU91
	ldr	r0, .L108
	.loc 1 16 14 view .LVU92
	ldr	r5, .L108+4
.LBE15:
.LBE14:
	.loc 1 118 13 view .LVU93
	mov	r1, r3
.LVL20:
.LBB17:
.LBI14:
	.loc 1 3 6 is_stmt 1 view .LVU94
.LBB16:
	.loc 1 8 19 view .LVU95
	add	r6, sp, #4
.LVL21:
	.loc 1 8 19 is_stmt 0 view .LVU96
	add	r4, sp, #14
	.loc 1 11 20 view .LVU97
	movs	r7, #48
.LVL22:
.L49:
	.loc 1 10 9 is_stmt 1 view .LVU98
	.loc 1 10 21 is_stmt 0 view .LVU99
	subs	r4, r4, #1
.LVL23:
	.loc 1 11 9 is_stmt 1 view .LVU100
	.loc 1 11 20 view .LVU101
	cmp	r0, r1
	.loc 1 10 21 is_stmt 0 view .LVU102
	it	hi
	strbhi	r7, [r4]
	.loc 1 11 20 view .LVU103
	bhi	.L48
	movs	r3, #48
.L47:
	.loc 1 13 13 is_stmt 1 view .LVU104
	.loc 1 14 17 is_stmt 0 view .LVU105
	subs	r1, r1, r0
.LVL24:
	.loc 1 13 24 view .LVU106
	adds	r3, r3, #1
	.loc 1 11 20 view .LVU107
	cmp	r1, r0
	.loc 1 13 24 view .LVU108
	uxtb	r3, r3
	.loc 1 14 13 is_stmt 1 view .LVU109
.LVL25:
	.loc 1 11 20 view .LVU110
	bcs	.L47
	strb	r3, [r4]
.L48:
	.loc 1 16 9 view .LVU111
	.loc 1 16 14 is_stmt 0 view .LVU112
	umull	r3, r0, r5, r0
.LVL26:
	.loc 1 8 19 view .LVU113
	cmp	r4, r6
	.loc 1 16 14 view .LVU114
	lsr	r0, r0, #3
.LVL27:
	.loc 1 8 26 is_stmt 1 view .LVU115
	.loc 1 8 19 view .LVU116
	bne	.L49
	.loc 1 8 19 is_stmt 0 view .LVU117
	add	r9, sp, #2
.LVL28:
.L68:
	.loc 1 8 19 view .LVU118
.LBE16:
.LBE17:
	.loc 1 119 13 is_stmt 1 view .LVU119
	mov	r1, r9
	mov	r0, r6
	bl	putDNumMISC
.LVL29:
	.loc 1 120 4 view .LVU120
.L25:
	.loc 1 283 1 is_stmt 0 view .LVU121
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL30:
.L27:
	.cfi_restore_state
	.loc 1 53 5 view .LVU122
	cmp	r0, #1024
	beq	.L34
	cmp	r0, #2048
	bne	.L106
	ldr	r3, [r1]
	mov	r0, r2
.LVL31:
	.loc 1 53 5 view .LVU123
	add	r5, r2, #8
.L78:
.LBB18:
	.loc 1 262 17 is_stmt 1 view .LVU124
	.loc 1 265 21 view .LVU125
	.loc 1 269 21 view .LVU126
	.loc 1 263 20 is_stmt 0 view .LVU127
	cmp	r3, #-1610612736
	.loc 1 262 23 view .LVU128
	lsr	r4, r3, #28
.LVL32:
	.loc 1 263 17 is_stmt 1 view .LVU129
	.loc 1 265 37 is_stmt 0 view .LVU130
	add	r3, r4, #48
	.loc 1 269 44 view .LVU131
	itet	cs
	addcs	r4, r4, #55
.LVL33:
	.loc 1 265 29 view .LVU132
	strbcc	r3, [r0]
	.loc 1 269 29 view .LVU133
	strbcs	r4, [r0]
	.loc 1 271 17 is_stmt 1 view .LVU134
	.loc 1 271 33 is_stmt 0 view .LVU135
	ldr	r3, [r1]
.LVL34:
	.loc 1 260 23 view .LVU136
	adds	r0, r0, #1
	.loc 1 271 33 view .LVU137
	lsls	r3, r3, #4
	.loc 1 260 23 view .LVU138
	cmp	r5, r0
	.loc 1 271 24 view .LVU139
	str	r3, [r1]
	.loc 1 272 17 is_stmt 1 view .LVU140
	.loc 1 260 27 view .LVU141
	.loc 1 260 23 view .LVU142
	bne	.L78
.LVL35:
.L105:
	.loc 1 274 13 view .LVU143
	.loc 1 274 21 is_stmt 0 view .LVU144
	movs	r3, #0
	strb	r3, [r2, #8]
	.loc 1 275 4 is_stmt 1 view .LVU145
.LBE18:
	.loc 1 283 1 is_stmt 0 view .LVU146
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL36:
.L106:
	.cfi_restore_state
	.loc 1 53 5 view .LVU147
	cmp	r0, #512
	bne	.L25
.LBB19:
	.loc 1 222 17 is_stmt 1 view .LVU148
	.loc 1 222 47 is_stmt 0 view .LVU149
	ldr	r3, [r1]
	.loc 1 222 23 view .LVU150
	ubfx	r3, r3, #4, #4
.LVL37:
	.loc 1 223 17 is_stmt 1 view .LVU151
	.loc 1 229 21 view .LVU152
	.loc 1 225 21 view .LVU153
	.loc 1 223 20 is_stmt 0 view .LVU154
	cmp	r3, #9
	.loc 1 229 44 view .LVU155
	ite	hi
	addhi	r3, r3, #55
.LVL38:
	.loc 1 225 37 view .LVU156
	addls	r3, r3, #48
	.loc 1 229 29 view .LVU157
	strb	r3, [r2]
.LVL39:
	.loc 1 231 17 is_stmt 1 view .LVU158
	.loc 1 231 27 is_stmt 0 view .LVU159
	ldr	r3, [r1]
	.loc 1 222 23 view .LVU160
	and	r0, r3, #15
.LVL40:
	.loc 1 223 20 view .LVU161
	cmp	r0, #9
	.loc 1 225 37 view .LVU162
	ite	ls
	addls	r0, r0, #48
	.loc 1 229 44 view .LVU163
	addhi	r0, r0, #55
	.loc 1 231 33 view .LVU164
	lsls	r3, r3, #4
	.loc 1 232 17 is_stmt 1 view .LVU165
	.loc 1 220 27 view .LVU166
	.loc 1 220 23 view .LVU167
	.loc 1 222 17 view .LVU168
.LVL41:
	.loc 1 223 17 view .LVU169
	.loc 1 225 21 view .LVU170
	.loc 1 229 21 view .LVU171
	.loc 1 231 24 is_stmt 0 view .LVU172
	str	r3, [r1]
	.loc 1 229 29 view .LVU173
	strb	r0, [r2, #1]
	.loc 1 231 17 is_stmt 1 view .LVU174
	.loc 1 231 33 is_stmt 0 view .LVU175
	ldr	r3, [r1]
	.loc 1 234 21 view .LVU176
	movs	r0, #0
	.loc 1 231 33 view .LVU177
	lsls	r3, r3, #4
	.loc 1 231 24 view .LVU178
	str	r3, [r1]
	.loc 1 232 17 is_stmt 1 view .LVU179
	.loc 1 220 27 view .LVU180
	.loc 1 220 23 view .LVU181
	.loc 1 234 13 view .LVU182
	.loc 1 234 21 is_stmt 0 view .LVU183
	strb	r0, [r2, #2]
	.loc 1 235 4 is_stmt 1 view .LVU184
.LBE19:
	.loc 1 283 1 is_stmt 0 view .LVU185
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L33:
	.cfi_restore_state
	.loc 1 283 1 view .LVU186
	ldr	r3, [r1]
	mov	r0, r2
	add	r4, r2, #8
	.loc 1 65 14 view .LVU187
	movs	r6, #48
	.loc 1 61 14 view .LVU188
	movs	r5, #49
.L39:
	.loc 1 59 5 is_stmt 1 view .LVU189
	.loc 1 61 6 view .LVU190
	.loc 1 65 6 view .LVU191
	.loc 1 59 7 is_stmt 0 view .LVU192
	lsls	r7, r3, #24
	.loc 1 61 14 view .LVU193
	ite	mi
	strbmi	r5, [r0]
	.loc 1 65 14 view .LVU194
	strbpl	r6, [r0]
	.loc 1 67 5 is_stmt 1 view .LVU195
	.loc 1 67 18 is_stmt 0 view .LVU196
	ldr	r3, [r1]
	.loc 1 57 13 view .LVU197
	adds	r0, r0, #1
	.loc 1 67 18 view .LVU198
	lsls	r3, r3, #1
	.loc 1 57 13 view .LVU199
	cmp	r0, r4
	.loc 1 67 10 view .LVU200
	str	r3, [r1]
	.loc 1 57 17 is_stmt 1 view .LVU201
	.loc 1 57 13 view .LVU202
	bne	.L39
	b	.L105
.L32:
	.loc 1 57 13 is_stmt 0 view .LVU203
	ldr	r3, [r1]
	mov	r0, r2
	add	r4, r2, #16
	.loc 1 82 14 view .LVU204
	movs	r6, #48
	.loc 1 78 14 view .LVU205
	movs	r5, #49
.L42:
	.loc 1 76 5 is_stmt 1 view .LVU206
	.loc 1 78 6 view .LVU207
	.loc 1 82 6 view .LVU208
	.loc 1 76 7 is_stmt 0 view .LVU209
	lsls	r3, r3, #16
	.loc 1 78 14 view .LVU210
	ite	mi
	strbmi	r5, [r0]
	.loc 1 82 14 view .LVU211
	strbpl	r6, [r0]
	.loc 1 84 5 is_stmt 1 view .LVU212
	.loc 1 84 18 is_stmt 0 view .LVU213
	ldr	r3, [r1]
	.loc 1 74 13 view .LVU214
	adds	r0, r0, #1
	.loc 1 84 18 view .LVU215
	lsls	r3, r3, #1
	.loc 1 74 13 view .LVU216
	cmp	r0, r4
	.loc 1 84 10 view .LVU217
	str	r3, [r1]
	.loc 1 74 18 is_stmt 1 view .LVU218
	.loc 1 74 13 view .LVU219
	bne	.L42
	.loc 1 86 4 view .LVU220
	.loc 1 86 12 is_stmt 0 view .LVU221
	movs	r3, #0
	strb	r3, [r2, #16]
	.loc 1 87 4 is_stmt 1 view .LVU222
	.loc 1 283 1 is_stmt 0 view .LVU223
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L31:
	.cfi_restore_state
	.loc 1 283 1 view .LVU224
	ldr	r3, [r1]
	mov	r0, r2
	add	r4, r2, #32
	.loc 1 99 14 view .LVU225
	movs	r5, #48
	.loc 1 95 14 view .LVU226
	movs	r6, #49
.L45:
	.loc 1 93 5 is_stmt 1 view .LVU227
	.loc 1 95 6 view .LVU228
	.loc 1 99 6 view .LVU229
	.loc 1 93 7 is_stmt 0 view .LVU230
	cmp	r3, #0
	.loc 1 95 14 view .LVU231
	ite	lt
	strblt	r6, [r0]
	.loc 1 99 14 view .LVU232
	strbge	r5, [r0]
	.loc 1 101 5 is_stmt 1 view .LVU233
	.loc 1 101 18 is_stmt 0 view .LVU234
	ldr	r3, [r1]
	.loc 1 91 13 view .LVU235
	adds	r0, r0, #1
	.loc 1 101 18 view .LVU236
	lsls	r3, r3, #1
	.loc 1 91 13 view .LVU237
	cmp	r4, r0
	.loc 1 101 10 view .LVU238
	str	r3, [r1]
	.loc 1 91 18 is_stmt 1 view .LVU239
	.loc 1 91 13 view .LVU240
	bne	.L45
	.loc 1 103 4 view .LVU241
	.loc 1 103 12 is_stmt 0 view .LVU242
	movs	r3, #0
	strb	r3, [r2, #32]
	.loc 1 104 4 is_stmt 1 view .LVU243
	.loc 1 283 1 is_stmt 0 view .LVU244
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL42:
.L26:
	.cfi_restore_state
.LBB20:
	.loc 1 153 4 is_stmt 1 view .LVU245
	.loc 1 154 4 view .LVU246
	.loc 1 154 10 is_stmt 0 view .LVU247
	vldr.32	s13, [r1]
.LVL43:
	.loc 1 155 4 is_stmt 1 view .LVU248
	.loc 1 156 4 view .LVU249
	.loc 1 157 4 view .LVU250
	.loc 1 159 13 view .LVU251
	.loc 1 159 16 is_stmt 0 view .LVU252
	vcmpe.f32	s13, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L50
	.loc 1 161 17 is_stmt 1 view .LVU253
	.loc 1 161 25 is_stmt 0 view .LVU254
	movs	r1, #45
.LVL44:
	.loc 1 162 18 view .LVU255
	movs	r3, #1
	.loc 1 161 25 view .LVU256
	strb	r1, [r2]
	.loc 1 162 17 is_stmt 1 view .LVU257
	.loc 1 162 18 is_stmt 0 view .LVU258
	strh	r3, [sp, #2]	@ movhi
	.loc 1 163 17 is_stmt 1 view .LVU259
	.loc 1 163 23 is_stmt 0 view .LVU260
	vneg.f32	s13, s13
.LVL45:
.L50:
	.loc 1 166 13 is_stmt 1 view .LVU261
	.loc 1 166 16 is_stmt 0 view .LVU262
	vmov.f32	s15, #1.0e+0
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L52
.LVL46:
	.loc 1 181 30 is_stmt 1 view .LVU263
	ble	.L107
	movs	r3, #0
	.loc 1 183 28 is_stmt 0 view .LVU264
	vmov.f32	s12, #1.0e+1
.LVL47:
.L53:
	.loc 1 183 21 is_stmt 1 view .LVU265
	.loc 1 183 28 is_stmt 0 view .LVU266
	vmul.f32	s15, s15, s12
.LVL48:
	.loc 1 184 21 is_stmt 1 view .LVU267
	.loc 1 181 30 view .LVU268
	mov	r4, r3
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	add	r3, r3, #1
.LVL49:
	.loc 1 181 30 is_stmt 0 view .LVU269
	bgt	.L53
	.loc 1 186 24 view .LVU270
	vdiv.f32	s14, s15, s12
	uxth	r4, r4
.LVL50:
.L54:
	.loc 1 186 17 is_stmt 1 view .LVU271
	.loc 1 187 17 view .LVU272
	.loc 1 155 12 is_stmt 0 view .LVU273
	movs	r7, #32
.LVL51:
.L55:
	.loc 1 190 13 is_stmt 1 view .LVU274
	add	r8, sp, #14
.LBB21:
.LBB22:
	.loc 1 6 14 is_stmt 0 view .LVU275
	ldr	r0, .L108
.LVL52:
	.loc 1 16 14 view .LVU276
	ldr	lr, .L108+4
	add	r6, sp, #4
.LBE22:
.LBE21:
	.loc 1 194 20 view .LVU277
	mov	ip, r8
.LBB25:
.LBB23:
	.loc 1 10 21 view .LVU278
	mov	r9, #48
.LBE23:
.LBE25:
	.loc 1 190 19 view .LVU279
	vdiv.f32	s15, s13, s14
.LVL53:
	.loc 1 191 13 is_stmt 1 view .LVU280
	.loc 1 194 38 is_stmt 0 view .LVU281
	vldr.32	s14, .L108+8
.LVL54:
	.loc 1 191 20 view .LVU282
	vcvt.u32.f32	s13, s15
	vmov	r1, s13	@ int
.LVL55:
	.loc 1 193 13 is_stmt 1 view .LVU283
	.loc 1 194 13 view .LVU284
	.loc 1 193 29 is_stmt 0 view .LVU285
	vcvt.f32.u32	s13, s13
	.loc 1 193 19 view .LVU286
	vsub.f32	s15, s15, s13
.LVL56:
	.loc 1 194 38 view .LVU287
	vmul.f32	s15, s15, s14
.LVL57:
	.loc 1 194 20 view .LVU288
	vcvt.u32.f32	s15, s15
	vmov	r5, s15	@ int
.LVL58:
	.loc 1 196 13 is_stmt 1 view .LVU289
.LBB26:
.LBI21:
	.loc 1 3 6 view .LVU290
.LBB24:
	.loc 1 8 19 view .LVU291
.L60:
	.loc 1 10 9 view .LVU292
	.loc 1 10 21 is_stmt 0 view .LVU293
	add	ip, ip, #-1
.LVL59:
	.loc 1 11 9 is_stmt 1 view .LVU294
	.loc 1 11 20 view .LVU295
	cmp	r0, r1
	.loc 1 10 21 is_stmt 0 view .LVU296
	it	hi
	strbhi	r9, [ip]
	.loc 1 11 20 view .LVU297
	bhi	.L59
	.loc 1 11 20 view .LVU298
	movs	r3, #49
.L58:
	.loc 1 13 13 is_stmt 1 view .LVU299
	.loc 1 14 13 view .LVU300
	.loc 1 14 17 is_stmt 0 view .LVU301
	subs	r1, r1, r0
.LVL60:
	.loc 1 11 20 is_stmt 1 view .LVU302
	mov	r10, r3
	cmp	r1, r0
	add	r3, r3, #1
	uxtb	r3, r3
	bcs	.L58
	strb	r10, [ip]
.L59:
	.loc 1 16 9 view .LVU303
	.loc 1 16 14 is_stmt 0 view .LVU304
	umull	r3, r0, lr, r0
.LVL61:
	.loc 1 8 19 view .LVU305
	cmp	ip, r6
	.loc 1 16 14 view .LVU306
	lsr	r0, r0, #3
.LVL62:
	.loc 1 8 26 is_stmt 1 view .LVU307
	.loc 1 8 19 view .LVU308
	bne	.L60
.LVL63:
	.loc 1 8 19 is_stmt 0 view .LVU309
.LBE24:
.LBE26:
	.loc 1 197 13 is_stmt 1 view .LVU310
	add	r9, sp, #2
	mov	r1, r9
	mov	r0, r6
	bl	putDNumMISC
.LVL64:
	.loc 1 199 13 view .LVU311
.LBB27:
.LBI27:
	.loc 1 3 6 view .LVU312
.LBB28:
	.loc 1 8 19 view .LVU313
	.loc 1 6 14 is_stmt 0 view .LVU314
	ldr	r1, .L108
	.loc 1 16 14 view .LVU315
	ldr	ip, .L108+4
.LBE28:
.LBE27:
	.loc 1 197 13 view .LVU316
	mov	r0, r8
.LBB30:
.LBB29:
	.loc 1 11 20 view .LVU317
	mov	lr, #48
.LVL65:
.L63:
	.loc 1 10 9 is_stmt 1 view .LVU318
	.loc 1 10 21 is_stmt 0 view .LVU319
	subs	r0, r0, #1
.LVL66:
	.loc 1 11 9 is_stmt 1 view .LVU320
	.loc 1 11 20 view .LVU321
	cmp	r1, r5
	.loc 1 10 21 is_stmt 0 view .LVU322
	it	hi
	strbhi	lr, [r0]
	.loc 1 11 20 view .LVU323
	bhi	.L62
	.loc 1 11 20 view .LVU324
	movs	r3, #48
.L61:
	.loc 1 13 13 is_stmt 1 view .LVU325
	.loc 1 14 17 is_stmt 0 view .LVU326
	subs	r5, r5, r1
.LVL67:
	.loc 1 13 24 view .LVU327
	adds	r3, r3, #1
	.loc 1 11 20 view .LVU328
	cmp	r5, r1
	.loc 1 13 24 view .LVU329
	uxtb	r3, r3
	.loc 1 14 13 is_stmt 1 view .LVU330
.LVL68:
	.loc 1 11 20 view .LVU331
	bcs	.L61
	strb	r3, [r0]
.L62:
	.loc 1 16 9 view .LVU332
	.loc 1 16 14 is_stmt 0 view .LVU333
	umull	r3, r1, ip, r1
.LVL69:
	.loc 1 8 19 view .LVU334
	cmp	r0, r6
	.loc 1 16 14 view .LVU335
	lsr	r1, r1, #3
.LVL70:
	.loc 1 8 26 is_stmt 1 view .LVU336
	.loc 1 8 19 view .LVU337
	bne	.L63
.LVL71:
	.loc 1 8 19 is_stmt 0 view .LVU338
.LBE29:
.LBE30:
	.loc 1 200 13 is_stmt 1 view .LVU339
	.loc 1 200 21 is_stmt 0 view .LVU340
	movs	r3, #46
	.loc 1 201 13 view .LVU341
	mov	r1, r9
	mov	r0, r6
	.loc 1 200 21 view .LVU342
	strb	r3, [sp, #7]
	.loc 1 201 13 is_stmt 1 view .LVU343
	bl	putDNumMISC
.LVL72:
	.loc 1 203 13 view .LVU344
	.loc 1 203 17 is_stmt 0 view .LVU345
	ldrh	r1, [sp, #2]
	.loc 1 203 21 view .LVU346
	movs	r3, #101
	strb	r3, [r2, r1]
	.loc 1 204 13 is_stmt 1 view .LVU347
	.loc 1 204 14 is_stmt 0 view .LVU348
	adds	r3, r1, #1
	uxth	r3, r3
	.loc 1 206 16 view .LVU349
	cmp	r7, #45
	.loc 1 204 14 view .LVU350
	strh	r3, [sp, #2]	@ movhi
	.loc 1 206 13 is_stmt 1 view .LVU351
	.loc 1 206 16 is_stmt 0 view .LVU352
	bne	.L64
	.loc 1 208 17 is_stmt 1 view .LVU353
	.loc 1 209 18 is_stmt 0 view .LVU354
	adds	r1, r1, #2
	.loc 1 208 25 view .LVU355
	strb	r7, [r2, r3]
	.loc 1 209 17 is_stmt 1 view .LVU356
	.loc 1 209 18 is_stmt 0 view .LVU357
	strh	r1, [sp, #2]	@ movhi
.L64:
	.loc 1 212 13 is_stmt 1 view .LVU358
.LVL73:
.LBB31:
.LBI31:
	.loc 1 3 6 view .LVU359
.LBB32:
	.loc 1 8 19 view .LVU360
	.loc 1 6 14 is_stmt 0 view .LVU361
	ldr	r1, .L108
	.loc 1 16 14 view .LVU362
	ldr	r7, .L108+4
.LVL74:
	.loc 1 10 21 view .LVU363
	mov	ip, #48
.LVL75:
.L67:
	.loc 1 10 9 is_stmt 1 view .LVU364
	.loc 1 10 21 is_stmt 0 view .LVU365
	add	r8, r8, #-1
.LVL76:
	.loc 1 11 9 is_stmt 1 view .LVU366
	.loc 1 11 20 view .LVU367
	cmp	r1, r4
	.loc 1 10 21 is_stmt 0 view .LVU368
	it	hi
	strbhi	ip, [r8]
	.loc 1 11 20 view .LVU369
	bhi	.L66
	movs	r3, #49
.L65:
	.loc 1 13 13 is_stmt 1 view .LVU370
	.loc 1 14 13 view .LVU371
	.loc 1 14 17 is_stmt 0 view .LVU372
	subs	r4, r4, r1
.LVL77:
	.loc 1 11 20 is_stmt 1 view .LVU373
	adds	r0, r3, #1
	cmp	r4, r1
	mov	r5, r3
	uxtb	r3, r0
	bcs	.L65
	strb	r5, [r8]
.L66:
	.loc 1 16 9 view .LVU374
	.loc 1 16 14 is_stmt 0 view .LVU375
	umull	r3, r1, r7, r1
.LVL78:
	.loc 1 8 19 view .LVU376
	cmp	r8, r6
	.loc 1 16 14 view .LVU377
	lsr	r1, r1, #3
.LVL79:
	.loc 1 8 26 is_stmt 1 view .LVU378
	.loc 1 8 19 view .LVU379
	bne	.L67
	.loc 1 8 19 is_stmt 0 view .LVU380
	b	.L68
.LVL80:
.L34:
	.loc 1 8 19 view .LVU381
	ldr	r3, [r1]
	mov	r0, r2
.LVL81:
	.loc 1 8 19 view .LVU382
	adds	r5, r2, #4
.L75:
.LBE32:
.LBE31:
.LBE20:
.LBB33:
	.loc 1 242 17 is_stmt 1 view .LVU383
	.loc 1 245 21 view .LVU384
	.loc 1 249 21 view .LVU385
	.loc 1 242 23 is_stmt 0 view .LVU386
	ubfx	r3, r3, #12, #4
.LVL82:
	.loc 1 243 17 is_stmt 1 view .LVU387
	.loc 1 243 20 is_stmt 0 view .LVU388
	cmp	r3, #9
	.loc 1 245 37 view .LVU389
	add	r4, r3, #48
	.loc 1 249 44 view .LVU390
	itet	hi
	addhi	r3, r3, #55
.LVL83:
	.loc 1 245 29 view .LVU391
	strbls	r4, [r0]
	.loc 1 249 29 view .LVU392
	strbhi	r3, [r0]
	.loc 1 251 17 is_stmt 1 view .LVU393
	.loc 1 251 33 is_stmt 0 view .LVU394
	ldr	r3, [r1]
	.loc 1 240 23 view .LVU395
	adds	r0, r0, #1
	.loc 1 251 33 view .LVU396
	lsls	r3, r3, #4
	.loc 1 240 23 view .LVU397
	cmp	r5, r0
	.loc 1 251 24 view .LVU398
	str	r3, [r1]
	.loc 1 252 17 is_stmt 1 view .LVU399
	.loc 1 240 27 view .LVU400
	.loc 1 240 23 view .LVU401
	bne	.L75
	.loc 1 254 13 view .LVU402
	.loc 1 254 21 is_stmt 0 view .LVU403
	movs	r3, #0
	strb	r3, [r2, #4]
	.loc 1 255 4 is_stmt 1 view .LVU404
.LBE33:
	.loc 1 283 1 is_stmt 0 view .LVU405
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL84:
.L52:
	.cfi_restore_state
.LBB34:
	.loc 1 171 30 is_stmt 1 view .LVU406
	vldr.32	s14, .L108+12
	vcmpe.f32	s13, s14
	vmrs	APSR_nzcv, FPSCR
	.loc 1 170 24 is_stmt 0 view .LVU407
	mov	r4, #1
	.loc 1 171 30 view .LVU408
	bpl	.L102
	.loc 1 173 28 view .LVU409
	vmov.f32	s15, s14
.LVL85:
.L57:
	.loc 1 173 21 is_stmt 1 view .LVU410
	.loc 1 173 28 is_stmt 0 view .LVU411
	vmul.f32	s14, s14, s15
.LVL86:
	.loc 1 174 21 is_stmt 1 view .LVU412
	.loc 1 174 27 is_stmt 0 view .LVU413
	adds	r4, r4, #1
.LVL87:
	.loc 1 171 30 view .LVU414
	vcmpe.f32	s13, s14
	vmrs	APSR_nzcv, FPSCR
	.loc 1 174 27 view .LVU415
	uxth	r4, r4
.LVL88:
	.loc 1 171 30 is_stmt 1 view .LVU416
	bmi	.L57
.LVL89:
.L102:
	.loc 1 168 22 is_stmt 0 view .LVU417
	movs	r7, #45
	b	.L55
.LVL90:
.L107:
	.loc 1 181 30 view .LVU418
	vldr.32	s14, .L108+12
	movw	r4, #65535
	b	.L54
.L109:
	.align	2
.L108:
	.word	1000000000
	.word	-858993459
	.word	1148846080
	.word	1036831949
.LBE34:
	.cfi_endproc
.LFE112:
	.size	getStr4NumMISC, .-getStr4NumMISC
	.align	1
	.p2align 2,,3
	.global	catstrMISC
	.syntax unified
	.thumb
	.thumb_func
	.type	catstrMISC, %function
catstrMISC:
.LVL91:
.LFB113:
	.loc 1 287 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 288 2 view .LVU420
	.loc 1 290 2 view .LVU421
	.loc 1 287 1 is_stmt 0 view .LVU422
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	subs	r2, r0, #1
	.loc 1 290 7 view .LVU423
	movs	r3, #0
	.loc 1 293 5 view .LVU424
	movw	ip, #1025
	.loc 1 290 7 view .LVU425
	b	.L111
.LVL92:
.L112:
	.loc 1 293 5 view .LVU426
	adds	r3, r3, #1
.LVL93:
	.loc 1 293 5 view .LVU427
	cmp	r3, ip
	beq	.L110
.LVL94:
.L111:
	.loc 1 292 3 is_stmt 1 view .LVU428
	.loc 1 293 3 view .LVU429
	.loc 1 290 15 view .LVU430
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L112
	uxth	r3, r3
	.loc 1 290 15 is_stmt 0 view .LVU431
	subs	r2, r1, #1
	add	ip, r1, #1024
	subs	r3, r3, r2
.LVL95:
	.loc 1 290 15 view .LVU432
	b	.L113
.LVL96:
.L115:
	.loc 1 304 5 view .LVU433
	cmp	r2, ip
	.loc 1 301 10 view .LVU434
	strb	r4, [r0, r1]
	.loc 1 302 3 is_stmt 1 view .LVU435
.LVL97:
	.loc 1 303 3 view .LVU436
	.loc 1 304 3 view .LVU437
	.loc 1 304 5 is_stmt 0 view .LVU438
	beq	.L110
.LVL98:
.L113:
	.loc 1 301 3 is_stmt 1 view .LVU439
	adds	r1, r3, r2
	.loc 1 299 11 is_stmt 0 view .LVU440
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	uxth	r1, r1
.LVL99:
	.loc 1 299 15 is_stmt 1 view .LVU441
	cmp	r4, #0
	bne	.L115
.LVL100:
.L110:
	.loc 1 310 1 is_stmt 0 view .LVU442
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE113:
	.size	catstrMISC, .-catstrMISC
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4e7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1d
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x28
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2e
	.byte	0x18
	.4byte	0x66
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x31
	.byte	0x19
	.4byte	0x78
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x34
	.byte	0x19
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x14
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x11e
	.byte	0x6
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb
	.uleb128 0x15
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x11e
	.byte	0x1b
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x11e
	.byte	0x2a
	.4byte	0xfb
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0xb
	.ascii	"k\000"
	.byte	0xb
	.4byte	0x6d
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0xb
	.ascii	"n\000"
	.byte	0x12
	.4byte	0x6d
	.4byte	.LLST42
	.4byte	.LVUS42
	.byte	0
	.uleb128 0x7
	.4byte	0x5b
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x2c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e2
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x2c
	.byte	0x1e
	.4byte	0x6d
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xe
	.ascii	"num\000"
	.byte	0x2c
	.byte	0x30
	.4byte	0x3e2
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x2c
	.byte	0x3f
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x2f
	.byte	0xf
	.4byte	0x3e7
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.ascii	"k\000"
	.byte	0x31
	.4byte	0x5b
	.uleb128 0x18
	.ascii	"m\000"
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x19
	.4byte	.LLRL18
	.4byte	0x317
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x99
	.byte	0xa
	.4byte	0x26
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x9a
	.byte	0xa
	.4byte	0x26
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x9b
	.byte	0xc
	.4byte	0x5b
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x9c
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x9d
	.byte	0xd
	.4byte	0x7f
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x9d
	.byte	0x15
	.4byte	0x7f
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x8
	.4byte	0x46c
	.4byte	.LBI21
	.2byte	.LVU290
	.4byte	.LLRL25
	.byte	0xc4
	.4byte	0x248
	.uleb128 0x3
	.4byte	0x485
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x3
	.4byte	0x479
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x9
	.4byte	.LLRL25
	.uleb128 0x4
	.4byte	0x491
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x4
	.4byte	0x499
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x46c
	.4byte	.LBI27
	.2byte	.LVU312
	.4byte	.LLRL30
	.byte	0xc7
	.4byte	0x297
	.uleb128 0x3
	.4byte	0x485
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x3
	.4byte	0x479
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x9
	.4byte	.LLRL30
	.uleb128 0x4
	.4byte	0x491
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x4
	.4byte	0x499
	.4byte	.LLST34
	.4byte	.LVUS34
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x46c
	.4byte	.LBI31
	.2byte	.LVU359
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0xd4
	.byte	0xd
	.4byte	0x2e6
	.uleb128 0x3
	.4byte	0x485
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x3
	.4byte	0x479
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x4
	.4byte	0x491
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x4
	.4byte	0x499
	.4byte	.LLST38
	.4byte	.LVUS38
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0x3fc
	.4byte	0x300
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL72
	.4byte	0x3fc
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x338
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0xdb
	.byte	0xc
	.4byte	0x5b
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0xa
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x359
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0xef
	.byte	0xc
	.4byte	0x5b
	.4byte	.LLST39
	.4byte	.LVUS39
	.byte	0
	.uleb128 0xa
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x37c
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x103
	.byte	0x15
	.4byte	0x5b
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x8
	.4byte	0x46c
	.4byte	.LBI14
	.2byte	.LVU94
	.4byte	.LLRL11
	.byte	0x76
	.4byte	0x3cb
	.uleb128 0x3
	.4byte	0x485
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x3
	.4byte	0x479
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x9
	.4byte	.LLRL11
	.uleb128 0x4
	.4byte	0x491
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x4
	.4byte	0x499
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL29
	.4byte	0x3fc
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x7
	.4byte	0x42
	.uleb128 0x1d
	.4byte	0x5b
	.4byte	0x3fc
	.uleb128 0x1e
	.4byte	0x2d
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x14
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x467
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x14
	.byte	0x1b
	.4byte	0xfb
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xe
	.ascii	"m\000"
	.byte	0x14
	.byte	0x2b
	.4byte	0x467
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x14
	.byte	0x37
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.ascii	"k\000"
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x16
	.byte	0x14
	.4byte	0x5b
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x7
	.4byte	0x6d
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.byte	0x1
	.4byte	0x4a6
	.uleb128 0x21
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3
	.byte	0x1b
	.4byte	0xfb
	.uleb128 0x22
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3
	.byte	0x2a
	.4byte	0x7f
	.uleb128 0x10
	.ascii	"k\000"
	.byte	0x5
	.4byte	0x5b
	.uleb128 0x23
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.4byte	0x7f
	.byte	0
	.uleb128 0x24
	.4byte	0x46c
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	0x479
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.4byte	0x485
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4
	.4byte	0x491
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x4
	.4byte	0x499
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 288
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
.LVUS40:
	.uleb128 0
	.uleb128 .LVU433
	.uleb128 .LVU433
	.uleb128 .LVU442
	.uleb128 .LVU442
	.uleb128 0
.LLST40:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x4
	.byte	0x7c
	.sleb128 -1024
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LFE113-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU421
	.uleb128 .LVU426
	.uleb128 .LVU426
	.uleb128 .LVU427
	.uleb128 .LVU429
	.uleb128 .LVU430
	.uleb128 .LVU430
	.uleb128 .LVU432
	.uleb128 .LVU433
	.uleb128 .LVU436
	.uleb128 .LVU441
	.uleb128 .LVU442
.LLST41:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS42:
	.uleb128 .LVU421
	.uleb128 .LVU433
	.uleb128 .LVU437
	.uleb128 .LVU439
.LLST42:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LVL98-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7c
	.sleb128 -1025
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU79
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU118
.LLST10:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU263
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU271
	.uleb128 .LVU274
	.uleb128 .LVU282
	.uleb128 .LVU406
	.uleb128 .LVU410
	.uleb128 .LVU410
	.uleb128 .LVU417
	.uleb128 .LVU418
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3dcccccd
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS20:
	.uleb128 .LVU248
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU288
	.uleb128 .LVU406
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0xb
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x71
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS21:
	.uleb128 .LVU249
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU363
	.uleb128 .LVU418
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU263
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU269
	.uleb128 .LVU406
	.uleb128 .LVU410
	.uleb128 .LVU410
	.uleb128 .LVU414
	.uleb128 .LVU416
	.uleb128 .LVU417
	.uleb128 .LVU418
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU289
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU381
.LLST23:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0
.LVUS24:
	.uleb128 .LVU283
	.uleb128 .LVU292
.LLST24:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS26:
	.uleb128 .LVU290
	.uleb128 .LVU309
.LLST26:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS27:
	.uleb128 .LVU290
	.uleb128 .LVU309
.LLST27:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS28:
	.uleb128 .LVU291
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU294
	.uleb128 .LVU308
	.uleb128 .LVU309
.LLST28:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU291
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU305
	.uleb128 .LVU307
	.uleb128 .LVU309
.LLST29:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS31:
	.uleb128 .LVU312
	.uleb128 .LVU327
	.uleb128 .LVU331
	.uleb128 .LVU338
.LLST31:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS32:
	.uleb128 .LVU312
	.uleb128 .LVU338
.LLST32:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS33:
	.uleb128 .LVU313
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 .LVU337
	.uleb128 .LVU338
.LLST33:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU313
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU334
	.uleb128 .LVU336
	.uleb128 .LVU338
.LLST34:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS35:
	.uleb128 .LVU364
	.uleb128 .LVU381
.LLST35:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS36:
	.uleb128 .LVU359
	.uleb128 .LVU381
.LLST36:
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS37:
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU366
	.uleb128 .LVU379
	.uleb128 .LVU381
.LLST37:
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU376
	.uleb128 .LVU378
	.uleb128 .LVU381
.LLST38:
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS17:
	.uleb128 .LVU151
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU158
.LLST17:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 .LVU387
	.uleb128 .LVU391
	.uleb128 .LVU391
	.uleb128 .LVU406
.LLST39:
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -48
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU129
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU136
.LLST16:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -48
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU98
	.uleb128 .LVU106
	.uleb128 .LVU110
	.uleb128 .LVU118
.LLST12:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS13:
	.uleb128 .LVU94
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU118
.LLST13:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS14:
	.uleb128 .LVU95
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU100
	.uleb128 .LVU116
	.uleb128 .LVU118
.LLST14:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -34
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU95
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU113
	.uleb128 .LVU115
	.uleb128 .LVU118
.LLST15:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 -9
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS6:
	.uleb128 .LVU31
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU49
	.uleb128 .LVU54
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS7:
	.uleb128 .LVU31
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 10
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 10
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0xa
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x1
	.byte	0x52
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
.LLRL11:
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB17-.Ltext0
	.uleb128 .LBE17-.Ltext0
	.byte	0
.LLRL18:
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB34-.Ltext0
	.uleb128 .LBE34-.Ltext0
	.byte	0
.LLRL25:
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0
.LLRL30:
	.byte	0x4
	.uleb128 .LBB27-.Ltext0
	.uleb128 .LBE27-.Ltext0
	.byte	0x4
	.uleb128 .LBB30-.Ltext0
	.uleb128 .LBE30-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF15:
	.ascii	"getStr4NumMISC\000"
.LASF30:
	.ascii	"step\000"
.LASF31:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF28:
	.ascii	"r_str\000"
.LASF0:
	.ascii	"float\000"
.LASF22:
	.ascii	"sige\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"f_step\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"dnum\000"
.LASF32:
	.ascii	"usart/misc.c\000"
.LASF24:
	.ascii	"d_part\000"
.LASF17:
	.ascii	"rstr\000"
.LASF18:
	.ascii	"p_int32\000"
.LASF29:
	.ascii	"flag\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF26:
	.ascii	"t_rez\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"uint8_t\000"
.LASF33:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrfV1.6\000"
.LASF25:
	.ascii	"i_part\000"
.LASF23:
	.ascii	"e_part\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF5:
	.ascii	"long long int\000"
.LASF16:
	.ascii	"type\000"
.LASF3:
	.ascii	"short int\000"
.LASF9:
	.ascii	"uint16_t\000"
.LASF11:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF21:
	.ascii	"f_num\000"
.LASF2:
	.ascii	"signed char\000"
.LASF27:
	.ascii	"putDNumMISC\000"
.LASF14:
	.ascii	"catstrMISC\000"
.LASF34:
	.ascii	"getDNumMISC\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

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
	.file	"usart.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "usart/usart.c"
	.align	1
	.p2align 2,,3
	.global	initUSART2
	.syntax unified
	.thumb
	.thumb_func
	.type	initUSART2, %function
initUSART2:
.LVL0:
.LFB110:
	.loc 1 4 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 2 view .LVU1
	.loc 1 9 5 is_stmt 0 view .LVU2
	ldr	r2, .L4
	.loc 1 11 7 view .LVU3
	ldr	r3, .L4+4
	.loc 1 17 14 view .LVU4
	ldr	r1, .L4+8
	.loc 1 4 1 view .LVU5
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 9 5 view .LVU6
	ldr	r4, [r2, #48]
	.loc 1 9 15 view .LVU7
	orr	r4, r4, #1
	str	r4, [r2, #48]
	.loc 1 10 2 is_stmt 1 view .LVU8
	.loc 1 10 5 is_stmt 0 view .LVU9
	ldr	r4, [r2, #64]
	.loc 1 10 15 view .LVU10
	orr	r4, r4, #131072
	str	r4, [r2, #64]
	.loc 1 11 2 is_stmt 1 view .LVU11
	.loc 1 11 7 is_stmt 0 view .LVU12
	ldr	r2, [r3]
	.loc 1 11 15 view .LVU13
	orr	r2, r2, #160
	str	r2, [r3]
	.loc 1 12 2 is_stmt 1 view .LVU14
	.loc 1 12 12 is_stmt 0 view .LVU15
	ldr	r2, [r3, #32]
	.loc 1 12 16 view .LVU16
	orr	r2, r2, #30464
	str	r2, [r3, #32]
	.loc 1 14 2 is_stmt 1 view .LVU17
	.loc 1 14 7 is_stmt 0 view .LVU18
	ldr	r2, [r3, #8]
	.loc 1 14 17 view .LVU19
	orr	r2, r2, #32
	str	r2, [r3, #8]
	.loc 1 15 2 is_stmt 1 view .LVU20
	.loc 1 15 7 is_stmt 0 view .LVU21
	ldr	r2, [r3, #8]
	.loc 1 18 14 view .LVU22
	movw	r4, #8200
	.loc 1 17 14 view .LVU23
	uxth	r0, r0
.LVL1:
	.loc 1 15 17 view .LVU24
	orr	r2, r2, #128
	str	r2, [r3, #8]
	.loc 1 17 2 is_stmt 1 view .LVU25
	.loc 1 17 14 is_stmt 0 view .LVU26
	strh	r0, [r1, #8]	@ movhi
	.loc 1 18 2 is_stmt 1 view .LVU27
	.loc 1 18 14 is_stmt 0 view .LVU28
	strh	r4, [r1, #12]	@ movhi
	.loc 1 19 1 view .LVU29
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073872896
	.word	1073759232
	.cfi_endproc
.LFE110:
	.size	initUSART2, .-initUSART2
	.align	1
	.p2align 2,,3
	.global	putcharUSART2
	.syntax unified
	.thumb
	.thumb_func
	.type	putcharUSART2, %function
putcharUSART2:
.LVL2:
.LFB111:
	.loc 1 22 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 23 2 view .LVU31
	.loc 1 23 16 is_stmt 0 view .LVU32
	ldr	r2, .L10
.L7:
	.loc 1 23 8 is_stmt 1 discriminator 1 view .LVU33
	.loc 1 23 16 is_stmt 0 discriminator 1 view .LVU34
	ldrh	r3, [r2]
	.loc 1 23 8 discriminator 1 view .LVU35
	lsls	r3, r3, #25
	bpl	.L7
	.loc 1 25 2 is_stmt 1 view .LVU36
	.loc 1 25 13 is_stmt 0 view .LVU37
	strh	r0, [r2, #4]	@ movhi
	.loc 1 26 1 view .LVU38
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073759232
	.cfi_endproc
.LFE111:
	.size	putcharUSART2, .-putcharUSART2
	.align	1
	.p2align 2,,3
	.global	sprintUSART2
	.syntax unified
	.thumb
	.thumb_func
	.type	sprintUSART2, %function
sprintUSART2:
.LVL3:
.LFB113:
	.loc 1 199 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 200 2 view .LVU40
	.loc 1 202 2 view .LVU41
.LBB14:
.LBB15:
	.loc 1 23 16 is_stmt 0 view .LVU42
	ldr	r2, .L25
.LBE15:
.LBE14:
	.loc 1 199 1 view .LVU43
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	subs	r1, r0, #1
	addw	ip, r0, #1023
.LBB17:
.LBB18:
	.loc 1 25 13 view .LVU44
	mov	lr, #13
.LVL4:
.L13:
	.loc 1 25 13 view .LVU45
.LBE18:
.LBE17:
	.loc 1 202 16 is_stmt 1 view .LVU46
	.loc 1 202 12 is_stmt 0 view .LVU47
	ldrb	r0, [r1, #1]!	@ zero_extendqisi2
.LVL5:
	.loc 1 202 16 view .LVU48
	cbz	r0, .L12
.L14:
.LBB20:
.LBB16:
	.loc 1 23 8 is_stmt 1 view .LVU49
	.loc 1 23 16 is_stmt 0 view .LVU50
	ldrh	r3, [r2]
	.loc 1 23 8 view .LVU51
	lsls	r3, r3, #25
	bpl	.L14
	.loc 1 25 2 is_stmt 1 view .LVU52
	.loc 1 25 13 is_stmt 0 view .LVU53
	strh	r0, [r2, #4]	@ movhi
.LBE16:
.LBE20:
	.loc 1 205 9 is_stmt 1 view .LVU54
	.loc 1 205 12 is_stmt 0 view .LVU55
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L16
.L15:
	.loc 1 207 9 is_stmt 1 view .LVU56
.LVL6:
	.loc 1 209 9 view .LVU57
	.loc 1 209 12 is_stmt 0 view .LVU58
	cmp	r1, ip
	bne	.L13
.LVL7:
.L12:
	.loc 1 212 1 view .LVU59
	ldr	pc, [sp], #4
.LVL8:
.L16:
.LBB21:
.LBB19:
	.loc 1 23 8 is_stmt 1 view .LVU60
	.loc 1 23 16 is_stmt 0 view .LVU61
	ldrh	r3, [r2]
	.loc 1 23 8 view .LVU62
	lsls	r3, r3, #25
	bpl	.L16
	.loc 1 25 2 is_stmt 1 view .LVU63
	.loc 1 25 13 is_stmt 0 view .LVU64
	strh	lr, [r2, #4]	@ movhi
	.loc 1 26 1 view .LVU65
	b	.L15
.L26:
	.align	2
.L25:
	.word	1073759232
.LBE19:
.LBE21:
	.cfi_endproc
.LFE113:
	.size	sprintUSART2, .-sprintUSART2
	.align	1
	.p2align 2,,3
	.global	printUSART2
	.syntax unified
	.thumb
	.thumb_func
	.type	printUSART2, %function
printUSART2:
.LVL9:
.LFB112:
	.loc 1 29 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 30 5 view .LVU67
	.loc 1 31 5 view .LVU68
	.loc 1 32 2 view .LVU69
	.loc 1 33 2 view .LVU70
	.loc 1 34 2 view .LVU71
	.loc 1 35 2 view .LVU72
	.loc 1 36 2 view .LVU73
	.loc 1 39 2 view .LVU74
	.loc 1 29 1 is_stmt 0 view .LVU75
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 14, -20
	sub	sp, sp, #48
	.cfi_def_cfa_offset 80
	.loc 1 29 1 view .LVU76
	add	r3, sp, #64
	ldr	r6, [r3], #4
	.loc 1 39 2 view .LVU77
	str	r3, [sp, #4]
	.loc 1 40 2 is_stmt 1 view .LVU78
.LVL10:
	.loc 1 40 15 view .LVU79
	.loc 1 40 11 is_stmt 0 view .LVU80
	ldrb	r2, [r6]	@ zero_extendqisi2
	.loc 1 40 15 view .LVU81
	cbz	r2, .L27
	.loc 1 31 14 view .LVU82
	movs	r4, #0
.LBB22:
.LBB23:
	.loc 1 23 16 view .LVU83
	ldr	r5, .L84
.LBE23:
.LBE22:
	.loc 1 40 11 view .LVU84
	mov	r1, r6
	mov	r3, r4
.LVL11:
.L28:
	.loc 1 42 3 is_stmt 1 view .LVU85
	.loc 1 42 5 is_stmt 0 view .LVU86
	cmp	r2, #37
	bne	.L29
	.loc 1 44 4 is_stmt 1 view .LVU87
	.loc 1 44 10 is_stmt 0 view .LVU88
	add	r3, r3, r6
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	.loc 1 44 6 view .LVU89
	cbz	r2, .L57
	.loc 1 46 5 is_stmt 1 view .LVU90
	subs	r2, r2, #98
	cmp	r2, #22
	bhi	.L31
	tbb	[pc, r2]
.L33:
	.byte	(.L38-.L33)/2
	.byte	(.L37-.L33)/2
	.byte	(.L36-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L35-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L34-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L32-.L33)/2
	.p2align 1
.L29:
.LBB25:
.LBB24:
	.loc 1 23 8 view .LVU91
	.loc 1 23 16 is_stmt 0 view .LVU92
	ldrh	r3, [r5]
	.loc 1 23 8 view .LVU93
	lsls	r0, r3, #25
	bpl	.L29
	.loc 1 25 2 is_stmt 1 view .LVU94
	.loc 1 25 13 is_stmt 0 view .LVU95
	strh	r2, [r5, #4]	@ movhi
.LBE24:
.LBE25:
	.loc 1 188 4 is_stmt 1 view .LVU96
	.loc 1 188 7 is_stmt 0 view .LVU97
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L73
.LVL12:
.L57:
	.loc 1 191 3 is_stmt 1 view .LVU98
	.loc 1 191 4 is_stmt 0 view .LVU99
	adds	r4, r4, #1
.LVL13:
	.loc 1 191 4 view .LVU100
	uxth	r4, r4
.LVL14:
	.loc 1 40 15 is_stmt 1 view .LVU101
	.loc 1 40 11 is_stmt 0 view .LVU102
	mov	r3, r4
	ldrb	r2, [r6, r4]	@ zero_extendqisi2
	adds	r1, r6, r4
	.loc 1 40 15 view .LVU103
	cmp	r2, #0
	bne	.L28
.LVL15:
.L27:
	.loc 1 196 1 view .LVU104
	add	sp, sp, #48
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.LVL16:
.L73:
	.cfi_restore_state
.LBB26:
.LBB27:
	.loc 1 23 16 view .LVU105
	ldr	r2, .L84
.L58:
	.loc 1 23 8 is_stmt 1 view .LVU106
	.loc 1 23 16 is_stmt 0 view .LVU107
	ldrh	r3, [r2]
	.loc 1 23 8 view .LVU108
	lsls	r3, r3, #25
	bpl	.L58
	.loc 1 25 2 is_stmt 1 view .LVU109
	.loc 1 25 13 is_stmt 0 view .LVU110
	movs	r3, #13
	strh	r3, [r2, #4]	@ movhi
	.loc 1 26 1 view .LVU111
	b	.L57
.L31:
.LBE27:
.LBE26:
	.loc 1 170 7 is_stmt 1 view .LVU112
	.loc 1 170 14 is_stmt 0 view .LVU113
	movs	r3, #0
	str	r3, [sp]
	.loc 1 171 7 is_stmt 1 view .LVU114
	.loc 1 172 7 view .LVU115
.LVL17:
	.loc 1 173 7 view .LVU116
	.loc 1 177 5 view .LVU117
.L49:
	.loc 1 182 5 view .LVU118
	.loc 1 182 6 is_stmt 0 view .LVU119
	adds	r4, r4, #1
	uxth	r4, r4
.LVL18:
	.loc 1 182 6 view .LVU120
	b	.L57
.LVL19:
.L32:
	.loc 1 142 7 is_stmt 1 view .LVU121
	.loc 1 142 13 is_stmt 0 view .LVU122
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 142 9 view .LVU123
	cmp	r3, #98
	beq	.L74
	.loc 1 147 12 is_stmt 1 view .LVU124
	.loc 1 147 14 is_stmt 0 view .LVU125
	cmp	r3, #104
	beq	.L75
	.loc 1 152 12 is_stmt 1 view .LVU126
	.loc 1 152 14 is_stmt 0 view .LVU127
	cmp	r3, #119
	.loc 1 154 17 view .LVU128
	ldr	r3, [sp, #4]
	.loc 1 152 14 view .LVU129
	beq	.L76
	.loc 1 159 8 is_stmt 1 view .LVU130
	.loc 1 159 17 is_stmt 0 view .LVU131
	adds	r2, r3, #4
	ldr	r3, [r3]
	.loc 1 160 8 is_stmt 1 view .LVU132
.LVL20:
	.loc 1 161 8 view .LVU133
	.loc 1 159 17 is_stmt 0 view .LVU134
	str	r2, [sp, #4]
	.loc 1 160 17 view .LVU135
	mov	r0, #2048
.LVL21:
.L54:
	.loc 1 144 15 view .LVU136
	str	r3, [sp]
.LVL22:
	.loc 1 164 7 is_stmt 1 view .LVU137
	.loc 1 165 7 view .LVU138
	.loc 1 166 7 view .LVU139
	.loc 1 177 5 view .LVU140
	b	.L43
.LVL23:
.L34:
	.loc 1 113 7 view .LVU141
	.loc 1 113 14 is_stmt 0 view .LVU142
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	.loc 1 114 7 view .LVU143
	ldr	r0, [r3]
	.loc 1 113 14 view .LVU144
	str	r2, [sp, #4]
	.loc 1 114 7 is_stmt 1 view .LVU145
	bl	sprintUSART2
.LVL24:
	.loc 1 115 7 view .LVU146
	.loc 1 116 7 view .LVU147
	.loc 1 177 5 view .LVU148
	b	.L49
.LVL25:
.L35:
.LBB28:
	.loc 1 120 7 view .LVU149
	.loc 1 120 16 is_stmt 0 view .LVU150
	ldr	r3, [sp, #4]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [sp, #4]
	ldrd	r1, r2, [r3]
	.loc 1 121 7 is_stmt 1 view .LVU151
.LVL26:
	.loc 1 122 7 view .LVU152
	.loc 1 123 7 view .LVU153
	.loc 1 124 7 view .LVU154
	.loc 1 125 7 view .LVU155
	.loc 1 126 7 view .LVU156
	.loc 1 125 22 is_stmt 0 view .LVU157
	ldr	r3, .L84+4
	and	r3, r3, r2, lsl #3
	.loc 1 126 14 view .LVU158
	orr	r3, r3, r1, lsr #29
	.loc 1 127 7 is_stmt 1 view .LVU159
	.loc 1 127 9 is_stmt 0 view .LVU160
	cmp	r2, #0
	.loc 1 128 8 is_stmt 1 view .LVU161
	.loc 1 128 15 is_stmt 0 view .LVU162
	it	lt
	orrlt	r3, r3, #-2147483648
	.loc 1 130 9 view .LVU163
	lsls	r2, r2, #1
	.loc 1 126 14 view .LVU164
	str	r3, [sp]
	.loc 1 130 7 is_stmt 1 view .LVU165
	.loc 1 130 9 is_stmt 0 view .LVU166
	bmi	.L77
.L52:
	.loc 1 135 16 view .LVU167
	mov	r0, #256
.LVL27:
.L43:
	.loc 1 135 16 view .LVU168
.LBE28:
	.loc 1 179 6 is_stmt 1 view .LVU169
	add	r2, sp, #8
	mov	r1, sp
	bl	getStr4NumMISC
.LVL28:
	.loc 1 180 6 view .LVU170
	add	r0, sp, #8
	bl	sprintUSART2
.LVL29:
	b	.L49
.LVL30:
.L36:
	.loc 1 78 7 view .LVU171
	.loc 1 78 13 is_stmt 0 view .LVU172
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 78 9 view .LVU173
	cmp	r3, #98
	beq	.L78
	.loc 1 83 12 is_stmt 1 view .LVU174
	.loc 1 83 14 is_stmt 0 view .LVU175
	cmp	r3, #104
	beq	.L79
	.loc 1 88 12 is_stmt 1 view .LVU176
	.loc 1 88 14 is_stmt 0 view .LVU177
	cmp	r3, #119
	.loc 1 90 17 view .LVU178
	ldr	r3, [sp, #4]
	.loc 1 88 14 view .LVU179
	beq	.L80
	.loc 1 95 8 is_stmt 1 view .LVU180
	.loc 1 95 17 is_stmt 0 view .LVU181
	adds	r2, r3, #4
	str	r2, [sp, #4]
	ldr	r3, [r3]
	.loc 1 96 8 is_stmt 1 view .LVU182
.LVL31:
	.loc 1 97 8 view .LVU183
	.loc 1 96 17 is_stmt 0 view .LVU184
	movs	r0, #32
	b	.L54
.LVL32:
.L37:
.LBB29:
	.loc 1 106 7 is_stmt 1 view .LVU185
	.loc 1 106 20 is_stmt 0 view .LVU186
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	str	r2, [sp, #4]
	.loc 1 106 12 view .LVU187
	ldrb	r1, [r3]	@ zero_extendqisi2
.LVL33:
	.loc 1 107 7 is_stmt 1 view .LVU188
.LBB30:
.LBI30:
	.loc 1 21 6 view .LVU189
.LBB31:
	.loc 1 23 2 view .LVU190
	.loc 1 23 16 is_stmt 0 view .LVU191
	ldr	r2, .L84
.L48:
	.loc 1 23 8 is_stmt 1 view .LVU192
	.loc 1 23 16 is_stmt 0 view .LVU193
	ldrh	r3, [r2]
	.loc 1 23 8 view .LVU194
	lsls	r0, r3, #25
	bpl	.L48
	.loc 1 25 2 is_stmt 1 view .LVU195
	.loc 1 25 13 is_stmt 0 view .LVU196
	strh	r1, [r2, #4]	@ movhi
.LVL34:
	.loc 1 25 13 view .LVU197
.LBE31:
.LBE30:
	.loc 1 108 7 is_stmt 1 view .LVU198
	.loc 1 109 7 view .LVU199
	.loc 1 109 7 is_stmt 0 view .LVU200
.LBE29:
	.loc 1 177 5 is_stmt 1 view .LVU201
	b	.L49
.LVL35:
.L38:
	.loc 1 50 7 view .LVU202
	.loc 1 50 13 is_stmt 0 view .LVU203
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 50 9 view .LVU204
	cmp	r3, #98
	beq	.L81
	.loc 1 55 12 is_stmt 1 view .LVU205
	.loc 1 55 14 is_stmt 0 view .LVU206
	cmp	r3, #104
	beq	.L82
	.loc 1 60 12 is_stmt 1 view .LVU207
	.loc 1 60 14 is_stmt 0 view .LVU208
	cmp	r3, #119
	.loc 1 62 17 view .LVU209
	ldr	r3, [sp, #4]
	.loc 1 60 14 view .LVU210
	beq	.L83
	.loc 1 67 8 is_stmt 1 view .LVU211
	.loc 1 67 17 is_stmt 0 view .LVU212
	adds	r2, r3, #4
	str	r2, [sp, #4]
	ldr	r3, [r3]
	.loc 1 68 8 is_stmt 1 view .LVU213
.LVL36:
	.loc 1 69 8 view .LVU214
	.loc 1 68 17 is_stmt 0 view .LVU215
	movs	r0, #4
	b	.L54
.LVL37:
.L77:
.LBB32:
	.loc 1 131 8 is_stmt 1 view .LVU216
	.loc 1 131 15 is_stmt 0 view .LVU217
	orr	r3, r3, #1073741824
	str	r3, [sp]
.LVL38:
	.loc 1 131 15 view .LVU218
.LBE32:
	.loc 1 177 5 is_stmt 1 view .LVU219
	b	.L52
.LVL39:
.L75:
	.loc 1 149 8 view .LVU220
	.loc 1 149 27 is_stmt 0 view .LVU221
	ldr	r3, [sp, #4]
	.loc 1 191 4 view .LVU222
	adds	r4, r4, #1
.LVL40:
	.loc 1 149 27 view .LVU223
	adds	r2, r3, #4
	str	r2, [sp, #4]
	.loc 1 149 17 view .LVU224
	ldr	r3, [r3]
	.loc 1 150 8 is_stmt 1 view .LVU225
.LVL41:
	.loc 1 191 4 is_stmt 0 view .LVU226
	uxth	r4, r4
	.loc 1 150 17 view .LVU227
	mov	r0, #1024
	b	.L54
.LVL42:
.L82:
	.loc 1 57 8 is_stmt 1 view .LVU228
	.loc 1 57 17 is_stmt 0 view .LVU229
	ldr	r3, [sp, #4]
	.loc 1 191 4 view .LVU230
	adds	r4, r4, #1
.LVL43:
	.loc 1 57 17 view .LVU231
	adds	r2, r3, #4
	str	r2, [sp, #4]
	ldr	r3, [r3]
	.loc 1 58 8 is_stmt 1 view .LVU232
.LVL44:
	.loc 1 191 4 is_stmt 0 view .LVU233
	uxth	r4, r4
	.loc 1 58 17 view .LVU234
	movs	r0, #2
	b	.L54
.LVL45:
.L79:
	.loc 1 85 8 is_stmt 1 view .LVU235
	.loc 1 85 17 is_stmt 0 view .LVU236
	ldr	r3, [sp, #4]
	.loc 1 191 4 view .LVU237
	adds	r4, r4, #1
.LVL46:
	.loc 1 85 17 view .LVU238
	adds	r2, r3, #4
	str	r2, [sp, #4]
	ldr	r3, [r3]
	.loc 1 86 8 is_stmt 1 view .LVU239
.LVL47:
	.loc 1 191 4 is_stmt 0 view .LVU240
	uxth	r4, r4
	.loc 1 86 17 view .LVU241
	movs	r0, #16
	b	.L54
.LVL48:
.L78:
	.loc 1 80 8 is_stmt 1 view .LVU242
	.loc 1 80 17 is_stmt 0 view .LVU243
	ldr	r3, [sp, #4]
	.loc 1 191 4 view .LVU244
	adds	r4, r4, #1
.LVL49:
	.loc 1 80 17 view .LVU245
	adds	r2, r3, #4
	str	r2, [sp, #4]
	ldr	r3, [r3]
	.loc 1 81 8 is_stmt 1 view .LVU246
.LVL50:
	.loc 1 191 4 is_stmt 0 view .LVU247
	uxth	r4, r4
	.loc 1 81 17 view .LVU248
	movs	r0, #8
	b	.L54
.LVL51:
.L74:
	.loc 1 144 8 is_stmt 1 view .LVU249
	.loc 1 144 27 is_stmt 0 view .LVU250
	ldr	r3, [sp, #4]
	.loc 1 191 4 view .LVU251
	adds	r4, r4, #1
.LVL52:
	.loc 1 144 27 view .LVU252
	adds	r2, r3, #4
	str	r2, [sp, #4]
	.loc 1 144 17 view .LVU253
	ldr	r3, [r3]
	.loc 1 145 8 is_stmt 1 view .LVU254
.LVL53:
	.loc 1 191 4 is_stmt 0 view .LVU255
	uxth	r4, r4
	.loc 1 145 17 view .LVU256
	mov	r0, #512
	b	.L54
.LVL54:
.L81:
	.loc 1 52 8 is_stmt 1 view .LVU257
	.loc 1 52 17 is_stmt 0 view .LVU258
	ldr	r3, [sp, #4]
	.loc 1 191 4 view .LVU259
	adds	r4, r4, #1
.LVL55:
	.loc 1 52 17 view .LVU260
	adds	r2, r3, #4
	str	r2, [sp, #4]
	ldr	r3, [r3]
	.loc 1 53 8 is_stmt 1 view .LVU261
.LVL56:
	.loc 1 191 4 is_stmt 0 view .LVU262
	uxth	r4, r4
	.loc 1 53 17 view .LVU263
	movs	r0, #1
	b	.L54
.LVL57:
.L76:
	.loc 1 154 8 is_stmt 1 view .LVU264
	.loc 1 154 17 is_stmt 0 view .LVU265
	adds	r2, r3, #4
	.loc 1 191 4 view .LVU266
	adds	r4, r4, #1
.LVL58:
	.loc 1 154 17 view .LVU267
	ldr	r3, [r3]
	.loc 1 155 8 is_stmt 1 view .LVU268
.LVL59:
	.loc 1 154 17 is_stmt 0 view .LVU269
	str	r2, [sp, #4]
	.loc 1 191 4 view .LVU270
	uxth	r4, r4
	.loc 1 155 17 view .LVU271
	mov	r0, #2048
	b	.L54
.LVL60:
.L80:
	.loc 1 90 8 is_stmt 1 view .LVU272
	.loc 1 90 17 is_stmt 0 view .LVU273
	adds	r2, r3, #4
	.loc 1 191 4 view .LVU274
	adds	r4, r4, #1
.LVL61:
	.loc 1 90 17 view .LVU275
	ldr	r3, [r3]
	.loc 1 91 8 is_stmt 1 view .LVU276
.LVL62:
	.loc 1 90 17 is_stmt 0 view .LVU277
	str	r2, [sp, #4]
	.loc 1 191 4 view .LVU278
	uxth	r4, r4
	.loc 1 91 17 view .LVU279
	movs	r0, #32
	b	.L54
.LVL63:
.L83:
	.loc 1 62 8 is_stmt 1 view .LVU280
	.loc 1 62 17 is_stmt 0 view .LVU281
	adds	r2, r3, #4
	.loc 1 191 4 view .LVU282
	adds	r4, r4, #1
.LVL64:
	.loc 1 62 17 view .LVU283
	ldr	r3, [r3]
	.loc 1 63 8 is_stmt 1 view .LVU284
.LVL65:
	.loc 1 62 17 is_stmt 0 view .LVU285
	str	r2, [sp, #4]
	.loc 1 191 4 view .LVU286
	uxth	r4, r4
	.loc 1 63 17 view .LVU287
	movs	r0, #4
	b	.L54
.L85:
	.align	2
.L84:
	.word	1073759232
	.word	1073741816
	.cfi_endproc
.LFE112:
	.size	printUSART2, .-printUSART2
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdarg.h"
	.file 3 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 4 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "usart/misc.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x624
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x1d
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x28
	.byte	0x1b
	.4byte	0x32
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x4
	.byte	0x6
	.byte	0
	.4byte	0x49
	.uleb128 0x15
	.4byte	.LASF71
	.4byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x63
	.byte	0x18
	.4byte	0x26
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x18
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x31
	.byte	0x19
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x19
	.4byte	0xaf
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x37
	.byte	0x19
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xe7
	.uleb128 0x9
	.4byte	0xd0
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.2byte	0x28e
	.4byte	0x168
	.uleb128 0x1
	.4byte	.LASF15
	.2byte	0x290
	.4byte	0xaa
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x291
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x292
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x293
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x2
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0xaa
	.byte	0x10
	.uleb128 0x2
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0xaa
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x296
	.4byte	0x92
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x297
	.4byte	0x92
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x298
	.4byte	0xaa
	.byte	0x1c
	.uleb128 0x2
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x178
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x178
	.uleb128 0x9
	.4byte	0xd0
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x168
	.uleb128 0xb
	.4byte	.LASF22
	.2byte	0x29a
	.4byte	0xe7
	.uleb128 0xa
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x2f8
	.uleb128 0x2
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0xaa
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x2e0
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x2e1
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x2
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x2e3
	.4byte	0xaa
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x2e4
	.4byte	0xaa
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x2e5
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x2e6
	.4byte	0x9e
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x2e7
	.4byte	0xaa
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x2e8
	.4byte	0xaa
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x2e9
	.4byte	0xd7
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x2ea
	.4byte	0xaa
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x2eb
	.4byte	0xaa
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x2ec
	.4byte	0xaa
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x2ed
	.4byte	0x9e
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x2ee
	.4byte	0xaa
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x2ef
	.4byte	0xaa
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x2f0
	.4byte	0xd7
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x2f1
	.4byte	0xaa
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x2f2
	.4byte	0xaa
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x2f3
	.4byte	0xaa
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x2f4
	.4byte	0x9e
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x2f5
	.4byte	0xaa
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x2f6
	.4byte	0xaa
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x2f7
	.4byte	0xd7
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2f8
	.4byte	0xaa
	.byte	0x70
	.uleb128 0x2
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0xaa
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x2fa
	.4byte	0xd7
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x2fb
	.4byte	0xaa
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x2fc
	.4byte	0xaa
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.2byte	0x2fd
	.4byte	0x188
	.uleb128 0xa
	.byte	0x1c
	.2byte	0x395
	.4byte	0x3b2
	.uleb128 0x2
	.ascii	"SR\000"
	.2byte	0x397
	.4byte	0x92
	.byte	0
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x398
	.4byte	0x86
	.byte	0x2
	.uleb128 0x2
	.ascii	"DR\000"
	.2byte	0x399
	.4byte	0x92
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x39a
	.4byte	0x86
	.byte	0x6
	.uleb128 0x2
	.ascii	"BRR\000"
	.2byte	0x39b
	.4byte	0x92
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x39c
	.4byte	0x86
	.byte	0xa
	.uleb128 0x2
	.ascii	"CR1\000"
	.2byte	0x39d
	.4byte	0x92
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x39e
	.4byte	0x86
	.byte	0xe
	.uleb128 0x2
	.ascii	"CR2\000"
	.2byte	0x39f
	.4byte	0x92
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x3a0
	.4byte	0x86
	.byte	0x12
	.uleb128 0x2
	.ascii	"CR3\000"
	.2byte	0x3a1
	.4byte	0x92
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x3a2
	.4byte	0x86
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x3a3
	.4byte	0x92
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x3a4
	.4byte	0x86
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.2byte	0x3a5
	.4byte	0x303
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x5
	.byte	0x1b
	.byte	0x6
	.4byte	0x3d9
	.uleb128 0xc
	.4byte	0x86
	.uleb128 0xc
	.4byte	0x3d9
	.uleb128 0xc
	.4byte	0x3de
	.byte	0
	.uleb128 0xd
	.4byte	0x9e
	.uleb128 0xd
	.4byte	0x73
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xc6
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x19
	.ascii	"str\000"
	.byte	0x1
	.byte	0xc6
	.byte	0x1d
	.4byte	0x3de
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.ascii	"k\000"
	.byte	0xc8
	.byte	0xb
	.4byte	0x86
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x12
	.4byte	0x5cd
	.4byte	.LLRL3
	.byte	0xcc
	.byte	0x9
	.4byte	0x431
	.uleb128 0x5
	.4byte	0x5da
	.byte	0
	.uleb128 0x1a
	.4byte	0x5cd
	.4byte	.LLRL4
	.byte	0x1
	.byte	0xce
	.byte	0xd
	.uleb128 0x5
	.4byte	0x5da
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b1
	.uleb128 0x1b
	.ascii	"str\000"
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.4byte	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1e
	.byte	0xd
	.4byte	0x5bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.ascii	"k\000"
	.byte	0x1f
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x20
	.byte	0xb
	.4byte	0x86
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x21
	.byte	0xb
	.4byte	0x9e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x22
	.byte	0xd
	.4byte	0x3d9
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0x5b1
	.uleb128 0x1e
	.ascii	"vl\000"
	.byte	0x1
	.byte	0x24
	.byte	0xa
	.4byte	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x51c
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x6a
	.byte	0xc
	.4byte	0x5b6
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x20
	.4byte	0x5cd
	.4byte	.LBI30
	.byte	.LVU189
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x6b
	.byte	0x7
	.uleb128 0x21
	.4byte	0x5da
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LLRL9
	.4byte	0x54b
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x78
	.byte	0x10
	.4byte	0xb6
	.uleb128 0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x79
	.byte	0x10
	.4byte	0x9e
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x12
	.4byte	0x5cd
	.4byte	.LLRL8
	.byte	0xbb
	.byte	0x4
	.4byte	0x560
	.uleb128 0x5
	.4byte	0x5da
	.byte	0
	.uleb128 0x23
	.4byte	0x5cd
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0xbd
	.byte	0x5
	.4byte	0x57a
	.uleb128 0x5
	.4byte	0x5da
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0x3e3
	.uleb128 0x25
	.4byte	.LVL28
	.4byte	0x3bd
	.4byte	0x59f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0x3e3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x5b6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF62
	.uleb128 0x8
	.4byte	0x73
	.4byte	0x5cd
	.uleb128 0x9
	.4byte	0xd0
	.byte	0x27
	.byte	0
	.uleb128 0x27
	.4byte	.LASF64
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.byte	0x1
	.4byte	0x5e7
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0x15
	.byte	0x1c
	.4byte	0x73
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x610
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.byte	0x3
	.byte	0x1a
	.4byte	0x9e
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x2a
	.4byte	0x5cd
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	0x5da
	.uleb128 0x1
	.byte	0x50
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
	.sleb128 4
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
	.sleb128 4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.sleb128 4
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x24
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS1:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LFE113-.Ltext0
	.uleb128 0x4
	.byte	0x7c
	.sleb128 -1023
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU41
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 .LVU57
	.uleb128 .LVU59
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 -1024
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 -1024
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU69
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU104
	.uleb128 .LVU105
	.uleb128 .LVU118
	.uleb128 .LVU120
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU141
	.uleb128 .LVU168
	.uleb128 .LVU171
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU223
	.uleb128 .LVU228
	.uleb128 .LVU231
	.uleb128 .LVU235
	.uleb128 .LVU238
	.uleb128 .LVU242
	.uleb128 .LVU245
	.uleb128 .LVU249
	.uleb128 .LVU252
	.uleb128 .LVU257
	.uleb128 .LVU260
	.uleb128 .LVU264
	.uleb128 .LVU267
	.uleb128 .LVU272
	.uleb128 .LVU275
	.uleb128 .LVU280
	.uleb128 .LVU283
.LLST5:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS6:
	.uleb128 .LVU116
	.uleb128 .LVU118
	.uleb128 .LVU133
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 .LVU141
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU183
	.uleb128 .LVU185
	.uleb128 .LVU199
	.uleb128 .LVU202
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU218
	.uleb128 .LVU220
	.uleb128 .LVU226
	.uleb128 .LVU228
	.uleb128 .LVU233
	.uleb128 .LVU235
	.uleb128 .LVU240
	.uleb128 .LVU242
	.uleb128 .LVU247
	.uleb128 .LVU249
	.uleb128 .LVU255
	.uleb128 .LVU257
	.uleb128 .LVU262
	.uleb128 .LVU264
	.uleb128 .LVU269
	.uleb128 .LVU272
	.uleb128 .LVU277
	.uleb128 .LVU280
	.uleb128 .LVU285
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU79
	.uleb128 .LVU118
	.uleb128 .LVU121
	.uleb128 .LVU168
	.uleb128 .LVU171
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU188
	.uleb128 .LVU202
.LLST11:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS12:
	.uleb128 .LVU189
	.uleb128 .LVU197
.LLST12:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS10:
	.uleb128 .LVU152
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU168
	.uleb128 .LVU216
	.uleb128 .LVU220
.LLST10:
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4d
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4d
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
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
.LLRL3:
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0
.LLRL4:
	.byte	0x4
	.uleb128 .LBB17-.Ltext0
	.uleb128 .LBE17-.Ltext0
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0
.LLRL8:
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0
.LLRL9:
	.byte	0x4
	.uleb128 .LBB28-.Ltext0
	.uleb128 .LBE28-.Ltext0
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF39:
	.ascii	"AHB1LPENR\000"
.LASF68:
	.ascii	"usart/usart.c\000"
.LASF51:
	.ascii	"GTPR\000"
.LASF29:
	.ascii	"APB1RSTR\000"
.LASF33:
	.ascii	"AHB2ENR\000"
.LASF12:
	.ascii	"uint64_t\000"
.LASF3:
	.ascii	"short int\000"
.LASF46:
	.ascii	"BDCR\000"
.LASF49:
	.ascii	"PLLI2SCFGR\000"
.LASF69:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrf_i_komandeV1.0\000"
.LASF73:
	.ascii	"data\000"
.LASF48:
	.ascii	"SSCGR\000"
.LASF26:
	.ascii	"AHB2RSTR\000"
.LASF59:
	.ascii	"tchar\000"
.LASF41:
	.ascii	"AHB3LPENR\000"
.LASF24:
	.ascii	"CFGR\000"
.LASF1:
	.ascii	"va_list\000"
.LASF38:
	.ascii	"RESERVED3\000"
.LASF6:
	.ascii	"uint8_t\000"
.LASF36:
	.ascii	"APB1ENR\000"
.LASF52:
	.ascii	"USART_TypeDef\000"
.LASF16:
	.ascii	"OTYPER\000"
.LASF2:
	.ascii	"signed char\000"
.LASF55:
	.ascii	"arg_type\000"
.LASF5:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"PUPDR\000"
.LASF70:
	.ascii	"__va_list\000"
.LASF4:
	.ascii	"long int\000"
.LASF65:
	.ascii	"initUSART2\000"
.LASF50:
	.ascii	"RCC_TypeDef\000"
.LASF20:
	.ascii	"BSRRH\000"
.LASF15:
	.ascii	"MODER\000"
.LASF30:
	.ascii	"APB2RSTR\000"
.LASF19:
	.ascii	"BSRRL\000"
.LASF66:
	.ascii	"baudrate\000"
.LASF64:
	.ascii	"putcharUSART2\000"
.LASF34:
	.ascii	"AHB3ENR\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF37:
	.ascii	"APB2ENR\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF71:
	.ascii	"__ap\000"
.LASF8:
	.ascii	"uint16_t\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF23:
	.ascii	"PLLCFGR\000"
.LASF60:
	.ascii	"utmp64\000"
.LASF43:
	.ascii	"APB1LPENR\000"
.LASF58:
	.ascii	"p_uint32\000"
.LASF54:
	.ascii	"printUSART2\000"
.LASF62:
	.ascii	"char\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF53:
	.ascii	"sprintUSART2\000"
.LASF63:
	.ascii	"getStr4NumMISC\000"
.LASF40:
	.ascii	"AHB2LPENR\000"
.LASF61:
	.ascii	"tmp1\000"
.LASF28:
	.ascii	"RESERVED0\000"
.LASF31:
	.ascii	"RESERVED1\000"
.LASF35:
	.ascii	"RESERVED2\000"
.LASF17:
	.ascii	"OSPEEDR\000"
.LASF42:
	.ascii	"RESERVED4\000"
.LASF45:
	.ascii	"RESERVED5\000"
.LASF47:
	.ascii	"RESERVED6\000"
.LASF67:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF32:
	.ascii	"AHB1ENR\000"
.LASF57:
	.ascii	"utmp32\000"
.LASF56:
	.ascii	"rstr\000"
.LASF72:
	.ascii	"p_char\000"
.LASF0:
	.ascii	"__gnuc_va_list\000"
.LASF25:
	.ascii	"AHB1RSTR\000"
.LASF22:
	.ascii	"GPIO_TypeDef\000"
.LASF27:
	.ascii	"AHB3RSTR\000"
.LASF21:
	.ascii	"LCKR\000"
.LASF44:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

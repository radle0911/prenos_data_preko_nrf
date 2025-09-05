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
	.global	autic
	.syntax unified
	.thumb
	.thumb_func
	.type	autic, %function
autic:
.LFB111:
	.loc 1 161 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 163 5 is_stmt 0 view .LVU1
	ldr	r6, .L13
	ldr	r7, .L13+4
.LBB4:
.LBB5:
	.loc 1 179 3 view .LVU2
	ldr	r5, .L13+8
.LBE5:
.LBE4:
	.loc 1 161 1 view .LVU3
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
.L5:
	.loc 1 162 3 is_stmt 1 discriminator 1 view .LVU4
	.loc 1 163 5 discriminator 1 view .LVU5
	mov	r1, #19200
	mov	r0, r6
	bl	DCMI_snapshot_debug
.LVL0:
	.loc 1 164 5 discriminator 1 view .LVU6
	mov	r1, #19200
	mov	r0, r6
	bl	send_frame_buffer
.LVL1:
	.loc 1 165 5 discriminator 1 view .LVU7
.LBB7:
.LBI4:
	.loc 1 172 6 discriminator 1 view .LVU8
.LBB6:
	.loc 1 173 3 discriminator 1 view .LVU9
	.loc 1 174 3 discriminator 1 view .LVU10
	.loc 1 177 3 discriminator 1 view .LVU11
	.loc 1 178 3 discriminator 1 view .LVU12
	.loc 1 177 13 is_stmt 0 discriminator 1 view .LVU13
	movw	r3, #21930
	.loc 1 179 3 discriminator 1 view .LVU14
	mov	r1, sp
	mov	r0, r5
	.loc 1 177 13 discriminator 1 view .LVU15
	strh	r3, [sp]	@ movhi
	.loc 1 179 3 is_stmt 1 discriminator 1 view .LVU16
	ldr	r4, .L13+12
	bl	txDataNRF24L01
.LVL2:
	.loc 1 181 3 discriminator 1 view .LVU17
	.loc 1 181 17 discriminator 1 view .LVU18
	.loc 1 174 15 is_stmt 0 discriminator 1 view .LVU19
	movs	r3, #0
	b	.L3
.LVL3:
.L2:
	.loc 1 181 28 is_stmt 1 view .LVU20
	.loc 1 181 17 view .LVU21
	cmp	r4, r7
	beq	.L12
.LVL4:
.L3:
	.loc 1 183 5 view .LVU22
	.loc 1 183 17 is_stmt 0 view .LVU23
	add	r0, r3, #32
	.loc 1 183 41 view .LVU24
	ldrh	r1, [r4, #2]!
.LVL5:
	.loc 1 184 17 view .LVU25
	add	r2, r3, #33
	.loc 1 183 17 view .LVU26
	add	ip, sp, r0
	.loc 1 184 17 view .LVU27
	add	r2, sp, r2
	.loc 1 184 13 view .LVU28
	adds	r3, r3, #2
	.loc 1 184 19 view .LVU29
	lsrs	r0, r1, #8
	.loc 1 187 8 view .LVU30
	cmp	r3, #32
	.loc 1 183 19 view .LVU31
	strb	r1, [ip, #-32]
	.loc 1 184 5 is_stmt 1 view .LVU32
.LVL6:
	.loc 1 184 19 is_stmt 0 view .LVU33
	strb	r0, [r2, #-32]
	.loc 1 187 5 is_stmt 1 view .LVU34
	.loc 1 187 8 is_stmt 0 view .LVU35
	bne	.L2
	.loc 1 188 7 is_stmt 1 view .LVU36
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL7:
	.loc 1 189 7 view .LVU37
	.loc 1 181 17 is_stmt 0 view .LVU38
	cmp	r4, r7
	.loc 1 189 9 view .LVU39
	mov	r3, #0
.LVL8:
	.loc 1 181 28 is_stmt 1 view .LVU40
	.loc 1 181 17 view .LVU41
	bne	.L3
.L12:
	.loc 1 194 3 view .LVU42
	.loc 1 194 6 is_stmt 0 view .LVU43
	cmp	r3, #0
	beq	.L5
	.loc 1 195 5 is_stmt 1 view .LVU44
	mov	r1, sp
	mov	r0, r5
	bl	txDataNRF24L01
.LVL9:
	.loc 1 197 1 is_stmt 0 view .LVU45
	b	.L5
.L14:
	.align	2
.L13:
	.word	frame_buffer
	.word	frame_buffer+38398
	.word	c_nrf_slave_addr
	.word	frame_buffer-2
.LBE6:
.LBE7:
	.cfi_endproc
.LFE111:
	.size	autic, .-autic
	.align	1
	.p2align 2,,3
	.global	sendFrameNRF
	.syntax unified
	.thumb
	.thumb_func
	.type	sendFrameNRF, %function
sendFrameNRF:
.LVL10:
.LFB112:
	.loc 1 172 60 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 173 3 view .LVU47
	.loc 1 174 3 view .LVU48
	.loc 1 177 3 view .LVU49
	.loc 1 178 3 view .LVU50
	.loc 1 172 60 is_stmt 0 view .LVU51
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 1 172 60 view .LVU52
	mov	r6, r1
	mov	r5, r0
	.loc 1 177 13 view .LVU53
	movw	r3, #21930
	.loc 1 179 3 view .LVU54
	ldr	r0, .L31
.LVL11:
	.loc 1 177 13 view .LVU55
	strh	r3, [sp]	@ movhi
	.loc 1 179 3 is_stmt 1 view .LVU56
	mov	r1, sp
.LVL12:
	.loc 1 179 3 is_stmt 0 view .LVU57
	bl	txDataNRF24L01
.LVL13:
	.loc 1 181 3 is_stmt 1 view .LVU58
	.loc 1 181 17 view .LVU59
	cbz	r6, .L15
	.loc 1 174 15 is_stmt 0 view .LVU60
	movs	r3, #0
	.loc 1 188 7 view .LVU61
	ldr	r7, .L31
	subs	r5, r5, #2
.LVL14:
	.loc 1 181 10 view .LVU62
	mov	r4, r3
	b	.L18
.LVL15:
.L17:
	.loc 1 181 28 is_stmt 1 discriminator 2 view .LVU63
	.loc 1 181 17 discriminator 2 view .LVU64
	cmp	r6, r4
	beq	.L29
.LVL16:
.L18:
	.loc 1 183 5 view .LVU65
	.loc 1 183 17 is_stmt 0 view .LVU66
	add	r1, r3, #32
	.loc 1 183 41 view .LVU67
	ldrh	ip, [r5, #2]!
.LVL17:
	.loc 1 184 17 view .LVU68
	add	r2, r3, #33
	.loc 1 183 17 view .LVU69
	add	r0, sp, r1
	.loc 1 184 17 view .LVU70
	add	r2, sp, r2
	.loc 1 184 13 view .LVU71
	adds	r3, r3, #2
	.loc 1 184 19 view .LVU72
	lsr	r1, ip, #8
	.loc 1 187 8 view .LVU73
	cmp	r3, #32
	.loc 1 183 19 view .LVU74
	strb	ip, [r0, #-32]
	.loc 1 184 5 is_stmt 1 view .LVU75
.LVL18:
	.loc 1 181 28 is_stmt 0 view .LVU76
	add	r4, r4, #1
.LVL19:
	.loc 1 184 19 view .LVU77
	strb	r1, [r2, #-32]
	.loc 1 187 5 is_stmt 1 view .LVU78
	.loc 1 187 8 is_stmt 0 view .LVU79
	bne	.L17
	.loc 1 188 7 is_stmt 1 view .LVU80
	mov	r1, sp
	mov	r0, r7
	bl	txDataNRF24L01
.LVL20:
	.loc 1 189 7 view .LVU81
	.loc 1 181 17 is_stmt 0 view .LVU82
	cmp	r6, r4
	.loc 1 189 9 view .LVU83
	mov	r3, #0
.LVL21:
	.loc 1 181 28 is_stmt 1 view .LVU84
	.loc 1 181 17 view .LVU85
	bne	.L18
.L29:
	.loc 1 194 3 view .LVU86
	.loc 1 194 6 is_stmt 0 view .LVU87
	cbnz	r3, .L30
.LVL22:
.L15:
	.loc 1 197 1 view .LVU88
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL23:
.L30:
	.cfi_restore_state
	.loc 1 195 5 is_stmt 1 view .LVU89
	mov	r1, sp
	ldr	r0, .L31
	bl	txDataNRF24L01
.LVL24:
	.loc 1 197 1 is_stmt 0 view .LVU90
	add	sp, sp, #36
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL25:
.L32:
	.loc 1 197 1 view .LVU91
	.align	2
.L31:
	.word	c_nrf_slave_addr
	.cfi_endproc
.LFE112:
	.size	sendFrameNRF, .-sendFrameNRF
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Frame primljen, bar msm da je\012\012\012\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	receiveFrameNRF
	.syntax unified
	.thumb
	.thumb_func
	.type	receiveFrameNRF, %function
receiveFrameNRF:
.LVL26:
.LFB114:
	.loc 1 211 63 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 212 3 view .LVU93
	.loc 1 213 3 view .LVU94
	.loc 1 214 3 view .LVU95
	.loc 1 211 63 is_stmt 0 view .LVU96
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r5, r0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	.loc 1 214 12 view .LVU97
	lsls	r6, r1, #1
.LVL27:
	.loc 1 215 3 is_stmt 1 view .LVU98
	.loc 1 215 11 is_stmt 0 view .LVU99
	movs	r7, #1
	.loc 1 213 12 view .LVU100
	movs	r4, #0
.LVL28:
.L35:
	.loc 1 217 3 is_stmt 1 view .LVU101
	.loc 1 219 5 view .LVU102
	.loc 1 219 9 is_stmt 0 view .LVU103
	bl	dataReadyNRF24L01
.LVL29:
	.loc 1 219 8 view .LVU104
	cmp	r0, #1
	bne	.L35
	.loc 1 220 7 is_stmt 1 view .LVU105
	mov	r0, sp
	bl	rxDataNRF24L01
.LVL30:
	.loc 1 222 7 view .LVU106
	.loc 1 222 10 is_stmt 0 view .LVU107
	cbnz	r7, .L36
.LVL31:
.LBB8:
	.loc 1 230 32 is_stmt 1 view .LVU108
	cmp	r4, r6
	bcs	.L43
	mov	r3, sp
	add	r0, r4, #32
	b	.L42
.LVL32:
.L49:
.LBB9:
	.loc 1 239 25 is_stmt 0 view .LVU109
	adds	r4, r4, #1
.LVL33:
	.loc 1 234 41 view .LVU110
	ldrb	r2, [r3]	@ zero_extendqisi2
	strh	r2, [r5, r1]	@ movhi
	.loc 1 239 11 is_stmt 1 view .LVU111
.LVL34:
	.loc 1 239 11 is_stmt 0 view .LVU112
.LBE9:
	.loc 1 230 66 is_stmt 1 view .LVU113
	.loc 1 230 32 view .LVU114
	cmp	r4, r0
	add	r3, r3, #1
	beq	.L41
.LVL35:
.L50:
	.loc 1 230 32 is_stmt 0 discriminator 3 view .LVU115
	cmp	r6, r4
	beq	.L43
.LVL36:
.L42:
.LBB10:
	.loc 1 231 11 is_stmt 1 view .LVU116
	.loc 1 232 11 view .LVU117
	.loc 1 234 13 view .LVU118
	.loc 1 237 13 view .LVU119
	.loc 1 237 25 is_stmt 0 view .LVU120
	bic	r2, r4, #1
	.loc 1 232 14 view .LVU121
	tst	r4, #1
	.loc 1 234 25 view .LVU122
	mov	r1, r2
	.loc 1 232 14 view .LVU123
	beq	.L49
	.loc 1 237 37 view .LVU124
	ldrb	ip, [r3]	@ zero_extendqisi2
	.loc 1 237 33 view .LVU125
	ldrh	r1, [r5, r2]
	.loc 1 239 25 view .LVU126
	adds	r4, r4, #1
.LVL37:
	.loc 1 237 33 view .LVU127
	orr	r1, r1, ip, lsl #8
.LBE10:
	.loc 1 230 32 view .LVU128
	cmp	r4, r0
.LBB11:
	.loc 1 237 33 view .LVU129
	strh	r1, [r5, r2]	@ movhi
	.loc 1 239 11 is_stmt 1 view .LVU130
.LVL38:
	.loc 1 239 11 is_stmt 0 view .LVU131
.LBE11:
	.loc 1 230 66 is_stmt 1 view .LVU132
	.loc 1 230 32 view .LVU133
	add	r3, r3, #1
	bne	.L50
.LVL39:
.L41:
	.loc 1 230 32 is_stmt 0 view .LVU134
.LBE8:
	.loc 1 243 9 is_stmt 1 view .LVU135
	.loc 1 243 12 is_stmt 0 view .LVU136
	cmp	r6, r4
	bhi	.L35
.LVL40:
.L43:
	.loc 1 244 11 is_stmt 1 view .LVU137
	ldr	r0, .L51
	bl	printUSART2
.LVL41:
	.loc 1 245 11 view .LVU138
	.loc 1 250 1 is_stmt 0 view .LVU139
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL42:
.L36:
	.cfi_restore_state
	.loc 1 224 9 is_stmt 1 view .LVU140
	.loc 1 224 12 is_stmt 0 view .LVU141
	ldrb	r3, [sp]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L35
	.loc 1 224 40 discriminator 1 view .LVU142
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	.loc 1 226 26 discriminator 1 view .LVU143
	cmp	r3, #85
	itt	eq
	moveq	r7, #0
	moveq	r4, #0
	b	.L35
.L52:
	.align	2
.L51:
	.word	.LC0
	.cfi_endproc
.LFE114:
	.size	receiveFrameNRF, .-receiveFrameNRF
	.align	1
	.p2align 2,,3
	.global	kontroler
	.syntax unified
	.thumb
	.thumb_func
	.type	kontroler, %function
kontroler:
.LFB113:
	.loc 1 202 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 204 5 is_stmt 0 view .LVU145
	ldr	r4, .L56
.L54:
	.loc 1 203 3 is_stmt 1 discriminator 1 view .LVU146
	.loc 1 204 5 discriminator 1 view .LVU147
	mov	r1, #19200
	mov	r0, r4
	bl	receiveFrameNRF
.LVL43:
	.loc 1 203 9 discriminator 1 view .LVU148
	b	.L54
.L57:
	.align	2
.L56:
	.word	frame_buffer
	.cfi_endproc
.LFE113:
	.size	kontroler, .-kontroler
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"start code\012\000"
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
	.ascii	"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWw\012"
	.ascii	"\000"
	.align	2
.LC6:
	.ascii	"WWWWWWWWWWW  Snapshot od OV7679   WWWWWWWWWWWWW\012"
	.ascii	"\000"
	.align	2
.LC7:
	.ascii	"WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWw\012"
	.ascii	"\012\012\000"
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
	.ascii	"================start snapshot==============\012\000"
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
	.loc 1 32 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 33 3 view .LVU150
	.loc 1 32 1 is_stmt 0 view .LVU151
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 33 11 view .LVU152
	movs	r3, #0
	.loc 1 37 5 view .LVU153
	movs	r0, #45
	.loc 1 33 11 view .LVU154
	strb	r3, [sp, #7]
	.loc 1 37 5 is_stmt 1 view .LVU155
	bl	initUSART2
.LVL44:
	.loc 1 38 5 view .LVU156
	bl	initSYSTIMER_TIM7
.LVL45:
	.loc 1 39 5 view .LVU157
	bl	initSYSTIMER
.LVL46:
	.loc 1 42 3 view .LVU158
	ldr	r0, .L62
	bl	printUSART2
.LVL47:
	.loc 1 45 3 view .LVU159
	bl	initGPIOC6_GND
.LVL48:
	.loc 1 46 3 view .LVU160
	movs	r0, #10
	bl	delay_ms
.LVL49:
	.loc 1 47 3 view .LVU161
	add	r0, sp, #7
	bl	chkConnection_GPIOC6_GND
.LVL50:
	.loc 1 49 3 view .LVU162
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	bl	initnRF24L01
.LVL51:
	.loc 1 50 3 view .LVU163
	mov	r0, #1000
	bl	delay_ms
.LVL52:
	.loc 1 52 3 view .LVU164
	ldr	r0, .L62+4
	bl	printUSART2
.LVL53:
	.loc 1 53 3 view .LVU165
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r0, .L62+8
	bl	printUSART2
.LVL54:
	.loc 1 54 3 view .LVU166
	ldr	r0, .L62+12
	bl	printUSART2
.LVL55:
	.loc 1 63 3 view .LVU167
	ldr	r0, .L62+16
	bl	printUSART2
.LVL56:
	.loc 1 64 3 view .LVU168
	ldr	r0, .L62+20
	bl	printUSART2
.LVL57:
	.loc 1 65 3 view .LVU169
	ldr	r0, .L62+24
	bl	printUSART2
.LVL58:
	.loc 1 76 3 view .LVU170
	bl	OV7670_XCLK_TIM1_init
.LVL59:
	.loc 1 77 3 view .LVU171
	movs	r0, #100
	bl	delay_ms
.LVL60:
	.loc 1 83 3 view .LVU172
	bl	getOV7670_ID
.LVL61:
	.loc 1 84 3 view .LVU173
	movs	r0, #50
	bl	delay_ms
.LVL62:
	.loc 1 91 3 view .LVU174
	bl	OV7670_SetupQQVGA_Custom_sa_neta
.LVL63:
	.loc 1 93 3 view .LVU175
	mov	r0, #1000
	bl	delay_ms
.LVL64:
	.loc 1 99 3 view .LVU176
	bl	OV7670_VerifyRegisters_Custom
.LVL65:
	.loc 1 101 3 view .LVU177
	ldr	r0, .L62+28
	bl	printUSART2
.LVL66:
	.loc 1 103 3 view .LVU178
	bl	DCMI_Init_OV7670
.LVL67:
	.loc 1 105 3 view .LVU179
	ldr	r0, .L62+32
	bl	printUSART2
.LVL68:
	.loc 1 106 3 view .LVU180
	bl	DCMI_CheckConfig
.LVL69:
	.loc 1 115 3 view .LVU181
	mov	r1, #19200
	ldr	r0, .L62+36
	bl	initDMA2_for_OV7670_snapshot
.LVL70:
	.loc 1 116 3 view .LVU182
	movs	r0, #100
	bl	delay_ms
.LVL71:
	.loc 1 118 3 view .LVU183
	bl	checkDMA2_Stream1_status
.LVL72:
	.loc 1 120 3 view .LVU184
	ldr	r0, .L62+40
	bl	printUSART2
.LVL73:
	.loc 1 123 3 view .LVU185
	ldr	r0, .L62+36
	mov	r1, #19200
	bl	DCMI_snapshot_debug
.LVL74:
	.loc 1 149 3 view .LVU186
	.loc 1 149 6 is_stmt 0 view .LVU187
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L61
	.loc 1 152 5 is_stmt 1 view .LVU188
	bl	kontroler
.LVL75:
.L61:
	.loc 1 150 5 view .LVU189
	bl	autic
.LVL76:
.L63:
	.align	2
.L62:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	frame_buffer
	.word	.LC10
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "nRF24L01/nRF24L01.h"
	.file 4 "DCMI/dcmi.h"
	.file 5 "check/check.h"
	.file 6 "./dma/dma.h"
	.file 7 "ov7670/ov7670.h"
	.file 8 "gpio/gpioc.h"
	.file 9 "delay/delay.h"
	.file 10 "usart/usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x737
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1d
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.LLRL15
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
	.uleb128 0xc
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0xc
	.4byte	.LASF6
	.byte	0x31
	.byte	0x19
	.4byte	0x64
	.uleb128 0xf
	.4byte	0x54
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xc
	.4byte	.LASF8
	.byte	0x34
	.byte	0x19
	.4byte	0x76
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x10
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x99
	.4byte	0xae
	.uleb128 0x11
	.4byte	0x8b
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0x9e
	.uleb128 0x12
	.4byte	.LASF13
	.byte	0x3
	.byte	0x95
	.byte	0x13
	.4byte	0xae
	.uleb128 0xd
	.4byte	0x5f
	.4byte	0xd0
	.uleb128 0x1e
	.4byte	0x8b
	.2byte	0x4aff
	.byte	0
	.uleb128 0xf
	.4byte	0xbf
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x4
	.byte	0xd
	.byte	0x1a
	.4byte	0xd0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0xb7
	.4byte	0xf2
	.uleb128 0x3
	.4byte	0xf2
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.uleb128 0x1f
	.4byte	.LASF47
	.byte	0x3
	.byte	0xb6
	.byte	0x9
	.4byte	0x42
	.uleb128 0x20
	.4byte	.LASF48
	.byte	0x3
	.byte	0xb2
	.byte	0x9
	.4byte	0x42
	.4byte	0x11e
	.uleb128 0x3
	.4byte	0xf2
	.uleb128 0x3
	.4byte	0xf2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x39
	.4byte	0x134
	.uleb128 0x3
	.4byte	0x134
	.uleb128 0x3
	.4byte	0x6b
	.byte	0
	.uleb128 0x9
	.4byte	0x5f
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x28
	.4byte	0x14f
	.uleb128 0x3
	.4byte	0x134
	.uleb128 0x3
	.4byte	0x54
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa
	.4byte	0x16c
	.uleb128 0x3
	.4byte	0x134
	.uleb128 0x3
	.4byte	0x54
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x7
	.byte	0x26
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x7
	.byte	0x1b
	.4byte	0x195
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x3
	.byte	0xaa
	.4byte	0x1ad
	.uleb128 0x3
	.4byte	0x42
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x8
	.byte	0xa
	.4byte	0x1be
	.uleb128 0x3
	.4byte	0xf2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x9
	.byte	0x9
	.4byte	0x1cf
	.uleb128 0x3
	.4byte	0x6b
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x8
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0xa
	.byte	0x10
	.4byte	0x1e8
	.uleb128 0x3
	.4byte	0x1e8
	.uleb128 0xe
	.byte	0
	.uleb128 0x9
	.4byte	0x92
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x9
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x9
	.byte	0x17
	.4byte	0x201
	.uleb128 0xe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0xa
	.byte	0xe
	.4byte	0x212
	.uleb128 0x3
	.4byte	0x6b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd3
	.byte	0x6
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fe
	.uleb128 0x14
	.4byte	.LASF14
	.byte	0xd3
	.byte	0x20
	.4byte	0x2fe
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0xd3
	.byte	0x37
	.4byte	0x6b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0xd4
	.4byte	0x303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xd5
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xd6
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xd7
	.byte	0xb
	.4byte	0x42
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x22
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x2cd
	.uleb128 0x23
	.ascii	"i\000"
	.byte	0x1
	.byte	0xe6
	.byte	0x12
	.4byte	0x84
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x16
	.4byte	.LLRL13
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xe7
	.byte	0x14
	.4byte	0x6b
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	0xf7
	.uleb128 0x2
	.4byte	.LVL30
	.4byte	0xe1
	.4byte	0x2ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL41
	.4byte	0x1d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x54
	.uleb128 0xd
	.4byte	0x42
	.4byte	0x313
	.uleb128 0x11
	.4byte	0x8b
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0xc9
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f
	.uleb128 0x8
	.4byte	.LVL43
	.4byte	0x212
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
	.uleb128 0x24
	.4byte	.LASF39
	.byte	0x1
	.byte	0xac
	.byte	0x6
	.byte	0x1
	.4byte	0x381
	.uleb128 0x18
	.4byte	.LASF14
	.byte	0xac
	.byte	0x1d
	.4byte	0x2fe
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0xac
	.byte	0x34
	.4byte	0x6b
	.uleb128 0x25
	.4byte	.LASF40
	.byte	0x1
	.byte	0xad
	.byte	0xb
	.4byte	0x303
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0xae
	.byte	0xc
	.4byte	0x6b
	.uleb128 0x19
	.ascii	"j\000"
	.byte	0xae
	.byte	0xf
	.4byte	0x6b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0xa0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45c
	.uleb128 0x26
	.4byte	0x33f
	.4byte	.LBI4
	.byte	.LVU8
	.4byte	.LLRL0
	.byte	0x1
	.byte	0xa5
	.byte	0x5
	.4byte	0x429
	.uleb128 0x27
	.4byte	0x357
	.2byte	0x4b00
	.uleb128 0x28
	.4byte	0x34c
	.uleb128 0x16
	.4byte	.LLRL0
	.uleb128 0x1a
	.4byte	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	0x36e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	0x377
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	0x103
	.4byte	0x3f7
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
	.4byte	.LVL7
	.4byte	0x103
	.4byte	0x411
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
	.uleb128 0x8
	.4byte	.LVL9
	.4byte	0x103
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
	.uleb128 0x2
	.4byte	.LVL0
	.4byte	0x139
	.4byte	0x444
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.uleb128 0x8
	.4byte	.LVL1
	.4byte	0x11e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.4byte	0x84
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6aa
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x21
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2
	.4byte	.LVL44
	.4byte	0x201
	.4byte	0x497
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x4
	.4byte	.LVL45
	.4byte	0x1f4
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	0x1ed
	.uleb128 0x2
	.4byte	.LVL47
	.4byte	0x1d6
	.4byte	0x4c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	0x1cf
	.uleb128 0x2
	.4byte	.LVL49
	.4byte	0x1be
	.4byte	0x4dc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL50
	.4byte	0x1ad
	.4byte	0x4f0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x4
	.4byte	.LVL51
	.4byte	0x19c
	.uleb128 0x2
	.4byte	.LVL52
	.4byte	0x1be
	.4byte	0x50e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL53
	.4byte	0x1d6
	.4byte	0x525
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL54
	.4byte	0x1d6
	.4byte	0x53c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2
	.4byte	.LVL55
	.4byte	0x1d6
	.4byte	0x553
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2
	.4byte	.LVL56
	.4byte	0x1d6
	.4byte	0x56a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2
	.4byte	.LVL57
	.4byte	0x1d6
	.4byte	0x581
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL58
	.4byte	0x1d6
	.4byte	0x598
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x4
	.4byte	.LVL59
	.4byte	0x195
	.uleb128 0x2
	.4byte	.LVL60
	.4byte	0x1be
	.4byte	0x5b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LVL61
	.4byte	0x188
	.uleb128 0x2
	.4byte	.LVL62
	.4byte	0x1be
	.4byte	0x5d2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	0x181
	.uleb128 0x2
	.4byte	.LVL64
	.4byte	0x1be
	.4byte	0x5f0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x4
	.4byte	.LVL65
	.4byte	0x17a
	.uleb128 0x2
	.4byte	.LVL66
	.4byte	0x1d6
	.4byte	0x610
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x4
	.4byte	.LVL67
	.4byte	0x173
	.uleb128 0x2
	.4byte	.LVL68
	.4byte	0x1d6
	.4byte	0x630
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x4
	.4byte	.LVL69
	.4byte	0x16c
	.uleb128 0x2
	.4byte	.LVL70
	.4byte	0x156
	.4byte	0x64e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.uleb128 0x2
	.4byte	.LVL71
	.4byte	0x1be
	.4byte	0x662
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	0x14f
	.uleb128 0x2
	.4byte	.LVL73
	.4byte	0x1d6
	.4byte	0x682
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2
	.4byte	.LVL74
	.4byte	0x139
	.4byte	0x697
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b00
	.byte	0
	.uleb128 0x4
	.4byte	.LVL75
	.4byte	0x313
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	0x381
	.byte	0
	.uleb128 0x2a
	.4byte	0x33f
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	0x34c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1b
	.4byte	0x357
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1a
	.4byte	0x362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.4byte	0x36e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xb
	.4byte	0x377
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2
	.4byte	.LVL13
	.4byte	0x103
	.4byte	0x709
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL20
	.4byte	0x103
	.4byte	0x723
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
	.uleb128 0x8
	.4byte	.LVL24
	.4byte	0x103
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS7:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LFE114-.LVL26
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LFE114-.LVL26
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU95
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU140
.LLST9:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL26
	.uleb128 .LVL33-.LVL26
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL33-.LVL26
	.uleb128 .LVL34-.LVL26
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL26
	.uleb128 .LVL37-.LVL26
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL37-.LVL26
	.uleb128 .LVL38-.LVL26
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL26
	.uleb128 .LVL42-.LVL26
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS10:
	.uleb128 .LVU98
	.uleb128 0
.LLST10:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LFE114-.LVL27
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS11:
	.uleb128 .LVU99
	.uleb128 .LVU101
.LLST11:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU108
	.uleb128 .LVU140
.LLST12:
	.byte	0x8
	.4byte	.LVL31
	.uleb128 .LVL42-.LVL31
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU115
	.uleb128 .LVU117
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU134
.LLST14:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL35-.LVL32
	.uleb128 0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.LVL32
	.uleb128 .LVL37-.LVL32
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL32
	.uleb128 .LVL39-.LVL32
	.uleb128 0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU18
	.uleb128 .LVU20
.LLST1:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU25
	.uleb128 .LVU33
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU45
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL7-1-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LVL8-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL1
	.uleb128 .LVL9-1-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL14-.LVL10
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL15-.LVL10
	.uleb128 0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL10
	.uleb128 .LFE112-.LVL10
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL25-.LVL10
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL25-.LVL10
	.uleb128 .LFE112-.LVL10
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU59
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU91
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL19-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL19-.LVL13
	.uleb128 .LVL21-.LVL13
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL13
	.uleb128 .LVL22-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL23-.LVL13
	.uleb128 .LVL25-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS6:
	.uleb128 .LVU49
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU68
	.uleb128 .LVU76
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU90
.LLST6:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL15-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL10
	.uleb128 .LVL17-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.LVL10
	.uleb128 .LVL20-1-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL20-.LVL10
	.uleb128 .LVL21-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL10
	.uleb128 .LVL22-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL23-.LVL10
	.uleb128 .LVL24-1-.LVL10
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
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB7-.LBB4
	.uleb128 .LBE7-.LBB4
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB9
	.byte	0x4
	.uleb128 .LBB9-.LBB9
	.uleb128 .LBE9-.LBB9
	.byte	0x4
	.uleb128 .LBB10-.LBB9
	.uleb128 .LBE10-.LBB9
	.byte	0x4
	.uleb128 .LBB11-.LBB9
	.uleb128 .LBE11-.LBB9
	.byte	0
.LLRL15:
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
.LASF47:
	.ascii	"dataReadyNRF24L01\000"
.LASF22:
	.ascii	"OV7670_VerifyRegisters_Custom\000"
.LASF25:
	.ascii	"initnRF24L01\000"
.LASF29:
	.ascii	"printUSART2\000"
.LASF19:
	.ascii	"checkDMA2_Stream1_status\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF44:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF15:
	.ascii	"rxDataNRF24L01\000"
.LASF17:
	.ascii	"DCMI_snapshot_debug\000"
.LASF21:
	.ascii	"DCMI_Init_OV7670\000"
.LASF36:
	.ascii	"total_bytes\000"
.LASF35:
	.ascii	"bytes_received\000"
.LASF13:
	.ascii	"c_nrf_slave_addr\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"delay_ms\000"
.LASF16:
	.ascii	"send_frame_buffer\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF43:
	.ascii	"node_type\000"
.LASF30:
	.ascii	"initSYSTIMER\000"
.LASF46:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/ov7670_capture_image_v1.4\000"
.LASF37:
	.ascii	"waiting_for_start\000"
.LASF18:
	.ascii	"initDMA2_for_OV7670_snapshot\000"
.LASF50:
	.ascii	"main\000"
.LASF40:
	.ascii	"packet\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF41:
	.ascii	"kontroler\000"
.LASF26:
	.ascii	"chkConnection_GPIOC6_GND\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF31:
	.ascii	"getOV7670_ID\000"
.LASF49:
	.ascii	"receiveFrameNRF\000"
.LASF3:
	.ascii	"long long int\000"
.LASF45:
	.ascii	"main.c\000"
.LASF12:
	.ascii	"char\000"
.LASF24:
	.ascii	"OV7670_XCLK_TIM1_init\000"
.LASF38:
	.ascii	"index\000"
.LASF39:
	.ascii	"sendFrameNRF\000"
.LASF42:
	.ascii	"autic\000"
.LASF1:
	.ascii	"short int\000"
.LASF48:
	.ascii	"txDataNRF24L01\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF28:
	.ascii	"initGPIOC6_GND\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF2:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"initSYSTIMER_TIM7\000"
.LASF34:
	.ascii	"length\000"
.LASF23:
	.ascii	"OV7670_SetupQQVGA_Custom_sa_neta\000"
.LASF14:
	.ascii	"frame_buffer\000"
.LASF33:
	.ascii	"initUSART2\000"
.LASF20:
	.ascii	"DCMI_CheckConfig\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

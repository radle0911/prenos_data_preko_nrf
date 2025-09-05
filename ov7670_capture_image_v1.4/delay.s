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
	.file	"delay.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "delay/delay.c"
	.align	1
	.p2align 2,,3
	.global	delay_ms
	.syntax unified
	.thumb
	.thumb_func
	.type	delay_ms, %function
delay_ms:
.LVL0:
.LFB110:
	.loc 1 8 27 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 5 view .LVU1
	.loc 1 9 8 is_stmt 0 view .LVU2
	ldr	r1, .L12
	.loc 1 10 16 view .LVU3
	ldr	r2, .L12+4
	.loc 1 9 8 view .LVU4
	ldr	r3, [r1, #64]
	.loc 1 9 18 view .LVU5
	orr	r3, r3, #64
	str	r3, [r1, #64]
	.loc 1 10 5 is_stmt 1 view .LVU6
	.loc 1 10 16 is_stmt 0 view .LVU7
	mov	ip, #83
	.loc 1 11 16 view .LVU8
	mov	r3, #1000
	.loc 1 10 16 view .LVU9
	strh	ip, [r2, #40]	@ movhi
	.loc 1 11 5 is_stmt 1 view .LVU10
	.loc 1 11 16 is_stmt 0 view .LVU11
	str	r3, [r2, #44]
	.loc 1 15 5 is_stmt 1 view .LVU12
	.loc 1 15 10 is_stmt 0 view .LVU13
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 15 16 view .LVU14
	orr	r3, r3, #132
	strh	r3, [r2]	@ movhi
	.loc 1 17 5 is_stmt 1 view .LVU15
	.loc 1 17 10 is_stmt 0 view .LVU16
	ldrh	r3, [r2]
	.loc 1 17 16 view .LVU17
	bic	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 19 5 is_stmt 1 view .LVU18
	.loc 1 19 10 is_stmt 0 view .LVU19
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	.loc 1 19 16 view .LVU20
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 20 5 is_stmt 1 view .LVU21
	.loc 1 20 10 is_stmt 0 view .LVU22
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 20 16 view .LVU23
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 22 5 is_stmt 1 view .LVU24
	.loc 1 22 11 view .LVU25
	cbz	r0, .L2
.LVL1:
.L3:
	.loc 1 23 16 discriminator 1 view .LVU26
	.loc 1 23 23 is_stmt 0 discriminator 1 view .LVU27
	ldrh	r3, [r2, #16]
	.loc 1 23 16 discriminator 1 view .LVU28
	lsls	r3, r3, #31
	bpl	.L3
	.loc 1 24 9 is_stmt 1 view .LVU29
	.loc 1 24 14 is_stmt 0 view .LVU30
	ldrh	r3, [r2, #16]
	.loc 1 24 19 view .LVU31
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 22 11 view .LVU32
	subs	r0, r0, #1
	.loc 1 24 19 view .LVU33
	strh	r3, [r2, #16]	@ movhi
	.loc 1 25 9 is_stmt 1 view .LVU34
	.loc 1 22 11 view .LVU35
	bne	.L3
.L2:
	.loc 1 28 5 view .LVU36
	.loc 1 28 10 is_stmt 0 view .LVU37
	ldr	r1, .L12+4
	.loc 1 29 8 view .LVU38
	ldr	r2, .L12
	.loc 1 28 10 view .LVU39
	ldrh	r3, [r1]
	.loc 1 28 16 view .LVU40
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 29 5 is_stmt 1 view .LVU41
	.loc 1 29 8 is_stmt 0 view .LVU42
	ldr	r3, [r2, #64]
	.loc 1 29 18 view .LVU43
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 30 1 view .LVU44
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE110:
	.size	delay_ms, .-delay_ms
	.align	1
	.p2align 2,,3
	.global	delay_us
	.syntax unified
	.thumb
	.thumb_func
	.type	delay_us, %function
delay_us:
.LVL2:
.LFB111:
	.loc 1 31 27 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 32 5 view .LVU46
	.loc 1 32 8 is_stmt 0 view .LVU47
	ldr	r1, .L24
	.loc 1 33 16 view .LVU48
	ldr	r2, .L24+4
	.loc 1 32 8 view .LVU49
	ldr	r3, [r1, #64]
	.loc 1 32 18 view .LVU50
	orr	r3, r3, #64
	str	r3, [r1, #64]
	.loc 1 33 5 is_stmt 1 view .LVU51
	.loc 1 33 16 is_stmt 0 view .LVU52
	mov	ip, #3
	.loc 1 34 16 view .LVU53
	movs	r3, #21
	.loc 1 33 16 view .LVU54
	strh	ip, [r2, #40]	@ movhi
	.loc 1 34 5 is_stmt 1 view .LVU55
	.loc 1 34 16 is_stmt 0 view .LVU56
	str	r3, [r2, #44]
	.loc 1 36 5 is_stmt 1 view .LVU57
	.loc 1 36 10 is_stmt 0 view .LVU58
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 36 16 view .LVU59
	orr	r3, r3, #132
	strh	r3, [r2]	@ movhi
	.loc 1 38 5 is_stmt 1 view .LVU60
	.loc 1 38 10 is_stmt 0 view .LVU61
	ldrh	r3, [r2]
	.loc 1 38 16 view .LVU62
	bic	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 40 5 is_stmt 1 view .LVU63
	.loc 1 40 10 is_stmt 0 view .LVU64
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	.loc 1 40 16 view .LVU65
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 41 5 is_stmt 1 view .LVU66
	.loc 1 41 10 is_stmt 0 view .LVU67
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 41 16 view .LVU68
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 43 5 is_stmt 1 view .LVU69
	.loc 1 43 12 view .LVU70
	cbz	r0, .L15
.LVL3:
.L16:
	.loc 1 44 16 discriminator 1 view .LVU71
	.loc 1 44 23 is_stmt 0 discriminator 1 view .LVU72
	ldrh	r3, [r2, #16]
	.loc 1 44 16 discriminator 1 view .LVU73
	lsls	r3, r3, #31
	bpl	.L16
	.loc 1 45 9 is_stmt 1 view .LVU74
	.loc 1 45 14 is_stmt 0 view .LVU75
	ldrh	r3, [r2, #16]
	.loc 1 45 19 view .LVU76
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 43 12 view .LVU77
	subs	r0, r0, #1
	.loc 1 45 19 view .LVU78
	strh	r3, [r2, #16]	@ movhi
	.loc 1 46 9 is_stmt 1 view .LVU79
	.loc 1 43 12 view .LVU80
	bne	.L16
.L15:
	.loc 1 48 5 view .LVU81
	.loc 1 48 10 is_stmt 0 view .LVU82
	ldr	r1, .L24+4
	.loc 1 49 8 view .LVU83
	ldr	r2, .L24
	.loc 1 48 10 view .LVU84
	ldrh	r3, [r1]
	.loc 1 48 16 view .LVU85
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 49 5 is_stmt 1 view .LVU86
	.loc 1 49 8 is_stmt 0 view .LVU87
	ldr	r3, [r2, #64]
	.loc 1 49 18 view .LVU88
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 52 1 view .LVU89
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE111:
	.size	delay_us, .-delay_us
	.align	1
	.p2align 2,,3
	.global	initSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.type	initSTOPWATCH, %function
initSTOPWATCH:
.LFB112:
	.loc 1 59 25 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 60 5 view .LVU91
	.loc 1 60 8 is_stmt 0 view .LVU92
	ldr	r1, .L27
	.loc 1 61 15 view .LVU93
	ldr	r3, .L27+4
	.loc 1 60 8 view .LVU94
	ldr	r2, [r1, #64]
	.loc 1 61 15 view .LVU95
	mov	ip, #83
	.loc 1 60 18 view .LVU96
	orr	r2, r2, #8
	.loc 1 62 15 view .LVU97
	mov	r0, #-1
	.loc 1 60 18 view .LVU98
	str	r2, [r1, #64]
	.loc 1 61 5 is_stmt 1 view .LVU99
	.loc 1 61 15 is_stmt 0 view .LVU100
	strh	ip, [r3, #40]	@ movhi
	.loc 1 62 5 is_stmt 1 view .LVU101
	.loc 1 62 15 is_stmt 0 view .LVU102
	str	r0, [r3, #44]
	.loc 1 64 5 is_stmt 1 view .LVU103
	.loc 1 64 9 is_stmt 0 view .LVU104
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 64 15 view .LVU105
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 65 5 is_stmt 1 view .LVU106
	.loc 1 65 9 is_stmt 0 view .LVU107
	ldrh	r2, [r3]
	.loc 1 65 15 view .LVU108
	bic	r2, r2, #112
	lsls	r2, r2, #16
	.loc 1 66 15 view .LVU109
	movs	r1, #0
	.loc 1 65 15 view .LVU110
	lsrs	r2, r2, #16
	strh	r2, [r3]	@ movhi
	.loc 1 66 5 is_stmt 1 view .LVU111
	.loc 1 66 15 is_stmt 0 view .LVU112
	strh	r1, [r3, #4]	@ movhi
	.loc 1 67 5 is_stmt 1 view .LVU113
	.loc 1 67 15 is_stmt 0 view .LVU114
	str	r1, [r3, #36]
	.loc 1 68 1 view .LVU115
	bx	lr
.L28:
	.align	2
.L27:
	.word	1073887232
	.word	1073744896
	.cfi_endproc
.LFE112:
	.size	initSTOPWATCH, .-initSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	startSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.type	startSTOPWATCH, %function
startSTOPWATCH:
.LFB113:
	.loc 1 69 26 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 70 5 view .LVU117
	.loc 1 70 9 is_stmt 0 view .LVU118
	ldr	r2, .L30
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	.loc 1 70 15 view .LVU119
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 71 5 is_stmt 1 view .LVU120
	.loc 1 71 9 is_stmt 0 view .LVU121
	ldrh	r3, [r2]
	uxth	r3, r3
	.loc 1 71 15 view .LVU122
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 72 1 view .LVU123
	bx	lr
.L31:
	.align	2
.L30:
	.word	1073744896
	.cfi_endproc
.LFE113:
	.size	startSTOPWATCH, .-startSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	stopSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.type	stopSTOPWATCH, %function
stopSTOPWATCH:
.LFB114:
	.loc 1 73 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 74 5 view .LVU125
.LVL4:
	.loc 1 75 5 view .LVU126
	.loc 1 75 10 is_stmt 0 view .LVU127
	ldr	r2, .L33
	ldr	r0, [r2, #36]
.LVL5:
	.loc 1 76 5 is_stmt 1 view .LVU128
	.loc 1 76 9 is_stmt 0 view .LVU129
	ldrh	r3, [r2]
	.loc 1 76 15 view .LVU130
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 78 5 is_stmt 1 view .LVU131
	.loc 1 79 1 is_stmt 0 view .LVU132
	bx	lr
.L34:
	.align	2
.L33:
	.word	1073744896
	.cfi_endproc
.LFE114:
	.size	stopSTOPWATCH, .-stopSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	initSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.type	initSYSTIMER, %function
initSYSTIMER:
.LFB115:
	.loc 1 86 24 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 87 5 view .LVU134
	.loc 1 87 8 is_stmt 0 view .LVU135
	ldr	r1, .L36
	ldr	r2, [r1, #64]
	.loc 1 88 15 view .LVU136
	mov	r3, #1073741824
	.loc 1 87 18 view .LVU137
	orr	r2, r2, #1
	.loc 1 88 15 view .LVU138
	mov	ip, #83
	.loc 1 89 15 view .LVU139
	mov	r0, #-1
	.loc 1 87 18 view .LVU140
	str	r2, [r1, #64]
	.loc 1 88 5 is_stmt 1 view .LVU141
	.loc 1 88 15 is_stmt 0 view .LVU142
	strh	ip, [r3, #40]	@ movhi
	.loc 1 89 5 is_stmt 1 view .LVU143
	.loc 1 89 15 is_stmt 0 view .LVU144
	str	r0, [r3, #44]
	.loc 1 91 5 is_stmt 1 view .LVU145
	.loc 1 91 9 is_stmt 0 view .LVU146
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 91 15 view .LVU147
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 92 5 is_stmt 1 view .LVU148
	.loc 1 92 9 is_stmt 0 view .LVU149
	ldrh	r2, [r3]
	.loc 1 92 15 view .LVU150
	bic	r2, r2, #112
	lsls	r2, r2, #16
	.loc 1 95 15 view .LVU151
	movs	r1, #0
	.loc 1 92 15 view .LVU152
	lsrs	r2, r2, #16
	strh	r2, [r3]	@ movhi
	.loc 1 95 5 is_stmt 1 view .LVU153
	.loc 1 95 15 is_stmt 0 view .LVU154
	strh	r1, [r3, #4]	@ movhi
	.loc 1 96 5 is_stmt 1 view .LVU155
	.loc 1 96 15 is_stmt 0 view .LVU156
	str	r1, [r3, #36]
	.loc 1 98 5 is_stmt 1 view .LVU157
	.loc 1 98 9 is_stmt 0 view .LVU158
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	.loc 1 98 15 view .LVU159
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 99 5 is_stmt 1 view .LVU160
	.loc 1 99 9 is_stmt 0 view .LVU161
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 99 15 view .LVU162
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 101 1 view .LVU163
	bx	lr
.L37:
	.align	2
.L36:
	.word	1073887232
	.cfi_endproc
.LFE115:
	.size	initSYSTIMER, .-initSYSTIMER
	.align	1
	.p2align 2,,3
	.global	getSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.type	getSYSTIMER, %function
getSYSTIMER:
.LFB116:
	.loc 1 102 27 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 103 5 view .LVU165
	.loc 1 103 16 is_stmt 0 view .LVU166
	mov	r3, #1073741824
	ldr	r0, [r3, #36]
	.loc 1 104 1 view .LVU167
	bx	lr
	.cfi_endproc
.LFE116:
	.size	getSYSTIMER, .-getSYSTIMER
	.align	1
	.p2align 2,,3
	.global	chk4TimeoutSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.type	chk4TimeoutSYSTIMER, %function
chk4TimeoutSYSTIMER:
.LVL6:
.LFB117:
	.loc 1 105 61 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 5 view .LVU169
.LBB9:
.LBI9:
	.loc 1 102 10 view .LVU170
.LBB10:
	.loc 1 103 5 view .LVU171
	.loc 1 103 16 is_stmt 0 view .LVU172
	mov	r3, #1073741824
	ldr	r3, [r3, #36]
.LVL7:
	.loc 1 103 16 view .LVU173
.LBE10:
.LBE9:
	.loc 1 107 5 is_stmt 1 view .LVU174
	.loc 1 107 8 is_stmt 0 view .LVU175
	cmp	r0, r3
	bhi	.L40
	.loc 1 108 9 is_stmt 1 view .LVU176
	.loc 1 108 27 is_stmt 0 view .LVU177
	add	r0, r0, r1
.LVL8:
	.loc 1 108 12 view .LVU178
	cmp	r0, r3
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL9:
.L40:
.LBB11:
	.loc 1 114 9 is_stmt 1 view .LVU179
	.loc 1 115 9 view .LVU180
	.loc 1 115 19 is_stmt 0 view .LVU181
	subs	r3, r3, #1
.LVL10:
	.loc 1 115 19 view .LVU182
	subs	r0, r3, r0
.LVL11:
	.loc 1 115 12 view .LVU183
	cmp	r0, r1
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
.LBE11:
	.loc 1 122 1 view .LVU184
	bx	lr
	.cfi_endproc
.LFE117:
	.size	chk4TimeoutSYSTIMER, .-chk4TimeoutSYSTIMER
	.align	1
	.p2align 2,,3
	.global	initSYSTIMER_TIM7
	.syntax unified
	.thumb
	.thumb_func
	.type	initSYSTIMER_TIM7, %function
initSYSTIMER_TIM7:
.LFB118:
	.loc 1 128 25 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 129 5 view .LVU186
	.loc 1 129 8 is_stmt 0 view .LVU187
	ldr	r0, .L43
	.loc 1 130 15 view .LVU188
	ldr	r3, .L43+4
	.loc 1 129 8 view .LVU189
	ldr	r2, [r0, #64]
	.loc 1 129 18 view .LVU190
	orr	r2, r2, #32
	str	r2, [r0, #64]
	.loc 1 130 5 is_stmt 1 view .LVU191
	.loc 1 137 15 is_stmt 0 view .LVU192
	movs	r1, #0
	.loc 1 130 15 view .LVU193
	mov	ip, #83
	.loc 1 131 15 view .LVU194
	mov	r0, #1000
	.loc 1 134 15 view .LVU195
	movs	r2, #132
	.loc 1 130 15 view .LVU196
	strh	ip, [r3, #40]	@ movhi
	.loc 1 131 5 is_stmt 1 view .LVU197
	.loc 1 131 15 is_stmt 0 view .LVU198
	str	r0, [r3, #44]
	.loc 1 134 5 is_stmt 1 view .LVU199
	.loc 1 134 15 is_stmt 0 view .LVU200
	strh	r2, [r3]	@ movhi
	.loc 1 137 5 is_stmt 1 view .LVU201
	.loc 1 137 15 is_stmt 0 view .LVU202
	strh	r1, [r3, #4]	@ movhi
	.loc 1 138 5 is_stmt 1 view .LVU203
	.loc 1 138 15 is_stmt 0 view .LVU204
	str	r1, [r3, #36]
	.loc 1 140 5 is_stmt 1 view .LVU205
	.loc 1 140 9 is_stmt 0 view .LVU206
	ldrh	r2, [r3, #20]
.LBB12:
.LBB13:
	.file 2 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1162 32 view .LVU207
	ldr	r0, .L43+8
.LBE13:
.LBE12:
	.loc 1 140 9 view .LVU208
	uxth	r2, r2
	.loc 1 140 15 view .LVU209
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 141 5 is_stmt 1 view .LVU210
	.loc 1 141 16 is_stmt 0 view .LVU211
	mov	ip, #1
.LBB15:
.LBB16:
	.loc 2 1075 46 view .LVU212
	mov	r2, #8388608
.LBE16:
.LBE15:
	.loc 1 141 16 view .LVU213
	strh	ip, [r3, #12]	@ movhi
	.loc 1 143 5 is_stmt 1 view .LVU214
.LVL12:
.LBB18:
.LBI12:
	.loc 2 1157 22 view .LVU215
.LBB14:
	.loc 2 1159 3 view .LVU216
	.loc 2 1162 5 view .LVU217
	.loc 2 1162 32 is_stmt 0 view .LVU218
	strb	r1, [r0, #823]
.LVL13:
	.loc 2 1162 32 view .LVU219
.LBE14:
.LBE18:
	.loc 1 144 5 is_stmt 1 view .LVU220
.LBB19:
.LBI15:
	.loc 2 1072 22 view .LVU221
.LBB17:
	.loc 2 1075 3 view .LVU222
	.loc 2 1075 46 is_stmt 0 view .LVU223
	str	r2, [r0, #4]
.LVL14:
	.loc 2 1075 46 view .LVU224
.LBE17:
.LBE19:
	.loc 1 145 5 is_stmt 1 view .LVU225
	.loc 1 145 9 is_stmt 0 view .LVU226
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 145 15 view .LVU227
	orr	r2, r2, ip
	strh	r2, [r3]	@ movhi
	.loc 1 163 1 view .LVU228
	bx	lr
.L44:
	.align	2
.L43:
	.word	1073887232
	.word	1073746944
	.word	-536813312
	.cfi_endproc
.LFE118:
	.size	initSYSTIMER_TIM7, .-initSYSTIMER_TIM7
	.align	1
	.p2align 2,,3
	.global	TIM7_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM7_IRQHandler, %function
TIM7_IRQHandler:
.LFB119:
	.loc 1 165 27 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 166 5 view .LVU230
	.loc 1 166 13 is_stmt 0 view .LVU231
	ldr	r3, .L50
	ldrh	r2, [r3, #16]
	.loc 1 166 8 view .LVU232
	lsls	r2, r2, #31
	bpl	.L45
	.loc 1 167 9 is_stmt 1 view .LVU233
	ldr	r1, .L50+4
	ldr	r2, [r1]
	.loc 1 168 18 is_stmt 0 view .LVU234
	movs	r0, #0
	.loc 1 167 9 view .LVU235
	adds	r2, r2, #1
	str	r2, [r1]
	.loc 1 168 9 is_stmt 1 view .LVU236
	.loc 1 168 18 is_stmt 0 view .LVU237
	strh	r0, [r3, #16]	@ movhi
.L45:
	.loc 1 179 1 view .LVU238
	bx	lr
.L51:
	.align	2
.L50:
	.word	1073746944
	.word	.LANCHOR0
	.cfi_endproc
.LFE119:
	.size	TIM7_IRQHandler, .-TIM7_IRQHandler
	.align	1
	.p2align 2,,3
	.global	getSYSTIMER_TIM7
	.syntax unified
	.thumb
	.thumb_func
	.type	getSYSTIMER_TIM7, %function
getSYSTIMER_TIM7:
.LFB120:
	.loc 1 182 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 183 5 view .LVU240
	.loc 1 183 12 is_stmt 0 view .LVU241
	ldr	r3, .L53
	ldr	r0, [r3]
	.loc 1 184 1 view .LVU242
	bx	lr
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.cfi_endproc
.LFE120:
	.size	getSYSTIMER_TIM7, .-getSYSTIMER_TIM7
	.align	1
	.p2align 2,,3
	.global	chk4TimeoutSYSTIMER_TIM7
	.syntax unified
	.thumb
	.thumb_func
	.type	chk4TimeoutSYSTIMER_TIM7, %function
chk4TimeoutSYSTIMER_TIM7:
.LVL15:
.LFB121:
	.loc 1 187 66 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 188 5 view .LVU244
	.loc 1 188 14 is_stmt 0 view .LVU245
	ldr	r3, .L58
	ldr	r3, [r3]
.LVL16:
	.loc 1 189 5 is_stmt 1 view .LVU246
	.loc 1 189 8 is_stmt 0 view .LVU247
	cmp	r3, r0
	bcc	.L56
	.loc 1 190 9 is_stmt 1 view .LVU248
	.loc 1 190 28 is_stmt 0 view .LVU249
	add	r0, r0, r1
.LVL17:
	.loc 1 190 12 view .LVU250
	cmp	r0, r3
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL18:
.L56:
.LBB20:
	.loc 1 196 9 is_stmt 1 view .LVU251
	.loc 1 197 9 view .LVU252
	.loc 1 197 19 is_stmt 0 view .LVU253
	subs	r3, r3, #1
.LVL19:
	.loc 1 197 19 view .LVU254
	subs	r0, r3, r0
.LVL20:
	.loc 1 197 12 view .LVU255
	cmp	r0, r1
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
.LBE20:
	.loc 1 220 1 view .LVU256
	bx	lr
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.cfi_endproc
.LFE121:
	.size	chk4TimeoutSYSTIMER_TIM7, .-chk4TimeoutSYSTIMER_TIM7
	.global	g_tim7_val
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_tim7_val, %object
	.size	g_tim7_val, 4
g_tim7_val:
	.space	4
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 4 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "delay/delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xbca
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF194
	.byte	0x1d
	.4byte	.LASF195
	.4byte	.LASF196
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x18
	.4byte	0x40
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xa
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x18
	.4byte	0x5f
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x3
	.byte	0x31
	.byte	0x19
	.4byte	0x77
	.uleb128 0x7
	.4byte	0x66
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x19
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x7e
	.uleb128 0xc
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1a
	.4byte	.LASF175
	.byte	0x5
	.byte	0x1c
	.byte	0x1a
	.4byte	0x8a
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x5
	.byte	0x1
	.4byte	0x26
	.byte	0x4
	.byte	0x91
	.byte	0xe
	.4byte	0x2eb
	.uleb128 0x8
	.4byte	.LASF13
	.sleb128 -14
	.uleb128 0x8
	.4byte	.LASF14
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 -11
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 -10
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 -5
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 -4
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 -2
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 -1
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x51
	.byte	0
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x4
	.byte	0xef
	.byte	0x3
	.4byte	0xbc
	.uleb128 0x1c
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.byte	0x9
	.4byte	0x3ad
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x132
	.4byte	0x3bd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x133
	.4byte	0x3c2
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x134
	.4byte	0x3bd
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x135
	.4byte	0x3c2
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF108
	.2byte	0x136
	.4byte	0x3bd
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF109
	.2byte	0x137
	.4byte	0x3c2
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF110
	.2byte	0x138
	.4byte	0x3bd
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF111
	.2byte	0x139
	.4byte	0x3c2
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF112
	.2byte	0x13a
	.4byte	0x3bd
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF113
	.2byte	0x13b
	.4byte	0x3d2
	.2byte	0x220
	.uleb128 0x1d
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.byte	0x11
	.4byte	0x3f2
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF114
	.2byte	0x13d
	.4byte	0x3f7
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF115
	.2byte	0x13e
	.4byte	0x8a
	.2byte	0xe00
	.byte	0
	.uleb128 0x4
	.4byte	0x8a
	.4byte	0x3bd
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x3ad
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x3d2
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x3e2
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x37
	.byte	0
	.uleb128 0x4
	.4byte	0x5a
	.4byte	0x3f2
	.uleb128 0x5
	.4byte	0xa9
	.byte	0xef
	.byte	0
	.uleb128 0x7
	.4byte	0x3e2
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x408
	.uleb128 0x1e
	.4byte	0xa9
	.2byte	0x283
	.byte	0
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x13f
	.byte	0x4
	.4byte	0x2f7
	.uleb128 0xf
	.byte	0x8c
	.byte	0x2
	.2byte	0x150
	.4byte	0x530
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x152
	.4byte	0x8f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x153
	.4byte	0x8a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x154
	.4byte	0x8a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x155
	.4byte	0x8a
	.byte	0xc
	.uleb128 0x3
	.ascii	"SCR\000"
	.byte	0x2
	.2byte	0x156
	.4byte	0x8a
	.byte	0x10
	.uleb128 0x3
	.ascii	"CCR\000"
	.byte	0x2
	.2byte	0x157
	.4byte	0x8a
	.byte	0x14
	.uleb128 0x3
	.ascii	"SHP\000"
	.byte	0x2
	.2byte	0x158
	.4byte	0x540
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x159
	.4byte	0x8a
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x15a
	.4byte	0x8a
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x15b
	.4byte	0x8a
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x15c
	.4byte	0x8a
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x15d
	.4byte	0x8a
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x15e
	.4byte	0x8a
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x15f
	.4byte	0x8a
	.byte	0x3c
	.uleb128 0x3
	.ascii	"PFR\000"
	.byte	0x2
	.2byte	0x160
	.4byte	0x55a
	.byte	0x40
	.uleb128 0x3
	.ascii	"DFR\000"
	.byte	0x2
	.2byte	0x161
	.4byte	0x8f
	.byte	0x48
	.uleb128 0x3
	.ascii	"ADR\000"
	.byte	0x2
	.2byte	0x162
	.4byte	0x8f
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x163
	.4byte	0x574
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x164
	.4byte	0x58e
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x165
	.4byte	0x593
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x166
	.4byte	0x8a
	.byte	0x88
	.byte	0
	.uleb128 0x4
	.4byte	0x5a
	.4byte	0x540
	.uleb128 0x5
	.4byte	0xa9
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x530
	.uleb128 0x4
	.4byte	0x8f
	.4byte	0x555
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x545
	.uleb128 0x7
	.4byte	0x555
	.uleb128 0x4
	.4byte	0x8f
	.4byte	0x56f
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x55f
	.uleb128 0x7
	.4byte	0x56f
	.uleb128 0x4
	.4byte	0x8f
	.4byte	0x589
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0x579
	.uleb128 0x7
	.4byte	0x589
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x5a3
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x167
	.byte	0x3
	.4byte	0x415
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x5c0
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x74f
	.uleb128 0x3
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0x8a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x2e0
	.4byte	0x8a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x2e1
	.4byte	0x8a
	.byte	0x8
	.uleb128 0x3
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0x8a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x2e3
	.4byte	0x8a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x2e4
	.4byte	0x8a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x2e5
	.4byte	0x8a
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x2e6
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x2e7
	.4byte	0x8a
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x2e8
	.4byte	0x8a
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x2e9
	.4byte	0x5b0
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x2ea
	.4byte	0x8a
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x2eb
	.4byte	0x8a
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x2ec
	.4byte	0x8a
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x2ed
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x2ee
	.4byte	0x8a
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x2ef
	.4byte	0x8a
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x2f0
	.4byte	0x5b0
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x2f1
	.4byte	0x8a
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x2f2
	.4byte	0x8a
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x2f3
	.4byte	0x8a
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x2f4
	.4byte	0x7e
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x2f5
	.4byte	0x8a
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x4
	.2byte	0x2f6
	.4byte	0x8a
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x2f7
	.4byte	0x5b0
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x2f8
	.4byte	0x8a
	.byte	0x70
	.uleb128 0x3
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0x8a
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x2fa
	.4byte	0x5b0
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x2fb
	.4byte	0x8a
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x4
	.2byte	0x2fc
	.4byte	0x8a
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0x4
	.2byte	0x2fd
	.byte	0x3
	.4byte	0x5c0
	.uleb128 0xf
	.byte	0x54
	.byte	0x4
	.2byte	0x369
	.4byte	0x938
	.uleb128 0x3
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x36b
	.4byte	0x72
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x36c
	.4byte	0x66
	.byte	0x2
	.uleb128 0x3
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x36d
	.4byte	0x72
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x36e
	.4byte	0x66
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x4
	.2byte	0x36f
	.4byte	0x72
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x370
	.4byte	0x66
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x4
	.2byte	0x371
	.4byte	0x72
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x372
	.4byte	0x66
	.byte	0xe
	.uleb128 0x3
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x373
	.4byte	0x72
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x374
	.4byte	0x66
	.byte	0x12
	.uleb128 0x3
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x375
	.4byte	0x72
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x376
	.4byte	0x66
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x377
	.4byte	0x72
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x378
	.4byte	0x66
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0x4
	.2byte	0x379
	.4byte	0x72
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x37a
	.4byte	0x66
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x37b
	.4byte	0x72
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x4
	.2byte	0x37c
	.4byte	0x66
	.byte	0x22
	.uleb128 0x3
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x37d
	.4byte	0x8a
	.byte	0x24
	.uleb128 0x3
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x37e
	.4byte	0x72
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x37f
	.4byte	0x66
	.byte	0x2a
	.uleb128 0x3
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x380
	.4byte	0x8a
	.byte	0x2c
	.uleb128 0x3
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x381
	.4byte	0x72
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x4
	.2byte	0x382
	.4byte	0x66
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x4
	.2byte	0x383
	.4byte	0x8a
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x4
	.2byte	0x384
	.4byte	0x8a
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x4
	.2byte	0x385
	.4byte	0x8a
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x4
	.2byte	0x386
	.4byte	0x8a
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x4
	.2byte	0x387
	.4byte	0x72
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x4
	.2byte	0x388
	.4byte	0x66
	.byte	0x46
	.uleb128 0x3
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x389
	.4byte	0x72
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x4
	.2byte	0x38a
	.4byte	0x66
	.byte	0x4a
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x4
	.2byte	0x38b
	.4byte	0x72
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x4
	.2byte	0x38c
	.4byte	0x66
	.byte	0x4e
	.uleb128 0x3
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x38d
	.4byte	0x72
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x4
	.2byte	0x38e
	.4byte	0x66
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0x4
	.2byte	0x38f
	.byte	0x3
	.4byte	0x75c
	.uleb128 0x1f
	.4byte	0xb0
	.byte	0x1
	.byte	0x5
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim7_val
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0xbb
	.byte	0x9
	.4byte	0x4e
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bd
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0xbb
	.byte	0x2b
	.4byte	0x7e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0xbb
	.byte	0x3b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xbc
	.byte	0xe
	.4byte	0x7e
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x20
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xc4
	.byte	0x12
	.4byte	0x7e
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x1
	.byte	0xb6
	.byte	0xa
	.4byte	0x7e
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0xa5
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF197
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa49
	.uleb128 0x23
	.4byte	0xb82
	.4byte	.LBI12
	.byte	.LVU215
	.4byte	.LLRL6
	.byte	0x1
	.byte	0x8f
	.byte	0x5
	.4byte	0xa29
	.uleb128 0x11
	.4byte	0xb99
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x11
	.4byte	0xb8d
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x24
	.4byte	0xba6
	.4byte	.LBI15
	.byte	.LVU221
	.4byte	.LLRL9
	.byte	0x1
	.byte	0x90
	.byte	0x5
	.uleb128 0x11
	.4byte	0xbb1
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x69
	.byte	0x9
	.4byte	0x4e
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacc
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x69
	.byte	0x26
	.4byte	0x7e
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x69
	.byte	0x36
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x6a
	.byte	0xe
	.4byte	0x7e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x25
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xab6
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x72
	.byte	0x12
	.4byte	0x7e
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x26
	.4byte	0xacc
	.4byte	.LBI9
	.byte	.LVU170
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0x6a
	.byte	0x15
	.byte	0
	.uleb128 0x27
	.4byte	.LASF198
	.byte	0x1
	.byte	0x66
	.byte	0xa
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0x56
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0x49
	.byte	0xa
	.4byte	0x7e
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb16
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x4a
	.byte	0xe
	.4byte	0x7e
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0x45
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF187
	.byte	0x3b
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF188
	.byte	0x1f
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5c
	.uleb128 0x16
	.ascii	"us\000"
	.byte	0x1f
	.4byte	0x7e
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF189
	.byte	0x8
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb82
	.uleb128 0x16
	.ascii	"ms\000"
	.byte	0x8
	.4byte	0x7e
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF192
	.2byte	0x485
	.4byte	0xba6
	.uleb128 0x12
	.4byte	.LASF190
	.2byte	0x485
	.byte	0x31
	.4byte	0x2eb
	.uleb128 0x12
	.4byte	.LASF191
	.2byte	0x485
	.byte	0x40
	.4byte	0x7e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF193
	.2byte	0x430
	.4byte	0xbbe
	.uleb128 0x12
	.4byte	.LASF190
	.2byte	0x430
	.byte	0x2f
	.4byte	0x2eb
	.byte	0
	.uleb128 0x28
	.4byte	0xacc
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1d
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE121-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU246
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE121-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU252
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE121-.Ltext0
	.uleb128 0x5
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU215
	.uleb128 .LVU219
.LLST7:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU215
	.uleb128 .LVU219
.LLST8:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU221
	.uleb128 .LVU224
.LLST10:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU173
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU180
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0x5
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE114-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU71
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU26
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
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
.LLRL6:
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0
.LLRL9:
	.byte	0x4
	.uleb128 .LBB15-.Ltext0
	.uleb128 .LBE15-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF99:
	.ascii	"DCMI_IRQn\000"
.LASF101:
	.ascii	"HASH_RNG_IRQn\000"
.LASF143:
	.ascii	"APB1ENR\000"
.LASF130:
	.ascii	"CPACR\000"
.LASF157:
	.ascii	"CCMR1\000"
.LASF149:
	.ascii	"APB2LPENR\000"
.LASF89:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF70:
	.ascii	"SDIO_IRQn\000"
.LASF138:
	.ascii	"APB2RSTR\000"
.LASF43:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF100:
	.ascii	"CRYP_IRQn\000"
.LASF55:
	.ascii	"I2C2_ER_IRQn\000"
.LASF77:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF51:
	.ascii	"TIM4_IRQn\000"
.LASF83:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF192:
	.ascii	"NVIC_SetPriority\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF37:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF124:
	.ascii	"DFSR\000"
.LASF150:
	.ascii	"BDCR\000"
.LASF32:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF25:
	.ascii	"FLASH_IRQn\000"
.LASF27:
	.ascii	"EXTI0_IRQn\000"
.LASF177:
	.ascii	"tmp32\000"
.LASF96:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF61:
	.ascii	"EXTI15_10_IRQn\000"
.LASF128:
	.ascii	"MMFR\000"
.LASF64:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF194:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF146:
	.ascii	"AHB2LPENR\000"
.LASF19:
	.ascii	"PendSV_IRQn\000"
.LASF63:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF73:
	.ascii	"UART4_IRQn\000"
.LASF26:
	.ascii	"RCC_IRQn\000"
.LASF14:
	.ascii	"MemoryManagement_IRQn\000"
.LASF174:
	.ascii	"TIM_TypeDef\000"
.LASF160:
	.ascii	"CCER\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF184:
	.ascii	"initSYSTIMER\000"
.LASF23:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF168:
	.ascii	"BDTR\000"
.LASF104:
	.ascii	"ISER\000"
.LASF88:
	.ascii	"OTG_FS_IRQn\000"
.LASF140:
	.ascii	"AHB1ENR\000"
.LASF164:
	.ascii	"CCR1\000"
.LASF152:
	.ascii	"SSCGR\000"
.LASF166:
	.ascii	"CCR3\000"
.LASF107:
	.ascii	"RSERVED1\000"
.LASF198:
	.ascii	"getSYSTIMER\000"
.LASF79:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF158:
	.ascii	"CCMR2\000"
.LASF56:
	.ascii	"SPI1_IRQn\000"
.LASF186:
	.ascii	"startSTOPWATCH\000"
.LASF45:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF193:
	.ascii	"NVIC_EnableIRQ\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF159:
	.ascii	"RESERVED7\000"
.LASF68:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF179:
	.ascii	"TIM7_IRQHandler\000"
.LASF34:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF87:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF42:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF176:
	.ascii	"time\000"
.LASF136:
	.ascii	"AHB3RSTR\000"
.LASF187:
	.ascii	"initSTOPWATCH\000"
.LASF175:
	.ascii	"g_tim7_val\000"
.LASF103:
	.ascii	"IRQn_Type\000"
.LASF91:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF59:
	.ascii	"USART2_IRQn\000"
.LASF117:
	.ascii	"CPUID\000"
.LASF154:
	.ascii	"RCC_TypeDef\000"
.LASF94:
	.ascii	"I2C3_ER_IRQn\000"
.LASF126:
	.ascii	"BFAR\000"
.LASF24:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF98:
	.ascii	"OTG_HS_IRQn\000"
.LASF127:
	.ascii	"AFSR\000"
.LASF156:
	.ascii	"DIER\000"
.LASF142:
	.ascii	"AHB3ENR\000"
.LASF29:
	.ascii	"EXTI2_IRQn\000"
.LASF137:
	.ascii	"APB1RSTR\000"
.LASF54:
	.ascii	"I2C2_EV_IRQn\000"
.LASF123:
	.ascii	"HFSR\000"
.LASF72:
	.ascii	"SPI3_IRQn\000"
.LASF120:
	.ascii	"AIRCR\000"
.LASF50:
	.ascii	"TIM3_IRQn\000"
.LASF36:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF165:
	.ascii	"CCR2\000"
.LASF167:
	.ascii	"CCR4\000"
.LASF155:
	.ascii	"SMCR\000"
.LASF65:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF3:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"WWDG_IRQn\000"
.LASF121:
	.ascii	"SHCSR\000"
.LASF86:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF148:
	.ascii	"APB1LPENR\000"
.LASF81:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF122:
	.ascii	"CFSR\000"
.LASF15:
	.ascii	"BusFault_IRQn\000"
.LASF47:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF197:
	.ascii	"initSYSTIMER_TIM7\000"
.LASF31:
	.ascii	"EXTI4_IRQn\000"
.LASF189:
	.ascii	"delay_ms\000"
.LASF22:
	.ascii	"PVD_IRQn\000"
.LASF39:
	.ascii	"ADC_IRQn\000"
.LASF110:
	.ascii	"ICPR\000"
.LASF144:
	.ascii	"APB2ENR\000"
.LASF71:
	.ascii	"TIM5_IRQn\000"
.LASF145:
	.ascii	"AHB1LPENR\000"
.LASF52:
	.ascii	"I2C1_EV_IRQn\000"
.LASF182:
	.ascii	"btime\000"
.LASF40:
	.ascii	"CAN1_TX_IRQn\000"
.LASF7:
	.ascii	"uint16_t\000"
.LASF33:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF190:
	.ascii	"IRQn\000"
.LASF195:
	.ascii	"delay/delay.c\000"
.LASF41:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF135:
	.ascii	"AHB2RSTR\000"
.LASF115:
	.ascii	"STIR\000"
.LASF125:
	.ascii	"MMFAR\000"
.LASF62:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF105:
	.ascii	"RESERVED0\000"
.LASF139:
	.ascii	"RESERVED1\000"
.LASF109:
	.ascii	"RESERVED2\000"
.LASF111:
	.ascii	"RESERVED3\000"
.LASF113:
	.ascii	"RESERVED4\000"
.LASF114:
	.ascii	"RESERVED5\000"
.LASF151:
	.ascii	"RESERVED6\000"
.LASF1:
	.ascii	"short int\000"
.LASF161:
	.ascii	"RESERVED8\000"
.LASF162:
	.ascii	"RESERVED9\000"
.LASF90:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF93:
	.ascii	"I2C3_EV_IRQn\000"
.LASF2:
	.ascii	"long int\000"
.LASF58:
	.ascii	"USART1_IRQn\000"
.LASF171:
	.ascii	"DMAR\000"
.LASF74:
	.ascii	"UART5_IRQn\000"
.LASF13:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF78:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF191:
	.ascii	"priority\000"
.LASF48:
	.ascii	"TIM1_CC_IRQn\000"
.LASF67:
	.ascii	"TIM8_CC_IRQn\000"
.LASF38:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF133:
	.ascii	"CFGR\000"
.LASF181:
	.ascii	"chk4TimeoutSYSTIMER\000"
.LASF69:
	.ascii	"FSMC_IRQn\000"
.LASF28:
	.ascii	"EXTI1_IRQn\000"
.LASF116:
	.ascii	"NVIC_Type\000"
.LASF131:
	.ascii	"SCB_Type\000"
.LASF75:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF132:
	.ascii	"PLLCFGR\000"
.LASF119:
	.ascii	"VTOR\000"
.LASF53:
	.ascii	"I2C1_ER_IRQn\000"
.LASF92:
	.ascii	"USART6_IRQn\000"
.LASF20:
	.ascii	"SysTick_IRQn\000"
.LASF147:
	.ascii	"AHB3LPENR\000"
.LASF118:
	.ascii	"ICSR\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"TIM2_IRQn\000"
.LASF180:
	.ascii	"chk4TimeoutSYSTIMER_TIM7\000"
.LASF141:
	.ascii	"AHB2ENR\000"
.LASF4:
	.ascii	"int32_t\000"
.LASF97:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF18:
	.ascii	"DebugMonitor_IRQn\000"
.LASF153:
	.ascii	"PLLI2SCFGR\000"
.LASF16:
	.ascii	"UsageFault_IRQn\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF44:
	.ascii	"EXTI9_5_IRQn\000"
.LASF17:
	.ascii	"SVCall_IRQn\000"
.LASF84:
	.ascii	"CAN2_TX_IRQn\000"
.LASF66:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF163:
	.ascii	"RESERVED10\000"
.LASF169:
	.ascii	"RESERVED11\000"
.LASF170:
	.ascii	"RESERVED12\000"
.LASF172:
	.ascii	"RESERVED13\000"
.LASF173:
	.ascii	"RESERVED14\000"
.LASF85:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF106:
	.ascii	"ICER\000"
.LASF178:
	.ascii	"getSYSTIMER_TIM7\000"
.LASF80:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF57:
	.ascii	"SPI2_IRQn\000"
.LASF112:
	.ascii	"IABR\000"
.LASF76:
	.ascii	"TIM7_IRQn\000"
.LASF188:
	.ascii	"delay_us\000"
.LASF35:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF0:
	.ascii	"signed char\000"
.LASF183:
	.ascii	"period\000"
.LASF196:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/ov7670_capture_image_v1.4\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"EXTI3_IRQn\000"
.LASF108:
	.ascii	"ISPR\000"
.LASF129:
	.ascii	"ISAR\000"
.LASF95:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF60:
	.ascii	"USART3_IRQn\000"
.LASF46:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF185:
	.ascii	"stopSTOPWATCH\000"
.LASF102:
	.ascii	"FPU_IRQn\000"
.LASF82:
	.ascii	"ETH_IRQn\000"
.LASF134:
	.ascii	"AHB1RSTR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

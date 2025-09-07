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
	.file	"ov7670.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "ov7670/ov7670.c"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> OV7670 inicijalizacija QQVGA RGB565 160x120 - za"
	.ascii	"vrseno!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_InitQQVGA_RGB565
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_InitQQVGA_RGB565, %function
OV7670_InitQQVGA_RGB565:
.LFB110:
	.loc 1 96 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 97 5 view .LVU1
	.loc 1 100 5 view .LVU2
	.loc 1 96 1 is_stmt 0 view .LVU3
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 101 5 view .LVU4
	add	r1, sp, #7
	.loc 1 100 9 view .LVU5
	movs	r3, #128
	.loc 1 101 5 view .LVU6
	movs	r2, #1
	movs	r0, #18
	.loc 1 100 9 view .LVU7
	strb	r3, [sp, #7]
	.loc 1 101 5 is_stmt 1 view .LVU8
	bl	writeI2C
.LVL0:
	.loc 1 102 5 view .LVU9
	movs	r0, #200
	bl	delay_ms
.LVL1:
	.loc 1 105 5 view .LVU10
	.loc 1 105 9 is_stmt 0 view .LVU11
	movs	r3, #3
	.loc 1 106 5 view .LVU12
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #17
	.loc 1 105 9 view .LVU13
	strb	r3, [sp, #7]
	.loc 1 106 5 is_stmt 1 view .LVU14
	.loc 1 109 9 is_stmt 0 view .LVU15
	movs	r4, #4
	.loc 1 106 5 view .LVU16
	bl	writeI2C
.LVL2:
	.loc 1 109 5 is_stmt 1 view .LVU17
	.loc 1 110 5 is_stmt 0 view .LVU18
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #12
	.loc 1 109 9 view .LVU19
	strb	r4, [sp, #7]
	.loc 1 110 5 is_stmt 1 view .LVU20
	bl	writeI2C
.LVL3:
	.loc 1 112 5 view .LVU21
	.loc 1 112 9 is_stmt 0 view .LVU22
	movs	r3, #34
	.loc 1 113 5 view .LVU23
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #114
	.loc 1 112 9 view .LVU24
	strb	r3, [sp, #7]
	.loc 1 113 5 is_stmt 1 view .LVU25
	.loc 1 115 9 is_stmt 0 view .LVU26
	movs	r5, #58
	.loc 1 113 5 view .LVU27
	bl	writeI2C
.LVL4:
	.loc 1 115 5 is_stmt 1 view .LVU28
	.loc 1 116 5 is_stmt 0 view .LVU29
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #112
	.loc 1 115 9 view .LVU30
	strb	r5, [sp, #7]
	.loc 1 116 5 is_stmt 1 view .LVU31
	bl	writeI2C
.LVL5:
	.loc 1 118 5 view .LVU32
	.loc 1 119 5 is_stmt 0 view .LVU33
	add	r1, sp, #7
	.loc 1 118 9 view .LVU34
	movs	r3, #53
	.loc 1 119 5 view .LVU35
	movs	r2, #1
	movs	r0, #113
	.loc 1 118 9 view .LVU36
	strb	r3, [sp, #7]
	.loc 1 119 5 is_stmt 1 view .LVU37
	bl	writeI2C
.LVL6:
	.loc 1 121 5 view .LVU38
	.loc 1 122 5 is_stmt 0 view .LVU39
	add	r1, sp, #7
	.loc 1 121 9 view .LVU40
	movs	r3, #242
	.loc 1 122 5 view .LVU41
	movs	r2, #1
	movs	r0, #115
	.loc 1 121 9 view .LVU42
	strb	r3, [sp, #7]
	.loc 1 122 5 is_stmt 1 view .LVU43
	bl	writeI2C
.LVL7:
	.loc 1 124 5 view .LVU44
	.loc 1 125 5 is_stmt 0 view .LVU45
	add	r1, sp, #7
	.loc 1 124 9 view .LVU46
	movs	r3, #2
	.loc 1 125 5 view .LVU47
	movs	r2, #1
	movs	r0, #162
	.loc 1 124 9 view .LVU48
	strb	r3, [sp, #7]
	.loc 1 125 5 is_stmt 1 view .LVU49
	bl	writeI2C
.LVL8:
	.loc 1 128 5 view .LVU50
	.loc 1 128 9 is_stmt 0 view .LVU51
	movs	r3, #26
	.loc 1 129 5 view .LVU52
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #62
	.loc 1 128 9 view .LVU53
	strb	r3, [sp, #7]
	.loc 1 129 5 is_stmt 1 view .LVU54
	bl	writeI2C
.LVL9:
	.loc 1 130 5 view .LVU55
	movs	r0, #10
	bl	delay_ms
.LVL10:
	.loc 1 133 5 view .LVU56
	.loc 1 134 5 is_stmt 0 view .LVU57
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #18
	.loc 1 133 9 view .LVU58
	strb	r4, [sp, #7]
	.loc 1 134 5 is_stmt 1 view .LVU59
	bl	writeI2C
.LVL11:
	.loc 1 136 5 view .LVU60
	.loc 1 136 9 is_stmt 0 view .LVU61
	movs	r3, #208
	.loc 1 137 5 view .LVU62
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #64
	.loc 1 136 9 view .LVU63
	strb	r3, [sp, #7]
	.loc 1 137 5 is_stmt 1 view .LVU64
	bl	writeI2C
.LVL12:
	.loc 1 140 5 view .LVU65
	.loc 1 141 5 is_stmt 0 view .LVU66
	add	r1, sp, #7
	mov	r0, r5
	movs	r2, #1
	.loc 1 140 9 view .LVU67
	strb	r4, [sp, #7]
	.loc 1 141 5 is_stmt 1 view .LVU68
	bl	writeI2C
.LVL13:
	.loc 1 144 5 view .LVU69
	.loc 1 144 9 is_stmt 0 view .LVU70
	movs	r4, #10
	.loc 1 145 5 view .LVU71
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #59
	.loc 1 144 9 view .LVU72
	strb	r4, [sp, #7]
	.loc 1 145 5 is_stmt 1 view .LVU73
	bl	writeI2C
.LVL14:
	.loc 1 148 5 view .LVU74
	.loc 1 151 5 is_stmt 0 view .LVU75
	add	r1, sp, #7
	.loc 1 148 9 view .LVU76
	movs	r3, #231
	.loc 1 151 5 view .LVU77
	movs	r2, #1
	movs	r0, #19
	.loc 1 148 9 view .LVU78
	strb	r3, [sp, #7]
	.loc 1 151 5 is_stmt 1 view .LVU79
	bl	writeI2C
.LVL15:
	.loc 1 153 5 view .LVU80
	mov	r0, r4
	bl	delay_ms
.LVL16:
	.loc 1 156 5 view .LVU81
	.loc 1 156 9 is_stmt 0 view .LVU82
	movs	r3, #32
	.loc 1 157 5 view .LVU83
	movs	r2, #1
	add	r1, sp, #7
	movs	r0, #21
	.loc 1 156 9 view .LVU84
	strb	r3, [sp, #7]
	.loc 1 157 5 is_stmt 1 view .LVU85
	bl	writeI2C
.LVL17:
	.loc 1 158 5 view .LVU86
	mov	r0, r4
	bl	delay_ms
.LVL18:
	.loc 1 160 5 view .LVU87
	ldr	r0, .L4
	bl	printUSART2
.LVL19:
	.loc 1 161 1 is_stmt 0 view .LVU88
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.cfi_endproc
.LFE110:
	.size	OV7670_InitQQVGA_RGB565, .-OV7670_InitQQVGA_RGB565
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"-> OV7670 inicijalizacija QQVGA RGB565 FullData zav"
	.ascii	"rsena!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_InitQQVGA_RGB565_FullData
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_InitQQVGA_RGB565_FullData, %function
OV7670_InitQQVGA_RGB565_FullData:
.LFB111:
	.loc 1 167 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 168 5 view .LVU90
	.loc 1 171 5 view .LVU91
	.loc 1 167 1 is_stmt 0 view .LVU92
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 171 9 view .LVU93
	movs	r3, #128
	.loc 1 172 5 view .LVU94
	movs	r2, #1
	add	r1, sp, #7
	movs	r0, #18
	.loc 1 176 9 view .LVU95
	mov	r4, r2
	.loc 1 171 9 view .LVU96
	strb	r3, [sp, #7]
	.loc 1 172 5 is_stmt 1 view .LVU97
	bl	writeI2C
.LVL20:
	.loc 1 173 5 view .LVU98
	movs	r0, #200
	bl	delay_ms
.LVL21:
	.loc 1 176 5 view .LVU99
	.loc 1 177 5 is_stmt 0 view .LVU100
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #17
	.loc 1 180 9 view .LVU101
	movs	r5, #0
	.loc 1 176 9 view .LVU102
	strb	r4, [sp, #7]
	.loc 1 177 5 is_stmt 1 view .LVU103
	bl	writeI2C
.LVL22:
	.loc 1 180 5 view .LVU104
	.loc 1 181 5 is_stmt 0 view .LVU105
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #12
	.loc 1 180 9 view .LVU106
	strb	r5, [sp, #7]
	.loc 1 181 5 is_stmt 1 view .LVU107
	bl	writeI2C
.LVL23:
	.loc 1 183 5 view .LVU108
	.loc 1 184 5 is_stmt 0 view .LVU109
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #114
	.loc 1 183 9 view .LVU110
	strb	r5, [sp, #7]
	.loc 1 184 5 is_stmt 1 view .LVU111
	bl	writeI2C
.LVL24:
	.loc 1 186 5 view .LVU112
	.loc 1 187 5 is_stmt 0 view .LVU113
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #112
	.loc 1 186 9 view .LVU114
	strb	r5, [sp, #7]
	.loc 1 187 5 is_stmt 1 view .LVU115
	bl	writeI2C
.LVL25:
	.loc 1 189 5 view .LVU116
	.loc 1 190 5 is_stmt 0 view .LVU117
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #113
	.loc 1 189 9 view .LVU118
	strb	r5, [sp, #7]
	.loc 1 190 5 is_stmt 1 view .LVU119
	bl	writeI2C
.LVL26:
	.loc 1 192 5 view .LVU120
	.loc 1 193 5 is_stmt 0 view .LVU121
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #115
	.loc 1 192 9 view .LVU122
	strb	r5, [sp, #7]
	.loc 1 193 5 is_stmt 1 view .LVU123
	bl	writeI2C
.LVL27:
	.loc 1 195 5 view .LVU124
	.loc 1 196 5 is_stmt 0 view .LVU125
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #162
	.loc 1 195 9 view .LVU126
	strb	r5, [sp, #7]
	.loc 1 196 5 is_stmt 1 view .LVU127
	bl	writeI2C
.LVL28:
	.loc 1 199 5 view .LVU128
	.loc 1 200 5 is_stmt 0 view .LVU129
	mov	r2, r4
	add	r1, sp, #7
	.loc 1 199 9 view .LVU130
	movs	r3, #4
	.loc 1 200 5 view .LVU131
	movs	r0, #18
	.loc 1 199 9 view .LVU132
	strb	r3, [sp, #7]
	.loc 1 200 5 is_stmt 1 view .LVU133
	bl	writeI2C
.LVL29:
	.loc 1 202 5 view .LVU134
	.loc 1 203 5 is_stmt 0 view .LVU135
	mov	r2, r4
	add	r1, sp, #7
	.loc 1 202 9 view .LVU136
	movs	r3, #208
	.loc 1 203 5 view .LVU137
	movs	r0, #64
	.loc 1 202 9 view .LVU138
	strb	r3, [sp, #7]
	.loc 1 203 5 is_stmt 1 view .LVU139
	bl	writeI2C
.LVL30:
	.loc 1 206 5 view .LVU140
	.loc 1 207 5 is_stmt 0 view .LVU141
	mov	r2, r4
	add	r1, sp, #7
	.loc 1 206 9 view .LVU142
	movs	r3, #32
	.loc 1 207 5 view .LVU143
	movs	r0, #21
	.loc 1 206 9 view .LVU144
	strb	r3, [sp, #7]
	.loc 1 207 5 is_stmt 1 view .LVU145
	bl	writeI2C
.LVL31:
	.loc 1 210 5 view .LVU146
	.loc 1 210 9 is_stmt 0 view .LVU147
	movs	r3, #231
	.loc 1 213 5 view .LVU148
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #19
	.loc 1 210 9 view .LVU149
	strb	r3, [sp, #7]
	.loc 1 213 5 is_stmt 1 view .LVU150
	bl	writeI2C
.LVL32:
	.loc 1 215 5 view .LVU151
	ldr	r0, .L8
	bl	printUSART2
.LVL33:
	.loc 1 216 1 is_stmt 0 view .LVU152
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L9:
	.align	2
.L8:
	.word	.LC1
	.cfi_endproc
.LFE111:
	.size	OV7670_InitQQVGA_RGB565_FullData, .-OV7670_InitQQVGA_RGB565_FullData
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"-> OV7670 product ID (PID) [0x%xb]\012\000"
	.align	2
.LC3:
	.ascii	"-> OV7670 version (VER) [0x%xb]\012\000"
	.align	2
.LC4:
	.ascii	"   Kamera radi ispravno\012\000"
	.align	2
.LC5:
	.ascii	"    Kamera ne radi ispravno\012\000"
	.align	2
.LC6:
	.ascii	"==============================================\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	getOV7670_ID
	.syntax unified
	.thumb
	.thumb_func
	.type	getOV7670_ID, %function
getOV7670_ID:
.LFB112:
	.loc 1 258 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 259 3 view .LVU154
	.loc 1 260 3 view .LVU155
	.loc 1 261 3 view .LVU156
.LVL34:
	.loc 1 262 3 view .LVU157
	.loc 1 265 3 view .LVU158
	.loc 1 258 1 is_stmt 0 view .LVU159
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 265 3 view .LVU160
	movs	r0, #66
	.loc 1 258 1 view .LVU161
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 265 3 view .LVU162
	bl	initI2C1
.LVL35:
	.loc 1 268 3 is_stmt 1 view .LVU163
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #10
	bl	readI2C
.LVL36:
	.loc 1 269 3 view .LVU164
	.loc 1 269 10 is_stmt 0 view .LVU165
	ldrb	r5, [sp, #4]	@ zero_extendqisi2
.LVL37:
	.loc 1 270 3 is_stmt 1 view .LVU166
	ldr	r0, .L15
	mov	r1, r5
	bl	printUSART2
.LVL38:
	.loc 1 271 3 view .LVU167
	.loc 1 273 3 view .LVU168
	add	r1, sp, #4
	movs	r0, #11
	movs	r2, #1
	bl	readI2C
.LVL39:
	.loc 1 274 3 view .LVU169
	.loc 1 274 10 is_stmt 0 view .LVU170
	ldrb	r4, [sp, #4]	@ zero_extendqisi2
.LVL40:
	.loc 1 275 3 is_stmt 1 view .LVU171
	ldr	r0, .L15+4
	mov	r1, r4
	bl	printUSART2
.LVL41:
	.loc 1 276 3 view .LVU172
	.loc 1 276 6 is_stmt 0 view .LVU173
	cmp	r4, #115
	bne	.L11
	.loc 1 276 23 is_stmt 1 discriminator 1 view .LVU174
.LVL42:
	.loc 1 277 3 discriminator 1 view .LVU175
	.loc 1 277 6 is_stmt 0 discriminator 1 view .LVU176
	cmp	r5, #118
	beq	.L14
.LVL43:
.L11:
	.loc 1 278 8 is_stmt 1 view .LVU177
	ldr	r0, .L15+8
	bl	printUSART2
.LVL44:
	.loc 1 279 3 view .LVU178
	ldr	r0, .L15+12
	bl	printUSART2
.LVL45:
	.loc 1 280 1 is_stmt 0 view .LVU179
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL46:
.L14:
	.cfi_restore_state
	.loc 1 277 17 is_stmt 1 discriminator 1 view .LVU180
	ldr	r0, .L15+16
	bl	printUSART2
.LVL47:
	.loc 1 279 3 discriminator 1 view .LVU181
	ldr	r0, .L15+12
	bl	printUSART2
.LVL48:
	.loc 1 280 1 is_stmt 0 discriminator 1 view .LVU182
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL49:
.L16:
	.loc 1 280 1 discriminator 1 view .LVU183
	.align	2
.L15:
	.word	.LC2
	.word	.LC3
	.word	.LC5
	.word	.LC6
	.word	.LC4
	.cfi_endproc
.LFE112:
	.size	getOV7670_ID, .-getOV7670_ID
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"OV7670 PID = 0x%x\012\000"
	.align	2
.LC8:
	.ascii	"OV7670 -> Init QQVGA RGB565 READY!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_Init_QQVGA_RGB565_Working
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_Init_QQVGA_RGB565_Working, %function
OV7670_Init_QQVGA_RGB565_Working:
.LFB113:
	.loc 1 285 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 286 5 view .LVU185
	.loc 1 289 5 view .LVU186
	.loc 1 285 1 is_stmt 0 view .LVU187
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 289 5 view .LVU188
	movs	r0, #66
	.loc 1 285 1 view .LVU189
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 289 5 view .LVU190
	bl	initI2C1
.LVL50:
	.loc 1 292 5 is_stmt 1 view .LVU191
	.loc 1 293 5 is_stmt 0 view .LVU192
	movs	r2, #1
	add	r1, sp, r2
	.loc 1 292 10 view .LVU193
	movs	r3, #128
	.loc 1 293 5 view .LVU194
	movs	r0, #18
	.loc 1 292 10 view .LVU195
	strb	r3, [sp, #1]
	.loc 1 293 5 is_stmt 1 view .LVU196
	bl	writeI2C
.LVL51:
	.loc 1 294 5 view .LVU197
	movs	r0, #200
	bl	delay_ms
.LVL52:
	.loc 1 297 5 view .LVU198
	.loc 1 298 5 is_stmt 0 view .LVU199
	movs	r2, #1
	add	r1, sp, r2
	.loc 1 297 10 view .LVU200
	movs	r3, #4
	.loc 1 298 5 view .LVU201
	movs	r0, #18
	.loc 1 297 10 view .LVU202
	strb	r3, [sp, #1]
	.loc 1 298 5 is_stmt 1 view .LVU203
	bl	writeI2C
.LVL53:
	.loc 1 299 5 view .LVU204
	movs	r0, #10
	bl	delay_ms
.LVL54:
	.loc 1 302 5 view .LVU205
	.loc 1 303 5 is_stmt 0 view .LVU206
	movs	r2, #1
	add	r1, sp, r2
	.loc 1 302 10 view .LVU207
	movs	r3, #20
	.loc 1 303 5 view .LVU208
	movs	r0, #64
	.loc 1 307 10 view .LVU209
	mov	r4, r2
	.loc 1 302 10 view .LVU210
	strb	r3, [sp, #1]
	.loc 1 303 5 is_stmt 1 view .LVU211
	bl	writeI2C
.LVL55:
	.loc 1 304 5 view .LVU212
	movs	r0, #5
	bl	delay_ms
.LVL56:
	.loc 1 307 5 view .LVU213
	.loc 1 307 18 is_stmt 0 view .LVU214
	mov	r2, r4
	add	r1, sp, r4
	movs	r0, #12
	.loc 1 307 10 view .LVU215
	strb	r4, [sp, #1]
	.loc 1 307 18 is_stmt 1 view .LVU216
	bl	writeI2C
.LVL57:
	.loc 1 308 5 view .LVU217
	.loc 1 308 10 is_stmt 0 view .LVU218
	movs	r3, #164
	.loc 1 308 18 view .LVU219
	mov	r2, r4
	add	r1, sp, r4
	movs	r0, #62
	.loc 1 308 10 view .LVU220
	strb	r3, [sp, #1]
	.loc 1 308 18 is_stmt 1 view .LVU221
	bl	writeI2C
.LVL58:
	.loc 1 309 5 view .LVU222
	movs	r0, #5
	bl	delay_ms
.LVL59:
	.loc 1 311 5 view .LVU223
	.loc 1 311 41 is_stmt 0 view .LVU224
	movs	r5, #0
	.loc 1 311 5 view .LVU225
	mov	r2, r4
	add	r1, sp, #2
	movs	r0, #12
	.loc 1 311 41 view .LVU226
	strb	r5, [sp, #2]
	.loc 1 311 5 view .LVU227
	bl	writeI2C
.LVL60:
	.loc 1 312 5 is_stmt 1 view .LVU228
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 312 42 is_stmt 0 view .LVU229
	movs	r3, #25
	.loc 1 312 5 view .LVU230
	movs	r0, #62
	.loc 1 312 42 view .LVU231
	strb	r3, [sp, #3]
	.loc 1 312 5 view .LVU232
	bl	writeI2C
.LVL61:
	.loc 1 313 5 is_stmt 1 view .LVU233
	mov	r2, r4
	add	r1, sp, #4
	.loc 1 313 48 is_stmt 0 view .LVU234
	movs	r3, #58
	.loc 1 313 5 view .LVU235
	movs	r0, #112
	.loc 1 313 48 view .LVU236
	strb	r3, [sp, #4]
	.loc 1 313 5 view .LVU237
	bl	writeI2C
.LVL62:
	.loc 1 314 5 is_stmt 1 view .LVU238
	mov	r2, r4
	add	r1, sp, #5
	.loc 1 314 48 is_stmt 0 view .LVU239
	movs	r3, #53
	.loc 1 314 5 view .LVU240
	movs	r0, #113
	.loc 1 314 48 view .LVU241
	strb	r3, [sp, #5]
	.loc 1 314 5 view .LVU242
	bl	writeI2C
.LVL63:
	.loc 1 315 5 is_stmt 1 view .LVU243
	mov	r2, r4
	add	r1, sp, #6
	.loc 1 315 51 is_stmt 0 view .LVU244
	movs	r3, #17
	.loc 1 315 5 view .LVU245
	movs	r0, #114
	.loc 1 315 51 view .LVU246
	strb	r3, [sp, #6]
	.loc 1 315 5 view .LVU247
	bl	writeI2C
.LVL64:
	.loc 1 316 5 is_stmt 1 view .LVU248
	.loc 1 316 53 is_stmt 0 view .LVU249
	movs	r3, #241
	.loc 1 316 5 view .LVU250
	mov	r2, r4
	add	r1, sp, #7
	movs	r0, #115
	.loc 1 316 53 view .LVU251
	strb	r3, [sp, #7]
	.loc 1 316 5 view .LVU252
	bl	writeI2C
.LVL65:
	.loc 1 317 5 is_stmt 1 view .LVU253
	movs	r0, #10
	bl	delay_ms
.LVL66:
	.loc 1 320 5 view .LVU254
	.loc 1 321 5 is_stmt 0 view .LVU255
	mov	r2, r4
	add	r1, sp, r4
	movs	r0, #21
	.loc 1 320 10 view .LVU256
	strb	r5, [sp, #1]
	.loc 1 321 5 is_stmt 1 view .LVU257
	bl	writeI2C
.LVL67:
	.loc 1 322 5 view .LVU258
	movs	r0, #5
	bl	delay_ms
.LVL68:
	.loc 1 325 5 view .LVU259
	mov	r2, r4
	add	r1, sp, r4
	movs	r0, #10
	bl	readI2C
.LVL69:
	.loc 1 326 5 view .LVU260
	ldrb	r1, [sp, #1]	@ zero_extendqisi2
	ldr	r0, .L19
	bl	printUSART2
.LVL70:
	.loc 1 328 5 view .LVU261
	ldr	r0, .L19+4
	bl	printUSART2
.LVL71:
	.loc 1 329 1 is_stmt 0 view .LVU262
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L20:
	.align	2
.L19:
	.word	.LC7
	.word	.LC8
	.cfi_endproc
.LFE113:
	.size	OV7670_Init_QQVGA_RGB565_Working, .-OV7670_Init_QQVGA_RGB565_Working
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"-> OV7670 inicijalizacija za 160x120 RGB565 zavrsen"
	.ascii	"a!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	initOV7670_ChatGPT
	.syntax unified
	.thumb
	.thumb_func
	.type	initOV7670_ChatGPT, %function
initOV7670_ChatGPT:
.LFB114:
	.loc 1 378 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 379 5 view .LVU264
	.loc 1 380 5 view .LVU265
	.loc 1 381 5 view .LVU266
	.loc 1 384 5 view .LVU267
	.loc 1 378 1 is_stmt 0 view .LVU268
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 384 5 view .LVU269
	movs	r0, #66
	.loc 1 378 1 view .LVU270
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 384 5 view .LVU271
	bl	initI2C1
.LVL72:
	.loc 1 387 5 is_stmt 1 view .LVU272
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #10
	bl	readI2C
.LVL73:
	.loc 1 388 5 view .LVU273
	.loc 1 389 5 view .LVU274
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
.LVL74:
	.loc 1 389 5 is_stmt 0 view .LVU275
	ldr	r0, .L23
	bl	printUSART2
.LVL75:
	.loc 1 391 5 is_stmt 1 view .LVU276
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #11
	bl	readI2C
.LVL76:
	.loc 1 392 5 view .LVU277
	.loc 1 393 5 view .LVU278
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
.LVL77:
	.loc 1 393 5 is_stmt 0 view .LVU279
	ldr	r0, .L23+4
	bl	printUSART2
.LVL78:
	.loc 1 396 5 is_stmt 1 view .LVU280
	.loc 1 396 9 is_stmt 0 view .LVU281
	movs	r5, #128
	.loc 1 397 5 view .LVU282
	add	r1, sp, #3
	movs	r2, #1
	movs	r0, #18
	.loc 1 396 9 view .LVU283
	strb	r5, [sp, #3]
	.loc 1 397 5 is_stmt 1 view .LVU284
	bl	writeI2C
.LVL79:
	.loc 1 398 5 view .LVU285
	movs	r0, #200
	bl	delay_ms
.LVL80:
	.loc 1 401 5 view .LVU286
	.loc 1 402 5 is_stmt 0 view .LVU287
	add	r1, sp, #3
	.loc 1 401 9 view .LVU288
	movs	r3, #20
	.loc 1 402 5 view .LVU289
	movs	r2, #1
	movs	r0, #18
	.loc 1 401 9 view .LVU290
	strb	r3, [sp, #3]
	.loc 1 402 5 is_stmt 1 view .LVU291
	bl	writeI2C
.LVL81:
	.loc 1 403 5 view .LVU292
	movs	r0, #5
	bl	delay_ms
.LVL82:
	.loc 1 406 5 view .LVU293
	.loc 1 406 9 is_stmt 0 view .LVU294
	movs	r3, #208
	.loc 1 407 5 view .LVU295
	add	r1, sp, #3
	movs	r2, #1
	movs	r0, #64
	.loc 1 411 9 view .LVU296
	movs	r4, #1
	.loc 1 406 9 view .LVU297
	strb	r3, [sp, #3]
	.loc 1 407 5 is_stmt 1 view .LVU298
	bl	writeI2C
.LVL83:
	.loc 1 408 5 view .LVU299
	movs	r0, #5
	bl	delay_ms
.LVL84:
	.loc 1 411 5 view .LVU300
	.loc 1 412 5 is_stmt 0 view .LVU301
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #17
	.loc 1 411 9 view .LVU302
	strb	r4, [sp, #3]
	.loc 1 412 5 is_stmt 1 view .LVU303
	bl	writeI2C
.LVL85:
	.loc 1 413 5 view .LVU304
	movs	r0, #5
	bl	delay_ms
.LVL86:
	.loc 1 415 5 view .LVU305
	.loc 1 415 9 is_stmt 0 view .LVU306
	movs	r3, #74
	.loc 1 416 5 view .LVU307
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #107
	.loc 1 415 9 view .LVU308
	strb	r3, [sp, #3]
	.loc 1 416 5 is_stmt 1 view .LVU309
	bl	writeI2C
.LVL87:
	.loc 1 417 5 view .LVU310
	movs	r0, #5
	bl	delay_ms
.LVL88:
	.loc 1 420 5 view .LVU311
	.loc 1 421 5 is_stmt 0 view .LVU312
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #50
	.loc 1 420 9 view .LVU313
	strb	r5, [sp, #3]
	.loc 1 421 5 is_stmt 1 view .LVU314
	bl	writeI2C
.LVL89:
	.loc 1 422 5 view .LVU315
	movs	r0, #5
	bl	delay_ms
.LVL90:
	.loc 1 424 5 view .LVU316
	.loc 1 425 5 is_stmt 0 view .LVU317
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 424 9 view .LVU318
	movs	r3, #22
	.loc 1 425 5 view .LVU319
	movs	r0, #23
	.loc 1 424 9 view .LVU320
	strb	r3, [sp, #3]
	.loc 1 425 5 is_stmt 1 view .LVU321
	bl	writeI2C
.LVL91:
	.loc 1 426 5 view .LVU322
	movs	r0, #5
	bl	delay_ms
.LVL92:
	.loc 1 428 5 view .LVU323
	.loc 1 428 9 is_stmt 0 view .LVU324
	movs	r3, #4
	.loc 1 429 5 view .LVU325
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #24
	.loc 1 428 9 view .LVU326
	strb	r3, [sp, #3]
	.loc 1 429 5 is_stmt 1 view .LVU327
	bl	writeI2C
.LVL93:
	.loc 1 430 5 view .LVU328
	movs	r0, #5
	bl	delay_ms
.LVL94:
	.loc 1 433 5 view .LVU329
	.loc 1 433 9 is_stmt 0 view .LVU330
	movs	r5, #2
	.loc 1 434 5 view .LVU331
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #25
	.loc 1 433 9 view .LVU332
	strb	r5, [sp, #3]
	.loc 1 434 5 is_stmt 1 view .LVU333
	bl	writeI2C
.LVL95:
	.loc 1 435 5 view .LVU334
	movs	r0, #5
	bl	delay_ms
.LVL96:
	.loc 1 437 5 view .LVU335
	.loc 1 438 5 is_stmt 0 view .LVU336
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 437 9 view .LVU337
	movs	r3, #122
	.loc 1 438 5 view .LVU338
	movs	r0, #26
	.loc 1 437 9 view .LVU339
	strb	r3, [sp, #3]
	.loc 1 438 5 is_stmt 1 view .LVU340
	bl	writeI2C
.LVL97:
	.loc 1 439 5 view .LVU341
	movs	r0, #5
	bl	delay_ms
.LVL98:
	.loc 1 441 5 view .LVU342
	.loc 1 442 5 is_stmt 0 view .LVU343
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 441 9 view .LVU344
	movs	r3, #10
	.loc 1 442 5 view .LVU345
	movs	r0, #3
	.loc 1 441 9 view .LVU346
	strb	r3, [sp, #3]
	.loc 1 442 5 is_stmt 1 view .LVU347
	bl	writeI2C
.LVL99:
	.loc 1 443 5 view .LVU348
	movs	r0, #5
	bl	delay_ms
.LVL100:
	.loc 1 446 5 view .LVU349
	.loc 1 447 5 is_stmt 0 view .LVU350
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 446 9 view .LVU351
	movs	r3, #58
	.loc 1 447 5 view .LVU352
	movs	r0, #112
	.loc 1 446 9 view .LVU353
	strb	r3, [sp, #3]
	.loc 1 447 5 is_stmt 1 view .LVU354
	bl	writeI2C
.LVL101:
	.loc 1 448 5 view .LVU355
	movs	r0, #5
	bl	delay_ms
.LVL102:
	.loc 1 450 5 view .LVU356
	.loc 1 451 5 is_stmt 0 view .LVU357
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 450 9 view .LVU358
	movs	r3, #53
	.loc 1 451 5 view .LVU359
	movs	r0, #113
	.loc 1 450 9 view .LVU360
	strb	r3, [sp, #3]
	.loc 1 451 5 is_stmt 1 view .LVU361
	bl	writeI2C
.LVL103:
	.loc 1 452 5 view .LVU362
	movs	r0, #5
	bl	delay_ms
.LVL104:
	.loc 1 454 5 view .LVU363
	.loc 1 455 5 is_stmt 0 view .LVU364
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 454 9 view .LVU365
	movs	r3, #17
	.loc 1 455 5 view .LVU366
	movs	r0, #114
	.loc 1 454 9 view .LVU367
	strb	r3, [sp, #3]
	.loc 1 455 5 is_stmt 1 view .LVU368
	bl	writeI2C
.LVL105:
	.loc 1 456 5 view .LVU369
	movs	r0, #5
	bl	delay_ms
.LVL106:
	.loc 1 458 5 view .LVU370
	.loc 1 458 9 is_stmt 0 view .LVU371
	movs	r3, #241
	.loc 1 459 5 view .LVU372
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #115
	.loc 1 458 9 view .LVU373
	strb	r3, [sp, #3]
	.loc 1 459 5 is_stmt 1 view .LVU374
	bl	writeI2C
.LVL107:
	.loc 1 460 5 view .LVU375
	movs	r0, #5
	bl	delay_ms
.LVL108:
	.loc 1 462 5 view .LVU376
	.loc 1 463 5 is_stmt 0 view .LVU377
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #162
	.loc 1 462 9 view .LVU378
	strb	r5, [sp, #3]
	.loc 1 463 5 is_stmt 1 view .LVU379
	bl	writeI2C
.LVL109:
	.loc 1 464 5 view .LVU380
	movs	r0, #5
	bl	delay_ms
.LVL110:
	.loc 1 466 5 view .LVU381
	ldr	r0, .L23+8
	bl	printUSART2
.LVL111:
	.loc 1 467 1 is_stmt 0 view .LVU382
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L24:
	.align	2
.L23:
	.word	.LC2
	.word	.LC3
	.word	.LC9
	.cfi_endproc
.LFE114:
	.size	initOV7670_ChatGPT, .-initOV7670_ChatGPT
	.align	1
	.p2align 2,,3
	.global	initOV7670
	.syntax unified
	.thumb
	.thumb_func
	.type	initOV7670, %function
initOV7670:
.LFB115:
	.loc 1 473 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 474 3 view .LVU384
	.loc 1 475 3 view .LVU385
	.loc 1 476 3 view .LVU386
	.loc 1 478 3 view .LVU387
	.loc 1 473 1 is_stmt 0 view .LVU388
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 478 3 view .LVU389
	movs	r0, #66
	.loc 1 473 1 view .LVU390
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 478 3 view .LVU391
	bl	initI2C1
.LVL112:
	.loc 1 480 3 is_stmt 1 view .LVU392
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #10
	bl	readI2C
.LVL113:
	.loc 1 483 3 view .LVU393
	.loc 1 485 3 view .LVU394
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
.LVL114:
	.loc 1 485 3 is_stmt 0 view .LVU395
	ldr	r0, .L27
	bl	printUSART2
.LVL115:
	.loc 1 487 3 is_stmt 1 view .LVU396
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #11
	bl	readI2C
.LVL116:
	.loc 1 488 3 view .LVU397
	.loc 1 489 3 view .LVU398
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
.LVL117:
	.loc 1 489 3 is_stmt 0 view .LVU399
	ldr	r0, .L27+4
	bl	printUSART2
.LVL118:
	.loc 1 493 3 is_stmt 1 view .LVU400
	.loc 1 493 7 is_stmt 0 view .LVU401
	movs	r5, #128
	.loc 1 494 3 view .LVU402
	add	r1, sp, #3
	movs	r2, #1
	movs	r0, #18
	.loc 1 493 7 view .LVU403
	strb	r5, [sp, #3]
	.loc 1 494 3 is_stmt 1 view .LVU404
	bl	writeI2C
.LVL119:
	.loc 1 495 3 view .LVU405
	movs	r0, #200
	bl	delay_ms
.LVL120:
	.loc 1 500 5 view .LVU406
	.loc 1 502 3 is_stmt 0 view .LVU407
	add	r1, sp, #3
	.loc 1 500 9 view .LVU408
	movs	r3, #20
	.loc 1 502 3 view .LVU409
	movs	r2, #1
	movs	r0, #18
	.loc 1 500 9 view .LVU410
	strb	r3, [sp, #3]
	.loc 1 502 3 is_stmt 1 view .LVU411
	bl	writeI2C
.LVL121:
	.loc 1 503 3 view .LVU412
	movs	r0, #5
	bl	delay_ms
.LVL122:
	.loc 1 517 3 view .LVU413
	.loc 1 517 7 is_stmt 0 view .LVU414
	movs	r3, #208
	.loc 1 518 3 view .LVU415
	add	r1, sp, #3
	movs	r2, #1
	movs	r0, #64
	.loc 1 530 7 view .LVU416
	movs	r4, #1
	.loc 1 517 7 view .LVU417
	strb	r3, [sp, #3]
	.loc 1 518 3 is_stmt 1 view .LVU418
	bl	writeI2C
.LVL123:
	.loc 1 524 3 view .LVU419
	movs	r0, #5
	bl	delay_ms
.LVL124:
	.loc 1 530 3 view .LVU420
	.loc 1 531 3 is_stmt 0 view .LVU421
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #17
	.loc 1 530 7 view .LVU422
	strb	r4, [sp, #3]
	.loc 1 531 3 is_stmt 1 view .LVU423
	bl	writeI2C
.LVL125:
	.loc 1 532 3 view .LVU424
	movs	r0, #5
	bl	delay_ms
.LVL126:
	.loc 1 545 3 view .LVU425
	.loc 1 545 7 is_stmt 0 view .LVU426
	movs	r3, #74
	.loc 1 546 3 view .LVU427
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #107
	.loc 1 545 7 view .LVU428
	strb	r3, [sp, #3]
	.loc 1 546 3 is_stmt 1 view .LVU429
	bl	writeI2C
.LVL127:
	.loc 1 547 3 view .LVU430
	movs	r0, #5
	bl	delay_ms
.LVL128:
	.loc 1 560 3 view .LVU431
	.loc 1 561 3 is_stmt 0 view .LVU432
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #50
	.loc 1 560 7 view .LVU433
	strb	r5, [sp, #3]
	.loc 1 561 3 is_stmt 1 view .LVU434
	bl	writeI2C
.LVL129:
	.loc 1 562 3 view .LVU435
	movs	r0, #5
	bl	delay_ms
.LVL130:
	.loc 1 563 3 view .LVU436
	.loc 1 564 3 is_stmt 0 view .LVU437
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 563 7 view .LVU438
	movs	r3, #22
	.loc 1 564 3 view .LVU439
	movs	r0, #23
	.loc 1 563 7 view .LVU440
	strb	r3, [sp, #3]
	.loc 1 564 3 is_stmt 1 view .LVU441
	bl	writeI2C
.LVL131:
	.loc 1 565 3 view .LVU442
	movs	r0, #5
	bl	delay_ms
.LVL132:
	.loc 1 566 3 view .LVU443
	.loc 1 566 7 is_stmt 0 view .LVU444
	movs	r3, #4
	.loc 1 567 3 view .LVU445
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #24
	.loc 1 566 7 view .LVU446
	strb	r3, [sp, #3]
	.loc 1 567 3 is_stmt 1 view .LVU447
	bl	writeI2C
.LVL133:
	.loc 1 568 3 view .LVU448
	movs	r0, #5
	bl	delay_ms
.LVL134:
	.loc 1 604 3 view .LVU449
	.loc 1 604 7 is_stmt 0 view .LVU450
	movs	r5, #2
	.loc 1 605 3 view .LVU451
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #25
	.loc 1 604 7 view .LVU452
	strb	r5, [sp, #3]
	.loc 1 605 3 is_stmt 1 view .LVU453
	bl	writeI2C
.LVL135:
	.loc 1 606 3 view .LVU454
	movs	r0, #5
	bl	delay_ms
.LVL136:
	.loc 1 607 3 view .LVU455
	.loc 1 608 3 is_stmt 0 view .LVU456
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 607 7 view .LVU457
	movs	r3, #122
	.loc 1 608 3 view .LVU458
	movs	r0, #26
	.loc 1 607 7 view .LVU459
	strb	r3, [sp, #3]
	.loc 1 608 3 is_stmt 1 view .LVU460
	bl	writeI2C
.LVL137:
	.loc 1 609 3 view .LVU461
	movs	r0, #5
	bl	delay_ms
.LVL138:
	.loc 1 610 3 view .LVU462
	.loc 1 611 3 is_stmt 0 view .LVU463
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 610 7 view .LVU464
	movs	r3, #10
	.loc 1 611 3 view .LVU465
	movs	r0, #3
	.loc 1 610 7 view .LVU466
	strb	r3, [sp, #3]
	.loc 1 611 3 is_stmt 1 view .LVU467
	bl	writeI2C
.LVL139:
	.loc 1 612 3 view .LVU468
	movs	r0, #5
	bl	delay_ms
.LVL140:
	.loc 1 634 5 view .LVU469
	.loc 1 635 5 is_stmt 0 view .LVU470
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 634 9 view .LVU471
	movs	r3, #58
	.loc 1 635 5 view .LVU472
	movs	r0, #112
	.loc 1 634 9 view .LVU473
	strb	r3, [sp, #3]
	.loc 1 635 5 is_stmt 1 view .LVU474
	bl	writeI2C
.LVL141:
	.loc 1 636 5 view .LVU475
	movs	r0, #5
	bl	delay_ms
.LVL142:
	.loc 1 644 5 view .LVU476
	.loc 1 644 17 is_stmt 0 view .LVU477
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 644 9 view .LVU478
	movs	r3, #53
	.loc 1 644 17 view .LVU479
	movs	r0, #113
	.loc 1 644 9 view .LVU480
	strb	r3, [sp, #3]
	.loc 1 644 17 is_stmt 1 view .LVU481
	bl	writeI2C
.LVL143:
	.loc 1 645 5 view .LVU482
	movs	r0, #5
	bl	delay_ms
.LVL144:
	.loc 1 646 5 view .LVU483
	.loc 1 646 17 is_stmt 0 view .LVU484
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 646 9 view .LVU485
	movs	r3, #17
	.loc 1 646 17 view .LVU486
	movs	r0, #114
	.loc 1 646 9 view .LVU487
	strb	r3, [sp, #3]
	.loc 1 646 17 is_stmt 1 view .LVU488
	bl	writeI2C
.LVL145:
	.loc 1 647 5 view .LVU489
	movs	r0, #5
	bl	delay_ms
.LVL146:
	.loc 1 648 5 view .LVU490
	.loc 1 648 9 is_stmt 0 view .LVU491
	movs	r3, #241
	.loc 1 648 17 view .LVU492
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #115
	.loc 1 648 9 view .LVU493
	strb	r3, [sp, #3]
	.loc 1 648 17 is_stmt 1 view .LVU494
	bl	writeI2C
.LVL147:
	.loc 1 649 5 view .LVU495
	movs	r0, #5
	bl	delay_ms
.LVL148:
	.loc 1 650 5 view .LVU496
	.loc 1 650 17 is_stmt 0 view .LVU497
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #162
	.loc 1 650 9 view .LVU498
	strb	r5, [sp, #3]
	.loc 1 650 17 is_stmt 1 view .LVU499
	bl	writeI2C
.LVL149:
	.loc 1 651 5 view .LVU500
	movs	r0, #5
	bl	delay_ms
.LVL150:
	.loc 1 656 3 view .LVU501
	ldr	r0, .L27+8
	bl	printUSART2
.LVL151:
	.loc 1 658 1 is_stmt 0 view .LVU502
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L28:
	.align	2
.L27:
	.word	.LC2
	.word	.LC3
	.word	.LC9
	.cfi_endproc
.LFE115:
	.size	initOV7670, .-initOV7670
	.align	1
	.p2align 2,,3
	.global	OV7670_XCLK_TIM1_init_chtGPT
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_XCLK_TIM1_init_chtGPT, %function
OV7670_XCLK_TIM1_init_chtGPT:
.LFB116:
	.loc 1 663 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 665 5 view .LVU504
	.loc 1 665 8 is_stmt 0 view .LVU505
	ldr	r0, .L31
	.loc 1 668 10 view .LVU506
	ldr	r2, .L31+4
	.loc 1 665 8 view .LVU507
	ldr	r1, [r0, #48]
	.loc 1 677 15 view .LVU508
	ldr	r3, .L31+8
	.loc 1 665 18 view .LVU509
	orr	r1, r1, #1
	.loc 1 663 1 view .LVU510
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 665 18 view .LVU511
	str	r1, [r0, #48]
	.loc 1 668 5 is_stmt 1 view .LVU512
	.loc 1 668 10 is_stmt 0 view .LVU513
	ldr	r4, [r2]
	.loc 1 668 18 view .LVU514
	bic	r4, r4, #196608
	str	r4, [r2]
	.loc 1 669 5 is_stmt 1 view .LVU515
	.loc 1 669 10 is_stmt 0 view .LVU516
	ldr	r4, [r2]
	.loc 1 669 18 view .LVU517
	orr	r4, r4, #131072
	str	r4, [r2]
	.loc 1 670 5 is_stmt 1 view .LVU518
	.loc 1 670 15 is_stmt 0 view .LVU519
	ldr	r4, [r2, #36]
	.loc 1 670 19 view .LVU520
	bic	r4, r4, #15
	str	r4, [r2, #36]
	.loc 1 671 5 is_stmt 1 view .LVU521
	.loc 1 671 15 is_stmt 0 view .LVU522
	ldr	r4, [r2, #36]
	.loc 1 671 19 view .LVU523
	orr	r4, r4, #1
	str	r4, [r2, #36]
	.loc 1 674 5 is_stmt 1 view .LVU524
	.loc 1 674 8 is_stmt 0 view .LVU525
	ldr	r2, [r0, #68]
	.loc 1 674 18 view .LVU526
	orr	r2, r2, #1
	str	r2, [r0, #68]
	.loc 1 677 5 is_stmt 1 view .LVU527
	.loc 1 677 15 is_stmt 0 view .LVU528
	movs	r1, #0
	.loc 1 685 15 view .LVU529
	movs	r4, #20
	.loc 1 686 16 view .LVU530
	movs	r2, #10
	.loc 1 677 15 view .LVU531
	strh	r1, [r3]	@ movhi
	.loc 1 678 5 is_stmt 1 view .LVU532
	.loc 1 678 17 is_stmt 0 view .LVU533
	strh	r1, [r3, #24]	@ movhi
	.loc 1 679 5 is_stmt 1 view .LVU534
	.loc 1 679 16 is_stmt 0 view .LVU535
	strh	r1, [r3, #32]	@ movhi
	.loc 1 680 5 is_stmt 1 view .LVU536
	.loc 1 680 16 is_stmt 0 view .LVU537
	strh	r1, [r3, #68]	@ movhi
	.loc 1 684 5 is_stmt 1 view .LVU538
	.loc 1 684 15 is_stmt 0 view .LVU539
	strh	r1, [r3, #40]	@ movhi
	.loc 1 685 5 is_stmt 1 view .LVU540
	.loc 1 685 15 is_stmt 0 view .LVU541
	str	r4, [r3, #44]
	.loc 1 686 5 is_stmt 1 view .LVU542
	.loc 1 686 16 is_stmt 0 view .LVU543
	str	r2, [r3, #52]
	.loc 1 689 5 is_stmt 1 view .LVU544
	.loc 1 689 9 is_stmt 0 view .LVU545
	ldrh	r2, [r3, #24]
	.loc 1 701 1 view .LVU546
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 689 9 view .LVU547
	uxth	r2, r2
	.loc 1 689 17 view .LVU548
	orr	r2, r2, #96
	strh	r2, [r3, #24]	@ movhi
	.loc 1 690 5 is_stmt 1 view .LVU549
	.loc 1 690 9 is_stmt 0 view .LVU550
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	.loc 1 690 17 view .LVU551
	orr	r2, r2, #8
	strh	r2, [r3, #24]	@ movhi
	.loc 1 693 5 is_stmt 1 view .LVU552
	.loc 1 693 9 is_stmt 0 view .LVU553
	ldrh	r2, [r3, #32]
	.loc 1 697 15 view .LVU554
	movs	r1, #1
	.loc 1 693 9 view .LVU555
	uxth	r2, r2
	.loc 1 693 16 view .LVU556
	orrs	r2, r2, r1
	strh	r2, [r3, #32]	@ movhi
	.loc 1 694 5 is_stmt 1 view .LVU557
	.loc 1 694 9 is_stmt 0 view .LVU558
	ldrh	r2, [r3, #68]
	.loc 1 694 16 view .LVU559
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	uxth	r2, r2
	strh	r2, [r3, #68]	@ movhi
	.loc 1 697 5 is_stmt 1 view .LVU560
	.loc 1 697 15 is_stmt 0 view .LVU561
	strh	r1, [r3, #20]	@ movhi
	.loc 1 700 5 is_stmt 1 view .LVU562
	.loc 1 700 9 is_stmt 0 view .LVU563
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 700 15 view .LVU564
	orrs	r2, r2, r1
	strh	r2, [r3]	@ movhi
	.loc 1 701 1 view .LVU565
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073887232
	.word	1073872896
	.word	1073807360
	.cfi_endproc
.LFE116:
	.size	OV7670_XCLK_TIM1_init_chtGPT, .-OV7670_XCLK_TIM1_init_chtGPT
	.align	1
	.p2align 2,,3
	.global	OV7670_XCLK_TIM1_init
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_XCLK_TIM1_init, %function
OV7670_XCLK_TIM1_init:
.LFB117:
	.loc 1 709 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 713 5 view .LVU567
	.loc 1 713 8 is_stmt 0 view .LVU568
	ldr	r1, .L34
	.loc 1 714 10 view .LVU569
	ldr	r2, .L34+4
	.loc 1 713 8 view .LVU570
	ldr	r0, [r1, #48]
	.loc 1 721 15 view .LVU571
	ldr	r3, .L34+8
	.loc 1 713 18 view .LVU572
	orr	r0, r0, #1
	str	r0, [r1, #48]
	.loc 1 714 5 is_stmt 1 view .LVU573
	.loc 1 714 10 is_stmt 0 view .LVU574
	ldr	r0, [r2]
	.loc 1 714 18 view .LVU575
	bic	r0, r0, #196608
	str	r0, [r2]
	.loc 1 715 5 is_stmt 1 view .LVU576
	.loc 1 715 10 is_stmt 0 view .LVU577
	ldr	r0, [r2]
	.loc 1 715 18 view .LVU578
	orr	r0, r0, #131072
	str	r0, [r2]
	.loc 1 716 5 is_stmt 1 view .LVU579
	.loc 1 716 15 is_stmt 0 view .LVU580
	ldr	r0, [r2, #36]
	.loc 1 716 19 view .LVU581
	bic	r0, r0, #15
	str	r0, [r2, #36]
	.loc 1 717 5 is_stmt 1 view .LVU582
	.loc 1 717 15 is_stmt 0 view .LVU583
	ldr	r0, [r2, #36]
	.loc 1 717 19 view .LVU584
	orr	r0, r0, #1
	str	r0, [r2, #36]
	.loc 1 720 5 is_stmt 1 view .LVU585
	.loc 1 720 8 is_stmt 0 view .LVU586
	ldr	r2, [r1, #68]
	.loc 1 720 18 view .LVU587
	orr	r2, r2, #1
	str	r2, [r1, #68]
	.loc 1 721 5 is_stmt 1 view .LVU588
	.loc 1 721 15 is_stmt 0 view .LVU589
	mov	ip, #0
	.loc 1 723 16 view .LVU590
	movs	r2, #3
	.loc 1 722 15 view .LVU591
	movs	r0, #6
	.loc 1 721 15 view .LVU592
	strh	ip, [r3, #40]	@ movhi
	.loc 1 722 5 is_stmt 1 view .LVU593
	.loc 1 722 15 is_stmt 0 view .LVU594
	str	r0, [r3, #44]
	.loc 1 723 5 is_stmt 1 view .LVU595
	.loc 1 723 16 is_stmt 0 view .LVU596
	str	r2, [r3, #52]
	.loc 1 728 5 is_stmt 1 view .LVU597
	.loc 1 728 9 is_stmt 0 view .LVU598
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 728 15 view .LVU599
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 729 5 is_stmt 1 view .LVU600
	.loc 1 729 9 is_stmt 0 view .LVU601
	ldrh	r2, [r3]
	.loc 1 729 15 view .LVU602
	bic	r2, r2, #112
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3]	@ movhi
	.loc 1 731 5 is_stmt 1 view .LVU603
	.loc 1 731 9 is_stmt 0 view .LVU604
	ldrh	r2, [r3, #24]
	.loc 1 731 17 view .LVU605
	bic	r2, r2, #112
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #24]	@ movhi
	.loc 1 733 5 is_stmt 1 view .LVU606
	.loc 1 733 9 is_stmt 0 view .LVU607
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	.loc 1 733 17 view .LVU608
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 735 5 is_stmt 1 view .LVU609
	.loc 1 735 9 is_stmt 0 view .LVU610
	ldrh	r2, [r3, #32]
	.loc 1 735 16 view .LVU611
	bic	r2, r2, #2
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 736 5 is_stmt 1 view .LVU612
	.loc 1 736 9 is_stmt 0 view .LVU613
	ldrh	r2, [r3, #32]
	uxth	r2, r2
	.loc 1 736 16 view .LVU614
	orr	r2, r2, #1
	strh	r2, [r3, #32]	@ movhi
	.loc 1 738 5 is_stmt 1 view .LVU615
	.loc 1 738 9 is_stmt 0 view .LVU616
	ldrh	r2, [r3, #68]
	.loc 1 738 16 view .LVU617
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	uxth	r2, r2
	strh	r2, [r3, #68]	@ movhi
	.loc 1 740 5 is_stmt 1 view .LVU618
	.loc 1 740 9 is_stmt 0 view .LVU619
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	.loc 1 740 15 view .LVU620
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 741 5 is_stmt 1 view .LVU621
	.loc 1 741 9 is_stmt 0 view .LVU622
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 741 15 view .LVU623
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 746 1 view .LVU624
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073887232
	.word	1073872896
	.word	1073807360
	.cfi_endproc
.LFE117:
	.size	OV7670_XCLK_TIM1_init, .-OV7670_XCLK_TIM1_init
	.align	1
	.p2align 2,,3
	.global	initOV7670_RGB565_QQVGA
	.syntax unified
	.thumb
	.thumb_func
	.type	initOV7670_RGB565_QQVGA, %function
initOV7670_RGB565_QQVGA:
.LFB118:
	.loc 1 750 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 752 3 view .LVU626
	.loc 1 753 3 view .LVU627
	.loc 1 754 3 view .LVU628
	.loc 1 756 3 view .LVU629
	.loc 1 750 1 is_stmt 0 view .LVU630
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 756 3 view .LVU631
	movs	r0, #66
	.loc 1 750 1 view .LVU632
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 756 3 view .LVU633
	bl	initI2C1
.LVL152:
	.loc 1 757 3 is_stmt 1 view .LVU634
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #10
	bl	readI2C
.LVL153:
	.loc 1 759 3 view .LVU635
	.loc 1 761 3 view .LVU636
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
.LVL154:
	.loc 1 761 3 is_stmt 0 view .LVU637
	ldr	r0, .L38
	bl	printUSART2
.LVL155:
	.loc 1 763 3 is_stmt 1 view .LVU638
	movs	r2, #1
	add	r1, sp, #4
	movs	r0, #11
	bl	readI2C
.LVL156:
	.loc 1 764 3 view .LVU639
	.loc 1 765 3 view .LVU640
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
.LVL157:
	.loc 1 765 3 is_stmt 0 view .LVU641
	ldr	r0, .L38+4
	bl	printUSART2
.LVL158:
	.loc 1 770 3 is_stmt 1 view .LVU642
	.loc 1 770 7 is_stmt 0 view .LVU643
	movs	r5, #128
	.loc 1 771 3 view .LVU644
	add	r1, sp, #3
	movs	r2, #1
	movs	r0, #18
	.loc 1 775 7 view .LVU645
	movs	r4, #1
	.loc 1 770 7 view .LVU646
	strb	r5, [sp, #3]
	.loc 1 771 3 is_stmt 1 view .LVU647
	bl	writeI2C
.LVL159:
	.loc 1 772 3 view .LVU648
	movs	r0, #100
	bl	delay_ms
.LVL160:
	.loc 1 775 3 view .LVU649
	.loc 1 776 3 is_stmt 0 view .LVU650
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #18
	.loc 1 775 7 view .LVU651
	strb	r4, [sp, #3]
	.loc 1 776 3 is_stmt 1 view .LVU652
	bl	writeI2C
.LVL161:
	.loc 1 777 3 view .LVU653
	movs	r0, #5
	bl	delay_ms
.LVL162:
	.loc 1 780 3 view .LVU654
	.loc 1 780 7 is_stmt 0 view .LVU655
	movs	r3, #208
	.loc 1 781 3 view .LVU656
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #64
	.loc 1 780 7 view .LVU657
	strb	r3, [sp, #3]
	.loc 1 781 3 is_stmt 1 view .LVU658
	bl	writeI2C
.LVL163:
	.loc 1 782 3 view .LVU659
	movs	r0, #5
	bl	delay_ms
.LVL164:
	.loc 1 785 3 view .LVU660
	.loc 1 786 3 is_stmt 0 view .LVU661
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #17
	.loc 1 785 7 view .LVU662
	strb	r4, [sp, #3]
	.loc 1 786 3 is_stmt 1 view .LVU663
	bl	writeI2C
.LVL165:
	.loc 1 787 3 view .LVU664
	movs	r0, #5
	bl	delay_ms
.LVL166:
	.loc 1 789 3 view .LVU665
	.loc 1 790 3 is_stmt 0 view .LVU666
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 789 7 view .LVU667
	movs	r3, #74
	.loc 1 790 3 view .LVU668
	movs	r0, #107
	.loc 1 789 7 view .LVU669
	strb	r3, [sp, #3]
	.loc 1 790 3 is_stmt 1 view .LVU670
	bl	writeI2C
.LVL167:
	.loc 1 791 3 view .LVU671
	movs	r0, #5
	bl	delay_ms
.LVL168:
	.loc 1 794 3 view .LVU672
	.loc 1 795 3 is_stmt 0 view .LVU673
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 794 7 view .LVU674
	movs	r3, #22
	.loc 1 795 3 view .LVU675
	movs	r0, #23
	.loc 1 794 7 view .LVU676
	strb	r3, [sp, #3]
	.loc 1 795 3 is_stmt 1 view .LVU677
	bl	writeI2C
.LVL169:
	.loc 1 796 3 view .LVU678
	mov	r0, r4
	bl	delay_ms
.LVL170:
	.loc 1 798 3 view .LVU679
	.loc 1 798 7 is_stmt 0 view .LVU680
	movs	r3, #182
	.loc 1 799 3 view .LVU681
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #24
	.loc 1 798 7 view .LVU682
	strb	r3, [sp, #3]
	.loc 1 799 3 is_stmt 1 view .LVU683
	bl	writeI2C
.LVL171:
	.loc 1 800 3 view .LVU684
	mov	r0, r4
	bl	delay_ms
.LVL172:
	.loc 1 802 3 view .LVU685
	.loc 1 803 3 is_stmt 0 view .LVU686
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #50
	.loc 1 802 7 view .LVU687
	strb	r5, [sp, #3]
	.loc 1 803 3 is_stmt 1 view .LVU688
	bl	writeI2C
.LVL173:
	.loc 1 804 3 view .LVU689
	mov	r0, r4
	bl	delay_ms
.LVL174:
	.loc 1 807 3 view .LVU690
	.loc 1 807 7 is_stmt 0 view .LVU691
	movs	r5, #2
	.loc 1 808 3 view .LVU692
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #25
	.loc 1 807 7 view .LVU693
	strb	r5, [sp, #3]
	.loc 1 808 3 is_stmt 1 view .LVU694
	bl	writeI2C
.LVL175:
	.loc 1 809 3 view .LVU695
	mov	r0, r4
	bl	delay_ms
.LVL176:
	.loc 1 811 3 view .LVU696
	.loc 1 812 3 is_stmt 0 view .LVU697
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 811 7 view .LVU698
	movs	r3, #122
	.loc 1 812 3 view .LVU699
	movs	r0, #26
	.loc 1 811 7 view .LVU700
	strb	r3, [sp, #3]
	.loc 1 812 3 is_stmt 1 view .LVU701
	bl	writeI2C
.LVL177:
	.loc 1 813 3 view .LVU702
	mov	r0, r4
	bl	delay_ms
.LVL178:
	.loc 1 815 3 view .LVU703
	.loc 1 816 3 is_stmt 0 view .LVU704
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 815 7 view .LVU705
	movs	r3, #10
	.loc 1 816 3 view .LVU706
	movs	r0, #3
	.loc 1 815 7 view .LVU707
	strb	r3, [sp, #3]
	.loc 1 816 3 is_stmt 1 view .LVU708
	bl	writeI2C
.LVL179:
	.loc 1 817 3 view .LVU709
	mov	r0, r4
	bl	delay_ms
.LVL180:
	.loc 1 820 3 view .LVU710
	.loc 1 821 3 is_stmt 0 view .LVU711
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 820 7 view .LVU712
	movs	r3, #58
	.loc 1 821 3 view .LVU713
	movs	r0, #112
	.loc 1 820 7 view .LVU714
	strb	r3, [sp, #3]
	.loc 1 821 3 is_stmt 1 view .LVU715
	bl	writeI2C
.LVL181:
	.loc 1 822 3 view .LVU716
	mov	r0, r4
	bl	delay_ms
.LVL182:
	.loc 1 823 3 view .LVU717
	.loc 1 824 3 is_stmt 0 view .LVU718
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 823 7 view .LVU719
	movs	r3, #53
	.loc 1 824 3 view .LVU720
	movs	r0, #113
	.loc 1 823 7 view .LVU721
	strb	r3, [sp, #3]
	.loc 1 824 3 is_stmt 1 view .LVU722
	bl	writeI2C
.LVL183:
	.loc 1 825 3 view .LVU723
	mov	r0, r4
	bl	delay_ms
.LVL184:
	.loc 1 826 3 view .LVU724
	.loc 1 827 3 is_stmt 0 view .LVU725
	mov	r2, r4
	add	r1, sp, #3
	.loc 1 826 7 view .LVU726
	movs	r3, #17
	.loc 1 827 3 view .LVU727
	movs	r0, #114
	.loc 1 826 7 view .LVU728
	strb	r3, [sp, #3]
	.loc 1 827 3 is_stmt 1 view .LVU729
	bl	writeI2C
.LVL185:
	.loc 1 828 3 view .LVU730
	mov	r0, r4
	bl	delay_ms
.LVL186:
	.loc 1 829 3 view .LVU731
	.loc 1 829 7 is_stmt 0 view .LVU732
	movs	r3, #241
	.loc 1 830 3 view .LVU733
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #115
	.loc 1 829 7 view .LVU734
	strb	r3, [sp, #3]
	.loc 1 830 3 is_stmt 1 view .LVU735
	bl	writeI2C
.LVL187:
	.loc 1 831 3 view .LVU736
	mov	r0, r4
	bl	delay_ms
.LVL188:
	.loc 1 832 3 view .LVU737
	.loc 1 833 3 is_stmt 0 view .LVU738
	mov	r2, r4
	add	r1, sp, #3
	movs	r0, #162
	.loc 1 832 7 view .LVU739
	strb	r5, [sp, #3]
	.loc 1 833 3 is_stmt 1 view .LVU740
	bl	writeI2C
.LVL189:
	.loc 1 834 3 view .LVU741
	mov	r0, r4
	bl	delay_ms
.LVL190:
	.loc 1 836 3 view .LVU742
	ldr	r0, .L38+8
	bl	printUSART2
.LVL191:
	.loc 1 837 1 is_stmt 0 view .LVU743
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L39:
	.align	2
.L38:
	.word	.LC2
	.word	.LC3
	.word	.LC9
	.cfi_endproc
.LFE118:
	.size	initOV7670_RGB565_QQVGA, .-initOV7670_RGB565_QQVGA
	.align	1
	.p2align 2,,3
	.global	OV7670_SetupQQVGA_Custom_sa_neta
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_SetupQQVGA_Custom_sa_neta, %function
OV7670_SetupQQVGA_Custom_sa_neta:
.LFB119:
	.loc 1 846 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 847 5 view .LVU745
	.loc 1 850 5 view .LVU746
	.loc 1 846 1 is_stmt 0 view .LVU747
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 850 9 view .LVU748
	movs	r4, #128
	.loc 1 851 5 view .LVU749
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #18
	.loc 1 850 9 view .LVU750
	strb	r4, [sp, #7]
	.loc 1 851 5 is_stmt 1 view .LVU751
	bl	writeI2C
.LVL192:
	.loc 1 852 5 view .LVU752
	movs	r0, #200
	bl	delay_ms
.LVL193:
	.loc 1 855 5 view .LVU753
	.loc 1 855 9 is_stmt 0 view .LVU754
	movs	r5, #0
	.loc 1 856 5 view .LVU755
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #17
	.loc 1 859 9 view .LVU756
	movs	r6, #4
	.loc 1 855 9 view .LVU757
	strb	r5, [sp, #7]
	.loc 1 856 5 is_stmt 1 view .LVU758
	bl	writeI2C
.LVL194:
	.loc 1 859 5 view .LVU759
	.loc 1 860 5 is_stmt 0 view .LVU760
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #12
	.loc 1 859 9 view .LVU761
	strb	r6, [sp, #7]
	.loc 1 860 5 is_stmt 1 view .LVU762
	bl	writeI2C
.LVL195:
	.loc 1 863 5 view .LVU763
	.loc 1 864 5 is_stmt 0 view .LVU764
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #18
	.loc 1 863 9 view .LVU765
	strb	r6, [sp, #7]
	.loc 1 864 5 is_stmt 1 view .LVU766
	.loc 1 867 9 is_stmt 0 view .LVU767
	mov	r8, #26
	.loc 1 864 5 view .LVU768
	bl	writeI2C
.LVL196:
	.loc 1 867 5 is_stmt 1 view .LVU769
	.loc 1 868 5 is_stmt 0 view .LVU770
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #62
	.loc 1 867 9 view .LVU771
	strb	r8, [sp, #7]
	.loc 1 868 5 is_stmt 1 view .LVU772
	bl	writeI2C
.LVL197:
	.loc 1 871 5 view .LVU773
	.loc 1 871 9 is_stmt 0 view .LVU774
	movs	r3, #22
	.loc 1 872 5 view .LVU775
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #23
	.loc 1 871 9 view .LVU776
	strb	r3, [sp, #7]
	.loc 1 872 5 is_stmt 1 view .LVU777
	bl	writeI2C
.LVL198:
	.loc 1 873 5 view .LVU778
	.loc 1 874 5 is_stmt 0 view .LVU779
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #24
	.loc 1 873 9 view .LVU780
	strb	r6, [sp, #7]
	.loc 1 874 5 is_stmt 1 view .LVU781
	.loc 1 875 9 is_stmt 0 view .LVU782
	movs	r7, #164
	.loc 1 874 5 view .LVU783
	bl	writeI2C
.LVL199:
	.loc 1 875 5 is_stmt 1 view .LVU784
	.loc 1 876 5 is_stmt 0 view .LVU785
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #50
	.loc 1 879 9 view .LVU786
	movs	r6, #2
	.loc 1 875 9 view .LVU787
	strb	r7, [sp, #7]
	.loc 1 876 5 is_stmt 1 view .LVU788
	bl	writeI2C
.LVL200:
	.loc 1 879 5 view .LVU789
	.loc 1 880 5 is_stmt 0 view .LVU790
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #25
	.loc 1 879 9 view .LVU791
	strb	r6, [sp, #7]
	.loc 1 880 5 is_stmt 1 view .LVU792
	bl	writeI2C
.LVL201:
	.loc 1 881 5 view .LVU793
	.loc 1 881 9 is_stmt 0 view .LVU794
	movs	r3, #122
	.loc 1 882 5 view .LVU795
	mov	r0, r8
	add	r1, sp, #7
	movs	r2, #1
	.loc 1 881 9 view .LVU796
	strb	r3, [sp, #7]
	.loc 1 882 5 is_stmt 1 view .LVU797
	bl	writeI2C
.LVL202:
	.loc 1 883 5 view .LVU798
	.loc 1 884 5 is_stmt 0 view .LVU799
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #3
	.loc 1 883 9 view .LVU800
	strb	r7, [sp, #7]
	.loc 1 884 5 is_stmt 1 view .LVU801
	bl	writeI2C
.LVL203:
	.loc 1 887 5 view .LVU802
	.loc 1 887 9 is_stmt 0 view .LVU803
	movs	r3, #34
	.loc 1 888 5 view .LVU804
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #114
	.loc 1 887 9 view .LVU805
	strb	r3, [sp, #7]
	.loc 1 888 5 is_stmt 1 view .LVU806
	bl	writeI2C
.LVL204:
	.loc 1 889 5 view .LVU807
	.loc 1 889 9 is_stmt 0 view .LVU808
	movs	r3, #242
	.loc 1 890 5 view .LVU809
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #115
	.loc 1 889 9 view .LVU810
	strb	r3, [sp, #7]
	.loc 1 890 5 is_stmt 1 view .LVU811
	bl	writeI2C
.LVL205:
	.loc 1 893 5 view .LVU812
	.loc 1 894 5 is_stmt 0 view .LVU813
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #21
	.loc 1 893 9 view .LVU814
	strb	r5, [sp, #7]
	.loc 1 894 5 is_stmt 1 view .LVU815
	bl	writeI2C
.LVL206:
	.loc 1 901 5 view .LVU816
	.loc 1 901 9 is_stmt 0 view .LVU817
	movs	r3, #208
	.loc 1 902 5 view .LVU818
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #64
	.loc 1 901 9 view .LVU819
	strb	r3, [sp, #7]
	.loc 1 902 5 is_stmt 1 view .LVU820
	bl	writeI2C
.LVL207:
	.loc 1 905 5 view .LVU821
	.loc 1 906 5 is_stmt 0 view .LVU822
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #162
	.loc 1 905 9 view .LVU823
	strb	r6, [sp, #7]
	.loc 1 906 5 is_stmt 1 view .LVU824
	bl	writeI2C
.LVL208:
	.loc 1 910 5 view .LVU825
	.loc 1 910 9 is_stmt 0 view .LVU826
	movs	r6, #80
	.loc 1 911 5 view .LVU827
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #86
	.loc 1 910 9 view .LVU828
	strb	r6, [sp, #7]
	.loc 1 911 5 is_stmt 1 view .LVU829
	bl	writeI2C
.LVL209:
	.loc 1 915 5 view .LVU830
	.loc 1 915 9 is_stmt 0 view .LVU831
	movs	r3, #231
	.loc 1 916 5 view .LVU832
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #19
	.loc 1 915 9 view .LVU833
	strb	r3, [sp, #7]
	.loc 1 916 5 is_stmt 1 view .LVU834
	bl	writeI2C
.LVL210:
	.loc 1 923 5 view .LVU835
	.loc 1 924 5 is_stmt 0 view .LVU836
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #61
	.loc 1 923 9 view .LVU837
	strb	r4, [sp, #7]
	.loc 1 924 5 is_stmt 1 view .LVU838
	bl	writeI2C
.LVL211:
	.loc 1 928 5 view .LVU839
	.loc 1 929 5 is_stmt 0 view .LVU840
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #79
	.loc 1 928 9 view .LVU841
	strb	r4, [sp, #7]
	.loc 1 929 5 is_stmt 1 view .LVU842
	bl	writeI2C
.LVL212:
	.loc 1 930 5 view .LVU843
	.loc 1 931 5 is_stmt 0 view .LVU844
	mov	r0, r6
	add	r1, sp, #7
	movs	r2, #1
	.loc 1 930 9 view .LVU845
	strb	r4, [sp, #7]
	.loc 1 931 5 is_stmt 1 view .LVU846
	bl	writeI2C
.LVL213:
	.loc 1 932 5 view .LVU847
	.loc 1 933 5 is_stmt 0 view .LVU848
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #81
	.loc 1 932 9 view .LVU849
	strb	r5, [sp, #7]
	.loc 1 933 5 is_stmt 1 view .LVU850
	bl	writeI2C
.LVL214:
	.loc 1 934 5 view .LVU851
	.loc 1 935 5 is_stmt 0 view .LVU852
	add	r1, sp, #7
	.loc 1 934 9 view .LVU853
	movs	r3, #24
	.loc 1 935 5 view .LVU854
	movs	r2, #1
	movs	r0, #82
	.loc 1 934 9 view .LVU855
	strb	r3, [sp, #7]
	.loc 1 935 5 is_stmt 1 view .LVU856
	bl	writeI2C
.LVL215:
	.loc 1 936 5 view .LVU857
	.loc 1 937 5 is_stmt 0 view .LVU858
	add	r1, sp, #7
	.loc 1 936 9 view .LVU859
	movs	r3, #72
	.loc 1 937 5 view .LVU860
	movs	r2, #1
	movs	r0, #83
	.loc 1 936 9 view .LVU861
	strb	r3, [sp, #7]
	.loc 1 937 5 is_stmt 1 view .LVU862
	bl	writeI2C
.LVL216:
	.loc 1 938 5 view .LVU863
	.loc 1 939 5 is_stmt 0 view .LVU864
	add	r1, sp, #7
	.loc 1 938 9 view .LVU865
	movs	r3, #64
	.loc 1 939 5 view .LVU866
	movs	r2, #1
	movs	r0, #84
	.loc 1 938 9 view .LVU867
	strb	r3, [sp, #7]
	.loc 1 939 5 is_stmt 1 view .LVU868
	bl	writeI2C
.LVL217:
	.loc 1 942 5 view .LVU869
	.loc 1 943 5 is_stmt 0 view .LVU870
	add	r1, sp, #7
	.loc 1 942 9 view .LVU871
	movs	r3, #30
	.loc 1 943 5 view .LVU872
	movs	r2, #1
	movs	r0, #88
	.loc 1 942 9 view .LVU873
	strb	r3, [sp, #7]
	.loc 1 943 5 is_stmt 1 view .LVU874
	bl	writeI2C
.LVL218:
	.loc 1 946 3 view .LVU875
	.loc 1 946 7 is_stmt 0 view .LVU876
	movs	r3, #48
	.loc 1 947 3 view .LVU877
	movs	r2, #1
	add	r1, sp, #7
	movs	r0, #76
	.loc 1 946 7 view .LVU878
	strb	r3, [sp, #7]
	.loc 1 947 3 is_stmt 1 view .LVU879
	bl	writeI2C
.LVL219:
	.loc 1 1009 1 is_stmt 0 view .LVU880
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.cfi_endproc
.LFE119:
	.size	OV7670_SetupQQVGA_Custom_sa_neta, .-OV7670_SetupQQVGA_Custom_sa_neta
	.align	1
	.p2align 2,,3
	.global	OV7670_SetupQQVGA_Custom_sa_neta_deep_seek
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_SetupQQVGA_Custom_sa_neta_deep_seek, %function
OV7670_SetupQQVGA_Custom_sa_neta_deep_seek:
.LFB120:
	.loc 1 1013 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1014 5 view .LVU882
	.loc 1 1017 5 view .LVU883
	.loc 1 1013 1 is_stmt 0 view .LVU884
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 1017 9 view .LVU885
	movs	r4, #128
	.loc 1 1018 5 view .LVU886
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #18
	.loc 1 1017 9 view .LVU887
	strb	r4, [sp, #7]
	.loc 1 1018 5 is_stmt 1 view .LVU888
	bl	writeI2C
.LVL220:
	.loc 1 1019 5 view .LVU889
	movs	r0, #200
	bl	delay_ms
.LVL221:
	.loc 1 1022 5 view .LVU890
	.loc 1 1022 9 is_stmt 0 view .LVU891
	movs	r5, #0
	.loc 1 1023 5 view .LVU892
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #17
	.loc 1 1022 9 view .LVU893
	strb	r5, [sp, #7]
	.loc 1 1023 5 is_stmt 1 view .LVU894
	bl	writeI2C
.LVL222:
	.loc 1 1026 5 view .LVU895
	.loc 1 1027 5 is_stmt 0 view .LVU896
	add	r1, sp, #7
	.loc 1 1026 9 view .LVU897
	movs	r3, #6
	.loc 1 1027 5 view .LVU898
	movs	r2, #1
	movs	r0, #18
	.loc 1 1026 9 view .LVU899
	strb	r3, [sp, #7]
	.loc 1 1027 5 is_stmt 1 view .LVU900
	bl	writeI2C
.LVL223:
	.loc 1 1030 5 view .LVU901
	.loc 1 1031 5 is_stmt 0 view .LVU902
	add	r1, sp, #7
	.loc 1 1030 9 view .LVU903
	movs	r3, #208
	.loc 1 1031 5 view .LVU904
	movs	r2, #1
	movs	r0, #64
	.loc 1 1030 9 view .LVU905
	strb	r3, [sp, #7]
	.loc 1 1031 5 is_stmt 1 view .LVU906
	bl	writeI2C
.LVL224:
	.loc 1 1034 5 view .LVU907
	.loc 1 1034 17 is_stmt 0 view .LVU908
	add	r1, sp, #7
	.loc 1 1034 9 view .LVU909
	movs	r3, #22
	.loc 1 1034 17 view .LVU910
	movs	r2, #1
	movs	r0, #23
	.loc 1 1034 9 view .LVU911
	strb	r3, [sp, #7]
	.loc 1 1034 17 is_stmt 1 view .LVU912
	bl	writeI2C
.LVL225:
	.loc 1 1035 5 view .LVU913
	.loc 1 1035 9 is_stmt 0 view .LVU914
	movs	r3, #4
	.loc 1 1035 17 view .LVU915
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #24
	.loc 1 1035 9 view .LVU916
	strb	r3, [sp, #7]
	.loc 1 1035 17 is_stmt 1 view .LVU917
	bl	writeI2C
.LVL226:
	.loc 1 1036 5 view .LVU918
	.loc 1 1036 17 is_stmt 0 view .LVU919
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #50
	.loc 1 1037 9 view .LVU920
	movs	r6, #2
	.loc 1 1036 9 view .LVU921
	strb	r4, [sp, #7]
	.loc 1 1036 17 is_stmt 1 view .LVU922
	bl	writeI2C
.LVL227:
	.loc 1 1037 5 view .LVU923
	.loc 1 1037 17 is_stmt 0 view .LVU924
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #25
	.loc 1 1037 9 view .LVU925
	strb	r6, [sp, #7]
	.loc 1 1037 17 is_stmt 1 view .LVU926
	bl	writeI2C
.LVL228:
	.loc 1 1038 5 view .LVU927
	.loc 1 1038 9 is_stmt 0 view .LVU928
	movs	r3, #122
	.loc 1 1038 17 view .LVU929
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #26
	.loc 1 1038 9 view .LVU930
	strb	r3, [sp, #7]
	.loc 1 1038 17 is_stmt 1 view .LVU931
	bl	writeI2C
.LVL229:
	.loc 1 1039 5 view .LVU932
	.loc 1 1039 17 is_stmt 0 view .LVU933
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #3
	.loc 1 1039 9 view .LVU934
	strb	r5, [sp, #7]
	.loc 1 1039 17 is_stmt 1 view .LVU935
	bl	writeI2C
.LVL230:
	.loc 1 1042 5 view .LVU936
	.loc 1 1043 5 is_stmt 0 view .LVU937
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #21
	.loc 1 1042 9 view .LVU938
	strb	r5, [sp, #7]
	.loc 1 1043 5 is_stmt 1 view .LVU939
	bl	writeI2C
.LVL231:
	.loc 1 1046 5 view .LVU940
	.loc 1 1047 5 is_stmt 0 view .LVU941
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #162
	.loc 1 1046 9 view .LVU942
	strb	r6, [sp, #7]
	.loc 1 1047 5 is_stmt 1 view .LVU943
	bl	writeI2C
.LVL232:
	.loc 1 1050 5 view .LVU944
	.loc 1 1050 9 is_stmt 0 view .LVU945
	movs	r3, #231
	.loc 1 1051 5 view .LVU946
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #19
	.loc 1 1050 9 view .LVU947
	strb	r3, [sp, #7]
	.loc 1 1051 5 is_stmt 1 view .LVU948
	bl	writeI2C
.LVL233:
	.loc 1 1054 5 view .LVU949
	.loc 1 1054 17 is_stmt 0 view .LVU950
	add	r1, sp, #7
	movs	r2, #1
	movs	r0, #79
	.loc 1 1054 9 view .LVU951
	strb	r4, [sp, #7]
	.loc 1 1054 17 is_stmt 1 view .LVU952
	bl	writeI2C
.LVL234:
	.loc 1 1055 5 view .LVU953
	.loc 1 1055 17 is_stmt 0 view .LVU954
	movs	r2, #1
	add	r1, sp, #7
	movs	r0, #84
	.loc 1 1055 9 view .LVU955
	strb	r4, [sp, #7]
	.loc 1 1055 17 is_stmt 1 view .LVU956
	bl	writeI2C
.LVL235:
	.loc 1 1056 1 is_stmt 0 view .LVU957
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE120:
	.size	OV7670_SetupQQVGA_Custom_sa_neta_deep_seek, .-OV7670_SetupQQVGA_Custom_sa_neta_deep_seek
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"\020\0365Ziv\202\214\226\240\264\303\327\346\364\020"
	.ascii	"\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_SetupQQVGA_Fixed
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_SetupQQVGA_Fixed, %function
OV7670_SetupQQVGA_Fixed:
.LFB121:
	.loc 1 1065 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1066 5 view .LVU959
	.loc 1 1069 5 view .LVU960
	.loc 1 1065 1 is_stmt 0 view .LVU961
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #124
	.cfi_def_cfa_offset 144
	.loc 1 1069 9 view .LVU962
	movs	r4, #128
	.loc 1 1070 5 view .LVU963
	movs	r2, #1
	add	r1, sp, #103
	movs	r0, #18
	.loc 1 1069 9 view .LVU964
	strb	r4, [sp, #103]
	.loc 1 1070 5 is_stmt 1 view .LVU965
	bl	writeI2C
.LVL236:
	.loc 1 1071 5 view .LVU966
	movs	r0, #200
	bl	delay_ms
.LVL237:
	.loc 1 1074 5 view .LVU967
	.loc 1 1074 9 is_stmt 0 view .LVU968
	movs	r5, #0
	.loc 1 1075 5 view .LVU969
	movs	r2, #1
	add	r1, sp, #103
	movs	r0, #17
	.loc 1 1078 9 view .LVU970
	movs	r6, #4
	.loc 1 1074 9 view .LVU971
	strb	r5, [sp, #103]
	.loc 1 1075 5 is_stmt 1 view .LVU972
	bl	writeI2C
.LVL238:
	.loc 1 1078 5 view .LVU973
	.loc 1 1079 5 is_stmt 0 view .LVU974
	movs	r2, #1
	add	r1, sp, #103
	movs	r0, #12
	.loc 1 1078 9 view .LVU975
	strb	r6, [sp, #103]
	.loc 1 1079 5 is_stmt 1 view .LVU976
	bl	writeI2C
.LVL239:
	.loc 1 1082 5 view .LVU977
	.loc 1 1083 5 is_stmt 0 view .LVU978
	movs	r2, #1
	add	r1, sp, #103
	movs	r0, #18
	.loc 1 1086 9 view .LVU979
	movs	r7, #26
	.loc 1 1082 9 view .LVU980
	strb	r6, [sp, #103]
	.loc 1 1083 5 is_stmt 1 view .LVU981
	bl	writeI2C
.LVL240:
	.loc 1 1086 5 view .LVU982
	.loc 1 1087 5 is_stmt 0 view .LVU983
	add	r1, sp, #103
	movs	r2, #1
	movs	r0, #62
	.loc 1 1086 9 view .LVU984
	strb	r7, [sp, #103]
	.loc 1 1087 5 is_stmt 1 view .LVU985
	bl	writeI2C
.LVL241:
	.loc 1 1090 5 view .LVU986
	.loc 1 1090 44 is_stmt 0 view .LVU987
	movs	r3, #22
	.loc 1 1090 5 view .LVU988
	add	r1, sp, r6
	movs	r2, #1
	movs	r0, #23
	.loc 1 1090 44 view .LVU989
	strb	r3, [sp, #4]
	.loc 1 1090 5 view .LVU990
	bl	writeI2C
.LVL242:
	.loc 1 1091 5 is_stmt 1 view .LVU991
	movs	r2, #1
	add	r1, sp, #8
	movs	r0, #24
	.loc 1 1091 44 is_stmt 0 view .LVU992
	strb	r6, [sp, #8]
	.loc 1 1091 5 view .LVU993
	bl	writeI2C
.LVL243:
	.loc 1 1092 5 is_stmt 1 view .LVU994
	movs	r2, #1
	add	r1, sp, #12
	movs	r0, #50
	.loc 1 1092 44 is_stmt 0 view .LVU995
	strb	r4, [sp, #12]
	.loc 1 1092 5 view .LVU996
	bl	writeI2C
.LVL244:
	.loc 1 1095 5 is_stmt 1 view .LVU997
	.loc 1 1095 44 is_stmt 0 view .LVU998
	movs	r3, #2
	.loc 1 1095 5 view .LVU999
	movs	r2, #1
	add	r1, sp, #16
	movs	r0, #25
	.loc 1 1095 44 view .LVU1000
	strb	r3, [sp, #16]
	.loc 1 1095 5 view .LVU1001
	bl	writeI2C
.LVL245:
	.loc 1 1096 5 is_stmt 1 view .LVU1002
	mov	r0, r7
	.loc 1 1096 44 is_stmt 0 view .LVU1003
	movs	r3, #123
	.loc 1 1096 5 view .LVU1004
	movs	r2, #1
	add	r1, sp, #20
	.loc 1 1096 44 view .LVU1005
	strb	r3, [sp, #20]
	.loc 1 1096 5 view .LVU1006
	bl	writeI2C
.LVL246:
	.loc 1 1097 5 is_stmt 1 view .LVU1007
	.loc 1 1097 44 is_stmt 0 view .LVU1008
	movs	r3, #10
	.loc 1 1097 5 view .LVU1009
	movs	r2, #1
	add	r1, sp, #24
	movs	r0, #3
	.loc 1 1097 44 view .LVU1010
	strb	r3, [sp, #24]
	.loc 1 1100 52 view .LVU1011
	movs	r7, #34
	.loc 1 1097 5 view .LVU1012
	bl	writeI2C
.LVL247:
	.loc 1 1100 5 is_stmt 1 view .LVU1013
	movs	r2, #1
	add	r1, sp, #28
	movs	r0, #114
	.loc 1 1100 52 is_stmt 0 view .LVU1014
	strb	r7, [sp, #28]
	.loc 1 1100 5 view .LVU1015
	bl	writeI2C
.LVL248:
	.loc 1 1101 5 is_stmt 1 view .LVU1016
	.loc 1 1101 54 is_stmt 0 view .LVU1017
	movs	r3, #242
	.loc 1 1101 5 view .LVU1018
	movs	r2, #1
	add	r1, sp, #32
	movs	r0, #115
	.loc 1 1101 54 view .LVU1019
	strb	r3, [sp, #32]
	.loc 1 1101 5 view .LVU1020
	bl	writeI2C
.LVL249:
	.loc 1 1104 5 is_stmt 1 view .LVU1021
	movs	r2, #1
	add	r1, sp, #36
	movs	r0, #21
	.loc 1 1104 43 is_stmt 0 view .LVU1022
	strb	r5, [sp, #36]
	.loc 1 1104 5 view .LVU1023
	bl	writeI2C
.LVL250:
	.loc 1 1107 5 is_stmt 1 view .LVU1024
	movs	r2, #1
	add	r1, sp, #40
	movs	r0, #140
	.loc 1 1107 31 is_stmt 0 view .LVU1025
	strb	r5, [sp, #40]
	.loc 1 1107 5 view .LVU1026
	bl	writeI2C
.LVL251:
	.loc 1 1108 5 is_stmt 1 view .LVU1027
	.loc 1 1108 31 is_stmt 0 view .LVU1028
	movs	r3, #208
	.loc 1 1108 5 view .LVU1029
	movs	r2, #1
	add	r1, sp, #44
	movs	r0, #64
	.loc 1 1108 31 view .LVU1030
	strb	r3, [sp, #44]
	.loc 1 1108 5 view .LVU1031
	bl	writeI2C
.LVL252:
	.loc 1 1109 5 is_stmt 1 view .LVU1032
	movs	r2, #1
	add	r1, sp, #48
	movs	r0, #58
	.loc 1 1109 31 is_stmt 0 view .LVU1033
	strb	r6, [sp, #48]
	.loc 1 1109 5 view .LVU1034
	bl	writeI2C
.LVL253:
	.loc 1 1110 5 is_stmt 1 view .LVU1035
	movs	r2, #1
	add	r1, sp, #52
	movs	r0, #61
	.loc 1 1110 31 is_stmt 0 view .LVU1036
	strb	r4, [sp, #52]
	.loc 1 1110 5 view .LVU1037
	bl	writeI2C
.LVL254:
	.loc 1 1113 5 is_stmt 1 view .LVU1038
	movs	r2, #1
	add	r1, sp, #56
	movs	r0, #79
	.loc 1 1113 31 is_stmt 0 view .LVU1039
	strb	r4, [sp, #56]
	.loc 1 1113 5 view .LVU1040
	bl	writeI2C
.LVL255:
	.loc 1 1114 5 is_stmt 1 view .LVU1041
	movs	r2, #1
	add	r1, sp, #60
	movs	r0, #80
	.loc 1 1114 31 is_stmt 0 view .LVU1042
	strb	r4, [sp, #60]
	.loc 1 1114 5 view .LVU1043
	bl	writeI2C
.LVL256:
	.loc 1 1115 5 is_stmt 1 view .LVU1044
	movs	r2, #1
	add	r1, sp, #64
	movs	r0, #81
	.loc 1 1115 31 is_stmt 0 view .LVU1045
	strb	r5, [sp, #64]
	.loc 1 1115 5 view .LVU1046
	bl	writeI2C
.LVL257:
	.loc 1 1116 5 is_stmt 1 view .LVU1047
	movs	r2, #1
	add	r1, sp, #68
	movs	r0, #82
	.loc 1 1116 31 is_stmt 0 view .LVU1048
	strb	r7, [sp, #68]
	.loc 1 1116 5 view .LVU1049
	bl	writeI2C
.LVL258:
	.loc 1 1117 5 is_stmt 1 view .LVU1050
	.loc 1 1117 31 is_stmt 0 view .LVU1051
	movs	r3, #94
	.loc 1 1117 5 view .LVU1052
	movs	r2, #1
	add	r1, sp, #72
	movs	r0, #83
	.loc 1 1117 31 view .LVU1053
	strb	r3, [sp, #72]
	.loc 1 1117 5 view .LVU1054
	bl	writeI2C
.LVL259:
	.loc 1 1118 5 is_stmt 1 view .LVU1055
	movs	r2, #1
	add	r1, sp, #76
	movs	r0, #84
	.loc 1 1118 31 is_stmt 0 view .LVU1056
	strb	r4, [sp, #76]
	.loc 1 1118 5 view .LVU1057
	bl	writeI2C
.LVL260:
	.loc 1 1119 5 is_stmt 1 view .LVU1058
	.loc 1 1119 31 is_stmt 0 view .LVU1059
	movs	r3, #158
	.loc 1 1119 5 view .LVU1060
	movs	r2, #1
	add	r1, sp, #80
	movs	r0, #88
	.loc 1 1119 31 view .LVU1061
	strb	r3, [sp, #80]
	.loc 1 1119 5 view .LVU1062
	bl	writeI2C
.LVL261:
	.loc 1 1122 5 is_stmt 1 view .LVU1063
	.loc 1 1122 13 is_stmt 0 view .LVU1064
	ldr	r3, .L48
	ldm	r3, {r0, r1, r2, r3}
	add	r4, sp, #104
	stm	r4, {r0, r1, r2, r3}
	.loc 1 1123 5 is_stmt 1 view .LVU1065
.LBB2:
	.loc 1 1123 9 view .LVU1066
.LVL262:
	.loc 1 1123 19 view .LVU1067
	add	r6, sp, #120
	rsb	r5, r4, #123
.LVL263:
.L45:
	.loc 1 1124 9 discriminator 3 view .LVU1068
	adds	r0, r5, r4
	movs	r2, #1
	mov	r1, r4
	uxtb	r0, r0
	.loc 1 1123 19 is_stmt 0 discriminator 3 view .LVU1069
	add	r4, r4, r2
.LVL264:
	.loc 1 1124 9 discriminator 3 view .LVU1070
	bl	writeI2C
.LVL265:
	.loc 1 1123 25 is_stmt 1 discriminator 3 view .LVU1071
	.loc 1 1123 19 discriminator 3 view .LVU1072
	cmp	r4, r6
	bne	.L45
.LBE2:
	.loc 1 1128 5 view .LVU1073
	add	r1, sp, #84
	.loc 1 1128 31 is_stmt 0 view .LVU1074
	movs	r3, #56
	.loc 1 1128 5 view .LVU1075
	movs	r2, #1
	movs	r0, #65
	.loc 1 1128 31 view .LVU1076
	strb	r3, [sp, #84]
	.loc 1 1128 5 view .LVU1077
	bl	writeI2C
.LVL266:
	.loc 1 1131 5 is_stmt 1 view .LVU1078
	add	r1, sp, #88
	.loc 1 1131 31 is_stmt 0 view .LVU1079
	movs	r3, #49
	.loc 1 1131 5 view .LVU1080
	movs	r2, #1
	movs	r0, #30
	.loc 1 1131 31 view .LVU1081
	strb	r3, [sp, #88]
	.loc 1 1131 5 view .LVU1082
	bl	writeI2C
.LVL267:
	.loc 1 1134 5 is_stmt 1 view .LVU1083
	add	r1, sp, #92
	.loc 1 1134 31 is_stmt 0 view .LVU1084
	movs	r3, #32
	.loc 1 1134 5 view .LVU1085
	movs	r2, #1
	movs	r0, #86
	.loc 1 1134 31 view .LVU1086
	strb	r3, [sp, #92]
	.loc 1 1134 5 view .LVU1087
	bl	writeI2C
.LVL268:
	.loc 1 1135 5 is_stmt 1 view .LVU1088
	add	r1, sp, #96
	.loc 1 1135 31 is_stmt 0 view .LVU1089
	movs	r3, #4
	.loc 1 1135 5 view .LVU1090
	movs	r2, #1
	movs	r0, #123
	.loc 1 1135 31 view .LVU1091
	strb	r3, [sp, #96]
	.loc 1 1135 5 view .LVU1092
	bl	writeI2C
.LVL269:
	.loc 1 1136 5 is_stmt 1 view .LVU1093
	.loc 1 1136 31 is_stmt 0 view .LVU1094
	movs	r3, #64
	.loc 1 1136 5 view .LVU1095
	movs	r2, #1
	add	r1, sp, #100
	movs	r0, #79
	.loc 1 1136 31 view .LVU1096
	strb	r3, [sp, #100]
	.loc 1 1136 5 view .LVU1097
	bl	writeI2C
.LVL270:
	.loc 1 1138 5 is_stmt 1 view .LVU1098
	movs	r0, #100
	bl	delay_ms
.LVL271:
	.loc 1 1139 1 is_stmt 0 view .LVU1099
	add	sp, sp, #124
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L49:
	.align	2
.L48:
	.word	.LC10
	.cfi_endproc
.LFE121:
	.size	OV7670_SetupQQVGA_Fixed, .-OV7670_SetupQQVGA_Fixed
	.global	ov7670_qqvga_rgb565
	.section	.rodata
	.align	2
	.type	ov7670_qqvga_rgb565, %object
	.size	ov7670_qqvga_rgb565, 58
ov7670_qqvga_rgb565:
	.byte	18
	.byte	-128
	.byte	18
	.byte	20
	.byte	-116
	.byte	0
	.byte	64
	.byte	-48
	.byte	58
	.byte	4
	.byte	20
	.byte	56
	.byte	50
	.byte	-128
	.byte	23
	.byte	22
	.byte	24
	.byte	4
	.byte	25
	.byte	2
	.byte	26
	.byte	122
	.byte	3
	.byte	10
	.byte	112
	.byte	58
	.byte	113
	.byte	53
	.byte	114
	.byte	17
	.byte	115
	.byte	-15
	.byte	-94
	.byte	2
	.byte	79
	.byte	-77
	.byte	80
	.byte	-77
	.byte	81
	.byte	0
	.byte	82
	.byte	61
	.byte	83
	.byte	-89
	.byte	84
	.byte	-28
	.byte	88
	.byte	-98
	.byte	106
	.byte	64
	.byte	1
	.byte	64
	.byte	2
	.byte	96
	.byte	19
	.byte	-25
	.byte	-1
	.byte	-1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "ov7670/ov7670.h"
	.file 4 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "ov7670/../i2c/i2c.h"
	.file 6 "ov7670/../usart/usart.h"
	.file 7 "ov7670/../delay/delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x234e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x1d
	.4byte	.LASF92
	.4byte	.LASF93
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xe
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2e
	.byte	0x18
	.4byte	0x4e
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0xe
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x19
	.4byte	0x66
	.uleb128 0x10
	.4byte	0x55
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xe
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x19
	.4byte	0x7e
	.uleb128 0x10
	.4byte	0x6d
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1c
	.byte	0x2
	.byte	0x3
	.byte	0xd
	.byte	0x9
	.4byte	0xba
	.uleb128 0x14
	.ascii	"reg\000"
	.byte	0xe
	.4byte	0x42
	.byte	0
	.uleb128 0x14
	.ascii	"val\000"
	.byte	0xf
	.4byte	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x3
	.byte	0x10
	.byte	0x3
	.4byte	0x9a
	.uleb128 0x11
	.4byte	0xba
	.uleb128 0x8
	.4byte	0xc6
	.4byte	0xd6
	.uleb128 0x1d
	.byte	0
	.uleb128 0x11
	.4byte	0xcb
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x3
	.byte	0x15
	.byte	0x1f
	.4byte	0xd6
	.uleb128 0x8
	.4byte	0x6d
	.4byte	0xf7
	.uleb128 0xc
	.4byte	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x28
	.2byte	0x28e
	.4byte	0x178
	.uleb128 0x3
	.4byte	.LASF13
	.2byte	0x290
	.4byte	0x79
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.2byte	0x291
	.4byte	0x79
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.2byte	0x292
	.4byte	0x79
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF16
	.2byte	0x293
	.4byte	0x79
	.byte	0xc
	.uleb128 0x4
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x79
	.byte	0x10
	.uleb128 0x4
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0x79
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF17
	.2byte	0x296
	.4byte	0x61
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF18
	.2byte	0x297
	.4byte	0x61
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF19
	.2byte	0x298
	.4byte	0x79
	.byte	0x1c
	.uleb128 0x4
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x188
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0x79
	.4byte	0x188
	.uleb128 0xc
	.4byte	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	0x178
	.uleb128 0x13
	.4byte	.LASF20
	.2byte	0x29a
	.4byte	0xf7
	.uleb128 0x12
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x308
	.uleb128 0x4
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x79
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x2e0
	.4byte	0x79
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF22
	.2byte	0x2e1
	.4byte	0x79
	.byte	0x8
	.uleb128 0x4
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x79
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF23
	.2byte	0x2e3
	.4byte	0x79
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF24
	.2byte	0x2e4
	.4byte	0x79
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF25
	.2byte	0x2e5
	.4byte	0x79
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x2e6
	.4byte	0x6d
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF27
	.2byte	0x2e7
	.4byte	0x79
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF28
	.2byte	0x2e8
	.4byte	0x79
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF29
	.2byte	0x2e9
	.4byte	0xe7
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF30
	.2byte	0x2ea
	.4byte	0x79
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF31
	.2byte	0x2eb
	.4byte	0x79
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF32
	.2byte	0x2ec
	.4byte	0x79
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x2ed
	.4byte	0x6d
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF34
	.2byte	0x2ee
	.4byte	0x79
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF35
	.2byte	0x2ef
	.4byte	0x79
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x2f0
	.4byte	0xe7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF37
	.2byte	0x2f1
	.4byte	0x79
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF38
	.2byte	0x2f2
	.4byte	0x79
	.byte	0x54
	.uleb128 0x3
	.4byte	.LASF39
	.2byte	0x2f3
	.4byte	0x79
	.byte	0x58
	.uleb128 0x3
	.4byte	.LASF40
	.2byte	0x2f4
	.4byte	0x6d
	.byte	0x5c
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x2f5
	.4byte	0x79
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF42
	.2byte	0x2f6
	.4byte	0x79
	.byte	0x64
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x2f7
	.4byte	0xe7
	.byte	0x68
	.uleb128 0x3
	.4byte	.LASF44
	.2byte	0x2f8
	.4byte	0x79
	.byte	0x70
	.uleb128 0x4
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x79
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF45
	.2byte	0x2fa
	.4byte	0xe7
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF46
	.2byte	0x2fb
	.4byte	0x79
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF47
	.2byte	0x2fc
	.4byte	0x79
	.byte	0x84
	.byte	0
	.uleb128 0x13
	.4byte	.LASF48
	.2byte	0x2fd
	.4byte	0x198
	.uleb128 0x12
	.byte	0x54
	.2byte	0x369
	.4byte	0x4ca
	.uleb128 0x4
	.ascii	"CR1\000"
	.2byte	0x36b
	.4byte	0x61
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x36c
	.4byte	0x55
	.byte	0x2
	.uleb128 0x4
	.ascii	"CR2\000"
	.2byte	0x36d
	.4byte	0x61
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.2byte	0x36e
	.4byte	0x55
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x36f
	.4byte	0x61
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF33
	.2byte	0x370
	.4byte	0x55
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x371
	.4byte	0x61
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x372
	.4byte	0x55
	.byte	0xe
	.uleb128 0x4
	.ascii	"SR\000"
	.2byte	0x373
	.4byte	0x61
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF40
	.2byte	0x374
	.4byte	0x55
	.byte	0x12
	.uleb128 0x4
	.ascii	"EGR\000"
	.2byte	0x375
	.4byte	0x61
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x376
	.4byte	0x55
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF51
	.2byte	0x377
	.4byte	0x61
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF45
	.2byte	0x378
	.4byte	0x55
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF52
	.2byte	0x379
	.4byte	0x61
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF53
	.2byte	0x37a
	.4byte	0x55
	.byte	0x1e
	.uleb128 0x3
	.4byte	.LASF54
	.2byte	0x37b
	.4byte	0x61
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF55
	.2byte	0x37c
	.4byte	0x55
	.byte	0x22
	.uleb128 0x4
	.ascii	"CNT\000"
	.2byte	0x37d
	.4byte	0x79
	.byte	0x24
	.uleb128 0x4
	.ascii	"PSC\000"
	.2byte	0x37e
	.4byte	0x61
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF56
	.2byte	0x37f
	.4byte	0x55
	.byte	0x2a
	.uleb128 0x4
	.ascii	"ARR\000"
	.2byte	0x380
	.4byte	0x79
	.byte	0x2c
	.uleb128 0x4
	.ascii	"RCR\000"
	.2byte	0x381
	.4byte	0x61
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x382
	.4byte	0x55
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x383
	.4byte	0x79
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x384
	.4byte	0x79
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF60
	.2byte	0x385
	.4byte	0x79
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF61
	.2byte	0x386
	.4byte	0x79
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF62
	.2byte	0x387
	.4byte	0x61
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF63
	.2byte	0x388
	.4byte	0x55
	.byte	0x46
	.uleb128 0x4
	.ascii	"DCR\000"
	.2byte	0x389
	.4byte	0x61
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF64
	.2byte	0x38a
	.4byte	0x55
	.byte	0x4a
	.uleb128 0x3
	.4byte	.LASF65
	.2byte	0x38b
	.4byte	0x61
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF66
	.2byte	0x38c
	.4byte	0x55
	.byte	0x4e
	.uleb128 0x4
	.ascii	"OR\000"
	.2byte	0x38d
	.4byte	0x61
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF67
	.2byte	0x38e
	.4byte	0x55
	.byte	0x52
	.byte	0
	.uleb128 0x13
	.4byte	.LASF68
	.2byte	0x38f
	.4byte	0x313
	.uleb128 0x8
	.4byte	0xc6
	.4byte	0x4e5
	.uleb128 0xc
	.4byte	0x93
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	0x4d5
	.uleb128 0x1f
	.4byte	0xdb
	.byte	0x1
	.byte	0x28
	.byte	0x18
	.4byte	0x4e5
	.uleb128 0x5
	.byte	0x3
	.4byte	ov7670_qqvga_rgb565
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x5
	.byte	0x14
	.4byte	0x517
	.uleb128 0x7
	.4byte	0x42
	.uleb128 0x7
	.4byte	0x517
	.uleb128 0x7
	.4byte	0x55
	.byte	0
	.uleb128 0x15
	.4byte	0x42
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x5
	.byte	0xe
	.4byte	0x52d
	.uleb128 0x7
	.4byte	0x42
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x6
	.byte	0x10
	.4byte	0x53f
	.uleb128 0x7
	.4byte	0x53f
	.uleb128 0x20
	.byte	0
	.uleb128 0x15
	.4byte	0x544
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF72
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.byte	0x9
	.4byte	0x55c
	.uleb128 0x7
	.4byte	0x6d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x5
	.byte	0x15
	.4byte	0x577
	.uleb128 0x7
	.4byte	0x42
	.uleb128 0x7
	.4byte	0x517
	.uleb128 0x7
	.4byte	0x55
	.byte	0
	.uleb128 0x9
	.4byte	.LASF77
	.2byte	0x428
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0xa
	.ascii	"val\000"
	.2byte	0x42a
	.byte	0xd
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xb
	.4byte	.LASF75
	.2byte	0x462
	.byte	0xd
	.4byte	0x9bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x5ea
	.uleb128 0x16
	.ascii	"i\000"
	.2byte	0x463
	.byte	0xd
	.4byte	0x8c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x5
	.4byte	.LVL265
	.4byte	0x55c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL236
	.4byte	0x55c
	.4byte	0x608
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL237
	.4byte	0x54b
	.4byte	0x61c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL238
	.4byte	0x55c
	.4byte	0x63a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL239
	.4byte	0x55c
	.4byte	0x658
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL240
	.4byte	0x55c
	.4byte	0x676
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL241
	.4byte	0x55c
	.4byte	0x695
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL242
	.4byte	0x55c
	.4byte	0x6b9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x90
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL243
	.4byte	0x55c
	.4byte	0x6d8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL244
	.4byte	0x55c
	.4byte	0x6f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL245
	.4byte	0x55c
	.4byte	0x717
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL246
	.4byte	0x55c
	.4byte	0x737
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL247
	.4byte	0x55c
	.4byte	0x756
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL248
	.4byte	0x55c
	.4byte	0x776
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL249
	.4byte	0x55c
	.4byte	0x796
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL250
	.4byte	0x55c
	.4byte	0x7b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL251
	.4byte	0x55c
	.4byte	0x7d5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0x8c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL252
	.4byte	0x55c
	.4byte	0x7f5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL253
	.4byte	0x55c
	.4byte	0x815
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL254
	.4byte	0x55c
	.4byte	0x835
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL255
	.4byte	0x55c
	.4byte	0x855
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL256
	.4byte	0x55c
	.4byte	0x875
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL257
	.4byte	0x55c
	.4byte	0x895
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL258
	.4byte	0x55c
	.4byte	0x8b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL259
	.4byte	0x55c
	.4byte	0x8d5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL260
	.4byte	0x55c
	.4byte	0x8f5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL261
	.4byte	0x55c
	.4byte	0x914
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL266
	.4byte	0x55c
	.4byte	0x933
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL267
	.4byte	0x55c
	.4byte	0x951
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL268
	.4byte	0x55c
	.4byte	0x970
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL269
	.4byte	0x55c
	.4byte	0x98f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL270
	.4byte	0x55c
	.4byte	0x9ae
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL271
	.4byte	0x54b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x42
	.4byte	0x9cf
	.uleb128 0xc
	.4byte	0x93
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.2byte	0x3f4
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcb
	.uleb128 0xa
	.ascii	"val\000"
	.2byte	0x3f6
	.byte	0xd
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LVL220
	.4byte	0x55c
	.4byte	0xa11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL221
	.4byte	0x54b
	.4byte	0xa25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL222
	.4byte	0x55c
	.4byte	0xa43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL223
	.4byte	0x55c
	.4byte	0xa61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL224
	.4byte	0x55c
	.4byte	0xa80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL225
	.4byte	0x55c
	.4byte	0xa9e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL226
	.4byte	0x55c
	.4byte	0xabc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL227
	.4byte	0x55c
	.4byte	0xadb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL228
	.4byte	0x55c
	.4byte	0xaf9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL229
	.4byte	0x55c
	.4byte	0xb17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL230
	.4byte	0x55c
	.4byte	0xb35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL231
	.4byte	0x55c
	.4byte	0xb53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL232
	.4byte	0x55c
	.4byte	0xb72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL233
	.4byte	0x55c
	.4byte	0xb90
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL234
	.4byte	0x55c
	.4byte	0xbaf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL235
	.4byte	0x55c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.2byte	0x34d
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3b
	.uleb128 0xa
	.ascii	"val\000"
	.2byte	0x34f
	.byte	0xd
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.4byte	.LVL192
	.4byte	0x55c
	.4byte	0xc0d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL193
	.4byte	0x54b
	.4byte	0xc21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL194
	.4byte	0x55c
	.4byte	0xc3f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL195
	.4byte	0x55c
	.4byte	0xc5d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL196
	.4byte	0x55c
	.4byte	0xc7b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL197
	.4byte	0x55c
	.4byte	0xc9a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL198
	.4byte	0x55c
	.4byte	0xcb8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL199
	.4byte	0x55c
	.4byte	0xcd6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL200
	.4byte	0x55c
	.4byte	0xcf5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL201
	.4byte	0x55c
	.4byte	0xd13
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL202
	.4byte	0x55c
	.4byte	0xd32
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
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL203
	.4byte	0x55c
	.4byte	0xd50
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL204
	.4byte	0x55c
	.4byte	0xd6f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL205
	.4byte	0x55c
	.4byte	0xd8e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL206
	.4byte	0x55c
	.4byte	0xdac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL207
	.4byte	0x55c
	.4byte	0xdcb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL208
	.4byte	0x55c
	.4byte	0xdea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL209
	.4byte	0x55c
	.4byte	0xe09
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL210
	.4byte	0x55c
	.4byte	0xe27
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL211
	.4byte	0x55c
	.4byte	0xe46
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL212
	.4byte	0x55c
	.4byte	0xe65
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL213
	.4byte	0x55c
	.4byte	0xe84
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
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL214
	.4byte	0x55c
	.4byte	0xea3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL215
	.4byte	0x55c
	.4byte	0xec2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL216
	.4byte	0x55c
	.4byte	0xee1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL217
	.4byte	0x55c
	.4byte	0xf00
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL218
	.4byte	0x55c
	.4byte	0xf1f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL219
	.4byte	0x55c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF80
	.2byte	0x2ed
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1348
	.uleb128 0xb
	.4byte	.LASF81
	.2byte	0x2f0
	.byte	0xb
	.4byte	0x1348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x2f1
	.byte	0xc
	.4byte	0x6d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xa
	.ascii	"val\000"
	.2byte	0x2f2
	.byte	0xb
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LVL152
	.4byte	0x51c
	.4byte	0xf96
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.uleb128 0x2
	.4byte	.LVL153
	.4byte	0x4fc
	.4byte	0xfb4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL155
	.4byte	0x52d
	.4byte	0xfcb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL156
	.4byte	0x4fc
	.4byte	0xfe9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL158
	.4byte	0x52d
	.4byte	0x1000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2
	.4byte	.LVL159
	.4byte	0x55c
	.4byte	0x101f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL160
	.4byte	0x54b
	.4byte	0x1033
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.4byte	.LVL161
	.4byte	0x55c
	.4byte	0x1052
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL162
	.4byte	0x54b
	.4byte	0x1065
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL163
	.4byte	0x55c
	.4byte	0x1085
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL164
	.4byte	0x54b
	.4byte	0x1098
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL165
	.4byte	0x55c
	.4byte	0x10b7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL166
	.4byte	0x54b
	.4byte	0x10ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL167
	.4byte	0x55c
	.4byte	0x10ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL168
	.4byte	0x54b
	.4byte	0x10fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL169
	.4byte	0x55c
	.4byte	0x111c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL170
	.4byte	0x54b
	.4byte	0x1130
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL171
	.4byte	0x55c
	.4byte	0x114f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL172
	.4byte	0x54b
	.4byte	0x1163
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL173
	.4byte	0x55c
	.4byte	0x1183
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL174
	.4byte	0x54b
	.4byte	0x1197
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL175
	.4byte	0x55c
	.4byte	0x11b6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL176
	.4byte	0x54b
	.4byte	0x11ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL177
	.4byte	0x55c
	.4byte	0x11e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL178
	.4byte	0x54b
	.4byte	0x11fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL179
	.4byte	0x55c
	.4byte	0x121c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL180
	.4byte	0x54b
	.4byte	0x1230
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL181
	.4byte	0x55c
	.4byte	0x1250
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL182
	.4byte	0x54b
	.4byte	0x1264
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL183
	.4byte	0x55c
	.4byte	0x1284
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL184
	.4byte	0x54b
	.4byte	0x1298
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL185
	.4byte	0x55c
	.4byte	0x12b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL186
	.4byte	0x54b
	.4byte	0x12cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL187
	.4byte	0x55c
	.4byte	0x12ec
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL188
	.4byte	0x54b
	.4byte	0x1300
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL189
	.4byte	0x55c
	.4byte	0x1320
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL190
	.4byte	0x54b
	.4byte	0x1334
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL191
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x42
	.4byte	0x1358
	.uleb128 0xc
	.4byte	0x93
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF83
	.2byte	0x2c4
	.byte	0x6
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF84
	.2byte	0x296
	.byte	0x7
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF87
	.2byte	0x1d8
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x177c
	.uleb128 0xb
	.4byte	.LASF81
	.2byte	0x1da
	.byte	0xb
	.4byte	0x1348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x1db
	.byte	0xc
	.4byte	0x6d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xa
	.ascii	"val\000"
	.2byte	0x1dc
	.byte	0xb
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LVL112
	.4byte	0x51c
	.4byte	0x13d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.uleb128 0x2
	.4byte	.LVL113
	.4byte	0x4fc
	.4byte	0x13f5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL115
	.4byte	0x52d
	.4byte	0x140c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL116
	.4byte	0x4fc
	.4byte	0x142a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL118
	.4byte	0x52d
	.4byte	0x1441
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2
	.4byte	.LVL119
	.4byte	0x55c
	.4byte	0x145f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL120
	.4byte	0x54b
	.4byte	0x1473
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL121
	.4byte	0x55c
	.4byte	0x1491
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL122
	.4byte	0x54b
	.4byte	0x14a4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL123
	.4byte	0x55c
	.4byte	0x14c4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL124
	.4byte	0x54b
	.4byte	0x14d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL125
	.4byte	0x55c
	.4byte	0x14f6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL126
	.4byte	0x54b
	.4byte	0x1509
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL127
	.4byte	0x55c
	.4byte	0x1529
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL128
	.4byte	0x54b
	.4byte	0x153c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL129
	.4byte	0x55c
	.4byte	0x155c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL130
	.4byte	0x54b
	.4byte	0x156f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL131
	.4byte	0x55c
	.4byte	0x158e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL132
	.4byte	0x54b
	.4byte	0x15a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL133
	.4byte	0x55c
	.4byte	0x15c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL134
	.4byte	0x54b
	.4byte	0x15d3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL135
	.4byte	0x55c
	.4byte	0x15f2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL136
	.4byte	0x54b
	.4byte	0x1605
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL137
	.4byte	0x55c
	.4byte	0x1624
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL138
	.4byte	0x54b
	.4byte	0x1637
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL139
	.4byte	0x55c
	.4byte	0x1656
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL140
	.4byte	0x54b
	.4byte	0x1669
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL141
	.4byte	0x55c
	.4byte	0x1689
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL142
	.4byte	0x54b
	.4byte	0x169c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL143
	.4byte	0x55c
	.4byte	0x16bc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL144
	.4byte	0x54b
	.4byte	0x16cf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL145
	.4byte	0x55c
	.4byte	0x16ef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL146
	.4byte	0x54b
	.4byte	0x1702
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL147
	.4byte	0x55c
	.4byte	0x1722
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL148
	.4byte	0x54b
	.4byte	0x1735
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL149
	.4byte	0x55c
	.4byte	0x1755
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL150
	.4byte	0x54b
	.4byte	0x1768
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x5
	.4byte	.LVL151
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.2byte	0x179
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7c
	.uleb128 0xb
	.4byte	.LASF81
	.2byte	0x17b
	.byte	0xd
	.4byte	0x1348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.ascii	"val\000"
	.2byte	0x17c
	.byte	0xd
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x17d
	.byte	0xe
	.4byte	0x6d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2
	.4byte	.LVL72
	.4byte	0x51c
	.4byte	0x17d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.uleb128 0x2
	.4byte	.LVL73
	.4byte	0x4fc
	.4byte	0x17f5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL75
	.4byte	0x52d
	.4byte	0x180c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL76
	.4byte	0x4fc
	.4byte	0x182a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL78
	.4byte	0x52d
	.4byte	0x1841
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2
	.4byte	.LVL79
	.4byte	0x55c
	.4byte	0x185f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL80
	.4byte	0x54b
	.4byte	0x1873
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL81
	.4byte	0x55c
	.4byte	0x1891
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL82
	.4byte	0x54b
	.4byte	0x18a4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL83
	.4byte	0x55c
	.4byte	0x18c4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL84
	.4byte	0x54b
	.4byte	0x18d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL85
	.4byte	0x55c
	.4byte	0x18f6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL86
	.4byte	0x54b
	.4byte	0x1909
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL87
	.4byte	0x55c
	.4byte	0x1929
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL88
	.4byte	0x54b
	.4byte	0x193c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL89
	.4byte	0x55c
	.4byte	0x195c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL90
	.4byte	0x54b
	.4byte	0x196f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL91
	.4byte	0x55c
	.4byte	0x198e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL92
	.4byte	0x54b
	.4byte	0x19a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL93
	.4byte	0x55c
	.4byte	0x19c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL94
	.4byte	0x54b
	.4byte	0x19d3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL95
	.4byte	0x55c
	.4byte	0x19f2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL96
	.4byte	0x54b
	.4byte	0x1a05
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL97
	.4byte	0x55c
	.4byte	0x1a24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL98
	.4byte	0x54b
	.4byte	0x1a37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL99
	.4byte	0x55c
	.4byte	0x1a56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL100
	.4byte	0x54b
	.4byte	0x1a69
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL101
	.4byte	0x55c
	.4byte	0x1a89
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL102
	.4byte	0x54b
	.4byte	0x1a9c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL103
	.4byte	0x55c
	.4byte	0x1abc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL104
	.4byte	0x54b
	.4byte	0x1acf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL105
	.4byte	0x55c
	.4byte	0x1aef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL106
	.4byte	0x54b
	.4byte	0x1b02
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL107
	.4byte	0x55c
	.4byte	0x1b22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL108
	.4byte	0x54b
	.4byte	0x1b35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL109
	.4byte	0x55c
	.4byte	0x1b55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL110
	.4byte	0x54b
	.4byte	0x1b68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x5
	.4byte	.LVL111
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.2byte	0x11c
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e03
	.uleb128 0xb
	.4byte	.LASF81
	.2byte	0x11e
	.byte	0xd
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x2
	.4byte	.LVL50
	.4byte	0x51c
	.4byte	0x1bb4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.uleb128 0x2
	.4byte	.LVL51
	.4byte	0x55c
	.4byte	0x1bd2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL52
	.4byte	0x54b
	.4byte	0x1be6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL53
	.4byte	0x55c
	.4byte	0x1c04
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL54
	.4byte	0x54b
	.4byte	0x1c17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL55
	.4byte	0x55c
	.4byte	0x1c3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x48
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL56
	.4byte	0x54b
	.4byte	0x1c4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL57
	.4byte	0x55c
	.4byte	0x1c73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x48
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL58
	.4byte	0x55c
	.4byte	0x1c98
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x48
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL59
	.4byte	0x54b
	.4byte	0x1cab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL60
	.4byte	0x55c
	.4byte	0x1cca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL61
	.4byte	0x55c
	.4byte	0x1cea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL62
	.4byte	0x55c
	.4byte	0x1d0a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL63
	.4byte	0x55c
	.4byte	0x1d2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL64
	.4byte	0x55c
	.4byte	0x1d4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL65
	.4byte	0x55c
	.4byte	0x1d6a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL66
	.4byte	0x54b
	.4byte	0x1d7d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL67
	.4byte	0x55c
	.4byte	0x1da1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x48
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL68
	.4byte	0x54b
	.4byte	0x1db4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2
	.4byte	.LVL69
	.4byte	0x4fc
	.4byte	0x1dd8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x48
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL70
	.4byte	0x52d
	.4byte	0x1def
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x5
	.4byte	.LVL71
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF88
	.2byte	0x101
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3f
	.uleb128 0xb
	.4byte	.LASF81
	.2byte	0x103
	.byte	0xb
	.4byte	0x1348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x104
	.byte	0xb
	.4byte	0x42
	.uleb128 0x16
	.ascii	"chk\000"
	.2byte	0x105
	.byte	0xb
	.4byte	0x42
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x106
	.byte	0xc
	.4byte	0x6d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2
	.4byte	.LVL35
	.4byte	0x51c
	.4byte	0x1e70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.uleb128 0x2
	.4byte	.LVL36
	.4byte	0x4fc
	.4byte	0x1e8e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL38
	.4byte	0x52d
	.4byte	0x1eab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL39
	.4byte	0x4fc
	.4byte	0x1ec9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL41
	.4byte	0x52d
	.4byte	0x1ee6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL44
	.4byte	0x52d
	.4byte	0x1efd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2
	.4byte	.LVL45
	.4byte	0x52d
	.4byte	0x1f14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x2
	.4byte	.LVL47
	.4byte	0x52d
	.4byte	0x1f2b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x5
	.4byte	.LVL48
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa6
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2104
	.uleb128 0x19
	.ascii	"val\000"
	.byte	0xa8
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LVL20
	.4byte	0x55c
	.4byte	0x1f81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL21
	.4byte	0x54b
	.4byte	0x1f95
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL22
	.4byte	0x55c
	.4byte	0x1fb4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL23
	.4byte	0x55c
	.4byte	0x1fd3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL24
	.4byte	0x55c
	.4byte	0x1ff3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL25
	.4byte	0x55c
	.4byte	0x2013
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL26
	.4byte	0x55c
	.4byte	0x2033
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL27
	.4byte	0x55c
	.4byte	0x2053
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL28
	.4byte	0x55c
	.4byte	0x2073
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL29
	.4byte	0x55c
	.4byte	0x2092
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL30
	.4byte	0x55c
	.4byte	0x20b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL31
	.4byte	0x55c
	.4byte	0x20d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL32
	.4byte	0x55c
	.4byte	0x20f0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL33
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.ascii	"val\000"
	.byte	0x61
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LVL0
	.4byte	0x55c
	.4byte	0x2141
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	0x54b
	.4byte	0x2155
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	0x55c
	.4byte	0x2173
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL3
	.4byte	0x55c
	.4byte	0x2191
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL4
	.4byte	0x55c
	.4byte	0x21b0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL5
	.4byte	0x55c
	.4byte	0x21cf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL6
	.4byte	0x55c
	.4byte	0x21ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL7
	.4byte	0x55c
	.4byte	0x220d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL8
	.4byte	0x55c
	.4byte	0x222c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL9
	.4byte	0x55c
	.4byte	0x224b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL10
	.4byte	0x54b
	.4byte	0x225e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	0x55c
	.4byte	0x227c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL12
	.4byte	0x55c
	.4byte	0x229b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL13
	.4byte	0x55c
	.4byte	0x22ba
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
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL14
	.4byte	0x55c
	.4byte	0x22d9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL15
	.4byte	0x55c
	.4byte	0x22f7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL16
	.4byte	0x54b
	.4byte	0x230b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL17
	.4byte	0x55c
	.4byte	0x2329
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.4byte	.LVL18
	.4byte	0x54b
	.4byte	0x233d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL19
	.4byte	0x52d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
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
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
.LVUS5:
	.uleb128 .LVU1067
	.uleb128 .LVU1068
	.uleb128 .LVU1068
	.uleb128 .LVU1070
	.uleb128 .LVU1070
	.uleb128 .LVU1071
	.uleb128 .LVU1071
	.uleb128 .LVU1072
.LLST5:
	.byte	0x4
	.uleb128 .LVL262-.Ltext0
	.uleb128 .LVL263-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL263-.Ltext0
	.uleb128 .LVL264-.Ltext0
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL264-.Ltext0
	.uleb128 .LVL265-1-.Ltext0
	.uleb128 0x8
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL265-1-.Ltext0
	.uleb128 .LVL265-.Ltext0
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x27
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU636
	.uleb128 .LVU637
	.uleb128 .LVU637
	.uleb128 .LVU638
	.uleb128 .LVU640
	.uleb128 .LVU641
	.uleb128 .LVU641
	.uleb128 .LVU642
.LLST4:
	.byte	0x4
	.uleb128 .LVL153-.Ltext0
	.uleb128 .LVL154-.Ltext0
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL154-.Ltext0
	.uleb128 .LVL155-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL156-.Ltext0
	.uleb128 .LVL157-.Ltext0
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL157-.Ltext0
	.uleb128 .LVL158-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS3:
	.uleb128 .LVU394
	.uleb128 .LVU395
	.uleb128 .LVU395
	.uleb128 .LVU396
	.uleb128 .LVU398
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 .LVU400
.LLST3:
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL115-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL117-.Ltext0
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL117-.Ltext0
	.uleb128 .LVL118-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS2:
	.uleb128 .LVU274
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU280
.LLST2:
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x8
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL78-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS0:
	.uleb128 .LVU157
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU177
	.uleb128 .LVU180
	.uleb128 .LVU183
.LLST0:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x76
	.byte	0x29
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0xd
	.byte	0x31
	.byte	0x32
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x76
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0xd
	.byte	0x31
	.byte	0x32
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x76
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU166
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU183
.LLST1:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x1
	.byte	0x54
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF37:
	.ascii	"AHB1LPENR\000"
.LASF80:
	.ascii	"initOV7670_RGB565_QQVGA\000"
.LASF88:
	.ascii	"getOV7670_ID\000"
.LASF54:
	.ascii	"CCER\000"
.LASF73:
	.ascii	"delay_ms\000"
.LASF27:
	.ascii	"APB1RSTR\000"
.LASF31:
	.ascii	"AHB2ENR\000"
.LASF65:
	.ascii	"DMAR\000"
.LASF83:
	.ascii	"OV7670_XCLK_TIM1_init\000"
.LASF51:
	.ascii	"CCMR1\000"
.LASF52:
	.ascii	"CCMR2\000"
.LASF1:
	.ascii	"short int\000"
.LASF44:
	.ascii	"BDCR\000"
.LASF47:
	.ascii	"PLLI2SCFGR\000"
.LASF46:
	.ascii	"SSCGR\000"
.LASF24:
	.ascii	"AHB2RSTR\000"
.LASF39:
	.ascii	"AHB3LPENR\000"
.LASF22:
	.ascii	"CFGR\000"
.LASF74:
	.ascii	"writeI2C\000"
.LASF90:
	.ascii	"OV7670_InitQQVGA_RGB565\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF34:
	.ascii	"APB1ENR\000"
.LASF69:
	.ascii	"readI2C\000"
.LASF14:
	.ascii	"OTYPER\000"
.LASF56:
	.ascii	"RESERVED9\000"
.LASF93:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrfV1.6\000"
.LASF86:
	.ascii	"OV7670_Init_QQVGA_RGB565_Working\000"
.LASF32:
	.ascii	"AHB3ENR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF79:
	.ascii	"OV7670_SetupQQVGA_Custom_sa_neta\000"
.LASF16:
	.ascii	"PUPDR\000"
.LASF72:
	.ascii	"char\000"
.LASF58:
	.ascii	"CCR1\000"
.LASF2:
	.ascii	"long int\000"
.LASF60:
	.ascii	"CCR3\000"
.LASF61:
	.ascii	"CCR4\000"
.LASF48:
	.ascii	"RCC_TypeDef\000"
.LASF70:
	.ascii	"initI2C1\000"
.LASF12:
	.ascii	"ov7670_reg_val_t\000"
.LASF13:
	.ascii	"MODER\000"
.LASF28:
	.ascii	"APB2RSTR\000"
.LASF17:
	.ascii	"BSRRL\000"
.LASF66:
	.ascii	"RESERVED13\000"
.LASF68:
	.ascii	"TIM_TypeDef\000"
.LASF49:
	.ascii	"SMCR\000"
.LASF59:
	.ascii	"CCR2\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF57:
	.ascii	"RESERVED10\000"
.LASF63:
	.ascii	"RESERVED11\000"
.LASF64:
	.ascii	"RESERVED12\000"
.LASF35:
	.ascii	"APB2ENR\000"
.LASF67:
	.ascii	"RESERVED14\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF77:
	.ascii	"OV7670_SetupQQVGA_Fixed\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF84:
	.ascii	"OV7670_XCLK_TIM1_init_chtGPT\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF75:
	.ascii	"gamma_values\000"
.LASF50:
	.ascii	"DIER\000"
.LASF21:
	.ascii	"PLLCFGR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"APB1LPENR\000"
.LASF71:
	.ascii	"printUSART2\000"
.LASF62:
	.ascii	"BDTR\000"
.LASF85:
	.ascii	"initOV7670_ChatGPT\000"
.LASF78:
	.ascii	"OV7670_SetupQQVGA_Custom_sa_neta_deep_seek\000"
.LASF81:
	.ascii	"data\000"
.LASF38:
	.ascii	"AHB2LPENR\000"
.LASF92:
	.ascii	"ov7670/ov7670.c\000"
.LASF36:
	.ascii	"RESERVED3\000"
.LASF26:
	.ascii	"RESERVED0\000"
.LASF29:
	.ascii	"RESERVED1\000"
.LASF33:
	.ascii	"RESERVED2\000"
.LASF15:
	.ascii	"OSPEEDR\000"
.LASF40:
	.ascii	"RESERVED4\000"
.LASF43:
	.ascii	"RESERVED5\000"
.LASF45:
	.ascii	"RESERVED6\000"
.LASF53:
	.ascii	"RESERVED7\000"
.LASF55:
	.ascii	"RESERVED8\000"
.LASF91:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF30:
	.ascii	"AHB1ENR\000"
.LASF82:
	.ascii	"utmp32\000"
.LASF87:
	.ascii	"initOV7670\000"
.LASF23:
	.ascii	"AHB1RSTR\000"
.LASF18:
	.ascii	"BSRRH\000"
.LASF25:
	.ascii	"AHB3RSTR\000"
.LASF20:
	.ascii	"GPIO_TypeDef\000"
.LASF76:
	.ascii	"ov7670_qqvga_rgb565\000"
.LASF89:
	.ascii	"OV7670_InitQQVGA_RGB565_FullData\000"
.LASF19:
	.ascii	"LCKR\000"
.LASF42:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

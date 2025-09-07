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
	.file	"dcmi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "DCMI/dcmi.c"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"GPIOA MODER=0x%xw AFR0=0x%xw AFR1=0x%xw IDR=0x%xh\012"
	.ascii	"\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_Init_OV7670
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init_OV7670, %function
DCMI_Init_OV7670:
.LFB110:
	.loc 1 25 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 43 9 view .LVU1
	.loc 1 25 1 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 43 12 view .LVU3
	ldr	r4, .L4
	.loc 1 45 18 view .LVU4
	ldr	r0, .L4+4
	.loc 1 43 12 view .LVU5
	ldr	r3, [r4, #48]
	.loc 1 43 22 view .LVU6
	orr	r3, r3, #31
	str	r3, [r4, #48]
	.loc 1 45 13 is_stmt 1 view .LVU7
	.loc 1 45 18 is_stmt 0 view .LVU8
	ldr	r3, [r0]
	.loc 1 45 26 view .LVU9
	bic	r3, r3, #3932160
	bic	r3, r3, #13056
	str	r3, [r0]
	.loc 1 46 13 is_stmt 1 view .LVU10
	.loc 1 46 18 is_stmt 0 view .LVU11
	ldr	r3, [r0]
	.loc 1 46 26 view .LVU12
	orr	r3, r3, #2621440
	orr	r3, r3, #8704
	str	r3, [r0]
	.loc 1 47 13 is_stmt 1 view .LVU13
	.loc 1 47 23 is_stmt 0 view .LVU14
	ldr	r3, [r0, #32]
	.loc 1 47 27 view .LVU15
	bic	r3, r3, #251658240
	bic	r3, r3, #983040
	str	r3, [r0, #32]
	.loc 1 48 13 is_stmt 1 view .LVU16
	.loc 1 48 23 is_stmt 0 view .LVU17
	ldr	r3, [r0, #32]
	.loc 1 48 27 view .LVU18
	orr	r3, r3, #218103808
	orr	r3, r3, #851968
	str	r3, [r0, #32]
	.loc 1 49 13 is_stmt 1 view .LVU19
	.loc 1 49 23 is_stmt 0 view .LVU20
	ldr	r3, [r0, #36]
	.loc 1 49 27 view .LVU21
	bic	r3, r3, #4080
	str	r3, [r0, #36]
	.loc 1 50 13 is_stmt 1 view .LVU22
	.loc 1 50 23 is_stmt 0 view .LVU23
	ldr	r3, [r0, #36]
	.loc 1 50 27 view .LVU24
	orr	r3, r3, #3536
	str	r3, [r0, #36]
	.loc 1 54 13 is_stmt 1 view .LVU25
	.loc 1 54 18 is_stmt 0 view .LVU26
	ldr	r3, [r0]
	.loc 1 54 26 view .LVU27
	bic	r3, r3, #12288
	str	r3, [r0]
	.loc 1 55 13 is_stmt 1 view .LVU28
	.loc 1 55 18 is_stmt 0 view .LVU29
	ldr	r3, [r0]
	.loc 1 55 26 view .LVU30
	orr	r3, r3, #8192
	str	r3, [r0]
	.loc 1 57 13 is_stmt 1 view .LVU31
	.loc 1 57 23 is_stmt 0 view .LVU32
	ldr	r3, [r0, #32]
	.loc 1 57 27 view .LVU33
	bic	r3, r3, #251658240
	str	r3, [r0, #32]
	.loc 1 58 13 is_stmt 1 view .LVU34
	.loc 1 58 23 is_stmt 0 view .LVU35
	ldr	r3, [r0, #32]
	.loc 1 58 27 view .LVU36
	orr	r3, r3, #218103808
	str	r3, [r0, #32]
	.loc 1 61 13 is_stmt 1 view .LVU37
	.loc 1 25 1 is_stmt 0 view .LVU38
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 62 30 view .LVU39
	ldr	r1, [r0]
	.loc 1 62 49 view .LVU40
	ldr	r2, [r0, #32]
	.loc 1 62 64 view .LVU41
	ldr	r3, [r0, #36]
	.loc 1 62 74 view .LVU42
	ldr	r0, [r0, #16]
	.loc 1 61 13 view .LVU43
	str	r0, [sp]
	ldr	r0, .L4+8
	bl	printUSART2
.LVL0:
	.loc 1 75 13 is_stmt 1 view .LVU44
	.loc 1 75 18 is_stmt 0 view .LVU45
	ldr	r2, .L4+12
	.loc 1 85 18 view .LVU46
	ldr	r3, .L4+16
	.loc 1 75 18 view .LVU47
	ldr	r0, [r2]
	.loc 1 96 18 view .LVU48
	ldr	r1, .L4+20
	.loc 1 75 26 view .LVU49
	bic	r0, r0, #49152
	str	r0, [r2]
	.loc 1 76 13 is_stmt 1 view .LVU50
	.loc 1 76 18 is_stmt 0 view .LVU51
	ldr	r0, [r2]
	.loc 1 76 26 view .LVU52
	orr	r0, r0, #32768
	str	r0, [r2]
	.loc 1 77 13 is_stmt 1 view .LVU53
	.loc 1 77 23 is_stmt 0 view .LVU54
	ldr	r0, [r2, #32]
	.loc 1 77 27 view .LVU55
	bic	r0, r0, #-268435456
	str	r0, [r2, #32]
	.loc 1 78 13 is_stmt 1 view .LVU56
	.loc 1 78 23 is_stmt 0 view .LVU57
	ldr	r0, [r2, #32]
	.loc 1 78 27 view .LVU58
	orr	r0, r0, #-805306368
	str	r0, [r2, #32]
	.loc 1 85 13 is_stmt 1 view .LVU59
	.loc 1 85 18 is_stmt 0 view .LVU60
	ldr	r0, [r3]
	.loc 1 85 26 view .LVU61
	bic	r0, r0, #983040
	str	r0, [r3]
	.loc 1 86 13 is_stmt 1 view .LVU62
	.loc 1 86 18 is_stmt 0 view .LVU63
	ldr	r0, [r3]
	.loc 1 86 26 view .LVU64
	orr	r0, r0, #655360
	str	r0, [r3]
	.loc 1 87 13 is_stmt 1 view .LVU65
	.loc 1 87 23 is_stmt 0 view .LVU66
	ldr	r0, [r3, #36]
	.loc 1 87 27 view .LVU67
	bic	r0, r0, #255
	str	r0, [r3, #36]
	.loc 1 88 13 is_stmt 1 view .LVU68
	.loc 1 88 23 is_stmt 0 view .LVU69
	ldr	r0, [r3, #36]
	.loc 1 88 27 view .LVU70
	orr	r0, r0, #221
	str	r0, [r3, #36]
	.loc 1 96 13 is_stmt 1 view .LVU71
	.loc 1 96 18 is_stmt 0 view .LVU72
	ldr	r0, [r1]
	.loc 1 128 14 view .LVU73
	ldr	r3, .L4+24
	.loc 1 96 26 view .LVU74
	bic	r0, r0, #192
	str	r0, [r1]
	.loc 1 97 13 is_stmt 1 view .LVU75
	.loc 1 97 18 is_stmt 0 view .LVU76
	ldr	r0, [r1]
	.loc 1 97 26 view .LVU77
	orr	r0, r0, #128
	str	r0, [r1]
	.loc 1 98 13 is_stmt 1 view .LVU78
	.loc 1 98 23 is_stmt 0 view .LVU79
	ldr	r0, [r1, #32]
	.loc 1 98 27 view .LVU80
	bic	r0, r0, #61440
	str	r0, [r1, #32]
	.loc 1 99 13 is_stmt 1 view .LVU81
	.loc 1 99 23 is_stmt 0 view .LVU82
	ldr	r0, [r1, #32]
	.loc 1 99 27 view .LVU83
	orr	r0, r0, #53248
	str	r0, [r1, #32]
	.loc 1 106 13 is_stmt 1 view .LVU84
	.loc 1 106 18 is_stmt 0 view .LVU85
	ldr	r1, [r2, #3072]
	.loc 1 106 26 view .LVU86
	bic	r1, r1, #16128
	str	r1, [r2, #3072]
	.loc 1 107 13 is_stmt 1 view .LVU87
	.loc 1 107 18 is_stmt 0 view .LVU88
	ldr	r1, [r2, #3072]
	.loc 1 107 26 view .LVU89
	orr	r1, r1, #10752
	str	r1, [r2, #3072]
	.loc 1 108 13 is_stmt 1 view .LVU90
	.loc 1 108 23 is_stmt 0 view .LVU91
	ldr	r1, [r2, #3104]
	.loc 1 108 27 view .LVU92
	bic	r1, r1, #267386880
	bic	r1, r1, #983040
	str	r1, [r2, #3104]
	.loc 1 109 13 is_stmt 1 view .LVU93
	.loc 1 109 23 is_stmt 0 view .LVU94
	ldr	r1, [r2, #3104]
	.loc 1 109 27 view .LVU95
	orr	r1, r1, #231735296
	orr	r1, r1, #851968
	str	r1, [r2, #3104]
	.loc 1 120 5 is_stmt 1 view .LVU96
	.loc 1 120 8 is_stmt 0 view .LVU97
	ldr	r2, [r4, #52]
	.loc 1 120 18 view .LVU98
	orr	r2, r2, #1
	str	r2, [r4, #52]
	.loc 1 123 5 is_stmt 1 view .LVU99
	.loc 1 123 8 is_stmt 0 view .LVU100
	ldr	r2, [r4, #20]
	.loc 1 123 19 view .LVU101
	orr	r2, r2, #1
	str	r2, [r4, #20]
	.loc 1 124 5 is_stmt 1 view .LVU102
	.loc 1 124 8 is_stmt 0 view .LVU103
	ldr	r2, [r4, #20]
	.loc 1 128 14 view .LVU104
	movs	r0, #0
	.loc 1 124 19 view .LVU105
	bic	r2, r2, #1
	str	r2, [r4, #20]
	.loc 1 128 5 is_stmt 1 view .LVU106
	.loc 1 128 14 is_stmt 0 view .LVU107
	str	r0, [r3]
	.loc 1 149 5 is_stmt 1 view .LVU108
	.loc 1 149 9 is_stmt 0 view .LVU109
	ldr	r2, [r3]
	.loc 1 149 14 view .LVU110
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 150 5 is_stmt 1 view .LVU111
	.loc 1 150 9 is_stmt 0 view .LVU112
	ldr	r2, [r3]
	.loc 1 150 14 view .LVU113
	bic	r2, r2, #64
	str	r2, [r3]
	.loc 1 151 5 is_stmt 1 view .LVU114
	.loc 1 151 9 is_stmt 0 view .LVU115
	ldr	r2, [r3]
	.loc 1 151 14 view .LVU116
	bic	r2, r2, #32
	str	r2, [r3]
	.loc 1 156 5 is_stmt 1 view .LVU117
	.loc 1 156 9 is_stmt 0 view .LVU118
	ldr	r2, [r3]
	.loc 1 156 14 view .LVU119
	orr	r2, r2, #2
	str	r2, [r3]
	.loc 1 158 5 is_stmt 1 view .LVU120
	.loc 1 158 9 is_stmt 0 view .LVU121
	ldr	r2, [r3]
	.loc 1 158 14 view .LVU122
	orr	r2, r2, #16384
	str	r2, [r3]
	.loc 1 159 1 view .LVU123
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073872896
	.word	.LC0
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1342504960
	.cfi_endproc
.LFE110:
	.size	DCMI_Init_OV7670, .-DCMI_Init_OV7670
	.align	1
	.p2align 2,,3
	.global	DCMI_Init_OV7670_continuous_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init_OV7670_continuous_mode, %function
DCMI_Init_OV7670_continuous_mode:
.LFB111:
	.loc 1 163 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 181 9 view .LVU125
	.loc 1 163 1 is_stmt 0 view .LVU126
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 181 12 view .LVU127
	ldr	r4, .L8
	.loc 1 183 18 view .LVU128
	ldr	r0, .L8+4
	.loc 1 181 12 view .LVU129
	ldr	r3, [r4, #48]
	.loc 1 181 22 view .LVU130
	orr	r3, r3, #31
	str	r3, [r4, #48]
	.loc 1 183 13 is_stmt 1 view .LVU131
	.loc 1 183 18 is_stmt 0 view .LVU132
	ldr	r3, [r0]
	.loc 1 183 26 view .LVU133
	bic	r3, r3, #3932160
	bic	r3, r3, #13056
	str	r3, [r0]
	.loc 1 184 13 is_stmt 1 view .LVU134
	.loc 1 184 18 is_stmt 0 view .LVU135
	ldr	r3, [r0]
	.loc 1 184 26 view .LVU136
	orr	r3, r3, #2621440
	orr	r3, r3, #8704
	str	r3, [r0]
	.loc 1 185 13 is_stmt 1 view .LVU137
	.loc 1 185 23 is_stmt 0 view .LVU138
	ldr	r3, [r0, #32]
	.loc 1 185 27 view .LVU139
	bic	r3, r3, #251658240
	bic	r3, r3, #983040
	str	r3, [r0, #32]
	.loc 1 186 13 is_stmt 1 view .LVU140
	.loc 1 186 23 is_stmt 0 view .LVU141
	ldr	r3, [r0, #32]
	.loc 1 186 27 view .LVU142
	orr	r3, r3, #218103808
	orr	r3, r3, #851968
	str	r3, [r0, #32]
	.loc 1 187 13 is_stmt 1 view .LVU143
	.loc 1 187 23 is_stmt 0 view .LVU144
	ldr	r3, [r0, #36]
	.loc 1 187 27 view .LVU145
	bic	r3, r3, #4080
	str	r3, [r0, #36]
	.loc 1 188 13 is_stmt 1 view .LVU146
	.loc 1 188 23 is_stmt 0 view .LVU147
	ldr	r3, [r0, #36]
	.loc 1 188 27 view .LVU148
	orr	r3, r3, #3536
	str	r3, [r0, #36]
	.loc 1 192 13 is_stmt 1 view .LVU149
	.loc 1 192 18 is_stmt 0 view .LVU150
	ldr	r3, [r0]
	.loc 1 192 26 view .LVU151
	bic	r3, r3, #12288
	str	r3, [r0]
	.loc 1 193 13 is_stmt 1 view .LVU152
	.loc 1 193 18 is_stmt 0 view .LVU153
	ldr	r3, [r0]
	.loc 1 193 26 view .LVU154
	orr	r3, r3, #8192
	str	r3, [r0]
	.loc 1 195 13 is_stmt 1 view .LVU155
	.loc 1 195 23 is_stmt 0 view .LVU156
	ldr	r3, [r0, #32]
	.loc 1 195 27 view .LVU157
	bic	r3, r3, #251658240
	str	r3, [r0, #32]
	.loc 1 196 13 is_stmt 1 view .LVU158
	.loc 1 196 23 is_stmt 0 view .LVU159
	ldr	r3, [r0, #32]
	.loc 1 196 27 view .LVU160
	orr	r3, r3, #218103808
	str	r3, [r0, #32]
	.loc 1 199 13 is_stmt 1 view .LVU161
	.loc 1 163 1 is_stmt 0 view .LVU162
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 200 30 view .LVU163
	ldr	r1, [r0]
	.loc 1 200 49 view .LVU164
	ldr	r2, [r0, #32]
	.loc 1 200 64 view .LVU165
	ldr	r3, [r0, #36]
	.loc 1 200 74 view .LVU166
	ldr	r0, [r0, #16]
	.loc 1 199 13 view .LVU167
	str	r0, [sp]
	ldr	r0, .L8+8
	bl	printUSART2
.LVL1:
	.loc 1 213 13 is_stmt 1 view .LVU168
	.loc 1 213 18 is_stmt 0 view .LVU169
	ldr	r2, .L8+12
	.loc 1 223 18 view .LVU170
	ldr	r3, .L8+16
	.loc 1 213 18 view .LVU171
	ldr	r0, [r2]
	.loc 1 234 18 view .LVU172
	ldr	r1, .L8+20
	.loc 1 213 26 view .LVU173
	bic	r0, r0, #49152
	str	r0, [r2]
	.loc 1 214 13 is_stmt 1 view .LVU174
	.loc 1 214 18 is_stmt 0 view .LVU175
	ldr	r0, [r2]
	.loc 1 214 26 view .LVU176
	orr	r0, r0, #32768
	str	r0, [r2]
	.loc 1 215 13 is_stmt 1 view .LVU177
	.loc 1 215 23 is_stmt 0 view .LVU178
	ldr	r0, [r2, #32]
	.loc 1 215 27 view .LVU179
	bic	r0, r0, #-268435456
	str	r0, [r2, #32]
	.loc 1 216 13 is_stmt 1 view .LVU180
	.loc 1 216 23 is_stmt 0 view .LVU181
	ldr	r0, [r2, #32]
	.loc 1 216 27 view .LVU182
	orr	r0, r0, #-805306368
	str	r0, [r2, #32]
	.loc 1 223 13 is_stmt 1 view .LVU183
	.loc 1 223 18 is_stmt 0 view .LVU184
	ldr	r0, [r3]
	.loc 1 223 26 view .LVU185
	bic	r0, r0, #983040
	str	r0, [r3]
	.loc 1 224 13 is_stmt 1 view .LVU186
	.loc 1 224 18 is_stmt 0 view .LVU187
	ldr	r0, [r3]
	.loc 1 224 26 view .LVU188
	orr	r0, r0, #655360
	str	r0, [r3]
	.loc 1 225 13 is_stmt 1 view .LVU189
	.loc 1 225 23 is_stmt 0 view .LVU190
	ldr	r0, [r3, #36]
	.loc 1 225 27 view .LVU191
	bic	r0, r0, #255
	str	r0, [r3, #36]
	.loc 1 226 13 is_stmt 1 view .LVU192
	.loc 1 226 23 is_stmt 0 view .LVU193
	ldr	r0, [r3, #36]
	.loc 1 226 27 view .LVU194
	orr	r0, r0, #221
	str	r0, [r3, #36]
	.loc 1 234 13 is_stmt 1 view .LVU195
	.loc 1 234 18 is_stmt 0 view .LVU196
	ldr	r0, [r1]
	.loc 1 266 14 view .LVU197
	ldr	r3, .L8+24
	.loc 1 234 26 view .LVU198
	bic	r0, r0, #192
	str	r0, [r1]
	.loc 1 235 13 is_stmt 1 view .LVU199
	.loc 1 235 18 is_stmt 0 view .LVU200
	ldr	r0, [r1]
	.loc 1 235 26 view .LVU201
	orr	r0, r0, #128
	str	r0, [r1]
	.loc 1 236 13 is_stmt 1 view .LVU202
	.loc 1 236 23 is_stmt 0 view .LVU203
	ldr	r0, [r1, #32]
	.loc 1 236 27 view .LVU204
	bic	r0, r0, #61440
	str	r0, [r1, #32]
	.loc 1 237 13 is_stmt 1 view .LVU205
	.loc 1 237 23 is_stmt 0 view .LVU206
	ldr	r0, [r1, #32]
	.loc 1 237 27 view .LVU207
	orr	r0, r0, #53248
	str	r0, [r1, #32]
	.loc 1 244 13 is_stmt 1 view .LVU208
	.loc 1 244 18 is_stmt 0 view .LVU209
	ldr	r1, [r2, #3072]
	.loc 1 244 26 view .LVU210
	bic	r1, r1, #16128
	str	r1, [r2, #3072]
	.loc 1 245 13 is_stmt 1 view .LVU211
	.loc 1 245 18 is_stmt 0 view .LVU212
	ldr	r1, [r2, #3072]
	.loc 1 245 26 view .LVU213
	orr	r1, r1, #10752
	str	r1, [r2, #3072]
	.loc 1 246 13 is_stmt 1 view .LVU214
	.loc 1 246 23 is_stmt 0 view .LVU215
	ldr	r1, [r2, #3104]
	.loc 1 246 27 view .LVU216
	bic	r1, r1, #267386880
	bic	r1, r1, #983040
	str	r1, [r2, #3104]
	.loc 1 247 13 is_stmt 1 view .LVU217
	.loc 1 247 23 is_stmt 0 view .LVU218
	ldr	r1, [r2, #3104]
	.loc 1 247 27 view .LVU219
	orr	r1, r1, #231735296
	orr	r1, r1, #851968
	str	r1, [r2, #3104]
	.loc 1 258 5 is_stmt 1 view .LVU220
	.loc 1 258 8 is_stmt 0 view .LVU221
	ldr	r2, [r4, #52]
	.loc 1 258 18 view .LVU222
	orr	r2, r2, #1
	str	r2, [r4, #52]
	.loc 1 261 5 is_stmt 1 view .LVU223
	.loc 1 261 8 is_stmt 0 view .LVU224
	ldr	r2, [r4, #20]
	.loc 1 261 19 view .LVU225
	orr	r2, r2, #1
	str	r2, [r4, #20]
	.loc 1 262 5 is_stmt 1 view .LVU226
	.loc 1 262 8 is_stmt 0 view .LVU227
	ldr	r2, [r4, #20]
	.loc 1 266 14 view .LVU228
	movs	r0, #0
	.loc 1 262 19 view .LVU229
	bic	r2, r2, #1
	str	r2, [r4, #20]
	.loc 1 266 5 is_stmt 1 view .LVU230
	.loc 1 266 14 is_stmt 0 view .LVU231
	str	r0, [r3]
	.loc 1 287 5 is_stmt 1 view .LVU232
	.loc 1 287 9 is_stmt 0 view .LVU233
	ldr	r2, [r3]
	.loc 1 287 14 view .LVU234
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 288 5 is_stmt 1 view .LVU235
	.loc 1 288 9 is_stmt 0 view .LVU236
	ldr	r2, [r3]
	.loc 1 288 14 view .LVU237
	bic	r2, r2, #64
	str	r2, [r3]
	.loc 1 289 5 is_stmt 1 view .LVU238
	.loc 1 289 9 is_stmt 0 view .LVU239
	ldr	r2, [r3]
	.loc 1 289 14 view .LVU240
	orr	r2, r2, #32
	str	r2, [r3]
	.loc 1 293 5 is_stmt 1 view .LVU241
	.loc 1 293 9 is_stmt 0 view .LVU242
	ldr	r2, [r3]
	.loc 1 293 14 view .LVU243
	bic	r2, r2, #2
	str	r2, [r3]
	.loc 1 296 5 is_stmt 1 view .LVU244
	.loc 1 296 9 is_stmt 0 view .LVU245
	ldr	r2, [r3]
	.loc 1 296 14 view .LVU246
	orr	r2, r2, #16384
	str	r2, [r3]
	.loc 1 297 1 view .LVU247
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.L9:
	.align	2
.L8:
	.word	1073887232
	.word	1073872896
	.word	.LC0
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1342504960
	.cfi_endproc
.LFE111:
	.size	DCMI_Init_OV7670_continuous_mode, .-DCMI_Init_OV7670_continuous_mode
	.align	1
	.p2align 2,,3
	.global	DCMI_Init_OV7670_Snapshot
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init_OV7670_Snapshot, %function
DCMI_Init_OV7670_Snapshot:
.LFB112:
	.loc 1 336 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 338 5 view .LVU249
	.loc 1 338 8 is_stmt 0 view .LVU250
	ldr	r2, .L12
	.loc 1 342 10 view .LVU251
	ldr	r3, .L12+4
	.loc 1 338 8 view .LVU252
	ldr	r1, [r2, #48]
	.loc 1 350 10 view .LVU253
	ldr	r0, .L12+8
	.loc 1 338 18 view .LVU254
	orr	r1, r1, #31
	.loc 1 336 1 view .LVU255
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 338 18 view .LVU256
	str	r1, [r2, #48]
	.loc 1 342 5 is_stmt 1 view .LVU257
	.loc 1 342 10 is_stmt 0 view .LVU258
	ldr	r1, [r3]
	.loc 1 342 18 view .LVU259
	bic	r1, r1, #3932160
	bic	r1, r1, #13056
	str	r1, [r3]
	.loc 1 343 5 is_stmt 1 view .LVU260
	.loc 1 343 10 is_stmt 0 view .LVU261
	ldr	r1, [r3]
	.loc 1 343 18 view .LVU262
	orr	r1, r1, #2621440
	orr	r1, r1, #8704
	str	r1, [r3]
	.loc 1 344 5 is_stmt 1 view .LVU263
	.loc 1 344 15 is_stmt 0 view .LVU264
	ldr	r1, [r3, #36]
	.loc 1 344 19 view .LVU265
	bic	r1, r1, #4080
	str	r1, [r3, #36]
	.loc 1 345 5 is_stmt 1 view .LVU266
	.loc 1 345 15 is_stmt 0 view .LVU267
	ldr	r1, [r3, #36]
	.loc 1 345 19 view .LVU268
	orr	r1, r1, #3536
	str	r1, [r3, #36]
	.loc 1 346 5 is_stmt 1 view .LVU269
	.loc 1 346 15 is_stmt 0 view .LVU270
	ldr	r1, [r3, #32]
	.loc 1 346 19 view .LVU271
	bic	r1, r1, #251658240
	bic	r1, r1, #983040
	str	r1, [r3, #32]
	.loc 1 347 5 is_stmt 1 view .LVU272
	.loc 1 347 15 is_stmt 0 view .LVU273
	ldr	r1, [r3, #32]
	.loc 1 347 19 view .LVU274
	orr	r1, r1, #218103808
	orr	r1, r1, #851968
	str	r1, [r3, #32]
	.loc 1 350 5 is_stmt 1 view .LVU275
	.loc 1 350 10 is_stmt 0 view .LVU276
	ldr	r3, [r0]
	.loc 1 356 10 view .LVU277
	ldr	r1, .L12+12
	.loc 1 350 18 view .LVU278
	bic	r3, r3, #49152
	str	r3, [r0]
	.loc 1 351 5 is_stmt 1 view .LVU279
	.loc 1 351 10 is_stmt 0 view .LVU280
	ldr	r3, [r0]
	.loc 1 351 18 view .LVU281
	orr	r3, r3, #32768
	str	r3, [r0]
	.loc 1 352 5 is_stmt 1 view .LVU282
	.loc 1 352 15 is_stmt 0 view .LVU283
	ldr	r3, [r0, #32]
	.loc 1 352 19 view .LVU284
	bic	r3, r3, #-268435456
	str	r3, [r0, #32]
	.loc 1 353 5 is_stmt 1 view .LVU285
	.loc 1 353 15 is_stmt 0 view .LVU286
	ldr	r3, [r0, #32]
	.loc 1 353 19 view .LVU287
	orr	r3, r3, #-805306368
	str	r3, [r0, #32]
	.loc 1 356 5 is_stmt 1 view .LVU288
	.loc 1 356 10 is_stmt 0 view .LVU289
	ldr	r0, [r1]
	.loc 1 362 10 view .LVU290
	ldr	r3, .L12+16
	.loc 1 356 18 view .LVU291
	bic	r0, r0, #983040
	str	r0, [r1]
	.loc 1 357 5 is_stmt 1 view .LVU292
	.loc 1 357 10 is_stmt 0 view .LVU293
	ldr	r0, [r1]
	.loc 1 357 18 view .LVU294
	orr	r0, r0, #655360
	str	r0, [r1]
	.loc 1 358 5 is_stmt 1 view .LVU295
	.loc 1 358 15 is_stmt 0 view .LVU296
	ldr	r0, [r1, #36]
	.loc 1 358 19 view .LVU297
	bic	r0, r0, #255
	str	r0, [r1, #36]
	.loc 1 359 5 is_stmt 1 view .LVU298
	.loc 1 359 15 is_stmt 0 view .LVU299
	ldr	r0, [r1, #36]
	.loc 1 359 19 view .LVU300
	orr	r0, r0, #221
	str	r0, [r1, #36]
	.loc 1 362 5 is_stmt 1 view .LVU301
	.loc 1 362 10 is_stmt 0 view .LVU302
	ldr	r0, [r3]
	.loc 1 362 18 view .LVU303
	bic	r0, r0, #192
	str	r0, [r3]
	.loc 1 363 5 is_stmt 1 view .LVU304
	.loc 1 363 10 is_stmt 0 view .LVU305
	ldr	r0, [r3]
	.loc 1 363 18 view .LVU306
	orr	r0, r0, #128
	str	r0, [r3]
	.loc 1 364 5 is_stmt 1 view .LVU307
	.loc 1 364 15 is_stmt 0 view .LVU308
	ldr	r0, [r3, #32]
	.loc 1 364 19 view .LVU309
	bic	r0, r0, #61440
	str	r0, [r3, #32]
	.loc 1 365 5 is_stmt 1 view .LVU310
	.loc 1 365 15 is_stmt 0 view .LVU311
	ldr	r0, [r3, #32]
	.loc 1 365 19 view .LVU312
	orr	r0, r0, #53248
	str	r0, [r3, #32]
	.loc 1 368 5 is_stmt 1 view .LVU313
	.loc 1 368 10 is_stmt 0 view .LVU314
	ldr	r0, [r1, #2048]
	.loc 1 381 14 view .LVU315
	ldr	r3, .L12+20
	.loc 1 368 18 view .LVU316
	bic	r0, r0, #16128
	str	r0, [r1, #2048]
	.loc 1 369 5 is_stmt 1 view .LVU317
	.loc 1 369 10 is_stmt 0 view .LVU318
	ldr	r0, [r1, #2048]
	.loc 1 369 18 view .LVU319
	orr	r0, r0, #10752
	str	r0, [r1, #2048]
	.loc 1 370 5 is_stmt 1 view .LVU320
	.loc 1 370 15 is_stmt 0 view .LVU321
	ldr	r0, [r1, #2080]
	.loc 1 370 19 view .LVU322
	bic	r0, r0, #267386880
	bic	r0, r0, #983040
	str	r0, [r1, #2080]
	.loc 1 371 5 is_stmt 1 view .LVU323
	.loc 1 371 15 is_stmt 0 view .LVU324
	ldr	r0, [r1, #2080]
	.loc 1 371 19 view .LVU325
	orr	r0, r0, #231735296
	orr	r0, r0, #851968
	str	r0, [r1, #2080]
	.loc 1 374 5 is_stmt 1 view .LVU326
	.loc 1 374 8 is_stmt 0 view .LVU327
	ldr	r1, [r2, #52]
	.loc 1 374 18 view .LVU328
	orr	r1, r1, #1
	str	r1, [r2, #52]
	.loc 1 377 5 is_stmt 1 view .LVU329
	.loc 1 377 8 is_stmt 0 view .LVU330
	ldr	r1, [r2, #20]
	.loc 1 377 19 view .LVU331
	orr	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 378 5 is_stmt 1 view .LVU332
	.loc 1 378 8 is_stmt 0 view .LVU333
	ldr	r1, [r2, #20]
	.loc 1 381 14 view .LVU334
	movs	r4, #0
	.loc 1 378 19 view .LVU335
	bic	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 381 5 is_stmt 1 view .LVU336
	.loc 1 381 14 is_stmt 0 view .LVU337
	str	r4, [r3]
	.loc 1 382 5 is_stmt 1 view .LVU338
	.loc 1 382 9 is_stmt 0 view .LVU339
	ldr	r2, [r3]
	.loc 1 387 1 view .LVU340
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 382 14 view .LVU341
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 383 5 is_stmt 1 view .LVU342
	.loc 1 383 9 is_stmt 0 view .LVU343
	ldr	r2, [r3]
	.loc 1 383 14 view .LVU344
	orr	r2, r2, #64
	str	r2, [r3]
	.loc 1 384 5 is_stmt 1 view .LVU345
	.loc 1 384 9 is_stmt 0 view .LVU346
	ldr	r2, [r3]
	.loc 1 384 14 view .LVU347
	orr	r2, r2, #32
	str	r2, [r3]
	.loc 1 385 5 is_stmt 1 view .LVU348
	.loc 1 385 9 is_stmt 0 view .LVU349
	ldr	r2, [r3]
	.loc 1 385 14 view .LVU350
	orr	r2, r2, #2
	str	r2, [r3]
	.loc 1 387 1 view .LVU351
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073887232
	.word	1073872896
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1342504960
	.cfi_endproc
.LFE112:
	.size	DCMI_Init_OV7670_Snapshot, .-DCMI_Init_OV7670_Snapshot
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"=== Start Frame Capture Polling ===\012\000"
	.align	2
.LC2:
	.ascii	"Timeout waiting VSYNC HIGH!\012\000"
	.align	2
.LC3:
	.ascii	"VSYNC HIGH detected, frame started!\012\000"
	.align	2
.LC4:
	.ascii	"Captured %lu pixels\012\000"
	.align	2
.LC5:
	.ascii	"=== Frame Capture Polling End ===\012\000"
	.align	2
.LC6:
	.ascii	"Timeout while capturing frame!\012\000"
	.align	2
.LC7:
	.ascii	"Prvih 10 pixela: \000"
	.align	2
.LC8:
	.ascii	"0x%xb \000"
	.align	2
.LC9:
	.ascii	"\012\000"
	.align	2
.LC10:
	.ascii	"Zadnjih 10 pixela: \000"
	.align	2
.LC11:
	.ascii	"Ukupno o\304\215itanih pixela: %d\012\000"
	.align	2
.LC12:
	.ascii	"Frame buffer je prazan!\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_CaptureFrame_DebugPolling
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CaptureFrame_DebugPolling, %function
DCMI_CaptureFrame_DebugPolling:
.LFB113:
	.loc 1 428 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 429 5 view .LVU353
	.loc 1 430 5 view .LVU354
	.loc 1 431 5 view .LVU355
.LVL2:
	.loc 1 432 5 view .LVU356
	.loc 1 434 5 view .LVU357
	.loc 1 428 1 is_stmt 0 view .LVU358
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 434 5 view .LVU359
	ldr	r0, .L66
	bl	printUSART2
.LVL3:
	.loc 1 437 5 is_stmt 1 view .LVU360
	.loc 1 438 5 view .LVU361
	.loc 1 438 37 view .LVU362
	.loc 1 438 19 is_stmt 0 view .LVU363
	ldr	r1, .L66+4
	ldr	r3, [r1, #16]
	.loc 1 438 37 view .LVU364
	lsls	r5, r3, #24
	bmi	.L15
	.loc 1 438 47 view .LVU365
	ldr	r3, .L66+8
	b	.L17
.LVL4:
.L58:
	.loc 1 438 37 discriminator 2 view .LVU366
	subs	r3, r3, #1
.LVL5:
	.loc 1 438 37 discriminator 2 view .LVU367
	bcc	.L15
.LVL6:
.L17:
	.loc 1 438 51 is_stmt 1 view .LVU368
.LBB9:
.LBI9:
	.file 2 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h"
	.loc 2 269 57 view .LVU369
.LBB10:
	.loc 2 271 3 view .LVU370
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 is_stmt 0 view .LVU371
	.thumb
	.syntax unified
.LBE10:
.LBE9:
	.loc 1 438 37 is_stmt 1 view .LVU372
	.loc 1 438 19 is_stmt 0 view .LVU373
	ldr	r2, [r1, #16]
	.loc 1 438 37 view .LVU374
	lsls	r4, r2, #24
	bpl	.L58
	.loc 1 439 5 is_stmt 1 view .LVU375
	.loc 1 439 7 is_stmt 0 view .LVU376
	cmp	r3, #0
	beq	.L59
.LVL7:
.L15:
	.loc 1 441 5 is_stmt 1 view .LVU377
	.loc 1 445 18 is_stmt 0 view .LVU378
	ldr	r6, .L66+4
	.loc 1 441 5 view .LVU379
	ldr	r0, .L66+12
	bl	printUSART2
.LVL8:
	.loc 1 444 5 is_stmt 1 view .LVU380
	.loc 1 445 5 view .LVU381
	.loc 1 445 49 view .LVU382
	.loc 1 445 18 is_stmt 0 view .LVU383
	ldr	r1, [r6, #16]
	.loc 1 445 49 view .LVU384
	ands	r1, r1, #128
	beq	.L18
	.loc 1 445 46 view .LVU385
	ldr	r3, .L66+16
	.loc 1 448 23 view .LVU386
	ldr	r2, .L66+20
	.loc 1 453 25 view .LVU387
	ldr	r8, .L66+72
	.loc 1 454 25 view .LVU388
	ldr	r7, .L66+24
	.loc 1 455 25 view .LVU389
	ldr	lr, .L66+76
	.loc 1 458 29 view .LVU390
	ldr	ip, .L66+68
	.loc 1 431 14 view .LVU391
	movs	r4, #0
	b	.L20
.LVL9:
.L60:
	.loc 1 448 39 discriminator 1 view .LVU392
	subs	r3, r3, #1
.LVL10:
	.loc 1 448 39 discriminator 1 view .LVU393
	bcc	.L21
.LVL11:
.L20:
	.loc 1 448 39 is_stmt 1 discriminator 2 view .LVU394
	.loc 1 448 23 is_stmt 0 discriminator 2 view .LVU395
	ldr	r0, [r2, #16]
	.loc 1 448 39 discriminator 2 view .LVU396
	lsls	r0, r0, #25
	bpl	.L60
	.loc 1 449 9 is_stmt 1 view .LVU397
	.loc 1 449 11 is_stmt 0 view .LVU398
	cmp	r3, #0
	beq	.L22
.LVL12:
.L21:
	.loc 1 452 9 is_stmt 1 view .LVU399
	.loc 1 452 25 is_stmt 0 view .LVU400
	ldr	r0, [r2, #16]
	.loc 1 453 25 view .LVU401
	ldr	r1, [r8, #16]
	.loc 1 454 25 view .LVU402
	ldr	r5, [r7, #16]
	.loc 1 455 25 view .LVU403
	ldr	r5, [lr, #16]
	.loc 1 453 50 view .LVU404
	lsrs	r1, r1, #6
	.loc 1 453 56 view .LVU405
	and	r1, r1, #12
	.loc 1 452 16 view .LVU406
	ubfx	r0, r0, #9, #2
.LVL13:
	.loc 1 453 9 is_stmt 1 view .LVU407
	.loc 1 453 15 is_stmt 0 view .LVU408
	orrs	r0, r0, r1
.LVL14:
	.loc 1 454 9 is_stmt 1 view .LVU409
	.loc 1 455 9 view .LVU410
	.loc 1 458 9 view .LVU411
	.loc 1 455 63 is_stmt 0 view .LVU412
	and	r1, r5, #96
	.loc 1 458 29 view .LVU413
	orrs	r0, r0, r1
.LVL15:
	.loc 1 458 29 view .LVU414
	strh	r0, [ip, r4, lsl #1]	@ movhi
	mov	r5, ip
	.loc 1 458 25 view .LVU415
	adds	r4, r4, #1
.LVL16:
	.loc 1 461 9 is_stmt 1 view .LVU416
	.loc 1 461 15 is_stmt 0 view .LVU417
	b	.L24
.LVL17:
.L62:
	.loc 1 461 38 discriminator 1 view .LVU418
	cmp	r3, #0
	beq	.L61
	mov	r3, r0
.LVL18:
.L24:
	.loc 1 461 38 is_stmt 1 discriminator 2 view .LVU419
	.loc 1 461 22 is_stmt 0 discriminator 2 view .LVU420
	ldr	r1, [r2, #16]
	.loc 1 461 38 discriminator 2 view .LVU421
	lsls	r1, r1, #25
	.loc 1 461 48 discriminator 2 view .LVU422
	add	r0, r3, #-1
.LVL19:
	.loc 1 461 38 discriminator 2 view .LVU423
	bmi	.L62
.LVL20:
	.loc 1 445 49 is_stmt 1 view .LVU424
	.loc 1 445 18 is_stmt 0 view .LVU425
	ldr	r1, [r6, #16]
	.loc 1 445 49 view .LVU426
	lsls	r1, r1, #24
	bpl	.L26
	.loc 1 445 46 discriminator 1 view .LVU427
	subs	r1, r3, #1
.LVL21:
	.loc 1 445 36 discriminator 1 view .LVU428
	cbz	r3, .L56
	.loc 1 445 46 view .LVU429
	mov	r3, r1
.LVL22:
.L37:
	.loc 1 445 49 discriminator 2 view .LVU430
	cmp	r4, #19200
	bne	.L20
.L26:
	.loc 1 464 5 is_stmt 1 view .LVU431
	.loc 1 464 7 is_stmt 0 view .LVU432
	cmp	r3, #0
	beq	.L22
.LVL23:
.L56:
	.loc 1 466 5 is_stmt 1 view .LVU433
	ldr	r0, .L66+28
	mov	r1, r4
	bl	printUSART2
.LVL24:
	.loc 1 467 5 view .LVU434
	ldr	r0, .L66+32
	bl	printUSART2
.LVL25:
	.loc 1 473 1 view .LVU435
	ldr	r0, .L66+32
	bl	printUSART2
.LVL26:
	.loc 1 475 1 view .LVU436
.L35:
	.loc 1 476 5 view .LVU437
	ldr	r0, .L66+36
.LBB11:
	.loc 1 478 9 is_stmt 0 view .LVU438
	ldr	r7, .L66+40
.LBE11:
	.loc 1 476 5 view .LVU439
	bl	printUSART2
.LVL27:
	.loc 1 477 5 is_stmt 1 view .LVU440
.LBB12:
	.loc 1 477 10 view .LVU441
	.loc 1 477 28 view .LVU442
	.loc 1 477 14 is_stmt 0 view .LVU443
	movs	r6, #0
	b	.L31
.LVL28:
.L64:
	.loc 1 477 28 discriminator 3 view .LVU444
	cmp	r6, r4
	beq	.L63
.LVL29:
.L31:
	.loc 1 478 9 is_stmt 1 discriminator 4 view .LVU445
	.loc 1 478 43 is_stmt 0 discriminator 4 view .LVU446
	ldrh	r1, [r5, r6, lsl #1]
	.loc 1 478 9 discriminator 4 view .LVU447
	mov	r0, r7
	uxth	r1, r1
	.loc 1 477 41 discriminator 4 view .LVU448
	adds	r6, r6, #1
.LVL30:
	.loc 1 478 9 discriminator 4 view .LVU449
	bl	printUSART2
.LVL31:
	.loc 1 477 41 is_stmt 1 discriminator 4 view .LVU450
	.loc 1 477 28 discriminator 4 view .LVU451
	.loc 1 477 28 is_stmt 0 discriminator 4 view .LVU452
	cmp	r6, #10
	bne	.L64
.LBE12:
	.loc 1 480 5 is_stmt 1 view .LVU453
	ldr	r0, .L66+44
	bl	printUSART2
.LVL32:
	.loc 1 482 5 view .LVU454
	ldr	r0, .L66+48
	bl	printUSART2
.LVL33:
	.loc 1 483 5 view .LVU455
.LBB13:
	.loc 1 483 10 view .LVU456
	.loc 1 483 39 is_stmt 0 view .LVU457
	cmp	r4, #10
	mov	r6, r4
.LVL34:
	.loc 1 483 39 view .LVU458
	it	cc
	movcc	r6, #10
	subs	r6, r6, #10
.LVL35:
	.loc 1 483 47 is_stmt 1 view .LVU459
	cmp	r6, r4
	bcs	.L33
.LVL36:
.L32:
	.loc 1 484 9 is_stmt 0 view .LVU460
	ldr	r7, .L66+40
.L34:
.LVL37:
	.loc 1 484 9 is_stmt 1 discriminator 3 view .LVU461
	.loc 1 484 43 is_stmt 0 discriminator 3 view .LVU462
	ldrh	r1, [r5, r6, lsl #1]
	.loc 1 484 9 discriminator 3 view .LVU463
	mov	r0, r7
	uxth	r1, r1
	.loc 1 483 55 discriminator 3 view .LVU464
	adds	r6, r6, #1
.LVL38:
	.loc 1 484 9 discriminator 3 view .LVU465
	bl	printUSART2
.LVL39:
	.loc 1 483 55 is_stmt 1 discriminator 3 view .LVU466
	.loc 1 483 47 discriminator 3 view .LVU467
	cmp	r6, r4
	bne	.L34
.L33:
	.loc 1 483 47 is_stmt 0 discriminator 3 view .LVU468
.LBE13:
	.loc 1 486 5 is_stmt 1 view .LVU469
	ldr	r0, .L66+44
	bl	printUSART2
.LVL40:
	.loc 1 488 5 view .LVU470
	mov	r1, r4
	ldr	r0, .L66+52
	.loc 1 497 1 is_stmt 0 view .LVU471
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL41:
	.loc 1 488 5 view .LVU472
	b	printUSART2
.LVL42:
.L61:
	.cfi_restore_state
	.loc 1 445 49 is_stmt 1 view .LVU473
	.loc 1 445 18 is_stmt 0 view .LVU474
	ldr	r3, [r6, #16]
	.loc 1 445 49 view .LVU475
	lsls	r3, r3, #24
	bpl	.L56
	.loc 1 445 46 view .LVU476
	mvn	r3, #1
	b	.L37
.LVL43:
.L59:
	.loc 1 439 24 is_stmt 1 discriminator 1 view .LVU477
	.loc 1 497 1 is_stmt 0 discriminator 1 view .LVU478
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 439 24 discriminator 1 view .LVU479
	ldr	r0, .L66+56
	b	printUSART2
.LVL44:
.L22:
	.cfi_restore_state
	.loc 1 464 22 is_stmt 1 discriminator 1 view .LVU480
	ldr	r0, .L66+60
	bl	printUSART2
.LVL45:
	.loc 1 466 5 discriminator 1 view .LVU481
	ldr	r0, .L66+28
	mov	r1, r4
	bl	printUSART2
.LVL46:
	.loc 1 467 5 discriminator 1 view .LVU482
	ldr	r0, .L66+32
	bl	printUSART2
.LVL47:
	.loc 1 473 1 discriminator 1 view .LVU483
	ldr	r0, .L66+32
	bl	printUSART2
.LVL48:
	.loc 1 475 1 discriminator 1 view .LVU484
	.loc 1 475 4 is_stmt 0 discriminator 1 view .LVU485
	cbnz	r4, .L65
.LVL49:
.L29:
	.loc 1 491 5 is_stmt 1 view .LVU486
	.loc 1 497 1 is_stmt 0 view .LVU487
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 491 5 view .LVU488
	ldr	r0, .L66+64
	b	printUSART2
.LVL50:
.L63:
	.cfi_restore_state
	.loc 1 480 5 is_stmt 1 view .LVU489
	ldr	r0, .L66+44
	bl	printUSART2
.LVL51:
	.loc 1 482 5 view .LVU490
	ldr	r0, .L66+48
	bl	printUSART2
.LVL52:
	.loc 1 483 5 view .LVU491
.LBB14:
	.loc 1 483 10 view .LVU492
	.loc 1 483 47 view .LVU493
	.loc 1 483 14 is_stmt 0 view .LVU494
	movs	r6, #0
.LVL53:
	.loc 1 483 14 view .LVU495
	b	.L32
.LVL54:
.L18:
	.loc 1 483 14 view .LVU496
.LBE14:
	.loc 1 464 5 is_stmt 1 view .LVU497
	.loc 1 466 5 view .LVU498
	ldr	r0, .L66+28
	bl	printUSART2
.LVL55:
	.loc 1 467 5 view .LVU499
	ldr	r0, .L66+32
	bl	printUSART2
.LVL56:
	.loc 1 473 1 view .LVU500
	ldr	r0, .L66+32
	bl	printUSART2
.LVL57:
	.loc 1 475 1 view .LVU501
	b	.L29
.LVL58:
.L65:
	.loc 1 475 1 is_stmt 0 view .LVU502
	ldr	r5, .L66+68
	b	.L35
.L67:
	.align	2
.L66:
	.word	.LC1
	.word	1073873920
	.word	999999
	.word	.LC3
	.word	9999999
	.word	1073872896
	.word	1073875968
	.word	.LC4
	.word	.LC5
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC2
	.word	.LC6
	.word	.LC12
	.word	frame_buffer
	.word	1073874944
	.word	1073876992
	.cfi_endproc
.LFE113:
	.size	DCMI_CaptureFrame_DebugPolling, .-DCMI_CaptureFrame_DebugPolling
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"Dodje do while petlje\012\000"
	.align	2
.LC14:
	.ascii	"MISR=0x%xb, CR=0x%xb\012\000"
	.align	2
.LC15:
	.ascii	"ERROR: Capture timeout!\012\000"
	.align	2
.LC16:
	.ascii	"Izadje iz while petlje, timeout je %d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_CaptureFrame
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_CaptureFrame, %function
DCMI_CaptureFrame:
.LFB114:
	.loc 1 500 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 502 5 view .LVU504
	.loc 1 500 1 is_stmt 0 view .LVU505
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 502 15 view .LVU506
	ldr	r6, .L82
	.loc 1 507 5 view .LVU507
	ldr	r0, .L82+4
	.loc 1 502 15 view .LVU508
	movs	r3, #31
	str	r3, [r6, #20]
	.loc 1 505 5 is_stmt 1 view .LVU509
	.loc 1 505 9 is_stmt 0 view .LVU510
	ldr	r3, [r6]
	.loc 1 505 14 view .LVU511
	orr	r3, r3, #1
	str	r3, [r6]
	.loc 1 507 5 is_stmt 1 view .LVU512
	bl	printUSART2
.LVL59:
	.loc 1 509 5 view .LVU513
	.loc 1 510 5 view .LVU514
	.loc 1 510 48 view .LVU515
	.loc 1 510 18 is_stmt 0 view .LVU516
	ldr	r3, [r6, #16]
	.loc 1 510 48 view .LVU517
	lsls	r2, r3, #31
	bmi	.L76
	.loc 1 510 58 view .LVU518
	ldr	r4, .L82+8
	ldr	r5, .L82+12
.LBB15:
	.loc 1 513 11 view .LVU519
	ldr	r7, .L82+16
	.loc 1 515 13 view .LVU520
	ldr	r8, .L82+32
	b	.L73
.LVL60:
.L79:
	.loc 1 517 9 is_stmt 1 view .LVU521
.LBB16:
.LBI16:
	.loc 2 269 57 view .LVU522
.LBB17:
	.loc 2 271 3 view .LVU523
.LBE17:
.LBE16:
	.loc 1 513 19 is_stmt 0 view .LVU524
	str	r3, [r5]
.LBB20:
.LBB18:
	.loc 2 271 3 view .LVU525
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 view .LVU526
	.thumb
	.syntax unified
.LBE18:
.LBE20:
.LBE15:
	.loc 1 510 48 is_stmt 1 view .LVU527
	.loc 1 510 18 is_stmt 0 view .LVU528
	ldr	r3, [r6, #16]
	.loc 1 510 48 view .LVU529
	lsls	r3, r3, #31
	bmi	.L72
.L80:
	.loc 1 510 48 discriminator 1 view .LVU530
	subs	r4, r4, #1
.LVL61:
	.loc 1 510 48 discriminator 1 view .LVU531
	bcc	.L69
.LVL62:
.L73:
.LBB22:
	.loc 1 512 9 is_stmt 1 view .LVU532
	.loc 1 513 9 view .LVU533
	.loc 1 513 19 is_stmt 0 view .LVU534
	ldr	r3, [r5]
	.loc 1 513 11 view .LVU535
	cmp	r3, r7
	.loc 1 513 19 view .LVU536
	add	r3, r3, #1
	.loc 1 513 11 view .LVU537
	bls	.L79
	.loc 1 514 13 is_stmt 1 view .LVU538
	.loc 1 514 21 is_stmt 0 view .LVU539
	movs	r3, #0
	str	r3, [r5]
	.loc 1 515 13 is_stmt 1 view .LVU540
	.loc 1 515 55 is_stmt 0 view .LVU541
	ldr	r1, [r6, #16]
	.loc 1 515 67 view .LVU542
	ldr	r2, [r6]
	.loc 1 515 13 view .LVU543
	mov	r0, r8
	bl	printUSART2
.LVL63:
	.loc 1 517 9 is_stmt 1 view .LVU544
.LBB21:
	.loc 2 269 57 view .LVU545
.LBB19:
	.loc 2 271 3 view .LVU546
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 is_stmt 0 view .LVU547
	.thumb
	.syntax unified
.LBE19:
.LBE21:
.LBE22:
	.loc 1 510 48 is_stmt 1 view .LVU548
	.loc 1 510 18 is_stmt 0 view .LVU549
	ldr	r3, [r6, #16]
	.loc 1 510 48 view .LVU550
	lsls	r3, r3, #31
	bpl	.L80
.L72:
	.loc 1 520 5 is_stmt 1 view .LVU551
	.loc 1 520 7 is_stmt 0 view .LVU552
	cbz	r4, .L81
.LVL64:
.L69:
	.loc 1 523 5 is_stmt 1 view .LVU553
	mov	r1, r4
	ldr	r0, .L82+20
	.loc 1 524 1 is_stmt 0 view .LVU554
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 523 5 view .LVU555
	b	printUSART2
.LVL65:
.L81:
	.cfi_restore_state
	.loc 1 521 9 is_stmt 1 view .LVU556
	ldr	r0, .L82+24
	bl	printUSART2
.LVL66:
	.loc 1 523 5 view .LVU557
	mov	r1, r4
	ldr	r0, .L82+20
	.loc 1 524 1 is_stmt 0 view .LVU558
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 523 5 view .LVU559
	b	printUSART2
.LVL67:
.L76:
	.cfi_restore_state
	.loc 1 509 14 view .LVU560
	ldr	r4, .L82+28
	b	.L69
.L83:
	.align	2
.L82:
	.word	1342504960
	.word	.LC13
	.word	999999
	.word	.LANCHOR0
	.word	100000
	.word	.LC16
	.word	.LC15
	.word	1000000
	.word	.LC14
	.cfi_endproc
.LFE114:
	.size	DCMI_CaptureFrame, .-DCMI_CaptureFrame
	.section	.rodata.str1.4
	.align	2
.LC17:
	.ascii	"PCLK HIGH\012\000"
	.align	2
.LC18:
	.ascii	"PCLK LOW\012\000"
	.align	2
.LC19:
	.ascii	"HSYNC HIGH\012\000"
	.align	2
.LC20:
	.ascii	"HSYNC LOW\012\000"
	.align	2
.LC21:
	.ascii	"VSYNC HIGH\012\000"
	.align	2
.LC22:
	.ascii	"VSYNC LOW\012\000"
	.align	2
.LC23:
	.ascii	"D0 HIGH\012\000"
	.align	2
.LC24:
	.ascii	"D0 LOW\012\000"
	.align	2
.LC25:
	.ascii	"D1 HIGH\012\000"
	.align	2
.LC26:
	.ascii	"D1 LOW\012\000"
	.align	2
.LC27:
	.ascii	"D2 HIGH\012\000"
	.align	2
.LC28:
	.ascii	"D2 LOW\012\000"
	.align	2
.LC29:
	.ascii	"D3 HIGH\012\000"
	.align	2
.LC30:
	.ascii	"D3 LOW\012\000"
	.align	2
.LC31:
	.ascii	"D5 HIGH\012\000"
	.align	2
.LC32:
	.ascii	"D5 LOW\012\000"
	.align	2
.LC33:
	.ascii	"D4 HIGH\012\000"
	.align	2
.LC34:
	.ascii	"D4 LOW\012\000"
	.align	2
.LC35:
	.ascii	"D6 HIGH\012\000"
	.align	2
.LC36:
	.ascii	"D6 LOW\012\000"
	.align	2
.LC37:
	.ascii	"D7 HIGH\012\000"
	.align	2
.LC38:
	.ascii	"D7 LOW\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CheckPins
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CheckPins, %function
OV7670_CheckPins:
.LFB115:
	.loc 1 545 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 546 5 view .LVU562
	.loc 1 545 1 is_stmt 0 view .LVU563
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 546 14 view .LVU564
	ldr	r3, .L107
	ldr	r3, [r3, #16]
	.loc 1 546 8 view .LVU565
	lsls	r1, r3, #25
	.loc 1 546 38 is_stmt 1 view .LVU566
	ite	mi
	ldrmi	r0, .L107+4
	.loc 1 546 71 view .LVU567
	ldrpl	r0, .L107+8
	bl	printUSART2
.LVL68:
	.loc 1 547 5 view .LVU568
	.loc 1 547 14 is_stmt 0 view .LVU569
	ldr	r3, .L107
	ldr	r3, [r3, #16]
	.loc 1 547 8 view .LVU570
	lsls	r2, r3, #27
	.loc 1 547 38 is_stmt 1 view .LVU571
	ite	mi
	ldrmi	r0, .L107+12
	.loc 1 547 72 view .LVU572
	ldrpl	r0, .L107+16
	bl	printUSART2
.LVL69:
	.loc 1 548 5 view .LVU573
	.loc 1 548 14 is_stmt 0 view .LVU574
	ldr	r3, .L107+20
	ldr	r3, [r3, #16]
	.loc 1 548 8 view .LVU575
	lsls	r3, r3, #24
	.loc 1 548 38 is_stmt 1 view .LVU576
	ite	mi
	ldrmi	r0, .L107+24
	.loc 1 548 72 view .LVU577
	ldrpl	r0, .L107+28
	bl	printUSART2
.LVL70:
	.loc 1 550 5 view .LVU578
	.loc 1 550 14 is_stmt 0 view .LVU579
	ldr	r3, .L107
	ldr	r3, [r3, #16]
	.loc 1 550 8 view .LVU580
	lsls	r0, r3, #22
	.loc 1 550 38 is_stmt 1 view .LVU581
	ite	mi
	ldrmi	r0, .L107+32
	.loc 1 550 69 view .LVU582
	ldrpl	r0, .L107+36
	bl	printUSART2
.LVL71:
	.loc 1 551 5 view .LVU583
	.loc 1 551 14 is_stmt 0 view .LVU584
	ldr	r3, .L107
	ldr	r3, [r3, #16]
	.loc 1 551 8 view .LVU585
	lsls	r1, r3, #21
	.loc 1 551 39 is_stmt 1 view .LVU586
	ite	mi
	ldrmi	r0, .L107+40
	.loc 1 551 70 view .LVU587
	ldrpl	r0, .L107+44
	bl	printUSART2
.LVL72:
	.loc 1 552 5 view .LVU588
	.loc 1 552 14 is_stmt 0 view .LVU589
	ldr	r3, .L107+48
	ldr	r3, [r3, #16]
	.loc 1 552 8 view .LVU590
	lsls	r2, r3, #23
	.loc 1 552 38 is_stmt 1 view .LVU591
	ite	mi
	ldrmi	r0, .L107+52
	.loc 1 552 69 view .LVU592
	ldrpl	r0, .L107+56
	bl	printUSART2
.LVL73:
	.loc 1 553 5 view .LVU593
	.loc 1 553 14 is_stmt 0 view .LVU594
	ldr	r3, .L107+48
	ldr	r3, [r3, #16]
	.loc 1 553 8 view .LVU595
	lsls	r3, r3, #22
	.loc 1 553 38 is_stmt 1 view .LVU596
	ite	mi
	ldrmi	r0, .L107+60
	.loc 1 553 69 view .LVU597
	ldrpl	r0, .L107+64
	bl	printUSART2
.LVL74:
	.loc 1 554 5 view .LVU598
	.loc 1 554 14 is_stmt 0 view .LVU599
	ldr	r3, .L107+68
	ldr	r3, [r3, #16]
	.loc 1 554 8 view .LVU600
	lsls	r0, r3, #28
	.loc 1 554 38 is_stmt 1 view .LVU601
	ite	mi
	ldrmi	r0, .L107+72
	.loc 1 554 69 view .LVU602
	ldrpl	r0, .L107+76
	bl	printUSART2
.LVL75:
	.loc 1 555 5 view .LVU603
	.loc 1 555 14 is_stmt 0 view .LVU604
	ldr	r3, .L107+80
	ldr	r3, [r3, #16]
	.loc 1 555 8 view .LVU605
	lsls	r1, r3, #27
	.loc 1 555 38 is_stmt 1 view .LVU606
	ite	mi
	ldrmi	r0, .L107+84
	.loc 1 555 69 view .LVU607
	ldrpl	r0, .L107+88
	bl	printUSART2
.LVL76:
	.loc 1 556 5 view .LVU608
	.loc 1 556 14 is_stmt 0 view .LVU609
	ldr	r3, .L107+80
	ldr	r3, [r3, #16]
	.loc 1 556 8 view .LVU610
	lsls	r2, r3, #26
	.loc 1 556 38 is_stmt 1 view .LVU611
	ite	mi
	ldrmi	r0, .L107+92
	.loc 1 556 69 view .LVU612
	ldrpl	r0, .L107+96
	bl	printUSART2
.LVL77:
	.loc 1 557 5 view .LVU613
	.loc 1 557 14 is_stmt 0 view .LVU614
	ldr	r3, .L107+80
	ldr	r3, [r3, #16]
	.loc 1 557 8 view .LVU615
	lsls	r3, r3, #25
	bpl	.L105
	.loc 1 557 38 is_stmt 1 discriminator 1 view .LVU616
	.loc 1 558 1 is_stmt 0 discriminator 1 view .LVU617
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 557 38 discriminator 1 view .LVU618
	ldr	r0, .L107+100
	b	printUSART2
.LVL78:
.L105:
	.cfi_restore_state
	.loc 1 557 69 is_stmt 1 discriminator 2 view .LVU619
	.loc 1 558 1 is_stmt 0 discriminator 2 view .LVU620
	pop	{r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 557 69 discriminator 2 view .LVU621
	ldr	r0, .L107+104
	b	printUSART2
.LVL79:
.L108:
	.align	2
.L107:
	.word	1073872896
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	1073873920
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	1073874944
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	1073875968
	.word	.LC31
	.word	.LC32
	.word	1073876992
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.cfi_endproc
.LFE115:
	.size	OV7670_CheckPins, .-OV7670_CheckPins
	.section	.rodata.str1.4
	.align	2
.LC39:
	.ascii	"PCLK=%d, HSYNC=%d, VSYNC=%d, D0=%d, D1=%d, D2=%d, D"
	.ascii	"3=%d, D4=%d, D5=%d, D6=%d, D7=%d\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CheckPins_Fluctuation
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CheckPins_Fluctuation, %function
OV7670_CheckPins_Fluctuation:
.LVL80:
.LFB116:
	.loc 1 564 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 565 5 view .LVU623
	.loc 1 564 1 is_stmt 0 view .LVU624
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
	.loc 1 564 1 view .LVU625
	mov	r10, r0
	.loc 1 565 22 view .LVU626
	bl	getSYSTIMER_TIM7
.LVL81:
	.loc 1 573 19 view .LVU627
	ldr	r9, .L113+12
	.loc 1 575 19 view .LVU628
	ldr	r8, .L113+16
	.loc 1 565 22 view .LVU629
	str	r0, [sp, #36]
.LVL82:
	.loc 1 566 5 is_stmt 1 view .LVU630
	.loc 1 566 10 is_stmt 0 view .LVU631
	b	.L110
.LVL83:
.L111:
	.loc 1 576 19 view .LVU632
	ldr	ip, .L113+20
	.loc 1 570 19 view .LVU633
	ldr	r3, .L113
	.loc 1 568 19 view .LVU634
	ldr	r1, [r5, #16]
	.loc 1 569 19 view .LVU635
	ldr	r2, [r5, #16]
	.loc 1 570 19 view .LVU636
	ldr	r3, [r3, #16]
	.loc 1 571 19 view .LVU637
	ldr	r4, [r5, #16]
	.loc 1 572 19 view .LVU638
	ldr	r5, [r5, #16]
	.loc 1 573 19 view .LVU639
	ldr	r6, [r9, #16]
	.loc 1 574 19 view .LVU640
	ldr	r7, [r9, #16]
	.loc 1 575 19 view .LVU641
	ldr	r0, [r8, #16]
	.loc 1 576 19 view .LVU642
	ldr	lr, [ip, #16]
	.loc 1 577 19 view .LVU643
	ldr	fp, [r8, #16]
	.loc 1 578 19 view .LVU644
	ldr	ip, [r8, #16]
	.loc 1 567 9 view .LVU645
	ubfx	r0, r0, #4, #1
	ubfx	lr, lr, #3, #1
	ubfx	ip, ip, #6, #1
	ubfx	r7, r7, #9, #1
	ubfx	r6, r6, #8, #1
	ubfx	r5, r5, #10, #1
	ubfx	r4, r4, #9, #1
	ubfx	fp, fp, #5, #1
	str	r0, [sp, #16]
	strd	lr, fp, [sp, #20]
	ldr	r0, .L113+4
	str	ip, [sp, #28]
	strd	r6, r7, [sp, #8]
	strd	r4, r5, [sp]
	ubfx	r3, r3, #7, #1
	ubfx	r2, r2, #4, #1
	ubfx	r1, r1, #6, #1
	bl	printUSART2
.LVL84:
	.loc 1 580 9 is_stmt 1 view .LVU646
	movs	r0, #1
	bl	delay_ms
.LVL85:
.L110:
	.loc 1 566 35 view .LVU647
	.loc 1 566 11 is_stmt 0 view .LVU648
	bl	getSYSTIMER_TIM7
.LVL86:
	.loc 1 567 9 is_stmt 1 view .LVU649
	.loc 1 566 29 is_stmt 0 view .LVU650
	ldr	r3, [sp, #36]
	.loc 1 568 19 view .LVU651
	ldr	r5, .L113+8
	.loc 1 566 29 view .LVU652
	subs	r0, r0, r3
	.loc 1 566 35 view .LVU653
	cmp	r0, r10
	bcc	.L111
	.loc 1 582 1 view .LVU654
	add	sp, sp, #44
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL87:
.L114:
	.loc 1 582 1 view .LVU655
	.align	2
.L113:
	.word	1073873920
	.word	.LC39
	.word	1073872896
	.word	1073874944
	.word	1073876992
	.word	1073875968
	.cfi_endproc
.LFE116:
	.size	OV7670_CheckPins_Fluctuation, .-OV7670_CheckPins_Fluctuation
	.align	1
	.p2align 2,,3
	.global	get_pixel
	.syntax unified
	.thumb
	.thumb_func
	.type	get_pixel, %function
get_pixel:
.LVL88:
.LFB117:
	.loc 1 587 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 588 5 view .LVU657
	.loc 1 588 37 is_stmt 0 view .LVU658
	lsrs	r3, r1, #1
	.loc 1 588 14 view .LVU659
	ldr	r0, [r0, r3, lsl #2]
.LVL89:
	.loc 1 589 5 is_stmt 1 view .LVU660
	.loc 1 590 9 view .LVU661
	.loc 1 589 8 is_stmt 0 view .LVU662
	lsls	r3, r1, #31
	.loc 1 590 16 view .LVU663
	ite	mi
	lsrmi	r0, r0, #16
.LVL90:
	.loc 1 592 9 is_stmt 1 view .LVU664
	.loc 1 592 16 is_stmt 0 view .LVU665
	uxthpl	r0, r0
	.loc 1 594 1 view .LVU666
	bx	lr
	.cfi_endproc
.LFE117:
	.size	get_pixel, .-get_pixel
	.align	1
	.p2align 2,,3
	.global	DCMI_Init_OV7670_SnapshotOnly
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init_OV7670_SnapshotOnly, %function
DCMI_Init_OV7670_SnapshotOnly:
.LFB118:
	.loc 1 608 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 610 5 view .LVU668
	.loc 1 610 8 is_stmt 0 view .LVU669
	ldr	r2, .L119
	.loc 1 618 10 view .LVU670
	ldr	r3, .L119+4
	.loc 1 610 8 view .LVU671
	ldr	r1, [r2, #48]
	.loc 1 626 10 view .LVU672
	ldr	r0, .L119+8
	.loc 1 610 18 view .LVU673
	orr	r1, r1, #31
	str	r1, [r2, #48]
	.loc 1 618 5 is_stmt 1 view .LVU674
	.loc 1 618 10 is_stmt 0 view .LVU675
	ldr	r1, [r3]
	.loc 1 618 18 view .LVU676
	bic	r1, r1, #3932160
	bic	r1, r1, #13056
	str	r1, [r3]
	.loc 1 619 5 is_stmt 1 view .LVU677
	.loc 1 619 10 is_stmt 0 view .LVU678
	ldr	r1, [r3]
	.loc 1 619 18 view .LVU679
	orr	r1, r1, #2621440
	orr	r1, r1, #8704
	str	r1, [r3]
	.loc 1 620 5 is_stmt 1 view .LVU680
	.loc 1 620 15 is_stmt 0 view .LVU681
	ldr	r1, [r3, #36]
	.loc 1 620 19 view .LVU682
	bic	r1, r1, #4080
	str	r1, [r3, #36]
	.loc 1 621 5 is_stmt 1 view .LVU683
	.loc 1 621 15 is_stmt 0 view .LVU684
	ldr	r1, [r3, #36]
	.loc 1 621 19 view .LVU685
	orr	r1, r1, #3536
	str	r1, [r3, #36]
	.loc 1 622 5 is_stmt 1 view .LVU686
	.loc 1 622 15 is_stmt 0 view .LVU687
	ldr	r1, [r3, #32]
	.loc 1 622 19 view .LVU688
	bic	r1, r1, #251658240
	bic	r1, r1, #983040
	str	r1, [r3, #32]
	.loc 1 623 5 is_stmt 1 view .LVU689
	.loc 1 623 15 is_stmt 0 view .LVU690
	ldr	r1, [r3, #32]
	.loc 1 623 19 view .LVU691
	orr	r1, r1, #218103808
	orr	r1, r1, #851968
	str	r1, [r3, #32]
	.loc 1 626 5 is_stmt 1 view .LVU692
	.loc 1 626 10 is_stmt 0 view .LVU693
	ldr	r3, [r0]
	.loc 1 632 10 view .LVU694
	ldr	r1, .L119+12
	.loc 1 626 18 view .LVU695
	bic	r3, r3, #49152
	str	r3, [r0]
	.loc 1 627 5 is_stmt 1 view .LVU696
	.loc 1 627 10 is_stmt 0 view .LVU697
	ldr	r3, [r0]
	.loc 1 627 18 view .LVU698
	orr	r3, r3, #32768
	str	r3, [r0]
	.loc 1 628 5 is_stmt 1 view .LVU699
	.loc 1 628 15 is_stmt 0 view .LVU700
	ldr	r3, [r0, #32]
	.loc 1 628 19 view .LVU701
	bic	r3, r3, #-268435456
	str	r3, [r0, #32]
	.loc 1 629 5 is_stmt 1 view .LVU702
	.loc 1 629 15 is_stmt 0 view .LVU703
	ldr	r3, [r0, #32]
	.loc 1 629 19 view .LVU704
	orr	r3, r3, #-805306368
	str	r3, [r0, #32]
	.loc 1 632 5 is_stmt 1 view .LVU705
	.loc 1 632 10 is_stmt 0 view .LVU706
	ldr	r0, [r1]
	.loc 1 638 10 view .LVU707
	ldr	r3, .L119+16
	.loc 1 632 18 view .LVU708
	bic	r0, r0, #983040
	str	r0, [r1]
	.loc 1 633 5 is_stmt 1 view .LVU709
	.loc 1 633 10 is_stmt 0 view .LVU710
	ldr	r0, [r1]
	.loc 1 633 18 view .LVU711
	orr	r0, r0, #655360
	str	r0, [r1]
	.loc 1 634 5 is_stmt 1 view .LVU712
	.loc 1 634 15 is_stmt 0 view .LVU713
	ldr	r0, [r1, #36]
	.loc 1 634 19 view .LVU714
	bic	r0, r0, #255
	str	r0, [r1, #36]
	.loc 1 635 5 is_stmt 1 view .LVU715
	.loc 1 635 15 is_stmt 0 view .LVU716
	ldr	r0, [r1, #36]
	.loc 1 635 19 view .LVU717
	orr	r0, r0, #221
	str	r0, [r1, #36]
	.loc 1 638 5 is_stmt 1 view .LVU718
	.loc 1 638 10 is_stmt 0 view .LVU719
	ldr	r0, [r3]
	.loc 1 638 18 view .LVU720
	bic	r0, r0, #192
	str	r0, [r3]
	.loc 1 639 5 is_stmt 1 view .LVU721
	.loc 1 639 10 is_stmt 0 view .LVU722
	ldr	r0, [r3]
	.loc 1 639 18 view .LVU723
	orr	r0, r0, #128
	str	r0, [r3]
	.loc 1 640 5 is_stmt 1 view .LVU724
	.loc 1 640 15 is_stmt 0 view .LVU725
	ldr	r0, [r3, #32]
	.loc 1 640 19 view .LVU726
	bic	r0, r0, #61440
	str	r0, [r3, #32]
	.loc 1 641 5 is_stmt 1 view .LVU727
	.loc 1 641 15 is_stmt 0 view .LVU728
	ldr	r0, [r3, #32]
	.loc 1 641 19 view .LVU729
	orr	r0, r0, #53248
	str	r0, [r3, #32]
	.loc 1 644 5 is_stmt 1 view .LVU730
	.loc 1 644 10 is_stmt 0 view .LVU731
	ldr	r0, [r1, #2048]
	.loc 1 658 9 view .LVU732
	ldr	r3, .L119+20
	.loc 1 644 18 view .LVU733
	bic	r0, r0, #16128
	str	r0, [r1, #2048]
	.loc 1 645 5 is_stmt 1 view .LVU734
	.loc 1 645 10 is_stmt 0 view .LVU735
	ldr	r0, [r1, #2048]
	.loc 1 645 18 view .LVU736
	orr	r0, r0, #10752
	str	r0, [r1, #2048]
	.loc 1 646 5 is_stmt 1 view .LVU737
	.loc 1 646 15 is_stmt 0 view .LVU738
	ldr	r0, [r1, #2080]
	.loc 1 646 19 view .LVU739
	bic	r0, r0, #267386880
	bic	r0, r0, #983040
	str	r0, [r1, #2080]
	.loc 1 647 5 is_stmt 1 view .LVU740
	.loc 1 647 15 is_stmt 0 view .LVU741
	ldr	r0, [r1, #2080]
	.loc 1 647 19 view .LVU742
	orr	r0, r0, #231735296
	orr	r0, r0, #851968
	str	r0, [r1, #2080]
	.loc 1 650 5 is_stmt 1 view .LVU743
	.loc 1 650 8 is_stmt 0 view .LVU744
	ldr	r1, [r2, #52]
	.loc 1 650 18 view .LVU745
	orr	r1, r1, #1
	str	r1, [r2, #52]
	.loc 1 653 5 is_stmt 1 view .LVU746
	.loc 1 653 8 is_stmt 0 view .LVU747
	ldr	r1, [r2, #20]
	.loc 1 653 19 view .LVU748
	orr	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 654 5 is_stmt 1 view .LVU749
	.loc 1 654 8 is_stmt 0 view .LVU750
	ldr	r1, [r2, #20]
	.loc 1 654 19 view .LVU751
	bic	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 658 5 is_stmt 1 view .LVU752
	.loc 1 658 9 is_stmt 0 view .LVU753
	ldr	r2, [r3]
	.loc 1 658 14 view .LVU754
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 659 5 is_stmt 1 view .LVU755
	.loc 1 659 9 is_stmt 0 view .LVU756
	ldr	r2, [r3]
	.loc 1 659 14 view .LVU757
	bic	r2, r2, #32
	str	r2, [r3]
	.loc 1 660 5 is_stmt 1 view .LVU758
	.loc 1 660 9 is_stmt 0 view .LVU759
	ldr	r2, [r3]
	.loc 1 660 14 view .LVU760
	orr	r2, r2, #64
	str	r2, [r3]
	.loc 1 661 5 is_stmt 1 view .LVU761
	.loc 1 661 9 is_stmt 0 view .LVU762
	ldr	r2, [r3]
	.loc 1 661 14 view .LVU763
	orr	r2, r2, #2
	str	r2, [r3]
	.loc 1 662 5 is_stmt 1 view .LVU764
	.loc 1 662 9 is_stmt 0 view .LVU765
	ldr	r2, [r3]
	.loc 1 662 14 view .LVU766
	orr	r2, r2, #16384
	str	r2, [r3]
	.loc 1 665 1 view .LVU767
	bx	lr
.L120:
	.align	2
.L119:
	.word	1073887232
	.word	1073872896
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1342504960
	.cfi_endproc
.LFE118:
	.size	DCMI_Init_OV7670_SnapshotOnly, .-DCMI_Init_OV7670_SnapshotOnly
	.section	.rodata.str1.4
	.align	2
.LC40:
	.ascii	"ERROR: DMA timeout!\012\000"
	.align	2
.LC41:
	.ascii	"Snapshot zavr\305\241en, frame_buffer popunjen.\012"
	.ascii	"\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CaptureSnapshot
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CaptureSnapshot, %function
OV7670_CaptureSnapshot:
.LFB119:
	.loc 1 729 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 731 5 view .LVU769
	.loc 1 731 15 is_stmt 0 view .LVU770
	ldr	r3, .L128
	.loc 1 734 17 view .LVU771
	ldr	r2, .L128+4
	.loc 1 731 15 view .LVU772
	mov	r1, #-1
	str	r1, [r3, #20]
	.loc 1 734 5 is_stmt 1 view .LVU773
	.loc 1 734 17 is_stmt 0 view .LVU774
	ldr	r3, [r2, #40]
	.loc 1 734 22 view .LVU775
	bic	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 735 5 is_stmt 1 view .LVU776
.L122:
	.loc 1 735 11 discriminator 1 view .LVU777
	.loc 1 735 23 is_stmt 0 discriminator 1 view .LVU778
	ldr	r3, [r2, #40]
	.loc 1 735 11 discriminator 1 view .LVU779
	lsls	r1, r3, #31
	bmi	.L122
	.loc 1 738 5 is_stmt 1 view .LVU780
	.loc 1 738 24 is_stmt 0 view .LVU781
	mov	r3, #9600
	str	r3, [r2, #44]
	.loc 1 741 5 is_stmt 1 view .LVU782
	.loc 1 741 17 is_stmt 0 view .LVU783
	ldr	r3, [r2, #40]
	.loc 1 744 9 view .LVU784
	ldr	r0, .L128
	.loc 1 749 18 view .LVU785
	ldr	r1, .L128+4
	.loc 1 741 22 view .LVU786
	orr	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 744 5 is_stmt 1 view .LVU787
	.loc 1 744 9 is_stmt 0 view .LVU788
	ldr	r2, [r0]
	.loc 1 749 11 view .LVU789
	ldr	r3, .L128+8
	.loc 1 744 14 view .LVU790
	orr	r2, r2, #1
	str	r2, [r0]
	.loc 1 747 5 is_stmt 1 view .LVU791
.LVL91:
	.loc 1 749 5 view .LVU792
	.loc 1 749 11 is_stmt 0 view .LVU793
	b	.L123
.LVL92:
.L124:
	.loc 1 750 11 view .LVU794
	subs	r3, r3, #1
	beq	.L127
.L123:
	.loc 1 750 9 is_stmt 1 view .LVU795
	.loc 1 749 12 view .LVU796
	.loc 1 749 18 is_stmt 0 view .LVU797
	ldr	r2, [r1]
	.loc 1 749 12 view .LVU798
	lsls	r2, r2, #20
	bpl	.L124
	.loc 1 757 5 is_stmt 1 view .LVU799
	.loc 1 757 9 is_stmt 0 view .LVU800
	ldr	r3, [r1, #8]
	.loc 1 758 5 view .LVU801
	ldr	r0, .L128+12
	.loc 1 757 17 view .LVU802
	orr	r3, r3, #2048
	str	r3, [r1, #8]
	.loc 1 758 5 is_stmt 1 view .LVU803
	b	printUSART2
.LVL93:
.L127:
	.loc 1 751 13 view .LVU804
	ldr	r0, .L128+16
	b	printUSART2
.LVL94:
.L129:
	.align	2
.L128:
	.word	1342504960
	.word	1073898496
	.word	5000000
	.word	.LC41
	.word	.LC40
	.cfi_endproc
.LFE119:
	.size	OV7670_CaptureSnapshot, .-OV7670_CaptureSnapshot
	.section	.rodata.str1.4
	.align	2
.LC42:
	.ascii	"=== Test DCMI -> direktno \304\215itanje DR ===\012"
	.ascii	"\000"
	.align	2
.LC43:
	.ascii	"Data sa DCMI->DR = 0x%xb\012\000"
	.align	2
.LC44:
	.ascii	"=== Kraj testa ===\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_TestCapture
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_TestCapture, %function
DCMI_TestCapture:
.LFB120:
	.loc 1 766 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 767 5 view .LVU806
	.loc 1 766 1 is_stmt 0 view .LVU807
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 767 5 view .LVU808
	ldr	r0, .L142
	ldr	r4, .L142+4
	.loc 1 773 17 view .LVU809
	ldr	r5, .L142+8
.LBB23:
	.loc 1 778 17 view .LVU810
	ldr	r6, .L142+12
.LBE23:
	.loc 1 767 5 view .LVU811
	bl	printUSART2
.LVL95:
	.loc 1 769 5 is_stmt 1 view .LVU812
	.loc 1 770 5 view .LVU813
	.loc 1 770 11 view .LVU814
	.loc 1 770 11 is_stmt 0 view .LVU815
	b	.L132
.LVL96:
.L131:
	.loc 1 770 11 is_stmt 1 view .LVU816
	subs	r4, r4, #1
	beq	.L141
.L132:
	.loc 1 773 9 view .LVU817
.LBB24:
	.loc 1 775 13 view .LVU818
.LBE24:
	.loc 1 773 17 is_stmt 0 view .LVU819
	ldr	r3, [r5, #4]
	.loc 1 773 12 view .LVU820
	lsls	r3, r3, #31
	bpl	.L131
.LBB25:
	.loc 1 775 22 view .LVU821
	ldr	r1, [r5, #40]
.LVL97:
	.loc 1 776 13 is_stmt 1 view .LVU822
	.loc 1 776 15 is_stmt 0 view .LVU823
	cmp	r1, #0
	beq	.L131
	.loc 1 778 17 is_stmt 1 view .LVU824
	mov	r0, r6
	bl	printUSART2
.LVL98:
	.loc 1 778 17 is_stmt 0 view .LVU825
.LBE25:
	.loc 1 770 11 is_stmt 1 view .LVU826
	subs	r4, r4, #1
	bne	.L132
.LVL99:
.L141:
	.loc 1 783 5 view .LVU827
	.loc 1 784 1 is_stmt 0 view .LVU828
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 783 5 view .LVU829
	ldr	r0, .L142+16
	b	printUSART2
.LVL100:
.L143:
	.align	2
.L142:
	.word	.LC42
	.word	500000
	.word	1342504960
	.word	.LC43
	.word	.LC44
	.cfi_endproc
.LFE120:
	.size	DCMI_TestCapture, .-DCMI_TestCapture
	.section	.rodata.str1.4
	.align	2
.LC45:
	.ascii	"=== Po\304\215etak snapshot capture (VSYNC verzija)"
	.ascii	" ===\012\000"
	.align	2
.LC46:
	.ascii	"\304\214ekanje VSYNC HIGH...\012\000"
	.align	2
.LC47:
	.ascii	"VSYNC HIGH detektovan.\012\000"
	.align	2
.LC48:
	.ascii	"DMA omogu\304\207ena, NDTR resetovan.\012\000"
	.align	2
.LC49:
	.ascii	"DCMI capture startovan.\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	OV7670_CaptureSnapshot_VSYNC
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_CaptureSnapshot_VSYNC, %function
OV7670_CaptureSnapshot_VSYNC:
.LFB121:
	.loc 1 791 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 792 5 view .LVU831
	.loc 1 791 1 is_stmt 0 view .LVU832
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 792 5 view .LVU833
	ldr	r0, .L155
	bl	printUSART2
.LVL101:
	.loc 1 795 5 is_stmt 1 view .LVU834
	ldr	r0, .L155+4
	bl	printUSART2
.LVL102:
	.loc 1 796 5 view .LVU835
	.loc 1 796 19 is_stmt 0 view .LVU836
	ldr	r2, .L155+8
.L145:
	.loc 1 796 12 is_stmt 1 discriminator 1 view .LVU837
	.loc 1 796 19 is_stmt 0 discriminator 1 view .LVU838
	ldr	r3, [r2, #16]
	.loc 1 796 12 discriminator 1 view .LVU839
	lsls	r0, r3, #24
	bpl	.L145
	.loc 1 797 5 is_stmt 1 view .LVU840
	ldr	r0, .L155+12
	bl	printUSART2
.LVL103:
	.loc 1 800 5 view .LVU841
	.loc 1 800 17 is_stmt 0 view .LVU842
	ldr	r2, .L155+16
	ldr	r3, [r2, #40]
	.loc 1 800 22 view .LVU843
	bic	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 801 5 is_stmt 1 view .LVU844
.L146:
	.loc 1 801 12 discriminator 1 view .LVU845
	.loc 1 801 24 is_stmt 0 discriminator 1 view .LVU846
	ldr	r3, [r2, #40]
	.loc 1 801 12 discriminator 1 view .LVU847
	lsls	r1, r3, #31
	bmi	.L146
	.loc 1 803 5 is_stmt 1 view .LVU848
	.loc 1 803 24 is_stmt 0 view .LVU849
	mov	r3, #9600
	str	r3, [r2, #44]
	.loc 1 804 5 is_stmt 1 view .LVU850
	.loc 1 804 17 is_stmt 0 view .LVU851
	ldr	r3, [r2, #40]
	.loc 1 806 5 view .LVU852
	ldr	r0, .L155+20
	.loc 1 804 22 view .LVU853
	orr	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 806 5 is_stmt 1 view .LVU854
	bl	printUSART2
.LVL104:
	.loc 1 809 5 view .LVU855
	.loc 1 809 9 is_stmt 0 view .LVU856
	ldr	r2, .L155+24
	.loc 1 810 5 view .LVU857
	ldr	r0, .L155+28
	.loc 1 809 9 view .LVU858
	ldr	r3, [r2]
	.loc 1 809 14 view .LVU859
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 810 5 is_stmt 1 view .LVU860
	bl	printUSART2
.LVL105:
	.loc 1 813 5 view .LVU861
	.loc 1 814 5 view .LVU862
	.loc 1 814 11 is_stmt 0 view .LVU863
	ldr	r3, .L155+32
	.loc 1 814 18 view .LVU864
	ldr	r1, .L155+16
	.loc 1 814 11 view .LVU865
	b	.L147
.LVL106:
.L148:
	.loc 1 816 12 view .LVU866
	subs	r3, r3, #1
	beq	.L154
.L147:
	.loc 1 816 9 is_stmt 1 view .LVU867
	.loc 1 814 12 view .LVU868
	.loc 1 814 18 is_stmt 0 view .LVU869
	ldr	r2, [r1]
	.loc 1 814 12 view .LVU870
	lsls	r2, r2, #20
	bpl	.L148
	.loc 1 824 5 is_stmt 1 view .LVU871
	.loc 1 824 9 is_stmt 0 view .LVU872
	ldr	r3, [r1, #8]
	.loc 1 826 5 view .LVU873
	ldr	r0, .L155+36
	.loc 1 824 17 view .LVU874
	orr	r3, r3, #2048
	str	r3, [r1, #8]
	.loc 1 826 5 is_stmt 1 view .LVU875
	.loc 1 827 1 is_stmt 0 view .LVU876
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 826 5 view .LVU877
	b	printUSART2
.LVL107:
.L154:
	.cfi_restore_state
	.loc 1 818 13 is_stmt 1 view .LVU878
	.loc 1 827 1 is_stmt 0 view .LVU879
	pop	{r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 818 13 view .LVU880
	ldr	r0, .L155+40
	b	printUSART2
.LVL108:
.L156:
	.align	2
.L155:
	.word	.LC45
	.word	.LC46
	.word	1073873920
	.word	.LC47
	.word	1073898496
	.word	.LC48
	.word	1342504960
	.word	.LC49
	.word	5000000
	.word	.LC41
	.word	.LC40
	.cfi_endproc
.LFE121:
	.size	OV7670_CaptureSnapshot_VSYNC, .-OV7670_CaptureSnapshot_VSYNC
	.align	1
	.p2align 2,,3
	.global	OV7670_PrepareForCapture
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_PrepareForCapture, %function
OV7670_PrepareForCapture:
.LFB122:
	.loc 1 832 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 834 5 view .LVU882
	.loc 1 834 14 is_stmt 0 view .LVU883
	ldr	r3, .L160
	movs	r2, #0
	str	r2, [r3]
	.loc 1 835 5 is_stmt 1 view .LVU884
	.loc 1 835 14 is_stmt 0 view .LVU885
	str	r2, [r3, #4]
	.loc 1 836 5 is_stmt 1 view .LVU886
	.loc 1 836 15 is_stmt 0 view .LVU887
	str	r2, [r3, #12]
	.loc 1 837 5 is_stmt 1 view .LVU888
	.loc 1 837 9 is_stmt 0 view .LVU889
	ldr	r1, [r3]
	.loc 1 840 17 view .LVU890
	ldr	r2, .L160+4
	.loc 1 837 14 view .LVU891
	orr	r1, r1, #16384
	orr	r1, r1, #2
	str	r1, [r3]
	.loc 1 840 5 is_stmt 1 view .LVU892
	.loc 1 840 17 is_stmt 0 view .LVU893
	ldr	r3, [r2, #40]
	.loc 1 840 22 view .LVU894
	bic	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 841 5 is_stmt 1 view .LVU895
.L158:
	.loc 1 841 11 discriminator 1 view .LVU896
	.loc 1 841 23 is_stmt 0 discriminator 1 view .LVU897
	ldr	r3, [r2, #40]
	.loc 1 841 11 discriminator 1 view .LVU898
	lsls	r3, r3, #31
	bmi	.L158
	.loc 1 842 5 is_stmt 1 view .LVU899
	.loc 1 842 9 is_stmt 0 view .LVU900
	ldr	r3, [r2, #8]
	.loc 1 843 24 view .LVU901
	mov	r1, #9600
	.loc 1 842 17 view .LVU902
	orr	r3, r3, #2048
	str	r3, [r2, #8]
	.loc 1 843 5 is_stmt 1 view .LVU903
	.loc 1 843 24 is_stmt 0 view .LVU904
	str	r1, [r2, #44]
	.loc 1 844 5 is_stmt 1 view .LVU905
	.loc 1 844 17 is_stmt 0 view .LVU906
	ldr	r3, [r2, #40]
	.loc 1 844 22 view .LVU907
	orr	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 847 5 is_stmt 1 view .LVU908
	b	OV7670_InitQQVGA_RGB565
.LVL109:
.L161:
	.align	2
.L160:
	.word	1342504960
	.word	1073898496
	.cfi_endproc
.LFE122:
	.size	OV7670_PrepareForCapture, .-OV7670_PrepareForCapture
	.section	.rodata.str1.4
	.align	2
.LC50:
	.ascii	"=== DCMI FULL DEBUG START ===\012\000"
	.align	2
.LC51:
	.ascii	"TIMEOUT, DMA nije zavrsio transfer\012\000"
	.align	2
.LC52:
	.ascii	"ERROR: DMA transfer timeout!\012\000"
	.align	2
.LC53:
	.ascii	"DMA CR = 0x%x, NDTR = %d\012\000"
	.align	2
.LC54:
	.ascii	"DCMI CR = 0x%x, SR = 0x%x\012\000"
	.align	2
.LC55:
	.ascii	"NDTR after capture: %d\012\000"
	.align	2
.LC56:
	.ascii	"DCMI SR end: 0x%x | FIFO empty=%d, VSYNC=%d, HSYNC="
	.ascii	"%d\012\000"
	.align	2
.LC57:
	.ascii	"=== Snapshot complete ===\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_snapshot_debug
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_snapshot_debug, %function
DCMI_snapshot_debug:
.LVL110:
.LFB123:
	.loc 1 891 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 892 5 view .LVU910
	.loc 1 891 1 is_stmt 0 view .LVU911
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 892 5 view .LVU912
	ldr	r0, .L172
.LVL111:
	.loc 1 895 17 view .LVU913
	ldr	r5, .L172+4
	.loc 1 891 1 view .LVU914
	mov	r4, r1
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 892 5 view .LVU915
	bl	printUSART2
.LVL112:
	.loc 1 895 5 is_stmt 1 view .LVU916
	.loc 1 902 36 is_stmt 0 view .LVU917
	lsrs	r4, r4, #1
	.loc 1 895 17 view .LVU918
	mov	r3, #3904
	str	r3, [r5, #8]
	.loc 1 902 5 is_stmt 1 view .LVU919
	.loc 1 902 24 is_stmt 0 view .LVU920
	str	r4, [r5, #44]
	.loc 1 905 5 is_stmt 1 view .LVU921
	.loc 1 905 17 is_stmt 0 view .LVU922
	ldr	r3, [r5, #40]
	.loc 1 911 9 view .LVU923
	ldr	r2, .L172+8
	.loc 1 916 14 view .LVU924
	ldr	r4, .L172+12
	.loc 1 905 22 view .LVU925
	orr	r3, r3, #1
	str	r3, [r5, #40]
	.loc 1 911 5 is_stmt 1 view .LVU926
	.loc 1 911 9 is_stmt 0 view .LVU927
	ldr	r3, [r2]
	.loc 1 911 14 view .LVU928
	orr	r3, r3, #3
	str	r3, [r2]
	.loc 1 916 5 is_stmt 1 view .LVU929
.LVL113:
	.loc 1 917 5 view .LVU930
	.loc 1 917 11 is_stmt 0 view .LVU931
	b	.L164
.LVL114:
.L171:
	.loc 1 917 43 discriminator 1 view .LVU932
	subs	r4, r4, #1
.LVL115:
	.loc 1 917 43 discriminator 1 view .LVU933
	bcc	.L167
	.loc 1 919 12 view .LVU934
	cmp	r4, #0
	beq	.L170
.LVL116:
.L164:
	.loc 1 919 9 is_stmt 1 view .LVU935
	.loc 1 917 43 view .LVU936
	.loc 1 917 18 is_stmt 0 view .LVU937
	ldr	r3, [r5]
	.loc 1 917 43 view .LVU938
	lsls	r3, r3, #20
	bpl	.L171
	.loc 1 924 5 is_stmt 1 view .LVU939
	.loc 1 924 8 is_stmt 0 view .LVU940
	cbnz	r4, .L167
	.loc 1 925 9 is_stmt 1 view .LVU941
	ldr	r0, .L172+16
	bl	printUSART2
.LVL117:
	.loc 1 926 9 view .LVU942
	.loc 1 926 63 is_stmt 0 view .LVU943
	ldr	r1, [r5, #40]
	.loc 1 926 9 view .LVU944
	ldr	r0, .L172+20
	.loc 1 926 81 view .LVU945
	ldr	r2, [r5, #44]
	.loc 1 926 9 view .LVU946
	bl	printUSART2
.LVL118:
	.loc 1 927 9 is_stmt 1 view .LVU947
	.loc 1 927 56 is_stmt 0 view .LVU948
	ldr	r3, .L172+8
	.loc 1 927 9 view .LVU949
	ldr	r0, .L172+24
	.loc 1 927 56 view .LVU950
	ldr	r1, [r3]
	.loc 1 927 66 view .LVU951
	ldr	r2, [r3, #4]
	.loc 1 947 1 view .LVU952
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL119:
	.loc 1 927 9 view .LVU953
	b	printUSART2
.LVL120:
.L167:
	.cfi_restore_state
	.loc 1 932 5 is_stmt 1 view .LVU954
	.loc 1 932 17 is_stmt 0 view .LVU955
	ldr	r3, .L172+4
	.loc 1 935 5 view .LVU956
	ldr	r0, .L172+28
	.loc 1 932 17 view .LVU957
	mov	r2, #2048
	str	r2, [r3, #8]
	.loc 1 935 5 is_stmt 1 view .LVU958
	.loc 1 935 57 is_stmt 0 view .LVU959
	ldr	r1, [r3, #44]
	.loc 1 935 5 view .LVU960
	bl	printUSART2
.LVL121:
	.loc 1 938 5 is_stmt 1 view .LVU961
	.loc 1 938 14 is_stmt 0 view .LVU962
	ldr	r3, .L172+8
	.loc 1 939 5 view .LVU963
	ldr	r0, .L172+32
	.loc 1 938 14 view .LVU964
	ldr	r1, [r3, #4]
.LVL122:
	.loc 1 939 5 is_stmt 1 view .LVU965
	and	r3, r1, #1
	str	r3, [sp]
	ubfx	r2, r1, #2, #1
	ubfx	r3, r1, #1, #1
	bl	printUSART2
.LVL123:
	.loc 1 946 5 view .LVU966
	ldr	r0, .L172+36
	.loc 1 947 1 is_stmt 0 view .LVU967
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 946 5 view .LVU968
	b	printUSART2
.LVL124:
.L170:
	.cfi_restore_state
	.loc 1 920 13 is_stmt 1 view .LVU969
	ldr	r0, .L172+40
	bl	printUSART2
.LVL125:
	b	.L164
.L173:
	.align	2
.L172:
	.word	.LC50
	.word	1073898496
	.word	1342504960
	.word	10000000
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC51
	.cfi_endproc
.LFE123:
	.size	DCMI_snapshot_debug, .-DCMI_snapshot_debug
	.align	1
	.p2align 2,,3
	.global	DCMI_start_continuous_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_start_continuous_mode, %function
DCMI_start_continuous_mode:
.LFB124:
	.loc 1 953 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 955 5 view .LVU971
	.loc 1 955 9 is_stmt 0 view .LVU972
	ldr	r2, .L175
	ldr	r3, [r2]
	.loc 1 955 14 view .LVU973
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 956 1 view .LVU974
	bx	lr
.L176:
	.align	2
.L175:
	.word	1342504960
	.cfi_endproc
.LFE124:
	.size	DCMI_start_continuous_mode, .-DCMI_start_continuous_mode
	.section	.rodata.str1.4
	.align	2
.LC58:
	.ascii	"DCMI SR   : 0x%xw | FNE=%d VSYNC=%d HSYNC=%d\012\000"
	.align	2
.LC59:
	.ascii	"DCMI RISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d"
	.ascii	" LINE=%d\012\000"
	.align	2
.LC60:
	.ascii	"DCMI MISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d"
	.ascii	" LINE=%d\012\000"
	.align	2
.LC61:
	.ascii	"DMA2 Stream1 CR = 0x%xw | NDTR = %d\012\000"
	.align	2
.LC62:
	.ascii	"DMA2 LISR = 0x%xw\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	DCMI_snapshot_debug_full
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_snapshot_debug_full, %function
DCMI_snapshot_debug_full:
.LVL126:
.LFB125:
	.loc 1 977 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 978 5 view .LVU976
	.loc 1 977 1 is_stmt 0 view .LVU977
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 978 5 view .LVU978
	ldr	r0, .L186
.LVL127:
	.loc 1 977 1 view .LVU979
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 1 977 1 view .LVU980
	mov	r4, r1
	.loc 1 978 5 view .LVU981
	bl	printUSART2
.LVL128:
	.loc 1 981 5 is_stmt 1 view .LVU982
	.loc 1 981 17 is_stmt 0 view .LVU983
	ldr	r0, .L186+4
	.loc 1 994 9 view .LVU984
	ldr	r1, .L186+8
	.loc 1 981 17 view .LVU985
	mov	r3, #3904
	.loc 1 988 36 view .LVU986
	lsrs	r4, r4, #1
	.loc 1 981 17 view .LVU987
	str	r3, [r0, #8]
	.loc 1 988 5 is_stmt 1 view .LVU988
	.loc 1 988 24 is_stmt 0 view .LVU989
	str	r4, [r0, #44]
	.loc 1 991 5 is_stmt 1 view .LVU990
	.loc 1 991 17 is_stmt 0 view .LVU991
	ldr	r3, [r0, #40]
	.loc 1 991 22 view .LVU992
	orr	r3, r3, #1
	str	r3, [r0, #40]
	.loc 1 994 5 is_stmt 1 view .LVU993
	.loc 1 994 9 is_stmt 0 view .LVU994
	ldr	r2, [r1]
	.loc 1 997 14 view .LVU995
	ldr	r3, .L186+12
	.loc 1 994 14 view .LVU996
	orr	r2, r2, #3
	str	r2, [r1]
	.loc 1 997 5 is_stmt 1 view .LVU997
.LVL129:
	.loc 1 998 5 view .LVU998
	.loc 1 998 11 is_stmt 0 view .LVU999
	b	.L179
.LVL130:
.L184:
	.loc 1 998 43 discriminator 1 view .LVU1000
	subs	r3, r3, #1
.LVL131:
	.loc 1 998 43 discriminator 1 view .LVU1001
	bcc	.L180
.LVL132:
.L179:
	.loc 1 998 58 is_stmt 1 discriminator 2 view .LVU1002
	.loc 1 998 43 discriminator 2 view .LVU1003
	.loc 1 998 18 is_stmt 0 discriminator 2 view .LVU1004
	ldr	r2, [r0]
	.loc 1 998 43 discriminator 2 view .LVU1005
	lsls	r2, r2, #20
	bpl	.L184
	.loc 1 1000 5 is_stmt 1 view .LVU1006
	.loc 1 1000 8 is_stmt 0 view .LVU1007
	cmp	r3, #0
	beq	.L185
.LVL133:
.L180:
	.loc 1 1006 5 is_stmt 1 view .LVU1008
	.loc 1 1006 17 is_stmt 0 view .LVU1009
	ldr	r6, .L186+4
	.loc 1 1008 9 view .LVU1010
	ldr	r4, .L186+8
	.loc 1 1011 5 view .LVU1011
	ldr	r0, .L186+16
	.loc 1 1006 17 view .LVU1012
	mov	r3, #2048
	str	r3, [r6, #8]
	.loc 1 1008 5 is_stmt 1 view .LVU1013
	.loc 1 1008 9 is_stmt 0 view .LVU1014
	ldr	r3, [r4]
	.loc 1 1008 14 view .LVU1015
	bic	r3, r3, #1
	str	r3, [r4]
	.loc 1 1011 5 is_stmt 1 view .LVU1016
	.loc 1 1011 57 is_stmt 0 view .LVU1017
	ldr	r1, [r6, #44]
	.loc 1 1011 5 view .LVU1018
	bl	printUSART2
.LVL134:
	.loc 1 1014 5 is_stmt 1 view .LVU1019
	.loc 1 1014 14 is_stmt 0 view .LVU1020
	ldr	r1, [r4, #4]
.LVL135:
	.loc 1 1015 5 is_stmt 1 view .LVU1021
	.loc 1 1015 14 is_stmt 0 view .LVU1022
	ldr	r5, [r4, #8]
.LVL136:
	.loc 1 1016 5 is_stmt 1 view .LVU1023
	.loc 1 1018 5 is_stmt 0 view .LVU1024
	ldr	r0, .L186+20
	.loc 1 1016 14 view .LVU1025
	ldr	r4, [r4, #16]
.LVL137:
	.loc 1 1018 5 is_stmt 1 view .LVU1026
	and	r3, r1, #1
	str	r3, [sp]
	ubfx	r2, r1, #2, #1
	ubfx	r3, r1, #1, #1
	bl	printUSART2
.LVL138:
	.loc 1 1024 5 view .LVU1027
	ubfx	r2, r5, #4, #1
	ubfx	r3, r5, #3, #1
	strd	r3, r2, [sp, #4]
	ubfx	r2, r5, #2, #1
	ubfx	r3, r5, #1, #1
	str	r2, [sp]
	mov	r1, r5
	and	r2, r5, #1
	ldr	r0, .L186+24
	bl	printUSART2
.LVL139:
	.loc 1 1032 5 view .LVU1028
	ubfx	r2, r4, #4, #1
	ubfx	r3, r4, #3, #1
	ubfx	r0, r4, #2, #1
	strd	r3, r2, [sp, #4]
	mov	r1, r4
	ubfx	r3, r4, #1, #1
	and	r2, r4, #1
	str	r0, [sp]
	ldr	r0, .L186+28
	bl	printUSART2
.LVL140:
	.loc 1 1041 5 view .LVU1029
	.loc 1 1042 29 is_stmt 0 view .LVU1030
	ldr	r1, [r6, #40]
	.loc 1 1041 5 view .LVU1031
	ldr	r0, .L186+32
	.loc 1 1042 47 view .LVU1032
	ldr	r2, [r6, #44]
	.loc 1 1041 5 view .LVU1033
	bl	printUSART2
.LVL141:
	.loc 1 1043 5 is_stmt 1 view .LVU1034
	.loc 1 1043 44 is_stmt 0 view .LVU1035
	ldr	r1, [r6]
	.loc 1 1043 5 view .LVU1036
	ldr	r0, .L186+36
	bl	printUSART2
.LVL142:
	.loc 1 1045 5 is_stmt 1 view .LVU1037
	ldr	r0, .L186+40
	.loc 1 1046 1 is_stmt 0 view .LVU1038
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL143:
	.loc 1 1045 5 view .LVU1039
	b	printUSART2
.LVL144:
.L185:
	.cfi_restore_state
	.loc 1 1001 9 is_stmt 1 view .LVU1040
	ldr	r0, .L186+44
	.loc 1 1046 1 is_stmt 0 view .LVU1041
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 1045 5 view .LVU1042
	b	printUSART2
.LVL145:
.L187:
	.loc 1 1045 5 view .LVU1043
	.align	2
.L186:
	.word	.LC50
	.word	1073898496
	.word	1342504960
	.word	10000000
	.word	.LC55
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC57
	.word	.LC52
	.cfi_endproc
.LFE125:
	.size	DCMI_snapshot_debug_full, .-DCMI_snapshot_debug_full
	.global	frame_buffer1
	.global	frame_buffer0
	.global	frame_buffer
	.data
	.align	2
	.type	frame_buffer, %object
	.size	frame_buffer, 38400
frame_buffer:
	.short	170
	.short	170
	.short	170
	.short	170
	.short	170
	.space	38390
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	counter.0, %object
	.size	counter.0, 4
counter.0:
	.space	4
	.type	frame_buffer1, %object
	.size	frame_buffer1, 38400
frame_buffer1:
	.space	38400
	.type	frame_buffer0, %object
	.size	frame_buffer0, 38400
frame_buffer0:
	.space	38400
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 4 "DCMI/dcmi.h"
	.file 5 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 6 "DCMI/../delay/delay.h"
	.file 7 "DCMI/../usart/usart.h"
	.file 8 "DCMI/../ov7670/ov7670.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xeda
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1d
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
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
	.4byte	0x4d
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x31
	.byte	0x19
	.4byte	0x64
	.uleb128 0xf
	.4byte	0x54
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x34
	.byte	0x19
	.4byte	0x7b
	.uleb128 0xf
	.4byte	0x6b
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x12
	.4byte	0x5f
	.4byte	0xa8
	.uleb128 0x20
	.4byte	0x90
	.2byte	0x4aff
	.byte	0
	.uleb128 0xf
	.4byte	0x97
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0xe
	.4byte	0xa8
	.uleb128 0x13
	.4byte	.LASF13
	.byte	0x11
	.4byte	0xa8
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xc
	.byte	0x2c
	.2byte	0x1c4
	.4byte	0x15c
	.uleb128 0x5
	.ascii	"CR\000"
	.2byte	0x1c6
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.ascii	"SR\000"
	.2byte	0x1c7
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF16
	.2byte	0x1c8
	.4byte	0x76
	.byte	0x8
	.uleb128 0x5
	.ascii	"IER\000"
	.2byte	0x1c9
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF17
	.2byte	0x1ca
	.4byte	0x76
	.byte	0x10
	.uleb128 0x5
	.ascii	"ICR\000"
	.2byte	0x1cb
	.4byte	0x76
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF18
	.2byte	0x1cc
	.4byte	0x76
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF19
	.2byte	0x1cd
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF20
	.2byte	0x1ce
	.4byte	0x76
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x1cf
	.4byte	0x76
	.byte	0x24
	.uleb128 0x5
	.ascii	"DR\000"
	.2byte	0x1d0
	.4byte	0x76
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF22
	.2byte	0x1d1
	.4byte	0xd2
	.uleb128 0xc
	.byte	0x18
	.2byte	0x1d7
	.4byte	0x1b7
	.uleb128 0x5
	.ascii	"CR\000"
	.2byte	0x1d9
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.2byte	0x1da
	.4byte	0x76
	.byte	0x4
	.uleb128 0x5
	.ascii	"PAR\000"
	.2byte	0x1db
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x1dc
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF25
	.2byte	0x1dd
	.4byte	0x76
	.byte	0x10
	.uleb128 0x5
	.ascii	"FCR\000"
	.2byte	0x1de
	.4byte	0x76
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.2byte	0x1df
	.4byte	0x167
	.uleb128 0xc
	.byte	0x10
	.2byte	0x1e1
	.4byte	0x1fb
	.uleb128 0x2
	.4byte	.LASF27
	.2byte	0x1e3
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.2byte	0x1e4
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF29
	.2byte	0x1e5
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF30
	.2byte	0x1e6
	.4byte	0x76
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.2byte	0x1e7
	.4byte	0x1c2
	.uleb128 0x12
	.4byte	0x6b
	.4byte	0x215
	.uleb128 0x18
	.4byte	0x90
	.byte	0
	.uleb128 0xc
	.byte	0x28
	.2byte	0x28e
	.4byte	0x296
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x290
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.2byte	0x291
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x292
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF35
	.2byte	0x293
	.4byte	0x76
	.byte	0xc
	.uleb128 0x5
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x76
	.byte	0x10
	.uleb128 0x5
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0x76
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF36
	.2byte	0x296
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF37
	.2byte	0x297
	.4byte	0x5f
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF38
	.2byte	0x298
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x5
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x2a5
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	0x76
	.4byte	0x2a5
	.uleb128 0x18
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.4byte	0x296
	.uleb128 0xd
	.4byte	.LASF39
	.2byte	0x29a
	.4byte	0x215
	.uleb128 0xc
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x425
	.uleb128 0x5
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.2byte	0x2e0
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF41
	.2byte	0x2e1
	.4byte	0x76
	.byte	0x8
	.uleb128 0x5
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0x2e3
	.4byte	0x76
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF43
	.2byte	0x2e4
	.4byte	0x76
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x2e5
	.4byte	0x76
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x2e6
	.4byte	0x6b
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x2e7
	.4byte	0x76
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x2e8
	.4byte	0x76
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x2e9
	.4byte	0x206
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x2ea
	.4byte	0x76
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF50
	.2byte	0x2eb
	.4byte	0x76
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF51
	.2byte	0x2ec
	.4byte	0x76
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x2ed
	.4byte	0x6b
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x2ee
	.4byte	0x76
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x2ef
	.4byte	0x76
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x2f0
	.4byte	0x206
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF56
	.2byte	0x2f1
	.4byte	0x76
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF57
	.2byte	0x2f2
	.4byte	0x76
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x2f3
	.4byte	0x76
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x2f4
	.4byte	0x6b
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x2f5
	.4byte	0x76
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x2f6
	.4byte	0x76
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x2f7
	.4byte	0x206
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x2f8
	.4byte	0x76
	.byte	0x70
	.uleb128 0x5
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x76
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x2fa
	.4byte	0x206
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x2fb
	.4byte	0x76
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x2fc
	.4byte	0x76
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.2byte	0x2fd
	.4byte	0x2b5
	.uleb128 0x14
	.4byte	0xad
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_buffer
	.uleb128 0x14
	.4byte	0xb7
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_buffer0
	.uleb128 0x14
	.4byte	0xc1
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_buffer1
	.uleb128 0x21
	.4byte	.LASF102
	.byte	0x8
	.byte	0x23
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x6
	.byte	0x9
	.4byte	0x46a
	.uleb128 0x1a
	.4byte	0x6b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF69
	.byte	0x6
	.byte	0x19
	.byte	0xa
	.4byte	0x6b
	.4byte	0x47c
	.uleb128 0x1b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x7
	.byte	0x10
	.4byte	0x48e
	.uleb128 0x1a
	.4byte	0x48e
	.uleb128 0x1b
	.byte	0
	.uleb128 0x15
	.4byte	0xcb
	.uleb128 0x8
	.4byte	.LASF77
	.2byte	0x3d0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65c
	.uleb128 0xe
	.4byte	.LASF71
	.2byte	0x3d0
	.byte	0x32
	.4byte	0x65c
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LASF72
	.2byte	0x3d0
	.byte	0x43
	.4byte	0x54
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x3e5
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x4
	.4byte	.LASF74
	.2byte	0x3f6
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x4
	.4byte	.LASF75
	.2byte	0x3f7
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x4
	.4byte	.LASF76
	.2byte	0x3f8
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x3
	.4byte	.LVL128
	.4byte	0x47c
	.4byte	0x537
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x3
	.4byte	.LVL134
	.4byte	0x47c
	.4byte	0x54e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x3
	.4byte	.LVL138
	.4byte	0x47c
	.4byte	0x565
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0
	.uleb128 0x3
	.4byte	.LVL139
	.4byte	0x47c
	.4byte	0x5b4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
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
	.uleb128 0x3
	.4byte	.LVL140
	.4byte	0x47c
	.4byte	0x603
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
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
	.uleb128 0x3
	.4byte	.LVL141
	.4byte	0x47c
	.4byte	0x61a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x3
	.4byte	.LVL142
	.4byte	0x47c
	.4byte	0x631
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.uleb128 0x9
	.4byte	.LVL144
	.4byte	0x47c
	.4byte	0x648
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0xb
	.4byte	.LVL145
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x5f
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x3b8
	.byte	0x6
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF78
	.2byte	0x37a
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78e
	.uleb128 0xe
	.4byte	.LASF71
	.2byte	0x37a
	.byte	0x2d
	.4byte	0x65c
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xe
	.4byte	.LASF72
	.2byte	0x37a
	.byte	0x3e
	.4byte	0x54
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x394
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x4
	.4byte	.LASF74
	.2byte	0x3aa
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x3
	.4byte	.LVL112
	.4byte	0x47c
	.4byte	0x6f0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x3
	.4byte	.LVL117
	.4byte	0x47c
	.4byte	0x707
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x3
	.4byte	.LVL118
	.4byte	0x47c
	.4byte	0x71e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.uleb128 0x9
	.4byte	.LVL120
	.4byte	0x47c
	.4byte	0x735
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x3
	.4byte	.LVL121
	.4byte	0x47c
	.4byte	0x74c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x3
	.4byte	.LVL123
	.4byte	0x47c
	.4byte	0x763
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.uleb128 0x9
	.4byte	.LVL124
	.4byte	0x47c
	.4byte	0x77a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0xa
	.4byte	.LVL125
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF79
	.2byte	0x33f
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ad
	.uleb128 0x24
	.4byte	.LVL109
	.4byte	0x451
	.byte	0
	.uleb128 0x8
	.4byte	.LASF80
	.2byte	0x316
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x874
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x32d
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x3
	.4byte	.LVL101
	.4byte	0x47c
	.4byte	0x7ed
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x3
	.4byte	.LVL102
	.4byte	0x47c
	.4byte	0x804
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x3
	.4byte	.LVL103
	.4byte	0x47c
	.4byte	0x81b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x3
	.4byte	.LVL104
	.4byte	0x47c
	.4byte	0x832
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x3
	.4byte	.LVL105
	.4byte	0x47c
	.4byte	0x849
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x9
	.4byte	.LVL107
	.4byte	0x47c
	.4byte	0x860
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0xb
	.4byte	.LVL108
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF81
	.2byte	0x2fd
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f6
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x301
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x10
	.4byte	.LLRL16
	.4byte	0x8cb
	.uleb128 0x4
	.4byte	.LASF82
	.2byte	0x307
	.byte	0x16
	.4byte	0x6b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xa
	.4byte	.LVL98
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL95
	.4byte	0x47c
	.4byte	0x8e2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.uleb128 0xb
	.4byte	.LVL100
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF83
	.2byte	0x2d8
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94a
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x9
	.4byte	.LVL93
	.4byte	0x47c
	.4byte	0x936
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0xb
	.4byte	.LVL94
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF95
	.2byte	0x25f
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x24a
	.byte	0xa
	.4byte	0x54
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0x26
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x24a
	.byte	0x1e
	.4byte	0x9af
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x27
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x24a
	.byte	0x2c
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.4byte	.LASF84
	.2byte	0x24c
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x15
	.4byte	0x6b
	.uleb128 0x8
	.4byte	.LASF85
	.2byte	0x233
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa51
	.uleb128 0xe
	.4byte	.LASF86
	.2byte	0x233
	.byte	0x2c
	.4byte	0x6b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x4
	.4byte	.LASF87
	.2byte	0x235
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x6
	.4byte	.LVL81
	.4byte	0x46a
	.uleb128 0x3
	.4byte	.LVL84
	.4byte	0x47c
	.4byte	0xa34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
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
	.sleb128 12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL85
	.4byte	0x459
	.4byte	0xa47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL86
	.4byte	0x46a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF88
	.2byte	0x220
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaeb
	.uleb128 0x6
	.4byte	.LVL68
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL69
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL70
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL71
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL72
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL73
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL74
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL75
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL76
	.4byte	0x47c
	.uleb128 0x6
	.4byte	.LVL77
	.4byte	0x47c
	.uleb128 0x9
	.4byte	.LVL78
	.4byte	0x47c
	.4byte	0xad7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.uleb128 0xb
	.4byte	.LVL79
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.2byte	0x1f3
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbac
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x1fd
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x10
	.4byte	.LLRL8
	.4byte	0xb53
	.uleb128 0x28
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x200
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x5
	.byte	0x3
	.4byte	counter.0
	.uleb128 0x29
	.4byte	0xed3
	.4byte	.LBI16
	.byte	.LVU522
	.4byte	.LLRL9
	.byte	0x1
	.2byte	0x205
	.byte	0x9
	.uleb128 0xa
	.4byte	.LVL63
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL59
	.4byte	0x47c
	.4byte	0xb6a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x9
	.4byte	.LVL65
	.4byte	0x47c
	.4byte	0xb81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x3
	.4byte	.LVL66
	.4byte	0x47c
	.4byte	0xb98
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0xb
	.4byte	.LVL67
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.2byte	0x1ab
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe72
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x1ad
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x4
	.4byte	.LASF91
	.2byte	0x1ae
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x16
	.ascii	"idx\000"
	.2byte	0x1af
	.4byte	0x6b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0xd
	.4byte	0x42
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x13
	.4byte	0x42
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x1a
	.4byte	0x42
	.uleb128 0x10
	.4byte	.LLRL3
	.4byte	0xc45
	.uleb128 0x16
	.ascii	"i\000"
	.2byte	0x1dd
	.4byte	0x89
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xa
	.4byte	.LVL31
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LLRL5
	.4byte	0xc70
	.uleb128 0x16
	.ascii	"i\000"
	.2byte	0x1e3
	.4byte	0x89
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xa
	.4byte	.LVL39
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0xed3
	.4byte	.LBI9
	.byte	.LVU369
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.2byte	0x1b6
	.byte	0x33
	.uleb128 0x3
	.4byte	.LVL3
	.4byte	0x47c
	.4byte	0xc9d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3
	.4byte	.LVL8
	.4byte	0x47c
	.4byte	0xcb4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x3
	.4byte	.LVL24
	.4byte	0x47c
	.4byte	0xcd1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL25
	.4byte	0x47c
	.4byte	0xce8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x3
	.4byte	.LVL26
	.4byte	0x47c
	.4byte	0xcff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x3
	.4byte	.LVL27
	.4byte	0x47c
	.4byte	0xd16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x3
	.4byte	.LVL32
	.4byte	0x47c
	.4byte	0xd2d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x3
	.4byte	.LVL33
	.4byte	0x47c
	.4byte	0xd44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x3
	.4byte	.LVL40
	.4byte	0x47c
	.4byte	0xd5b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x9
	.4byte	.LVL42
	.4byte	0x47c
	.4byte	0xd72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x9
	.4byte	.LVL44
	.4byte	0x47c
	.4byte	0xd89
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x3
	.4byte	.LVL45
	.4byte	0x47c
	.4byte	0xda0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x3
	.4byte	.LVL46
	.4byte	0x47c
	.4byte	0xdbd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL47
	.4byte	0x47c
	.4byte	0xdd4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x3
	.4byte	.LVL48
	.4byte	0x47c
	.4byte	0xdeb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x9
	.4byte	.LVL50
	.4byte	0x47c
	.4byte	0xe02
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x3
	.4byte	.LVL51
	.4byte	0x47c
	.4byte	0xe19
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x3
	.4byte	.LVL52
	.4byte	0x47c
	.4byte	0xe30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x3
	.4byte	.LVL55
	.4byte	0x47c
	.4byte	0xe47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x3
	.4byte	.LVL56
	.4byte	0x47c
	.4byte	0xe5e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xa
	.4byte	.LVL57
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF96
	.2byte	0x14f
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0xa2
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeab
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x18
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed3
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x47c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x10d
	.byte	0x39
	.byte	0x3
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
	.uleb128 0xd
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
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 432
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x5
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS23:
	.uleb128 0
	.uleb128 .LVU979
	.uleb128 .LVU979
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL126-.Ltext0
	.uleb128 .LVL127-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL127-.Ltext0
	.uleb128 .LFE125-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU982
	.uleb128 .LVU982
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL126-.Ltext0
	.uleb128 .LVL128-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL128-1-.Ltext0
	.uleb128 .LFE125-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU998
	.uleb128 .LVU1000
	.uleb128 .LVU1000
	.uleb128 .LVU1001
	.uleb128 .LVU1001
	.uleb128 .LVU1002
	.uleb128 .LVU1002
	.uleb128 .LVU1008
	.uleb128 .LVU1040
	.uleb128 .LVU1043
.LLST25:
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL131-.Ltext0
	.uleb128 .LVL132-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL132-.Ltext0
	.uleb128 .LVL133-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL144-.Ltext0
	.uleb128 .LVL145-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS26:
	.uleb128 .LVU1021
	.uleb128 .LVU1027
.LLST26:
	.byte	0x4
	.uleb128 .LVL135-.Ltext0
	.uleb128 .LVL138-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS27:
	.uleb128 .LVU1023
	.uleb128 .LVU1039
.LLST27:
	.byte	0x4
	.uleb128 .LVL136-.Ltext0
	.uleb128 .LVL143-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS28:
	.uleb128 .LVU1026
	.uleb128 .LVU1039
.LLST28:
	.byte	0x4
	.uleb128 .LVL137-.Ltext0
	.uleb128 .LVL143-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU913
	.uleb128 .LVU913
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL111-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU916
	.uleb128 .LVU916
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL112-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL112-1-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU930
	.uleb128 .LVU932
	.uleb128 .LVU932
	.uleb128 .LVU933
	.uleb128 .LVU933
	.uleb128 .LVU935
	.uleb128 .LVU936
	.uleb128 .LVU953
	.uleb128 .LVU969
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL115-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL115-.Ltext0
	.uleb128 .LVL116-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU965
	.uleb128 .LVU966
.LLST22:
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS18:
	.uleb128 .LVU862
	.uleb128 .LVU866
.LLST18:
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x4c4b40
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU813
	.uleb128 .LVU815
	.uleb128 .LVU815
	.uleb128 .LVU816
.LLST15:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x7a120
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x7a11f
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU822
	.uleb128 .LVU825
.LLST17:
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LVL98-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS14:
	.uleb128 .LVU792
	.uleb128 .LVU794
.LLST14:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x4c4b40
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU660
	.uleb128 .LVU660
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU660
	.uleb128 .LVU664
	.uleb128 .LVU664
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE117-.Ltext0
	.uleb128 0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU627
	.uleb128 .LVU627
	.uleb128 .LVU655
	.uleb128 .LVU655
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL81-1-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU630
	.uleb128 .LVU632
	.uleb128 .LVU632
	.uleb128 .LVU655
	.uleb128 .LVU655
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -44
	.byte	0
.LVUS7:
	.uleb128 .LVU514
	.uleb128 .LVU521
	.uleb128 .LVU521
	.uleb128 .LVU531
	.uleb128 .LVU531
	.uleb128 .LVU532
	.uleb128 .LVU532
	.uleb128 .LVU553
	.uleb128 .LVU556
	.uleb128 .LVU557
	.uleb128 .LVU560
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LFE114-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 .LVU361
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 .LVU367
	.uleb128 .LVU367
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU377
	.uleb128 .LVU381
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU418
	.uleb128 .LVU418
	.uleb128 .LVU419
	.uleb128 .LVU419
	.uleb128 .LVU423
	.uleb128 .LVU423
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU428
	.uleb128 .LVU428
	.uleb128 .LVU430
	.uleb128 .LVU430
	.uleb128 .LVU433
	.uleb128 .LVU473
	.uleb128 .LVU477
	.uleb128 .LVU477
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 .LVU486
	.uleb128 .LVU496
	.uleb128 .LVU502
	.uleb128 .LVU502
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LFE113-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU407
	.uleb128 .LVU411
	.uleb128 .LVU411
	.uleb128 .LVU414
.LLST1:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x60
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU356
	.uleb128 .LVU392
	.uleb128 .LVU416
	.uleb128 .LVU437
	.uleb128 .LVU473
	.uleb128 .LVU477
	.uleb128 .LVU477
	.uleb128 .LVU480
	.uleb128 .LVU496
	.uleb128 .LVU502
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU442
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU449
	.uleb128 .LVU449
	.uleb128 .LVU451
	.uleb128 .LVU451
	.uleb128 .LVU458
	.uleb128 .LVU489
	.uleb128 .LVU495
.LLST4:
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS6:
	.uleb128 .LVU459
	.uleb128 .LVU460
	.uleb128 .LVU461
	.uleb128 .LVU465
	.uleb128 .LVU465
	.uleb128 .LVU467
	.uleb128 .LVU467
	.uleb128 .LVU472
	.uleb128 .LVU493
	.uleb128 .LVU496
.LLST6:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x2
	.byte	0x30
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
	.uleb128 .LBB11-.Ltext0
	.uleb128 .LBE11-.Ltext0
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0
.LLRL5:
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0
.LLRL8:
	.byte	0x4
	.uleb128 .LBB15-.Ltext0
	.uleb128 .LBE15-.Ltext0
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0
.LLRL9:
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0
.LLRL16:
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0x4
	.uleb128 .LBB24-.Ltext0
	.uleb128 .LBE24-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF56:
	.ascii	"AHB1LPENR\000"
.LASF27:
	.ascii	"LISR\000"
.LASF34:
	.ascii	"OSPEEDR\000"
.LASF68:
	.ascii	"delay_ms\000"
.LASF98:
	.ascii	"DCMI_Init_OV7670\000"
.LASF46:
	.ascii	"APB1RSTR\000"
.LASF93:
	.ascii	"hsync\000"
.LASF26:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF103:
	.ascii	"DCMI_start_continuous_mode\000"
.LASF1:
	.ascii	"short int\000"
.LASF63:
	.ascii	"BDCR\000"
.LASF76:
	.ascii	"misr_end\000"
.LASF21:
	.ascii	"CWSIZER\000"
.LASF66:
	.ascii	"PLLI2SCFGR\000"
.LASF107:
	.ascii	"__NOP\000"
.LASF79:
	.ascii	"OV7670_PrepareForCapture\000"
.LASF105:
	.ascii	"pixel_index\000"
.LASF82:
	.ascii	"data\000"
.LASF86:
	.ascii	"interval_ms\000"
.LASF31:
	.ascii	"DMA_TypeDef\000"
.LASF65:
	.ascii	"SSCGR\000"
.LASF83:
	.ascii	"OV7670_CaptureSnapshot\000"
.LASF74:
	.ascii	"sr_end\000"
.LASF75:
	.ascii	"risr_end\000"
.LASF58:
	.ascii	"AHB3LPENR\000"
.LASF102:
	.ascii	"OV7670_InitQQVGA_RGB565\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF53:
	.ascii	"APB1ENR\000"
.LASF33:
	.ascii	"OTYPER\000"
.LASF12:
	.ascii	"frame_buffer\000"
.LASF54:
	.ascii	"APB2ENR\000"
.LASF50:
	.ascii	"AHB2ENR\000"
.LASF104:
	.ascii	"get_pixel\000"
.LASF89:
	.ascii	"DCMI_CaptureFrame\000"
.LASF30:
	.ascii	"HIFCR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF35:
	.ascii	"PUPDR\000"
.LASF87:
	.ascii	"start\000"
.LASF28:
	.ascii	"HISR\000"
.LASF2:
	.ascii	"long int\000"
.LASF67:
	.ascii	"RCC_TypeDef\000"
.LASF37:
	.ascii	"BSRRH\000"
.LASF32:
	.ascii	"MODER\000"
.LASF47:
	.ascii	"APB2RSTR\000"
.LASF36:
	.ascii	"BSRRL\000"
.LASF13:
	.ascii	"frame_buffer0\000"
.LASF14:
	.ascii	"frame_buffer1\000"
.LASF51:
	.ascii	"AHB3ENR\000"
.LASF84:
	.ascii	"word\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF91:
	.ascii	"d0_d7\000"
.LASF77:
	.ascii	"DCMI_snapshot_debug_full\000"
.LASF92:
	.ascii	"pclk\000"
.LASF106:
	.ascii	"counter\000"
.LASF19:
	.ascii	"ESUR\000"
.LASF72:
	.ascii	"frame_size\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF22:
	.ascii	"DCMI_TypeDef\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF43:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF41:
	.ascii	"CFGR\000"
.LASF18:
	.ascii	"ESCR\000"
.LASF81:
	.ascii	"DCMI_TestCapture\000"
.LASF40:
	.ascii	"PLLCFGR\000"
.LASF94:
	.ascii	"vsync\000"
.LASF25:
	.ascii	"M1AR\000"
.LASF60:
	.ascii	"APB1LPENR\000"
.LASF85:
	.ascii	"OV7670_CheckPins_Fluctuation\000"
.LASF70:
	.ascii	"printUSART2\000"
.LASF15:
	.ascii	"char\000"
.LASF100:
	.ascii	"DCMI/dcmi.c\000"
.LASF78:
	.ascii	"DCMI_snapshot_debug\000"
.LASF17:
	.ascii	"MISR\000"
.LASF88:
	.ascii	"OV7670_CheckPins\000"
.LASF97:
	.ascii	"DCMI_Init_OV7670_continuous_mode\000"
.LASF96:
	.ascii	"DCMI_Init_OV7670_Snapshot\000"
.LASF57:
	.ascii	"AHB2LPENR\000"
.LASF73:
	.ascii	"timeout\000"
.LASF55:
	.ascii	"RESERVED3\000"
.LASF71:
	.ascii	"buffer\000"
.LASF45:
	.ascii	"RESERVED0\000"
.LASF48:
	.ascii	"RESERVED1\000"
.LASF52:
	.ascii	"RESERVED2\000"
.LASF24:
	.ascii	"M0AR\000"
.LASF59:
	.ascii	"RESERVED4\000"
.LASF62:
	.ascii	"RESERVED5\000"
.LASF64:
	.ascii	"RESERVED6\000"
.LASF23:
	.ascii	"NDTR\000"
.LASF99:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF101:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/kod_sa_3_stm32.BACKUP\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF49:
	.ascii	"AHB1ENR\000"
.LASF95:
	.ascii	"DCMI_Init_OV7670_SnapshotOnly\000"
.LASF80:
	.ascii	"OV7670_CaptureSnapshot_VSYNC\000"
.LASF42:
	.ascii	"AHB1RSTR\000"
.LASF20:
	.ascii	"CWSTRTR\000"
.LASF69:
	.ascii	"getSYSTIMER_TIM7\000"
.LASF39:
	.ascii	"GPIO_TypeDef\000"
.LASF90:
	.ascii	"DCMI_CaptureFrame_DebugPolling\000"
.LASF16:
	.ascii	"RISR\000"
.LASF38:
	.ascii	"LCKR\000"
.LASF61:
	.ascii	"APB2LPENR\000"
.LASF29:
	.ascii	"LIFCR\000"
.LASF44:
	.ascii	"AHB3RSTR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

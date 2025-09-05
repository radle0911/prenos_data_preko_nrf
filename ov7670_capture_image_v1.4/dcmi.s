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
	.loc 1 22 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 40 9 view .LVU1
	.loc 1 22 1 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 40 12 view .LVU3
	ldr	r4, .L4
	.loc 1 42 18 view .LVU4
	ldr	r0, .L4+4
	.loc 1 40 12 view .LVU5
	ldr	r3, [r4, #48]
	.loc 1 40 22 view .LVU6
	orr	r3, r3, #31
	str	r3, [r4, #48]
	.loc 1 42 13 is_stmt 1 view .LVU7
	.loc 1 42 18 is_stmt 0 view .LVU8
	ldr	r3, [r0]
	.loc 1 42 26 view .LVU9
	bic	r3, r3, #3932160
	bic	r3, r3, #13056
	str	r3, [r0]
	.loc 1 43 13 is_stmt 1 view .LVU10
	.loc 1 43 18 is_stmt 0 view .LVU11
	ldr	r3, [r0]
	.loc 1 43 26 view .LVU12
	orr	r3, r3, #2621440
	orr	r3, r3, #8704
	str	r3, [r0]
	.loc 1 44 13 is_stmt 1 view .LVU13
	.loc 1 44 23 is_stmt 0 view .LVU14
	ldr	r3, [r0, #32]
	.loc 1 44 27 view .LVU15
	bic	r3, r3, #251658240
	bic	r3, r3, #983040
	str	r3, [r0, #32]
	.loc 1 45 13 is_stmt 1 view .LVU16
	.loc 1 45 23 is_stmt 0 view .LVU17
	ldr	r3, [r0, #32]
	.loc 1 45 27 view .LVU18
	orr	r3, r3, #218103808
	orr	r3, r3, #851968
	str	r3, [r0, #32]
	.loc 1 46 13 is_stmt 1 view .LVU19
	.loc 1 46 23 is_stmt 0 view .LVU20
	ldr	r3, [r0, #36]
	.loc 1 46 27 view .LVU21
	bic	r3, r3, #4080
	str	r3, [r0, #36]
	.loc 1 47 13 is_stmt 1 view .LVU22
	.loc 1 47 23 is_stmt 0 view .LVU23
	ldr	r3, [r0, #36]
	.loc 1 47 27 view .LVU24
	orr	r3, r3, #3536
	str	r3, [r0, #36]
	.loc 1 51 13 is_stmt 1 view .LVU25
	.loc 1 51 18 is_stmt 0 view .LVU26
	ldr	r3, [r0]
	.loc 1 51 26 view .LVU27
	bic	r3, r3, #12288
	str	r3, [r0]
	.loc 1 52 13 is_stmt 1 view .LVU28
	.loc 1 52 18 is_stmt 0 view .LVU29
	ldr	r3, [r0]
	.loc 1 52 26 view .LVU30
	orr	r3, r3, #8192
	str	r3, [r0]
	.loc 1 54 13 is_stmt 1 view .LVU31
	.loc 1 54 23 is_stmt 0 view .LVU32
	ldr	r3, [r0, #32]
	.loc 1 54 27 view .LVU33
	bic	r3, r3, #251658240
	str	r3, [r0, #32]
	.loc 1 55 13 is_stmt 1 view .LVU34
	.loc 1 55 23 is_stmt 0 view .LVU35
	ldr	r3, [r0, #32]
	.loc 1 55 27 view .LVU36
	orr	r3, r3, #218103808
	str	r3, [r0, #32]
	.loc 1 58 13 is_stmt 1 view .LVU37
	.loc 1 22 1 is_stmt 0 view .LVU38
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 59 30 view .LVU39
	ldr	r1, [r0]
	.loc 1 59 49 view .LVU40
	ldr	r2, [r0, #32]
	.loc 1 59 64 view .LVU41
	ldr	r3, [r0, #36]
	.loc 1 59 74 view .LVU42
	ldr	r0, [r0, #16]
	.loc 1 58 13 view .LVU43
	str	r0, [sp]
	ldr	r0, .L4+8
	bl	printUSART2
.LVL0:
	.loc 1 72 13 is_stmt 1 view .LVU44
	.loc 1 72 18 is_stmt 0 view .LVU45
	ldr	r2, .L4+12
	.loc 1 82 18 view .LVU46
	ldr	r3, .L4+16
	.loc 1 72 18 view .LVU47
	ldr	r0, [r2]
	.loc 1 93 18 view .LVU48
	ldr	r1, .L4+20
	.loc 1 72 26 view .LVU49
	bic	r0, r0, #49152
	str	r0, [r2]
	.loc 1 73 13 is_stmt 1 view .LVU50
	.loc 1 73 18 is_stmt 0 view .LVU51
	ldr	r0, [r2]
	.loc 1 73 26 view .LVU52
	orr	r0, r0, #32768
	str	r0, [r2]
	.loc 1 74 13 is_stmt 1 view .LVU53
	.loc 1 74 23 is_stmt 0 view .LVU54
	ldr	r0, [r2, #32]
	.loc 1 74 27 view .LVU55
	bic	r0, r0, #-268435456
	str	r0, [r2, #32]
	.loc 1 75 13 is_stmt 1 view .LVU56
	.loc 1 75 23 is_stmt 0 view .LVU57
	ldr	r0, [r2, #32]
	.loc 1 75 27 view .LVU58
	orr	r0, r0, #-805306368
	str	r0, [r2, #32]
	.loc 1 82 13 is_stmt 1 view .LVU59
	.loc 1 82 18 is_stmt 0 view .LVU60
	ldr	r0, [r3]
	.loc 1 82 26 view .LVU61
	bic	r0, r0, #983040
	str	r0, [r3]
	.loc 1 83 13 is_stmt 1 view .LVU62
	.loc 1 83 18 is_stmt 0 view .LVU63
	ldr	r0, [r3]
	.loc 1 83 26 view .LVU64
	orr	r0, r0, #655360
	str	r0, [r3]
	.loc 1 84 13 is_stmt 1 view .LVU65
	.loc 1 84 23 is_stmt 0 view .LVU66
	ldr	r0, [r3, #36]
	.loc 1 84 27 view .LVU67
	bic	r0, r0, #255
	str	r0, [r3, #36]
	.loc 1 85 13 is_stmt 1 view .LVU68
	.loc 1 85 23 is_stmt 0 view .LVU69
	ldr	r0, [r3, #36]
	.loc 1 85 27 view .LVU70
	orr	r0, r0, #221
	str	r0, [r3, #36]
	.loc 1 93 13 is_stmt 1 view .LVU71
	.loc 1 93 18 is_stmt 0 view .LVU72
	ldr	r0, [r1]
	.loc 1 125 14 view .LVU73
	ldr	r3, .L4+24
	.loc 1 93 26 view .LVU74
	bic	r0, r0, #192
	str	r0, [r1]
	.loc 1 94 13 is_stmt 1 view .LVU75
	.loc 1 94 18 is_stmt 0 view .LVU76
	ldr	r0, [r1]
	.loc 1 94 26 view .LVU77
	orr	r0, r0, #128
	str	r0, [r1]
	.loc 1 95 13 is_stmt 1 view .LVU78
	.loc 1 95 23 is_stmt 0 view .LVU79
	ldr	r0, [r1, #32]
	.loc 1 95 27 view .LVU80
	bic	r0, r0, #61440
	str	r0, [r1, #32]
	.loc 1 96 13 is_stmt 1 view .LVU81
	.loc 1 96 23 is_stmt 0 view .LVU82
	ldr	r0, [r1, #32]
	.loc 1 96 27 view .LVU83
	orr	r0, r0, #53248
	str	r0, [r1, #32]
	.loc 1 103 13 is_stmt 1 view .LVU84
	.loc 1 103 18 is_stmt 0 view .LVU85
	ldr	r1, [r2, #3072]
	.loc 1 103 26 view .LVU86
	bic	r1, r1, #16128
	str	r1, [r2, #3072]
	.loc 1 104 13 is_stmt 1 view .LVU87
	.loc 1 104 18 is_stmt 0 view .LVU88
	ldr	r1, [r2, #3072]
	.loc 1 104 26 view .LVU89
	orr	r1, r1, #10752
	str	r1, [r2, #3072]
	.loc 1 105 13 is_stmt 1 view .LVU90
	.loc 1 105 23 is_stmt 0 view .LVU91
	ldr	r1, [r2, #3104]
	.loc 1 105 27 view .LVU92
	bic	r1, r1, #267386880
	bic	r1, r1, #983040
	str	r1, [r2, #3104]
	.loc 1 106 13 is_stmt 1 view .LVU93
	.loc 1 106 23 is_stmt 0 view .LVU94
	ldr	r1, [r2, #3104]
	.loc 1 106 27 view .LVU95
	orr	r1, r1, #231735296
	orr	r1, r1, #851968
	str	r1, [r2, #3104]
	.loc 1 117 5 is_stmt 1 view .LVU96
	.loc 1 117 8 is_stmt 0 view .LVU97
	ldr	r2, [r4, #52]
	.loc 1 117 18 view .LVU98
	orr	r2, r2, #1
	str	r2, [r4, #52]
	.loc 1 120 5 is_stmt 1 view .LVU99
	.loc 1 120 8 is_stmt 0 view .LVU100
	ldr	r2, [r4, #20]
	.loc 1 120 19 view .LVU101
	orr	r2, r2, #1
	str	r2, [r4, #20]
	.loc 1 121 5 is_stmt 1 view .LVU102
	.loc 1 121 8 is_stmt 0 view .LVU103
	ldr	r2, [r4, #20]
	.loc 1 125 14 view .LVU104
	movs	r0, #0
	.loc 1 121 19 view .LVU105
	bic	r2, r2, #1
	str	r2, [r4, #20]
	.loc 1 125 5 is_stmt 1 view .LVU106
	.loc 1 125 14 is_stmt 0 view .LVU107
	str	r0, [r3]
	.loc 1 146 5 is_stmt 1 view .LVU108
	.loc 1 146 9 is_stmt 0 view .LVU109
	ldr	r2, [r3]
	.loc 1 146 14 view .LVU110
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 147 5 is_stmt 1 view .LVU111
	.loc 1 147 9 is_stmt 0 view .LVU112
	ldr	r2, [r3]
	.loc 1 147 14 view .LVU113
	bic	r2, r2, #64
	str	r2, [r3]
	.loc 1 148 5 is_stmt 1 view .LVU114
	.loc 1 148 9 is_stmt 0 view .LVU115
	ldr	r2, [r3]
	.loc 1 148 14 view .LVU116
	bic	r2, r2, #32
	str	r2, [r3]
	.loc 1 153 5 is_stmt 1 view .LVU117
	.loc 1 153 9 is_stmt 0 view .LVU118
	ldr	r2, [r3]
	.loc 1 153 14 view .LVU119
	orr	r2, r2, #2
	str	r2, [r3]
	.loc 1 155 5 is_stmt 1 view .LVU120
	.loc 1 155 9 is_stmt 0 view .LVU121
	ldr	r2, [r3]
	.loc 1 155 14 view .LVU122
	orr	r2, r2, #16384
	str	r2, [r3]
	.loc 1 156 1 view .LVU123
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
	.global	DCMI_Init_OV7670_Snapshot
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init_OV7670_Snapshot, %function
DCMI_Init_OV7670_Snapshot:
.LFB111:
	.loc 1 162 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 164 5 view .LVU125
	.loc 1 164 8 is_stmt 0 view .LVU126
	ldr	r2, .L8
	.loc 1 168 10 view .LVU127
	ldr	r3, .L8+4
	.loc 1 164 8 view .LVU128
	ldr	r1, [r2, #48]
	.loc 1 176 10 view .LVU129
	ldr	r0, .L8+8
	.loc 1 164 18 view .LVU130
	orr	r1, r1, #31
	.loc 1 162 1 view .LVU131
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 164 18 view .LVU132
	str	r1, [r2, #48]
	.loc 1 168 5 is_stmt 1 view .LVU133
	.loc 1 168 10 is_stmt 0 view .LVU134
	ldr	r1, [r3]
	.loc 1 168 18 view .LVU135
	bic	r1, r1, #3932160
	bic	r1, r1, #13056
	str	r1, [r3]
	.loc 1 169 5 is_stmt 1 view .LVU136
	.loc 1 169 10 is_stmt 0 view .LVU137
	ldr	r1, [r3]
	.loc 1 169 18 view .LVU138
	orr	r1, r1, #2621440
	orr	r1, r1, #8704
	str	r1, [r3]
	.loc 1 170 5 is_stmt 1 view .LVU139
	.loc 1 170 15 is_stmt 0 view .LVU140
	ldr	r1, [r3, #36]
	.loc 1 170 19 view .LVU141
	bic	r1, r1, #4080
	str	r1, [r3, #36]
	.loc 1 171 5 is_stmt 1 view .LVU142
	.loc 1 171 15 is_stmt 0 view .LVU143
	ldr	r1, [r3, #36]
	.loc 1 171 19 view .LVU144
	orr	r1, r1, #3536
	str	r1, [r3, #36]
	.loc 1 172 5 is_stmt 1 view .LVU145
	.loc 1 172 15 is_stmt 0 view .LVU146
	ldr	r1, [r3, #32]
	.loc 1 172 19 view .LVU147
	bic	r1, r1, #251658240
	bic	r1, r1, #983040
	str	r1, [r3, #32]
	.loc 1 173 5 is_stmt 1 view .LVU148
	.loc 1 173 15 is_stmt 0 view .LVU149
	ldr	r1, [r3, #32]
	.loc 1 173 19 view .LVU150
	orr	r1, r1, #218103808
	orr	r1, r1, #851968
	str	r1, [r3, #32]
	.loc 1 176 5 is_stmt 1 view .LVU151
	.loc 1 176 10 is_stmt 0 view .LVU152
	ldr	r3, [r0]
	.loc 1 182 10 view .LVU153
	ldr	r1, .L8+12
	.loc 1 176 18 view .LVU154
	bic	r3, r3, #49152
	str	r3, [r0]
	.loc 1 177 5 is_stmt 1 view .LVU155
	.loc 1 177 10 is_stmt 0 view .LVU156
	ldr	r3, [r0]
	.loc 1 177 18 view .LVU157
	orr	r3, r3, #32768
	str	r3, [r0]
	.loc 1 178 5 is_stmt 1 view .LVU158
	.loc 1 178 15 is_stmt 0 view .LVU159
	ldr	r3, [r0, #32]
	.loc 1 178 19 view .LVU160
	bic	r3, r3, #-268435456
	str	r3, [r0, #32]
	.loc 1 179 5 is_stmt 1 view .LVU161
	.loc 1 179 15 is_stmt 0 view .LVU162
	ldr	r3, [r0, #32]
	.loc 1 179 19 view .LVU163
	orr	r3, r3, #-805306368
	str	r3, [r0, #32]
	.loc 1 182 5 is_stmt 1 view .LVU164
	.loc 1 182 10 is_stmt 0 view .LVU165
	ldr	r0, [r1]
	.loc 1 188 10 view .LVU166
	ldr	r3, .L8+16
	.loc 1 182 18 view .LVU167
	bic	r0, r0, #983040
	str	r0, [r1]
	.loc 1 183 5 is_stmt 1 view .LVU168
	.loc 1 183 10 is_stmt 0 view .LVU169
	ldr	r0, [r1]
	.loc 1 183 18 view .LVU170
	orr	r0, r0, #655360
	str	r0, [r1]
	.loc 1 184 5 is_stmt 1 view .LVU171
	.loc 1 184 15 is_stmt 0 view .LVU172
	ldr	r0, [r1, #36]
	.loc 1 184 19 view .LVU173
	bic	r0, r0, #255
	str	r0, [r1, #36]
	.loc 1 185 5 is_stmt 1 view .LVU174
	.loc 1 185 15 is_stmt 0 view .LVU175
	ldr	r0, [r1, #36]
	.loc 1 185 19 view .LVU176
	orr	r0, r0, #221
	str	r0, [r1, #36]
	.loc 1 188 5 is_stmt 1 view .LVU177
	.loc 1 188 10 is_stmt 0 view .LVU178
	ldr	r0, [r3]
	.loc 1 188 18 view .LVU179
	bic	r0, r0, #192
	str	r0, [r3]
	.loc 1 189 5 is_stmt 1 view .LVU180
	.loc 1 189 10 is_stmt 0 view .LVU181
	ldr	r0, [r3]
	.loc 1 189 18 view .LVU182
	orr	r0, r0, #128
	str	r0, [r3]
	.loc 1 190 5 is_stmt 1 view .LVU183
	.loc 1 190 15 is_stmt 0 view .LVU184
	ldr	r0, [r3, #32]
	.loc 1 190 19 view .LVU185
	bic	r0, r0, #61440
	str	r0, [r3, #32]
	.loc 1 191 5 is_stmt 1 view .LVU186
	.loc 1 191 15 is_stmt 0 view .LVU187
	ldr	r0, [r3, #32]
	.loc 1 191 19 view .LVU188
	orr	r0, r0, #53248
	str	r0, [r3, #32]
	.loc 1 194 5 is_stmt 1 view .LVU189
	.loc 1 194 10 is_stmt 0 view .LVU190
	ldr	r0, [r1, #2048]
	.loc 1 207 14 view .LVU191
	ldr	r3, .L8+20
	.loc 1 194 18 view .LVU192
	bic	r0, r0, #16128
	str	r0, [r1, #2048]
	.loc 1 195 5 is_stmt 1 view .LVU193
	.loc 1 195 10 is_stmt 0 view .LVU194
	ldr	r0, [r1, #2048]
	.loc 1 195 18 view .LVU195
	orr	r0, r0, #10752
	str	r0, [r1, #2048]
	.loc 1 196 5 is_stmt 1 view .LVU196
	.loc 1 196 15 is_stmt 0 view .LVU197
	ldr	r0, [r1, #2080]
	.loc 1 196 19 view .LVU198
	bic	r0, r0, #267386880
	bic	r0, r0, #983040
	str	r0, [r1, #2080]
	.loc 1 197 5 is_stmt 1 view .LVU199
	.loc 1 197 15 is_stmt 0 view .LVU200
	ldr	r0, [r1, #2080]
	.loc 1 197 19 view .LVU201
	orr	r0, r0, #231735296
	orr	r0, r0, #851968
	str	r0, [r1, #2080]
	.loc 1 200 5 is_stmt 1 view .LVU202
	.loc 1 200 8 is_stmt 0 view .LVU203
	ldr	r1, [r2, #52]
	.loc 1 200 18 view .LVU204
	orr	r1, r1, #1
	str	r1, [r2, #52]
	.loc 1 203 5 is_stmt 1 view .LVU205
	.loc 1 203 8 is_stmt 0 view .LVU206
	ldr	r1, [r2, #20]
	.loc 1 203 19 view .LVU207
	orr	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 204 5 is_stmt 1 view .LVU208
	.loc 1 204 8 is_stmt 0 view .LVU209
	ldr	r1, [r2, #20]
	.loc 1 207 14 view .LVU210
	movs	r4, #0
	.loc 1 204 19 view .LVU211
	bic	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 207 5 is_stmt 1 view .LVU212
	.loc 1 207 14 is_stmt 0 view .LVU213
	str	r4, [r3]
	.loc 1 208 5 is_stmt 1 view .LVU214
	.loc 1 208 9 is_stmt 0 view .LVU215
	ldr	r2, [r3]
	.loc 1 213 1 view .LVU216
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 208 14 view .LVU217
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 209 5 is_stmt 1 view .LVU218
	.loc 1 209 9 is_stmt 0 view .LVU219
	ldr	r2, [r3]
	.loc 1 209 14 view .LVU220
	orr	r2, r2, #64
	str	r2, [r3]
	.loc 1 210 5 is_stmt 1 view .LVU221
	.loc 1 210 9 is_stmt 0 view .LVU222
	ldr	r2, [r3]
	.loc 1 210 14 view .LVU223
	orr	r2, r2, #32
	str	r2, [r3]
	.loc 1 211 5 is_stmt 1 view .LVU224
	.loc 1 211 9 is_stmt 0 view .LVU225
	ldr	r2, [r3]
	.loc 1 211 14 view .LVU226
	orr	r2, r2, #2
	str	r2, [r3]
	.loc 1 213 1 view .LVU227
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073887232
	.word	1073872896
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1342504960
	.cfi_endproc
.LFE111:
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
.LFB112:
	.loc 1 254 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 255 5 view .LVU229
	.loc 1 256 5 view .LVU230
	.loc 1 257 5 view .LVU231
.LVL1:
	.loc 1 258 5 view .LVU232
	.loc 1 260 5 view .LVU233
	.loc 1 254 1 is_stmt 0 view .LVU234
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 260 5 view .LVU235
	ldr	r0, .L62
	bl	printUSART2
.LVL2:
	.loc 1 263 5 is_stmt 1 view .LVU236
	.loc 1 264 5 view .LVU237
	.loc 1 264 37 view .LVU238
	.loc 1 264 19 is_stmt 0 view .LVU239
	ldr	r1, .L62+4
	ldr	r3, [r1, #16]
	.loc 1 264 37 view .LVU240
	lsls	r5, r3, #24
	bmi	.L11
	.loc 1 264 47 view .LVU241
	ldr	r3, .L62+8
	b	.L13
.LVL3:
.L54:
	.loc 1 264 37 discriminator 2 view .LVU242
	subs	r3, r3, #1
.LVL4:
	.loc 1 264 37 discriminator 2 view .LVU243
	bcc	.L11
.LVL5:
.L13:
	.loc 1 264 51 is_stmt 1 view .LVU244
.LBB9:
.LBI9:
	.file 2 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h"
	.loc 2 269 57 view .LVU245
.LBB10:
	.loc 2 271 3 view .LVU246
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 is_stmt 0 view .LVU247
	.thumb
	.syntax unified
.LBE10:
.LBE9:
	.loc 1 264 37 is_stmt 1 view .LVU248
	.loc 1 264 19 is_stmt 0 view .LVU249
	ldr	r2, [r1, #16]
	.loc 1 264 37 view .LVU250
	lsls	r4, r2, #24
	bpl	.L54
	.loc 1 265 5 is_stmt 1 view .LVU251
	.loc 1 265 7 is_stmt 0 view .LVU252
	cmp	r3, #0
	beq	.L55
.LVL6:
.L11:
	.loc 1 267 5 is_stmt 1 view .LVU253
	.loc 1 271 18 is_stmt 0 view .LVU254
	ldr	r6, .L62+4
	.loc 1 267 5 view .LVU255
	ldr	r0, .L62+12
	bl	printUSART2
.LVL7:
	.loc 1 270 5 is_stmt 1 view .LVU256
	.loc 1 271 5 view .LVU257
	.loc 1 271 49 view .LVU258
	.loc 1 271 18 is_stmt 0 view .LVU259
	ldr	r1, [r6, #16]
	.loc 1 271 49 view .LVU260
	ands	r1, r1, #128
	beq	.L14
	.loc 1 271 46 view .LVU261
	ldr	r3, .L62+16
	.loc 1 274 23 view .LVU262
	ldr	r2, .L62+20
	.loc 1 279 25 view .LVU263
	ldr	r8, .L62+72
	.loc 1 280 25 view .LVU264
	ldr	r7, .L62+24
	.loc 1 281 25 view .LVU265
	ldr	lr, .L62+76
	.loc 1 284 29 view .LVU266
	ldr	ip, .L62+68
	.loc 1 257 14 view .LVU267
	movs	r4, #0
	b	.L16
.LVL8:
.L56:
	.loc 1 274 39 discriminator 1 view .LVU268
	subs	r3, r3, #1
.LVL9:
	.loc 1 274 39 discriminator 1 view .LVU269
	bcc	.L17
.LVL10:
.L16:
	.loc 1 274 39 is_stmt 1 discriminator 2 view .LVU270
	.loc 1 274 23 is_stmt 0 discriminator 2 view .LVU271
	ldr	r0, [r2, #16]
	.loc 1 274 39 discriminator 2 view .LVU272
	lsls	r0, r0, #25
	bpl	.L56
	.loc 1 275 9 is_stmt 1 view .LVU273
	.loc 1 275 11 is_stmt 0 view .LVU274
	cmp	r3, #0
	beq	.L18
.LVL11:
.L17:
	.loc 1 278 9 is_stmt 1 view .LVU275
	.loc 1 278 25 is_stmt 0 view .LVU276
	ldr	r0, [r2, #16]
	.loc 1 279 25 view .LVU277
	ldr	r1, [r8, #16]
	.loc 1 280 25 view .LVU278
	ldr	r5, [r7, #16]
	.loc 1 281 25 view .LVU279
	ldr	r5, [lr, #16]
	.loc 1 279 50 view .LVU280
	lsrs	r1, r1, #6
	.loc 1 279 56 view .LVU281
	and	r1, r1, #12
	.loc 1 278 16 view .LVU282
	ubfx	r0, r0, #9, #2
.LVL12:
	.loc 1 279 9 is_stmt 1 view .LVU283
	.loc 1 279 15 is_stmt 0 view .LVU284
	orrs	r0, r0, r1
.LVL13:
	.loc 1 280 9 is_stmt 1 view .LVU285
	.loc 1 281 9 view .LVU286
	.loc 1 284 9 view .LVU287
	.loc 1 281 63 is_stmt 0 view .LVU288
	and	r1, r5, #96
	.loc 1 284 29 view .LVU289
	orrs	r0, r0, r1
.LVL14:
	.loc 1 284 29 view .LVU290
	strh	r0, [ip, r4, lsl #1]	@ movhi
	mov	r5, ip
	.loc 1 284 25 view .LVU291
	adds	r4, r4, #1
.LVL15:
	.loc 1 287 9 is_stmt 1 view .LVU292
	.loc 1 287 15 is_stmt 0 view .LVU293
	b	.L20
.LVL16:
.L58:
	.loc 1 287 38 discriminator 1 view .LVU294
	cmp	r3, #0
	beq	.L57
	mov	r3, r0
.LVL17:
.L20:
	.loc 1 287 38 is_stmt 1 discriminator 2 view .LVU295
	.loc 1 287 22 is_stmt 0 discriminator 2 view .LVU296
	ldr	r1, [r2, #16]
	.loc 1 287 38 discriminator 2 view .LVU297
	lsls	r1, r1, #25
	.loc 1 287 48 discriminator 2 view .LVU298
	add	r0, r3, #-1
.LVL18:
	.loc 1 287 38 discriminator 2 view .LVU299
	bmi	.L58
.LVL19:
	.loc 1 271 49 is_stmt 1 view .LVU300
	.loc 1 271 18 is_stmt 0 view .LVU301
	ldr	r1, [r6, #16]
	.loc 1 271 49 view .LVU302
	lsls	r1, r1, #24
	bpl	.L22
	.loc 1 271 46 discriminator 1 view .LVU303
	subs	r1, r3, #1
.LVL20:
	.loc 1 271 36 discriminator 1 view .LVU304
	cbz	r3, .L52
	.loc 1 271 46 view .LVU305
	mov	r3, r1
.LVL21:
.L33:
	.loc 1 271 49 discriminator 2 view .LVU306
	cmp	r4, #19200
	bne	.L16
.L22:
	.loc 1 290 5 is_stmt 1 view .LVU307
	.loc 1 290 7 is_stmt 0 view .LVU308
	cmp	r3, #0
	beq	.L18
.LVL22:
.L52:
	.loc 1 292 5 is_stmt 1 view .LVU309
	ldr	r0, .L62+28
	mov	r1, r4
	bl	printUSART2
.LVL23:
	.loc 1 293 5 view .LVU310
	ldr	r0, .L62+32
	bl	printUSART2
.LVL24:
	.loc 1 299 1 view .LVU311
	ldr	r0, .L62+32
	bl	printUSART2
.LVL25:
	.loc 1 301 1 view .LVU312
.L31:
	.loc 1 302 5 view .LVU313
	ldr	r0, .L62+36
.LBB11:
	.loc 1 304 9 is_stmt 0 view .LVU314
	ldr	r7, .L62+40
.LBE11:
	.loc 1 302 5 view .LVU315
	bl	printUSART2
.LVL26:
	.loc 1 303 5 is_stmt 1 view .LVU316
.LBB12:
	.loc 1 303 10 view .LVU317
	.loc 1 303 28 view .LVU318
	.loc 1 303 14 is_stmt 0 view .LVU319
	movs	r6, #0
	b	.L27
.LVL27:
.L60:
	.loc 1 303 28 discriminator 3 view .LVU320
	cmp	r6, r4
	beq	.L59
.LVL28:
.L27:
	.loc 1 304 9 is_stmt 1 discriminator 4 view .LVU321
	.loc 1 304 43 is_stmt 0 discriminator 4 view .LVU322
	ldrh	r1, [r5, r6, lsl #1]
	.loc 1 304 9 discriminator 4 view .LVU323
	mov	r0, r7
	uxth	r1, r1
	.loc 1 303 41 discriminator 4 view .LVU324
	adds	r6, r6, #1
.LVL29:
	.loc 1 304 9 discriminator 4 view .LVU325
	bl	printUSART2
.LVL30:
	.loc 1 303 41 is_stmt 1 discriminator 4 view .LVU326
	.loc 1 303 28 discriminator 4 view .LVU327
	.loc 1 303 28 is_stmt 0 discriminator 4 view .LVU328
	cmp	r6, #10
	bne	.L60
.LBE12:
	.loc 1 306 5 is_stmt 1 view .LVU329
	ldr	r0, .L62+44
	bl	printUSART2
.LVL31:
	.loc 1 308 5 view .LVU330
	ldr	r0, .L62+48
	bl	printUSART2
.LVL32:
	.loc 1 309 5 view .LVU331
.LBB13:
	.loc 1 309 10 view .LVU332
	.loc 1 309 39 is_stmt 0 view .LVU333
	cmp	r4, #10
	mov	r6, r4
.LVL33:
	.loc 1 309 39 view .LVU334
	it	cc
	movcc	r6, #10
	subs	r6, r6, #10
.LVL34:
	.loc 1 309 47 is_stmt 1 view .LVU335
	cmp	r6, r4
	bcs	.L29
.LVL35:
.L28:
	.loc 1 310 9 is_stmt 0 view .LVU336
	ldr	r7, .L62+40
.L30:
.LVL36:
	.loc 1 310 9 is_stmt 1 discriminator 3 view .LVU337
	.loc 1 310 43 is_stmt 0 discriminator 3 view .LVU338
	ldrh	r1, [r5, r6, lsl #1]
	.loc 1 310 9 discriminator 3 view .LVU339
	mov	r0, r7
	uxth	r1, r1
	.loc 1 309 55 discriminator 3 view .LVU340
	adds	r6, r6, #1
.LVL37:
	.loc 1 310 9 discriminator 3 view .LVU341
	bl	printUSART2
.LVL38:
	.loc 1 309 55 is_stmt 1 discriminator 3 view .LVU342
	.loc 1 309 47 discriminator 3 view .LVU343
	cmp	r6, r4
	bne	.L30
.L29:
	.loc 1 309 47 is_stmt 0 discriminator 3 view .LVU344
.LBE13:
	.loc 1 312 5 is_stmt 1 view .LVU345
	ldr	r0, .L62+44
	bl	printUSART2
.LVL39:
	.loc 1 314 5 view .LVU346
	mov	r1, r4
	ldr	r0, .L62+52
	.loc 1 323 1 is_stmt 0 view .LVU347
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL40:
	.loc 1 314 5 view .LVU348
	b	printUSART2
.LVL41:
.L57:
	.cfi_restore_state
	.loc 1 271 49 is_stmt 1 view .LVU349
	.loc 1 271 18 is_stmt 0 view .LVU350
	ldr	r3, [r6, #16]
	.loc 1 271 49 view .LVU351
	lsls	r3, r3, #24
	bpl	.L52
	.loc 1 271 46 view .LVU352
	mvn	r3, #1
	b	.L33
.LVL42:
.L55:
	.loc 1 265 24 is_stmt 1 discriminator 1 view .LVU353
	.loc 1 323 1 is_stmt 0 discriminator 1 view .LVU354
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 265 24 discriminator 1 view .LVU355
	ldr	r0, .L62+56
	b	printUSART2
.LVL43:
.L18:
	.cfi_restore_state
	.loc 1 290 22 is_stmt 1 discriminator 1 view .LVU356
	ldr	r0, .L62+60
	bl	printUSART2
.LVL44:
	.loc 1 292 5 discriminator 1 view .LVU357
	ldr	r0, .L62+28
	mov	r1, r4
	bl	printUSART2
.LVL45:
	.loc 1 293 5 discriminator 1 view .LVU358
	ldr	r0, .L62+32
	bl	printUSART2
.LVL46:
	.loc 1 299 1 discriminator 1 view .LVU359
	ldr	r0, .L62+32
	bl	printUSART2
.LVL47:
	.loc 1 301 1 discriminator 1 view .LVU360
	.loc 1 301 4 is_stmt 0 discriminator 1 view .LVU361
	cbnz	r4, .L61
.LVL48:
.L25:
	.loc 1 317 5 is_stmt 1 view .LVU362
	.loc 1 323 1 is_stmt 0 view .LVU363
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 317 5 view .LVU364
	ldr	r0, .L62+64
	b	printUSART2
.LVL49:
.L59:
	.cfi_restore_state
	.loc 1 306 5 is_stmt 1 view .LVU365
	ldr	r0, .L62+44
	bl	printUSART2
.LVL50:
	.loc 1 308 5 view .LVU366
	ldr	r0, .L62+48
	bl	printUSART2
.LVL51:
	.loc 1 309 5 view .LVU367
.LBB14:
	.loc 1 309 10 view .LVU368
	.loc 1 309 47 view .LVU369
	.loc 1 309 14 is_stmt 0 view .LVU370
	movs	r6, #0
.LVL52:
	.loc 1 309 14 view .LVU371
	b	.L28
.LVL53:
.L14:
	.loc 1 309 14 view .LVU372
.LBE14:
	.loc 1 290 5 is_stmt 1 view .LVU373
	.loc 1 292 5 view .LVU374
	ldr	r0, .L62+28
	bl	printUSART2
.LVL54:
	.loc 1 293 5 view .LVU375
	ldr	r0, .L62+32
	bl	printUSART2
.LVL55:
	.loc 1 299 1 view .LVU376
	ldr	r0, .L62+32
	bl	printUSART2
.LVL56:
	.loc 1 301 1 view .LVU377
	b	.L25
.LVL57:
.L61:
	.loc 1 301 1 is_stmt 0 view .LVU378
	ldr	r5, .L62+68
	b	.L31
.L63:
	.align	2
.L62:
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
.LFE112:
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
.LFB113:
	.loc 1 326 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 328 5 view .LVU380
	.loc 1 326 1 is_stmt 0 view .LVU381
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 328 15 view .LVU382
	ldr	r6, .L78
	.loc 1 333 5 view .LVU383
	ldr	r0, .L78+4
	.loc 1 328 15 view .LVU384
	movs	r3, #31
	str	r3, [r6, #20]
	.loc 1 331 5 is_stmt 1 view .LVU385
	.loc 1 331 9 is_stmt 0 view .LVU386
	ldr	r3, [r6]
	.loc 1 331 14 view .LVU387
	orr	r3, r3, #1
	str	r3, [r6]
	.loc 1 333 5 is_stmt 1 view .LVU388
	bl	printUSART2
.LVL58:
	.loc 1 335 5 view .LVU389
	.loc 1 336 5 view .LVU390
	.loc 1 336 48 view .LVU391
	.loc 1 336 18 is_stmt 0 view .LVU392
	ldr	r3, [r6, #16]
	.loc 1 336 48 view .LVU393
	lsls	r2, r3, #31
	bmi	.L72
	.loc 1 336 58 view .LVU394
	ldr	r4, .L78+8
	ldr	r5, .L78+12
.LBB15:
	.loc 1 339 11 view .LVU395
	ldr	r7, .L78+16
	.loc 1 341 13 view .LVU396
	ldr	r8, .L78+32
	b	.L69
.LVL59:
.L75:
	.loc 1 343 9 is_stmt 1 view .LVU397
.LBB16:
.LBI16:
	.loc 2 269 57 view .LVU398
.LBB17:
	.loc 2 271 3 view .LVU399
.LBE17:
.LBE16:
	.loc 1 339 19 is_stmt 0 view .LVU400
	str	r3, [r5]
.LBB20:
.LBB18:
	.loc 2 271 3 view .LVU401
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 view .LVU402
	.thumb
	.syntax unified
.LBE18:
.LBE20:
.LBE15:
	.loc 1 336 48 is_stmt 1 view .LVU403
	.loc 1 336 18 is_stmt 0 view .LVU404
	ldr	r3, [r6, #16]
	.loc 1 336 48 view .LVU405
	lsls	r3, r3, #31
	bmi	.L68
.L76:
	.loc 1 336 48 discriminator 1 view .LVU406
	subs	r4, r4, #1
.LVL60:
	.loc 1 336 48 discriminator 1 view .LVU407
	bcc	.L65
.LVL61:
.L69:
.LBB22:
	.loc 1 338 9 is_stmt 1 view .LVU408
	.loc 1 339 9 view .LVU409
	.loc 1 339 19 is_stmt 0 view .LVU410
	ldr	r3, [r5]
	.loc 1 339 11 view .LVU411
	cmp	r3, r7
	.loc 1 339 19 view .LVU412
	add	r3, r3, #1
	.loc 1 339 11 view .LVU413
	bls	.L75
	.loc 1 340 13 is_stmt 1 view .LVU414
	.loc 1 340 21 is_stmt 0 view .LVU415
	movs	r3, #0
	str	r3, [r5]
	.loc 1 341 13 is_stmt 1 view .LVU416
	.loc 1 341 55 is_stmt 0 view .LVU417
	ldr	r1, [r6, #16]
	.loc 1 341 67 view .LVU418
	ldr	r2, [r6]
	.loc 1 341 13 view .LVU419
	mov	r0, r8
	bl	printUSART2
.LVL62:
	.loc 1 343 9 is_stmt 1 view .LVU420
.LBB21:
	.loc 2 269 57 view .LVU421
.LBB19:
	.loc 2 271 3 view .LVU422
	.syntax unified
@ 271 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cmInstr.h" 1
	nop
@ 0 "" 2
	.loc 2 271 3 is_stmt 0 view .LVU423
	.thumb
	.syntax unified
.LBE19:
.LBE21:
.LBE22:
	.loc 1 336 48 is_stmt 1 view .LVU424
	.loc 1 336 18 is_stmt 0 view .LVU425
	ldr	r3, [r6, #16]
	.loc 1 336 48 view .LVU426
	lsls	r3, r3, #31
	bpl	.L76
.L68:
	.loc 1 346 5 is_stmt 1 view .LVU427
	.loc 1 346 7 is_stmt 0 view .LVU428
	cbz	r4, .L77
.LVL63:
.L65:
	.loc 1 349 5 is_stmt 1 view .LVU429
	mov	r1, r4
	ldr	r0, .L78+20
	.loc 1 350 1 is_stmt 0 view .LVU430
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 349 5 view .LVU431
	b	printUSART2
.LVL64:
.L77:
	.cfi_restore_state
	.loc 1 347 9 is_stmt 1 view .LVU432
	ldr	r0, .L78+24
	bl	printUSART2
.LVL65:
	.loc 1 349 5 view .LVU433
	mov	r1, r4
	ldr	r0, .L78+20
	.loc 1 350 1 is_stmt 0 view .LVU434
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 349 5 view .LVU435
	b	printUSART2
.LVL66:
.L72:
	.cfi_restore_state
	.loc 1 335 14 view .LVU436
	ldr	r4, .L78+28
	b	.L65
.L79:
	.align	2
.L78:
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
.LFE113:
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
.LFB114:
	.loc 1 371 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 372 5 view .LVU438
	.loc 1 371 1 is_stmt 0 view .LVU439
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 372 14 view .LVU440
	ldr	r3, .L103
	ldr	r3, [r3, #16]
	.loc 1 372 8 view .LVU441
	lsls	r1, r3, #25
	.loc 1 372 38 is_stmt 1 view .LVU442
	ite	mi
	ldrmi	r0, .L103+4
	.loc 1 372 71 view .LVU443
	ldrpl	r0, .L103+8
	bl	printUSART2
.LVL67:
	.loc 1 373 5 view .LVU444
	.loc 1 373 14 is_stmt 0 view .LVU445
	ldr	r3, .L103
	ldr	r3, [r3, #16]
	.loc 1 373 8 view .LVU446
	lsls	r2, r3, #27
	.loc 1 373 38 is_stmt 1 view .LVU447
	ite	mi
	ldrmi	r0, .L103+12
	.loc 1 373 72 view .LVU448
	ldrpl	r0, .L103+16
	bl	printUSART2
.LVL68:
	.loc 1 374 5 view .LVU449
	.loc 1 374 14 is_stmt 0 view .LVU450
	ldr	r3, .L103+20
	ldr	r3, [r3, #16]
	.loc 1 374 8 view .LVU451
	lsls	r3, r3, #24
	.loc 1 374 38 is_stmt 1 view .LVU452
	ite	mi
	ldrmi	r0, .L103+24
	.loc 1 374 72 view .LVU453
	ldrpl	r0, .L103+28
	bl	printUSART2
.LVL69:
	.loc 1 376 5 view .LVU454
	.loc 1 376 14 is_stmt 0 view .LVU455
	ldr	r3, .L103
	ldr	r3, [r3, #16]
	.loc 1 376 8 view .LVU456
	lsls	r0, r3, #22
	.loc 1 376 38 is_stmt 1 view .LVU457
	ite	mi
	ldrmi	r0, .L103+32
	.loc 1 376 69 view .LVU458
	ldrpl	r0, .L103+36
	bl	printUSART2
.LVL70:
	.loc 1 377 5 view .LVU459
	.loc 1 377 14 is_stmt 0 view .LVU460
	ldr	r3, .L103
	ldr	r3, [r3, #16]
	.loc 1 377 8 view .LVU461
	lsls	r1, r3, #21
	.loc 1 377 39 is_stmt 1 view .LVU462
	ite	mi
	ldrmi	r0, .L103+40
	.loc 1 377 70 view .LVU463
	ldrpl	r0, .L103+44
	bl	printUSART2
.LVL71:
	.loc 1 378 5 view .LVU464
	.loc 1 378 14 is_stmt 0 view .LVU465
	ldr	r3, .L103+48
	ldr	r3, [r3, #16]
	.loc 1 378 8 view .LVU466
	lsls	r2, r3, #23
	.loc 1 378 38 is_stmt 1 view .LVU467
	ite	mi
	ldrmi	r0, .L103+52
	.loc 1 378 69 view .LVU468
	ldrpl	r0, .L103+56
	bl	printUSART2
.LVL72:
	.loc 1 379 5 view .LVU469
	.loc 1 379 14 is_stmt 0 view .LVU470
	ldr	r3, .L103+48
	ldr	r3, [r3, #16]
	.loc 1 379 8 view .LVU471
	lsls	r3, r3, #22
	.loc 1 379 38 is_stmt 1 view .LVU472
	ite	mi
	ldrmi	r0, .L103+60
	.loc 1 379 69 view .LVU473
	ldrpl	r0, .L103+64
	bl	printUSART2
.LVL73:
	.loc 1 380 5 view .LVU474
	.loc 1 380 14 is_stmt 0 view .LVU475
	ldr	r3, .L103+68
	ldr	r3, [r3, #16]
	.loc 1 380 8 view .LVU476
	lsls	r0, r3, #28
	.loc 1 380 38 is_stmt 1 view .LVU477
	ite	mi
	ldrmi	r0, .L103+72
	.loc 1 380 69 view .LVU478
	ldrpl	r0, .L103+76
	bl	printUSART2
.LVL74:
	.loc 1 381 5 view .LVU479
	.loc 1 381 14 is_stmt 0 view .LVU480
	ldr	r3, .L103+80
	ldr	r3, [r3, #16]
	.loc 1 381 8 view .LVU481
	lsls	r1, r3, #27
	.loc 1 381 38 is_stmt 1 view .LVU482
	ite	mi
	ldrmi	r0, .L103+84
	.loc 1 381 69 view .LVU483
	ldrpl	r0, .L103+88
	bl	printUSART2
.LVL75:
	.loc 1 382 5 view .LVU484
	.loc 1 382 14 is_stmt 0 view .LVU485
	ldr	r3, .L103+80
	ldr	r3, [r3, #16]
	.loc 1 382 8 view .LVU486
	lsls	r2, r3, #26
	.loc 1 382 38 is_stmt 1 view .LVU487
	ite	mi
	ldrmi	r0, .L103+92
	.loc 1 382 69 view .LVU488
	ldrpl	r0, .L103+96
	bl	printUSART2
.LVL76:
	.loc 1 383 5 view .LVU489
	.loc 1 383 14 is_stmt 0 view .LVU490
	ldr	r3, .L103+80
	ldr	r3, [r3, #16]
	.loc 1 383 8 view .LVU491
	lsls	r3, r3, #25
	bpl	.L101
	.loc 1 383 38 is_stmt 1 discriminator 1 view .LVU492
	.loc 1 384 1 is_stmt 0 discriminator 1 view .LVU493
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 383 38 discriminator 1 view .LVU494
	ldr	r0, .L103+100
	b	printUSART2
.LVL77:
.L101:
	.cfi_restore_state
	.loc 1 383 69 is_stmt 1 discriminator 2 view .LVU495
	.loc 1 384 1 is_stmt 0 discriminator 2 view .LVU496
	pop	{r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 383 69 discriminator 2 view .LVU497
	ldr	r0, .L103+104
	b	printUSART2
.LVL78:
.L104:
	.align	2
.L103:
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
.LFE114:
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
.LVL79:
.LFB115:
	.loc 1 390 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 391 5 view .LVU499
	.loc 1 390 1 is_stmt 0 view .LVU500
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
	.loc 1 390 1 view .LVU501
	mov	r10, r0
	.loc 1 391 22 view .LVU502
	bl	getSYSTIMER_TIM7
.LVL80:
	.loc 1 399 19 view .LVU503
	ldr	r9, .L109+12
	.loc 1 401 19 view .LVU504
	ldr	r8, .L109+16
	.loc 1 391 22 view .LVU505
	str	r0, [sp, #36]
.LVL81:
	.loc 1 392 5 is_stmt 1 view .LVU506
	.loc 1 392 10 is_stmt 0 view .LVU507
	b	.L106
.LVL82:
.L107:
	.loc 1 402 19 view .LVU508
	ldr	ip, .L109+20
	.loc 1 396 19 view .LVU509
	ldr	r3, .L109
	.loc 1 394 19 view .LVU510
	ldr	r1, [r5, #16]
	.loc 1 395 19 view .LVU511
	ldr	r2, [r5, #16]
	.loc 1 396 19 view .LVU512
	ldr	r3, [r3, #16]
	.loc 1 397 19 view .LVU513
	ldr	r4, [r5, #16]
	.loc 1 398 19 view .LVU514
	ldr	r5, [r5, #16]
	.loc 1 399 19 view .LVU515
	ldr	r6, [r9, #16]
	.loc 1 400 19 view .LVU516
	ldr	r7, [r9, #16]
	.loc 1 401 19 view .LVU517
	ldr	r0, [r8, #16]
	.loc 1 402 19 view .LVU518
	ldr	lr, [ip, #16]
	.loc 1 403 19 view .LVU519
	ldr	fp, [r8, #16]
	.loc 1 404 19 view .LVU520
	ldr	ip, [r8, #16]
	.loc 1 393 9 view .LVU521
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
	ldr	r0, .L109+4
	str	ip, [sp, #28]
	strd	r6, r7, [sp, #8]
	strd	r4, r5, [sp]
	ubfx	r3, r3, #7, #1
	ubfx	r2, r2, #4, #1
	ubfx	r1, r1, #6, #1
	bl	printUSART2
.LVL83:
	.loc 1 406 9 is_stmt 1 view .LVU522
	movs	r0, #1
	bl	delay_ms
.LVL84:
.L106:
	.loc 1 392 35 view .LVU523
	.loc 1 392 11 is_stmt 0 view .LVU524
	bl	getSYSTIMER_TIM7
.LVL85:
	.loc 1 393 9 is_stmt 1 view .LVU525
	.loc 1 392 29 is_stmt 0 view .LVU526
	ldr	r3, [sp, #36]
	.loc 1 394 19 view .LVU527
	ldr	r5, .L109+8
	.loc 1 392 29 view .LVU528
	subs	r0, r0, r3
	.loc 1 392 35 view .LVU529
	cmp	r0, r10
	bcc	.L107
	.loc 1 408 1 view .LVU530
	add	sp, sp, #44
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL86:
.L110:
	.loc 1 408 1 view .LVU531
	.align	2
.L109:
	.word	1073873920
	.word	.LC39
	.word	1073872896
	.word	1073874944
	.word	1073876992
	.word	1073875968
	.cfi_endproc
.LFE115:
	.size	OV7670_CheckPins_Fluctuation, .-OV7670_CheckPins_Fluctuation
	.align	1
	.p2align 2,,3
	.global	get_pixel
	.syntax unified
	.thumb
	.thumb_func
	.type	get_pixel, %function
get_pixel:
.LVL87:
.LFB116:
	.loc 1 413 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 414 5 view .LVU533
	.loc 1 414 37 is_stmt 0 view .LVU534
	lsrs	r3, r1, #1
	.loc 1 414 14 view .LVU535
	ldr	r0, [r0, r3, lsl #2]
.LVL88:
	.loc 1 415 5 is_stmt 1 view .LVU536
	.loc 1 416 9 view .LVU537
	.loc 1 415 8 is_stmt 0 view .LVU538
	lsls	r3, r1, #31
	.loc 1 416 16 view .LVU539
	ite	mi
	lsrmi	r0, r0, #16
.LVL89:
	.loc 1 418 9 is_stmt 1 view .LVU540
	.loc 1 418 16 is_stmt 0 view .LVU541
	uxthpl	r0, r0
	.loc 1 420 1 view .LVU542
	bx	lr
	.cfi_endproc
.LFE116:
	.size	get_pixel, .-get_pixel
	.align	1
	.p2align 2,,3
	.global	DCMI_Init_OV7670_SnapshotOnly
	.syntax unified
	.thumb
	.thumb_func
	.type	DCMI_Init_OV7670_SnapshotOnly, %function
DCMI_Init_OV7670_SnapshotOnly:
.LFB117:
	.loc 1 434 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 436 5 view .LVU544
	.loc 1 436 8 is_stmt 0 view .LVU545
	ldr	r2, .L115
	.loc 1 444 10 view .LVU546
	ldr	r3, .L115+4
	.loc 1 436 8 view .LVU547
	ldr	r1, [r2, #48]
	.loc 1 452 10 view .LVU548
	ldr	r0, .L115+8
	.loc 1 436 18 view .LVU549
	orr	r1, r1, #31
	str	r1, [r2, #48]
	.loc 1 444 5 is_stmt 1 view .LVU550
	.loc 1 444 10 is_stmt 0 view .LVU551
	ldr	r1, [r3]
	.loc 1 444 18 view .LVU552
	bic	r1, r1, #3932160
	bic	r1, r1, #13056
	str	r1, [r3]
	.loc 1 445 5 is_stmt 1 view .LVU553
	.loc 1 445 10 is_stmt 0 view .LVU554
	ldr	r1, [r3]
	.loc 1 445 18 view .LVU555
	orr	r1, r1, #2621440
	orr	r1, r1, #8704
	str	r1, [r3]
	.loc 1 446 5 is_stmt 1 view .LVU556
	.loc 1 446 15 is_stmt 0 view .LVU557
	ldr	r1, [r3, #36]
	.loc 1 446 19 view .LVU558
	bic	r1, r1, #4080
	str	r1, [r3, #36]
	.loc 1 447 5 is_stmt 1 view .LVU559
	.loc 1 447 15 is_stmt 0 view .LVU560
	ldr	r1, [r3, #36]
	.loc 1 447 19 view .LVU561
	orr	r1, r1, #3536
	str	r1, [r3, #36]
	.loc 1 448 5 is_stmt 1 view .LVU562
	.loc 1 448 15 is_stmt 0 view .LVU563
	ldr	r1, [r3, #32]
	.loc 1 448 19 view .LVU564
	bic	r1, r1, #251658240
	bic	r1, r1, #983040
	str	r1, [r3, #32]
	.loc 1 449 5 is_stmt 1 view .LVU565
	.loc 1 449 15 is_stmt 0 view .LVU566
	ldr	r1, [r3, #32]
	.loc 1 449 19 view .LVU567
	orr	r1, r1, #218103808
	orr	r1, r1, #851968
	str	r1, [r3, #32]
	.loc 1 452 5 is_stmt 1 view .LVU568
	.loc 1 452 10 is_stmt 0 view .LVU569
	ldr	r3, [r0]
	.loc 1 458 10 view .LVU570
	ldr	r1, .L115+12
	.loc 1 452 18 view .LVU571
	bic	r3, r3, #49152
	str	r3, [r0]
	.loc 1 453 5 is_stmt 1 view .LVU572
	.loc 1 453 10 is_stmt 0 view .LVU573
	ldr	r3, [r0]
	.loc 1 453 18 view .LVU574
	orr	r3, r3, #32768
	str	r3, [r0]
	.loc 1 454 5 is_stmt 1 view .LVU575
	.loc 1 454 15 is_stmt 0 view .LVU576
	ldr	r3, [r0, #32]
	.loc 1 454 19 view .LVU577
	bic	r3, r3, #-268435456
	str	r3, [r0, #32]
	.loc 1 455 5 is_stmt 1 view .LVU578
	.loc 1 455 15 is_stmt 0 view .LVU579
	ldr	r3, [r0, #32]
	.loc 1 455 19 view .LVU580
	orr	r3, r3, #-805306368
	str	r3, [r0, #32]
	.loc 1 458 5 is_stmt 1 view .LVU581
	.loc 1 458 10 is_stmt 0 view .LVU582
	ldr	r0, [r1]
	.loc 1 464 10 view .LVU583
	ldr	r3, .L115+16
	.loc 1 458 18 view .LVU584
	bic	r0, r0, #983040
	str	r0, [r1]
	.loc 1 459 5 is_stmt 1 view .LVU585
	.loc 1 459 10 is_stmt 0 view .LVU586
	ldr	r0, [r1]
	.loc 1 459 18 view .LVU587
	orr	r0, r0, #655360
	str	r0, [r1]
	.loc 1 460 5 is_stmt 1 view .LVU588
	.loc 1 460 15 is_stmt 0 view .LVU589
	ldr	r0, [r1, #36]
	.loc 1 460 19 view .LVU590
	bic	r0, r0, #255
	str	r0, [r1, #36]
	.loc 1 461 5 is_stmt 1 view .LVU591
	.loc 1 461 15 is_stmt 0 view .LVU592
	ldr	r0, [r1, #36]
	.loc 1 461 19 view .LVU593
	orr	r0, r0, #221
	str	r0, [r1, #36]
	.loc 1 464 5 is_stmt 1 view .LVU594
	.loc 1 464 10 is_stmt 0 view .LVU595
	ldr	r0, [r3]
	.loc 1 464 18 view .LVU596
	bic	r0, r0, #192
	str	r0, [r3]
	.loc 1 465 5 is_stmt 1 view .LVU597
	.loc 1 465 10 is_stmt 0 view .LVU598
	ldr	r0, [r3]
	.loc 1 465 18 view .LVU599
	orr	r0, r0, #128
	str	r0, [r3]
	.loc 1 466 5 is_stmt 1 view .LVU600
	.loc 1 466 15 is_stmt 0 view .LVU601
	ldr	r0, [r3, #32]
	.loc 1 466 19 view .LVU602
	bic	r0, r0, #61440
	str	r0, [r3, #32]
	.loc 1 467 5 is_stmt 1 view .LVU603
	.loc 1 467 15 is_stmt 0 view .LVU604
	ldr	r0, [r3, #32]
	.loc 1 467 19 view .LVU605
	orr	r0, r0, #53248
	str	r0, [r3, #32]
	.loc 1 470 5 is_stmt 1 view .LVU606
	.loc 1 470 10 is_stmt 0 view .LVU607
	ldr	r0, [r1, #2048]
	.loc 1 484 9 view .LVU608
	ldr	r3, .L115+20
	.loc 1 470 18 view .LVU609
	bic	r0, r0, #16128
	str	r0, [r1, #2048]
	.loc 1 471 5 is_stmt 1 view .LVU610
	.loc 1 471 10 is_stmt 0 view .LVU611
	ldr	r0, [r1, #2048]
	.loc 1 471 18 view .LVU612
	orr	r0, r0, #10752
	str	r0, [r1, #2048]
	.loc 1 472 5 is_stmt 1 view .LVU613
	.loc 1 472 15 is_stmt 0 view .LVU614
	ldr	r0, [r1, #2080]
	.loc 1 472 19 view .LVU615
	bic	r0, r0, #267386880
	bic	r0, r0, #983040
	str	r0, [r1, #2080]
	.loc 1 473 5 is_stmt 1 view .LVU616
	.loc 1 473 15 is_stmt 0 view .LVU617
	ldr	r0, [r1, #2080]
	.loc 1 473 19 view .LVU618
	orr	r0, r0, #231735296
	orr	r0, r0, #851968
	str	r0, [r1, #2080]
	.loc 1 476 5 is_stmt 1 view .LVU619
	.loc 1 476 8 is_stmt 0 view .LVU620
	ldr	r1, [r2, #52]
	.loc 1 476 18 view .LVU621
	orr	r1, r1, #1
	str	r1, [r2, #52]
	.loc 1 479 5 is_stmt 1 view .LVU622
	.loc 1 479 8 is_stmt 0 view .LVU623
	ldr	r1, [r2, #20]
	.loc 1 479 19 view .LVU624
	orr	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 480 5 is_stmt 1 view .LVU625
	.loc 1 480 8 is_stmt 0 view .LVU626
	ldr	r1, [r2, #20]
	.loc 1 480 19 view .LVU627
	bic	r1, r1, #1
	str	r1, [r2, #20]
	.loc 1 484 5 is_stmt 1 view .LVU628
	.loc 1 484 9 is_stmt 0 view .LVU629
	ldr	r2, [r3]
	.loc 1 484 14 view .LVU630
	orr	r2, r2, #128
	str	r2, [r3]
	.loc 1 485 5 is_stmt 1 view .LVU631
	.loc 1 485 9 is_stmt 0 view .LVU632
	ldr	r2, [r3]
	.loc 1 485 14 view .LVU633
	bic	r2, r2, #32
	str	r2, [r3]
	.loc 1 486 5 is_stmt 1 view .LVU634
	.loc 1 486 9 is_stmt 0 view .LVU635
	ldr	r2, [r3]
	.loc 1 486 14 view .LVU636
	orr	r2, r2, #64
	str	r2, [r3]
	.loc 1 487 5 is_stmt 1 view .LVU637
	.loc 1 487 9 is_stmt 0 view .LVU638
	ldr	r2, [r3]
	.loc 1 487 14 view .LVU639
	orr	r2, r2, #2
	str	r2, [r3]
	.loc 1 488 5 is_stmt 1 view .LVU640
	.loc 1 488 9 is_stmt 0 view .LVU641
	ldr	r2, [r3]
	.loc 1 488 14 view .LVU642
	orr	r2, r2, #16384
	str	r2, [r3]
	.loc 1 491 1 view .LVU643
	bx	lr
.L116:
	.align	2
.L115:
	.word	1073887232
	.word	1073872896
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1342504960
	.cfi_endproc
.LFE117:
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
.LFB118:
	.loc 1 555 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 557 5 view .LVU645
	.loc 1 557 15 is_stmt 0 view .LVU646
	ldr	r3, .L124
	.loc 1 560 17 view .LVU647
	ldr	r2, .L124+4
	.loc 1 557 15 view .LVU648
	mov	r1, #-1
	str	r1, [r3, #20]
	.loc 1 560 5 is_stmt 1 view .LVU649
	.loc 1 560 17 is_stmt 0 view .LVU650
	ldr	r3, [r2, #40]
	.loc 1 560 22 view .LVU651
	bic	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 561 5 is_stmt 1 view .LVU652
.L118:
	.loc 1 561 11 discriminator 1 view .LVU653
	.loc 1 561 23 is_stmt 0 discriminator 1 view .LVU654
	ldr	r3, [r2, #40]
	.loc 1 561 11 discriminator 1 view .LVU655
	lsls	r1, r3, #31
	bmi	.L118
	.loc 1 564 5 is_stmt 1 view .LVU656
	.loc 1 564 24 is_stmt 0 view .LVU657
	mov	r3, #9600
	str	r3, [r2, #44]
	.loc 1 567 5 is_stmt 1 view .LVU658
	.loc 1 567 17 is_stmt 0 view .LVU659
	ldr	r3, [r2, #40]
	.loc 1 570 9 view .LVU660
	ldr	r0, .L124
	.loc 1 575 18 view .LVU661
	ldr	r1, .L124+4
	.loc 1 567 22 view .LVU662
	orr	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 570 5 is_stmt 1 view .LVU663
	.loc 1 570 9 is_stmt 0 view .LVU664
	ldr	r2, [r0]
	.loc 1 575 11 view .LVU665
	ldr	r3, .L124+8
	.loc 1 570 14 view .LVU666
	orr	r2, r2, #1
	str	r2, [r0]
	.loc 1 573 5 is_stmt 1 view .LVU667
.LVL90:
	.loc 1 575 5 view .LVU668
	.loc 1 575 11 is_stmt 0 view .LVU669
	b	.L119
.LVL91:
.L120:
	.loc 1 576 11 view .LVU670
	subs	r3, r3, #1
	beq	.L123
.L119:
	.loc 1 576 9 is_stmt 1 view .LVU671
	.loc 1 575 12 view .LVU672
	.loc 1 575 18 is_stmt 0 view .LVU673
	ldr	r2, [r1]
	.loc 1 575 12 view .LVU674
	lsls	r2, r2, #20
	bpl	.L120
	.loc 1 583 5 is_stmt 1 view .LVU675
	.loc 1 583 9 is_stmt 0 view .LVU676
	ldr	r3, [r1, #8]
	.loc 1 584 5 view .LVU677
	ldr	r0, .L124+12
	.loc 1 583 17 view .LVU678
	orr	r3, r3, #2048
	str	r3, [r1, #8]
	.loc 1 584 5 is_stmt 1 view .LVU679
	b	printUSART2
.LVL92:
.L123:
	.loc 1 577 13 view .LVU680
	ldr	r0, .L124+16
	b	printUSART2
.LVL93:
.L125:
	.align	2
.L124:
	.word	1342504960
	.word	1073898496
	.word	5000000
	.word	.LC41
	.word	.LC40
	.cfi_endproc
.LFE118:
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
.LFB119:
	.loc 1 592 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 593 5 view .LVU682
	.loc 1 592 1 is_stmt 0 view .LVU683
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 593 5 view .LVU684
	ldr	r0, .L138
	ldr	r4, .L138+4
	.loc 1 599 17 view .LVU685
	ldr	r5, .L138+8
.LBB23:
	.loc 1 604 17 view .LVU686
	ldr	r6, .L138+12
.LBE23:
	.loc 1 593 5 view .LVU687
	bl	printUSART2
.LVL94:
	.loc 1 595 5 is_stmt 1 view .LVU688
	.loc 1 596 5 view .LVU689
	.loc 1 596 11 view .LVU690
	.loc 1 596 11 is_stmt 0 view .LVU691
	b	.L128
.LVL95:
.L127:
	.loc 1 596 11 is_stmt 1 view .LVU692
	subs	r4, r4, #1
	beq	.L137
.L128:
	.loc 1 599 9 view .LVU693
.LBB24:
	.loc 1 601 13 view .LVU694
.LBE24:
	.loc 1 599 17 is_stmt 0 view .LVU695
	ldr	r3, [r5, #4]
	.loc 1 599 12 view .LVU696
	lsls	r3, r3, #31
	bpl	.L127
.LBB25:
	.loc 1 601 22 view .LVU697
	ldr	r1, [r5, #40]
.LVL96:
	.loc 1 602 13 is_stmt 1 view .LVU698
	.loc 1 602 15 is_stmt 0 view .LVU699
	cmp	r1, #0
	beq	.L127
	.loc 1 604 17 is_stmt 1 view .LVU700
	mov	r0, r6
	bl	printUSART2
.LVL97:
	.loc 1 604 17 is_stmt 0 view .LVU701
.LBE25:
	.loc 1 596 11 is_stmt 1 view .LVU702
	subs	r4, r4, #1
	bne	.L128
.LVL98:
.L137:
	.loc 1 609 5 view .LVU703
	.loc 1 610 1 is_stmt 0 view .LVU704
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 609 5 view .LVU705
	ldr	r0, .L138+16
	b	printUSART2
.LVL99:
.L139:
	.align	2
.L138:
	.word	.LC42
	.word	500000
	.word	1342504960
	.word	.LC43
	.word	.LC44
	.cfi_endproc
.LFE119:
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
.LFB120:
	.loc 1 617 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 618 5 view .LVU707
	.loc 1 617 1 is_stmt 0 view .LVU708
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 618 5 view .LVU709
	ldr	r0, .L151
	bl	printUSART2
.LVL100:
	.loc 1 621 5 is_stmt 1 view .LVU710
	ldr	r0, .L151+4
	bl	printUSART2
.LVL101:
	.loc 1 622 5 view .LVU711
	.loc 1 622 19 is_stmt 0 view .LVU712
	ldr	r2, .L151+8
.L141:
	.loc 1 622 12 is_stmt 1 discriminator 1 view .LVU713
	.loc 1 622 19 is_stmt 0 discriminator 1 view .LVU714
	ldr	r3, [r2, #16]
	.loc 1 622 12 discriminator 1 view .LVU715
	lsls	r0, r3, #24
	bpl	.L141
	.loc 1 623 5 is_stmt 1 view .LVU716
	ldr	r0, .L151+12
	bl	printUSART2
.LVL102:
	.loc 1 626 5 view .LVU717
	.loc 1 626 17 is_stmt 0 view .LVU718
	ldr	r2, .L151+16
	ldr	r3, [r2, #40]
	.loc 1 626 22 view .LVU719
	bic	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 627 5 is_stmt 1 view .LVU720
.L142:
	.loc 1 627 12 discriminator 1 view .LVU721
	.loc 1 627 24 is_stmt 0 discriminator 1 view .LVU722
	ldr	r3, [r2, #40]
	.loc 1 627 12 discriminator 1 view .LVU723
	lsls	r1, r3, #31
	bmi	.L142
	.loc 1 629 5 is_stmt 1 view .LVU724
	.loc 1 629 24 is_stmt 0 view .LVU725
	mov	r3, #9600
	str	r3, [r2, #44]
	.loc 1 630 5 is_stmt 1 view .LVU726
	.loc 1 630 17 is_stmt 0 view .LVU727
	ldr	r3, [r2, #40]
	.loc 1 632 5 view .LVU728
	ldr	r0, .L151+20
	.loc 1 630 22 view .LVU729
	orr	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 632 5 is_stmt 1 view .LVU730
	bl	printUSART2
.LVL103:
	.loc 1 635 5 view .LVU731
	.loc 1 635 9 is_stmt 0 view .LVU732
	ldr	r2, .L151+24
	.loc 1 636 5 view .LVU733
	ldr	r0, .L151+28
	.loc 1 635 9 view .LVU734
	ldr	r3, [r2]
	.loc 1 635 14 view .LVU735
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 636 5 is_stmt 1 view .LVU736
	bl	printUSART2
.LVL104:
	.loc 1 639 5 view .LVU737
	.loc 1 640 5 view .LVU738
	.loc 1 640 11 is_stmt 0 view .LVU739
	ldr	r3, .L151+32
	.loc 1 640 18 view .LVU740
	ldr	r1, .L151+16
	.loc 1 640 11 view .LVU741
	b	.L143
.LVL105:
.L144:
	.loc 1 642 12 view .LVU742
	subs	r3, r3, #1
	beq	.L150
.L143:
	.loc 1 642 9 is_stmt 1 view .LVU743
	.loc 1 640 12 view .LVU744
	.loc 1 640 18 is_stmt 0 view .LVU745
	ldr	r2, [r1]
	.loc 1 640 12 view .LVU746
	lsls	r2, r2, #20
	bpl	.L144
	.loc 1 650 5 is_stmt 1 view .LVU747
	.loc 1 650 9 is_stmt 0 view .LVU748
	ldr	r3, [r1, #8]
	.loc 1 652 5 view .LVU749
	ldr	r0, .L151+36
	.loc 1 650 17 view .LVU750
	orr	r3, r3, #2048
	str	r3, [r1, #8]
	.loc 1 652 5 is_stmt 1 view .LVU751
	.loc 1 653 1 is_stmt 0 view .LVU752
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 652 5 view .LVU753
	b	printUSART2
.LVL106:
.L150:
	.cfi_restore_state
	.loc 1 644 13 is_stmt 1 view .LVU754
	.loc 1 653 1 is_stmt 0 view .LVU755
	pop	{r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 644 13 view .LVU756
	ldr	r0, .L151+40
	b	printUSART2
.LVL107:
.L152:
	.align	2
.L151:
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
.LFE120:
	.size	OV7670_CaptureSnapshot_VSYNC, .-OV7670_CaptureSnapshot_VSYNC
	.align	1
	.p2align 2,,3
	.global	OV7670_PrepareForCapture
	.syntax unified
	.thumb
	.thumb_func
	.type	OV7670_PrepareForCapture, %function
OV7670_PrepareForCapture:
.LFB121:
	.loc 1 658 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 660 5 view .LVU758
	.loc 1 660 14 is_stmt 0 view .LVU759
	ldr	r3, .L156
	movs	r2, #0
	str	r2, [r3]
	.loc 1 661 5 is_stmt 1 view .LVU760
	.loc 1 661 14 is_stmt 0 view .LVU761
	str	r2, [r3, #4]
	.loc 1 662 5 is_stmt 1 view .LVU762
	.loc 1 662 15 is_stmt 0 view .LVU763
	str	r2, [r3, #12]
	.loc 1 663 5 is_stmt 1 view .LVU764
	.loc 1 663 9 is_stmt 0 view .LVU765
	ldr	r1, [r3]
	.loc 1 666 17 view .LVU766
	ldr	r2, .L156+4
	.loc 1 663 14 view .LVU767
	orr	r1, r1, #16384
	orr	r1, r1, #2
	str	r1, [r3]
	.loc 1 666 5 is_stmt 1 view .LVU768
	.loc 1 666 17 is_stmt 0 view .LVU769
	ldr	r3, [r2, #40]
	.loc 1 666 22 view .LVU770
	bic	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 667 5 is_stmt 1 view .LVU771
.L154:
	.loc 1 667 11 discriminator 1 view .LVU772
	.loc 1 667 23 is_stmt 0 discriminator 1 view .LVU773
	ldr	r3, [r2, #40]
	.loc 1 667 11 discriminator 1 view .LVU774
	lsls	r3, r3, #31
	bmi	.L154
	.loc 1 668 5 is_stmt 1 view .LVU775
	.loc 1 668 9 is_stmt 0 view .LVU776
	ldr	r3, [r2, #8]
	.loc 1 669 24 view .LVU777
	mov	r1, #9600
	.loc 1 668 17 view .LVU778
	orr	r3, r3, #2048
	str	r3, [r2, #8]
	.loc 1 669 5 is_stmt 1 view .LVU779
	.loc 1 669 24 is_stmt 0 view .LVU780
	str	r1, [r2, #44]
	.loc 1 670 5 is_stmt 1 view .LVU781
	.loc 1 670 17 is_stmt 0 view .LVU782
	ldr	r3, [r2, #40]
	.loc 1 670 22 view .LVU783
	orr	r3, r3, #1
	str	r3, [r2, #40]
	.loc 1 673 5 is_stmt 1 view .LVU784
	b	OV7670_InitQQVGA_RGB565
.LVL108:
.L157:
	.align	2
.L156:
	.word	1342504960
	.word	1073898496
	.cfi_endproc
.LFE121:
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
.LVL109:
.LFB122:
	.loc 1 717 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 718 5 view .LVU786
	.loc 1 717 1 is_stmt 0 view .LVU787
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 718 5 view .LVU788
	ldr	r0, .L168
.LVL110:
	.loc 1 721 17 view .LVU789
	ldr	r5, .L168+4
	.loc 1 717 1 view .LVU790
	mov	r4, r1
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 718 5 view .LVU791
	bl	printUSART2
.LVL111:
	.loc 1 721 5 is_stmt 1 view .LVU792
	.loc 1 728 36 is_stmt 0 view .LVU793
	lsrs	r4, r4, #1
	.loc 1 721 17 view .LVU794
	mov	r3, #3904
	str	r3, [r5, #8]
	.loc 1 728 5 is_stmt 1 view .LVU795
	.loc 1 728 24 is_stmt 0 view .LVU796
	str	r4, [r5, #44]
	.loc 1 731 5 is_stmt 1 view .LVU797
	.loc 1 731 17 is_stmt 0 view .LVU798
	ldr	r3, [r5, #40]
	.loc 1 737 9 view .LVU799
	ldr	r2, .L168+8
	.loc 1 742 14 view .LVU800
	ldr	r4, .L168+12
	.loc 1 731 22 view .LVU801
	orr	r3, r3, #1
	str	r3, [r5, #40]
	.loc 1 737 5 is_stmt 1 view .LVU802
	.loc 1 737 9 is_stmt 0 view .LVU803
	ldr	r3, [r2]
	.loc 1 737 14 view .LVU804
	orr	r3, r3, #3
	str	r3, [r2]
	.loc 1 742 5 is_stmt 1 view .LVU805
.LVL112:
	.loc 1 743 5 view .LVU806
	.loc 1 743 11 is_stmt 0 view .LVU807
	b	.L160
.LVL113:
.L167:
	.loc 1 743 43 discriminator 1 view .LVU808
	subs	r4, r4, #1
.LVL114:
	.loc 1 743 43 discriminator 1 view .LVU809
	bcc	.L163
	.loc 1 745 12 view .LVU810
	cmp	r4, #0
	beq	.L166
.LVL115:
.L160:
	.loc 1 745 9 is_stmt 1 view .LVU811
	.loc 1 743 43 view .LVU812
	.loc 1 743 18 is_stmt 0 view .LVU813
	ldr	r3, [r5]
	.loc 1 743 43 view .LVU814
	lsls	r3, r3, #20
	bpl	.L167
	.loc 1 750 5 is_stmt 1 view .LVU815
	.loc 1 750 8 is_stmt 0 view .LVU816
	cbnz	r4, .L163
	.loc 1 751 9 is_stmt 1 view .LVU817
	ldr	r0, .L168+16
	bl	printUSART2
.LVL116:
	.loc 1 752 9 view .LVU818
	.loc 1 752 63 is_stmt 0 view .LVU819
	ldr	r1, [r5, #40]
	.loc 1 752 9 view .LVU820
	ldr	r0, .L168+20
	.loc 1 752 81 view .LVU821
	ldr	r2, [r5, #44]
	.loc 1 752 9 view .LVU822
	bl	printUSART2
.LVL117:
	.loc 1 753 9 is_stmt 1 view .LVU823
	.loc 1 753 56 is_stmt 0 view .LVU824
	ldr	r3, .L168+8
	.loc 1 753 9 view .LVU825
	ldr	r0, .L168+24
	.loc 1 753 56 view .LVU826
	ldr	r1, [r3]
	.loc 1 753 66 view .LVU827
	ldr	r2, [r3, #4]
	.loc 1 773 1 view .LVU828
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL118:
	.loc 1 753 9 view .LVU829
	b	printUSART2
.LVL119:
.L163:
	.cfi_restore_state
	.loc 1 758 5 is_stmt 1 view .LVU830
	.loc 1 758 17 is_stmt 0 view .LVU831
	ldr	r3, .L168+4
	.loc 1 761 5 view .LVU832
	ldr	r0, .L168+28
	.loc 1 758 17 view .LVU833
	mov	r2, #2048
	str	r2, [r3, #8]
	.loc 1 761 5 is_stmt 1 view .LVU834
	.loc 1 761 57 is_stmt 0 view .LVU835
	ldr	r1, [r3, #44]
	.loc 1 761 5 view .LVU836
	bl	printUSART2
.LVL120:
	.loc 1 764 5 is_stmt 1 view .LVU837
	.loc 1 764 14 is_stmt 0 view .LVU838
	ldr	r3, .L168+8
	.loc 1 765 5 view .LVU839
	ldr	r0, .L168+32
	.loc 1 764 14 view .LVU840
	ldr	r1, [r3, #4]
.LVL121:
	.loc 1 765 5 is_stmt 1 view .LVU841
	and	r3, r1, #1
	str	r3, [sp]
	ubfx	r2, r1, #2, #1
	ubfx	r3, r1, #1, #1
	bl	printUSART2
.LVL122:
	.loc 1 772 5 view .LVU842
	ldr	r0, .L168+36
	.loc 1 773 1 is_stmt 0 view .LVU843
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 772 5 view .LVU844
	b	printUSART2
.LVL123:
.L166:
	.cfi_restore_state
	.loc 1 746 13 is_stmt 1 view .LVU845
	ldr	r0, .L168+40
	bl	printUSART2
.LVL124:
	b	.L160
.L169:
	.align	2
.L168:
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
.LFE122:
	.size	DCMI_snapshot_debug, .-DCMI_snapshot_debug
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
.LVL125:
.LFB123:
	.loc 1 777 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 778 5 view .LVU847
	.loc 1 777 1 is_stmt 0 view .LVU848
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 778 5 view .LVU849
	ldr	r0, .L179
.LVL126:
	.loc 1 777 1 view .LVU850
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 1 777 1 view .LVU851
	mov	r4, r1
	.loc 1 778 5 view .LVU852
	bl	printUSART2
.LVL127:
	.loc 1 781 5 is_stmt 1 view .LVU853
	.loc 1 781 17 is_stmt 0 view .LVU854
	ldr	r0, .L179+4
	.loc 1 794 9 view .LVU855
	ldr	r1, .L179+8
	.loc 1 781 17 view .LVU856
	mov	r3, #3904
	.loc 1 788 36 view .LVU857
	lsrs	r4, r4, #1
	.loc 1 781 17 view .LVU858
	str	r3, [r0, #8]
	.loc 1 788 5 is_stmt 1 view .LVU859
	.loc 1 788 24 is_stmt 0 view .LVU860
	str	r4, [r0, #44]
	.loc 1 791 5 is_stmt 1 view .LVU861
	.loc 1 791 17 is_stmt 0 view .LVU862
	ldr	r3, [r0, #40]
	.loc 1 791 22 view .LVU863
	orr	r3, r3, #1
	str	r3, [r0, #40]
	.loc 1 794 5 is_stmt 1 view .LVU864
	.loc 1 794 9 is_stmt 0 view .LVU865
	ldr	r2, [r1]
	.loc 1 797 14 view .LVU866
	ldr	r3, .L179+12
	.loc 1 794 14 view .LVU867
	orr	r2, r2, #3
	str	r2, [r1]
	.loc 1 797 5 is_stmt 1 view .LVU868
.LVL128:
	.loc 1 798 5 view .LVU869
	.loc 1 798 11 is_stmt 0 view .LVU870
	b	.L172
.LVL129:
.L177:
	.loc 1 798 43 discriminator 1 view .LVU871
	subs	r3, r3, #1
.LVL130:
	.loc 1 798 43 discriminator 1 view .LVU872
	bcc	.L173
.LVL131:
.L172:
	.loc 1 798 58 is_stmt 1 discriminator 2 view .LVU873
	.loc 1 798 43 discriminator 2 view .LVU874
	.loc 1 798 18 is_stmt 0 discriminator 2 view .LVU875
	ldr	r2, [r0]
	.loc 1 798 43 discriminator 2 view .LVU876
	lsls	r2, r2, #20
	bpl	.L177
	.loc 1 800 5 is_stmt 1 view .LVU877
	.loc 1 800 8 is_stmt 0 view .LVU878
	cmp	r3, #0
	beq	.L178
.LVL132:
.L173:
	.loc 1 806 5 is_stmt 1 view .LVU879
	.loc 1 806 17 is_stmt 0 view .LVU880
	ldr	r6, .L179+4
	.loc 1 808 9 view .LVU881
	ldr	r4, .L179+8
	.loc 1 811 5 view .LVU882
	ldr	r0, .L179+16
	.loc 1 806 17 view .LVU883
	mov	r3, #2048
	str	r3, [r6, #8]
	.loc 1 808 5 is_stmt 1 view .LVU884
	.loc 1 808 9 is_stmt 0 view .LVU885
	ldr	r3, [r4]
	.loc 1 808 14 view .LVU886
	bic	r3, r3, #1
	str	r3, [r4]
	.loc 1 811 5 is_stmt 1 view .LVU887
	.loc 1 811 57 is_stmt 0 view .LVU888
	ldr	r1, [r6, #44]
	.loc 1 811 5 view .LVU889
	bl	printUSART2
.LVL133:
	.loc 1 814 5 is_stmt 1 view .LVU890
	.loc 1 814 14 is_stmt 0 view .LVU891
	ldr	r1, [r4, #4]
.LVL134:
	.loc 1 815 5 is_stmt 1 view .LVU892
	.loc 1 815 14 is_stmt 0 view .LVU893
	ldr	r5, [r4, #8]
.LVL135:
	.loc 1 816 5 is_stmt 1 view .LVU894
	.loc 1 818 5 is_stmt 0 view .LVU895
	ldr	r0, .L179+20
	.loc 1 816 14 view .LVU896
	ldr	r4, [r4, #16]
.LVL136:
	.loc 1 818 5 is_stmt 1 view .LVU897
	and	r3, r1, #1
	str	r3, [sp]
	ubfx	r2, r1, #2, #1
	ubfx	r3, r1, #1, #1
	bl	printUSART2
.LVL137:
	.loc 1 824 5 view .LVU898
	ubfx	r2, r5, #4, #1
	ubfx	r3, r5, #3, #1
	strd	r3, r2, [sp, #4]
	ubfx	r2, r5, #2, #1
	ubfx	r3, r5, #1, #1
	str	r2, [sp]
	mov	r1, r5
	and	r2, r5, #1
	ldr	r0, .L179+24
	bl	printUSART2
.LVL138:
	.loc 1 832 5 view .LVU899
	ubfx	r2, r4, #4, #1
	ubfx	r3, r4, #3, #1
	ubfx	r0, r4, #2, #1
	strd	r3, r2, [sp, #4]
	mov	r1, r4
	ubfx	r3, r4, #1, #1
	and	r2, r4, #1
	str	r0, [sp]
	ldr	r0, .L179+28
	bl	printUSART2
.LVL139:
	.loc 1 841 5 view .LVU900
	.loc 1 842 29 is_stmt 0 view .LVU901
	ldr	r1, [r6, #40]
	.loc 1 841 5 view .LVU902
	ldr	r0, .L179+32
	.loc 1 842 47 view .LVU903
	ldr	r2, [r6, #44]
	.loc 1 841 5 view .LVU904
	bl	printUSART2
.LVL140:
	.loc 1 843 5 is_stmt 1 view .LVU905
	.loc 1 843 44 is_stmt 0 view .LVU906
	ldr	r1, [r6]
	.loc 1 843 5 view .LVU907
	ldr	r0, .L179+36
	bl	printUSART2
.LVL141:
	.loc 1 845 5 is_stmt 1 view .LVU908
	ldr	r0, .L179+40
	.loc 1 846 1 is_stmt 0 view .LVU909
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
.LVL142:
	.loc 1 845 5 view .LVU910
	b	printUSART2
.LVL143:
.L178:
	.cfi_restore_state
	.loc 1 801 9 is_stmt 1 view .LVU911
	ldr	r0, .L179+44
	.loc 1 846 1 is_stmt 0 view .LVU912
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 845 5 view .LVU913
	b	printUSART2
.LVL144:
.L180:
	.loc 1 845 5 view .LVU914
	.align	2
.L179:
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
.LFE123:
	.size	DCMI_snapshot_debug_full, .-DCMI_snapshot_debug_full
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
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 4 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "DCMI/../delay/delay.h"
	.file 6 "DCMI/../usart/usart.h"
	.file 7 "DCMI/dcmi.h"
	.file 8 "DCMI/../ov7670/ov7670.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe7c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1d
	.4byte	.LASF97
	.4byte	.LASF98
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.4byte	0x90
	.2byte	0x4aff
	.byte	0
	.uleb128 0xf
	.4byte	0x97
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x7
	.byte	0xd
	.byte	0x1a
	.4byte	0xa8
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xc
	.byte	0x2c
	.2byte	0x1c4
	.4byte	0x14a
	.uleb128 0x4
	.ascii	"CR\000"
	.2byte	0x1c6
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.ascii	"SR\000"
	.2byte	0x1c7
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF13
	.2byte	0x1c8
	.4byte	0x76
	.byte	0x8
	.uleb128 0x4
	.ascii	"IER\000"
	.2byte	0x1c9
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF14
	.2byte	0x1ca
	.4byte	0x76
	.byte	0x10
	.uleb128 0x4
	.ascii	"ICR\000"
	.2byte	0x1cb
	.4byte	0x76
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF15
	.2byte	0x1cc
	.4byte	0x76
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF16
	.2byte	0x1cd
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF17
	.2byte	0x1ce
	.4byte	0x76
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF18
	.2byte	0x1cf
	.4byte	0x76
	.byte	0x24
	.uleb128 0x4
	.ascii	"DR\000"
	.2byte	0x1d0
	.4byte	0x76
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.2byte	0x1d1
	.4byte	0xc0
	.uleb128 0xc
	.byte	0x18
	.2byte	0x1d7
	.4byte	0x1a5
	.uleb128 0x4
	.ascii	"CR\000"
	.2byte	0x1d9
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.2byte	0x1da
	.4byte	0x76
	.byte	0x4
	.uleb128 0x4
	.ascii	"PAR\000"
	.2byte	0x1db
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x1dc
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF22
	.2byte	0x1dd
	.4byte	0x76
	.byte	0x10
	.uleb128 0x4
	.ascii	"FCR\000"
	.2byte	0x1de
	.4byte	0x76
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.2byte	0x1df
	.4byte	0x155
	.uleb128 0xc
	.byte	0x10
	.2byte	0x1e1
	.4byte	0x1e9
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x1e3
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.2byte	0x1e4
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF26
	.2byte	0x1e5
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF27
	.2byte	0x1e6
	.4byte	0x76
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.2byte	0x1e7
	.4byte	0x1b0
	.uleb128 0x12
	.4byte	0x6b
	.4byte	0x203
	.uleb128 0x16
	.4byte	0x90
	.byte	0
	.uleb128 0xc
	.byte	0x28
	.2byte	0x28e
	.4byte	0x284
	.uleb128 0x2
	.4byte	.LASF29
	.2byte	0x290
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.2byte	0x291
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF31
	.2byte	0x292
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF32
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
	.uleb128 0x2
	.4byte	.LASF33
	.2byte	0x296
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x297
	.4byte	0x5f
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF35
	.2byte	0x298
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x4
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x293
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	0x76
	.4byte	0x293
	.uleb128 0x16
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.4byte	0x284
	.uleb128 0xd
	.4byte	.LASF36
	.2byte	0x29a
	.4byte	0x203
	.uleb128 0xc
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x413
	.uleb128 0x4
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.2byte	0x2e0
	.4byte	0x76
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF38
	.2byte	0x2e1
	.4byte	0x76
	.byte	0x8
	.uleb128 0x4
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF39
	.2byte	0x2e3
	.4byte	0x76
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF40
	.2byte	0x2e4
	.4byte	0x76
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF41
	.2byte	0x2e5
	.4byte	0x76
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF42
	.2byte	0x2e6
	.4byte	0x6b
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF43
	.2byte	0x2e7
	.4byte	0x76
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x2e8
	.4byte	0x76
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x2e9
	.4byte	0x1f4
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x2ea
	.4byte	0x76
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x2eb
	.4byte	0x76
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x2ec
	.4byte	0x76
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x2ed
	.4byte	0x6b
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF50
	.2byte	0x2ee
	.4byte	0x76
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF51
	.2byte	0x2ef
	.4byte	0x76
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x2f0
	.4byte	0x1f4
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x2f1
	.4byte	0x76
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x2f2
	.4byte	0x76
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x2f3
	.4byte	0x76
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF56
	.2byte	0x2f4
	.4byte	0x6b
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF57
	.2byte	0x2f5
	.4byte	0x76
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x2f6
	.4byte	0x76
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x2f7
	.4byte	0x1f4
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x2f8
	.4byte	0x76
	.byte	0x70
	.uleb128 0x4
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x76
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x2fa
	.4byte	0x1f4
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x2fb
	.4byte	0x76
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x2fc
	.4byte	0x76
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.2byte	0x2fd
	.4byte	0x2a3
	.uleb128 0x1f
	.4byte	0xad
	.byte	0x1
	.byte	0xe
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	frame_buffer
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x8
	.byte	0x23
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x5
	.byte	0x9
	.4byte	0x445
	.uleb128 0x18
	.4byte	0x6b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x5
	.byte	0x19
	.byte	0xa
	.4byte	0x6b
	.4byte	0x457
	.uleb128 0x19
	.byte	0
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x6
	.byte	0x10
	.4byte	0x469
	.uleb128 0x18
	.4byte	0x469
	.uleb128 0x19
	.byte	0
	.uleb128 0x13
	.4byte	0xb9
	.uleb128 0x9
	.4byte	.LASF75
	.2byte	0x308
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x637
	.uleb128 0xe
	.4byte	.LASF68
	.2byte	0x308
	.byte	0x32
	.4byte	0x637
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LASF69
	.2byte	0x308
	.byte	0x43
	.4byte	0x54
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x31d
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x5
	.4byte	.LASF72
	.2byte	0x32e
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x5
	.4byte	.LASF73
	.2byte	0x32f
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x5
	.4byte	.LASF74
	.2byte	0x330
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x3
	.4byte	.LVL127
	.4byte	0x457
	.4byte	0x512
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x3
	.4byte	.LVL133
	.4byte	0x457
	.4byte	0x529
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x3
	.4byte	.LVL137
	.4byte	0x457
	.4byte	0x540
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0
	.uleb128 0x3
	.4byte	.LVL138
	.4byte	0x457
	.4byte	0x58f
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
	.4byte	.LVL139
	.4byte	0x457
	.4byte	0x5de
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
	.4byte	.LVL140
	.4byte	0x457
	.4byte	0x5f5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x3
	.4byte	.LVL141
	.4byte	0x457
	.4byte	0x60c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.uleb128 0x8
	.4byte	.LVL143
	.4byte	0x457
	.4byte	0x623
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0xb
	.4byte	.LVL144
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x5f
	.uleb128 0x9
	.4byte	.LASF76
	.2byte	0x2cc
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x756
	.uleb128 0xe
	.4byte	.LASF68
	.2byte	0x2cc
	.byte	0x2d
	.4byte	0x637
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xe
	.4byte	.LASF69
	.2byte	0x2cc
	.byte	0x3e
	.4byte	0x54
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x2e6
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x5
	.4byte	.LASF72
	.2byte	0x2fc
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x3
	.4byte	.LVL111
	.4byte	0x457
	.4byte	0x6b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x3
	.4byte	.LVL116
	.4byte	0x457
	.4byte	0x6cf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x3
	.4byte	.LVL117
	.4byte	0x457
	.4byte	0x6e6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.uleb128 0x8
	.4byte	.LVL119
	.4byte	0x457
	.4byte	0x6fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x3
	.4byte	.LVL120
	.4byte	0x457
	.4byte	0x714
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x3
	.4byte	.LVL122
	.4byte	0x457
	.4byte	0x72b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.uleb128 0x8
	.4byte	.LVL123
	.4byte	0x457
	.4byte	0x742
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0xa
	.4byte	.LVL124
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF77
	.2byte	0x291
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0x42c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.2byte	0x268
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83c
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x27f
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x3
	.4byte	.LVL100
	.4byte	0x457
	.4byte	0x7b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x3
	.4byte	.LVL101
	.4byte	0x457
	.4byte	0x7cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x3
	.4byte	.LVL102
	.4byte	0x457
	.4byte	0x7e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x3
	.4byte	.LVL103
	.4byte	0x457
	.4byte	0x7fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x3
	.4byte	.LVL104
	.4byte	0x457
	.4byte	0x811
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x8
	.4byte	.LVL106
	.4byte	0x457
	.4byte	0x828
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0xb
	.4byte	.LVL107
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.2byte	0x24f
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8be
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x253
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x10
	.4byte	.LLRL16
	.4byte	0x893
	.uleb128 0x5
	.4byte	.LASF80
	.2byte	0x259
	.byte	0x16
	.4byte	0x6b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xa
	.4byte	.LVL97
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL94
	.4byte	0x457
	.4byte	0x8aa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.uleb128 0xb
	.4byte	.LVL99
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF81
	.2byte	0x22a
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x912
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x23d
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x8
	.4byte	.LVL92
	.4byte	0x457
	.4byte	0x8fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0xb
	.4byte	.LVL93
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b1
	.byte	0x6
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x19c
	.byte	0xa
	.4byte	0x54
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x979
	.uleb128 0x25
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x19c
	.byte	0x1e
	.4byte	0x979
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x19c
	.byte	0x2c
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.4byte	.LASF82
	.2byte	0x19e
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x13
	.4byte	0x6b
	.uleb128 0x9
	.4byte	.LASF83
	.2byte	0x185
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1b
	.uleb128 0xe
	.4byte	.LASF84
	.2byte	0x185
	.byte	0x2c
	.4byte	0x6b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x5
	.4byte	.LASF85
	.2byte	0x187
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x6
	.4byte	.LVL80
	.4byte	0x445
	.uleb128 0x3
	.4byte	.LVL83
	.4byte	0x457
	.4byte	0x9fe
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
	.4byte	.LVL84
	.4byte	0x434
	.4byte	0xa11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL85
	.4byte	0x445
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.2byte	0x172
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab5
	.uleb128 0x6
	.4byte	.LVL67
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL68
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL69
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL70
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL71
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL72
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL73
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL74
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL75
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LVL76
	.4byte	0x457
	.uleb128 0x8
	.4byte	.LVL77
	.4byte	0x457
	.4byte	0xaa1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.uleb128 0xb
	.4byte	.LVL78
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.2byte	0x145
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb76
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x14f
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x10
	.4byte	.LLRL8
	.4byte	0xb1d
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x152
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x5
	.byte	0x3
	.4byte	counter.0
	.uleb128 0x28
	.4byte	0xe75
	.4byte	.LBI16
	.byte	.LVU398
	.4byte	.LLRL9
	.byte	0x1
	.2byte	0x157
	.byte	0x9
	.uleb128 0xa
	.4byte	.LVL62
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL58
	.4byte	0x457
	.4byte	0xb34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x8
	.4byte	.LVL64
	.4byte	0x457
	.4byte	0xb4b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x3
	.4byte	.LVL65
	.4byte	0x457
	.4byte	0xb62
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0xb
	.4byte	.LVL66
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0xfd
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3b
	.uleb128 0x29
	.4byte	.LASF71
	.byte	0x1
	.byte	0xff
	.byte	0xe
	.4byte	0x6b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x5
	.4byte	.LASF89
	.2byte	0x100
	.byte	0xd
	.4byte	0x42
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.ascii	"idx\000"
	.2byte	0x101
	.4byte	0x6b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xd
	.4byte	0x42
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x13
	.4byte	0x42
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1a
	.4byte	0x42
	.uleb128 0x10
	.4byte	.LLRL3
	.4byte	0xc0e
	.uleb128 0x14
	.ascii	"i\000"
	.2byte	0x12f
	.4byte	0x89
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xa
	.4byte	.LVL30
	.4byte	0x457
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
	.4byte	0xc39
	.uleb128 0x14
	.ascii	"i\000"
	.2byte	0x135
	.4byte	0x89
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xa
	.4byte	.LVL38
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0xe75
	.4byte	.LBI9
	.byte	.LVU245
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.2byte	0x108
	.byte	0x33
	.uleb128 0x3
	.4byte	.LVL2
	.4byte	0x457
	.4byte	0xc66
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3
	.4byte	.LVL7
	.4byte	0x457
	.4byte	0xc7d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x3
	.4byte	.LVL23
	.4byte	0x457
	.4byte	0xc9a
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
	.4byte	.LVL24
	.4byte	0x457
	.4byte	0xcb1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x3
	.4byte	.LVL25
	.4byte	0x457
	.4byte	0xcc8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x3
	.4byte	.LVL26
	.4byte	0x457
	.4byte	0xcdf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x3
	.4byte	.LVL31
	.4byte	0x457
	.4byte	0xcf6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x3
	.4byte	.LVL32
	.4byte	0x457
	.4byte	0xd0d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x3
	.4byte	.LVL39
	.4byte	0x457
	.4byte	0xd24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x8
	.4byte	.LVL41
	.4byte	0x457
	.4byte	0xd3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x8
	.4byte	.LVL43
	.4byte	0x457
	.4byte	0xd52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x3
	.4byte	.LVL44
	.4byte	0x457
	.4byte	0xd69
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x3
	.4byte	.LVL45
	.4byte	0x457
	.4byte	0xd86
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
	.4byte	.LVL46
	.4byte	0x457
	.4byte	0xd9d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x3
	.4byte	.LVL47
	.4byte	0x457
	.4byte	0xdb4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x8
	.4byte	.LVL49
	.4byte	0x457
	.4byte	0xdcb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x3
	.4byte	.LVL50
	.4byte	0x457
	.4byte	0xde2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x3
	.4byte	.LVL51
	.4byte	0x457
	.4byte	0xdf9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x3
	.4byte	.LVL54
	.4byte	0x457
	.4byte	0xe10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x3
	.4byte	.LVL55
	.4byte	0x457
	.4byte	0xe27
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xa
	.4byte	.LVL56
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF94
	.byte	0x1
	.byte	0xa1
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x15
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe75
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x457
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF103
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
	.uleb128 0xd
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 258
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 .LVU850
	.uleb128 .LVU850
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LVL126-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL126-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU853
	.uleb128 .LVU853
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE123-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU869
	.uleb128 .LVU871
	.uleb128 .LVU871
	.uleb128 .LVU872
	.uleb128 .LVU872
	.uleb128 .LVU873
	.uleb128 .LVU873
	.uleb128 .LVU879
	.uleb128 .LVU911
	.uleb128 .LVU914
.LLST25:
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL131-.Ltext0
	.uleb128 .LVL132-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL143-.Ltext0
	.uleb128 .LVL144-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS26:
	.uleb128 .LVU892
	.uleb128 .LVU898
.LLST26:
	.byte	0x4
	.uleb128 .LVL134-.Ltext0
	.uleb128 .LVL137-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS27:
	.uleb128 .LVU894
	.uleb128 .LVU910
.LLST27:
	.byte	0x4
	.uleb128 .LVL135-.Ltext0
	.uleb128 .LVL142-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS28:
	.uleb128 .LVU897
	.uleb128 .LVU910
.LLST28:
	.byte	0x4
	.uleb128 .LVL136-.Ltext0
	.uleb128 .LVL142-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU789
	.uleb128 .LVU789
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LFE122-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU792
	.uleb128 .LVU792
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL111-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL111-1-.Ltext0
	.uleb128 .LFE122-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU806
	.uleb128 .LVU808
	.uleb128 .LVU808
	.uleb128 .LVU809
	.uleb128 .LVU809
	.uleb128 .LVU811
	.uleb128 .LVU812
	.uleb128 .LVU829
	.uleb128 .LVU845
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL113-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL115-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL115-.Ltext0
	.uleb128 .LVL118-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LFE122-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU841
	.uleb128 .LVU842
.LLST22:
	.byte	0x4
	.uleb128 .LVL121-.Ltext0
	.uleb128 .LVL122-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS18:
	.uleb128 .LVU738
	.uleb128 .LVU742
.LLST18:
	.byte	0x4
	.uleb128 .LVL104-.Ltext0
	.uleb128 .LVL105-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x4c4b40
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU689
	.uleb128 .LVU691
	.uleb128 .LVU691
	.uleb128 .LVU692
.LLST15:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x7a120
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x7a11f
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU698
	.uleb128 .LVU701
.LLST17:
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL97-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS14:
	.uleb128 .LVU668
	.uleb128 .LVU670
.LLST14:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x4c4b40
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU536
	.uleb128 .LVU536
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LFE116-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU536
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LFE116-.Ltext0
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
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 .LVU531
	.uleb128 .LVU531
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL80-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL80-1-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LFE115-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU506
	.uleb128 .LVU508
	.uleb128 .LVU508
	.uleb128 .LVU531
	.uleb128 .LVU531
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LFE115-.Ltext0
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -44
	.byte	0
.LVUS7:
	.uleb128 .LVU390
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 .LVU407
	.uleb128 .LVU407
	.uleb128 .LVU408
	.uleb128 .LVU408
	.uleb128 .LVU429
	.uleb128 .LVU432
	.uleb128 .LVU433
	.uleb128 .LVU436
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LFE113-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 .LVU237
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU253
	.uleb128 .LVU257
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU309
	.uleb128 .LVU349
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU362
	.uleb128 .LVU372
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-1-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU283
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU290
.LLST1:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
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
	.uleb128 .LVU232
	.uleb128 .LVU268
	.uleb128 .LVU292
	.uleb128 .LVU313
	.uleb128 .LVU349
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU356
	.uleb128 .LVU372
	.uleb128 .LVU378
.LLST2:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU334
	.uleb128 .LVU365
	.uleb128 .LVU371
.LLST4:
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS6:
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU337
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU348
	.uleb128 .LVU369
	.uleb128 .LVU372
.LLST6:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL53-.Ltext0
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
.LASF53:
	.ascii	"AHB1LPENR\000"
.LASF24:
	.ascii	"LISR\000"
.LASF31:
	.ascii	"OSPEEDR\000"
.LASF65:
	.ascii	"delay_ms\000"
.LASF43:
	.ascii	"APB1RSTR\000"
.LASF91:
	.ascii	"hsync\000"
.LASF23:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF1:
	.ascii	"short int\000"
.LASF60:
	.ascii	"BDCR\000"
.LASF74:
	.ascii	"misr_end\000"
.LASF18:
	.ascii	"CWSIZER\000"
.LASF63:
	.ascii	"PLLI2SCFGR\000"
.LASF103:
	.ascii	"__NOP\000"
.LASF77:
	.ascii	"OV7670_PrepareForCapture\000"
.LASF101:
	.ascii	"pixel_index\000"
.LASF80:
	.ascii	"data\000"
.LASF84:
	.ascii	"interval_ms\000"
.LASF28:
	.ascii	"DMA_TypeDef\000"
.LASF62:
	.ascii	"SSCGR\000"
.LASF81:
	.ascii	"OV7670_CaptureSnapshot\000"
.LASF72:
	.ascii	"sr_end\000"
.LASF73:
	.ascii	"risr_end\000"
.LASF55:
	.ascii	"AHB3LPENR\000"
.LASF98:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/ov7670_capture_image_v1.4\000"
.LASF99:
	.ascii	"OV7670_InitQQVGA_RGB565\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF50:
	.ascii	"APB1ENR\000"
.LASF30:
	.ascii	"OTYPER\000"
.LASF70:
	.ascii	"frame_buffer\000"
.LASF51:
	.ascii	"APB2ENR\000"
.LASF47:
	.ascii	"AHB2ENR\000"
.LASF100:
	.ascii	"get_pixel\000"
.LASF87:
	.ascii	"DCMI_CaptureFrame\000"
.LASF27:
	.ascii	"HIFCR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF32:
	.ascii	"PUPDR\000"
.LASF85:
	.ascii	"start\000"
.LASF25:
	.ascii	"HISR\000"
.LASF2:
	.ascii	"long int\000"
.LASF64:
	.ascii	"RCC_TypeDef\000"
.LASF34:
	.ascii	"BSRRH\000"
.LASF29:
	.ascii	"MODER\000"
.LASF44:
	.ascii	"APB2RSTR\000"
.LASF33:
	.ascii	"BSRRL\000"
.LASF48:
	.ascii	"AHB3ENR\000"
.LASF82:
	.ascii	"word\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF89:
	.ascii	"d0_d7\000"
.LASF75:
	.ascii	"DCMI_snapshot_debug_full\000"
.LASF90:
	.ascii	"pclk\000"
.LASF102:
	.ascii	"counter\000"
.LASF16:
	.ascii	"ESUR\000"
.LASF69:
	.ascii	"frame_size\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF19:
	.ascii	"DCMI_TypeDef\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF38:
	.ascii	"CFGR\000"
.LASF15:
	.ascii	"ESCR\000"
.LASF79:
	.ascii	"DCMI_TestCapture\000"
.LASF37:
	.ascii	"PLLCFGR\000"
.LASF92:
	.ascii	"vsync\000"
.LASF22:
	.ascii	"M1AR\000"
.LASF57:
	.ascii	"APB1LPENR\000"
.LASF95:
	.ascii	"DCMI_Init_OV7670\000"
.LASF67:
	.ascii	"printUSART2\000"
.LASF12:
	.ascii	"char\000"
.LASF97:
	.ascii	"DCMI/dcmi.c\000"
.LASF76:
	.ascii	"DCMI_snapshot_debug\000"
.LASF14:
	.ascii	"MISR\000"
.LASF86:
	.ascii	"OV7670_CheckPins\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF94:
	.ascii	"DCMI_Init_OV7670_Snapshot\000"
.LASF54:
	.ascii	"AHB2LPENR\000"
.LASF71:
	.ascii	"timeout\000"
.LASF52:
	.ascii	"RESERVED3\000"
.LASF68:
	.ascii	"buffer\000"
.LASF42:
	.ascii	"RESERVED0\000"
.LASF45:
	.ascii	"RESERVED1\000"
.LASF49:
	.ascii	"RESERVED2\000"
.LASF21:
	.ascii	"M0AR\000"
.LASF56:
	.ascii	"RESERVED4\000"
.LASF59:
	.ascii	"RESERVED5\000"
.LASF61:
	.ascii	"RESERVED6\000"
.LASF20:
	.ascii	"NDTR\000"
.LASF96:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF83:
	.ascii	"OV7670_CheckPins_Fluctuation\000"
.LASF46:
	.ascii	"AHB1ENR\000"
.LASF93:
	.ascii	"DCMI_Init_OV7670_SnapshotOnly\000"
.LASF78:
	.ascii	"OV7670_CaptureSnapshot_VSYNC\000"
.LASF39:
	.ascii	"AHB1RSTR\000"
.LASF17:
	.ascii	"CWSTRTR\000"
.LASF66:
	.ascii	"getSYSTIMER_TIM7\000"
.LASF36:
	.ascii	"GPIO_TypeDef\000"
.LASF88:
	.ascii	"DCMI_CaptureFrame_DebugPolling\000"
.LASF13:
	.ascii	"RISR\000"
.LASF35:
	.ascii	"LCKR\000"
.LASF58:
	.ascii	"APB2LPENR\000"
.LASF26:
	.ascii	"LIFCR\000"
.LASF41:
	.ascii	"AHB3RSTR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

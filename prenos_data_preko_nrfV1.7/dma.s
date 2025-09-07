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
	.file	"dma.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "dma/dma.c"
	.align	1
	.p2align 2,,3
	.global	initDMA2_for_OV7670_snapshot
	.syntax unified
	.thumb
	.thumb_func
	.type	initDMA2_for_OV7670_snapshot, %function
initDMA2_for_OV7670_snapshot:
.LVL0:
.LFB110:
	.loc 1 7 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 8 3 view .LVU1
	.loc 1 7 1 is_stmt 0 view .LVU2
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 8 6 view .LVU3
	ldr	r4, .L6
	.loc 1 10 20 view .LVU4
	ldr	r3, .L6+4
	.loc 1 8 6 view .LVU5
	ldr	r2, [r4, #48]
	.loc 1 8 16 view .LVU6
	orr	r2, r2, #4194304
	str	r2, [r4, #48]
	.loc 1 10 3 is_stmt 1 view .LVU7
	.loc 1 10 20 is_stmt 0 view .LVU8
	movs	r2, #0
	str	r2, [r3, #40]
	.loc 1 12 3 is_stmt 1 view .LVU9
.L2:
	.loc 1 12 10 discriminator 1 view .LVU10
	.loc 1 12 22 is_stmt 0 discriminator 1 view .LVU11
	ldr	r2, [r3, #40]
	.loc 1 12 10 discriminator 1 view .LVU12
	lsls	r2, r2, #31
	bmi	.L2
	.loc 1 18 3 is_stmt 1 view .LVU13
	.loc 1 18 15 is_stmt 0 view .LVU14
	mov	r2, #3904
	str	r2, [r3, #8]
	.loc 1 24 3 is_stmt 1 view .LVU15
	.loc 1 24 15 is_stmt 0 view .LVU16
	ldr	r2, [r3, #40]
	.loc 1 50 21 view .LVU17
	ldr	r4, .L6+8
	.loc 1 24 20 view .LVU18
	orr	r2, r2, #33554432
	str	r2, [r3, #40]
	.loc 1 28 3 is_stmt 1 view .LVU19
	.loc 1 28 15 is_stmt 0 view .LVU20
	ldr	r5, [r3, #40]
	.loc 1 28 20 view .LVU21
	bic	r5, r5, #262144
	str	r5, [r3, #40]
	.loc 1 29 3 is_stmt 1 view .LVU22
	.loc 1 46 29 is_stmt 0 view .LVU23
	lsrs	r2, r1, #1
	.loc 1 29 15 view .LVU24
	ldr	r1, [r3, #40]
.LVL1:
	.loc 1 29 20 view .LVU25
	orr	r1, r1, #196608
	str	r1, [r3, #40]
	.loc 1 31 3 is_stmt 1 view .LVU26
	.loc 1 31 15 is_stmt 0 view .LVU27
	ldr	r1, [r3, #40]
	.loc 1 31 20 view .LVU28
	orr	r1, r1, #8192
	str	r1, [r3, #40]
	.loc 1 32 3 is_stmt 1 view .LVU29
	.loc 1 32 15 is_stmt 0 view .LVU30
	ldr	r1, [r3, #40]
	.loc 1 32 20 view .LVU31
	orr	r1, r1, #4096
	str	r1, [r3, #40]
	.loc 1 33 3 is_stmt 1 view .LVU32
	.loc 1 33 15 is_stmt 0 view .LVU33
	ldr	r1, [r3, #40]
	.loc 1 33 20 view .LVU34
	orr	r1, r1, #1024
	str	r1, [r3, #40]
	.loc 1 36 3 is_stmt 1 view .LVU35
	.loc 1 36 15 is_stmt 0 view .LVU36
	ldr	r1, [r3, #40]
	.loc 1 36 20 view .LVU37
	bic	r1, r1, #512
	str	r1, [r3, #40]
	.loc 1 37 3 is_stmt 1 view .LVU38
	.loc 1 37 15 is_stmt 0 view .LVU39
	ldr	r1, [r3, #40]
	.loc 1 37 20 view .LVU40
	bic	r1, r1, #256
	str	r1, [r3, #40]
	.loc 1 38 3 is_stmt 1 view .LVU41
	.loc 1 38 15 is_stmt 0 view .LVU42
	ldr	r1, [r3, #40]
	.loc 1 38 20 view .LVU43
	bic	r1, r1, #192
	str	r1, [r3, #40]
	.loc 1 39 3 is_stmt 1 view .LVU44
	.loc 1 39 15 is_stmt 0 view .LVU45
	ldr	r1, [r3, #40]
	.loc 1 39 20 view .LVU46
	bic	r1, r1, #32
	str	r1, [r3, #40]
	.loc 1 40 3 is_stmt 1 view .LVU47
	.loc 1 40 15 is_stmt 0 view .LVU48
	ldr	r1, [r3, #40]
	.loc 1 40 20 view .LVU49
	orr	r1, r1, #16
	str	r1, [r3, #40]
	.loc 1 41 3 is_stmt 1 view .LVU50
	.loc 1 41 15 is_stmt 0 view .LVU51
	ldr	r1, [r3, #40]
	.loc 1 41 20 view .LVU52
	orr	r1, r1, #8
	str	r1, [r3, #40]
	.loc 1 42 3 is_stmt 1 view .LVU53
	.loc 1 42 15 is_stmt 0 view .LVU54
	ldr	r1, [r3, #40]
	.loc 1 42 20 view .LVU55
	orr	r1, r1, #4
	str	r1, [r3, #40]
	.loc 1 43 3 is_stmt 1 view .LVU56
	.loc 1 43 15 is_stmt 0 view .LVU57
	ldr	r1, [r3, #40]
	.loc 1 43 20 view .LVU58
	orr	r1, r1, #2
	str	r1, [r3, #40]
	.loc 1 46 3 is_stmt 1 view .LVU59
	.loc 1 46 22 is_stmt 0 view .LVU60
	str	r2, [r3, #44]
	.loc 1 50 3 is_stmt 1 view .LVU61
	.loc 1 50 21 is_stmt 0 view .LVU62
	str	r4, [r3, #48]
	.loc 1 51 3 is_stmt 1 view .LVU63
	.loc 1 51 22 is_stmt 0 view .LVU64
	str	r0, [r3, #52]
	.loc 1 56 3 is_stmt 1 view .LVU65
	.loc 1 56 15 is_stmt 0 view .LVU66
	ldr	r2, [r3, #60]
	.loc 1 56 21 view .LVU67
	bic	r2, r2, #4
	str	r2, [r3, #60]
	.loc 1 59 3 is_stmt 1 view .LVU68
	.loc 1 59 15 is_stmt 0 view .LVU69
	ldr	r2, [r3, #40]
	.loc 1 59 20 view .LVU70
	orr	r2, r2, #1
	.loc 1 73 1 view .LVU71
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 59 20 view .LVU72
	str	r2, [r3, #40]
	.loc 1 73 1 view .LVU73
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073887232
	.word	1073898496
	.word	1342505000
	.cfi_endproc
.LFE110:
	.size	initDMA2_for_OV7670_snapshot, .-initDMA2_for_OV7670_snapshot
	.align	1
	.p2align 2,,3
	.global	initDMA2_for_OV7670_continuous_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	initDMA2_for_OV7670_continuous_mode, %function
initDMA2_for_OV7670_continuous_mode:
.LVL2:
.LFB111:
	.loc 1 79 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 80 3 view .LVU75
	.loc 1 79 1 is_stmt 0 view .LVU76
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 80 6 view .LVU77
	ldr	r4, .L12
	.loc 1 82 20 view .LVU78
	ldr	r3, .L12+4
	.loc 1 80 6 view .LVU79
	ldr	r2, [r4, #48]
	.loc 1 80 16 view .LVU80
	orr	r2, r2, #4194304
	str	r2, [r4, #48]
	.loc 1 82 3 is_stmt 1 view .LVU81
	.loc 1 82 20 is_stmt 0 view .LVU82
	movs	r2, #0
	str	r2, [r3, #40]
	.loc 1 84 3 is_stmt 1 view .LVU83
.L9:
	.loc 1 84 10 discriminator 1 view .LVU84
	.loc 1 84 22 is_stmt 0 discriminator 1 view .LVU85
	ldr	r2, [r3, #40]
	.loc 1 84 10 discriminator 1 view .LVU86
	ands	r2, r2, #1
	bne	.L9
	.loc 1 90 3 is_stmt 1 view .LVU87
	.loc 1 90 15 is_stmt 0 view .LVU88
	mov	r4, #3904
	str	r4, [r3, #8]
	.loc 1 96 3 is_stmt 1 view .LVU89
	.loc 1 96 15 is_stmt 0 view .LVU90
	ldr	r4, [r3, #40]
	.loc 1 96 20 view .LVU91
	orr	r4, r4, #33554432
	str	r4, [r3, #40]
	.loc 1 100 3 is_stmt 1 view .LVU92
	.loc 1 100 15 is_stmt 0 view .LVU93
	ldr	r4, [r3, #40]
	.loc 1 100 20 view .LVU94
	bic	r4, r4, #262144
	str	r4, [r3, #40]
	.loc 1 101 3 is_stmt 1 view .LVU95
	.loc 1 101 15 is_stmt 0 view .LVU96
	ldr	r4, [r3, #40]
	.loc 1 101 20 view .LVU97
	orr	r4, r4, #196608
	str	r4, [r3, #40]
	.loc 1 103 3 is_stmt 1 view .LVU98
	.loc 1 103 15 is_stmt 0 view .LVU99
	ldr	r4, [r3, #40]
	.loc 1 103 20 view .LVU100
	orr	r4, r4, #8192
	str	r4, [r3, #40]
	.loc 1 104 3 is_stmt 1 view .LVU101
	.loc 1 104 15 is_stmt 0 view .LVU102
	ldr	r4, [r3, #40]
	.loc 1 104 20 view .LVU103
	orr	r4, r4, #4096
	str	r4, [r3, #40]
	.loc 1 105 3 is_stmt 1 view .LVU104
	.loc 1 105 15 is_stmt 0 view .LVU105
	ldr	r4, [r3, #40]
	.loc 1 105 20 view .LVU106
	orr	r4, r4, #1024
	str	r4, [r3, #40]
	.loc 1 108 3 is_stmt 1 view .LVU107
	.loc 1 108 15 is_stmt 0 view .LVU108
	ldr	r4, [r3, #40]
	.loc 1 108 20 view .LVU109
	bic	r4, r4, #512
	str	r4, [r3, #40]
	.loc 1 110 3 is_stmt 1 view .LVU110
	.loc 1 110 15 is_stmt 0 view .LVU111
	ldr	r4, [r3, #40]
	.loc 1 110 20 view .LVU112
	orr	r4, r4, #256
	str	r4, [r3, #40]
	.loc 1 111 3 is_stmt 1 view .LVU113
	.loc 1 111 15 is_stmt 0 view .LVU114
	ldr	r4, [r3, #40]
	.loc 1 111 20 view .LVU115
	bic	r4, r4, #192
	str	r4, [r3, #40]
	.loc 1 112 3 is_stmt 1 view .LVU116
	.loc 1 112 15 is_stmt 0 view .LVU117
	ldr	r4, [r3, #40]
	.loc 1 112 20 view .LVU118
	bic	r4, r4, #32
	str	r4, [r3, #40]
	.loc 1 113 3 is_stmt 1 view .LVU119
	.loc 1 113 15 is_stmt 0 view .LVU120
	ldr	r4, [r3, #40]
	.loc 1 113 20 view .LVU121
	orr	r4, r4, #16
	str	r4, [r3, #40]
	.loc 1 114 3 is_stmt 1 view .LVU122
	.loc 1 114 15 is_stmt 0 view .LVU123
	ldr	r4, [r3, #40]
	.loc 1 114 20 view .LVU124
	orr	r4, r4, #8
	str	r4, [r3, #40]
	.loc 1 115 3 is_stmt 1 view .LVU125
	.loc 1 115 15 is_stmt 0 view .LVU126
	ldr	r4, [r3, #40]
	.loc 1 115 20 view .LVU127
	orr	r4, r4, #4
	str	r4, [r3, #40]
	.loc 1 116 3 is_stmt 1 view .LVU128
	.loc 1 116 15 is_stmt 0 view .LVU129
	ldr	r4, [r3, #40]
	.loc 1 116 20 view .LVU130
	orr	r4, r4, #2
	str	r4, [r3, #40]
	.loc 1 119 3 is_stmt 1 view .LVU131
	.loc 1 119 29 is_stmt 0 view .LVU132
	lsrs	r1, r1, #1
.LVL3:
	.loc 1 123 21 view .LVU133
	ldr	r4, .L12+8
	.loc 1 119 22 view .LVU134
	str	r1, [r3, #44]
	.loc 1 123 3 is_stmt 1 view .LVU135
	.loc 1 123 21 is_stmt 0 view .LVU136
	str	r4, [r3, #48]
	.loc 1 124 3 is_stmt 1 view .LVU137
	.loc 1 124 22 is_stmt 0 view .LVU138
	str	r0, [r3, #52]
	.loc 1 129 3 is_stmt 1 view .LVU139
	.loc 1 129 15 is_stmt 0 view .LVU140
	ldr	r1, [r3, #60]
.LBB10:
.LBB11:
	.file 2 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1075 46 view .LVU141
	ldr	r0, .L12+12
.LVL4:
	.loc 2 1075 46 view .LVU142
	mov	r4, #33554432
.LBE11:
.LBE10:
	.loc 1 129 21 view .LVU143
	bic	r1, r1, #4
	str	r1, [r3, #60]
.LVL5:
	.loc 1 132 3 is_stmt 1 view .LVU144
.LBB13:
.LBI10:
	.loc 2 1072 22 view .LVU145
.LBB12:
	.loc 2 1075 3 view .LVU146
	.loc 2 1075 46 is_stmt 0 view .LVU147
	str	r4, [r0, #4]
.LVL6:
	.loc 2 1075 46 view .LVU148
.LBE12:
.LBE13:
	.loc 1 133 3 is_stmt 1 view .LVU149
.LBB14:
.LBI14:
	.loc 2 1157 22 view .LVU150
.LBB15:
	.loc 2 1159 3 view .LVU151
	.loc 2 1162 5 view .LVU152
	.loc 2 1162 32 is_stmt 0 view .LVU153
	strb	r2, [r0, #825]
.LVL7:
	.loc 2 1162 32 view .LVU154
.LBE15:
.LBE14:
	.loc 1 137 3 is_stmt 1 view .LVU155
	.loc 1 137 15 is_stmt 0 view .LVU156
	ldr	r2, [r3, #40]
	.loc 1 151 1 view .LVU157
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 137 20 view .LVU158
	orr	r2, r2, #1
	str	r2, [r3, #40]
	.loc 1 151 1 view .LVU159
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073887232
	.word	1073898496
	.word	1342505000
	.word	-536813312
	.cfi_endproc
.LFE111:
	.size	initDMA2_for_OV7670_continuous_mode, .-initDMA2_for_OV7670_continuous_mode
	.align	1
	.p2align 2,,3
	.global	initDMA2_for_OV7670_continuous_mode_double_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	initDMA2_for_OV7670_continuous_mode_double_buffer, %function
initDMA2_for_OV7670_continuous_mode_double_buffer:
.LVL8:
.LFB112:
	.loc 1 155 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 156 3 view .LVU161
	.loc 1 155 1 is_stmt 0 view .LVU162
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 156 6 view .LVU163
	ldr	r4, .L18
	ldr	r3, [r4, #48]
	.loc 1 156 16 view .LVU164
	orr	r3, r3, #4194304
	str	r3, [r4, #48]
	.loc 1 158 3 is_stmt 1 view .LVU165
	.loc 1 158 20 is_stmt 0 view .LVU166
	ldr	r3, .L18+4
	movs	r4, #0
	str	r4, [r3, #40]
	.loc 1 160 3 is_stmt 1 view .LVU167
.L15:
	.loc 1 160 10 discriminator 1 view .LVU168
	.loc 1 160 22 is_stmt 0 discriminator 1 view .LVU169
	ldr	r4, [r3, #40]
	.loc 1 160 10 discriminator 1 view .LVU170
	ands	r4, r4, #1
	bne	.L15
	.loc 1 166 3 is_stmt 1 view .LVU171
	.loc 1 166 15 is_stmt 0 view .LVU172
	mov	r5, #3904
	str	r5, [r3, #8]
	.loc 1 172 3 is_stmt 1 view .LVU173
	.loc 1 172 15 is_stmt 0 view .LVU174
	ldr	r5, [r3, #40]
	.loc 1 172 20 view .LVU175
	orr	r5, r5, #33554432
	str	r5, [r3, #40]
	.loc 1 177 3 is_stmt 1 view .LVU176
	.loc 1 177 15 is_stmt 0 view .LVU177
	ldr	r5, [r3, #40]
	.loc 1 177 20 view .LVU178
	orr	r5, r5, #262144
	str	r5, [r3, #40]
	.loc 1 178 3 is_stmt 1 view .LVU179
	.loc 1 178 15 is_stmt 0 view .LVU180
	ldr	r5, [r3, #40]
	.loc 1 178 20 view .LVU181
	orr	r5, r5, #196608
	str	r5, [r3, #40]
	.loc 1 180 3 is_stmt 1 view .LVU182
	.loc 1 180 15 is_stmt 0 view .LVU183
	ldr	r5, [r3, #40]
	.loc 1 180 20 view .LVU184
	orr	r5, r5, #8192
	str	r5, [r3, #40]
	.loc 1 181 3 is_stmt 1 view .LVU185
	.loc 1 181 15 is_stmt 0 view .LVU186
	ldr	r5, [r3, #40]
	.loc 1 181 20 view .LVU187
	orr	r5, r5, #4096
	str	r5, [r3, #40]
	.loc 1 182 3 is_stmt 1 view .LVU188
	.loc 1 182 15 is_stmt 0 view .LVU189
	ldr	r5, [r3, #40]
	.loc 1 182 20 view .LVU190
	orr	r5, r5, #1024
	str	r5, [r3, #40]
	.loc 1 185 3 is_stmt 1 view .LVU191
	.loc 1 185 15 is_stmt 0 view .LVU192
	ldr	r5, [r3, #40]
	.loc 1 185 20 view .LVU193
	bic	r5, r5, #512
	str	r5, [r3, #40]
	.loc 1 187 3 is_stmt 1 view .LVU194
	.loc 1 187 15 is_stmt 0 view .LVU195
	ldr	r5, [r3, #40]
	.loc 1 187 20 view .LVU196
	orr	r5, r5, #256
	str	r5, [r3, #40]
	.loc 1 188 3 is_stmt 1 view .LVU197
	.loc 1 188 15 is_stmt 0 view .LVU198
	ldr	r5, [r3, #40]
	.loc 1 188 20 view .LVU199
	bic	r5, r5, #192
	str	r5, [r3, #40]
	.loc 1 189 3 is_stmt 1 view .LVU200
	.loc 1 189 15 is_stmt 0 view .LVU201
	ldr	r5, [r3, #40]
	.loc 1 189 20 view .LVU202
	bic	r5, r5, #32
	str	r5, [r3, #40]
	.loc 1 190 3 is_stmt 1 view .LVU203
	.loc 1 190 15 is_stmt 0 view .LVU204
	ldr	r5, [r3, #40]
	.loc 1 190 20 view .LVU205
	orr	r5, r5, #16
	str	r5, [r3, #40]
	.loc 1 191 3 is_stmt 1 view .LVU206
	.loc 1 191 15 is_stmt 0 view .LVU207
	ldr	r5, [r3, #40]
	.loc 1 191 20 view .LVU208
	orr	r5, r5, #8
	str	r5, [r3, #40]
	.loc 1 192 3 is_stmt 1 view .LVU209
	.loc 1 192 15 is_stmt 0 view .LVU210
	ldr	r5, [r3, #40]
	.loc 1 192 20 view .LVU211
	orr	r5, r5, #4
	str	r5, [r3, #40]
	.loc 1 193 3 is_stmt 1 view .LVU212
	.loc 1 193 15 is_stmt 0 view .LVU213
	ldr	r5, [r3, #40]
	.loc 1 196 29 view .LVU214
	lsrs	r2, r2, #1
.LVL9:
	.loc 1 193 20 view .LVU215
	orr	r5, r5, #2
	str	r5, [r3, #40]
	.loc 1 196 3 is_stmt 1 view .LVU216
	.loc 1 196 22 is_stmt 0 view .LVU217
	str	r2, [r3, #44]
	.loc 1 200 3 is_stmt 1 view .LVU218
	.loc 1 200 21 is_stmt 0 view .LVU219
	ldr	r2, .L18+8
	str	r2, [r3, #48]
	.loc 1 201 3 is_stmt 1 view .LVU220
	.loc 1 201 22 is_stmt 0 view .LVU221
	str	r0, [r3, #52]
	.loc 1 205 3 is_stmt 1 view .LVU222
	.loc 1 205 22 is_stmt 0 view .LVU223
	str	r1, [r3, #56]
	.loc 1 207 3 is_stmt 1 view .LVU224
	.loc 1 207 15 is_stmt 0 view .LVU225
	ldr	r2, [r3, #60]
.LBB16:
.LBB17:
	.loc 2 1075 46 view .LVU226
	ldr	r1, .L18+12
.LVL10:
	.loc 2 1075 46 view .LVU227
.LBE17:
.LBE16:
	.loc 1 207 21 view .LVU228
	bic	r2, r2, #4
.LBB20:
.LBB18:
	.loc 2 1075 46 view .LVU229
	mov	r0, #33554432
.LVL11:
	.loc 2 1075 46 view .LVU230
.LBE18:
.LBE20:
	.loc 1 207 21 view .LVU231
	str	r2, [r3, #60]
.LVL12:
	.loc 1 210 3 is_stmt 1 view .LVU232
.LBB21:
.LBI16:
	.loc 2 1072 22 view .LVU233
.LBB19:
	.loc 2 1075 3 view .LVU234
	.loc 2 1075 46 is_stmt 0 view .LVU235
	str	r0, [r1, #4]
.LVL13:
	.loc 2 1075 46 view .LVU236
.LBE19:
.LBE21:
	.loc 1 211 3 is_stmt 1 view .LVU237
.LBB22:
.LBI22:
	.loc 2 1157 22 view .LVU238
.LBB23:
	.loc 2 1159 3 view .LVU239
	.loc 2 1162 5 view .LVU240
	.loc 2 1162 32 is_stmt 0 view .LVU241
	strb	r4, [r1, #825]
.LVL14:
	.loc 2 1162 32 view .LVU242
.LBE23:
.LBE22:
	.loc 1 215 3 is_stmt 1 view .LVU243
	.loc 1 215 15 is_stmt 0 view .LVU244
	ldr	r2, [r3, #40]
	.loc 1 215 20 view .LVU245
	orr	r2, r2, #1
	.loc 1 229 1 view .LVU246
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 215 20 view .LVU247
	str	r2, [r3, #40]
	.loc 1 229 1 view .LVU248
	bx	lr
.L19:
	.align	2
.L18:
	.word	1073887232
	.word	1073898496
	.word	1342505000
	.word	-536813312
	.cfi_endproc
.LFE112:
	.size	initDMA2_for_OV7670_continuous_mode_double_buffer, .-initDMA2_for_OV7670_continuous_mode_double_buffer
.Letext0:
	.file 3 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 4 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa40
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0x1d
	.4byte	.LASF180
	.4byte	.LASF181
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
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0xd
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x19
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x7e
	.uleb128 0xf
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x5
	.byte	0x1
	.4byte	0x26
	.byte	0x4
	.byte	0x91
	.byte	0xe
	.4byte	0x2df
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
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x4
	.byte	0xef
	.byte	0x3
	.4byte	0xb0
	.uleb128 0x17
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.byte	0x9
	.4byte	0x3a1
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x132
	.4byte	0x3b1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x133
	.4byte	0x3b6
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x134
	.4byte	0x3b1
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x135
	.4byte	0x3b6
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF108
	.2byte	0x136
	.4byte	0x3b1
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF109
	.2byte	0x137
	.4byte	0x3b6
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF110
	.2byte	0x138
	.4byte	0x3b1
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF111
	.2byte	0x139
	.4byte	0x3b6
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF112
	.2byte	0x13a
	.4byte	0x3b1
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF113
	.2byte	0x13b
	.4byte	0x3c6
	.2byte	0x220
	.uleb128 0x18
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.byte	0x11
	.4byte	0x3e6
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF114
	.2byte	0x13d
	.4byte	0x3eb
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF115
	.2byte	0x13e
	.4byte	0x8a
	.2byte	0xe00
	.byte	0
	.uleb128 0x4
	.4byte	0x8a
	.4byte	0x3b1
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x3a1
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x3c6
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x3d6
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x37
	.byte	0
	.uleb128 0x4
	.4byte	0x5a
	.4byte	0x3e6
	.uleb128 0x5
	.4byte	0xa9
	.byte	0xef
	.byte	0
	.uleb128 0x7
	.4byte	0x3d6
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x3fc
	.uleb128 0x19
	.4byte	0xa9
	.2byte	0x283
	.byte	0
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x13f
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0xe
	.byte	0x8c
	.byte	0x2
	.2byte	0x150
	.4byte	0x524
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
	.4byte	0x534
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
	.4byte	0x54e
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
	.4byte	0x568
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x164
	.4byte	0x582
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x165
	.4byte	0x587
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
	.4byte	0x534
	.uleb128 0x5
	.4byte	0xa9
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x524
	.uleb128 0x4
	.4byte	0x8f
	.4byte	0x549
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	0x539
	.uleb128 0x7
	.4byte	0x549
	.uleb128 0x4
	.4byte	0x8f
	.4byte	0x563
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0x553
	.uleb128 0x7
	.4byte	0x563
	.uleb128 0x4
	.4byte	0x8f
	.4byte	0x57d
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	0x56d
	.uleb128 0x7
	.4byte	0x57d
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x597
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x167
	.byte	0x3
	.4byte	0x409
	.uleb128 0xe
	.byte	0x2c
	.byte	0x4
	.2byte	0x1c4
	.4byte	0x63a
	.uleb128 0x3
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1c6
	.4byte	0x8a
	.byte	0
	.uleb128 0x3
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x1c7
	.4byte	0x8a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x1c8
	.4byte	0x8a
	.byte	0x8
	.uleb128 0x3
	.ascii	"IER\000"
	.byte	0x4
	.2byte	0x1c9
	.4byte	0x8a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x1ca
	.4byte	0x8a
	.byte	0x10
	.uleb128 0x3
	.ascii	"ICR\000"
	.byte	0x4
	.2byte	0x1cb
	.4byte	0x8a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x1cc
	.4byte	0x8a
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x1cd
	.4byte	0x8a
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x1ce
	.4byte	0x8a
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x1cf
	.4byte	0x8a
	.byte	0x24
	.uleb128 0x3
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x1d0
	.4byte	0x8a
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x1d1
	.byte	0x3
	.4byte	0x5a4
	.uleb128 0xe
	.byte	0x18
	.byte	0x4
	.2byte	0x1d7
	.4byte	0x69e
	.uleb128 0x3
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1d9
	.4byte	0x8a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x1da
	.4byte	0x8a
	.byte	0x4
	.uleb128 0x3
	.ascii	"PAR\000"
	.byte	0x4
	.2byte	0x1db
	.4byte	0x8a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x1dc
	.4byte	0x8a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x1dd
	.4byte	0x8a
	.byte	0x10
	.uleb128 0x3
	.ascii	"FCR\000"
	.byte	0x4
	.2byte	0x1de
	.4byte	0x8a
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x1df
	.byte	0x3
	.4byte	0x647
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.2byte	0x1e1
	.4byte	0x6e9
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x1e3
	.4byte	0x8a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x1e4
	.4byte	0x8a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x1e5
	.4byte	0x8a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x1e6
	.4byte	0x8a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x1e7
	.byte	0x3
	.4byte	0x6ab
	.uleb128 0x4
	.4byte	0x7e
	.4byte	0x706
	.uleb128 0x5
	.4byte	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x895
	.uleb128 0x3
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0x8a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x2e0
	.4byte	0x8a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF149
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
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x2e3
	.4byte	0x8a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x2e4
	.4byte	0x8a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF152
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
	.4byte	.LASF153
	.byte	0x4
	.2byte	0x2e7
	.4byte	0x8a
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x4
	.2byte	0x2e8
	.4byte	0x8a
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x4
	.2byte	0x2e9
	.4byte	0x6f6
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x4
	.2byte	0x2ea
	.4byte	0x8a
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x2eb
	.4byte	0x8a
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF158
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
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x2ee
	.4byte	0x8a
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x2ef
	.4byte	0x8a
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x2f0
	.4byte	0x6f6
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x4
	.2byte	0x2f1
	.4byte	0x8a
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x2f2
	.4byte	0x8a
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF163
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
	.4byte	.LASF164
	.byte	0x4
	.2byte	0x2f5
	.4byte	0x8a
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x4
	.2byte	0x2f6
	.4byte	0x8a
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x2f7
	.4byte	0x6f6
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF166
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
	.4byte	.LASF167
	.byte	0x4
	.2byte	0x2fa
	.4byte	0x6f6
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x4
	.2byte	0x2fb
	.4byte	0x8a
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x4
	.2byte	0x2fc
	.4byte	0x8a
	.byte	0x84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0x4
	.2byte	0x2fd
	.byte	0x3
	.4byte	0x706
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0x9a
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93f
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x9a
	.byte	0x4b
	.4byte	0x93f
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x9a
	.byte	0x64
	.4byte	0x93f
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x9a
	.byte	0x74
	.4byte	0x66
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x12
	.4byte	0xa2c
	.4byte	.LBI16
	.byte	.LVU233
	.4byte	.LLRL10
	.byte	0xd2
	.4byte	0x910
	.uleb128 0xc
	.4byte	0xa36
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x13
	.4byte	0xa05
	.4byte	.LBI22
	.byte	.LVU238
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0xd3
	.uleb128 0xc
	.4byte	0xa1f
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xc
	.4byte	0xa13
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x72
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0x4e
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9cf
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x4e
	.byte	0x3d
	.4byte	0x93f
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x4e
	.byte	0x4d
	.4byte	0x66
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x12
	.4byte	0xa2c
	.4byte	.LBI10
	.byte	.LVU145
	.4byte	.LLRL3
	.byte	0x84
	.4byte	0x9a0
	.uleb128 0xc
	.4byte	0xa36
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x13
	.4byte	0xa05
	.4byte	.LBI14
	.byte	.LVU150
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x85
	.uleb128 0xc
	.4byte	0xa1f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xc
	.4byte	0xa13
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa05
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x1
	.byte	0x6
	.byte	0x36
	.4byte	0x93f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x6
	.byte	0x46
	.4byte	0x66
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0x2
	.2byte	0x485
	.byte	0x16
	.byte	0x3
	.4byte	0xa2c
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x485
	.byte	0x31
	.4byte	0x2df
	.uleb128 0x11
	.4byte	.LASF178
	.2byte	0x485
	.byte	0x40
	.4byte	0x7e
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x2
	.2byte	0x430
	.byte	0x16
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x430
	.byte	0x2f
	.4byte	0x2df
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
.LVUS7:
	.uleb128 0
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x2
	.byte	0x73
	.sleb128 56
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE112-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU233
	.uleb128 .LVU236
.LLST11:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x39
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU238
	.uleb128 .LVU242
.LLST12:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU238
	.uleb128 .LVU242
.LLST13:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x39
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x73
	.sleb128 52
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU145
	.uleb128 .LVU148
.LLST4:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x39
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU150
	.uleb128 .LVU154
.LLST5:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU150
	.uleb128 .LVU154
.LLST6:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x39
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE110-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
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
	.uleb128 .LBB10-.Ltext0
	.uleb128 .LBE10-.Ltext0
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0
.LLRL10:
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
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF99:
	.ascii	"DCMI_IRQn\000"
.LASF101:
	.ascii	"HASH_RNG_IRQn\000"
.LASF159:
	.ascii	"APB1ENR\000"
.LASF130:
	.ascii	"CPACR\000"
.LASF165:
	.ascii	"APB2LPENR\000"
.LASF89:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF70:
	.ascii	"SDIO_IRQn\000"
.LASF154:
	.ascii	"APB2RSTR\000"
.LASF43:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF100:
	.ascii	"CRYP_IRQn\000"
.LASF55:
	.ascii	"I2C2_ER_IRQn\000"
.LASF137:
	.ascii	"CWSIZER\000"
.LASF77:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF51:
	.ascii	"TIM4_IRQn\000"
.LASF83:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF182:
	.ascii	"NVIC_SetPriority\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF37:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF124:
	.ascii	"DFSR\000"
.LASF166:
	.ascii	"BDCR\000"
.LASF32:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF25:
	.ascii	"FLASH_IRQn\000"
.LASF27:
	.ascii	"EXTI0_IRQn\000"
.LASF96:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF61:
	.ascii	"EXTI15_10_IRQn\000"
.LASF128:
	.ascii	"MMFR\000"
.LASF64:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF139:
	.ascii	"NDTR\000"
.LASF179:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF162:
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
.LASF9:
	.ascii	"uint32_t\000"
.LASF23:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF104:
	.ascii	"ISER\000"
.LASF136:
	.ascii	"CWSTRTR\000"
.LASF138:
	.ascii	"DCMI_TypeDef\000"
.LASF88:
	.ascii	"OTG_FS_IRQn\000"
.LASF146:
	.ascii	"HIFCR\000"
.LASF156:
	.ascii	"AHB1ENR\000"
.LASF168:
	.ascii	"SSCGR\000"
.LASF107:
	.ascii	"RSERVED1\000"
.LASF79:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF56:
	.ascii	"SPI1_IRQn\000"
.LASF45:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF183:
	.ascii	"NVIC_EnableIRQ\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF68:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF34:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF87:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF42:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF152:
	.ascii	"AHB3RSTR\000"
.LASF103:
	.ascii	"IRQn_Type\000"
.LASF91:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF59:
	.ascii	"USART2_IRQn\000"
.LASF173:
	.ascii	"tsize\000"
.LASF117:
	.ascii	"CPUID\000"
.LASF170:
	.ascii	"RCC_TypeDef\000"
.LASF94:
	.ascii	"I2C3_ER_IRQn\000"
.LASF126:
	.ascii	"BFAR\000"
.LASF24:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF98:
	.ascii	"OTG_HS_IRQn\000"
.LASF132:
	.ascii	"RISR\000"
.LASF127:
	.ascii	"AFSR\000"
.LASF140:
	.ascii	"M0AR\000"
.LASF158:
	.ascii	"AHB3ENR\000"
.LASF29:
	.ascii	"EXTI2_IRQn\000"
.LASF153:
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
.LASF133:
	.ascii	"MISR\000"
.LASF65:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF3:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"WWDG_IRQn\000"
.LASF121:
	.ascii	"SHCSR\000"
.LASF180:
	.ascii	"dma/dma.c\000"
.LASF86:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF144:
	.ascii	"HISR\000"
.LASF164:
	.ascii	"APB1LPENR\000"
.LASF81:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF122:
	.ascii	"CFSR\000"
.LASF171:
	.ascii	"buff0\000"
.LASF172:
	.ascii	"buff1\000"
.LASF15:
	.ascii	"BusFault_IRQn\000"
.LASF147:
	.ascii	"DMA_TypeDef\000"
.LASF47:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF31:
	.ascii	"EXTI4_IRQn\000"
.LASF142:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF22:
	.ascii	"PVD_IRQn\000"
.LASF39:
	.ascii	"ADC_IRQn\000"
.LASF110:
	.ascii	"ICPR\000"
.LASF160:
	.ascii	"APB2ENR\000"
.LASF71:
	.ascii	"TIM5_IRQn\000"
.LASF161:
	.ascii	"AHB1LPENR\000"
.LASF52:
	.ascii	"I2C1_EV_IRQn\000"
.LASF40:
	.ascii	"CAN1_TX_IRQn\000"
.LASF7:
	.ascii	"uint16_t\000"
.LASF33:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF177:
	.ascii	"IRQn\000"
.LASF41:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF151:
	.ascii	"AHB2RSTR\000"
.LASF115:
	.ascii	"STIR\000"
.LASF125:
	.ascii	"MMFAR\000"
.LASF62:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF105:
	.ascii	"RESERVED0\000"
.LASF155:
	.ascii	"RESERVED1\000"
.LASF109:
	.ascii	"RESERVED2\000"
.LASF111:
	.ascii	"RESERVED3\000"
.LASF113:
	.ascii	"RESERVED4\000"
.LASF114:
	.ascii	"RESERVED5\000"
.LASF167:
	.ascii	"RESERVED6\000"
.LASF1:
	.ascii	"short int\000"
.LASF90:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF93:
	.ascii	"I2C3_EV_IRQn\000"
.LASF2:
	.ascii	"long int\000"
.LASF58:
	.ascii	"USART1_IRQn\000"
.LASF74:
	.ascii	"UART5_IRQn\000"
.LASF13:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF181:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrfV1.7\000"
.LASF78:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF169:
	.ascii	"PLLI2SCFGR\000"
.LASF178:
	.ascii	"priority\000"
.LASF48:
	.ascii	"TIM1_CC_IRQn\000"
.LASF67:
	.ascii	"TIM8_CC_IRQn\000"
.LASF38:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF174:
	.ascii	"initDMA2_for_OV7670_continuous_mode_double_buffer\000"
.LASF149:
	.ascii	"CFGR\000"
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
.LASF148:
	.ascii	"PLLCFGR\000"
.LASF119:
	.ascii	"VTOR\000"
.LASF53:
	.ascii	"I2C1_ER_IRQn\000"
.LASF141:
	.ascii	"M1AR\000"
.LASF92:
	.ascii	"USART6_IRQn\000"
.LASF134:
	.ascii	"ESCR\000"
.LASF20:
	.ascii	"SysTick_IRQn\000"
.LASF163:
	.ascii	"AHB3LPENR\000"
.LASF118:
	.ascii	"ICSR\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"TIM2_IRQn\000"
.LASF157:
	.ascii	"AHB2ENR\000"
.LASF4:
	.ascii	"int32_t\000"
.LASF97:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF176:
	.ascii	"initDMA2_for_OV7670_snapshot\000"
.LASF18:
	.ascii	"DebugMonitor_IRQn\000"
.LASF145:
	.ascii	"LIFCR\000"
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
.LASF85:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF106:
	.ascii	"ICER\000"
.LASF80:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF57:
	.ascii	"SPI2_IRQn\000"
.LASF112:
	.ascii	"IABR\000"
.LASF76:
	.ascii	"TIM7_IRQn\000"
.LASF143:
	.ascii	"LISR\000"
.LASF35:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF0:
	.ascii	"signed char\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"EXTI3_IRQn\000"
.LASF108:
	.ascii	"ISPR\000"
.LASF129:
	.ascii	"ISAR\000"
.LASF135:
	.ascii	"ESUR\000"
.LASF95:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF60:
	.ascii	"USART3_IRQn\000"
.LASF46:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF102:
	.ascii	"FPU_IRQn\000"
.LASF82:
	.ascii	"ETH_IRQn\000"
.LASF150:
	.ascii	"AHB1RSTR\000"
.LASF175:
	.ascii	"initDMA2_for_OV7670_continuous_mode\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

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
	.file	"lis302dl.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "lis302dl/lis302dl.c"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> LIS302: LIS302_CTRL_REG1 [%x]\012\000"
	.align	2
.LC1:
	.ascii	"-> LIS302: LIS302_CTRL_REG2 [%x]\012\000"
	.align	2
.LC2:
	.ascii	"-> LIS302: LIS302_CTRL_REG3 [%x]\012\000"
	.align	2
.LC3:
	.ascii	"-> LIS302: LIS302_WHO_AM_I [%x]\012\000"
	.text
	.align	1
	.p2align 2,,3
	.global	initLIS320DL
	.syntax unified
	.thumb
	.thumb_func
	.type	initLIS320DL, %function
initLIS320DL:
.LFB110:
	.loc 1 10 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 12 3 view .LVU1
	.loc 1 13 3 view .LVU2
	.loc 1 15 3 view .LVU3
	.loc 1 10 1 is_stmt 0 view .LVU4
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 20 3 view .LVU5
	ldr	r4, .L4
	.loc 1 15 3 view .LVU6
	movs	r0, #32
	bl	initSPI1_accelerometer
.LVL0:
	.loc 1 20 3 is_stmt 1 view .LVU7
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 20 14 view .LVU8
	.loc 1 21 3 view .LVU9
	movs	r0, #32
	bl	txByteSPI1
.LVL1:
	.loc 1 22 3 view .LVU10
	movs	r0, #71
	bl	txByteSPI1
.LVL2:
	.loc 1 23 3 view .LVU11
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	.loc 1 25 3 is_stmt 0 view .LVU12
	movs	r0, #100
	.loc 1 23 3 view .LVU13
	str	r3, [r4, #20]
	.loc 1 23 15 is_stmt 1 view .LVU14
	.loc 1 25 3 view .LVU15
	bl	delay_ms
.LVL3:
	.loc 1 27 3 view .LVU16
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 27 14 view .LVU17
	.loc 1 28 3 view .LVU18
	movs	r0, #160
	bl	txByteSPI1
.LVL4:
	.loc 1 29 3 view .LVU19
	.loc 1 29 12 is_stmt 0 view .LVU20
	bl	rxByteSPI1
.LVL5:
	mov	r1, r0
.LVL6:
	.loc 1 30 3 is_stmt 1 view .LVU21
	ldr	r0, .L4+4
	bl	printUSART2
.LVL7:
	.loc 1 31 3 view .LVU22
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 31 15 view .LVU23
	.loc 1 34 3 view .LVU24
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 34 14 view .LVU25
	.loc 1 35 3 view .LVU26
	movs	r0, #161
	bl	txByteSPI1
.LVL8:
	.loc 1 36 3 view .LVU27
	.loc 1 36 12 is_stmt 0 view .LVU28
	bl	rxByteSPI1
.LVL9:
	mov	r1, r0
.LVL10:
	.loc 1 37 3 is_stmt 1 view .LVU29
	ldr	r0, .L4+8
	bl	printUSART2
.LVL11:
	.loc 1 38 3 view .LVU30
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 38 15 view .LVU31
	.loc 1 40 3 view .LVU32
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 40 14 view .LVU33
	.loc 1 41 3 view .LVU34
	movs	r0, #162
	bl	txByteSPI1
.LVL12:
	.loc 1 42 3 view .LVU35
	.loc 1 42 12 is_stmt 0 view .LVU36
	bl	rxByteSPI1
.LVL13:
	mov	r1, r0
.LVL14:
	.loc 1 43 3 is_stmt 1 view .LVU37
	ldr	r0, .L4+12
	bl	printUSART2
.LVL15:
	.loc 1 44 3 view .LVU38
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 44 15 view .LVU39
	.loc 1 46 3 view .LVU40
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 46 14 view .LVU41
	.loc 1 47 3 view .LVU42
	movs	r0, #143
	bl	txByteSPI1
.LVL16:
	.loc 1 48 3 view .LVU43
	.loc 1 48 12 is_stmt 0 view .LVU44
	bl	rxByteSPI1
.LVL17:
	mov	r1, r0
.LVL18:
	.loc 1 49 3 is_stmt 1 view .LVU45
	ldr	r0, .L4+16
	bl	printUSART2
.LVL19:
	.loc 1 50 3 view .LVU46
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 50 15 view .LVU47
	.loc 1 52 1 is_stmt 0 view .LVU48
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	1073876992
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE110:
	.size	initLIS320DL, .-initLIS320DL
	.align	1
	.p2align 2,,3
	.global	getDataLIS302DL
	.syntax unified
	.thumb
	.thumb_func
	.type	getDataLIS302DL, %function
getDataLIS302DL:
.LVL20:
.LFB111:
	.loc 1 55 41 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 57 3 view .LVU50
	.loc 1 59 3 view .LVU51
	.loc 1 60 3 view .LVU52
	.loc 1 55 41 is_stmt 0 view .LVU53
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 59 17 view .LVU54
	movs	r3, #0
	.loc 1 63 3 view .LVU55
	ldr	r6, .L10
	.loc 1 59 17 view .LVU56
	strh	r3, [r0]	@ unaligned
	.loc 1 61 3 is_stmt 1 view .LVU57
	.loc 1 61 17 is_stmt 0 view .LVU58
	strb	r3, [r0, #2]
	.loc 1 63 3 is_stmt 1 view .LVU59
	ldr	r3, [r6, #20]
	bic	r3, r3, #8
	.loc 1 55 41 is_stmt 0 view .LVU60
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 63 3 view .LVU61
	str	r3, [r6, #20]
	.loc 1 63 14 is_stmt 1 view .LVU62
	.loc 1 64 3 view .LVU63
	.loc 1 55 41 is_stmt 0 view .LVU64
	mov	r5, r0
	.loc 1 64 3 view .LVU65
	movs	r0, #167
.LVL21:
	.loc 1 64 3 view .LVU66
	bl	txByteSPI1
.LVL22:
	.loc 1 65 3 is_stmt 1 view .LVU67
	.loc 1 65 12 is_stmt 0 view .LVU68
	bl	rxByteSPI1
.LVL23:
	.loc 1 66 3 is_stmt 1 view .LVU69
	ldr	r3, [r6, #20]
	orr	r3, r3, #8
	str	r3, [r6, #20]
	.loc 1 66 15 view .LVU70
	.loc 1 67 3 view .LVU71
	movs	r0, #100
	bl	delay_us
.LVL24:
	.loc 1 69 3 view .LVU72
	.loc 1 69 14 is_stmt 0 view .LVU73
	ldr	r3, .L10+4
	ldm	r3, {r0, r1}
	str	r0, [sp]
	strh	r1, [sp, #4]	@ movhi
	.loc 1 70 3 is_stmt 1 view .LVU74
	ldr	r3, [r6, #20]
	bic	r3, r3, #8
	str	r3, [r6, #20]
	.loc 1 70 14 view .LVU75
	.loc 1 71 3 view .LVU76
	movs	r0, #169
	bl	txByteSPI1
.LVL25:
	.loc 1 72 3 view .LVU77
	.loc 1 72 14 view .LVU78
	mov	r4, sp
	add	r6, sp, #6
.LVL26:
.L7:
	.loc 1 73 5 discriminator 3 view .LVU79
	.loc 1 73 15 is_stmt 0 discriminator 3 view .LVU80
	bl	rxByteSPI1
.LVL27:
	.loc 1 73 13 discriminator 3 view .LVU81
	strb	r0, [r4], #1
.LVL28:
	.loc 1 72 19 is_stmt 1 discriminator 3 view .LVU82
	.loc 1 72 14 discriminator 3 view .LVU83
	cmp	r4, r6
	bne	.L7
	.loc 1 75 3 view .LVU84
	ldr	r4, .L10
.LVL29:
	.loc 1 75 3 is_stmt 0 view .LVU85
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 75 15 is_stmt 1 view .LVU86
	.loc 1 82 3 view .LVU87
	.loc 1 83 17 is_stmt 0 view .LVU88
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	.loc 1 82 17 view .LVU89
	ldrb	r2, [sp]	@ zero_extendqisi2
	.loc 1 83 17 view .LVU90
	strb	r3, [r5, #1]
	.loc 1 84 17 view .LVU91
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	.loc 1 82 17 view .LVU92
	strb	r2, [r5]
	.loc 1 83 3 is_stmt 1 view .LVU93
	.loc 1 84 3 view .LVU94
	.loc 1 84 17 is_stmt 0 view .LVU95
	strb	r3, [r5, #2]
	.loc 1 91 3 is_stmt 1 view .LVU96
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 91 14 view .LVU97
	.loc 1 92 3 view .LVU98
	movs	r0, #32
	bl	txByteSPI1
.LVL30:
	.loc 1 93 3 view .LVU99
	movs	r0, #71
	bl	txByteSPI1
.LVL31:
	.loc 1 94 3 view .LVU100
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 94 15 view .LVU101
	.loc 1 95 1 is_stmt 0 view .LVU102
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL32:
.L11:
	.loc 1 95 1 view .LVU103
	.align	2
.L10:
	.word	1073876992
	.word	.LANCHOR0
	.cfi_endproc
.LFE111:
	.size	getDataLIS302DL, .-getDataLIS302DL
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC4:
	.ascii	"\000\000\000\000\000\000"
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "lis302dl/../delay/delay.h"
	.file 5 "lis302dl/../usart/usart.h"
	.file 6 "lis302dl/../spi/spi.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3ed
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1d
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x22
	.byte	0x17
	.4byte	0x31
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x58
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x31
	.byte	0x19
	.4byte	0x6f
	.uleb128 0x9
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x34
	.byte	0x19
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x12
	.byte	0x28
	.byte	0x3
	.2byte	0x28e
	.byte	0x9
	.4byte	0x125
	.uleb128 0x4
	.4byte	.LASF13
	.2byte	0x290
	.4byte	0x81
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.2byte	0x291
	.4byte	0x81
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF15
	.2byte	0x292
	.4byte	0x81
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF16
	.2byte	0x293
	.4byte	0x81
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x81
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0x81
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF17
	.2byte	0x296
	.4byte	0x6a
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF18
	.2byte	0x297
	.4byte	0x6a
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF19
	.2byte	0x298
	.4byte	0x81
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x135
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	0x81
	.4byte	0x135
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x125
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x29a
	.byte	0x3
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa
	.4byte	0x158
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x10
	.4byte	0x16a
	.uleb128 0x6
	.4byte	0x16a
	.uleb128 0x14
	.byte	0
	.uleb128 0xd
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x6
	.byte	0x1e
	.byte	0x9
	.4byte	0x4d
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9
	.4byte	0x193
	.uleb128 0x6
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1f
	.byte	0x9
	.4byte	0x4d
	.4byte	0x1a9
	.uleb128 0x6
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x1d
	.4byte	0x1ba
	.uleb128 0x6
	.4byte	0x5f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x283
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x37
	.byte	0x1e
	.4byte	0x283
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x39
	.byte	0xc
	.4byte	0x76
	.uleb128 0x19
	.ascii	"k\000"
	.byte	0x1
	.byte	0x45
	.byte	0xb
	.4byte	0x4d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LVL22
	.4byte	0x193
	.4byte	0x224
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa7
	.byte	0
	.uleb128 0x5
	.4byte	.LVL23
	.4byte	0x176
	.uleb128 0x2
	.4byte	.LVL24
	.4byte	0x147
	.4byte	0x241
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.4byte	.LVL25
	.4byte	0x193
	.4byte	0x255
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa9
	.byte	0
	.uleb128 0x5
	.4byte	.LVL27
	.4byte	0x176
	.uleb128 0x2
	.4byte	.LVL30
	.4byte	0x193
	.4byte	0x272
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL31
	.4byte	0x193
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x26
	.uleb128 0xb
	.4byte	0x4d
	.4byte	0x298
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0xc
	.byte	0xb
	.4byte	0x4d
	.uleb128 0x1c
	.ascii	"k\000"
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x1d
	.4byte	.LASF26
	.byte	0x1
	.byte	0xd
	.byte	0xc
	.4byte	0x76
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2
	.4byte	.LVL0
	.4byte	0x1a9
	.4byte	0x2e7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	0x193
	.4byte	0x2fb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	0x193
	.4byte	0x30f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.uleb128 0x2
	.4byte	.LVL3
	.4byte	0x182
	.4byte	0x323
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.4byte	.LVL4
	.4byte	0x193
	.4byte	0x337
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL5
	.4byte	0x176
	.uleb128 0x2
	.4byte	.LVL7
	.4byte	0x158
	.4byte	0x357
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL8
	.4byte	0x193
	.4byte	0x36b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	.LVL9
	.4byte	0x176
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	0x158
	.4byte	0x38b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2
	.4byte	.LVL12
	.4byte	0x193
	.4byte	0x39f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.byte	0
	.uleb128 0x5
	.4byte	.LVL13
	.4byte	0x176
	.uleb128 0x2
	.4byte	.LVL15
	.4byte	0x158
	.4byte	0x3bf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2
	.4byte	.LVL16
	.4byte	0x193
	.4byte	0x3d3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0x8f
	.byte	0
	.uleb128 0x5
	.4byte	.LVL17
	.4byte	0x176
	.uleb128 0xf
	.4byte	.LVL19
	.4byte	0x158
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LFE111-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU78
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU85
.LLST2:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU45
	.uleb128 .LVU46
.LLST0:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-1-.Ltext0
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-1-.Ltext0
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-1-.Ltext0
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF15:
	.ascii	"OSPEEDR\000"
.LASF13:
	.ascii	"MODER\000"
.LASF30:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrf_i_komandeV1.0\000"
.LASF22:
	.ascii	"printUSART2\000"
.LASF28:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF4:
	.ascii	"int8_t\000"
.LASF14:
	.ascii	"OTYPER\000"
.LASF27:
	.ascii	"data\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"delay_ms\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"BSRRH\000"
.LASF33:
	.ascii	"getDataLIS302DL\000"
.LASF32:
	.ascii	"txByteSPI1\000"
.LASF21:
	.ascii	"delay_us\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF20:
	.ascii	"GPIO_TypeDef\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF26:
	.ascii	"utmp32\000"
.LASF34:
	.ascii	"accel_data\000"
.LASF16:
	.ascii	"PUPDR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"char\000"
.LASF35:
	.ascii	"initLIS320DL\000"
.LASF29:
	.ascii	"lis302dl/lis302dl.c\000"
.LASF31:
	.ascii	"rxByteSPI1\000"
.LASF1:
	.ascii	"short int\000"
.LASF7:
	.ascii	"uint16_t\000"
.LASF25:
	.ascii	"initSPI1_accelerometer\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF2:
	.ascii	"long int\000"
.LASF17:
	.ascii	"BSRRL\000"
.LASF0:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"LCKR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

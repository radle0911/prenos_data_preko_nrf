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
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x385
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x1d
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x31
	.4byte	0x58
	.uleb128 0x7
	.4byte	0x49
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x34
	.4byte	0x6e
	.uleb128 0x7
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x2c
	.2byte	0x1c4
	.4byte	0x114
	.uleb128 0x2
	.ascii	"CR\000"
	.2byte	0x1c6
	.4byte	0x69
	.byte	0
	.uleb128 0x2
	.ascii	"SR\000"
	.2byte	0x1c7
	.4byte	0x69
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.2byte	0x1c8
	.4byte	0x69
	.byte	0x8
	.uleb128 0x2
	.ascii	"IER\000"
	.2byte	0x1c9
	.4byte	0x69
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF12
	.2byte	0x1ca
	.4byte	0x69
	.byte	0x10
	.uleb128 0x2
	.ascii	"ICR\000"
	.2byte	0x1cb
	.4byte	0x69
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF13
	.2byte	0x1cc
	.4byte	0x69
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF14
	.2byte	0x1cd
	.4byte	0x69
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF15
	.2byte	0x1ce
	.4byte	0x69
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x1cf
	.4byte	0x69
	.byte	0x24
	.uleb128 0x2
	.ascii	"DR\000"
	.2byte	0x1d0
	.4byte	0x69
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.2byte	0x1d1
	.4byte	0x8a
	.uleb128 0x4
	.byte	0x18
	.2byte	0x1d7
	.4byte	0x16f
	.uleb128 0x2
	.ascii	"CR\000"
	.2byte	0x1d9
	.4byte	0x69
	.byte	0
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x1da
	.4byte	0x69
	.byte	0x4
	.uleb128 0x2
	.ascii	"PAR\000"
	.2byte	0x1db
	.4byte	0x69
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x1dc
	.4byte	0x69
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x1dd
	.4byte	0x69
	.byte	0x10
	.uleb128 0x2
	.ascii	"FCR\000"
	.2byte	0x1de
	.4byte	0x69
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.2byte	0x1df
	.4byte	0x11f
	.uleb128 0x4
	.byte	0x10
	.2byte	0x1e1
	.4byte	0x1b3
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x1e3
	.4byte	0x69
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x1e4
	.4byte	0x69
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x1e5
	.4byte	0x69
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x1e6
	.4byte	0x69
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.2byte	0x1e7
	.4byte	0x17a
	.uleb128 0xa
	.4byte	0x5f
	.4byte	0x1ce
	.uleb128 0xb
	.4byte	0x83
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x33e
	.uleb128 0x2
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x69
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x2e0
	.4byte	0x69
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x2e1
	.4byte	0x69
	.byte	0x8
	.uleb128 0x2
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x69
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x2e3
	.4byte	0x69
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x2e4
	.4byte	0x69
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x2e5
	.4byte	0x69
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x2e6
	.4byte	0x5f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x2e7
	.4byte	0x69
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x2e8
	.4byte	0x69
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x2e9
	.4byte	0x1be
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x2ea
	.4byte	0x69
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x2eb
	.4byte	0x69
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x2ec
	.4byte	0x69
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x2ed
	.4byte	0x5f
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x2ee
	.4byte	0x69
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x2ef
	.4byte	0x69
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x2f0
	.4byte	0x1be
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x2f1
	.4byte	0x69
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x2f2
	.4byte	0x69
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x2f3
	.4byte	0x69
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2f4
	.4byte	0x5f
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x2f5
	.4byte	0x69
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x2f6
	.4byte	0x69
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x2f7
	.4byte	0x1be
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x2f8
	.4byte	0x69
	.byte	0x70
	.uleb128 0x2
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x69
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x2fa
	.4byte	0x1be
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x2fb
	.4byte	0x69
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x2fc
	.4byte	0x69
	.byte	0x84
	.byte	0
	.uleb128 0x5
	.4byte	.LASF54
	.2byte	0x2fd
	.4byte	0x1ce
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x382
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6
	.byte	0x36
	.4byte	0x382
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x1
	.byte	0x6
	.byte	0x46
	.4byte	0x49
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x53
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
	.uleb128 0x2
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
	.uleb128 0x5
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
	.uleb128 0x21
	.sleb128 25
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF22:
	.ascii	"LISR\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF21:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF1:
	.ascii	"short int\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF16:
	.ascii	"CWSIZER\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF13:
	.ascii	"ESCR\000"
.LASF26:
	.ascii	"DMA_TypeDef\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF57:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/ov7670_capture_image_v1.4\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF25:
	.ascii	"HIFCR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF59:
	.ascii	"buff0\000"
.LASF23:
	.ascii	"HISR\000"
.LASF2:
	.ascii	"long int\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF58:
	.ascii	"initDMA2_for_OV7670_snapshot\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF14:
	.ascii	"ESUR\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF17:
	.ascii	"DCMI_TypeDef\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF20:
	.ascii	"M1AR\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF12:
	.ascii	"MISR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF24:
	.ascii	"LIFCR\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF56:
	.ascii	"dma/dma.c\000"
.LASF19:
	.ascii	"M0AR\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF18:
	.ascii	"NDTR\000"
.LASF55:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF60:
	.ascii	"tsize\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF15:
	.ascii	"CWSTRTR\000"
.LASF11:
	.ascii	"RISR\000"
.LASF48:
	.ascii	"APB2LPENR\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

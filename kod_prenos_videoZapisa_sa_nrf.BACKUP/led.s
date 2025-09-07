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
	.file	"led.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "led/led.c"
	.align	1
	.p2align 2,,3
	.global	initGPIOD_LED
	.syntax unified
	.thumb
	.thumb_func
	.type	initGPIOD_LED, %function
initGPIOD_LED:
.LFB110:
	.loc 1 7 25 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 8 3 view .LVU1
	.loc 1 8 6 is_stmt 0 view .LVU2
	ldr	r1, .L3
	.loc 1 9 8 view .LVU3
	ldr	r3, .L3+4
	.loc 1 8 6 view .LVU4
	ldr	r2, [r1, #48]
	.loc 1 8 16 view .LVU5
	orr	r2, r2, #8
	str	r2, [r1, #48]
	.loc 1 9 3 is_stmt 1 view .LVU6
	.loc 1 9 8 is_stmt 0 view .LVU7
	ldr	r2, [r3]
	.loc 1 9 16 view .LVU8
	orr	r2, r2, #1426063360
	str	r2, [r3]
	.loc 1 10 3 is_stmt 1 view .LVU9
	.loc 1 10 8 is_stmt 0 view .LVU10
	ldr	r2, [r3, #4]
	.loc 1 10 17 view .LVU11
	bic	r2, r2, #61440
	str	r2, [r3, #4]
	.loc 1 11 3 is_stmt 1 view .LVU12
	.loc 1 11 8 is_stmt 0 view .LVU13
	ldr	r2, [r3, #8]
	.loc 1 11 18 view .LVU14
	orr	r2, r2, #-16777216
	str	r2, [r3, #8]
	.loc 1 12 3 is_stmt 1 view .LVU15
	.loc 1 12 8 is_stmt 0 view .LVU16
	ldr	r2, [r3, #12]
	.loc 1 12 16 view .LVU17
	bic	r2, r2, #-16777216
	str	r2, [r3, #12]
	.loc 1 13 1 view .LVU18
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073875968
	.cfi_endproc
.LFE110:
	.size	initGPIOD_LED, .-initGPIOD_LED
	.align	1
	.p2align 2,,3
	.global	initPWM
	.syntax unified
	.thumb
	.thumb_func
	.type	initPWM, %function
initPWM:
.LFB111:
	.loc 1 16 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 17 3 view .LVU20
	.loc 1 17 6 is_stmt 0 view .LVU21
	ldr	r0, .L6
	.loc 1 18 8 view .LVU22
	ldr	r2, .L6+4
	.loc 1 17 6 view .LVU23
	ldr	r1, [r0, #48]
	.loc 1 29 15 view .LVU24
	ldr	r3, .L6+8
	.loc 1 17 16 view .LVU25
	orr	r1, r1, #8
	str	r1, [r0, #48]
	.loc 1 18 3 is_stmt 1 view .LVU26
	.loc 1 18 8 is_stmt 0 view .LVU27
	ldr	r1, [r2]
	.loc 1 18 16 view .LVU28
	orr	r1, r1, #-1442840576
	str	r1, [r2]
	.loc 1 19 3 is_stmt 1 view .LVU29
	.loc 1 19 8 is_stmt 0 view .LVU30
	ldr	r1, [r2, #4]
	.loc 1 19 17 view .LVU31
	bic	r1, r1, #61440
	str	r1, [r2, #4]
	.loc 1 20 3 is_stmt 1 view .LVU32
	.loc 1 20 8 is_stmt 0 view .LVU33
	ldr	r1, [r2, #8]
	.loc 1 20 18 view .LVU34
	orr	r1, r1, #-16777216
	str	r1, [r2, #8]
	.loc 1 21 3 is_stmt 1 view .LVU35
	.loc 1 21 8 is_stmt 0 view .LVU36
	ldr	r1, [r2, #12]
	.loc 1 21 16 view .LVU37
	bic	r1, r1, #-16777216
	str	r1, [r2, #12]
	.loc 1 23 3 is_stmt 1 view .LVU38
	.loc 1 23 13 is_stmt 0 view .LVU39
	ldr	r1, [r2, #36]
	.loc 1 23 17 view .LVU40
	orr	r1, r1, #570425344
	orr	r1, r1, #2228224
	str	r1, [r2, #36]
	.loc 1 27 5 is_stmt 1 view .LVU41
	.loc 1 27 8 is_stmt 0 view .LVU42
	ldr	r2, [r0, #64]
	.loc 1 30 15 view .LVU43
	mov	r1, #1000
	.loc 1 27 18 view .LVU44
	orr	r2, r2, #4
	.loc 1 29 15 view .LVU45
	mov	ip, #83
	.loc 1 27 18 view .LVU46
	str	r2, [r0, #64]
	.loc 1 29 5 is_stmt 1 view .LVU47
	.loc 1 29 15 is_stmt 0 view .LVU48
	strh	ip, [r3, #40]	@ movhi
	.loc 1 30 5 is_stmt 1 view .LVU49
	.loc 1 30 15 is_stmt 0 view .LVU50
	str	r1, [r3, #44]
	.loc 1 31 5 is_stmt 1 view .LVU51
	.loc 1 31 9 is_stmt 0 view .LVU52
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 31 15 view .LVU53
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 32 5 is_stmt 1 view .LVU54
	.loc 1 32 9 is_stmt 0 view .LVU55
	ldrh	r2, [r3]
	.loc 1 32 15 view .LVU56
	bic	r2, r2, #112
	lsls	r2, r2, #16
	.loc 1 34 15 view .LVU57
	movs	r1, #0
	.loc 1 32 15 view .LVU58
	lsrs	r2, r2, #16
	strh	r2, [r3]	@ movhi
	.loc 1 34 5 is_stmt 1 view .LVU59
	.loc 1 34 15 is_stmt 0 view .LVU60
	str	r1, [r3, #36]
	.loc 1 36 5 is_stmt 1 view .LVU61
	.loc 1 36 9 is_stmt 0 view .LVU62
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	.loc 1 36 17 view .LVU63
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 37 5 is_stmt 1 view .LVU64
	.loc 1 37 9 is_stmt 0 view .LVU65
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	.loc 1 37 17 view .LVU66
	orr	r2, r2, #26624
	strh	r2, [r3, #24]	@ movhi
	.loc 1 38 5 is_stmt 1 view .LVU67
	.loc 1 38 9 is_stmt 0 view .LVU68
	ldrh	r2, [r3, #28]
	uxth	r2, r2
	.loc 1 38 17 view .LVU69
	orr	r2, r2, #104
	strh	r2, [r3, #28]	@ movhi
	.loc 1 39 5 is_stmt 1 view .LVU70
	.loc 1 39 9 is_stmt 0 view .LVU71
	ldrh	r2, [r3, #28]
	uxth	r2, r2
	.loc 1 39 17 view .LVU72
	orr	r2, r2, #26624
	strh	r2, [r3, #28]	@ movhi
	.loc 1 42 5 is_stmt 1 view .LVU73
	.loc 1 42 16 is_stmt 0 view .LVU74
	str	r1, [r3, #52]
	.loc 1 43 5 is_stmt 1 view .LVU75
	.loc 1 43 16 is_stmt 0 view .LVU76
	str	r1, [r3, #56]
	.loc 1 44 5 is_stmt 1 view .LVU77
	.loc 1 44 16 is_stmt 0 view .LVU78
	str	r1, [r3, #60]
	.loc 1 45 5 is_stmt 1 view .LVU79
	.loc 1 45 16 is_stmt 0 view .LVU80
	str	r1, [r3, #64]
	.loc 1 48 5 is_stmt 1 view .LVU81
	.loc 1 48 9 is_stmt 0 view .LVU82
	ldrh	r2, [r3, #32]
	.loc 1 48 16 view .LVU83
	bic	r2, r2, #8704
	bic	r2, r2, #34
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 50 5 is_stmt 1 view .LVU84
	.loc 1 50 9 is_stmt 0 view .LVU85
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	.loc 1 50 15 view .LVU86
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 52 5 is_stmt 1 view .LVU87
	.loc 1 52 9 is_stmt 0 view .LVU88
	ldrh	r2, [r3, #32]
	uxth	r2, r2
	.loc 1 52 16 view .LVU89
	orr	r2, r2, #4352
	orr	r2, r2, #17
	strh	r2, [r3, #32]	@ movhi
	.loc 1 53 5 is_stmt 1 view .LVU90
	.loc 1 53 9 is_stmt 0 view .LVU91
	ldrh	r2, [r3]
	uxth	r2, r2
	.loc 1 53 15 view .LVU92
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 55 1 view .LVU93
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073887232
	.word	1073875968
	.word	1073743872
	.cfi_endproc
.LFE111:
	.size	initPWM, .-initPWM
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4a4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x1d
	.4byte	.LASF69
	.4byte	.LASF70
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x31
	.byte	0x19
	.4byte	0x64
	.uleb128 0x5
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x34
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x5
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	0x6b
	.4byte	0xa6
	.uleb128 0x9
	.4byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x28
	.2byte	0x28e
	.4byte	0x127
	.uleb128 0x1
	.4byte	.LASF12
	.2byte	0x290
	.4byte	0x76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF13
	.2byte	0x291
	.4byte	0x76
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.2byte	0x292
	.4byte	0x76
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF15
	.2byte	0x293
	.4byte	0x76
	.byte	0xc
	.uleb128 0x2
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x76
	.byte	0x10
	.uleb128 0x2
	.ascii	"ODR\000"
	.2byte	0x295
	.4byte	0x76
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x296
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x297
	.4byte	0x5f
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x298
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x2
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x136
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0x76
	.4byte	0x136
	.uleb128 0x9
	.4byte	0x90
	.byte	0
	.uleb128 0x5
	.4byte	0x127
	.uleb128 0x7
	.4byte	.LASF19
	.2byte	0x29a
	.4byte	0xa6
	.uleb128 0x6
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x2b6
	.uleb128 0x2
	.ascii	"CR\000"
	.2byte	0x2df
	.4byte	0x76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x2e0
	.4byte	0x76
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x2e1
	.4byte	0x76
	.byte	0x8
	.uleb128 0x2
	.ascii	"CIR\000"
	.2byte	0x2e2
	.4byte	0x76
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x2e3
	.4byte	0x76
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x2e4
	.4byte	0x76
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x2e5
	.4byte	0x76
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x2e6
	.4byte	0x6b
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x2e7
	.4byte	0x76
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x2e8
	.4byte	0x76
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x2e9
	.4byte	0x97
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x2ea
	.4byte	0x76
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x2eb
	.4byte	0x76
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x2ec
	.4byte	0x76
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x2ed
	.4byte	0x6b
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x2ee
	.4byte	0x76
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x2ef
	.4byte	0x76
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x2f0
	.4byte	0x97
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x2f1
	.4byte	0x76
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x2f2
	.4byte	0x76
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x2f3
	.4byte	0x76
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x2f4
	.4byte	0x6b
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x2f5
	.4byte	0x76
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x2f6
	.4byte	0x76
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x2f7
	.4byte	0x97
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x2f8
	.4byte	0x76
	.byte	0x70
	.uleb128 0x2
	.ascii	"CSR\000"
	.2byte	0x2f9
	.4byte	0x76
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x2fa
	.4byte	0x97
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x2fb
	.4byte	0x76
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2fc
	.4byte	0x76
	.byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x2fd
	.4byte	0x146
	.uleb128 0x6
	.byte	0x54
	.2byte	0x369
	.4byte	0x478
	.uleb128 0x2
	.ascii	"CR1\000"
	.2byte	0x36b
	.4byte	0x5f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x36c
	.4byte	0x54
	.byte	0x2
	.uleb128 0x2
	.ascii	"CR2\000"
	.2byte	0x36d
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x36e
	.4byte	0x54
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x36f
	.4byte	0x5f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x370
	.4byte	0x54
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x371
	.4byte	0x5f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x372
	.4byte	0x54
	.byte	0xe
	.uleb128 0x2
	.ascii	"SR\000"
	.2byte	0x373
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x374
	.4byte	0x54
	.byte	0x12
	.uleb128 0x2
	.ascii	"EGR\000"
	.2byte	0x375
	.4byte	0x5f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x376
	.4byte	0x54
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x377
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x378
	.4byte	0x54
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x379
	.4byte	0x5f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x37a
	.4byte	0x54
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x37b
	.4byte	0x5f
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF54
	.2byte	0x37c
	.4byte	0x54
	.byte	0x22
	.uleb128 0x2
	.ascii	"CNT\000"
	.2byte	0x37d
	.4byte	0x76
	.byte	0x24
	.uleb128 0x2
	.ascii	"PSC\000"
	.2byte	0x37e
	.4byte	0x5f
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF55
	.2byte	0x37f
	.4byte	0x54
	.byte	0x2a
	.uleb128 0x2
	.ascii	"ARR\000"
	.2byte	0x380
	.4byte	0x76
	.byte	0x2c
	.uleb128 0x2
	.ascii	"RCR\000"
	.2byte	0x381
	.4byte	0x5f
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x382
	.4byte	0x54
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x383
	.4byte	0x76
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x384
	.4byte	0x76
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF59
	.2byte	0x385
	.4byte	0x76
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x386
	.4byte	0x76
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x387
	.4byte	0x5f
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x388
	.4byte	0x54
	.byte	0x46
	.uleb128 0x2
	.ascii	"DCR\000"
	.2byte	0x389
	.4byte	0x5f
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x38a
	.4byte	0x54
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x38b
	.4byte	0x5f
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x38c
	.4byte	0x54
	.byte	0x4e
	.uleb128 0x2
	.ascii	"OR\000"
	.2byte	0x38d
	.4byte	0x5f
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x38e
	.4byte	0x54
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.4byte	.LASF67
	.2byte	0x38f
	.4byte	0x2c1
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
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
.LASF36:
	.ascii	"AHB1LPENR\000"
.LASF53:
	.ascii	"CCER\000"
.LASF26:
	.ascii	"APB1RSTR\000"
.LASF30:
	.ascii	"AHB2ENR\000"
.LASF64:
	.ascii	"DMAR\000"
.LASF50:
	.ascii	"CCMR1\000"
.LASF51:
	.ascii	"CCMR2\000"
.LASF70:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/prenos_data_preko_nrfV1.7\000"
.LASF1:
	.ascii	"short int\000"
.LASF43:
	.ascii	"BDCR\000"
.LASF46:
	.ascii	"PLLI2SCFGR\000"
.LASF45:
	.ascii	"SSCGR\000"
.LASF38:
	.ascii	"AHB3LPENR\000"
.LASF21:
	.ascii	"CFGR\000"
.LASF35:
	.ascii	"RESERVED3\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF33:
	.ascii	"APB1ENR\000"
.LASF55:
	.ascii	"RESERVED9\000"
.LASF13:
	.ascii	"OTYPER\000"
.LASF69:
	.ascii	"led/led.c\000"
.LASF31:
	.ascii	"AHB3ENR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"PUPDR\000"
.LASF57:
	.ascii	"CCR1\000"
.LASF2:
	.ascii	"long int\000"
.LASF59:
	.ascii	"CCR3\000"
.LASF60:
	.ascii	"CCR4\000"
.LASF47:
	.ascii	"RCC_TypeDef\000"
.LASF17:
	.ascii	"BSRRH\000"
.LASF12:
	.ascii	"MODER\000"
.LASF27:
	.ascii	"APB2RSTR\000"
.LASF16:
	.ascii	"BSRRL\000"
.LASF65:
	.ascii	"RESERVED13\000"
.LASF67:
	.ascii	"TIM_TypeDef\000"
.LASF48:
	.ascii	"SMCR\000"
.LASF58:
	.ascii	"CCR2\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF56:
	.ascii	"RESERVED10\000"
.LASF62:
	.ascii	"RESERVED11\000"
.LASF63:
	.ascii	"RESERVED12\000"
.LASF34:
	.ascii	"APB2ENR\000"
.LASF66:
	.ascii	"RESERVED14\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF23:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"DIER\000"
.LASF20:
	.ascii	"PLLCFGR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"APB1LPENR\000"
.LASF61:
	.ascii	"BDTR\000"
.LASF37:
	.ascii	"AHB2LPENR\000"
.LASF25:
	.ascii	"RESERVED0\000"
.LASF28:
	.ascii	"RESERVED1\000"
.LASF32:
	.ascii	"RESERVED2\000"
.LASF14:
	.ascii	"OSPEEDR\000"
.LASF39:
	.ascii	"RESERVED4\000"
.LASF42:
	.ascii	"RESERVED5\000"
.LASF44:
	.ascii	"RESERVED6\000"
.LASF52:
	.ascii	"RESERVED7\000"
.LASF54:
	.ascii	"RESERVED8\000"
.LASF68:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF29:
	.ascii	"AHB1ENR\000"
.LASF72:
	.ascii	"initGPIOD_LED\000"
.LASF71:
	.ascii	"initPWM\000"
.LASF22:
	.ascii	"AHB1RSTR\000"
.LASF24:
	.ascii	"AHB3RSTR\000"
.LASF19:
	.ascii	"GPIO_TypeDef\000"
.LASF18:
	.ascii	"LCKR\000"
.LASF41:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

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
	.file	"gpioc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "gpio/gpioc.c"
	.align	1
	.p2align 2,,3
	.global	initGPIOC6_GND
	.syntax unified
	.thumb
	.thumb_func
	.type	initGPIOC6_GND, %function
initGPIOC6_GND:
.LFB110:
	.loc 1 8 26 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 3 view .LVU1
	.loc 1 9 6 is_stmt 0 view .LVU2
	ldr	r1, .L3
	.loc 1 10 8 view .LVU3
	ldr	r3, .L3+4
	.loc 1 9 6 view .LVU4
	ldr	r2, [r1, #48]
	.loc 1 9 16 view .LVU5
	orr	r2, r2, #4
	str	r2, [r1, #48]
	.loc 1 10 3 is_stmt 1 view .LVU6
	.loc 1 10 8 is_stmt 0 view .LVU7
	ldr	r2, [r3]
	.loc 1 10 16 view .LVU8
	bic	r2, r2, #12288
	str	r2, [r3]
	.loc 1 13 3 is_stmt 1 view .LVU9
	.loc 1 13 8 is_stmt 0 view .LVU10
	ldr	r2, [r3, #12]
	.loc 1 13 16 view .LVU11
	orr	r2, r2, #4096
	str	r2, [r3, #12]
	.loc 1 14 1 view .LVU12
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073874944
	.cfi_endproc
.LFE110:
	.size	initGPIOC6_GND, .-initGPIOC6_GND
	.align	1
	.p2align 2,,3
	.global	chkConnection_GPIOC6_GND
	.syntax unified
	.thumb
	.thumb_func
	.type	chkConnection_GPIOC6_GND, %function
chkConnection_GPIOC6_GND:
.LVL0:
.LFB111:
	.loc 1 18 50 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 19 3 view .LVU14
	.loc 1 19 13 is_stmt 0 view .LVU15
	ldr	r3, .L7
	ldr	r3, [r3, #16]
	.loc 1 19 6 view .LVU16
	lsls	r3, r3, #25
	.loc 1 20 5 is_stmt 1 view .LVU17
	.loc 1 20 16 is_stmt 0 view .LVU18
	itt	pl
	movpl	r3, #1
	strbpl	r3, [r0]
	.loc 1 22 1 view .LVU19
	bx	lr
.L8:
	.align	2
.L7:
	.word	1073874944
	.cfi_endproc
.LFE111:
	.size	chkConnection_GPIOC6_GND, .-chkConnection_GPIOC6_GND
.Letext0:
	.file 2 "/usr/lib/gcc/arm-none-eabi/12.2.1/include/stdint.h"
	.file 3 "/home/eldar/workspace/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x302
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1d
	.4byte	.LASF50
	.4byte	.LASF51
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2e
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x2
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
	.uleb128 0x2
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	0x6b
	.4byte	0xa6
	.uleb128 0x7
	.4byte	0x90
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x3
	.ascii	"IDR\000"
	.2byte	0x294
	.4byte	0x76
	.byte	0x10
	.uleb128 0x3
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
	.uleb128 0x3
	.ascii	"AFR\000"
	.2byte	0x299
	.4byte	0x136
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.4byte	0x76
	.4byte	0x136
	.uleb128 0x7
	.4byte	0x90
	.byte	0
	.uleb128 0x5
	.4byte	0x127
	.uleb128 0x9
	.4byte	.LASF19
	.2byte	0x29a
	.4byte	0xa6
	.uleb128 0x8
	.byte	0x88
	.2byte	0x2dd
	.4byte	0x2b6
	.uleb128 0x3
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
	.uleb128 0x3
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
	.uleb128 0x3
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
	.uleb128 0x9
	.4byte	.LASF47
	.2byte	0x2fd
	.4byte	0x146
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ed
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0x12
	.byte	0x28
	.4byte	0x2ed
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x42
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0x8
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
	.uleb128 0x3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
.LASF43:
	.ascii	"BDCR\000"
.LASF14:
	.ascii	"OSPEEDR\000"
.LASF29:
	.ascii	"AHB1ENR\000"
.LASF12:
	.ascii	"MODER\000"
.LASF45:
	.ascii	"SSCGR\000"
.LASF36:
	.ascii	"AHB1LPENR\000"
.LASF24:
	.ascii	"AHB3RSTR\000"
.LASF49:
	.ascii	"GNU C17 12.2.1 20221205 -mlittle-endian -mthumb -mc"
	.ascii	"pu=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mf"
	.ascii	"pu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2 -fsingle-p"
	.ascii	"recision-constant\000"
.LASF38:
	.ascii	"AHB3LPENR\000"
.LASF25:
	.ascii	"RESERVED0\000"
.LASF28:
	.ascii	"RESERVED1\000"
.LASF32:
	.ascii	"RESERVED2\000"
.LASF35:
	.ascii	"RESERVED3\000"
.LASF39:
	.ascii	"RESERVED4\000"
.LASF42:
	.ascii	"RESERVED5\000"
.LASF44:
	.ascii	"RESERVED6\000"
.LASF30:
	.ascii	"AHB2ENR\000"
.LASF13:
	.ascii	"OTYPER\000"
.LASF26:
	.ascii	"APB1RSTR\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF37:
	.ascii	"AHB2LPENR\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"PLLCFGR\000"
.LASF46:
	.ascii	"PLLI2SCFGR\000"
.LASF31:
	.ascii	"AHB3ENR\000"
.LASF34:
	.ascii	"APB2ENR\000"
.LASF33:
	.ascii	"APB1ENR\000"
.LASF40:
	.ascii	"APB1LPENR\000"
.LASF27:
	.ascii	"APB2RSTR\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"GPIO_TypeDef\000"
.LASF52:
	.ascii	"chkConnection_GPIOC6_GND\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF21:
	.ascii	"CFGR\000"
.LASF51:
	.ascii	"/home/eldar/svi_projekti_msut/prenos_data_preko_nrf"
	.ascii	"/kod_sa_3_stm32.BACKUP\000"
.LASF15:
	.ascii	"PUPDR\000"
.LASF3:
	.ascii	"long long int\000"
.LASF53:
	.ascii	"node_type\000"
.LASF48:
	.ascii	"char\000"
.LASF54:
	.ascii	"initGPIOC6_GND\000"
.LASF22:
	.ascii	"AHB1RSTR\000"
.LASF1:
	.ascii	"short int\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF41:
	.ascii	"APB2LPENR\000"
.LASF47:
	.ascii	"RCC_TypeDef\000"
.LASF17:
	.ascii	"BSRRH\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF2:
	.ascii	"long int\000"
.LASF16:
	.ascii	"BSRRL\000"
.LASF23:
	.ascii	"AHB2RSTR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF50:
	.ascii	"gpio/gpioc.c\000"
.LASF18:
	.ascii	"LCKR\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"

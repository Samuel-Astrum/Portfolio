	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gba.c"
	.text
	.align	2
	.global	drawRectangle
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRectangle, %function
drawRectangle:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r2, #0
	ldrh	ip, [sp, #8]
	ble	.L1
	ldr	lr, .L10
	add	r2, r1, r3
	rsb	r2, r2, r2, lsl #4
	ldr	r1, [lr]
	add	r2, r0, r2, lsl #4
	sub	lr, r3, r3, lsl #4
	add	r4, r4, r0
	add	r1, r1, r2, lsl #1
	lsl	lr, lr, #5
.L3:
	cmp	r3, #0
	addgt	r2, r1, lr
	ble	.L6
.L4:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L4
.L6:
	add	r0, r0, #1
	cmp	r0, r4
	add	r1, r1, #2
	bne	.L3
.L1:
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawRectangle, .-drawRectangle
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r3, [r3]
	add	r2, r3, #76800
.L13:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L13
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L19:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L19
	mov	r2, #67108864
.L20:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L20
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	cmp	ip, r1
	ble	.L28
	add	r1, r1, r3
	cmp	r1, lr
	bgt	.L30
.L28:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L30:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L28
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	drawBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBG, %function
drawBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	mov	r0, #992
	ldr	r3, .L84
	ldr	r1, [r3]
	add	r2, r1, #6720
.L32:
	sub	r3, r2, #6720
.L33:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L33
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r3, #2
	bne	.L32
	mov	ip, #0
	ldr	r0, .L84+4
	add	r2, r1, #13440
.L36:
	sub	r3, r2, #6720
.L35:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L35
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r3, #2
	bne	.L36
	mov	ip, #0
	mov	r0, #31744
	add	r2, r1, #19968
	add	r2, r2, #192
.L37:
	sub	r3, r2, #6720
.L38:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L38
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r3, #2
	bne	.L37
	mov	ip, #0
	mov	r0, #31744
	add	r2, r1, #26880
.L41:
	sub	r3, r2, #6720
.L40:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L40
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r2, #2
	bne	.L41
	mov	ip, #0
	mov	r0, #31744
	add	r2, r1, #33536
	add	r2, r2, #64
.L42:
	sub	r3, r2, #6720
.L43:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L43
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r2, #2
	bne	.L42
	mov	ip, #0
	add	r2, r1, #40192
	ldr	r0, .L84+4
	add	r2, r2, #128
.L46:
	sub	r3, r2, #6720
.L45:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L45
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r2, #2
	bne	.L46
	mov	ip, #0
	add	r2, r1, #46848
	ldr	r0, .L84+8
	add	r2, r2, #192
.L47:
	sub	r3, r2, #6720
.L48:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L48
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r2, #2
	bne	.L47
	mov	ip, #0
	ldr	r0, .L84+8
	add	r2, r1, #53760
.L51:
	sub	r3, r2, #6720
.L50:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L50
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r2, #2
	bne	.L51
	mov	ip, #0
	add	r2, r1, #60416
	ldr	r0, .L84+8
	add	r2, r2, #64
.L52:
	sub	r3, r2, #6720
.L53:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L53
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r3, #2
	bne	.L52
	mov	ip, #0
	add	r2, r1, #66560
	ldr	r0, .L84+4
	add	r2, r2, #640
.L56:
	sub	r3, r2, #6720
.L55:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L55
	add	ip, ip, #1
	cmp	ip, #260
	add	r2, r2, #2
	bne	.L56
	mov	r0, #31
	add	r1, r1, #4800
	add	r2, r1, #10
	add	ip, r1, #20
.L57:
	sub	r3, r2, #2400
.L58:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L58
	add	r2, r2, #2
	cmp	ip, r2
	bne	.L57
	mov	r0, #31
	add	r2, r1, #30
	add	ip, r1, #40
.L61:
	sub	r3, r2, #2400
.L60:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L60
	add	r2, r2, #2
	cmp	ip, r2
	bne	.L61
	add	r2, r1, #50
	add	r0, r1, #60
	mov	r1, #31
.L62:
	sub	r3, r2, #2400
.L63:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L63
	add	r2, r2, #2
	cmp	r0, r2
	bne	.L62
	bx	lr
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.word	5460
	.word	15855
	.size	drawBG, .-drawBG
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"

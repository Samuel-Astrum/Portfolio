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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L4+4
	ldr	r0, .L4+8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r0, .L4+16
	ldr	r1, .L4+20
	ldr	r2, .L4+24
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	mgba_open
	.word	1027
	.word	16191
	.word	fillScreen
	.word	frame
	.word	lastFrame
	.word	drawPipe
	.size	initialize, .-initialize
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L58
	ldrh	r3, [r3]
	ldr	r2, .L58+4
	tst	r3, #4
	str	lr, [sp, #-4]!
	ldr	r0, [r2]
	beq	.L7
	ldr	r1, .L58+8
	ldrh	r1, [r1, #48]
	ands	r1, r1, #4
	bne	.L7
	ldr	ip, [r2, #4]
	cmp	ip, #0
	moveq	r1, #1
	str	r1, [r2, #4]
.L9:
	cmp	r0, #1
	beq	.L11
.L12:
	tst	r3, #1
	bne	.L56
.L20:
	tst	r3, #2
	beq	.L19
	ldr	r2, .L58+8
	ldrh	r2, [r2, #48]
	tst	r2, #2
	beq	.L57
.L19:
	tst	r3, #32
	beq	.L24
	ldr	r2, .L58+8
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L24
	mov	ip, #1
	ldr	r2, .L58+12
	ldr	r1, .L58+16
	ldr	r0, [r2]
	str	ip, [r2]
	str	r0, [r1]
.L24:
	tst	r3, #16
	beq	.L25
	ldr	r2, .L58+8
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L25
	mov	ip, #5
	ldr	r2, .L58+12
	ldr	r1, .L58+16
	ldr	r0, [r2]
	str	ip, [r2]
	str	r0, [r1]
.L25:
	tst	r3, #128
	beq	.L27
	ldr	r2, .L58+8
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L27
	ldr	r1, .L58+20
	ldr	r2, [r1]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, #5
	str	r2, [r1]
.L27:
	tst	r3, #64
	beq	.L6
	ldr	r3, .L58+8
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L6
	ldr	r2, .L58+20
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	movle	r3, #1
	str	r3, [r2]
.L6:
	ldr	lr, [sp], #4
	bx	lr
.L7:
	tst	r3, #8
	beq	.L9
	ldr	r1, .L58+8
	ldrh	r1, [r1, #48]
	ands	r1, r1, #8
	bne	.L9
	cmp	r0, #0
	moveq	r1, #1
	strne	r1, [r2]
	streq	r1, [r2]
	bne	.L12
.L11:
	ldr	r1, .L58+20
	ldr	r1, [r1]
	ldr	r0, [r2, #8]
	add	r1, r1, r1, lsl #2
	cmp	r1, r0
	addge	r0, r0, #1
	bge	.L14
	ldr	r1, [r2, #4]
	ldr	ip, .L58+12
	cmp	r1, #0
	ldr	lr, .L58+16
	ldr	r1, [ip]
	bne	.L15
	add	r0, r1, #1
	cmp	r0, #5
	movgt	r0, #1
	str	r1, [lr]
	strgt	r0, [ip]
	ble	.L53
.L14:
	str	r0, [r2, #8]
	b	.L19
.L56:
	ldr	r2, .L58+8
	ldrh	r2, [r2, #48]
	tst	r2, #1
	bne	.L20
	ldr	r1, .L58+12
	ldr	r2, [r1]
	ldr	ip, .L58+16
	add	r0, r2, #1
	cmp	r0, #5
	str	r2, [ip]
	movgt	r2, #1
	strle	r0, [r1]
	strgt	r2, [r1]
	b	.L19
.L57:
	ldr	r2, .L58+12
	ldr	r1, [r2]
	ldr	ip, .L58+16
	sub	r0, r1, #1
	cmp	r0, #0
	str	r1, [ip]
	movle	r1, #5
	strgt	r0, [r2]
	strle	r1, [r2]
	b	.L19
.L15:
	sub	r0, r1, #1
	cmp	r0, #0
	str	r1, [lr]
	ble	.L17
.L53:
	str	r0, [ip]
	mov	r0, #1
	b	.L14
.L17:
	mov	r1, #5
	mov	r0, #1
	str	r1, [ip]
	b	.L14
.L59:
	.align	2
.L58:
	.word	oldButtons
	.word	.LANCHOR0
	.word	67109120
	.word	frame
	.word	lastFrame
	.word	.LANCHOR1
	.size	updateGame, .-updateGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"something went wrong, check frame clear methods\000"
	.align	2
.LC1:
	.ascii	"something went wrong, check ur frame count code\000"
	.text
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L110
	ldr	r3, [r3]
	sub	r3, r3, #1
	push	{r4, lr}
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L61
.L63:
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L62
.L62:
	ldr	r3, .L110+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L101
.L103:
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L102
.L67:
	ldr	r3, .L110+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L68
.L70:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L69
.L66:
	ldr	r3, .L110+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L77
.L79:
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L78
.L65:
	ldr	r3, .L110+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L85
.L87:
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L86
.L64:
	ldr	r3, .L110+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L93
.L95:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L94
.L94:
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
.L100:
	ldr	r3, .L110+12
	mov	lr, pc
	bx	r3
.L60:
	pop	{r4, lr}
	bx	lr
.L96:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	b	.L100
.L97:
	ldr	r3, .L110+20
	mov	lr, pc
	bx	r3
	b	.L100
.L98:
	ldr	r3, .L110+24
	mov	lr, pc
	bx	r3
	b	.L100
.L99:
	ldr	r3, .L110+28
	mov	lr, pc
	bx	r3
	b	.L100
.L86:
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
.L92:
	ldr	r3, .L110+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L88:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	b	.L92
.L89:
	ldr	r3, .L110+20
	mov	lr, pc
	bx	r3
	b	.L92
.L90:
	ldr	r3, .L110+24
	mov	lr, pc
	bx	r3
	b	.L92
.L91:
	ldr	r3, .L110+28
	mov	lr, pc
	bx	r3
	b	.L92
.L78:
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
.L84:
	ldr	r3, .L110+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L80:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	b	.L84
.L81:
	ldr	r3, .L110+20
	mov	lr, pc
	bx	r3
	b	.L84
.L82:
	ldr	r3, .L110+24
	mov	lr, pc
	bx	r3
	b	.L84
.L83:
	ldr	r3, .L110+28
	mov	lr, pc
	bx	r3
	b	.L84
.L69:
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
.L75:
	ldr	r3, .L110+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L71:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	b	.L75
.L72:
	ldr	r3, .L110+20
	mov	lr, pc
	bx	r3
	b	.L75
.L73:
	ldr	r3, .L110+24
	mov	lr, pc
	bx	r3
	b	.L75
.L74:
	ldr	r3, .L110+28
	mov	lr, pc
	bx	r3
	b	.L75
.L102:
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
.L108:
	ldr	r3, .L110+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L104:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	b	.L108
.L105:
	ldr	r3, .L110+20
	mov	lr, pc
	bx	r3
	b	.L108
.L106:
	ldr	r3, .L110+24
	mov	lr, pc
	bx	r3
	b	.L108
.L107:
	ldr	r3, .L110+28
	mov	lr, pc
	bx	r3
	b	.L108
.L101:
	ldr	r0, .L110+48
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	b	.L108
.L61:
	ldr	r0, .L110+56
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	b	.L60
.L93:
	ldr	r0, .L110+48
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	b	.L100
.L85:
	ldr	r0, .L110+48
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	b	.L92
.L77:
	ldr	r0, .L110+48
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	b	.L84
.L68:
	ldr	r0, .L110+48
	ldr	r3, .L110+52
	mov	lr, pc
	bx	r3
	b	.L75
.L111:
	.align	2
.L110:
	.word	frame
	.word	lastFrame
	.word	clearFrame5
	.word	frame4
	.word	clearFrame4
	.word	clearFrame3
	.word	clearFrame2
	.word	clearFrame1
	.word	frame3
	.word	frame2
	.word	frame1
	.word	frame5
	.word	.LC0
	.word	mgba_printf
	.word	.LC1
	.size	drawGame, .-drawGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r5, .L115
	ldr	r4, .L115+4
	ldrh	r3, [r5, #48]
	ldr	r6, .L115+8
	push	{r7, lr}
	ldr	r2, .L115+12
	strh	r3, [r4]	@ movhi
	strh	r3, [r6]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r9, .L115+16
	ldr	r8, .L115+20
	ldr	r7, .L115+24
.L113:
	ldrh	r3, [r4]
	strh	r3, [r6]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	b	.L113
.L116:
	.align	2
.L115:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	initialize
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.size	main, .-main
	.global	frameCount
	.global	select
	.global	start
	.global	speed
	.comm	lastFrame,4,4
	.comm	frame,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	speed, %object
	.size	speed, 4
speed:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	start, %object
	.size	start, 4
start:
	.space	4
	.type	select, %object
	.size	select, 4
select:
	.space	4
	.type	frameCount, %object
	.size	frameCount, 4
frameCount:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

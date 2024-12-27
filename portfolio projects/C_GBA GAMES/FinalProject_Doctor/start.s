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
	.file	"start.c"
	.text
	.align	2
	.global	initStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #6
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #34
	mov	ip, #75
	mov	r1, #1
	ldr	r3, .L4
	strb	r0, [r3, #32]
	str	lr, [r3]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	ip, [r3, #4]
	str	r1, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	cursor
	.size	initStart, .-initStart
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SELECTION NOW ON CONTROLS\000"
	.align	2
.LC1:
	.ascii	"SELECTION NOW ON START\000"
	.text
	.align	2
	.global	updateStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStart, %function
updateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L18
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L7
	ldr	r2, .L18+4
	ldrh	r2, [r2]
	ands	r2, r2, #128
	beq	.L16
.L7:
	tst	r3, #64
	beq	.L6
	ldr	r3, .L18+4
	ldrh	r2, [r3]
	ands	r2, r2, #64
	bne	.L6
	ldr	r3, .L18+8
	ldr	r1, [r3, #36]
	cmp	r1, #2
	beq	.L17
.L6:
	pop	{r4, lr}
	bx	lr
.L16:
	ldr	ip, .L18+8
	ldr	r1, [ip, #36]
	cmp	r1, #1
	bne	.L7
	mov	r0, #2
	mov	r3, #96
	ldr	r1, .L18+12
	str	r0, [ip, #36]
	str	r3, [ip, #4]
	ldr	r1, [r1]
	ldr	r0, .L18+16
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+24
	ldr	r0, .L18+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L7
.L17:
	mov	lr, #1
	mov	ip, #75
	ldr	r1, .L18+12
	ldr	r0, .L18+16
	ldr	r1, [r1]
	ldr	r4, .L18+20
	str	lr, [r3, #36]
	str	ip, [r3, #4]
	mov	lr, pc
	bx	r4
	ldr	r0, .L18+32
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	b	.L6
.L19:
	.align	2
.L18:
	.word	oldButtons
	.word	buttons
	.word	cursor
	.word	menuClick_length
	.word	menuClick_data
	.word	playSoundB
	.word	mgba_printf
	.word	.LC0
	.word	.LC1
	.size	updateStart, .-updateStart
	.align	2
	.global	drawStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStart, %function
drawStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #536
	push	{r4, lr}
	ldr	r1, .L22
	ldr	r3, [r1]
	ldr	r4, .L22+4
	ldrb	r2, [r1, #32]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r1, r4, r2, lsl #3
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	strh	ip, [r4, r2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	ldr	r3, .L22+8
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L22+12
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	cursor
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	drawStart, .-drawStart
	.comm	cursor,40,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

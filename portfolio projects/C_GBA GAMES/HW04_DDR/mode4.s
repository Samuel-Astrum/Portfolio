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
	.file	"mode4.c"
	.text
	.align	2
	.global	setPixel4
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	rsb	r1, r1, r1, lsl #4
	ldr	ip, [r3]
	add	r1, r0, r1, lsl #4
	bic	r1, r1, #1
	ldrh	r3, [ip, r1]
	tst	r0, #1
	andne	r3, r3, #255
	biceq	r3, r3, #255
	orrne	r3, r3, r2, lsl #8
	orreq	r3, r3, r2
	strh	r3, [ip, r1]	@ movhi
	bx	lr
.L6:
	.align	2
.L5:
	.word	videoBuffer
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRectangle4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRectangle4, %function
drawRectangle4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	mov	r6, r2
	sub	sp, sp, #28
	ldrb	lr, [sp, #64]	@ zero_extendqisi2
	ldrb	r2, [sp, #64]	@ zero_extendqisi2
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	lsl	r2, r2, #16
	ldrb	ip, [sp, #64]	@ zero_extendqisi2
	orr	r2, r2, lr, lsl #24
	orr	r2, r2, ip
	orr	r2, r2, r0, lsl #8
	tst	r8, #1
	mov	r4, r1
	mov	r5, r3
	str	r2, [sp, #20]
	and	r7, r6, #1
	beq	.L8
	cmp	r7, #0
	beq	.L45
	cmp	r3, #0
	ble	.L7
	rsb	r7, r1, r1, lsl #4
	add	r7, r8, r7, lsl #4
	mov	ip, r7
	ldr	r9, .L47
	add	r4, r1, r3
	rsb	r4, r4, r4, lsl #4
	ldr	lr, [r9]
	add	r8, r8, r4, lsl #4
.L13:
	bic	r2, ip, #1
	ldrb	r1, [sp, #64]	@ zero_extendqisi2
	ldrh	r3, [lr, r2]
	add	ip, ip, #240
	and	r3, r3, #255
	orr	r3, r3, r1, lsl #8
	cmp	r8, ip
	strh	r3, [lr, r2]	@ movhi
	bne	.L13
	cmp	r6, #2
	ble	.L7
	sub	r4, r6, #1
	asr	r4, r4, #1
	ldr	r5, .L47+4
	orr	r4, r4, #-2130706432
	add	fp, sp, #20
	b	.L15
.L46:
	ldr	lr, [r9]
.L15:
	add	r2, r7, r7, lsr #31
	bic	r2, r2, #1
	add	r2, r2, #2
	mov	r3, r4
	mov	r1, fp
	mov	r0, #3
	add	r2, lr, r2
	add	r7, r7, #240
	mov	lr, pc
	bx	r5
	cmp	r7, r8
	bne	.L46
.L7:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	eor	r7, r7, #1
	cmp	r6, #1
	movle	r7, #0
	andgt	r7, r7, #1
	cmp	r7, #0
	bne	.L23
	cmp	r3, #0
	ble	.L7
	add	r5, r1, r3
	ldr	r9, .L47
	rsb	r5, r5, r5, lsl #4
	add	ip, r8, r6
	lsl	r5, r5, #4
	sub	r2, ip, #1
	rsb	r4, r1, r1, lsl #4
	sub	r3, r5, #1
	ldr	r0, [r9]
	and	lr, r2, #1
	add	ip, r3, ip
	add	r2, r2, r4, lsl #4
	lsl	r4, r4, #4
.L28:
	bic	r1, r2, #1
	ldrb	r7, [sp, #64]	@ zero_extendqisi2
	ldrh	r3, [r0, r1]
	cmp	lr, #0
	and	r10, r3, #255
	and	r7, r7, #255
	biceq	r3, r3, #255
	orreq	r3, r3, r7
	orr	r10, r10, r7, lsl #8
	add	r2, r2, #240
	strhne	r10, [r0, r1]	@ movhi
	strheq	r3, [r0, r1]	@ movhi
	cmp	r2, ip
	bne	.L28
	cmp	r6, #2
	ble	.L7
	ldr	r3, .L47+4
	add	r4, r8, r4
	add	r8, r8, r5
	mov	r5, r3
	sub	r6, r6, #1
	asr	r6, r6, #1
	orr	r6, r6, #-2130706432
	add	fp, sp, #20
.L30:
	ldr	r0, [r9]
	add	r2, r4, r4, lsr #31
	bic	r2, r2, #1
	add	r2, r0, r2
	mov	r3, r6
	mov	r1, fp
	mov	r0, #3
	add	r4, r4, #240
	mov	lr, pc
	bx	r5
	cmp	r8, r4
	bne	.L30
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L45:
	cmp	r3, #0
	ble	.L7
	rsb	r10, r1, r1, lsl #4
	add	r10, r8, r10, lsl #4
	mov	r2, r10
	add	r3, r1, r3
	rsb	r3, r3, r3, lsl #4
	ldr	r9, .L47
	add	ip, r8, r3, lsl #4
	lsl	r3, r1, #4
	ldr	r0, [r9]
	str	ip, [sp, #4]
	str	r3, [sp]
.L16:
	bic	r1, r2, #1
	ldrb	lr, [sp, #64]	@ zero_extendqisi2
	ldrh	r3, [r0, r1]
	add	r2, r2, #240
	and	r3, r3, #255
	orr	r3, r3, lr, lsl #8
	cmp	ip, r2
	strh	r3, [r0, r1]	@ movhi
	bne	.L16
	cmp	r6, #3
	ble	.L33
	ldr	r2, .L47+4
	asr	r3, r6, #1
	add	fp, sp, #20
	orr	r3, r3, #-2130706432
	str	r7, [sp, #8]
	str	r5, [sp, #12]
	ldr	r7, [sp, #4]
	mov	r5, fp
	str	r4, [sp, #4]
	mov	fp, r2
	mov	r4, r3
	b	.L20
.L18:
	ldr	r0, [r9]
.L20:
	add	r2, r10, r10, lsr #31
	bic	r2, r2, #1
	add	r2, r0, r2
	mov	r3, r4
	mov	r1, r5
	mov	r0, #3
	add	r10, r10, #240
	mov	lr, pc
	bx	fp
	cmp	r7, r10
	bne	.L18
	ldmib	sp, {r4, r7}
	ldr	r5, [sp, #12]
.L33:
	ldr	r3, [sp]
	add	r6, r8, r6
	sub	r6, r6, #1
	sub	r4, r3, r4
	ldr	ip, [r9]
	add	r4, r6, r4, lsl #4
	and	r6, r6, #1
.L19:
	bic	r0, r4, #1
	ldrb	r2, [sp, #64]	@ zero_extendqisi2
	ldrh	r3, [ip, r0]
	cmp	r6, #0
	and	r1, r3, #255
	and	r2, r2, #255
	biceq	r3, r3, #255
	orreq	r3, r3, r2
	orr	r1, r1, r2, lsl #8
	add	r7, r7, #1
	strhne	r1, [ip, r0]	@ movhi
	strheq	r3, [ip, r0]	@ movhi
	cmp	r5, r7
	add	r4, r4, #240
	bgt	.L19
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	cmp	r3, #0
	ble	.L7
	add	r5, r1, r3
	ldr	r3, .L47+4
	rsb	r4, r1, r1, lsl #4
	rsb	r5, r5, r5, lsl #4
	add	r5, r8, r5, lsl #4
	add	r8, r8, r4, lsl #4
	mov	r4, r3
	asr	r6, r6, #1
	ldr	r9, .L47
	orr	r6, r6, #-2130706432
	add	fp, sp, #20
.L25:
	ldr	r0, [r9]
	add	r2, r8, r8, lsr #31
	bic	r2, r2, #1
	add	r2, r0, r2
	mov	r3, r6
	mov	r1, fp
	mov	r0, #3
	add	r8, r8, #240
	mov	lr, pc
	bx	r4
	cmp	r5, r8
	bne	.L25
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	videoBuffer
	.word	DMANow
	.size	drawRectangle4, .-drawRectangle4
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	sub	sp, sp, #20
	strb	r0, [sp, #7]
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsl	r3, r3, #16
	ldrb	ip, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L51
	orr	r3, r3, r0, lsl #24
	ldr	r2, .L51+4
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldr	r2, [r2]
	orr	r3, r3, r0
	ldr	r0, [r1]
	ldr	r1, .L51+8
	orr	r3, r3, ip, lsl #8
	add	ip, sp, #12
	str	r3, [sp, #12]
	str	lr, [r2, #44]
	str	ip, [r2, #36]
	str	r0, [r2, #40]
	str	r1, [r2, #44]
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	videoBuffer
	.word	dma
	.word	-2063587968
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r2, #3
	bxne	lr
	cmp	r3, #0
	bxle	lr
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r1, r3
	add	r2, r2, r2, lsr #31
	asr	r6, r2, #1
	rsb	r3, r3, r3, lsl #4
	rsb	r1, r1, r1, lsl #4
	ldr	r5, [sp, #32]
	ldr	r9, .L61
	ldr	r8, .L61+4
	orr	r10, r6, #-2147483648
	add	r7, r0, r3, lsl #4
	add	r4, r0, r1, lsl #4
	lsl	r6, r6, #1
.L55:
	ldr	r3, [r9]
	add	r2, r4, r4, lsr #31
	bic	r2, r2, #1
	mov	r1, r5
	add	r2, r3, r2
	mov	r0, #3
	mov	r3, r10
	add	r4, r4, #240
	mov	lr, pc
	bx	r8
	cmp	r7, r4
	add	r5, r5, r6
	bne	.L55
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	videoBuffer
	.word	DMANow
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L64
	ldr	r3, .L64+4
	ldr	r1, [r2]
	ldr	r3, [r3]
	ldr	r2, .L64+8
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	bx	lr
.L65:
	.align	2
.L64:
	.word	videoBuffer
	.word	dma
	.word	-2130687232
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r1, [r3]
	tst	r1, #16
	ldr	r2, .L69
	moveq	r2, #100663296
	ldr	r1, .L69+4
	str	r2, [r1]
	ldrh	r2, [r3]
	eor	r2, r2, #16
	strh	r2, [r3]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
	.word	100704256
	.word	videoBuffer
	.size	flipPage, .-flipPage
	.align	2
	.global	drawChar4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChar4, %function
drawChar4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L82
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L82+4
	rsb	r1, r1, r1, lsl #4
	add	r2, r2, r2, lsl #1
	lsl	r7, r3, #24
	ldr	r5, [ip]
	lsl	r9, r1, #4
	add	r4, r4, r2, lsl #4
	add	r10, r0, #6
	asr	r7, r7, #16
	and	r8, r3, #255
.L72:
	sub	r3, r4, #48
	add	ip, r9, r0
	and	r6, r0, #1
.L75:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	bic	lr, ip, #1
	beq	.L73
	ldrh	r1, [r5, lr]
	and	r2, r1, #255
	cmp	r6, #0
	orr	r2, r7, r2
	biceq	r1, r1, #255
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	orreq	r1, r8, r1
	strhne	r2, [r5, lr]	@ movhi
	strheq	r1, [r5, lr]	@ movhi
.L73:
	add	r3, r3, #6
	cmp	r3, r4
	add	ip, ip, #240
	bne	.L75
	add	r0, r0, #1
	cmp	r0, r10
	add	r4, r3, #1
	bne	.L72
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	videoBuffer
	.word	fontdata_6x8+48
	.size	drawChar4, .-drawChar4
	.align	2
	.global	drawString4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawString4, %function
drawString4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L84
	mov	r4, r0
	mov	r7, r1
	mov	r6, r3
.L86:
	mov	r0, r4
	mov	r3, r6
	mov	r1, r7
	bl	drawChar4
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	add	r4, r4, #6
	bne	.L86
.L84:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	drawString4, .-drawString4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

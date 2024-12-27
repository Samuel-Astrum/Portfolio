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
	.file	"game.c"
	.text
	.align	2
	.global	initLevelTwo
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevelTwo, %function
initLevelTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initLevelTwo, .-initLevelTwo
	.align	2
	.global	initWords
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWords, %function
initWords:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #11
	mov	lr, #0
	mov	fp, #10
	mov	r7, #12
	mov	r6, #13
	mov	r5, #14
	mov	r4, #15
	mov	ip, #16
	ldr	r0, .L5
	str	r8, [r0]
	strb	fp, [r0, #64]
	str	lr, [r0, #4]
	ldr	r0, .L5+4
	str	r7, [r0]
	strb	r8, [r0, #64]
	ldr	r0, .L5+8
	str	r6, [r0]
	strb	r7, [r0, #64]
	ldr	r0, .L5+12
	str	r5, [r0]
	strb	r6, [r0, #64]
	ldr	r0, .L5+16
	mov	r1, #17
	str	r4, [r0]
	strb	r5, [r0, #64]
	mov	r10, #1
	ldr	r0, .L5+20
	mov	r3, #18
	str	ip, [r0]
	strb	r4, [r0, #64]
	mov	r9, #2
	ldr	r0, .L5+24
	strb	ip, [r0, #64]
	mov	ip, #22
	str	lr, [r0]
	ldr	r0, .L5+28
	str	r10, [r0]
	strb	r1, [r0, #64]
	ldr	r0, .L5+32
	str	r9, [r0]
	strb	r3, [r0, #64]
	ldr	r0, .L5+36
	strb	ip, [r0, #64]
	mov	ip, #23
	str	r3, [r0]
	ldr	r0, .L5+40
	strb	ip, [r0, #64]
	mov	ip, #24
	mov	lr, #3
	str	r3, [r0]
	ldr	r0, .L5+44
	strb	ip, [r0, #64]
	ldr	ip, .L5+48
	str	lr, [ip]
	mov	lr, #19
	strb	lr, [ip, #64]
	mov	lr, #4
	ldr	ip, .L5+52
	str	lr, [ip]
	mov	lr, #20
	strb	lr, [ip, #64]
	mov	lr, #5
	ldr	ip, .L5+56
	str	lr, [ip]
	mov	lr, #21
	str	r3, [r0]
	ldr	r0, .L5+60
	str	r3, [r0]
	strb	lr, [ip, #64]
	mov	ip, #25
	strb	ip, [r0, #64]
	mov	ip, #26
	ldr	r0, .L5+64
	strb	ip, [r0, #64]
	mov	ip, #27
	str	r3, [r0]
	ldr	r0, .L5+68
	strb	ip, [r0, #64]
	mov	ip, #28
	str	r3, [r0]
	ldr	r0, .L5+72
	strb	ip, [r0, #64]
	mov	ip, #29
	str	r3, [r0]
	ldr	r0, .L5+76
	strb	ip, [r0, #64]
	mov	ip, #30
	str	r3, [r0]
	ldr	r0, .L5+80
	str	r3, [r0]
	strb	ip, [r0, #64]
	ldr	r0, .L5+84
	str	r3, [r0]
	mov	r3, #31
	strb	r3, [r0, #64]
	mov	r0, #35
	ldr	r3, .L5+88
	strb	r0, [r3, #64]
	str	r1, [r3]
	ldr	r3, .L5+92
	str	r1, [r3]
	mov	r1, #36
	mov	r2, #6
	mov	r0, #32
	strb	r1, [r3, #64]
	ldr	r3, .L5+96
	ldr	r1, .L5+100
	strb	r0, [r3, #64]
	str	r2, [r3]
	ldr	r3, .L5+104
	mov	r0, #33
	str	r2, [r1]
	str	r2, [r3]
	mov	r2, #34
	strb	r0, [r1, #64]
	strb	r2, [r3, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	s
	.word	c
	.word	o
	.word	r
	.word	e
	.word	colon
	.word	h
	.word	ee
	.word	a
	.word	zero
	.word	one
	.word	two
	.word	l
	.word	t
	.word	hh
	.word	three
	.word	four
	.word	five
	.word	six
	.word	seven
	.word	eight
	.word	nine
	.word	s0
	.word	s1
	.word	h1
	.word	h2
	.word	h3
	.size	initWords, .-initWords
	.align	2
	.global	initLevelOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevelOne, %function
initLevelOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #12
	mov	r3, #1
	ldr	r1, .L9
	str	r2, [r1]
	ldr	r1, .L9+4
	str	r2, [r1]
	ldr	r1, .L9+8
	str	r2, [r1]
	ldr	r1, .L9+12
	str	r2, [r1]
	ldr	r1, .L9+16
	str	r2, [r1]
	ldr	r1, .L9+20
	str	r2, [r1]
	ldr	r1, .L9+24
	str	r2, [r1]
	ldr	r1, .L9+28
	str	fp, [r1, #16]
	ldr	fp, .L9+32
	str	r3, [fp]
	mov	fp, #6
	mov	lr, #10
	mov	ip, #14
	mov	r4, #3
	mov	r5, #130
	str	fp, [r1, #40]
	mov	fp, #112
	mov	r8, #56
	str	r3, [r1, #28]
	str	lr, [r1, #24]
	str	fp, [r1]
	str	r2, [r1, #36]
	str	r2, [r1, #32]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	ip, [r1, #20]
	str	r5, [r1, #4]
	str	r4, [r1, #52]
	str	r2, [r1, #44]
	strb	r2, [r1, #56]
	str	r2, [r1, #48]
	ldr	r1, .L9+36
	mov	r9, #20
	str	r8, [r1]
	mov	r8, #64
	str	r3, [r1, #28]
	str	r3, [r1, #32]
	str	r4, [r1, #40]
	strb	r3, [r1, #64]
	str	lr, [r1, #24]
	str	r9, [r1, #20]
	str	r2, [r1, #36]
	str	r9, [r1, #16]
	str	r8, [r1, #4]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #44]
	ldr	r1, .L9+40
	str	r8, [r1, #4]
	mov	r8, #168
	mov	r9, #192
	str	r8, [r1]
	ldr	r8, .L9+44
	str	r9, [r8]
	mov	r9, #96
	mov	r0, #24
	mov	r10, #2
	str	r9, [r8, #4]
	mov	r9, #6
	str	r3, [r1, #28]
	str	r2, [r1, #36]
	str	r3, [r1, #32]
	str	r4, [r1, #40]
	strb	r4, [r1, #64]
	str	lr, [r1, #24]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #44]
	str	r0, [r1, #20]
	str	r3, [r8, #28]
	str	r3, [r8, #32]
	str	r4, [r8, #40]
	str	lr, [r8, #24]
	str	r3, [r8, #8]
	str	r3, [r8, #12]
	str	r3, [r8, #44]
	str	r0, [r8, #20]
	str	r0, [r8, #16]
	str	r0, [r1, #16]
	strb	r10, [r8, #64]
	ldr	r1, .L9+48
	str	r2, [r8, #36]
	ldr	r8, .L9+52
	str	r3, [r1, #28]
	str	r2, [r1, #36]
	str	r0, [r1, #20]
	strb	r9, [r8, #64]
	mov	r9, #16
	str	r9, [r1]
	ldr	r9, .L9+56
	str	r0, [r1, #16]
	str	r0, [r8, #20]
	str	r0, [r8, #16]
	str	r0, [r9, #20]
	str	r0, [r9, #16]
	mov	r0, #5
	strb	r0, [r9, #64]
	mov	r0, #72
	mov	r6, #4
	str	r0, [r9, #4]
	mov	r0, #40
	str	r3, [r1, #32]
	str	lr, [r1, #24]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #44]
	str	r6, [r1, #40]
	strb	r6, [r1, #64]
	str	r0, [r1, #4]
	mov	r1, #200
	str	r0, [r8, #4]
	ldr	r0, .L9+60
	str	r3, [r8, #28]
	str	r3, [r8, #32]
	str	lr, [r8, #24]
	str	lr, [r9, #24]
	str	r3, [r9, #28]
	str	r3, [r9, #32]
	str	r3, [r9, #8]
	str	r3, [r9, #12]
	str	r3, [r9, #44]
	str	r2, [r8, #36]
	str	r2, [r9, #36]
	str	fp, [r9]
	str	r6, [r9, #40]
	str	r6, [r8, #40]
	str	r1, [r8]
	str	r3, [r8, #8]
	str	r3, [r8, #12]
	str	r3, [r8, #44]
	str	r3, [r0, #28]
	mov	r3, #7
	strb	r3, [r0, #32]
	mov	r3, #8
	ldr	lr, .L9+64
	strb	r3, [lr, #32]
	mov	r3, #9
	mov	r7, #120
	ldr	r1, .L9+68
	strb	r3, [r1, #32]
	str	r2, [r0, #24]
	str	ip, [r0, #16]
	str	r2, [r0, #20]
	str	ip, [r0, #12]
	str	r5, [r0, #4]
	str	r7, [r0]
	str	r10, [lr, #28]
	str	r2, [lr, #24]
	str	ip, [lr, #16]
	str	r2, [lr, #20]
	str	ip, [lr, #12]
	str	r7, [lr]
	str	r5, [lr, #4]
	str	r4, [r1, #28]
	str	r2, [r1, #24]
	str	ip, [r1, #16]
	str	r2, [r1, #20]
	str	ip, [r1, #12]
	str	r7, [r1]
	str	r5, [r1, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initWords
.L10:
	.align	2
.L9:
	.word	walker1FrameCount
	.word	walker2FrameCount
	.word	walker3FrameCount
	.word	shooter1FrameCount
	.word	shooter2FrameCount
	.word	shooter3FrameCount
	.word	score
	.word	player
	.word	lastBubbleBlown
	.word	walker1
	.word	walker3
	.word	walker2
	.word	shooter1
	.word	shooter3
	.word	shooter2
	.word	bubble1
	.word	bubble2
	.word	bubble3
	.size	initLevelOne, .-initLevelOne
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"DID THIS ACTIVATE?\000"
	.text
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L123
	ldr	r0, [r4]
	ldr	r2, [r4, #16]
	ldr	r7, [r4, #48]
	add	lr, r2, r0
	cmp	r7, #0
	ldr	r1, [r4, #4]
	ldr	r3, [r4, #20]
	sub	sp, sp, #20
	add	r5, lr, #1
	bne	.L12
	ldr	ip, .L123+4
	ldrh	r6, [ip, #48]
	add	ip, r3, r1
	tst	r6, #32
	add	r9, ip, #1
	beq	.L98
	ldr	r6, .L123+8
.L13:
	ldr	r8, .L123+4
	ldrh	r8, [r8, #48]
	tst	r8, #16
	bne	.L15
	add	lr, lr, #2
	add	r8, lr, r1, lsl #8
	ldrb	r8, [r6, r8]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L103
.L15:
	mov	lr, #0
	str	lr, [r4, #32]
.L14:
	ldr	lr, .L123+12
	ldrh	lr, [lr]
	tst	lr, #2
	beq	.L16
	ldr	r8, .L123+4
	ldrh	r8, [r8, #48]
	tst	r8, #2
	beq	.L104
.L16:
	add	ip, ip, #2
	add	r0, r0, ip, lsl #8
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
	cmp	r0, #0
	str	r7, [r4, #48]
	lsl	ip, ip, #8
	bne	.L101
	add	ip, r5, ip
	ldrb	r0, [r6, ip]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r1, #1
	streq	r1, [r4, #4]
.L101:
	tst	lr, #1
	ldr	r0, [r4]
	bne	.L105
.L21:
	ldr	fp, .L123+16
	add	ip, fp, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [fp, #4]
	ldr	ip, [fp]
	ldr	r5, .L123+20
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L24
	ldr	r3, [fp, #60]
	cmp	r3, #0
	bne	.L106
.L24:
	ldr	r10, .L123+24
	ldr	r0, [r10, #20]
	ldr	r1, [r10, #16]
	ldr	r2, [r10, #4]
	ldr	r3, [r10]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L25
	ldr	r3, [r10, #60]
	cmp	r3, #0
	bne	.L107
.L25:
	ldr	r9, .L123+28
	ldr	r0, [r9, #20]
	ldr	r1, [r9, #16]
	ldr	r2, [r9, #4]
	ldr	r3, [r9]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L26
	ldr	r3, [r9, #60]
	cmp	r3, #0
	bne	.L108
.L26:
	ldr	r8, .L123+32
	ldr	r0, [r8, #20]
	ldr	r1, [r8, #16]
	ldr	r2, [r8, #4]
	ldr	r3, [r8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L27
	ldr	r3, [r8, #60]
	cmp	r3, #0
	bne	.L109
.L27:
	ldr	r7, .L123+36
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L28
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L110
.L28:
	ldr	r6, .L123+40
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L29
	ldr	r3, [r6, #60]
	cmp	r3, #0
	bne	.L111
.L29:
	ldr	r0, [fp, #20]
	ldr	r1, [fp, #16]
	ldr	r2, [fp, #4]
	ldr	r3, [fp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L32
	add	r2, fp, #56
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	beq	.L112
.L32:
	ldm	r4, {r0, r1}
.L31:
	ldr	r3, [r10, #20]
	ldr	r2, [r10, #4]
	ldr	ip, [r10, #16]
	str	r3, [sp, #12]
	ldr	r3, [r10]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L35
	add	r2, r10, #56
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	beq	.L113
.L35:
	ldm	r4, {r0, r1}
.L34:
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #4]
	ldr	ip, [r9, #16]
	str	r3, [sp, #12]
	ldr	r3, [r9]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L38
	add	r2, r9, #56
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	beq	.L114
.L38:
	ldm	r4, {r0, r1}
.L37:
	ldr	r3, [r8, #20]
	ldr	r2, [r8, #4]
	ldr	ip, [r8, #16]
	str	r3, [sp, #12]
	ldr	r3, [r8]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L41
	add	r2, r8, #56
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	beq	.L115
.L41:
	ldm	r4, {r0, r1}
.L40:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	ip, [r7, #16]
	str	r3, [sp, #12]
	ldr	r3, [r7]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L44
	add	r2, r7, #56
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	beq	.L116
.L44:
	ldm	r4, {r0, r1}
.L43:
	ldr	r3, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	ip, [r6, #16]
	str	r3, [sp, #12]
	ldr	r3, [r6]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L45
	add	r2, r6, #56
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	beq	.L117
.L45:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	beq	.L102
	ldr	r3, [r4, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	beq	.L118
.L102:
	str	r3, [r4, #24]
	ldr	r3, [r4, #4]
	cmp	r3, #155
	bgt	.L119
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L12:
	sub	lr, r1, #1
	ldr	r6, .L123+8
	add	ip, r5, lr, lsl #8
	ldrb	ip, [ip, r6]	@ zero_extendqisi2
	cmp	ip, #0
	lsl	ip, lr, #8
	beq	.L120
.L20:
	ldr	r5, .L123+44
	ldr	ip, [r5]
	add	ip, ip, #1
	cmp	ip, #45
	str	ip, [r5]
	movgt	ip, #0
	ldr	lr, .L123+12
	ldrh	lr, [lr]
	strgt	ip, [r5]
	strgt	ip, [r4, #48]
	tst	lr, #1
	beq	.L21
.L105:
	ldr	ip, .L123+4
	ldrh	ip, [ip, #48]
	ands	ip, ip, #1
	bne	.L21
	ldr	r5, .L123+48
	ldr	lr, [r5]
	cmp	lr, #1
	beq	.L121
	cmp	lr, #2
	beq	.L122
	cmp	lr, #3
	bne	.L21
	mov	lr, #1
	str	ip, [r4, #28]
	ldr	ip, .L123+52
	str	lr, [r5]
	add	r5, r0, #18
	str	lr, [ip, #24]
	str	r1, [ip, #4]
	str	r5, [ip]
	b	.L21
.L111:
	mov	r0, #0
	ldr	r1, .L123+56
	ldr	r3, [r4, #44]
	ldr	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4, #44]
	str	r0, [r6, #44]
	b	.L29
.L110:
	mov	r0, #0
	ldr	r1, .L123+56
	ldr	r3, [r4, #44]
	ldr	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4, #44]
	str	r0, [r7, #44]
	b	.L28
.L109:
	mov	r0, #0
	ldr	r1, .L123+56
	ldr	r3, [r4, #44]
	ldr	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4, #44]
	str	r0, [r8, #44]
	b	.L27
.L108:
	mov	r0, #0
	ldr	r1, .L123+56
	ldr	r3, [r4, #44]
	ldr	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4, #44]
	str	r0, [r9, #44]
	b	.L26
.L107:
	ldr	r3, [r10, #44]
	cmp	r3, #0
	bne	.L25
	ldr	r1, .L123+56
	ldr	r3, [r4, #44]
	ldr	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4, #44]
	b	.L25
.L106:
	ldr	r3, [fp, #44]
	cmp	r3, #0
	bne	.L24
	ldr	r1, .L123+56
	ldr	r3, [r4, #44]
	ldr	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4, #44]
	b	.L24
.L120:
	add	ip, r0, ip
	ldrb	ip, [ip, r6]	@ zero_extendqisi2
	cmp	ip, #0
	moveq	r1, lr
	streq	lr, [r4, #4]
	b	.L20
.L98:
	ldr	r6, .L123+8
	sub	r8, r0, #1
	add	r10, r8, r1, lsl #8
	ldrb	r10, [r6, r10]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L13
	add	r10, r8, r9, lsl #8
	ldrb	r10, [r6, r10]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L13
	mov	lr, #1
	str	r8, [r4]
	str	r7, [r4, #28]
	str	lr, [r4, #32]
	b	.L14
.L119:
	mov	r2, #1
	ldr	r0, .L123+60
	ldr	r3, .L123+64
	str	r2, [r4, #4]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L117:
	mov	r1, #112
	mov	r2, #130
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	stm	r4, {r1, r2}
	str	r3, [r4, #52]
	b	.L45
.L112:
	mov	ip, #112
	mov	r2, #130
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	mov	r0, ip
	mov	r1, r2
	str	r3, [r4, #52]
	str	ip, [r4]
	str	r2, [r4, #4]
	b	.L31
.L113:
	mov	ip, #112
	mov	r2, #130
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	mov	r0, ip
	mov	r1, r2
	str	r3, [r4, #52]
	str	ip, [r4]
	str	r2, [r4, #4]
	b	.L34
.L114:
	mov	ip, #112
	mov	r2, #130
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	mov	r0, ip
	mov	r1, r2
	str	r3, [r4, #52]
	str	ip, [r4]
	str	r2, [r4, #4]
	b	.L37
.L115:
	mov	ip, #112
	mov	r2, #130
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	mov	r0, ip
	mov	r1, r2
	str	r3, [r4, #52]
	str	ip, [r4]
	str	r2, [r4, #4]
	b	.L40
.L116:
	mov	ip, #112
	mov	r2, #130
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	mov	r0, ip
	mov	r1, r2
	str	r3, [r4, #52]
	str	ip, [r4]
	str	r2, [r4, #4]
	b	.L43
.L118:
	ldr	r3, [r4, #36]
	ldr	r2, [r4, #40]
	add	r3, r3, #1
	cmp	r3, r2
	movge	r2, #0
	str	r3, [r4, #36]
	movge	r3, #1
	movlt	r3, #1
	strge	r2, [r4, #36]
	b	.L102
.L104:
	sub	r8, r1, #1
	add	r9, r5, r8, lsl #8
	ldrb	r9, [r6, r9]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r8, r8, #8
	bne	.L16
	add	r8, r0, r8
	ldrb	r7, [r6, r8]	@ zero_extendqisi2
	rsbs	r7, r7, #1
	movcc	r7, #0
	b	.L16
.L103:
	add	lr, lr, r9, lsl #8
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L15
	mov	lr, #1
	add	r8, r0, lr
	str	lr, [r4, #32]
	str	lr, [r4, #28]
	str	r8, [r4]
	b	.L14
.L121:
	mov	r6, #2
	str	ip, [r4, #28]
	ldr	ip, .L123+68
	str	r6, [r5]
	add	r5, r0, #18
	str	lr, [ip, #24]
	str	r1, [ip, #4]
	str	r5, [ip]
	b	.L21
.L122:
	mov	lr, #3
	mov	r7, #1
	str	ip, [r4, #28]
	ldr	r6, .L123+68
	ldr	ip, .L123+72
	str	lr, [r5]
	add	lr, r0, #18
	str	r7, [r6, #24]
	str	r1, [ip, #4]
	str	lr, [ip]
	b	.L21
.L124:
	.align	2
.L123:
	.word	player
	.word	67109120
	.word	levelOneCOLLISIONBitmap
	.word	oldButtons
	.word	walker1
	.word	collision
	.word	walker2
	.word	walker3
	.word	shooter1
	.word	shooter2
	.word	shooter3
	.word	playerJumpCount
	.word	lastBubbleBlown
	.word	bubble1
	.word	score
	.word	.LC0
	.word	mgba_printf
	.word	bubble2
	.word	bubble3
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L418
	ldr	r3, [r5, #44]
	cmp	r3, #0
	sub	sp, sp, #28
	beq	.L127
	ldr	r3, [r5, #56]
	add	r2, r5, #16
	cmp	r3, #0
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	beq	.L381
	ldr	r4, .L418+88
.L128:
	ldr	r7, .L418+4
	add	ip, r7, #12
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r6, .L418+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L139
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L139:
	ldr	r7, .L418+12
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L140
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L140:
	ldr	r7, .L418+16
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L141
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L141:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L142
	ldr	r3, [r5, #56]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r5, #60]
.L142:
	ldr	r3, [r5, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	strne	r3, [r5, #24]
	beq	.L394
.L127:
	ldr	r5, .L418+20
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L146
	ldr	r3, [r5, #56]
	add	r2, r5, #16
	cmp	r3, #0
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	beq	.L382
	ldr	r4, .L418+88
.L147:
	ldr	r7, .L418+4
	add	ip, r7, #12
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r6, .L418+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L158
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L158:
	ldr	r7, .L418+12
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L159
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L159:
	ldr	r7, .L418+16
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L160
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L160:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L161
	ldr	r3, [r5, #56]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r5, #60]
.L161:
	ldr	r3, [r5, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	strne	r3, [r5, #24]
	beq	.L395
.L146:
	ldr	r5, .L418+24
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r5, #56]
	add	r2, r5, #16
	cmp	r3, #0
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	beq	.L383
	ldr	r4, .L418+88
.L166:
	ldr	r7, .L418+4
	add	ip, r7, #12
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r6, .L418+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L177
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L177:
	ldr	r7, .L418+12
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L178
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L178:
	ldr	r7, .L418+16
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L179
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L179:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L180
	ldr	r3, [r5, #56]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r5, #60]
.L180:
	ldr	r3, [r5, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	strne	r3, [r5, #24]
	beq	.L396
.L165:
	ldr	r5, .L418+28
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r5, #56]
	add	r2, r5, #16
	cmp	r3, #0
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	beq	.L384
	ldr	r4, .L418+88
.L185:
	ldr	r7, .L418+4
	add	ip, r7, #12
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r6, .L418+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L192
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L192:
	ldr	r7, .L418+12
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L193
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L193:
	ldr	r7, .L418+16
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L194
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L194:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L195
	ldr	r3, [r5, #56]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r5, #60]
.L195:
	ldr	r3, [r5, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	strne	r3, [r5, #24]
	beq	.L397
.L184:
	ldr	r5, .L418+32
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L199
	ldr	r3, [r5, #56]
	add	r2, r5, #16
	cmp	r3, #0
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	beq	.L386
	ldr	r4, .L418+88
.L200:
	ldr	r7, .L418+4
	add	ip, r7, #12
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r6, .L418+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L207
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L207:
	ldr	r7, .L418+12
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L208
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L208:
	ldr	r7, .L418+16
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L209
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L209:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L210
	ldr	r3, [r5, #56]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r5, #60]
.L210:
	ldr	r3, [r5, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	strne	r3, [r5, #24]
	beq	.L398
.L199:
	ldr	r5, .L418+36
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r5, #56]
	add	r2, r5, #16
	cmp	r3, #0
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	beq	.L388
	ldr	r4, .L418+88
.L215:
	ldr	r7, .L418+4
	add	ip, r7, #12
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r6, .L418+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L222
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L222:
	ldr	r7, .L418+12
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L223
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L223:
	ldr	r7, .L418+16
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L224
	ldr	r3, [r7, #24]
	cmp	r3, #0
	movne	r2, #1
	movne	r3, #0
	strne	r2, [r5, #56]
	strne	r3, [r7, #24]
.L224:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L225
	ldr	r3, [r5, #56]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r5, #60]
.L225:
	ldr	r3, [r5, #24]
	cmp	r3, #10
	addne	r3, r3, #1
	strne	r3, [r5, #24]
	beq	.L399
.L125:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L388:
	ldr	r9, .L418+40
	ldr	ip, [r9]
	cmp	ip, #120
	movgt	r4, #1
	movgt	ip, r4
	strgt	r4, [r5, #48]
	ldr	r4, .L418+88
	ldr	r6, [r4]
	sub	r6, r6, r0
	addle	ip, ip, #1
	add	lr, r1, r3
	cmp	r6, #0
	str	ip, [r9]
	add	r8, lr, #1
	add	r7, r0, r2
	blt	.L400
	ldreq	ip, .L418+96
	beq	.L219
	ldr	ip, .L418+96
	add	r6, r7, #2
	add	r9, r6, r1, lsl #8
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L219
	add	r8, r6, r8, lsl #8
	ldrb	r6, [ip, r8]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L401
.L219:
	mov	r8, #0
	mov	r6, r0
	str	r8, [r5, #32]
.L220:
	add	lr, lr, #2
	add	r0, r0, lr, lsl #8
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	lr, lr, #8
	bne	.L221
	ldr	r0, .L418+44
	add	lr, r7, lr
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #4]
.L221:
	ldr	lr, .L418+48
	ldr	ip, [lr]
	add	ip, ip, #1
	mov	r0, r6
	str	ip, [lr]
	b	.L215
.L386:
	ldr	r9, .L418+52
	ldr	ip, [r9]
	cmp	ip, #120
	movgt	r4, #1
	movgt	ip, r4
	strgt	r4, [r5, #48]
	ldr	r4, .L418+88
	ldr	r6, [r4]
	sub	r6, r6, r0
	addle	ip, ip, #1
	add	lr, r3, r1
	cmp	r6, #0
	str	ip, [r9]
	add	r8, lr, #1
	add	r7, r2, r0
	blt	.L402
	ldreq	ip, .L418+96
	beq	.L204
	ldr	ip, .L418+96
	add	r6, r7, #2
	add	r9, r6, r1, lsl #8
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L204
	add	r8, r6, r8, lsl #8
	ldrb	r6, [ip, r8]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L403
.L204:
	mov	r8, #0
	mov	r6, r0
	str	r8, [r5, #32]
.L205:
	add	lr, lr, #2
	add	r0, r0, lr, lsl #8
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	lr, lr, #8
	bne	.L206
	ldr	r0, .L418+44
	add	lr, r7, lr
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #4]
.L206:
	ldr	lr, .L418+56
	ldr	ip, [lr]
	add	ip, ip, #1
	mov	r0, r6
	str	ip, [lr]
	b	.L200
.L384:
	ldr	r9, .L418+60
	ldr	ip, [r9]
	cmp	ip, #120
	movgt	r4, #1
	movgt	ip, r4
	strgt	r4, [r5, #48]
	ldr	r4, .L418+88
	ldr	r6, [r4]
	sub	r6, r6, r0
	addle	ip, ip, #1
	add	lr, r3, r1
	cmp	r6, #0
	str	ip, [r9]
	add	r8, lr, #1
	add	r7, r2, r0
	blt	.L404
	ldreq	ip, .L418+96
	beq	.L189
	ldr	ip, .L418+96
	add	r6, r7, #2
	add	r9, r6, r1, lsl #8
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L189
	add	r8, r6, r8, lsl #8
	ldrb	r6, [ip, r8]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L405
.L189:
	mov	r8, #0
	mov	r6, r0
	str	r8, [r5, #32]
.L190:
	add	lr, lr, #2
	add	r0, r0, lr, lsl #8
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	lr, lr, #8
	bne	.L191
	ldr	r0, .L418+44
	add	lr, r7, lr
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #4]
.L191:
	ldr	lr, .L418+64
	ldr	ip, [lr]
	add	ip, ip, #1
	mov	r0, r6
	str	ip, [lr]
	b	.L185
.L383:
	ldr	r8, [r5, #48]
	add	r6, r2, r0
	sub	lr, r1, #1
	ldr	ip, .L418+96
	add	r7, r6, #1
	add	r4, r7, lr, lsl #8
	cmp	r8, #0
	ldrb	r10, [ip, r4]	@ zero_extendqisi2
	lsl	r9, lr, #8
	beq	.L406
	cmp	r10, #0
	bne	.L175
	add	r9, r0, r9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	moveq	r1, lr
	streq	lr, [r5, #4]
.L175:
	ldr	r4, .L418+68
	ldr	ip, [r4]
	add	ip, ip, #1
	cmp	ip, #45
	str	ip, [r4]
	movgt	ip, #0
	movgt	lr, #1
	ldrle	r6, .L418+92
	ldrle	lr, [r6]
	strgt	ip, [r4]
	ldrle	r4, .L418+88
	strgt	ip, [r5, #48]
	ldrgt	r4, .L418+88
	ldrgt	r6, .L418+92
	addle	lr, lr, #1
.L173:
	str	lr, [r6]
	b	.L166
.L382:
	ldr	r8, [r5, #48]
	add	r6, r2, r0
	sub	lr, r1, #1
	ldr	ip, .L418+96
	add	r7, r6, #1
	add	r4, r7, lr, lsl #8
	cmp	r8, #0
	ldrb	r10, [ip, r4]	@ zero_extendqisi2
	lsl	r9, lr, #8
	beq	.L407
	cmp	r10, #0
	bne	.L156
	add	r9, r0, r9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	moveq	r1, lr
	streq	lr, [r5, #4]
.L156:
	ldr	r4, .L418+72
	ldr	ip, [r4]
	add	ip, ip, #1
	cmp	ip, #45
	str	ip, [r4]
	movgt	ip, #0
	movgt	lr, #1
	ldrle	r6, .L418+76
	ldrle	lr, [r6]
	strgt	ip, [r4]
	ldrle	r4, .L418+88
	strgt	ip, [r5, #48]
	ldrgt	r4, .L418+88
	ldrgt	r6, .L418+76
	addle	lr, lr, #1
.L154:
	str	lr, [r6]
	b	.L147
.L381:
	ldr	r8, [r5, #48]
	add	r10, r2, r0
	sub	lr, r1, #1
	ldr	ip, .L418+96
	add	r7, r10, #1
	add	r4, r7, lr, lsl #8
	cmp	r8, #0
	ldrb	r9, [ip, r4]	@ zero_extendqisi2
	lsl	r6, lr, #8
	beq	.L408
	cmp	r9, #0
	bne	.L137
	add	r6, r0, r6
	ldrb	ip, [ip, r6]	@ zero_extendqisi2
	cmp	ip, #0
	moveq	r1, lr
	streq	lr, [r5, #4]
.L137:
	ldr	lr, .L418+80
	ldr	ip, [lr]
	add	ip, ip, #1
	cmp	ip, #45
	str	ip, [lr]
	movgt	ip, #0
	movgt	r9, #1
	ldrle	r10, .L418+84
	ldrle	r9, [r10]
	ldrle	r4, .L418+88
	strgt	ip, [lr]
	strgt	ip, [r5, #48]
	ldrgt	r4, .L418+88
	ldrgt	r10, .L418+84
	addle	r9, r9, #1
.L135:
	str	r9, [r10]
	b	.L128
.L394:
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
	b	.L127
.L395:
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
	b	.L146
.L396:
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
	b	.L165
.L397:
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
	b	.L184
.L398:
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
	b	.L199
.L399:
	ldr	r3, [r5, #36]
	ldr	r2, [r5, #40]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #36]
	movge	r3, #0
	strge	r3, [r5, #36]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L408:
	ldr	r4, .L418+88
	ldr	lr, [r4]
	sub	lr, lr, r0
	cmp	lr, #0
	add	lr, r3, r1
	add	fp, lr, #1
	str	lr, [sp, #16]
	str	fp, [sp, #20]
	blt	.L409
	beq	.L131
	add	fp, r10, #2
	add	r10, fp, r6
	mov	lr, r10
	add	r10, ip, #256
	ldrb	r10, [lr, r10]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L410
.L131:
	mov	r10, #0
	str	r10, [r5, #32]
.L132:
	ldr	r10, .L418+84
	cmp	r9, #0
	ldr	r9, [r10]
	bne	.L133
	add	r6, r0, r6
	ldrb	r6, [ip, r6]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L411
.L133:
	ldr	lr, [sp, #16]
	add	lr, lr, #2
	add	r0, r0, lr, lsl #8
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	cmp	r0, #0
	str	r8, [r5, #48]
	lsl	lr, lr, #8
	add	r9, r9, #1
	bne	.L391
	add	lr, r7, lr
	ldrb	r0, [ip, lr]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #4]
.L391:
	ldr	r0, [r5]
	b	.L135
.L407:
	ldr	r4, .L418+88
	ldr	r2, [r4]
	sub	r2, r2, r0
	add	r3, r3, r1
	cmp	r2, #0
	add	r2, r3, #1
	blt	.L412
	beq	.L150
	add	r6, r6, #2
	add	fp, r6, r9
	add	lr, ip, #256
	ldrb	lr, [fp, lr]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L413
.L150:
	mov	r2, #0
	str	r2, [r5, #32]
.L151:
	ldr	r6, .L418+76
	cmp	r10, #0
	ldr	lr, [r6]
	bne	.L152
	add	r9, r0, r9
	ldrb	r2, [ip, r9]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L414
.L152:
	add	r3, r3, #2
	add	r0, r0, r3, lsl #8
	ldrb	r2, [ip, r0]	@ zero_extendqisi2
	cmp	r2, #0
	str	r8, [r5, #48]
	lsl	r3, r3, #8
	add	lr, lr, #1
	bne	.L392
	add	r3, r7, r3
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	cmp	r3, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #4]
.L392:
	add	r2, r5, #16
	ldr	r0, [r5]
	ldm	r2, {r2, r3}
	b	.L154
.L419:
	.align	2
.L418:
	.word	walker1
	.word	bubble1
	.word	collision
	.word	bubble2
	.word	bubble3
	.word	walker2
	.word	walker3
	.word	shooter1
	.word	shooter2
	.word	shooter3
	.word	shooter3ShotCount
	.word	levelOneCOLLISIONBitmap+1
	.word	shooter3FrameCount
	.word	shooter2ShotCount
	.word	shooter2FrameCount
	.word	shooter1ShotCount
	.word	shooter1FrameCount
	.word	walker3JumpCount
	.word	walker2JumpCount
	.word	walker2FrameCount
	.word	walker1JumpCount
	.word	walker1FrameCount
	.word	player
	.word	walker3FrameCount
	.word	levelOneCOLLISIONBitmap
.L406:
	ldr	r4, .L418+88
	ldr	r2, [r4]
	sub	r2, r2, r0
	add	r3, r3, r1
	cmp	r2, #0
	add	r2, r3, #1
	blt	.L415
	beq	.L169
	add	r6, r6, #2
	add	fp, r6, r9
	add	lr, ip, #256
	ldrb	lr, [fp, lr]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L416
.L169:
	mov	r2, #0
	str	r2, [r5, #32]
.L170:
	ldr	r6, .L418+92
	cmp	r10, #0
	ldr	lr, [r6]
	bne	.L171
	add	r9, r0, r9
	ldrb	r2, [ip, r9]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L417
.L171:
	add	r3, r3, #2
	add	r0, r0, r3, lsl #8
	ldrb	r2, [ip, r0]	@ zero_extendqisi2
	cmp	r2, #0
	str	r8, [r5, #48]
	lsl	r3, r3, #8
	add	lr, lr, #1
	bne	.L393
	add	r3, r7, r3
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	cmp	r3, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #4]
.L393:
	add	r2, r5, #16
	ldr	r0, [r5]
	ldm	r2, {r2, r3}
	b	.L173
.L400:
	ldr	ip, .L418+96
	sub	r6, r0, #1
	add	r9, r6, r1, lsl #8
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L219
	add	r8, r6, r8, lsl #8
	ldrb	r8, [ip, r8]	@ zero_extendqisi2
	cmp	r8, #0
	bne	.L219
	mov	r9, #1
	str	r6, [r5]
	str	r8, [r5, #28]
	str	r9, [r5, #32]
	b	.L220
.L404:
	ldr	ip, .L418+96
	sub	r6, r0, #1
	add	r9, r6, r1, lsl #8
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L189
	add	r8, r6, r8, lsl #8
	ldrb	r8, [ip, r8]	@ zero_extendqisi2
	cmp	r8, #0
	bne	.L189
	mov	r9, #1
	str	r6, [r5]
	str	r8, [r5, #28]
	str	r9, [r5, #32]
	b	.L190
.L402:
	ldr	ip, .L418+96
	sub	r6, r0, #1
	add	r9, r6, r1, lsl #8
	ldrb	r9, [ip, r9]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L204
	add	r8, r6, r8, lsl #8
	ldrb	r8, [ip, r8]	@ zero_extendqisi2
	cmp	r8, #0
	bne	.L204
	mov	r9, #1
	str	r6, [r5]
	str	r8, [r5, #28]
	str	r9, [r5, #32]
	b	.L205
.L412:
	sub	lr, r0, #1
	add	fp, lr, r9
	add	r6, ip, #256
	ldrb	r6, [fp, r6]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L150
	add	r2, lr, r2, lsl #8
	ldrb	r2, [ip, r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L150
	mov	r2, #1
	str	lr, [r5]
	str	r8, [r5, #28]
	str	r2, [r5, #32]
	b	.L151
.L415:
	sub	lr, r0, #1
	add	fp, lr, r9
	add	r6, ip, #256
	ldrb	r6, [fp, r6]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L169
	add	r2, lr, r2, lsl #8
	ldrb	r2, [ip, r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L169
	mov	r2, #1
	str	lr, [r5]
	str	r8, [r5, #28]
	str	r2, [r5, #32]
	b	.L170
.L409:
	sub	fp, r0, #1
	add	lr, fp, r6
	add	r10, ip, #256
	ldrb	r10, [lr, r10]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L131
	ldr	r10, [sp, #20]
	add	r10, fp, r10, lsl #8
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L131
	mov	r10, #1
	str	fp, [r5]
	str	r8, [r5, #28]
	str	r10, [r5, #32]
	b	.L132
.L416:
	add	r6, r6, r2, lsl #8
	ldrb	r2, [ip, r6]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L169
	mov	r2, #1
	add	lr, r0, r2
	str	r2, [r5, #32]
	str	r2, [r5, #28]
	str	lr, [r5]
	b	.L170
.L413:
	add	r6, r6, r2, lsl #8
	ldrb	r2, [ip, r6]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L150
	mov	r2, #1
	add	lr, r0, r2
	str	r2, [r5, #32]
	str	r2, [r5, #28]
	str	lr, [r5]
	b	.L151
.L410:
	ldr	lr, [sp, #20]
	add	r10, fp, lr, lsl #8
	ldrb	r10, [ip, r10]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L131
	mov	r10, #1
	add	fp, r0, r10
	str	r10, [r5, #32]
	str	r10, [r5, #28]
	str	fp, [r5]
	b	.L132
.L403:
	mov	r8, #1
	add	r6, r0, r8
	str	r8, [r5, #32]
	str	r8, [r5, #28]
	str	r6, [r5]
	b	.L205
.L405:
	mov	r8, #1
	add	r6, r0, r8
	str	r8, [r5, #32]
	str	r8, [r5, #28]
	str	r6, [r5]
	b	.L190
.L401:
	mov	r8, #1
	add	r6, r0, r8
	str	r8, [r5, #32]
	str	r8, [r5, #28]
	str	r6, [r5]
	b	.L220
.L414:
	cmp	lr, #120
	movle	r8, #0
	movgt	r8, #1
	b	.L152
.L411:
	cmp	r9, #120
	movle	r8, #0
	movgt	r8, #1
	b	.L133
.L417:
	cmp	lr, #120
	movle	r8, #0
	movgt	r8, #1
	b	.L171
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateBubbles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBubbles, %function
updateBubbles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L430
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L422
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	cmp	r2, #300
	str	r2, [r3, #20]
	movgt	r2, #0
	strgt	r2, [r3, #24]
	strgt	r2, [r3, #20]
.L422:
	ldr	r3, .L430+4
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L425
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	cmp	r2, #300
	str	r2, [r3, #20]
	movgt	r2, #0
	strgt	r2, [r3, #24]
	strgt	r2, [r3, #20]
.L425:
	ldr	r3, .L430+8
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	cmp	r2, #300
	str	r2, [r3, #20]
	movgt	r2, #0
	strgt	r2, [r3, #24]
	strgt	r2, [r3, #20]
	bx	lr
.L431:
	.align	2
.L430:
	.word	bubble1
	.word	bubble2
	.word	bubble3
	.size	updateBubbles, .-updateBubbles
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
	push	{r4, lr}
	bl	updatePlayer
	bl	updateEnemies
	pop	{r4, lr}
	b	updateBubbles
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L439
	ldr	r3, [r2]
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	ldr	r4, [r2, #28]
	ldr	r1, .L439+4
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	add	ip, r1, r0, lsl #3
	cmp	r4, #0
	strh	r3, [ip, #2]	@ movhi
	orreq	r3, r3, #4096
	strheq	r3, [ip, #2]	@ movhi
	ldr	r3, [r2, #48]
	cmp	r3, #0
	movne	r3, #23
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldreq	r2, [r2, #36]
	ldreq	r3, .L439+8
	lsl	r0, r0, #3
	lsleq	r2, r2, #1
	strh	lr, [r1, r0]	@ movhi
	andeq	r3, r3, r2
	add	r1, r1, r0
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L440:
	.align	2
.L439:
	.word	player
	.word	shadowOAM
	.word	1022
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L533
	push	{r4, lr}
	ldr	r3, [r2, #44]
	cmp	r3, #0
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	beq	.L442
	ldr	r0, [r2]
	ldr	r3, [r2, #60]
	lsl	r0, r0, #23
	cmp	r3, #0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldr	ip, [r2, #28]
	lsr	r0, r0, #23
	beq	.L443
	mov	r2, #19
	ldr	r3, .L533+4
	cmp	ip, #0
	orr	r0, r0, #16384
	lsl	ip, r1, #3
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L446
.L442:
	mov	r2, #512
	ldr	r3, .L533+4
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L446:
	ldr	r2, .L533+8
	ldr	r1, [r2, #44]
	cmp	r1, #0
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	beq	.L452
	ldr	ip, [r2, #60]
	ldr	r0, [r2]
	cmp	ip, #0
	lsl	r0, r0, #23
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldr	ip, [r2, #28]
	lsr	r0, r0, #23
	beq	.L453
	mov	r2, #19
	cmp	ip, #0
	orr	r0, r0, #16384
	lsl	ip, r1, #3
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L456
.L452:
	mov	r2, #512
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L456:
	ldr	r2, .L533+12
	ldr	r1, [r2, #44]
	cmp	r1, #0
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	beq	.L462
	ldr	ip, [r2, #60]
	ldr	r0, [r2]
	cmp	ip, #0
	lsl	r0, r0, #23
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldr	ip, [r2, #28]
	lsr	r0, r0, #23
	beq	.L463
	mov	r2, #19
	cmp	ip, #0
	orr	r0, r0, #16384
	lsl	ip, r1, #3
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L466
.L462:
	mov	r2, #512
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L466:
	ldr	r2, .L533+16
	ldr	r1, [r2, #44]
	cmp	r1, #0
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	beq	.L472
	ldr	r0, [r2]
	ldr	ip, [r2, #60]
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	cmp	ip, #0
	orr	r0, r0, #16384
	ldr	ip, [r2, #28]
	orr	lr, lr, #32768
	beq	.L473
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	mov	r1, #19
	strh	lr, [r3, ip]	@ movhi
	add	ip, r3, ip
	strh	r1, [ip, #4]	@ movhi
.L476:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L482
	mov	r0, #54
	ldr	r1, [r2]
	lsl	r1, r1, #23
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	lsr	r1, r1, #23
	ldr	r2, .L533+20
	orr	r1, r1, #16384
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	b	.L482
.L472:
	mov	r2, #512
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L482:
	ldr	r2, .L533+24
	ldr	r1, [r2, #44]
	cmp	r1, #0
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	beq	.L483
	ldr	r0, [r2]
	ldr	ip, [r2, #60]
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	cmp	ip, #0
	orr	r0, r0, #16384
	ldr	ip, [r2, #28]
	orr	lr, lr, #32768
	beq	.L484
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	mov	r1, #19
	strh	lr, [r3, ip]	@ movhi
	add	ip, r3, ip
	strh	r1, [ip, #4]	@ movhi
.L487:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L493
	mov	r0, #54
	ldr	r1, [r2]
	lsl	r1, r1, #23
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	lsr	r1, r1, #23
	ldr	r2, .L533+20
	orr	r1, r1, #16384
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	b	.L493
.L483:
	mov	r2, #512
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L493:
	ldr	r2, .L533+28
	ldr	r1, [r2, #44]
	cmp	r1, #0
	ldrb	r1, [r2, #64]	@ zero_extendqisi2
	beq	.L494
	ldr	r0, [r2]
	ldr	ip, [r2, #60]
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	cmp	ip, #0
	orr	r0, r0, #16384
	ldr	ip, [r2, #28]
	orr	lr, lr, #32768
	beq	.L495
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	mov	r1, #19
	strh	lr, [r3, ip]	@ movhi
	add	r3, r3, ip
	strh	r1, [r3, #4]	@ movhi
.L498:
	ldr	r3, [r2, #48]
	cmp	r3, #0
	beq	.L441
	mov	r1, #54
	ldr	r3, [r2]
	lsl	r3, r3, #23
	ldrb	r0, [r2, #4]	@ zero_extendqisi2
	lsr	r3, r3, #23
	ldr	r2, .L533+20
	orr	r3, r3, #16384
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L494:
	mov	r2, #512
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L441:
	pop	{r4, lr}
	bx	lr
.L495:
	ldr	r4, [r2, #56]
	cmp	r4, #0
	beq	.L499
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	mov	r1, #16
	strh	lr, [r3, ip]	@ movhi
	add	r3, r3, ip
	strh	r1, [r3, #4]	@ movhi
	b	.L498
.L484:
	ldr	r4, [r2, #56]
	cmp	r4, #0
	beq	.L488
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	mov	r1, #16
	strh	lr, [r3, ip]	@ movhi
	add	ip, r3, ip
	strh	r1, [ip, #4]	@ movhi
	b	.L487
.L473:
	ldr	r4, [r2, #56]
	cmp	r4, #0
	beq	.L477
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	mov	r1, #16
	strh	lr, [r3, ip]	@ movhi
	add	ip, r3, ip
	strh	r1, [ip, #4]	@ movhi
	b	.L476
.L463:
	ldr	r4, [r2, #56]
	cmp	r4, #0
	beq	.L467
	mov	r2, #14
	cmp	ip, #0
	orr	r0, r0, #16384
	lsl	ip, r1, #3
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L466
.L453:
	ldr	r4, [r2, #56]
	cmp	r4, #0
	beq	.L457
	mov	r2, #14
	cmp	ip, #0
	orr	r0, r0, #16384
	lsl	ip, r1, #3
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L456
.L443:
	ldr	r3, [r2, #56]
	cmp	r3, #0
	ldr	r3, .L533+4
	beq	.L447
	mov	r2, #14
	cmp	ip, #0
	orr	r0, r0, #16384
	lsl	ip, r1, #3
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L446
.L447:
	ldr	r2, [r2, #36]
	add	r2, r2, #16
	cmp	ip, #0
	orr	r0, r0, #32768
	lsl	ip, r1, #3
	lsl	r2, r2, #2
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	and	r2, r2, #1020
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L446
.L457:
	ldr	r2, [r2, #36]
	add	r2, r2, #16
	cmp	ip, #0
	orr	r0, r0, #32768
	lsl	ip, r1, #3
	lsl	r2, r2, #2
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	and	r2, r2, #1020
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L456
.L467:
	ldr	r2, [r2, #36]
	add	r2, r2, #16
	cmp	ip, #0
	orr	r0, r0, #32768
	lsl	ip, r1, #3
	lsl	r2, r2, #2
	strh	lr, [r3, ip]	@ movhi
	add	r1, r3, r1, lsl #3
	orreq	r0, r0, #4096
	and	r2, r2, #1020
	add	ip, r3, ip
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L466
.L477:
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	ldr	r1, [r2, #36]
	add	r1, r1, #19
	lsl	r1, r1, #2
	strh	lr, [r3, ip]	@ movhi
	and	r1, r1, #1020
	add	ip, r3, ip
	strh	r1, [ip, #4]	@ movhi
	b	.L476
.L488:
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	ldr	r1, [r2, #36]
	add	r1, r1, #19
	lsl	r1, r1, #2
	strh	lr, [r3, ip]	@ movhi
	and	r1, r1, #1020
	add	ip, r3, ip
	strh	r1, [ip, #4]	@ movhi
	b	.L487
.L499:
	cmp	ip, #0
	orreq	r0, r0, #4096
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	ldr	r1, [r2, #36]
	add	r1, r1, #19
	lsl	r1, r1, #2
	strh	lr, [r3, ip]	@ movhi
	and	r1, r1, #1020
	add	r3, r3, ip
	strh	r1, [r3, #4]	@ movhi
	b	.L498
.L534:
	.align	2
.L533:
	.word	walker1
	.word	shadowOAM
	.word	walker2
	.word	walker3
	.word	shooter1
	.word	shadowOAM+296
	.word	shooter2
	.word	shooter3
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	drawWords
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWords, %function
drawWords:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #224
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #225
	mov	r9, #226
	mov	r6, #227
	mov	r8, #228
	mov	r5, #229
	ldr	r3, .L558
	ldr	r1, [r3]
	ldrb	r0, [r3, #64]	@ zero_extendqisi2
	ldr	r3, .L558+4
	mov	r4, #256
	lsl	r1, r1, #3
	add	lr, r3, r0, lsl #3
	and	r1, r1, #504
	strh	r1, [lr, #2]	@ movhi
	ldr	r1, .L558+8
	lsl	r0, r0, #3
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [r1]
	ldrb	r1, [r1, #64]	@ zero_extendqisi2
	strh	ip, [lr, #4]	@ movhi
	lsl	r0, r0, #3
	ldr	ip, .L558+12
	lsl	lr, r1, #3
	and	r0, r0, #504
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	ldr	r0, [ip]
	strh	r7, [r1, #4]	@ movhi
	ldrb	r1, [ip, #64]	@ zero_extendqisi2
	strh	r2, [r3, lr]	@ movhi
	lsl	r0, r0, #3
	ldr	lr, .L558+16
	lsl	r7, r1, #3
	and	r0, r0, #504
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	ldr	r0, [lr]
	strh	r9, [r1, #4]	@ movhi
	ldrb	r1, [lr, #64]	@ zero_extendqisi2
	ldr	ip, .L558+20
	lsl	r0, r0, #3
	lsl	lr, r1, #3
	and	r0, r0, #504
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	strh	r6, [r1, #4]	@ movhi
	ldrb	r1, [ip, #64]	@ zero_extendqisi2
	strh	r2, [r3, r7]	@ movhi
	ldr	r6, [ip]
	ldr	r7, .L558+24
	lsl	r0, r1, #3
	strh	r2, [r3, lr]	@ movhi
	lsl	r6, r6, #3
	strh	r2, [r3, r0]	@ movhi
	ldrb	r0, [r7, #64]	@ zero_extendqisi2
	ldr	lr, .L558+28
	ldr	ip, [r7]
	add	r1, r3, r1, lsl #3
	and	r6, r6, #504
	strh	r6, [r1, #2]	@ movhi
	strh	r8, [r1, #4]	@ movhi
	lsl	r1, r0, #3
	strh	r2, [r3, r1]	@ movhi
	lsl	ip, ip, #3
	ldrb	r1, [lr, #64]	@ zero_extendqisi2
	add	r0, r3, r0, lsl #3
	and	ip, ip, #504
	strh	ip, [r0, #2]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	lsl	r0, r1, #3
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [lr]
	ldr	r9, .L558+32
	lsl	r0, r0, #3
	add	lr, r3, r1, lsl #3
	and	r0, r0, #504
	strh	r0, [lr, #2]	@ movhi
	ldr	r0, [r9]
	ldrb	r1, [r9, #64]	@ zero_extendqisi2
	ldr	r7, .L558+36
	lsl	r0, r0, #3
	strh	r4, [lr, #4]	@ movhi
	and	r0, r0, #504
	lsl	lr, r1, #3
	add	r1, r3, r1, lsl #3
	strh	r0, [r1, #2]	@ movhi
	ldr	r0, [r7]
	strh	r8, [r1, #4]	@ movhi
	ldrb	r1, [r7, #64]	@ zero_extendqisi2
	ldr	r6, .L558+40
	lsl	r0, r0, #3
	and	r8, r0, #504
	lsl	r0, r1, #3
	strh	r2, [r3, lr]	@ movhi
	ldr	r7, [r6]
	strh	r2, [r3, r0]	@ movhi
	ldrb	r0, [r6, #64]	@ zero_extendqisi2
	ldr	r6, .L558+44
	ldr	r5, .L558+48
	add	r1, r3, r1, lsl #3
	ldr	ip, .L558+52
	strh	r8, [r1, #2]	@ movhi
	strh	r6, [r1, #4]	@ movhi
	lsl	r1, r0, #3
	ldr	r6, [ip]
	strh	r2, [r3, r1]	@ movhi
	add	r8, r3, r0, lsl #3
	ldrb	r1, [r5, #64]	@ zero_extendqisi2
	ldrb	ip, [ip, #64]	@ zero_extendqisi2
	ldr	r0, [r5]
	ldr	r5, .L558+56
	ldr	lr, .L558+60
	strh	r5, [r8, #4]	@ movhi
	lsl	r5, ip, #3
	strh	r2, [r3, r5]	@ movhi
	ldr	lr, [lr, #52]
	ldr	r5, .L558+64
	lsl	r7, r7, #3
	lsl	r6, r6, #3
	add	ip, r3, ip, lsl #3
	and	r7, r7, #504
	and	r6, r6, #504
	lsl	r0, r0, #3
	strh	r7, [r8, #2]	@ movhi
	strh	r5, [ip, #4]	@ movhi
	strh	r6, [ip, #2]	@ movhi
	and	r0, r0, #504
	lsl	ip, r1, #3
	cmp	lr, #2
	add	r1, r3, r1, lsl #3
	strh	r2, [r3, ip]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	beq	.L536
	cmp	lr, #3
	beq	.L538
	cmp	lr, #1
	beq	.L538
.L539:
	ldr	r2, .L558+68
	ldr	r2, [r2]
	cmp	r2, #12
	ldrls	pc, [pc, r2, asl #2]
	b	.L535
.L542:
	.word	.L554
	.word	.L553
	.word	.L552
	.word	.L551
	.word	.L550
	.word	.L549
	.word	.L548
	.word	.L547
	.word	.L546
	.word	.L545
	.word	.L541
	.word	.L541
	.word	.L541
.L541:
	mov	lr, #0
	mov	ip, #231
	ldr	r1, .L558+72
.L557:
	ldr	r2, [r1]
	ldrb	r1, [r1, #64]	@ zero_extendqisi2
	lsl	r2, r2, #3
	add	r0, r3, r1, lsl #3
	and	r2, r2, #504
	lsl	r1, r1, #3
	strh	r2, [r0, #2]	@ movhi
	strh	lr, [r3, r1]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L535:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L538:
	ldr	r0, .L558+76
.L556:
	ldrh	r1, [r0]
	ldrb	ip, [r0, #64]	@ zero_extendqisi2
	add	r0, r1, #224
	lsl	r0, r0, #22
	lsl	r1, r1, #3
	add	lr, r3, ip, lsl #3
	lsr	r0, r0, #22
	and	r1, r1, #504
	lsl	ip, ip, #3
	strh	r0, [lr, #4]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	strh	r2, [r3, ip]	@ movhi
	b	.L539
.L536:
	ldr	r0, .L558+80
	b	.L556
.L545:
	mov	lr, #0
	mov	ip, #239
	ldr	r1, .L558+84
	b	.L557
.L554:
	mov	lr, #0
	mov	ip, #230
	ldr	r1, .L558+88
	b	.L557
.L553:
	mov	lr, #0
	mov	ip, #231
	ldr	r1, .L558+92
	b	.L557
.L552:
	mov	lr, #0
	mov	ip, #232
	ldr	r1, .L558+80
	b	.L557
.L551:
	mov	lr, #0
	mov	ip, #233
	ldr	r1, .L558+76
	b	.L557
.L550:
	mov	lr, #0
	mov	ip, #234
	ldr	r1, .L558+96
	b	.L557
.L549:
	mov	lr, #0
	mov	ip, #235
	ldr	r1, .L558+100
	b	.L557
.L548:
	mov	lr, #0
	mov	ip, #236
	ldr	r1, .L558+104
	b	.L557
.L547:
	mov	lr, #0
	mov	ip, #237
	ldr	r1, .L558+108
	b	.L557
.L546:
	mov	lr, #0
	mov	ip, #238
	ldr	r1, .L558+112
	b	.L557
.L559:
	.align	2
.L558:
	.word	s
	.word	shadowOAM
	.word	c
	.word	o
	.word	r
	.word	e
	.word	colon
	.word	h
	.word	ee
	.word	a
	.word	l
	.word	257
	.word	hh
	.word	t
	.word	258
	.word	player
	.word	259
	.word	score
	.word	s1
	.word	three
	.word	two
	.word	nine
	.word	zero
	.word	one
	.word	four
	.word	five
	.word	six
	.word	seven
	.word	eight
	.size	drawWords, .-drawWords
	.align	2
	.global	drawBubbles
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBubbles, %function
drawBubbles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L568
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldrb	r2, [r0, #32]	@ zero_extendqisi2
	beq	.L561
	mov	ip, #12
	ldr	r1, [r0]
	ldr	r3, .L568+4
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L562:
	ldr	r0, .L568+8
	ldr	r2, [r0, #24]
	cmp	r2, #0
	ldrb	r2, [r0, #32]	@ zero_extendqisi2
	beq	.L563
	mov	ip, #12
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L564:
	ldr	r0, .L568+12
	ldr	r2, [r0, #24]
	cmp	r2, #0
	ldrb	r2, [r0, #32]	@ zero_extendqisi2
	beq	.L565
	mov	ip, #12
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r3, r2]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L561:
	mov	r1, #512
	ldr	r3, .L568+4
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L562
.L565:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L563:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L564
.L569:
	.align	2
.L568:
	.word	bubble1
	.word	shadowOAM
	.word	bubble2
	.word	bubble3
	.size	drawBubbles, .-drawBubbles
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
	push	{r4, lr}
	bl	drawPlayer
	ldr	r4, .L572
	bl	drawBubbles
	bl	drawEnemies
	bl	drawWords
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L572+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L573:
	.align	2
.L572:
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	DIRECTION,1,1
	.comm	playerJumpCount,4,4
	.comm	score,4,4
	.comm	shooter3FrameCount,4,4
	.comm	shooter3ShotCount,4,4
	.comm	shooter2ShotCount,4,4
	.comm	shooter2FrameCount,4,4
	.comm	shooter1ShotCount,4,4
	.comm	shooter1FrameCount,4,4
	.comm	walker3JumpCount,4,4
	.comm	walker3FrameCount,4,4
	.comm	walker2JumpCount,4,4
	.comm	walker2FrameCount,4,4
	.comm	walker1JumpCount,4,4
	.comm	walker1FrameCount,4,4
	.comm	playerFrameCount,4,4
	.comm	s1,68,4
	.comm	s0,68,4
	.comm	h3,68,4
	.comm	h2,68,4
	.comm	h1,68,4
	.comm	nine,68,4
	.comm	eight,68,4
	.comm	seven,68,4
	.comm	six,68,4
	.comm	five,68,4
	.comm	four,68,4
	.comm	three,68,4
	.comm	two,68,4
	.comm	one,68,4
	.comm	zero,68,4
	.comm	hh,68,4
	.comm	t,68,4
	.comm	l,68,4
	.comm	a,68,4
	.comm	ee,68,4
	.comm	h,68,4
	.comm	colon,68,4
	.comm	e,68,4
	.comm	r,68,4
	.comm	o,68,4
	.comm	c,68,4
	.comm	s,68,4
	.comm	lastBubbleBlown,4,4
	.comm	bubble3,36,4
	.comm	bubble2,36,4
	.comm	bubble1,36,4
	.comm	shooter3,68,4
	.comm	shooter2,68,4
	.comm	shooter1,68,4
	.comm	walker3,68,4
	.comm	walker2,68,4
	.comm	walker1,68,4
	.comm	NOTES,2,2
	.comm	player,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

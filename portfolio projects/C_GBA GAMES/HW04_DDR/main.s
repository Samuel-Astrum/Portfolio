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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L4
	mov	lr, pc
	bx	r4
	ldr	r6, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r6
	ldr	r5, .L4+12
	ldr	r3, .L4+16
	mov	r1, r5
	ldr	r2, [r3]
	mov	r0, #3
	mov	r3, #19200
	mov	lr, pc
	bx	r6
	mov	r0, r5
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L4+32
	ldr	r2, .L4+36
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hideSprites
	.word	DMANow
	.word	partyPal
	.word	partyBitmap
	.word	videoBuffer
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	rSeed
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #2
	mov	r2, #128
	mvn	r0, #170
	push	{r4, lr}
	strh	r2, [r3, #132]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	ldr	r2, .L8
	strh	r1, [r3, #130]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r2, #0
	ldr	r3, .L8+4
	ldr	r1, .L8+8
	ldrh	r0, [r3, #48]
	ldr	r3, .L8+12
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #8192
	ldr	r4, .L12
	mov	r0, #3
	ldr	r2, .L12+4
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+24
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L12+36
	ldr	r3, .L12+40
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	100745216
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	flipPage
	.word	rSeed
	.word	srand
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L28
	ldr	r3, .L28+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, .L28+8
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L28+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L15
	ldr	r2, .L28+16
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L15
.L16:
	ldr	r3, .L28+20
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L28+24
	mov	lr, pc
	bx	r3
.L14:
	pop	{r4, lr}
	bx	lr
.L15:
	tst	r3, #1
	beq	.L14
	ldr	r3, .L28+16
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L14
	b	.L16
.L29:
	.align	2
.L28:
	.word	rSeed
	.word	hideSprites
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initGame
	.size	start, .-start
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"paused...\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L32
	mov	lr, pc
	bx	r3
	mov	r0, #2
	ldr	r3, .L32+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L32+8
	ldr	r2, .L32+12
	mov	r1, #120
	mov	r0, #80
	ldr	r3, .L32+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+24
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L32+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	hideSprites
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	32767
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, lr}
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L34
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
.L34:
	pop	{r4, lr}
	bx	lr
.L40:
	pop	{r4, lr}
	b	goToGame
.L42:
	.align	2
.L41:
	.word	fillScreen4
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L45
	mov	lr, pc
	bx	r3
	mov	r0, #4
	ldr	r3, .L45+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+12
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L45+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	hideSprites
	.word	fillScreen4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L54
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
	ldr	r3, .L54+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L53
.L47:
	pop	{r4, lr}
	bx	lr
.L53:
	pop	{r4, lr}
	b	goToStart
.L55:
	.align	2
.L54:
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+12
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L58+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	hideSprites
	.word	fillScreen4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L61
	ldr	r2, .L78+12
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L61
	bl	goToPause
.L63:
	ldr	r3, .L78+16
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L76
.L64:
	ldr	r3, .L78+20
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L77
	pop	{r4, lr}
	bx	lr
.L61:
	tst	r3, #4
	beq	.L63
	ldr	r3, .L78+12
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L63
	bl	goToPause
	b	.L63
.L77:
	pop	{r4, lr}
	b	goToWin
.L76:
	bl	goToLose
	b	.L64
.L79:
	.align	2
.L78:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	player
	.word	enemy
	.size	game, .-game
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"Player Health: %d\000"
	.align	2
.LC2:
	.ascii	"Enemy Health: %d\000"
	.align	2
.LC3:
	.ascii	"Score: %d\000"
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
	mov	r2, #67108864
	ldr	r1, .L91
	push	{r4, r7, fp, lr}
	ldr	r3, .L91+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L91+8
	ldr	r4, .L91+12
	ldr	r5, .L91+16
	ldr	r7, .L91+20
	ldr	r8, .L91+24
	ldr	fp, .L91+28
	ldr	r10, .L91+32
	ldr	r9, .L91+36
.L81:
	ldr	r2, [r6]
	ldrh	r3, [r4]
	ldr	r1, .L91+40
.L82:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r1, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L82
.L84:
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L83
	.word	.L83
.L83:
	ldr	r3, .L91+44
	mov	lr, pc
	bx	r3
	b	.L81
.L85:
	ldr	r3, .L91+48
	mov	lr, pc
	bx	r3
	b	.L81
.L86:
	ldr	r3, .L91+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r7, #52]
	mov	r0, fp
	ldr	r1, .L91+56
	ldr	r3, .L91+60
	mov	lr, pc
	bx	r3
	ldr	r2, [r8, #52]
	mov	r0, r10
	ldr	r1, .L91+64
	ldr	r3, .L91+60
	mov	lr, pc
	bx	r3
	ldr	r2, .L91+68
	mov	r0, r9
	ldr	r2, [r2]
	ldr	r1, .L91+72
	ldr	r3, .L91+60
	mov	lr, pc
	bx	r3
	ldr	r1, [r7, #4]
	mov	r2, fp
	ldr	r0, [r7]
	mov	r3, #7
	ldr	ip, .L91+76
	add	r1, r1, #20
	mov	lr, pc
	bx	ip
	ldm	r8, {r0, r1}
	mov	r2, r10
	mov	r3, #7
	ldr	ip, .L91+76
	add	r1, r1, #20
	sub	r0, r0, #15
	mov	lr, pc
	bx	ip
	ldr	r0, [r7]
	mov	r3, #7
	mov	r2, r9
	ldr	r1, [r7, #4]
	ldr	ip, .L91+76
	add	r0, r0, #50
	mov	lr, pc
	bx	ip
	ldr	r3, .L91+80
	mov	lr, pc
	bx	r3
	b	.L81
.L87:
	ldr	r3, .L91+84
	mov	lr, pc
	bx	r3
	b	.L81
.L92:
	.align	2
.L91:
	.word	5140
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	player
	.word	enemy
	.word	playerLife
	.word	enemyLife
	.word	scoreCount
	.word	67109120
	.word	win
	.word	pause
	.word	game
	.word	.LC1
	.word	sprintf
	.word	.LC2
	.word	score
	.word	.LC3
	.word	drawString4
	.word	waitForVBlank
	.word	start
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	scoreCount,50,4
	.comm	enemyLife,50,4
	.comm	playerLife,50,4
	.comm	rSeed,4,4
	.comm	state,4,4
	.comm	STATE,1,1
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	NOTES,2,2
	.comm	DIRECTION,1,1
	.ident	"GCC: (devkitARM release 53) 9.1.0"

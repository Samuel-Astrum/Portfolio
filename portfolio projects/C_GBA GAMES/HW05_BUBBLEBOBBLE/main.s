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
	push	{r4, lr}
	mov	r3, #48
	ldr	r4, .L4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startTILESTiles
	.word	startTILESPal
	.word	100679680
	.word	startTILEMAPMap
	.word	hideSprites
	.word	state
	.size	goToStart, .-goToStart
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"HELLO\000"
	.text
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r0, .L8+4
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #2048
	strh	r3, [r2]	@ movhi
	ldr	r4, .L8+12
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+24
	ldr	r1, .L8+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	.LC0
	.word	mgba_printf
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	67109120
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"HI\000"
	.text
	.align	2
	.global	goToLevelOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevelOne, %function
goToLevelOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L16
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+8
	mov	r3, #64
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+32
	mov	lr, pc
	bx	r3
	mov	r0, #1
	ldr	r3, .L16+36
	ldr	r2, .L16+40
	ldr	r1, [r3]
	pop	{r4, lr}
	str	r0, [r3]
	str	r1, [r2]
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LC1
	.word	mgba_printf
	.word	DMANow
	.word	levelsTILESTiles
	.word	levelsTILESPal
	.word	100679680
	.word	levelOneTILEMAPMap
	.word	hideSprites
	.word	initLevelOne
	.word	state
	.word	priorState
	.size	goToLevelOne, .-goToLevelOne
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
	ldr	r3, .L25
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L19
	ldr	r3, .L25+4
	ldrh	r3, [r3, #48]
	tst	r3, #8
	beq	.L24
.L19:
	ldr	r3, .L25+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L24:
	bl	goToLevelOne
	b	.L19
.L26:
	.align	2
.L25:
	.word	oldButtons
	.word	67109120
	.word	waitForVBlank
	.size	start, .-start
	.align	2
	.global	goToLevelTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevelTwo, %function
goToLevelTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	mov	r0, #2
	ldr	r3, .L29+8
	ldr	r2, .L29+12
	ldr	r1, [r3]
	pop	{r4, lr}
	str	r0, [r3]
	str	r1, [r2]
	bx	lr
.L30:
	.align	2
.L29:
	.word	hideSprites
	.word	initLevelTwo
	.word	state
	.word	priorState
	.size	goToLevelTwo, .-goToLevelTwo
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
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	ldr	r4, .L33+4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L33+8
	ldr	r1, .L33+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L33+16
	ldr	r2, .L33+20
	ldr	r1, [r3]
	pop	{r4, lr}
	str	r0, [r3]
	str	r1, [r2]
	bx	lr
.L34:
	.align	2
.L33:
	.word	hideSprites
	.word	DMANow
	.word	100679680
	.word	winTILEMAPMap
	.word	state
	.word	priorState
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
	@ link register save eliminated.
	ldr	r3, .L37
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L38:
	.align	2
.L37:
	.word	oldButtons
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
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldr	r4, .L41+4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L41+8
	ldr	r1, .L41+12
	mov	lr, pc
	bx	r4
	mov	r0, #4
	ldr	r3, .L41+16
	ldr	r2, .L41+20
	ldr	r1, [r3]
	pop	{r4, lr}
	str	r0, [r3]
	str	r1, [r2]
	bx	lr
.L42:
	.align	2
.L41:
	.word	hideSprites
	.word	DMANow
	.word	100679680
	.word	loseTILEMAPMap
	.word	state
	.word	priorState
	.size	goToLose, .-goToLose
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
	ldr	r3, .L46
	mov	lr, pc
	bx	r3
	ldr	r4, .L46+4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+8
	ldr	r1, .L46+12
	mov	lr, pc
	bx	r4
	mov	r0, #5
	ldr	r3, .L46+16
	ldr	r2, .L46+20
	ldr	r1, [r3]
	pop	{r4, lr}
	str	r0, [r3]
	str	r1, [r2]
	bx	lr
.L47:
	.align	2
.L46:
	.word	hideSprites
	.word	DMANow
	.word	100679680
	.word	pauseTILEMAPMap
	.word	state
	.word	priorState
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"%d, %d\000"
	.text
	.align	2
	.global	levelOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	levelOne, %function
levelOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L59
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldm	r4, {r1, r2}
	ldr	r0, .L59+8
	ldr	r3, .L59+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L49
	ldr	r3, .L59+28
	ldrh	r3, [r3, #48]
	tst	r3, #8
	beq	.L56
.L49:
	ldr	r3, [r4, #44]
	cmp	r3, #6
	beq	.L57
.L50:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L58
	pop	{r4, lr}
	bx	lr
.L58:
	pop	{r4, lr}
	b	goToLose
.L57:
	bl	goToWin
	b	.L50
.L56:
	bl	goToPause
	b	.L49
.L60:
	.align	2
.L59:
	.word	player
	.word	updateGame
	.word	.LC2
	.word	mgba_printf
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	67109120
	.size	levelOne, .-levelOne
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
	push	{r4, r7, fp, lr}
	ldr	r5, .L78
	ldr	fp, .L78+4
	ldr	r3, .L78+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L78+12
	ldr	r1, [r5]
	ldrh	r0, [fp]
	ldr	r7, .L78+16
	ldr	r6, .L78+20
	ldr	r9, .L78+24
	ldr	r8, .L78+28
	ldr	r10, .L78+32
.L63:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r10, #48]
	strh	r3, [fp]	@ movhi
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L71
.L65:
	.word	.L69
	.word	.L68
	.word	.L71
	.word	.L67
	.word	.L66
	.word	.L64
.L64:
	tst	r0, #8
	beq	.L71
	ldrh	r0, [r10, #48]
	tst	r0, #8
	beq	.L77
.L71:
	mov	r0, r3
	b	.L63
.L66:
	tst	r0, #8
	beq	.L71
	mov	lr, pc
	bx	r8
	ldr	r1, [r5]
	ldrh	r0, [fp]
	b	.L63
.L67:
	tst	r0, #8
	beq	.L71
	mov	lr, pc
	bx	r9
	ldr	r1, [r5]
	ldrh	r0, [fp]
	b	.L63
.L69:
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldrh	r0, [fp]
	b	.L63
.L68:
	mov	lr, pc
	bx	r6
	ldr	r1, [r5]
	ldrh	r0, [fp]
	b	.L63
.L77:
	ldr	r3, .L78+36
	mov	lr, pc
	bx	r3
	ldr	r1, [r5]
	ldrh	r0, [fp]
	b	.L63
.L79:
	.align	2
.L78:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	levelOne
	.word	win.part.0
	.word	lose.part.0
	.word	67109120
	.word	goToLevelOne
	.size	main, .-main
	.text
	.align	2
	.global	levelTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	levelTwo, %function
levelTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
	ldr	r3, .L91+12
	ldrh	r3, [r3, #48]
	tst	r3, #8
	beq	.L88
.L81:
	ldr	r4, .L91+16
	ldr	r3, [r4, #44]
	cmp	r3, #6
	beq	.L89
.L82:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L90
	pop	{r4, lr}
	bx	lr
.L90:
	pop	{r4, lr}
	b	goToLose
.L89:
	bl	goToWin
	b	.L82
.L88:
	bl	goToPause
	b	.L81
.L92:
	.align	2
.L91:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	67109120
	.word	player
	.size	levelTwo, .-levelTwo
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
	@ link register save eliminated.
	ldr	r3, .L98
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L98+4
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bxne	lr
	b	goToLevelOne
.L99:
	.align	2
.L98:
	.word	oldButtons
	.word	67109120
	.size	pause, .-pause
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.comm	player,60,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"

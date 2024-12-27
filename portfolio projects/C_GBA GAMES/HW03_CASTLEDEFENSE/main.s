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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"CASTLE DEFENSE!!!!!\000"
	.align	2
.LC1:
	.ascii	"PRESS START TO PLAY :D\000"
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
	mov	r0, #992
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r0, .L4+4
	ldr	lr, .L4+8
	str	ip, [r0]
	ldr	r4, .L4+12
	mov	r1, #60
	mov	r0, #70
	ldr	r3, .L4+16
	ldr	r2, .L4+20
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #31
	mov	r1, #100
	mov	r0, #60
	ldr	r2, .L4+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	fillScreen
	.word	state
	.word	rSeed
	.word	drawString
	.word	31775
	.word	.LC0
	.word	.LC1
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
	push	{r4, lr}
	mvn	r1, #170
	mov	r4, #67108864
	mov	r2, #2
	mov	r3, #128
	strh	r3, [r4, #132]	@ movhi
	strh	r1, [r4, #128]	@ movhi
	ldr	r3, .L8
	strh	r2, [r4, #130]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L8+4
	ldr	r3, .L8+8
	strh	r1, [r4]	@ movhi
	ldr	r1, .L8+12
	ldrh	r0, [r3, #48]
	ldr	r3, .L8+16
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	1027
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
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	drawBG
	.word	drawCastle
	.word	drawCrown
	.word	drawChest
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
	ldr	r4, .L21
	ldr	r3, [r4]
	ldr	r2, .L21+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L14
	ldr	r3, .L21+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r0, [r4]
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L21+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	rSeed
	.word	waitForVBlank
	.word	buttons
	.word	oldButtons
	.word	srand
	.word	initGame
	.size	start, .-start
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"PAUSED...\000"
	.align	2
.LC3:
	.ascii	"PRESS START TO RESUME\000"
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
	ldr	r0, .L25
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+8
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	ip, .L25+12
	ldr	r4, .L25+16
	mov	r3, #0
	mov	r1, #60
	mov	r0, #70
	ldr	r2, .L25+20
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #60
	ldr	r2, .L25+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	1023
	.word	fillScreen
	.word	waitForVBlank
	.word	state
	.word	drawString
	.word	.LC2
	.word	.LC3
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
	ldr	r3, .L34
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L27
	ldr	r3, .L34+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L33
.L27:
	pop	{r4, lr}
	bx	lr
.L33:
	pop	{r4, lr}
	b	goToGame
.L35:
	.align	2
.L34:
	.word	waitForVBlank
	.word	buttons
	.word	oldButtons
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"YOU PROTECTED THE CROWN!\000"
	.align	2
.LC5:
	.ascii	"YOU WIN!!!!!\000"
	.align	2
.LC6:
	.ascii	"PRESS START TO RETURN TO MAIN MENU\000"
	.text
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
	push	{r4, r5, r6, lr}
	ldr	r0, .L38
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+8
	mov	lr, pc
	bx	r3
	mov	lr, #3
	ldr	r5, .L38+12
	ldr	ip, .L38+16
	ldr	r4, .L38+20
	mov	r3, r5
	mov	r1, #60
	mov	r0, #50
	ldr	r2, .L38+24
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #80
	ldr	r2, .L38+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #140
	mov	r0, #20
	ldr	r2, .L38+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	31775
	.word	fillScreen
	.word	waitForVBlank
	.word	1023
	.word	state
	.word	drawString
	.word	.LC4
	.word	.LC5
	.word	.LC6
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
	ldr	r3, .L47
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L40
	ldr	r3, .L47+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L46
.L40:
	pop	{r4, lr}
	bx	lr
.L46:
	pop	{r4, lr}
	b	goToStart
.L48:
	.align	2
.L47:
	.word	waitForVBlank
	.word	buttons
	.word	oldButtons
	.size	win, .-win
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"YOU LET THEM TAKE THE CROWN...\000"
	.align	2
.LC8:
	.ascii	"YOU LOSE.. :(\000"
	.text
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
	mov	r0, #31
	ldr	r3, .L51
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+4
	mov	lr, pc
	bx	r3
	mov	lr, #4
	ldr	ip, .L51+8
	ldr	r4, .L51+12
	mov	r3, #0
	mov	r1, #60
	mov	r0, #50
	ldr	r2, .L51+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #80
	ldr	r2, .L51+20
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #140
	mov	r0, #20
	ldr	r2, .L51+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	fillScreen
	.word	waitForVBlank
	.word	state
	.word	drawString
	.word	.LC7
	.word	.LC8
	.word	.LC6
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"Score: %d\000"
	.align	2
.LC10:
	.ascii	"Health: %d\000"
	.text
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L65
	sub	sp, sp, #8
	ldr	r3, .L65+4
	ldr	r5, .L65+8
	mov	lr, pc
	bx	r3
	ldr	r6, .L65+12
	ldr	r2, [r4]
	ldr	r1, .L65+16
	ldr	r0, .L65+20
	mov	lr, pc
	bx	r6
	ldr	r7, .L65+24
	ldr	r2, [r5]
	ldr	r1, .L65+28
	ldr	r0, .L65+32
	mov	lr, pc
	bx	r6
	ldr	r3, .L65+36
	mov	lr, pc
	bx	r3
	ldr	r6, .L65+40
	mov	r3, #30
	mov	r2, #60
	mov	r1, #110
	mov	r0, #160
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	ldr	r8, .L65+44
	mov	r3, #320
	mov	r1, #110
	mov	r0, #160
	ldr	r2, .L65+20
	mov	lr, pc
	bx	r8
	mov	r3, #30
	mov	r2, #60
	mov	r1, #140
	mov	r0, #160
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L54
	mov	r3, #320
	mov	r1, #140
	mov	r0, #160
	ldr	r2, .L65+32
	mov	lr, pc
	bx	r8
.L54:
	ldr	r3, .L65+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+52
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L55
	ldr	r3, .L65+56
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L62
.L55:
	ldr	r3, [r4]
	cmp	r3, #24
	bgt	.L63
	cmn	r3, #1
	beq	.L64
.L53:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L63:
	bl	goToWin
	ldr	r3, [r4]
	cmn	r3, #1
	bne	.L53
.L64:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToLose
.L62:
	bl	goToPause
	b	.L55
.L66:
	.align	2
.L65:
	.word	score
	.word	updateGame
	.word	wallHealth
	.word	sprintf
	.word	.LC9
	.word	buffer
	.word	1007
	.word	.LC10
	.word	lifeBuffer
	.word	waitForVBlank
	.word	drawRectangle
	.word	drawString
	.word	drawGame
	.word	buttons
	.word	oldButtons
	.size	game, .-game
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
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	ldr	r6, .L78+4
	ldr	fp, .L78+8
	ldr	r5, .L78+12
	ldr	r10, .L78+16
	ldr	r9, .L78+20
	ldr	r8, .L78+24
	ldr	r7, .L78+28
	ldr	r4, .L78+32
.L68:
	ldr	r2, [r6]
	ldrh	r3, [fp]
.L69:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L69
.L71:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L70
	.word	.L70
.L70:
	mov	lr, pc
	bx	r7
	b	.L68
.L72:
	mov	lr, pc
	bx	r8
	b	.L68
.L73:
	mov	lr, pc
	bx	r9
	b	.L68
.L74:
	mov	lr, pc
	bx	r10
	b	.L68
.L79:
	.align	2
.L78:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
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
	.comm	state,4,4
	.comm	rSeed,4,4
	.comm	lifeBuffer,50,4
	.comm	buffer,50,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	NOTES,2,2
	.comm	phaseTwo,4,4
	.comm	heartHealth,4,4
	.comm	wallHealth,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

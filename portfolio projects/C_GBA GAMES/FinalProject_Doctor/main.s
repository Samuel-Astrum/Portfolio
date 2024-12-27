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
	.ascii	"GAME INITIALIZED\000"
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
	ldr	r0, .L4+4
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r3, .L4+12
	ldr	r0, .L4+16
	ldrh	ip, [r3]
	ldr	r2, .L4+20
	strh	ip, [r0]	@ movhi
	ldr	r0, .L4+24
	ldrh	ip, [r2, #48]
	ldr	r2, .L4+28
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+32
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+36
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	mgba_open
	.word	.LC0
	.word	mgba_printf
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	5140
	.word	setupSounds
	.word	startTheme_length
	.word	startTheme_data
	.word	playSoundA
	.word	goToStart
	.size	initialize, .-initialize
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
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	ldr	r6, .L29+4
	ldr	r7, .L29+8
	ldr	r5, .L29+12
	ldr	fp, .L29+16
	ldr	r10, .L29+20
	ldr	r9, .L29+24
	ldr	r8, .L29+28
	ldr	r4, .L29+32
.L7:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L8:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #15
	ldrls	pc, [pc, r2, asl #2]
	b	.L8
.L10:
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L21
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L17
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L9
.L9:
	ldr	r3, .L29+36
	mov	lr, pc
	bx	r3
	b	.L7
.L11:
	ldr	r3, .L29+40
	mov	lr, pc
	bx	r3
	b	.L7
.L12:
	ldr	r3, .L29+44
	mov	lr, pc
	bx	r3
	b	.L7
.L13:
	ldr	r3, .L29+48
	mov	lr, pc
	bx	r3
	b	.L7
.L14:
	ldr	r3, .L29+52
	mov	lr, pc
	bx	r3
	b	.L7
.L15:
	ldr	r3, .L29+56
	mov	lr, pc
	bx	r3
	b	.L7
.L16:
	ldr	r3, .L29+60
	mov	lr, pc
	bx	r3
	b	.L7
.L17:
	ldr	r3, .L29+64
	mov	lr, pc
	bx	r3
	b	.L7
.L18:
	ldr	r3, .L29+68
	mov	lr, pc
	bx	r3
	b	.L7
.L19:
	ldr	r3, .L29+72
	mov	lr, pc
	bx	r3
	b	.L7
.L20:
	ldr	r3, .L29+76
	mov	lr, pc
	bx	r3
	b	.L7
.L21:
	ldr	r3, .L29+80
	mov	lr, pc
	bx	r3
	b	.L7
.L22:
	mov	lr, pc
	bx	r8
	b	.L7
.L23:
	mov	lr, pc
	bx	r9
	b	.L7
.L24:
	mov	lr, pc
	bx	r10
	b	.L7
.L25:
	mov	lr, pc
	bx	fp
	b	.L7
.L30:
	.align	2
.L29:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instructions
	.word	lore
	.word	map
	.word	67109120
	.word	house
	.word	tree
	.word	pause
	.word	initialDialogue
	.word	bossTwoText
	.word	bossOneText
	.word	lose
	.word	win
	.word	bossTwo
	.word	dungeonTwo
	.word	bossOne
	.word	dungeonOne
	.size	main, .-main
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	hasSecondKey,4,4
	.comm	secondKeyActive,4,4
	.comm	hasKey,4,4
	.comm	keyActive,4,4
	.comm	rSeed,4,4
	.comm	prevState,4,4
	.comm	frameCount,4,4
	.comm	hOff1,4,4
	.comm	hOff0,4,4
	.comm	groundsKeeperVisit,4,4
	.comm	treeVisit,4,4
	.comm	boss2Clear,4,4
	.comm	boss1Clear,4,4
	.comm	lorePage,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

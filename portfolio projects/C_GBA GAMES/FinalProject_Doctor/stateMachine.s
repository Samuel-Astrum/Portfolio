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
	.file	"stateMachine.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"START INITIALIZED\000"
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
	mov	r3, #67108864
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r2, .L4
	strh	r2, [r3]	@ movhi
	ldrh	r2, [r3]
	orr	r2, r2, #4096
	strh	r2, [r3]	@ movhi
	ldr	r6, .L4+4
	mov	lr, pc
	bx	r6
	ldr	r5, .L4+8
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	ldr	r1, .L4+32
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L4+36
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	ldr	r0, .L4+44
	ldr	r3, .L4+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+52
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r6
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	lr, .L4+64
	ldr	ip, .L4+68
	ldr	r0, .L4+72
	ldr	r1, .L4+76
	ldr	r2, .L4+80
	ldr	r3, .L4+84
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	ldr	lr, .L4+88
	ldr	ip, .L4+92
	ldr	r0, .L4+96
	ldr	r1, .L4+100
	ldr	r2, .L4+104
	ldr	r3, .L4+108
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	ldr	lr, .L4+112
	str	r4, [r2, #88]
	str	r4, [r3, #88]
	ldr	ip, .L4+116
	ldr	r0, .L4+120
	ldr	r1, .L4+124
	ldr	r2, .L4+128
	ldr	r3, .L4+132
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1044
	.word	flipPage
	.word	DMANow
	.word	100745216
	.word	spriteSheetTiles
	.word	83886592
	.word	spriteSheetPal
	.word	hideSprites
	.word	titleScreenPal
	.word	titleScreenBitmap
	.word	drawFullscreenImage4
	.word	.LC0
	.word	mgba_printf
	.word	waitForVBlank
	.word	state
	.word	initStart
	.word	boss1Clear
	.word	boss2Clear
	.word	treeVisit
	.word	groundsKeeperVisit
	.word	treeClear
	.word	houseClear
	.word	stageOneClear
	.word	stageTwoClear
	.word	hasKey
	.word	hasSecondKey
	.word	firstBoss
	.word	secondBoss
	.word	hasSword
	.word	hasShield
	.word	dungeonTwoCountdown
	.word	dungeonOneCountdown
	.word	cheatOne
	.word	cheatTwo
	.size	goToStart, .-goToStart
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"CONTROLS INITIALIZED\000"
	.text
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L8
	push	{r4, r5, r6, lr}
	ldr	r4, .L8+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r5, .L8+8
	mov	r2, #83886080
	ldr	r1, .L8+12
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L8+16
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	ldr	r0, .L8+24
	ldr	r3, .L8+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+32
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L8+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	1044
	.word	flipPage
	.word	DMANow
	.word	scrollPal
	.word	scrollBitmap
	.word	drawFullscreenImage4
	.word	.LC1
	.word	mgba_printf
	.word	waitForVBlank
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L11
	ldr	r2, .L23+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	goToStart
.L11:
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"LORE INITIALIZED\000"
	.text
	.align	2
	.global	goToLore
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLore, %function
goToLore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L27
	push	{r4, r5, r6, lr}
	ldr	r3, .L27+4
	strh	r1, [r2]	@ movhi
	ldr	r4, .L27+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L27+12
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L27+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L27+20
	ldr	r3, .L27+24
	mov	lr, pc
	bx	r3
	ldr	r0, .L27+28
	ldr	r3, .L27+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+40
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L27+44
	ldr	r3, .L27+48
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r3, .L27+52
	ldr	r2, .L27+56
	ldr	r0, [r3]
	ldr	r3, .L27+60
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L27+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	1044
	.word	hideSprites
	.word	flipPage
	.word	DMANow
	.word	lore1Pal
	.word	lore1Bitmap
	.word	drawFullscreenImage4
	.word	.LC2
	.word	mgba_printf
	.word	waitForVBlank
	.word	pageTurn_length
	.word	pageTurn_data
	.word	playSoundB
	.word	rSeed
	.word	lorePage
	.word	srand
	.word	state
	.size	goToLore, .-goToLore
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
	ldr	r2, .L50
	ldr	r3, [r2]
	push	{r4, r5, r6, lr}
	add	r3, r3, #1
	ldr	r1, .L50+4
	ldr	r4, .L50+8
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	ldr	r3, .L50+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L30
	ldr	r2, .L50+16
	ldrh	r2, [r2]
	ands	r5, r2, #8
	beq	.L46
.L30:
	tst	r3, #4
	beq	.L31
	ldr	r3, .L50+16
	ldrh	r2, [r3]
	ands	r2, r2, #4
	beq	.L47
.L31:
	ldr	r5, .L50+20
	ldr	r3, [r5, #36]
	cmp	r3, #1
	beq	.L48
.L32:
	cmp	r3, #2
	beq	.L49
.L29:
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L29
	ldr	r3, .L50+16
	ldrh	r2, [r3]
	ands	r2, r2, #1
	bne	.L29
	ldr	r3, .L50+24
	ldr	r0, .L50+28
	ldr	r1, [r3]
	ldr	r3, .L50+32
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L48:
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L29
	ldr	r3, .L50+16
	ldrh	r2, [r3]
	ands	r6, r2, #1
	bne	.L29
	ldr	r3, .L50+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+24
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L50+28
	ldr	r3, .L50+32
	mov	lr, pc
	bx	r3
	bl	goToLore
	ldr	r3, [r5, #36]
	b	.L32
.L46:
	ldr	r3, .L50+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+24
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L50+28
	ldr	r3, .L50+32
	mov	lr, pc
	bx	r3
	bl	goToLore
	ldrh	r3, [r4]
	b	.L30
.L47:
	ldr	r3, .L50+24
	ldr	r0, .L50+28
	ldr	r1, [r3]
	ldr	r3, .L50+32
	mov	lr, pc
	bx	r3
	bl	goToInstructions
	b	.L31
.L51:
	.align	2
.L50:
	.word	rSeed
	.word	updateStart
	.word	oldButtons
	.word	drawStart
	.word	buttons
	.word	cursor
	.word	pageTurn_length
	.word	pageTurn_data
	.word	playSoundB
	.word	stopSounds
	.size	start, .-start
	.align	2
	.global	goToInitialDialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInitialDialogue, %function
goToInitialDialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L54
	mov	lr, pc
	bx	r4
	ldr	r5, .L54+4
	mov	r2, #83886080
	ldr	r1, .L54+8
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L54+12
	ldr	r3, .L54+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+20
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #12
	ldr	r3, .L54+24
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	flipPage
	.word	DMANow
	.word	startingWordsPal
	.word	startingWordsBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	state
	.size	goToInitialDialogue, .-goToInitialDialogue
	.align	2
	.global	lore
	.syntax unified
	.arm
	.fpu softvfp
	.type	lore, %function
lore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L80
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L57
	cmp	r3, #1
	bne	.L56
	ldr	r3, .L80+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L60
	ldr	r2, .L80+8
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L60
.L61:
	ldr	r3, .L80+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L80+16
	ldr	r3, .L80+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToInitialDialogue
.L57:
	ldr	r3, .L80+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L56
	ldr	r3, .L80+8
	ldrh	r2, [r3]
	ands	r2, r2, #1
	bne	.L56
	ldr	r3, .L80+12
	ldr	r0, .L80+16
	ldr	r1, [r3]
	ldr	r3, .L80+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L80+24
	mov	r2, #83886080
	ldr	r1, .L80+28
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L80+32
	ldr	r3, .L80+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+40
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4]
.L56:
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	tst	r3, #8
	bne	.L79
.L62:
	tst	r3, #2
	beq	.L56
	ldr	r3, .L80+8
	ldrh	r2, [r3]
	ands	r5, r2, #2
	bne	.L56
	ldr	r3, .L80+12
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L80+16
	ldr	r3, .L80+20
	mov	lr, pc
	bx	r3
	ldr	r6, .L80+24
	mov	r2, #83886080
	ldr	r1, .L80+44
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r0, .L80+48
	ldr	r3, .L80+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+40
	mov	lr, pc
	bx	r3
	str	r5, [r4]
	b	.L56
.L79:
	ldr	r2, .L80+8
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L62
	b	.L61
.L81:
	.align	2
.L80:
	.word	lorePage
	.word	oldButtons
	.word	buttons
	.word	pageTurn_length
	.word	pageTurn_data
	.word	playSoundB
	.word	DMANow
	.word	lore2Pal
	.word	lore2Bitmap
	.word	drawFullscreenImage4
	.word	flipPage
	.word	lore1Pal
	.word	lore1Bitmap
	.size	lore, .-lore
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"MAP INITIALIZED\000"
	.text
	.align	2
	.global	goToMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMap, %function
goToMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #51200
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L84
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #16384
	ldr	r2, .L84+4
	ldr	r1, .L84+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L84+12
	ldr	r1, .L84+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+20
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L84+24
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L84+28
	ldr	r1, .L84+32
	mov	lr, pc
	bx	r4
	ldr	r2, .L84+36
	mov	r3, #4096
	mov	r0, #3
	ldr	r1, .L84+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+44
	ldr	r0, .L84+48
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L84+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	DMANow
	.word	100728832
	.word	spriteSheetTiles
	.word	83886592
	.word	spriteSheetPal
	.word	hideSprites
	.word	overworldTilesPal
	.word	8352
	.word	overworldTilesTiles
	.word	100679680
	.word	overWorldMap
	.word	mgba_printf
	.word	.LC3
	.word	state
	.size	goToMap, .-goToMap
	.align	2
	.global	initialDialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialDialogue, %function
initialDialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L94
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L94+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L94+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMap
.L95:
	.align	2
.L94:
	.word	oldButtons
	.word	buttons
	.word	initMap
	.size	initialDialogue, .-initialDialogue
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"DUNGEON ONE INITIALIZED\000"
	.text
	.align	2
	.global	goToDungeonOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToDungeonOne, %function
goToDungeonOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #51200
	mov	r1, #4352
	push	{r4, lr}
	strh	r1, [r3]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	ldr	r1, .L98
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r4, .L98+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L98+8
	mov	lr, pc
	bx	r4
	mov	r3, #1600
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L98+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L98+16
	ldr	r1, .L98+20
	mov	lr, pc
	bx	r4
	mvn	r1, #0
	ldr	r2, .L98+24
	ldr	r3, .L98+28
	ldr	r0, .L98+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L98+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L99:
	.align	2
.L98:
	.word	hideSprites
	.word	DMANow
	.word	dungeonOneTilesPal
	.word	dungeonOneTilesTiles
	.word	100679680
	.word	dungeonOneMap
	.word	dungeonOneCountdown
	.word	mgba_printf
	.word	.LC4
	.word	state
	.size	goToDungeonOne, .-goToDungeonOne
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"BOSS ONE INITIALIZED\000"
	.text
	.align	2
	.global	goToBossOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossOne, %function
goToBossOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	r3, #256
	mov	r0, #51200
	push	{r4, lr}
	strh	r3, [r1]	@ movhi
	ldrh	r2, [r1]
	orr	r2, r2, #4096
	strh	r2, [r1]	@ movhi
	ldr	r4, .L106
	strh	r0, [r1, #8]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L106+4
	mov	lr, pc
	bx	r4
	mov	r3, #1600
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L106+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L106+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L106+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L106+20
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L106+24
	ldr	r0, .L106+28
	strne	r2, [r3]
	ldr	r3, .L106+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L106+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L107:
	.align	2
.L106:
	.word	DMANow
	.word	dungeonOneTilesPal
	.word	dungeonOneTilesTiles
	.word	100679680
	.word	bossOneMapMap
	.word	boss1Clear
	.word	keyActive
	.word	.LC5
	.word	mgba_printf
	.word	state
	.size	goToBossOne, .-goToBossOne
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"this was done\000"
	.text
	.align	2
	.global	dungeonOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	dungeonOne, %function
dungeonOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L128
	sub	sp, sp, #16
	ldr	r4, .L128+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	blt	.L109
	cmp	r3, #180
	beq	.L124
	cmp	r3, #120
	beq	.L125
	cmp	r3, #60
	beq	.L126
	cmp	r3, #0
	bne	.L111
	mov	r0, #23
	mov	ip, #24
	ldr	r2, .L128+12
	ldr	r1, .L128+16
	strh	r0, [r2, #2]	@ movhi
	add	r0, r0, #1572864
	strh	ip, [r2, #4]	@ movhi
	str	r0, [r1, #1128]
	b	.L111
.L124:
	mov	r3, #76
	ldr	r2, .L128+20
	ldr	ip, .L128+24
	ldr	r0, .L128+28
	ldr	r1, .L128+32
	strh	r3, [r2, #2]	@ movhi
	add	r2, r2, #256
	strh	r3, [ip, #2]	@ movhi
	add	r0, r0, #256
	strh	r3, [r0, #-254]	@ movhi
	add	ip, ip, #256
	strh	r3, [r1, #2]	@ movhi
	add	r2, r2, #244
	add	r1, r1, #244
	strh	r3, [r2, #-242]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	ldr	r0, .L128+36
	strh	r3, [r2, #14]	@ movhi
	ldr	r3, .L128+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
.L111:
	sub	r3, r3, #1
	str	r3, [r4]
.L109:
	ldr	r3, .L128+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+48
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L108
	ldr	r3, .L128+52
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L127
.L108:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L127:
	mov	r2, #64
	mov	ip, #56
	mov	r1, #160
	mov	r3, #24
	stm	sp, {r1, r2, ip}
	str	r2, [sp, #12]
	ldr	r0, .L128+56
	mov	r2, r3
	ldm	r0, {r0, r1}
	ldr	r4, .L128+60
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L108
	ldr	r3, .L128+64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L108
	ldr	r3, .L128+68
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r2, .L128+72
	ldr	r3, .L128+76
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	goToBossOne
.L126:
	mov	r2, #76
	ldr	ip, .L128+80
	ldr	r0, .L128+84
	ldr	r1, .L128+88
	strh	r2, [ip, #2]	@ movhi
	add	r0, r0, #192
	strh	r2, [r0, #-190]	@ movhi
	add	ip, ip, #192
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	add	r1, r1, #192
	strh	r2, [r0, #2]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [ip, #194]	@ movhi
	strh	r2, [r0, #194]	@ movhi
	sub	ip, ip, #184
	strh	r2, [r1, #194]	@ movhi
	sub	r0, r0, #184
	sub	r1, r1, #184
	strh	r2, [ip, #2]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [ip, #194]	@ movhi
	strh	r2, [r0, #194]	@ movhi
	add	ip, ip, #192
	strh	r2, [r1, #194]	@ movhi
	add	r0, r0, #192
	add	r1, r1, #192
	strh	r2, [ip, #194]	@ movhi
	strh	r2, [r0, #194]	@ movhi
	strh	r2, [r1, #194]	@ movhi
	b	.L111
.L125:
	mov	r2, #76
	ldr	ip, .L128+20
	ldr	r0, .L128+24
	ldr	r1, .L128+28
	strh	r2, [ip]	@ movhi
	add	r0, r0, #192
	strh	r2, [r0, #-192]	@ movhi
	add	ip, ip, #192
	strh	r2, [r1]	@ movhi
	strh	r2, [ip]	@ movhi
	add	r1, r1, #192
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [ip, #192]	@ movhi
	strh	r2, [r0, #192]	@ movhi
	sub	ip, ip, #188
	strh	r2, [r1, #192]	@ movhi
	sub	r0, r0, #188
	sub	r1, r1, #188
	strh	r2, [ip]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [ip, #192]	@ movhi
	strh	r2, [r0, #192]	@ movhi
	add	ip, ip, #192
	strh	r2, [r1, #192]	@ movhi
	add	r0, r0, #192
	add	r1, r1, #192
	strh	r2, [ip, #192]	@ movhi
	strh	r2, [r0, #192]	@ movhi
	strh	r2, [r1, #192]	@ movhi
	b	.L111
.L129:
	.align	2
.L128:
	.word	updateDungeonOne
	.word	dungeonOneCountdown
	.word	waitForVBlank
	.word	100680816
	.word	100679680
	.word	100680300
	.word	100680364
	.word	100680428
	.word	100680492
	.word	.LC6
	.word	mgba_printf
	.word	drawDungeonOne
	.word	oldButtons
	.word	buttons
	.word	player
	.word	collision
	.word	hasSword
	.word	initPlayer
	.word	prevState
	.word	initBossOne
	.word	100680296
	.word	100680360
	.word	100680424
	.size	dungeonOne, .-dungeonOne
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"BOSS ONE TEXT INITIALIZED\000"
	.text
	.align	2
	.global	goToBossOneText
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossOneText, %function
goToBossOneText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L132
	push	{r4, r5, r6, lr}
	ldr	r3, .L132+4
	strh	r1, [r2]	@ movhi
	ldr	r4, .L132+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L132+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L132+16
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L132+20
	ldr	r3, .L132+24
	mov	lr, pc
	bx	r3
	ldr	r0, .L132+28
	ldr	r3, .L132+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L132+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L132+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L133:
	.align	2
.L132:
	.word	5140
	.word	hideSprites
	.word	flipPage
	.word	DMANow
	.word	postBossOnePal
	.word	postBossOneBitmap
	.word	drawFullscreenImage4
	.word	.LC7
	.word	mgba_printf
	.word	waitForVBlank
	.word	state
	.size	goToBossOneText, .-goToBossOneText
	.align	2
	.global	bossOneText
	.syntax unified
	.arm
	.fpu softvfp
	.type	bossOneText, %function
bossOneText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L142
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L142+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	push	{r4, lr}
	mov	r3, #16384
	ldr	r4, .L142+8
	mov	r0, #3
	ldr	r2, .L142+12
	ldr	r1, .L142+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L142+20
	ldr	r1, .L142+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToBossOne
.L143:
	.align	2
.L142:
	.word	oldButtons
	.word	buttons
	.word	DMANow
	.word	100728832
	.word	spriteSheetTiles
	.word	83886592
	.word	spriteSheetPal
	.size	bossOneText, .-bossOneText
	.align	2
	.global	goToDungeonTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToDungeonTwo, %function
goToDungeonTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #51200
	mov	r1, #4352
	push	{r4, lr}
	strh	r1, [r3]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	ldr	r1, .L146
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r4, .L146+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L146+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L146+12
	ldr	r1, .L146+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L146+20
	mov	r0, #3
	ldr	r1, .L146+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L146+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L147:
	.align	2
.L146:
	.word	hideSprites
	.word	DMANow
	.word	overworldTilesPal
	.word	8352
	.word	overworldTilesTiles
	.word	100679680
	.word	dungeonTwoMap
	.word	state
	.size	goToDungeonTwo, .-goToDungeonTwo
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"BOSS TWO INITIALIZED\000"
	.text
	.align	2
	.global	goToBossTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossTwo, %function
goToBossTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #51200
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L154
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L154+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L154+8
	ldr	r1, .L154+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L154+16
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L154+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L154+24
	ldr	r0, .L154+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+32
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L154+36
	strne	r2, [r3]
	mov	r2, #7
	ldr	r3, .L154+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L155:
	.align	2
.L154:
	.word	DMANow
	.word	overworldTilesPal
	.word	8352
	.word	overworldTilesTiles
	.word	100679680
	.word	bossTwoMap
	.word	mgba_printf
	.word	.LC8
	.word	boss2Clear
	.word	secondKeyActive
	.word	state
	.size	goToBossTwo, .-goToBossTwo
	.align	2
	.global	dungeonTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	dungeonTwo, %function
dungeonTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L166
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+8
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L157
	ldr	r3, .L166+12
	ldr	r2, .L166+16
	ldr	r1, .L166+20
	ldr	r0, .L166+24
	str	r2, [r3, #504]
	str	r2, [r3, #568]
	str	r2, [r3, #628]
	str	r2, [r3, #632]
	str	r2, [r3, #692]
	str	r2, [r3, #696]
	str	r2, [r3, #756]
	str	r2, [r3, #760]
	str	r2, [r3, #820]
	str	r2, [r3, #824]
	str	r2, [r3, #884]
	str	r2, [r3, #888]
	str	r2, [r3, #948]
	str	r2, [r3, #952]
	str	r2, [r3, #1012]
	str	r2, [r3, #1016]
	str	r2, [r3, #1076]
	str	r2, [r3, #1080]
	str	r2, [r3, #1140]
	str	r2, [r3, #1144]
	ldr	r5, .L166+28
	ldr	r4, .L166+32
	ldr	lr, .L166+36
	ldr	ip, .L166+40
	ldr	r2, .L166+44
	strh	r1, [r0, #2]	@ movhi
	add	r3, r3, #1136
	add	r0, r0, #444
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r3, #2]	@ movhi
.L157:
	ldr	r3, .L166+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+52
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L156
	ldr	r3, .L166+56
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L165
.L156:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L165:
	mov	r2, #64
	mov	ip, #56
	mov	r1, #160
	mov	r3, #24
	stm	sp, {r1, r2, ip}
	str	r2, [sp, #12]
	ldr	r0, .L166+60
	mov	r2, r3
	ldm	r0, {r0, r1}
	ldr	r4, .L166+64
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L156
	ldr	r3, .L166+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+72
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToBossTwo
.L167:
	.align	2
.L166:
	.word	updateDungeonTwo
	.word	waitForVBlank
	.word	dungeonTwoCountdown
	.word	100679680
	.word	27984299
	.word	427
	.word	100680244
	.word	100680432
	.word	100680496
	.word	100680560
	.word	100680624
	.word	100680752
	.word	drawDungeonTwo
	.word	oldButtons
	.word	buttons
	.word	player
	.word	collision
	.word	initPlayer
	.word	initBossTwo
	.size	dungeonTwo, .-dungeonTwo
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"BOSS TWO TEXT INITIALIZED\000"
	.text
	.align	2
	.global	goToBossTwoText
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossTwoText, %function
goToBossTwoText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L170
	push	{r4, r5, r6, lr}
	ldr	r4, .L170+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r5, .L170+8
	mov	r2, #83886080
	ldr	r1, .L170+12
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L170+16
	ldr	r3, .L170+20
	mov	lr, pc
	bx	r3
	ldr	r0, .L170+24
	ldr	r3, .L170+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L170+32
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #11
	ldr	r3, .L170+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L171:
	.align	2
.L170:
	.word	1044
	.word	flipPage
	.word	DMANow
	.word	postBossTwoPal
	.word	postBossTwoBitmap
	.word	drawFullscreenImage4
	.word	.LC9
	.word	mgba_printf
	.word	waitForVBlank
	.word	state
	.size	goToBossTwoText, .-goToBossTwoText
	.align	2
	.global	bossTwoText
	.syntax unified
	.arm
	.fpu softvfp
	.type	bossTwoText, %function
bossTwoText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L180
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L180+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	push	{r4, lr}
	mov	r3, #16384
	ldr	r4, .L180+8
	mov	r0, #3
	ldr	r2, .L180+12
	ldr	r1, .L180+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L180+20
	ldr	r1, .L180+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToBossTwo
.L181:
	.align	2
.L180:
	.word	oldButtons
	.word	buttons
	.word	DMANow
	.word	100728832
	.word	spriteSheetTiles
	.word	83886592
	.word	spriteSheetPal
	.size	bossTwoText, .-bossTwoText
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
	mov	r1, #67108864
	mov	r3, #4864
	mov	r2, #51200
	mov	r0, #55296
	push	{r4, lr}
	ldr	r4, .L184
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L184+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L184+8
	ldr	r1, .L184+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L184+16
	ldr	r1, .L184+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L184+24
	ldr	r1, .L184+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L184+32
	ldr	r1, .L184+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L184+40
	mov	r3, #16384
	mov	r0, #3
	ldr	r1, .L184+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L184+48
	mov	lr, pc
	bx	r3
	mov	r2, #8
	ldr	r3, .L184+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L185:
	.align	2
.L184:
	.word	DMANow
	.word	parallaxWinPal
	.word	7904
	.word	parallaxWinTiles
	.word	100679680
	.word	frontPortionMap
	.word	100712448
	.word	backPortionMap
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	hideSprites
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
	ldr	r0, .L194
	ldr	r2, [r0]
	add	r2, r2, #1
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r2, r2, lsl #1
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r1, .L194+4
	add	r3, r3, r3, lsl #16
	add	r3, r2, r3, lsl #2
	add	r1, r3, r1
	ldr	ip, .L194+8
	ldr	r3, .L194+12
	ldr	lr, .L194+16
	ldr	r9, [ip]
	cmp	lr, r1, ror #5
	ldr	r1, [r3]
	addcs	r9, r9, #4
	addcs	r1, r1, #1
	strcs	r1, [r3]
	strcs	r9, [ip]
	cmp	r1, #272
	movgt	r1, #0
	str	r2, [r0]
	strgt	r1, [r3]
	lslle	r1, r1, #16
	lsrle	r1, r1, #16
.L189:
	mov	r0, #67108864
	mov	r3, #120
	mov	r8, #0
	mov	r4, #56	@ movhi
	strh	r1, [r0, #16]	@ movhi
	lsl	r9, r9, #16
	ldr	r1, .L194+20
	lsr	r9, r9, #16
	strh	r8, [r0, #18]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	strh	r9, [r0, #20]	@ movhi
	strh	r8, [r0, #26]	@ movhi
	strh	r4, [r1, #10]	@ movhi
	mov	r4, #64	@ movhi
	strh	r4, [r1, #18]	@ movhi
	ldr	r4, .L194+24
	strh	r4, [r1, #20]	@ movhi
	mov	r4, #996	@ movhi
	ldr	r9, .L194+28
	mov	r10, #992
	mov	r7, #136
	mov	r5, #80
	mov	lr, #88
	mov	r2, #96
	mov	fp, #104
	strh	r9, [r1, #28]	@ movhi
	strh	r4, [r1, #36]	@ movhi
	mov	r9, #48	@ movhi
	mov	r6, #144
	mov	r4, #112	@ movhi
	ldr	r8, .L194+32
	ldr	r0, .L194+36
	strh	r10, [r1, #4]	@ movhi
	strh	r8, [r1, #52]	@ movhi
	add	r10, r10, #5
	add	r8, r8, #5
	strh	r3, [r1]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	strh	r3, [r1, #24]	@ movhi
	strh	r3, [r1, #32]	@ movhi
	strh	r3, [r1, #40]	@ movhi
	strh	r3, [r1, #48]	@ movhi
	strh	r3, [r1, #56]	@ movhi
	strh	r3, [r1, #64]	@ movhi
	strh	r3, [r1, #66]	@ movhi
	strh	r3, [r1, #72]	@ movhi
	strh	r9, [r1, #2]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	r5, [r1, #26]	@ movhi
	strh	lr, [r1, #34]	@ movhi
	strh	r2, [r1, #42]	@ movhi
	strh	fp, [r1, #50]	@ movhi
	strh	r4, [r1, #58]	@ movhi
	strh	r8, [r1, #60]	@ movhi
	strh	r8, [r1, #68]	@ movhi
	strh	r10, [r1, #44]	@ movhi
	strh	r7, [r1, #74]	@ movhi
	strh	r6, [r1, #82]	@ movhi
	ldr	r6, .L194+40
	strh	r6, [r1, #100]	@ movhi
	strh	r6, [r1, #108]	@ movhi
	strh	r6, [r1, #116]	@ movhi
	mov	r6, #168	@ movhi
	strh	r6, [r1, #106]	@ movhi
	mov	r6, #184	@ movhi
	strh	r6, [r1, #114]	@ movhi
	mov	r6, #192	@ movhi
	strh	r6, [r1, #122]	@ movhi
	mov	r6, #200	@ movhi
	mov	r8, #1004	@ movhi
	strh	r6, [r1, #130]	@ movhi
	mov	r6, #208	@ movhi
	strh	r9, [r1, #154]	@ movhi
	strh	r8, [r1, #76]	@ movhi
	mov	r4, #216	@ movhi
	mov	r8, #152	@ movhi
	mov	r9, #160	@ movhi
	mov	ip, #128
	strh	r6, [r1, #138]	@ movhi
	mov	r6, #56	@ movhi
	strh	r3, [r1, #80]	@ movhi
	strh	r3, [r1, #88]	@ movhi
	strh	r3, [r1, #96]	@ movhi
	strh	r3, [r1, #104]	@ movhi
	strh	r3, [r1, #112]	@ movhi
	strh	r3, [r1, #120]	@ movhi
	strh	r3, [r1, #128]	@ movhi
	strh	r3, [r1, #136]	@ movhi
	strh	r3, [r1, #144]	@ movhi
	strh	r4, [r1, #146]	@ movhi
	ldr	r3, .L194+44
	ldr	r4, .L194+48
	strh	r8, [r1, #90]	@ movhi
	strh	r9, [r1, #98]	@ movhi
	ldr	r8, .L194+52
	ldr	r9, .L194+56
	strh	r3, [r1, #84]	@ movhi
	strh	r3, [r1, #140]	@ movhi
	strh	r8, [r1, #92]	@ movhi
	strh	r4, [r1, #124]	@ movhi
	strh	r4, [r1, #148]	@ movhi
	strh	r4, [r1, #156]	@ movhi
	strh	r9, [r1, #132]	@ movhi
	strh	ip, [r1, #152]	@ movhi
	strh	ip, [r1, #160]	@ movhi
	strh	r6, [r1, #162]	@ movhi
	strh	r5, [r1, #178]	@ movhi
	mov	r5, #112	@ movhi
	strh	r5, [r1, #210]	@ movhi
	mov	r5, #152	@ movhi
	strh	r4, [r1, #188]	@ movhi
	strh	r4, [r1, #220]	@ movhi
	strh	r5, [r1, #234]	@ movhi
	strh	r4, [r1, #236]	@ movhi
	mov	r5, #160	@ movhi
	mov	r4, #72	@ movhi
	strh	r5, [r1, #242]	@ movhi
	strh	r4, [r1, #170]	@ movhi
	mov	r5, #1000	@ movhi
	mov	r4, #168	@ movhi
	strh	r2, [r1, #194]	@ movhi
	ldr	r2, .L194+24
	strh	r8, [r1, #180]	@ movhi
	strh	lr, [r1, #186]	@ movhi
	add	r8, r1, #264
	add	lr, r1, #256
	strh	r2, [r1, #196]	@ movhi
	strh	fp, [r1, #202]	@ movhi
	add	r2, r1, #272
	add	fp, r1, #280
	strh	r0, [r1, #164]	@ movhi
	strh	ip, [r1, #168]	@ movhi
	strh	r3, [r1, #172]	@ movhi
	strh	ip, [r1, #176]	@ movhi
	strh	ip, [r1, #184]	@ movhi
	strh	ip, [r1, #192]	@ movhi
	strh	ip, [r1, #200]	@ movhi
	strh	r3, [r1, #204]	@ movhi
	strh	ip, [r1, #208]	@ movhi
	strh	ip, [r1, #216]	@ movhi
	strh	ip, [r1, #218]	@ movhi
	strh	ip, [r1, #224]	@ movhi
	strh	r0, [r1, #228]	@ movhi
	strh	ip, [r1, #232]	@ movhi
	strh	ip, [r1, #240]	@ movhi
	strh	ip, [r1, #248]	@ movhi
	strh	r5, [r1, #244]	@ movhi
	strh	r10, [r1, #212]	@ movhi
	strh	r7, [r1, #226]	@ movhi
	strh	r4, [r1, #250]	@ movhi
	strh	ip, [lr]	@ movhi
	strh	ip, [r8]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	ip, [fp]	@ movhi
	mov	ip, #208	@ movhi
	ldr	r4, .L194+52
	strh	ip, [fp, #2]	@ movhi
	ldr	ip, .L194+52
	add	r5, r1, #296
	strh	r4, [r1, #252]	@ movhi
	mov	r4, #184	@ movhi
	strh	ip, [r5, #4]	@ movhi
	mov	ip, #64	@ movhi
	strh	r4, [lr, #2]	@ movhi
	add	r4, r1, #304
	mov	lr, #192	@ movhi
	strh	ip, [r4, #2]	@ movhi
	mov	ip, #72	@ movhi
	strh	r10, [fp, #4]	@ movhi
	mov	fp, #48	@ movhi
	strh	lr, [r8, #2]	@ movhi
	strh	r7, [r4]	@ movhi
	add	lr, r1, #312
	ldr	r4, .L194+24
	add	r6, r1, #288
	strh	ip, [lr, #2]	@ movhi
	add	r3, r1, #268
	add	ip, r1, #316
	strh	r9, [r3]	@ movhi
	mov	r8, #996	@ movhi
	mov	r3, #200	@ movhi
	strh	fp, [r6, #2]	@ movhi
	strh	r7, [r6]	@ movhi
	strh	r4, [ip]	@ movhi
	mov	r6, #56	@ movhi
	mov	ip, #1008	@ movhi
	strh	r7, [lr]	@ movhi
	add	r0, r1, #276
	add	r9, r1, #292
	add	lr, r1, #260
	strh	r3, [r2, #2]	@ movhi
	strh	r8, [r0]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r8, .L194+60
	strh	r6, [r5, #2]	@ movhi
	strh	r7, [r5]	@ movhi
	strh	r10, [r5, #12]	@ movhi
	strh	ip, [lr]	@ movhi
	strh	ip, [r9]	@ movhi
	mov	lr, pc
	bx	r8
	ldr	r3, .L194+64
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L186
	ldr	r3, .L194+68
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L193
.L186:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L193:
	ldr	r3, .L194+72
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L194+76
	ldr	r3, .L194+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L194+84
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToStart
.L195:
	.align	2
.L194:
	.word	frameCount
	.word	429496704
	.word	hOff1
	.word	hOff0
	.word	26843544
	.word	shadowOAM
	.word	994
	.word	995
	.word	998
	.word	993
	.word	1006
	.word	1005
	.word	999
	.word	1001
	.word	1007
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	startTheme_length
	.word	startTheme_data
	.word	playSoundA
	.word	hideSprites
	.size	win, .-win
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"LOSE INITALIZED\000"
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
	mov	r3, #67108864
	ldr	r2, .L198
	push	{r4, r5, r6, lr}
	ldr	r4, .L198+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r1, #9
	ldr	r2, .L198+8
	ldr	r0, .L198+12
	ldr	r3, .L198+16
	str	r1, [r2]
	ldr	r5, .L198+20
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L198+24
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L198+28
	ldr	r3, .L198+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L199:
	.align	2
.L198:
	.word	1044
	.word	flipPage
	.word	state
	.word	.LC10
	.word	mgba_printf
	.word	DMANow
	.word	losePal
	.word	loseBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
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
	ldr	r3, .L208
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L208+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L208+8
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L208+12
	ldr	r3, .L208+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L209:
	.align	2
.L208:
	.word	oldButtons
	.word	buttons
	.word	startTheme_length
	.word	startTheme_data
	.word	playSoundA
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"pause INITALIZED\000"
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
	mov	r3, #67108864
	ldr	r2, .L212
	push	{r4, r5, r6, lr}
	ldr	r4, .L212+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r1, #13
	ldr	r2, .L212+8
	ldr	r0, .L212+12
	ldr	r3, .L212+16
	str	r1, [r2]
	ldr	r5, .L212+20
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L212+24
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L212+28
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L213:
	.align	2
.L212:
	.word	1044
	.word	flipPage
	.word	state
	.word	.LC11
	.word	mgba_printf
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.size	goToPause, .-goToPause
	.align	2
	.global	bossOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	bossOne, %function
bossOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L259
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L259+4
	ldr	r3, .L259+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L259+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #48]
	cmp	r3, #0
	ble	.L254
	ldr	r3, .L259+16
	ldr	r1, [r3, #48]
	ldr	r2, .L259+20
	cmp	r1, #0
	ldr	r1, [r2]
	ble	.L255
	ldr	r5, .L259+24
	cmp	r1, #0
	ldrh	r3, [r5]
	bne	.L219
.L216:
	tst	r3, #8
	beq	.L225
.L257:
	ldr	r2, .L259+28
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L225
.L226:
	mov	r2, #5
	ldr	r3, .L259+32
	str	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L255:
	cmp	r1, #0
	beq	.L218
	ldr	r5, .L259+24
	ldrh	r3, [r5]
.L219:
	tst	r3, #1
	beq	.L216
	ldr	r7, .L259+28
	ldrh	r3, [r7]
	ands	r6, r3, #1
	beq	.L256
.L253:
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L257
.L225:
	tst	r3, #4
	beq	.L214
	ldr	r3, .L259+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L226
.L214:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L254:
	bl	goToLose
	ldr	r3, .L259+24
	ldrh	r3, [r3]
	b	.L216
.L218:
	mov	r1, #1
	str	r1, [r3, #88]
	str	r1, [r2]
	bl	goToBossOneText
	ldr	r3, .L259+24
	ldrh	r3, [r3]
	b	.L216
.L256:
	mov	ip, #128
	mov	r2, #24
	mov	r3, #16
	stm	sp, {r2, ip}
	ldm	r4, {r0, r1}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r8, .L259+36
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L258
.L221:
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L216
	ldrh	r3, [r7]
	tst	r3, #1
	bne	.L253
	mov	r1, #32
	mov	r0, #24
	mov	r2, #120
	mov	r3, #192
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [r4, #4]
	ldr	r0, [r4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L253
	ldr	r3, .L259+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L253
	mov	r2, #1
	ldr	r3, .L259+44
	str	r2, [r3]
	bl	goToMap
	b	.L253
.L258:
	mov	r1, #1
	mov	r3, #76
	ldr	r2, .L259+40
	str	r1, [r2]
	ldr	r2, .L259+48
	ldr	r1, .L259+52
	str	r6, [r2]
	ldr	r0, .L259+56
	ldr	r2, .L259+60
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r3, [r1, #130]	@ movhi
	strh	r3, [r1, #132]	@ movhi
	strh	r3, [r2, #190]	@ movhi
	strh	r3, [r2, #192]	@ movhi
	b	.L221
.L260:
	.align	2
.L259:
	.word	updateBossEncounter
	.word	player
	.word	waitForVBlank
	.word	drawBossEncounter
	.word	firstBoss
	.word	boss1Clear
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	collision
	.word	hasKey
	.word	stageOneClear
	.word	keyActive
	.word	100680688
	.word	100680752
	.word	100680692
	.size	bossOne, .-bossOne
	.align	2
	.global	bossTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	bossTwo, %function
bossTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L308
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L308+4
	ldr	r3, .L308+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L308+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #48]
	cmp	r3, #0
	ble	.L304
	ldr	r3, .L308+16
	ldr	r1, [r3, #48]
	ldr	r2, .L308+20
	cmp	r1, #0
	ldr	r1, [r2]
	ble	.L305
	ldr	r5, .L308+24
	cmp	r1, #0
	ldrh	r3, [r5]
	bne	.L266
.L263:
	tst	r3, #8
	beq	.L274
.L307:
	ldr	r2, .L308+28
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L274
.L275:
	mov	r2, #7
	ldr	r3, .L308+32
	str	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L305:
	cmp	r1, #0
	beq	.L265
	ldr	r5, .L308+24
	ldrh	r3, [r5]
.L266:
	tst	r3, #1
	beq	.L263
	ldr	r6, .L308+28
	ldrh	r3, [r6]
	ands	r8, r3, #1
	beq	.L306
.L303:
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L307
.L274:
	tst	r3, #4
	beq	.L261
	ldr	r3, .L308+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L275
.L261:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L304:
	bl	goToLose
	ldr	r3, .L308+24
	ldrh	r3, [r3]
	b	.L263
.L265:
	mov	r1, #1
	str	r1, [r3, #88]
	str	r1, [r2]
	bl	goToBossTwoText
	ldr	r3, .L308+24
	ldrh	r3, [r3]
	b	.L263
.L306:
	mov	ip, #128
	mov	r2, #24
	mov	r3, #16
	stm	sp, {r2, ip}
	ldm	r4, {r0, r1}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r7, .L308+36
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L268
	mov	r1, #1
	ldr	r3, .L308+40
	ldr	r2, .L308+44
	str	r8, [r3]
	ldr	ip, .L308+48
	ldr	r0, .L308+52
	ldr	lr, .L308+56
	str	r1, [r2]
	add	r1, r1, #620
.L269:
	sub	r3, r1, #192
.L270:
	lsl	r2, r3, #1
	add	r3, r3, #32
	cmp	r3, r1
	strh	r0, [ip, r2]	@ movhi
	bne	.L270
	add	r1, r1, #1
	cmp	r1, lr
	bne	.L269
.L268:
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L263
	ldrh	r3, [r6]
	tst	r3, #1
	bne	.L303
	mov	ip, #112
	mov	r2, #104
	mov	r3, #32
	stm	sp, {r2, ip}
	ldr	r1, [r4, #4]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [r4]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L303
	ldr	r3, .L308+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L303
	mov	r2, #1
	ldr	r3, .L308+60
	str	r2, [r3]
	bl	goToMap
	b	.L303
.L309:
	.align	2
.L308:
	.word	updateBossTwoEncounter
	.word	player
	.word	waitForVBlank
	.word	drawBossTwoEncounter
	.word	secondBoss
	.word	boss2Clear
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	collision
	.word	secondKeyActive
	.word	hasSecondKey
	.word	100679680
	.word	427
	.word	626
	.word	stageTwoClear
	.size	bossTwo, .-bossTwo
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
	ldr	r3, .L322
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L322+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, .L322+8
	ldr	r3, [r3]
	cmp	r3, #5
	push	{r4, lr}
	beq	.L321
	cmp	r3, #7
	beq	.L313
	pop	{r4, lr}
	bx	lr
.L321:
	ldr	r4, .L322+12
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L322+16
	ldr	r1, .L322+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L322+24
	ldr	r1, .L322+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToBossOne
.L313:
	ldr	r4, .L322+12
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L322+16
	ldr	r1, .L322+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L322+24
	ldr	r1, .L322+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToBossTwo
.L323:
	.align	2
.L322:
	.word	oldButtons
	.word	buttons
	.word	prevState
	.word	DMANow
	.word	100728832
	.word	spriteSheetTiles
	.word	83886592
	.word	spriteSheetPal
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"tree INITALIZED\000"
	.text
	.align	2
	.global	goToTree
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTree, %function
goToTree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L326
	push	{r4, r5, r6, lr}
	ldr	r4, .L326+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r1, #14
	ldr	r2, .L326+8
	ldr	r0, .L326+12
	ldr	r3, .L326+16
	str	r1, [r2]
	ldr	r5, .L326+20
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L326+24
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L326+28
	ldr	r3, .L326+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L326+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L327:
	.align	2
.L326:
	.word	1044
	.word	flipPage
	.word	state
	.word	.LC12
	.word	mgba_printf
	.word	DMANow
	.word	treeLorePal
	.word	treeLoreBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.size	goToTree, .-goToTree
	.align	2
	.global	tree
	.syntax unified
	.arm
	.fpu softvfp
	.type	tree, %function
tree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L333
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L333+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	mov	r2, #1
	ldr	r3, .L333+8
	str	r2, [r3]
	b	goToMap
.L334:
	.align	2
.L333:
	.word	oldButtons
	.word	buttons
	.word	treeClear
	.size	tree, .-tree
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"house INITALIZED\000"
	.text
	.align	2
	.global	goToHouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToHouse, %function
goToHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L337
	push	{r4, r5, r6, lr}
	ldr	r4, .L337+4
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r1, #15
	ldr	r2, .L337+8
	ldr	r0, .L337+12
	ldr	r3, .L337+16
	str	r1, [r2]
	ldr	r5, .L337+20
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r1, .L337+24
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r0, .L337+28
	ldr	r3, .L337+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L337+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L338:
	.align	2
.L337:
	.word	1044
	.word	flipPage
	.word	state
	.word	.LC13
	.word	mgba_printf
	.word	DMANow
	.word	houseLorePal
	.word	houseLoreBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.size	goToHouse, .-goToHouse
	.align	2
	.global	map
	.syntax unified
	.arm
	.fpu softvfp
	.type	map, %function
map:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L394
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r7, .L394+4
	ldr	r3, .L394+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L394+12
	mov	lr, pc
	bx	r3
	ldrh	r6, [r7]
	tst	r6, #1
	bne	.L385
	ldr	r4, .L394+16
	ldr	r8, .L394+20
.L389:
	ldm	r4, {r0, r1}
.L344:
	mov	r5, #24
	mov	fp, #16
	mov	r10, #64
	mov	r9, #72
	mov	r3, r5
	mov	r2, r5
	stm	sp, {r9, r10}
	str	fp, [sp, #12]
	str	r5, [sp, #8]
	mov	lr, pc
	bx	r8
	subs	r0, r0, #0
	movne	r0, #1
	bics	r3, r0, r6
	beq	.L390
.L349:
	ldrh	r3, [r7]
	tst	r3, #1
	beq	.L339
	ldr	r3, .L394+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L391
.L339:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L385:
	ldr	r5, .L394+24
	ldrh	r3, [r5]
	ldr	r4, .L394+16
	tst	r3, #1
	ldm	r4, {r0, r1}
	beq	.L386
	ldr	r8, .L394+20
.L354:
	ldrh	r6, [r7]
	b	.L344
.L390:
	ldr	r3, .L394+24
	ldrh	ip, [r3]
	mov	r2, r5
	mov	r3, r5
	str	r5, [sp, #8]
	stm	sp, {r9, r10}
	str	fp, [sp, #12]
	ldm	r4, {r0, r1}
	mvn	r5, ip
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	moveq	r5, #0
	andne	r5, r5, #1
	cmp	r5, #0
	beq	.L349
	ldr	r3, .L394+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L349
	bl	goToTree
	b	.L349
.L391:
	mov	ip, #16
	mov	r0, #32
	mov	r1, #96
	mov	r2, #328
	mov	r3, #24
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	ip, [sp, #12]
	mov	r2, r3
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L339
	ldr	r3, .L394+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L339
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToHouse
.L386:
	mov	r3, #24
	mov	r2, #8
	mov	lr, #48
	mov	ip, #176
	str	r2, [sp, #12]
	stm	sp, {ip, lr}
	mov	r2, r3
	str	r3, [sp, #8]
	ldr	r8, .L394+20
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L342
	ldr	r3, .L394+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L392
.L342:
	ldrh	r6, [r7]
	tst	r6, #1
	ldm	r4, {r0, r1}
	beq	.L389
	ldrh	r3, [r5]
	tst	r3, #1
	bne	.L354
	mov	r3, #24
	mov	r2, #8
	mov	lr, #104
	mov	ip, #448
	str	r2, [sp, #12]
	stm	sp, {ip, lr}
	mov	r2, r3
	str	r3, [sp, #8]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L343
	ldr	r3, .L394+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L393
.L343:
	ldrh	r6, [r7]
	tst	r6, #1
	ldm	r4, {r0, r1}
	beq	.L344
	ldrh	r3, [r5]
	tst	r3, #1
	bne	.L354
	mov	r3, #24
	mov	lr, #80
	mov	ip, #8
	mov	r2, r3
	stm	sp, {ip, lr}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L388
	ldr	r3, .L394+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L388
	ldr	r3, .L394+44
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #3
	ldrne	r3, .L394+48
	strne	r2, [r3]
	blne	goToWin
.L388:
	ldrh	r6, [r7]
	b	.L389
.L393:
	ldr	r3, .L394+52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L343
	ldr	r3, .L394+56
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r2, .L394+48
	ldr	r3, .L394+60
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	goToDungeonTwo
	b	.L343
.L392:
	ldr	r3, .L394+56
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r2, .L394+48
	ldr	r3, .L394+64
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	goToDungeonOne
	b	.L343
.L395:
	.align	2
.L394:
	.word	updateMap
	.word	oldButtons
	.word	waitForVBlank
	.word	drawMap
	.word	overworldPlayer
	.word	collision
	.word	buttons
	.word	treeClear
	.word	houseClear
	.word	stageOneClear
	.word	boss1Clear
	.word	boss2Clear
	.word	prevState
	.word	stageTwoClear
	.word	hideSprites
	.word	initDungeonTwo
	.word	initDungeonOne
	.size	map, .-map
	.align	2
	.global	house
	.syntax unified
	.arm
	.fpu softvfp
	.type	house, %function
house:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L401
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L401+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	mov	r2, #1
	ldr	r3, .L401+8
	str	r2, [r3]
	b	goToMap
.L402:
	.align	2
.L401:
	.word	oldButtons
	.word	buttons
	.word	houseClear
	.size	house, .-house
	.comm	houseClear,4,4
	.comm	treeClear,4,4
	.comm	stageTwoClear,4,4
	.comm	stageOneClear,4,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	overworldPlayer,48,4
	.comm	cheatTwo,4,4
	.comm	cheatOne,4,4
	.comm	dungeonTwoCountdown,4,4
	.comm	hasShield,4,4
	.comm	dungeonOneCountdown,4,4
	.comm	hasSword,4,4
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

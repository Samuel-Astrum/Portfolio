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
	.file	"gameLogic.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies.part.0, %function
drawEnemies.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #5
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	ip, .L4
	sub	sp, sp, #12
	add	r0, r0, #24
	ldm	r0, {r0, r1}
	mov	r2, r3
	str	ip, [sp]
	ldr	r5, .L4+4
	mov	lr, pc
	bx	r5
	mov	r3, #5
	ldrh	r2, [r4]
	ldr	r1, [r4, #20]
	str	r2, [sp]
	mov	r2, r3
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1007
	.word	drawRectangle
	.size	drawEnemies.part.0, .-drawEnemies.part.0
	.align	2
	.global	playerDamageState
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerDamageState, %function
playerDamageState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #31
	mov	r3, #5
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	ldr	r0, .L8
	mov	r2, r3
	ldmib	r0, {r0, r1}
	ldr	r4, .L8+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.word	drawRectangle
	.size	playerDamageState, .-playerDamageState
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
	push	{r4, r5, lr}
	ldr	r0, .L12
	sub	sp, sp, #12
	ldr	r3, .L12+4
	mov	r5, #320
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r4, .L12+8
	mov	r0, r1
	mov	r3, #160
	mov	r2, #10
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r3, #10
	mov	r0, r1
	mov	r2, #240
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #160
	mov	r2, #10
	mov	r1, #0
	mov	r0, #230
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r3, #20
	mov	r0, r1
	mov	r2, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #20
	mov	r1, #25
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #18
	mov	r1, #20
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #15
	mov	r1, #40
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #25
	mov	r1, #60
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #13
	mov	r1, #75
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #18
	mov	r1, #100
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #20
	mov	r1, #130
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r1, #10
	mov	r2, r3
	mov	r0, r1
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #20
	mov	r1, #10
	mov	r0, #25
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #20
	mov	r1, #10
	mov	r0, #45
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #25
	mov	r1, #10
	mov	r0, #70
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #7
	mov	r2, #15
	mov	r1, #10
	mov	r0, #85
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #25
	mov	r1, #10
	mov	r0, #100
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #7
	mov	r2, #5
	mov	r1, #10
	mov	r0, #125
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #35
	mov	r1, #10
	mov	r0, #130
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #15
	mov	r1, #10
	mov	r0, #165
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #6
	mov	r2, #20
	mov	r1, #10
	mov	r0, #180
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r2, #10
	mov	r3, #12
	mov	r1, r2
	mov	r0, #200
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #35
	mov	r1, #10
	mov	r0, #210
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #15
	mov	r1, #10
	mov	r0, #245
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #30
	mov	r1, #0
	mov	r0, #210
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #20
	mov	r1, #25
	mov	r0, #220
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #18
	mov	r1, #20
	mov	r0, #222
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #15
	mov	r1, #40
	mov	r0, #225
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #25
	mov	r1, #60
	mov	r0, #215
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #13
	mov	r1, #75
	mov	r0, #227
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #18
	mov	r1, #100
	mov	r0, #222
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #20
	mov	r1, #130
	mov	r0, #220
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	1007
	.word	fillScreen
	.word	drawRectangle
	.size	drawBG, .-drawBG
	.align	2
	.global	drawCastle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCastle, %function
drawCastle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r5, .L16
	sub	sp, sp, #12
	ldr	r4, .L16+4
	mov	r3, #50
	mov	r2, #5
	mov	r1, #100
	mov	r0, #90
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #60
	mov	r1, #100
	mov	r0, #90
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #50
	mov	r2, #5
	mov	r1, #100
	mov	r0, #150
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r1, #95
	mov	r2, r3
	mov	r0, #85
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r1, #95
	mov	r2, r3
	mov	r0, #150
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #105
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #111
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #117
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #123
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #129
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #135
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #141
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #147
	mov	r0, #88
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #105
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #111
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #117
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #123
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #129
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #135
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #141
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #2
	mov	r1, #147
	mov	r0, #155
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	15855
	.word	drawRectangle
	.size	drawCastle, .-drawCastle
	.align	2
	.global	drawChest
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChest, %function
drawChest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #10
	push	{r4, lr}
	ldr	r1, .L20
	sub	sp, sp, #8
	str	r1, [sp]
	mov	r2, r3
	mov	r1, #125
	mov	r0, #200
	ldr	r4, .L20+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	5460
	.word	drawRectangle
	.size	drawChest, .-drawChest
	.align	2
	.global	drawCrown
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCrown, %function
drawCrown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L24
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #20
	mov	r2, #45
	mov	r1, #125
	mov	r0, #100
	ldr	r4, .L24+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	1023
	.word	drawRectangle
	.size	drawCrown, .-drawCrown
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #4
	mov	r0, #120
	mov	r1, #80
	mov	ip, #1
	ldr	r3, .L28
	str	lr, [r3, #36]
	strh	r2, [r3]	@ movhi
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	ip, [r3, #40]
	str	r0, [r3, #4]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, .L43
	mov	r10, #0
	mov	r8, r9
	mov	r7, #31
	ldr	r4, .L43+4
	ldr	r6, .L43+8
	ldr	r5, .L43+12
.L41:
	mov	lr, pc
	bx	r4
	mov	r2, #1
	smull	r1, r3, r6, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl r2
	sub	r0, r0, r3
	add	r0, r0, r2
	str	r2, [r8, #4]
	strh	r7, [r8]	@ movhi
	str	r0, [r8, #32]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r0, r3, lsl #1
	moveq	r2, #1
	movne	r2, #0
	sub	r3, r10, #1
	str	r2, [r8, #8]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L31
.L33:
	.word	.L37
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L32
.L32:
	mov	r2, #235
	mov	r3, #110
	mov	r1, #5
	str	r2, [r9, #196]
	str	r1, [r9, #192]
	str	r2, [r9, #204]
	str	r3, [r9, #200]
	str	r3, [r9, #208]
.L30:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L34:
	mov	r1, #4
	mov	r2, #235
	mov	r3, #60
	str	r1, [r9, #156]
	str	r2, [r9, #160]
	str	r3, [r9, #164]
.L40:
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	str	r2, [r8, #24]
	str	r3, [r8, #28]
.L38:
	add	r10, r10, #1
	add	r8, r8, #36
	b	.L41
.L35:
	mov	r1, #3
	mov	r2, #150
	mov	r3, #0
	str	r1, [r9, #120]
	str	r2, [r9, #124]
	str	r3, [r9, #128]
	b	.L40
.L36:
	mov	r1, #2
	mov	r2, #80
	mov	r3, #0
	str	r1, [r9, #84]
	str	r2, [r9, #88]
	str	r3, [r9, #92]
	b	.L40
.L37:
	mov	r1, #1
	mov	r2, #0
	mov	r3, #60
	str	r1, [r9, #48]
	str	r2, [r9, #52]
	str	r3, [r9, #56]
	b	.L40
.L31:
	mov	r3, #0
	mov	r2, #110
	str	r3, [r9, #12]
	str	r2, [r9, #20]
	str	r3, [r9, #16]
	add	r2, r8, #16
	ldm	r2, {r2, r3}
	cmp	r10, #5
	str	r2, [r8, #24]
	str	r3, [r8, #28]
	bne	.L38
	b	.L30
.L44:
	.align	2
.L43:
	.word	enemies
	.word	rand
	.word	1431655766
	.word	1717986919
	.size	initEnemy, .-initEnemy
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	mov	r4, #4
	mov	lr, #1
	mov	r0, #120
	mov	r1, #80
	mov	ip, #3
	ldr	r2, .L47
	str	r3, [r2]
	ldr	r2, .L47+4
	str	r3, [r2]
	ldr	r2, .L47+8
	str	r3, [r2]
	ldr	r2, .L47+12
	str	r3, [r2]
	ldr	r2, .L47+16
	str	r3, [r2]
	ldr	r2, .L47+20
	str	r3, [r2]
	ldr	r2, .L47+24
	str	r3, [r2]
	ldr	r2, .L47+28
	str	r3, [r2]
	ldr	r2, .L47+32
	str	r3, [r2]
	ldr	r2, .L47+36
	strh	r3, [r2]	@ movhi
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	ldr	r3, .L47+40
	str	r4, [r2, #36]
	str	lr, [r2, #40]
	pop	{r4, lr}
	str	r0, [r2, #4]
	str	r0, [r2, #20]
	str	r1, [r2, #8]
	str	r1, [r2, #24]
	str	ip, [r3]
	b	initEnemy
.L48:
	.align	2
.L47:
	.word	stunCount
	.word	score
	.word	wipe
	.word	phaseTwo
	.word	killWipe
	.word	frameCount
	.word	keyActive
	.word	clearKey
	.word	drawKey
	.word	player
	.word	wallHealth
	.size	initGame, .-initGame
	.align	2
	.global	drawScenery
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScenery, %function
drawScenery:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #0
	mov	r5, #320
	sub	sp, sp, #12
	ldr	r4, .L51
	mov	r0, r1
	mov	r3, #20
	mov	r2, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #20
	mov	r1, #25
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #18
	mov	r1, #20
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #15
	mov	r1, #40
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #25
	mov	r1, #60
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #13
	mov	r1, #75
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #18
	mov	r1, #100
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #20
	mov	r1, #130
	mov	r0, #0
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r1, #10
	mov	r2, r3
	mov	r0, r1
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #20
	mov	r1, #10
	mov	r0, #25
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #20
	mov	r1, #10
	mov	r0, #45
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #25
	mov	r1, #10
	mov	r0, #70
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #7
	mov	r2, #15
	mov	r1, #10
	mov	r0, #85
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #25
	mov	r1, #10
	mov	r0, #100
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #7
	mov	r2, #5
	mov	r1, #10
	mov	r0, #125
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #35
	mov	r1, #10
	mov	r0, #130
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #15
	mov	r1, #10
	mov	r0, #165
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #6
	mov	r2, #20
	mov	r1, #10
	mov	r0, #180
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r2, #10
	mov	r3, #12
	mov	r1, r2
	mov	r0, #200
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #35
	mov	r1, #10
	mov	r0, #210
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #15
	mov	r1, #10
	mov	r0, #245
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #30
	mov	r1, #0
	mov	r0, #210
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #20
	mov	r1, #25
	mov	r0, #220
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #18
	mov	r1, #20
	mov	r0, #222
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #15
	mov	r1, #40
	mov	r0, #225
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #15
	mov	r2, #25
	mov	r1, #60
	mov	r0, #215
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #13
	mov	r1, #75
	mov	r0, #227
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #18
	mov	r1, #100
	mov	r0, #222
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #25
	mov	r2, #20
	mov	r1, #130
	mov	r0, #220
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	drawRectangle
	.size	drawScenery, .-drawScenery
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
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L91
	ldrh	r3, [r6]
	ldr	r4, .L91+4
	tst	r3, #32
	ldr	r0, [r4, #4]
	sub	sp, sp, #20
	bne	.L54
	cmp	r0, #16
	ble	.L54
	ldr	r2, [r4, #40]
	tst	r3, #64
	rsb	r2, r2, #0
	str	r2, [r4, #12]
	ldr	r1, [r4, #8]
	beq	.L86
.L57:
	tst	r3, #128
	beq	.L87
.L59:
	mov	r3, #0
	str	r3, [r4, #16]
.L58:
	ldr	r3, .L91+8
	ldr	r3, [r3]
	cmp	r3, #2
	moveq	r5, #20
	moveq	lr, #45
	moveq	ip, #125
	moveq	r2, #100
	movne	r5, #65
	movne	lr, #75
	movne	ip, #95
	movne	r2, #85
	ldr	r3, [r4, #36]
	stm	sp, {r2, ip, lr}
	str	r5, [sp, #12]
	mov	r2, r3
	ldr	r5, .L91+12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r4, #12]
	strne	r3, [r4, #16]
	mov	r3, #20
	mov	ip, #115
	mov	r2, #190
	addne	r0, r4, #20
	ldmne	r0, {r0, r1}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [r4, #36]
	stm	sp, {r2, ip}
	ldmibeq	r4, {r0, r1}
	mov	r2, r3
	stmibne	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L64
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L88
.L64:
	mov	r2, #15
	mov	r0, #120
	mov	r1, #195
	ldr	r3, [r4, #36]
	stmib	sp, {r0, r2}
	str	r2, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldmib	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	ldr	r6, .L91+16
	addne	r0, r4, #20
	ldmne	r0, {r0, r1}
	strne	r3, [r4, #12]
	strne	r3, [r4, #16]
	ldr	r3, [r6]
	stmibne	r4, {r0, r1}
	ldmibeq	r4, {r0, r1}
	cmp	r3, #0
	bne	.L89
.L67:
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #12]
	add	r2, r2, r1
	add	r3, r3, r0
	str	r0, [r4, #20]
	str	r1, [r4, #24]
	str	r2, [r4, #8]
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L54:
	tst	r3, #16
	beq	.L90
.L56:
	mov	r2, #0
	str	r2, [r4, #12]
.L55:
	tst	r3, #64
	ldr	r1, [r4, #8]
	bne	.L57
.L86:
	cmp	r1, #16
	ble	.L57
	ldr	r3, [r4, #40]
	rsb	r3, r3, #0
	str	r3, [r4, #16]
	b	.L58
.L87:
	cmp	r1, #154
	bgt	.L59
	ldr	r3, [r4, #40]
	str	r3, [r4, #16]
	b	.L58
.L90:
	cmp	r0, #219
	bgt	.L56
	ldr	r2, [r4, #40]
	str	r2, [r4, #12]
	b	.L55
.L88:
	ldr	r3, .L91+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L64
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mvnne	r2, #64512
	ldrne	r3, [r4, #40]
	addne	r3, r3, #1
	strne	r3, [r4, #40]
	strhne	r2, [r4]	@ movhi
	b	.L64
.L89:
	mov	ip, #5
	mov	lr, #115
	mov	r7, #55
	ldr	r3, [r4, #36]
	add	r3, r3, #10
	mov	r2, r3
	sub	r1, r1, #5
	stmib	sp, {r7, ip}
	str	ip, [sp, #12]
	str	lr, [sp]
	sub	r0, r0, #5
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #1
	movne	r2, #0
	ldrne	r1, .L91+24
	strne	r3, [r4, #28]
	strne	r3, [r1]
	strne	r2, [r6]
	ldmib	r4, {r0, r1}
	b	.L67
.L92:
	.align	2
.L91:
	.word	buttons
	.word	player
	.word	phaseTwo
	.word	collision
	.word	keyActive
	.word	oldButtons
	.word	clearKey
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	cmp	r3, #1
	bxne	lr
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L123
	ldr	r3, [r6]
	mov	r4, r0
	cmp	r3, #0
	add	r0, r0, #16
	ldm	r0, {r0, r1}
	sub	sp, sp, #20
	bgt	.L118
	ldr	r5, .L123+4
.L95:
	mov	r3, #5
	ldr	ip, .L123+8
	ldr	r2, [ip, #36]
	ldmib	ip, {ip, lr}
	add	r2, r2, #20
	sub	lr, lr, #10
	sub	ip, ip, #10
	str	r2, [sp, #12]
	str	r2, [sp, #8]
	stm	sp, {ip, lr}
	mov	r2, r3
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L98
	ldr	r3, .L123+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L98
	ldr	r3, [r4, #8]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L123+16
	strne	r2, [r3]
	mov	r3, #67108864
	mov	r2, #25088
	mov	r1, #1
	mov	r0, #0
	strh	r2, [r3, #104]	@ movhi
	ldr	r2, .L123+20
	strh	r2, [r3, #108]	@ movhi
	ldr	r2, .L123+24
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L123+28
	str	r0, [r4, #4]
	str	r1, [r3]
.L98:
	mov	ip, #20
	mov	r0, #45
	mov	r1, #125
	mov	r2, #100
	mov	r3, #5
	str	r0, [sp, #8]
	str	r2, [sp]
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	add	r0, r4, #16
	mov	r2, r3
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	mvnne	r2, #0
	ldrne	r3, .L123+24
	ldr	r1, [r4, #12]
	strne	r2, [r3]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L93
.L102:
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L101
.L118:
	mov	r5, #65
	mov	lr, #75
	mov	ip, #95
	mov	r2, #85
	mov	r3, #5
	stm	sp, {r2, ip, lr}
	str	r5, [sp, #12]
	mov	r2, r3
	ldr	r5, .L123+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L96
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	b	.L95
.L101:
	ldr	r0, [r4, #32]
	sub	r1, r0, r0, lsl #2
	add	r2, r2, r0
	add	r3, r1, r3
	str	r3, [r4, #16]
	str	r2, [r4, #20]
.L93:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L96:
	ldrh	r3, [r4]
	add	r0, r4, #16
	cmp	r3, #31
	ldm	r0, {r0, r1}
	bne	.L95
	ldr	r3, [r6]
	cmp	r3, #1
	ldreq	r2, .L123+32
	mov	r7, #25088
	streq	r3, [r2]
	mov	r2, #67108864
	mov	lr, #0
	mov	ip, #1
	strh	r7, [r2, #104]	@ movhi
	ldr	r7, .L123+36
	strh	r7, [r2, #108]	@ movhi
	ldr	r2, .L123+40
	sub	r3, r3, #1
	str	r3, [r6]
	str	lr, [r4, #4]
	str	ip, [r2]
	b	.L95
.L103:
	ldr	r1, [r4, #32]
	sub	r3, r3, r1, lsl #1
	add	r2, r2, r1
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	b	.L93
.L104:
	ldr	r1, [r4, #32]
	add	r0, r1, r1, lsl #1
	sub	r3, r3, r1
	add	r2, r0, r2
	str	r2, [r4, #20]
	str	r3, [r4, #16]
	b	.L93
.L105:
	ldr	r1, [r4, #32]
	add	r0, r1, r1, lsl #1
	add	r3, r3, r1
	add	r2, r0, r2
	str	r2, [r4, #20]
	str	r3, [r4, #16]
	b	.L93
.L106:
	ldr	r1, [r4, #32]
	add	r3, r3, r1, lsl #1
	add	r2, r2, r1
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	b	.L93
.L107:
	ldr	r1, [r4, #32]
	add	r0, r1, r1, lsl #1
	add	r2, r2, r1
	add	r3, r0, r3
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	b	.L93
.L124:
	.align	2
.L123:
	.word	wallHealth
	.word	collision
	.word	player
	.word	buttons
	.word	drawKey
	.word	-32057
	.word	score
	.word	killWipe
	.word	phaseTwo
	.word	-31613
	.word	wipe
	.size	updateEnemies, .-updateEnemies
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
	ldr	r4, .L139
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	bl	updatePlayer
	ldr	r3, [r4]
	cmp	r3, #10
	ble	.L126
	mov	r3, #0
	ldr	r0, .L139+4
	str	r3, [r4]
	bl	updateEnemies
	ldr	r0, .L139+8
	bl	updateEnemies
	ldr	r0, .L139+12
	bl	updateEnemies
	ldr	r0, .L139+16
	bl	updateEnemies
	ldr	r0, .L139+20
	bl	updateEnemies
	ldr	r0, .L139+24
	bl	updateEnemies
.L126:
	ldr	r1, .L139+4
	mov	r0, #0
	mov	lr, r1
	mov	r3, r1
	add	ip, r1, #216
.L128:
	ldr	r2, [r3, #4]
	add	r3, r3, #36
	cmp	r2, #0
	addne	r0, r0, #1
	cmp	ip, r3
	bne	.L128
	cmp	r0, #5
	bgt	.L125
	mov	r3, #0
.L131:
	ldr	r2, [r1, #4]
	cmp	r2, #0
	beq	.L138
	add	r3, r3, #1
	cmp	r3, #6
	add	r1, r1, #36
	bne	.L131
.L125:
	pop	{r4, lr}
	bx	lr
.L138:
	mov	r2, #1
	add	r3, r3, r3, lsl #3
	add	r3, lr, r3, lsl #2
	str	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	frameCount
	.word	enemies
	.word	enemies+36
	.word	enemies+72
	.word	enemies+108
	.word	enemies+144
	.word	enemies+180
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
	push	{r4, r5, lr}
	ldr	r4, .L143
	ldr	ip, .L143+4
	ldr	r3, [r4, #36]
	sub	sp, sp, #12
	mov	r2, r3
	ldr	r1, [r4, #24]
	ldr	r0, [r4, #20]
	str	ip, [sp]
	ldr	r5, .L143+8
	mov	lr, pc
	bx	r5
	ldrh	r1, [r4]
	ldr	r3, [r4, #36]
	str	r1, [sp]
	mov	r2, r3
	ldmib	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L144:
	.align	2
.L143:
	.word	player
	.word	1007
	.word	drawRectangle
	.size	drawPlayer, .-drawPlayer
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L167
	sub	sp, sp, #8
	bl	drawPlayer
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L146
	ldr	r4, .L167+4
	ldr	r5, .L167+8
	ldr	r7, .L167+12
	add	r6, r4, #216
.L147:
	mov	r3, #5
	str	r7, [sp]
	add	r0, r4, #24
	mov	r2, r3
	ldm	r0, {r0, r1}
	add	r4, r4, #36
	mov	lr, pc
	bx	r5
	cmp	r4, r6
	bne	.L147
.L160:
	bl	initEnemy
	mov	r3, #0
	str	r3, [r8]
.L148:
	bl	drawScenery
	mov	r3, #10
	ldr	r1, .L167+16
	ldr	r4, .L167+20
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #200
	mov	r1, #125
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L162
	ldr	r6, .L167+24
	ldr	r4, [r6]
	cmp	r4, #1
	beq	.L163
.L154:
	ldr	r4, .L167+28
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L164
.L145:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L146:
	ldr	r8, .L167+32
	ldr	r3, [r8]
	ldr	r4, .L167+4
	cmp	r3, #1
	addne	r5, r4, #216
	bne	.L152
	ldr	r5, .L167+8
	ldr	r7, .L167+12
	add	r6, r4, #216
.L150:
	mov	r3, #5
	str	r7, [sp]
	add	r0, r4, #24
	mov	r2, r3
	ldm	r0, {r0, r1}
	add	r4, r4, #36
	mov	lr, pc
	bx	r5
	cmp	r4, r6
	bne	.L150
	b	.L160
.L166:
	mov	r0, r4
	add	r4, r4, #36
	bl	drawEnemies.part.0
	cmp	r4, r5
	beq	.L165
.L152:
	ldr	r3, [r4, #4]
	cmp	r3, #1
	beq	.L166
	add	r4, r4, #36
	cmp	r4, r5
	bne	.L152
.L165:
	ldr	r5, .L167+8
	b	.L148
.L162:
	ldr	r2, .L167+12
	mov	r3, #65
	mov	r1, #95
	mov	r0, #85
	str	r2, [sp]
	mov	r2, #75
	mov	lr, pc
	bx	r5
	ldr	r2, .L167+36
	mov	r3, #20
	str	r2, [sp]
	mov	r1, #125
	mov	r2, #45
	mov	r0, #100
	mov	lr, pc
	bx	r5
	mov	r3, #2
	ldr	r6, .L167+24
	str	r3, [r4]
	ldr	r4, [r6]
	cmp	r4, #1
	bne	.L154
.L163:
	mov	r3, #5
	ldr	r1, .L167+36
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #55
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r3, .L167+40
	str	r4, [r3]
	ldr	r4, .L167+28
	ldr	r3, [r4]
	cmp	r3, #1
	str	r2, [r6]
	bne	.L145
.L164:
	mov	r3, #5
	ldr	r1, .L167+12
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #115
	mov	r1, #55
	mov	lr, pc
	bx	r5
	mov	r3, #0
	str	r3, [r4]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L168:
	.align	2
.L167:
	.word	wipe
	.word	enemies
	.word	drawRectangle
	.word	1007
	.word	5460
	.word	phaseTwo
	.word	drawKey
	.word	clearKey
	.word	killWipe
	.word	1023
	.word	keyActive
	.size	drawGame, .-drawGame
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
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	cmp	r3, #1
	bxne	lr
	b	drawEnemies.part.0
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	wipeEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	wipeEnemies, %function
wipeEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #5
	push	{r4, lr}
	ldr	ip, .L173
	sub	sp, sp, #8
	add	r0, r0, #24
	ldm	r0, {r0, r1}
	mov	r2, r3
	str	ip, [sp]
	ldr	r4, .L173+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L174:
	.align	2
.L173:
	.word	1007
	.word	drawRectangle
	.size	wipeEnemies, .-wipeEnemies
	.align	2
	.global	newEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	newEnemy, %function
newEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L181
	mov	r2, r0
	ldr	r1, [r2, #4]
	cmp	r1, #0
	mov	r3, #0
	beq	.L180
.L176:
	add	r3, r3, #1
	cmp	r3, #6
	add	r2, r2, #36
	bxeq	lr
	ldr	r1, [r2, #4]
	cmp	r1, #0
	bne	.L176
.L180:
	mov	r2, #1
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	str	r2, [r3, #4]
	bx	lr
.L182:
	.align	2
.L181:
	.word	enemies
	.size	newEnemy, .-newEnemy
	.comm	clearKey,4,4
	.comm	keyActive,4,4
	.comm	drawKey,4,4
	.comm	frameCount,4,4
	.comm	killWipe,4,4
	.comm	wipe,4,4
	.comm	stunCount,4,4
	.comm	score,4,4
	.comm	enemies,216,4
	.comm	player,44,4
	.comm	NOTES,2,2
	.comm	phaseTwo,4,4
	.comm	heartHealth,4,4
	.comm	wallHealth,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

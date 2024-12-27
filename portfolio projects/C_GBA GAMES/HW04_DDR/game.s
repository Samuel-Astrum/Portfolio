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
	.global	initArrowHoles
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initArrowHoles, %function
initArrowHoles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r0, #9
	mov	r7, #6
	mov	r5, #7
	mov	lr, #8
	mov	r2, #16
	mov	r1, #20
	mov	r8, #80
	mov	r6, #100
	mov	r4, #120
	mov	ip, #140
	ldr	r3, .L4
	strb	r7, [r3, #48]
	strb	r5, [r3, #100]
	strb	lr, [r3, #152]
	strb	r0, [r3, #204]
	str	r8, [r3]
	str	r6, [r3, #52]
	str	r4, [r3, #104]
	str	ip, [r3, #156]
	str	r1, [r3, #4]
	str	r1, [r3, #56]
	str	r1, [r3, #108]
	str	r1, [r3, #160]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r2, [r3, #120]
	str	r2, [r3, #124]
	str	r2, [r3, #172]
	str	r2, [r3, #176]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	holes
	.size	initArrowHoles, .-initArrowHoles
	.align	2
	.global	initShot
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShot, %function
initShot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #10
	push	{r4, lr}
	mov	r2, #16
	mov	lr, #1
	mov	r0, #0
	ldr	r3, .L8
	ldr	r1, .L8+4
	strb	ip, [r3, #48]
	ldr	r4, [r1]
	ldr	r1, [r1, #4]
	str	r4, [r3]
	stmib	r3, {r1, lr}
	str	r0, [r3, #52]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	shot
	.word	player
	.size	initShot, .-initShot
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
	mov	r2, #0
	push	{r4, r5, lr}
	mov	ip, #19
	mov	r5, #32
	mov	r4, #56
	mov	lr, #1
	mov	r0, #100
	mov	r1, #3
	ldr	r3, .L12
	strb	r2, [r3, #48]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #28]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #52]
	str	r2, [r3, #56]
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	push	{r4, r5, lr}
	mov	lr, #1
	mov	r5, #48
	mov	r4, #56
	mov	r2, #0
	mov	ip, #182
	mov	r0, #100
	mov	r1, #3
	ldr	r3, .L16
	strb	lr, [r3, #48]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #52]
	str	r2, [r3, #28]
	str	r2, [r3, #56]
	pop	{r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	enemy
	.size	initEnemy, .-initEnemy
	.align	2
	.global	initArrows
	.syntax unified
	.arm
	.fpu softvfp
	.type	initArrows, %function
initArrows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r0, #16
	mov	r1, r2
	mvn	r5, #0
	mov	r9, #4
	mov	r8, #120
	mov	r4, #144
	mov	lr, #3
	mov	r7, #100
	mov	r6, #2
	ldr	r3, .L34
	b	.L30
.L33:
	sub	ip, r2, #3
	cmp	ip, #2
	strls	r6, [r3, #52]
	bls	.L20
	sub	ip, r2, #6
	cmp	ip, #2
	movls	ip, #1
	strls	ip, [r3, #52]
	bls	.L20
	str	lr, [r3, #52]
	str	r1, [r3, #56]
	str	r1, [r3, #44]
.L23:
	mov	r10, #5
	mov	ip, #140
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #4]
	strb	r10, [r3, #48]
	str	ip, [r3]
.L25:
	cmp	r2, #11
	beq	.L18
.L29:
	add	r2, r2, #1
	add	r3, r3, #60
.L30:
	cmp	r2, #2
	strls	r1, [r3, #52]
	bhi	.L33
.L20:
	ldr	ip, [r3, #52]
	str	r1, [r3, #56]
	str	r1, [r3, #44]
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L29
.L31:
	.word	.L24
	.word	.L27
	.word	.L26
	.word	.L23
.L26:
	cmp	r2, #11
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r5, [r3, #12]
	strb	lr, [r3, #48]
	str	r7, [r3]
	str	r4, [r3, #4]
	bne	.L29
.L18:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L27:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r5, [r3, #12]
	strb	r9, [r3, #48]
	str	r8, [r3]
	str	r4, [r3, #4]
	b	.L25
.L24:
	mov	ip, #80
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r5, [r3, #12]
	strb	r6, [r3, #48]
	str	r4, [r3, #4]
	str	ip, [r3]
	b	.L25
.L35:
	.align	2
.L34:
	.word	arrows
	.size	initArrows, .-initArrows
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r3, #19
	mov	r0, #56
	mov	r6, #1
	mov	r1, #100
	mov	r2, #3
	mov	lr, #48
	mov	ip, #182
	mov	r7, #32
	ldr	r5, .L38
	str	r4, [r5]
	ldr	r5, .L38+4
	str	r4, [r5]
	ldr	r5, .L38+8
	str	r4, [r5]
	ldr	r5, .L38+12
	str	r4, [r5]
	ldr	r5, .L38+16
	str	r4, [r5]
	ldr	r5, .L38+20
	str	r4, [r5]
	ldr	r5, .L38+24
	str	r3, [r5]
	ldr	r3, .L38+28
	str	r0, [r5, #20]
	str	r0, [r3, #20]
	str	r4, [r3, #28]
	str	r4, [r3, #56]
	str	lr, [r3, #16]
	str	ip, [r3]
	strb	r6, [r3, #48]
	str	r1, [r5, #4]
	str	r1, [r3, #4]
	str	r2, [r3, #52]
	str	r2, [r5, #52]
	strb	r4, [r5, #48]
	str	r4, [r5, #56]
	str	r7, [r5, #16]
	str	r6, [r5, #28]
	bl	initArrows
	mov	r1, #10
	mov	r2, #16
	ldr	r3, .L38+32
	strb	r1, [r3, #48]
	ldr	ip, [r5]
	ldr	r0, [r5, #4]
	str	r4, [r3, #52]
	str	r6, [r3, #8]
	pop	{r4, r5, r6, r7, r8, lr}
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	b	initArrowHoles
.L39:
	.align	2
.L38:
	.word	score
	.word	shotCount
	.word	loseCount
	.word	winCount
	.word	activeCount
	.word	frameCount
	.word	player
	.word	enemy
	.word	shot
	.size	initGame, .-initGame
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
	@ link register save eliminated.
	ldr	r2, .L49
	ldr	r3, [r2]
	cmp	r3, #5
	beq	.L48
	ldr	r3, .L49+4
	ldr	r1, [r3, #56]
	cmp	r1, #0
	bxeq	lr
.L42:
	ldr	r1, .L49+8
	ldrh	r1, [r1]
	tst	r1, #1
	bxeq	lr
	ldr	r1, .L49+12
	ldrh	r1, [r1]
	ands	r1, r1, #1
	moveq	ip, #1
	ldreq	r0, .L49+16
	streq	r1, [r2]
	streq	r1, [r3, #56]
	streq	ip, [r0, #52]
	bx	lr
.L48:
	mov	r1, #1
	ldr	r3, .L49+4
	str	r1, [r3, #56]
	b	.L42
.L50:
	.align	2
.L49:
	.word	shotCount
	.word	player
	.word	oldButtons
	.word	buttons
	.word	shot
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L53
	ldr	r2, [r3, #52]
	cmp	r2, #1
	streq	r2, [r3, #56]
	bx	lr
.L54:
	.align	2
.L53:
	.word	enemy
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateArrows
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateArrows, %function
updateArrows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L78
	ldr	r7, .L78+4
	ldr	r8, .L78+8
	ldr	r6, .L78+12
	ldr	r9, .L78+16
	ldr	r10, .L78+20
	ldr	fp, .L78+24
	sub	sp, sp, #20
	add	r5, r4, #720
	b	.L73
.L57:
	add	r4, r4, #60
	cmp	r4, r5
	beq	.L77
.L73:
	ldr	r3, [r4, #56]
	cmp	r3, #1
	bne	.L57
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #52]
	add	r1, r2, r1
	str	r1, [r4, #4]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L58
.L60:
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L59
.L59:
	mov	ip, #2
	ldr	r3, [r6, #172]
	ldr	r0, [r6, #160]
	sub	r3, r3, #5
	stmib	sp, {r0, r3, ip}
	ldr	r2, [r6, #156]
	str	r2, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L70
.L76:
	ldr	r1, [r4, #4]
.L58:
	cmp	r1, #2
	bgt	.L57
	mov	r0, #0
	mov	r1, #1
	ldr	r2, [r7]
	ldr	r3, [r8, #52]
	str	r0, [r4, #56]
	str	r1, [r4, #44]
	add	r4, r4, #60
	sub	r2, r2, #1
	sub	r3, r3, #1
	cmp	r4, r5
	str	r2, [r7]
	str	r3, [r8, #52]
	bne	.L73
.L77:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L61:
	mov	ip, #2
	ldr	r3, [r6, #68]
	ldr	r0, [r6, #56]
	sub	r3, r3, #5
	stmib	sp, {r0, r3, ip}
	ldr	r2, [r6, #52]
	str	r2, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L76
	ldrh	r3, [r10]
	ands	r3, r3, #64
	beq	.L71
	b	.L76
.L62:
	mov	ip, #2
	ldr	r3, [r6, #120]
	ldr	r0, [r6, #108]
	sub	r3, r3, #5
	stmib	sp, {r0, r3, ip}
	ldr	r2, [r6, #104]
	str	r2, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L76
	ldrh	r3, [r10]
	ands	r3, r3, #16
	beq	.L71
	b	.L76
.L63:
	mov	ip, #2
	ldr	r3, [r6, #16]
	ldr	r0, [r6, #4]
	sub	r3, r3, #5
	stmib	sp, {r0, r3, ip}
	ldr	r2, [r6]
	str	r2, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L76
	ldrh	r3, [r10]
	ands	r3, r3, #32
	bne	.L76
.L71:
	mov	r0, #1
	mov	r2, #67108864
	mov	r1, #25088
	ldr	ip, .L78+28
	str	r3, [r4, #56]
	ldr	r3, [ip]
	add	r3, r3, r0
	str	r3, [ip]
	ldr	r3, [fp]
	add	r3, r3, r0
	str	r3, [fp]
	ldr	r3, [r7]
	sub	r3, r3, #1
	str	r3, [r7]
	ldr	r3, .L78+32
	str	r0, [r4, #44]
	strh	r1, [r2, #104]	@ movhi
	strh	r3, [r2, #108]	@ movhi
	b	.L76
.L70:
	ldrh	r3, [r10]
	ands	r3, r3, #128
	beq	.L71
	b	.L76
.L79:
	.align	2
.L78:
	.word	arrows
	.word	activeCount
	.word	player
	.word	holes
	.word	collision
	.word	buttons
	.word	score
	.word	shotCount
	.word	-31018
	.size	updateArrows, .-updateArrows
	.align	2
	.global	updateShot
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShot, %function
updateShot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #16
	push	{r4, r5, r6, lr}
	ldr	r4, .L87
	ldr	r5, .L87+4
	add	ip, r4, #16
	ldr	r1, [r4, #4]
	ldr	r2, [r4]
	ldr	r0, [r5]
	ldm	ip, {ip, lr}
	sub	sp, sp, #16
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	add	r0, r0, #1
	mov	r2, r3
	ldr	r1, [r5, #4]
	ldr	r6, .L87+8
	str	r0, [r5]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L86
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	mov	r3, #5
	mov	r0, #1
	mov	ip, #0
	ldr	r2, .L87+12
	ldr	r2, [r2]
	str	r3, [sp]
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	str	r2, [r5]
	str	r3, [r4, #52]
	mov	r2, #3
	mov	r3, #4
	mov	r1, #2
	ldr	r4, .L87+16
	str	r0, [r5, #44]
	str	ip, [r5, #52]
	mov	lr, pc
	bx	r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	enemy
	.word	shot
	.word	collision
	.word	player
	.word	playDrumSound
	.size	updateShot, .-updateShot
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L115
	mov	r0, #0
	mov	r3, r5
	add	r1, r5, #720
.L91:
	ldr	r2, [r3, #44]
	cmp	r2, #0
	strne	r0, [r3, #44]
	add	r3, r3, #60
	cmp	r3, r1
	bne	.L91
	bl	updatePlayer
	ldr	r3, .L115+4
	ldr	r2, [r3, #52]
	cmp	r2, #1
	streq	r2, [r3, #56]
	ldr	r2, .L115+8
	ldr	r3, [r2]
	cmp	r3, #4
	ble	.L93
	ldr	r3, .L115+12
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L113
.L93:
	ldr	r3, .L115+16
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L94
.L95:
	ldr	r6, .L115+20
	ldr	r3, [r6]
	cmp	r3, #2
	ldr	r4, .L115+24
	bgt	.L97
	ldr	r3, [r4]
	cmp	r3, #90
	bgt	.L114
.L97:
	bl	updateArrows
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	mov	r0, #1
	ldr	r1, .L115+16
	str	r3, [r2]
	str	r0, [r1, #52]
	str	r3, [r1, #44]
.L94:
	bl	updateShot
	b	.L95
.L114:
	ldr	r3, .L115+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+32
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #1
	sub	r3, r0, r3, lsl #2
	rsb	r2, r3, r3, lsl #4
	add	r2, r5, r2, lsl #2
	ldr	r1, [r2, #56]
	cmp	r1, #0
	lsl	r0, r3, #4
	bne	.L97
	mov	lr, #1
	ldr	ip, [r6]
	str	r1, [r4]
	str	r1, [r2, #44]
	ldr	r1, [r2, #52]
	add	ip, ip, lr
	str	ip, [r6]
	str	lr, [r2, #56]
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L97
.L100:
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L99
.L99:
	mov	r1, #140
.L112:
	mov	r2, #144
	sub	r3, r0, r3
	lsl	r3, r3, #2
	str	r1, [r5, r3]!
	str	r2, [r5, #4]
	b	.L97
.L101:
	mov	r1, #100
	b	.L112
.L102:
	mov	r1, #120
	b	.L112
.L103:
	mov	r1, #80
	b	.L112
.L116:
	.align	2
.L115:
	.word	arrows
	.word	enemy
	.word	shotCount
	.word	buttons
	.word	shot
	.word	activeCount
	.word	frameCount
	.word	rand
	.word	715827883
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
	ldr	r1, .L119
	ldr	r3, [r1]
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r2, r2, lsl #17
	mvn	r3, r3, lsr #18
	mvn	r2, r2, lsr #17
	str	lr, [sp, #-4]!
	ldr	ip, .L119+4
	ldrb	r1, [r1, #48]	@ zero_extendqisi2
	ldr	lr, .L119+8
	add	r0, ip, r1, lsl #3
	lsl	r1, r1, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L120:
	.align	2
.L119:
	.word	player
	.word	shadowOAM
	.word	1544
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L123
	ldr	r3, [r1]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	str	lr, [sp, #-4]!
	ldr	r0, .L123+4
	ldrb	r2, [r1, #48]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldr	ip, .L123+8
	add	r1, r0, r2, lsl #3
	lsl	r2, r2, #3
	strh	lr, [r0, r2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L124:
	.align	2
.L123:
	.word	enemy
	.word	shadowOAM
	.word	1548
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawArrowBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawArrowBlocks, %function
drawArrowBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #1536
	ldr	r3, .L127
	ldr	r5, .L127+4
	ldr	r0, [r3]
	ldr	r2, .L127+8
	ldrb	ip, [r3, #48]	@ zero_extendqisi2
	and	r0, r0, r5
	add	r1, r2, ip, lsl #3
	orr	r0, r0, #16384
	strh	r0, [r1, #2]	@ movhi
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	lsl	ip, ip, #3
	strh	r0, [r2, ip]	@ movhi
	ldr	r0, .L127+12
	ldrb	ip, [r3, #100]	@ zero_extendqisi2
	strh	r0, [r1, #4]	@ movhi
	ldrb	r0, [r3, #56]	@ zero_extendqisi2
	lsl	r1, ip, #3
	strh	r0, [r2, r1]	@ movhi
	ldr	r6, [r3, #52]
	ldr	r4, [r3, #104]
	ldr	r1, [r3, #156]
	and	r6, r6, r5
	and	r4, r4, r5
	and	r1, r1, r5
	ldr	r5, .L127+16
	ldrb	r0, [r3, #152]	@ zero_extendqisi2
	add	ip, r2, ip, lsl #3
	strh	r5, [ip, #4]	@ movhi
	orr	r6, r6, #16384
	ldrb	r5, [r3, #108]	@ zero_extendqisi2
	strh	r6, [ip, #2]	@ movhi
	lsl	ip, r0, #3
	strh	r5, [r2, ip]	@ movhi
	orr	r4, r4, #16384
	ldrb	ip, [r3, #204]	@ zero_extendqisi2
	add	r0, r2, r0, lsl #3
	ldrb	r5, [r3, #160]	@ zero_extendqisi2
	strh	r4, [r0, #2]	@ movhi
	ldr	r4, .L127+20
	add	r3, r2, ip, lsl #3
	orr	r1, r1, #16384
	lsl	ip, ip, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r5, [r2, ip]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L128:
	.align	2
.L127:
	.word	holes
	.word	511
	.word	shadowOAM
	.word	1542
	.word	1538
	.word	1540
	.size	drawArrowBlocks, .-drawArrowBlocks
	.align	2
	.global	drawShot
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShot, %function
drawShot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L139
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L130
	str	lr, [sp, #-4]!
	ldr	r2, [r3]
	ldrb	r1, [r3, #48]	@ zero_extendqisi2
	ldr	r0, .L139+4
	lsl	r2, r2, #23
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldr	ip, .L139+8
	lsr	r2, r2, #23
	add	r3, r0, r1, lsl #3
	orr	r2, r2, #16384
	lsl	r1, r1, #3
	strh	lr, [r0, r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L130:
	ldr	r2, [r3, #44]
	cmp	r2, #0
	movne	r1, #512
	ldrbne	r3, [r3, #48]	@ zero_extendqisi2
	ldrne	r2, .L139+4
	lslne	r3, r3, #3
	strhne	r1, [r2, r3]	@ movhi
	bx	lr
.L140:
	.align	2
.L139:
	.word	shot
	.word	shadowOAM
	.word	1556
	.size	drawShot, .-drawShot
	.align	2
	.global	drawArrows
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawArrows, %function
drawArrows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, #512
	mov	r7, #580
	mov	r6, #576
	ldr	r3, .L155
	ldr	r1, .L155+4
	ldr	ip, .L155+8
	ldr	r5, .L155+12
	ldr	r4, .L155+16
	add	r0, r3, #720
.L149:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L142
	ldr	r8, [r3]
	ldrb	r2, [r3, #48]	@ zero_extendqisi2
	and	r8, r8, ip
	orr	r8, r8, #16384
	add	r10, r1, r2, lsl #3
	ldrb	r9, [r3, #4]	@ zero_extendqisi2
	strh	r8, [r10, #2]	@ movhi
	ldr	r8, [r3, #52]
	lsl	r2, r2, #3
	strh	r9, [r1, r2]	@ movhi
	cmp	r8, #3
	ldrls	pc, [pc, r8, asl #2]
	b	.L143
.L145:
	.word	.L148
	.word	.L147
	.word	.L146
	.word	.L144
.L144:
	add	r2, r1, r2
	strh	r7, [r2, #4]	@ movhi
.L143:
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L149
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L147:
	add	r2, r1, r2
	strh	r6, [r2, #4]	@ movhi
	b	.L143
.L146:
	add	r2, r1, r2
	strh	r5, [r2, #4]	@ movhi
	b	.L143
.L148:
	add	r2, r1, r2
	strh	r4, [r2, #4]	@ movhi
	b	.L143
.L142:
	ldr	r2, [r3, #44]
	cmp	r2, #0
	ldrbne	r2, [r3, #48]	@ zero_extendqisi2
	lslne	r2, r2, #3
	strhne	lr, [r1, r2]	@ movhi
	b	.L143
.L156:
	.align	2
.L155:
	.word	arrows
	.word	shadowOAM
	.word	511
	.word	578
	.word	582
	.size	drawArrows, .-drawArrows
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
	ldr	r3, .L159
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	mvn	r0, r0, lsl #17
	mvn	r0, r0, lsr #17
	push	{r4, lr}
	ldr	ip, .L159+4
	ldrb	r2, [r3, #48]	@ zero_extendqisi2
	ldr	r1, [r3]
	ldr	lr, .L159+8
	ldr	r3, [ip]
	ldr	r4, .L159+12
	and	r1, r1, lr
	and	r3, r3, lr
	lsl	lr, r2, #3
	strh	r0, [r4, lr]	@ movhi
	ldr	lr, .L159+16
	add	r2, r4, r2, lsl #3
	orr	r1, r1, lr
	ldrb	r0, [ip, #48]	@ zero_extendqisi2
	strh	r1, [r2, #2]	@ movhi
	ldr	r1, .L159+20
	ldrb	ip, [ip, #4]	@ zero_extendqisi2
	orr	r3, r3, lr
	strh	r1, [r2, #4]	@ movhi
	add	r2, r4, r0, lsl #3
	add	r1, r1, #4
	lsl	r0, r0, #3
	strh	ip, [r4, r0]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bl	drawArrowBlocks
	bl	drawShot
	bl	drawArrows
	ldr	r3, .L159+24
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L159+28
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L160:
	.align	2
.L159:
	.word	player
	.word	enemy
	.word	511
	.word	shadowOAM
	.word	-16384
	.word	1544
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	winCount,4,4
	.comm	loseCount,4,4
	.comm	activeCount,4,4
	.comm	shadowOAM,1024,4
	.comm	shot,56,4
	.comm	holes,208,4
	.comm	arrows,720,4
	.comm	enemy,60,4
	.comm	player,60,4
	.comm	frameCount,4,4
	.comm	shotCount,4,4
	.comm	score,4,4
	.comm	NOTES,2,2
	.comm	DIRECTION,1,1
	.ident	"GCC: (devkitARM release 53) 9.1.0"

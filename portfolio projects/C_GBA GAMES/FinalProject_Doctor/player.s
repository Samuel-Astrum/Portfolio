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
	.file	"player.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #5
	mov	r10, #8
	mov	r9, #96
	mov	r8, #51
	mov	r7, #19
	mov	r6, #0
	mov	r5, #1
	mov	r4, #2
	mov	ip, #3
	mov	lr, #60
	mov	r0, #11
	mov	r1, #99
	ldr	r3, .L4
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #20]
	str	r7, [r3, #16]
	strb	r6, [r3, #44]
	str	r5, [r3, #8]
	str	r4, [r3, #76]
	str	ip, [r3, #80]
	str	r2, [r3, #48]
	str	r2, [r3, #40]
	ldr	ip, .L4+4
	ldr	r2, .L4+8
	ldr	r3, .L4+12
	str	lr, [ip]
	str	r0, [r2]
	str	r1, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	playerWalk
	.word	realPlayerX
	.word	realPlayerY
	.size	initPlayer, .-initPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"the player light attacks!\000"
	.align	2
.LC1:
	.ascii	"sword slash hits!\000"
	.align	2
.LC2:
	.ascii	"the player heavy attacks!\000"
	.align	2
.LC3:
	.ascii	"heavy attack hits! YEOUCH\000"
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
	ldr	r3, .L92
	ldr	r3, [r3]
	cmp	r3, #5
	sub	sp, sp, #20
	beq	.L84
	cmp	r3, #7
	beq	.L77
	ldr	r4, .L92+4
.L21:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	r3, .L92+8
	beq	.L36
	ldr	r2, [r3]
	add	r2, r2, #1
	cmp	r2, #15
	str	r2, [r3]
	ble	.L37
	ldr	r2, [r4, #36]
	ldr	r1, [r4, #40]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r4, #36]
	movge	r2, #0
	strge	r2, [r4, #36]
.L36:
	mov	r2, #0
	str	r2, [r3]
.L37:
	ldr	r3, [r4, #84]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #84]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L77:
	ldr	r6, .L92+12
	ldrh	r3, [r6]
	tst	r3, #256
	beq	.L85
	mov	r2, #0
	ldr	r4, .L92+4
	tst	r3, #32
	str	r2, [r4, #92]
	bne	.L25
	ldr	r2, [r4]
	cmp	r2, #1
	ble	.L25
	mov	r1, #3
	mov	r3, #1
	ldr	r0, [r4, #8]
	sub	r2, r2, r0
	str	r2, [r4]
	str	r1, [r4, #28]
	str	r3, [r4, #32]
	b	.L26
.L84:
	ldr	r6, .L92+12
	ldrh	r3, [r6]
	tst	r3, #32
	ldr	r4, .L92+4
	bne	.L8
	ldr	r2, [r4]
	cmp	r2, #1
	ble	.L8
	mov	r1, #3
	mov	r3, #1
	ldr	r0, [r4, #8]
	sub	r2, r2, r0
	str	r2, [r4]
	str	r1, [r4, #28]
	str	r3, [r4, #32]
	b	.L9
.L8:
	tst	r3, #16
	beq	.L86
.L10:
	mov	r3, #0
	str	r3, [r4, #32]
.L9:
	ldr	r7, .L92+16
	ldrh	r2, [r7]
	tst	r2, #1
	ldr	r5, [r4, #72]
	beq	.L11
	ldrh	r3, [r6]
	tst	r3, #1
	bne	.L11
	cmp	r5, #0
	beq	.L87
.L11:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	ble	.L14
.L13:
	sub	r3, r3, #1
	str	r3, [r4, #60]
.L14:
	tst	r2, #2
	bne	.L88
.L15:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #56]
	cmp	r5, #0
	ble	.L19
.L17:
	sub	r5, r5, #1
	str	r5, [r4, #72]
.L19:
	cmp	r5, #0
	moveq	r3, #0
	streq	r3, [r4, #52]
	b	.L21
.L88:
	ldrh	r3, [r6]
	tst	r3, #2
	bne	.L15
	cmp	r5, #0
	bne	.L15
	ldr	r0, .L92+20
	ldr	r8, .L92+24
	mov	lr, pc
	bx	r8
	ldr	r3, .L92+28
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L92+32
	ldr	r7, .L92+36
	mov	lr, pc
	bx	r7
	mov	ip, #75
	ldr	r6, .L92+40
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	lr, [r6]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	lr, [sp]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #4]
	ldr	r2, .L92+44
	ldr	lr, .L92+48
	add	r3, r3, #3
	str	ip, [r2]
	add	r0, r3, r0
	mov	r2, #15
	mov	r3, #5
	str	ip, [lr]
	ldr	r9, .L92+52
	add	r1, r1, #23
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L82
.L32:
	mov	r2, #1
	mov	r3, #59
	mov	r5, #180
	str	r2, [r4, #52]
	str	r3, [r4, #56]
	b	.L17
.L86:
	ldr	r2, [r4, #16]
	ldr	r3, [r4]
	add	r3, r2, r3
	cmp	r3, #238
	bgt	.L10
	ldr	r3, .L92+40
	ldm	r3, {r0, ip}
	ldr	lr, [r3, #16]
	ldr	r5, [r3, #20]
	stm	sp, {r0, ip, lr}
	str	r5, [sp, #12]
	ldr	r3, .L92+56
	ldr	r1, .L92+60
	ldr	r0, [r3]
	ldr	r1, [r1]
	ldr	r3, [r4, #20]
	ldr	r5, .L92+52
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L10
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r0, [r4, #8]
	add	r3, r3, r0
	str	r3, [r4]
	str	r1, [r4, #28]
	str	r2, [r4, #32]
	b	.L9
.L85:
	mov	r3, #1
	ldr	r4, .L92+4
	str	r3, [r4, #92]
	ldr	r5, [r4, #72]
	b	.L15
.L25:
	tst	r3, #16
	bne	.L27
	ldr	r0, [r4]
	ldr	r2, [r4, #16]
	add	r3, r0, r2
	cmp	r3, #238
	bgt	.L27
	ldr	r3, .L92+64
	add	ip, r3, #16
	ldr	r1, [r3, #4]
	ldm	ip, {ip, lr}
	ldr	r3, [r3]
	ldr	r5, .L92+52
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	ldr	r1, [r4, #4]
	ldr	r3, [r4, #20]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L27
	mov	r1, #2
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r0, [r4, #8]
	add	r3, r3, r0
	str	r3, [r4]
	str	r1, [r4, #28]
	str	r2, [r4, #32]
	b	.L26
.L27:
	mov	r3, #0
	str	r3, [r4, #32]
.L26:
	ldr	r7, .L92+16
	ldrh	r2, [r7]
	tst	r2, #1
	ldr	r5, [r4, #72]
	beq	.L28
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L89
.L28:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	ble	.L31
.L30:
	sub	r3, r3, #1
	str	r3, [r4, #60]
.L31:
	tst	r2, #2
	beq	.L15
	ldrh	r3, [r6]
	tst	r3, #2
	bne	.L15
	cmp	r5, #0
	bne	.L15
	ldr	r0, .L92+20
	ldr	r8, .L92+24
	mov	lr, pc
	bx	r8
	mov	ip, #45
	ldr	r2, .L92+28
	ldr	r3, .L92+44
	ldr	r6, .L92+64
	ldr	r1, [r2]
	ldr	r0, .L92+32
	mov	r2, r5
	ldr	r7, .L92+36
	str	ip, [r3]
	mov	lr, pc
	bx	r7
	add	ip, r6, #16
	ldr	r1, [r6, #4]
	ldr	r2, [r6]
	ldm	ip, {ip, lr}
	ldr	r3, [r4, #16]
	ldr	r0, [r4]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	add	r0, r0, r3
	mov	r2, #15
	mov	r3, #5
	ldr	r1, [r4, #4]
	ldr	r9, .L92+52
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L32
.L82:
	ldr	r0, .L92+68
	mov	lr, pc
	bx	r8
	ldr	r3, .L92+72
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L92+76
	mov	lr, pc
	bx	r7
	mov	r2, #25
	ldr	r3, [r6, #48]
	sub	r3, r3, #2
	str	r3, [r6, #48]
	str	r2, [r6, #92]
	b	.L32
.L87:
	mov	r9, #25
	ldr	r0, .L92+80
	ldr	r10, .L92+24
	mov	lr, pc
	bx	r10
	ldr	r3, .L92+84
	ldr	r8, .L92+40
	ldr	r1, [r3]
	mov	r2, r5
	ldr	r0, .L92+88
	ldr	fp, .L92+36
	mov	lr, pc
	bx	fp
	ldm	r8, {r2, ip}
	ldr	r1, [r8, #20]
	ldr	lr, [r8, #16]
	ldr	r3, [r4]
	str	r1, [sp, #12]
	str	lr, [sp, #8]
	str	ip, [sp, #4]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #4]
	ldr	lr, .L92+44
	ldr	ip, .L92+92
	add	r3, r3, #3
	str	r2, [sp]
	add	r0, r3, r0
	str	r9, [ip]
	mov	r3, #5
	mov	r2, #15
	str	r9, [lr]
	ldr	ip, .L92+52
	add	r1, r1, #23
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L90
.L12:
	mov	r3, #1
	mov	r5, #120
	str	r3, [r4, #52]
	ldrh	r2, [r7]
	mov	r3, #60
	str	r5, [r4, #72]
	b	.L13
.L89:
	cmp	r5, #0
	bne	.L28
	mov	r9, #15
	ldr	r0, .L92+80
	ldr	fp, .L92+24
	mov	lr, pc
	bx	fp
	ldr	r2, .L92+84
	ldr	r3, .L92+44
	ldr	r8, .L92+64
	ldr	r1, [r2]
	ldr	r0, .L92+88
	mov	r2, r5
	ldr	r10, .L92+36
	str	r9, [r3]
	mov	lr, pc
	bx	r10
	ldr	r3, [r8, #20]
	ldm	r8, {r1, ip}
	ldr	lr, [r8, #16]
	ldr	r0, [r4]
	str	r3, [sp, #12]
	ldr	r3, [r4, #16]
	mov	r2, r9
	stm	sp, {r1, ip, lr}
	add	r0, r0, r3
	ldr	r1, [r4, #4]
	mov	r3, #5
	ldr	r9, .L92+52
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L91
.L29:
	mov	r3, #1
	mov	r5, #120
	str	r3, [r4, #52]
	ldrh	r2, [r7]
	mov	r3, #60
	str	r5, [r4, #72]
	b	.L30
.L90:
	ldr	r0, .L92+96
	mov	lr, pc
	bx	r10
	ldr	r3, .L92+72
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L92+76
	mov	lr, pc
	bx	fp
	ldr	r3, [r8, #48]
	sub	r3, r3, #1
	str	r9, [r8, #92]
	str	r3, [r8, #48]
	b	.L12
.L91:
	ldr	r0, .L92+96
	mov	lr, pc
	bx	fp
	ldr	r3, .L92+72
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L92+76
	mov	lr, pc
	bx	r10
	mov	r2, #25
	ldr	r3, [r8, #48]
	sub	r3, r3, #1
	str	r3, [r8, #48]
	str	r2, [r8, #92]
	b	.L29
.L93:
	.align	2
.L92:
	.word	state
	.word	player
	.word	playerWalk
	.word	buttons
	.word	oldButtons
	.word	.LC2
	.word	mgba_printf
	.word	heavySword_length
	.word	heavySword_data
	.word	playSoundB
	.word	firstBoss
	.word	swing
	.word	heavyFrame
	.word	collision
	.word	realPlayerX
	.word	realPlayerY
	.word	secondBoss
	.word	.LC3
	.word	bossDamage_length
	.word	bossDamage_data
	.word	.LC0
	.word	lightSword_length
	.word	lightSword_data
	.word	lightFrame
	.word	.LC1
	.size	updatePlayer, .-updatePlayer
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
	ldr	r3, .L128
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r3, #4]
	and	r0, r4, #255
	mvn	r0, r0, lsl #17
	ldr	lr, [r3]
	ldr	r1, .L128+4
	ldrb	r6, [r3, #44]	@ zero_extendqisi2
	ldr	r5, [r3, #28]
	lsl	r2, lr, #23
	lsr	r2, r2, #23
	lsl	ip, r6, #3
	orr	r2, r2, #49152
	cmp	r5, #2
	add	r6, r1, r6, lsl #3
	strh	r2, [r6, #2]	@ movhi
	orreq	r2, r2, #4096
	mvn	r0, r0, lsr #17
	strheq	r2, [r6, #2]	@ movhi
	ldr	r2, [r3, #32]
	cmp	r2, #0
	moveq	r2, #16
	ldrne	r2, [r3, #36]
	strh	r0, [r1, ip]	@ movhi
	ldr	r0, [r3, #84]
	lslne	r2, r2, #2
	andne	r2, r2, #1020
	cmp	r0, #0
	add	r0, r1, ip
	strh	r2, [r0, #4]	@ movhi
	orrne	r2, r2, #4096
	strhne	r2, [r0, #4]	@ movhi
	ldr	r2, [r3, #92]
	cmp	r2, #0
	addne	ip, r1, ip
	ldrhne	r2, [ip, #4]
	orrne	r2, r2, #8192
	strhne	r2, [ip, #4]	@ movhi
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L94
	ldr	r2, [r3, #60]
	cmp	r2, #0
	ldr	ip, [r3, #76]
	bne	.L126
	lsl	ip, ip, #3
	ldrh	r2, [r1, ip]
	orr	r2, r2, #512
	strh	r2, [r1, ip]	@ movhi
	ldr	r2, [r3, #56]
	cmp	r2, #0
	ldr	r2, [r3, #80]
	beq	.L108
.L127:
	ldr	r5, .L128+8
	ldr	r0, [r5]
	ldr	lr, .L128+12
	cmp	r0, #0
	ldr	ip, [lr]
	ble	.L109
	ldr	r6, [r3, #28]
	sub	r0, r0, #1
	cmp	r6, #2
	ldr	r4, [r3, #4]
	str	r0, [r5]
	ldrh	r0, [r3]
	ldreq	r3, [r3, #16]
	addeq	r3, r0, r3
	addeq	r3, r3, #10
	subne	r3, r0, #16
	lsleq	r3, r3, #23
	lslne	r3, r3, #23
	add	r4, r4, #20
	lsreq	r3, r3, #23
	lsrne	r3, r3, #23
	lsl	r2, r2, #3
	and	r4, r4, #255
	orreq	r3, r3, #16384
	orrne	r3, r3, #20480
	strh	r4, [r1, r2]	@ movhi
	cmp	ip, #50
	add	r2, r1, r2
	strh	r3, [r2, #2]	@ movhi
	movgt	r3, #152
	strhgt	r3, [r2, #4]	@ movhi
	bgt	.L113
	cmp	ip, #25
	movgt	r3, #154
	movle	r3, #156
	strh	r3, [r2, #4]	@ movhi
.L113:
	sub	ip, ip, #1
	str	ip, [lr]
.L94:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L126:
	ldr	r7, .L128+8
	ldr	r6, [r7]
	ldr	r0, .L128+16
	cmp	r6, #0
	ldr	r2, [r0]
	ble	.L101
	add	r4, r4, #20
	cmp	r5, #2
	and	r4, r4, #255
	lsl	ip, ip, #3
	strh	r4, [r1, ip]	@ movhi
	lsl	lr, lr, #16
	ldreq	r4, [r3, #16]
	lsr	lr, lr, #16
	addeq	lr, lr, r4
	addeq	lr, lr, #13
	subne	lr, lr, #16
	lsleq	lr, lr, #23
	lslne	lr, lr, #23
	lsreq	lr, lr, #23
	lsrne	lr, lr, #23
	orreq	lr, lr, #16384
	orrne	lr, lr, #20480
	add	ip, r1, ip
	cmp	r2, #20
	strh	lr, [ip, #2]	@ movhi
	movgt	lr, #88
	sub	r6, r6, #1
	str	r6, [r7]
	strhgt	lr, [ip, #4]	@ movhi
	bgt	.L105
	cmp	r2, #10
	movgt	lr, #90
	movle	lr, #92
	strh	lr, [ip, #4]	@ movhi
.L105:
	sub	r2, r2, #1
	str	r2, [r0]
	ldr	r2, [r3, #56]
	cmp	r2, #0
	ldr	r2, [r3, #80]
	bne	.L127
.L108:
	lsl	r2, r2, #3
	ldrh	r3, [r1, r2]
	orr	r3, r3, #512
	strh	r3, [r1, r2]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L109:
	lsl	r2, r2, #3
	ldrh	r3, [r1, r2]
	orr	r3, r3, #512
	strh	r3, [r1, r2]	@ movhi
	b	.L113
.L101:
	lsl	ip, ip, #3
	ldrh	lr, [r1, ip]
	orr	lr, lr, #512
	strh	lr, [r1, ip]	@ movhi
	b	.L105
.L129:
	.align	2
.L128:
	.word	player
	.word	shadowOAM
	.word	swing
	.word	heavyFrame
	.word	lightFrame
	.size	drawPlayer, .-drawPlayer
	.comm	heavyFrame,4,4
	.comm	lightFrame,4,4
	.comm	realPlayerY,4,4
	.comm	realPlayerX,4,4
	.comm	swing,4,4
	.comm	playerWalk,4,4
	.comm	firstBoss,96,4
	.comm	player,96,4
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

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
	.global	initMap
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMap, %function
initMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #24
	mov	r4, #32
	mov	lr, #64
	mov	r2, #0
	mov	r5, #2
	mov	r1, #1
	mov	ip, #60
	ldr	r3, .L4
	stm	r3, {r4, lr}
	str	r0, [r3, #20]
	ldr	lr, .L4+4
	str	r0, [r3, #16]
	strb	r2, [r3, #44]
	ldr	r0, .L4+8
	str	r5, [r3, #40]
	str	r2, [lr]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r0]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	overworldPlayer
	.word	frameCount
	.word	mapCount
	.size	initMap, .-initMap
	.align	2
	.global	updateMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap, %function
updateMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L34
	ldr	r3, [r5]
	subs	r3, r3, #1
	movmi	r3, #0
	ldr	r6, .L34+4
	str	r3, [r5]
	ldrh	r3, [r6]
	tst	r3, #64
	ldr	r4, .L34+8
	bne	.L9
	ldr	r1, [r4, #4]
	cmp	r1, #1
	ble	.L9
	ldr	r0, [r4, #12]
	ldr	r2, [r5]
	sub	r1, r1, r0
	cmp	r2, #0
	str	r1, [r4, #4]
	beq	.L30
.L9:
	tst	r3, #128
	bne	.L10
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #20]
	add	r2, r1, r2
	cmp	r2, #158
	ble	.L31
.L10:
	tst	r3, #32
	ldr	r1, [r4]
	bne	.L11
	cmp	r1, #1
	ble	.L11
	mov	r0, #3
	ldr	r2, [r4, #8]
	sub	r1, r1, r2
	ldr	r2, [r5]
	cmp	r2, #0
	str	r1, [r4]
	str	r0, [r4, #28]
	beq	.L32
.L11:
	tst	r3, #16
	ldr	r3, [r4, #16]
	bne	.L12
	ldr	r2, .L34+12
	add	r0, r1, r3
	cmp	r0, r2
	ble	.L33
.L12:
	rsb	r3, r3, #240
	add	r3, r3, r3, lsr #31
	sub	r3, r1, r3, asr #1
	ldr	lr, .L34+16
	cmp	r3, #0
	ldr	r6, [lr]
	str	r3, [lr]
	movlt	r3, #0
	ldr	ip, .L34+20
	ldr	r2, [r4, #20]
	ldr	r5, [ip]
	ldr	r0, [r4, #4]
	rsb	r2, r2, #160
	add	r2, r2, r2, lsr #31
	sub	r2, r0, r2, asr #1
	sub	r0, r0, r5
	ldr	r5, .L34+24
	str	r0, [r5]
	ldr	r0, .L34+28
	sub	r1, r1, r6
	str	r2, [ip]
	str	r1, [r0]
	strlt	r3, [lr]
	blt	.L14
	cmp	r3, #272
	movgt	r3, #272
	strgt	r3, [lr]
.L14:
	cmp	r2, #0
	movne	r3, #0
	strne	r3, [ip]
	ldr	r3, [r4, #36]
	ldr	r2, .L34+32
	cmp	r3, #0
	ldr	r1, [r2]
	bne	.L16
	cmp	r1, #29
	movgt	r3, #1
	strgt	r3, [r4, #36]
	ble	.L29
.L18:
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	cmp	r3, #1
	beq	.L19
.L29:
	add	r3, r1, #1
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	ldr	r0, [r4, #12]
	ldr	r2, [r5]
	add	r1, r0, r1
	cmp	r2, #0
	str	r1, [r4, #4]
	bne	.L10
	ldr	r3, .L34+36
	ldr	r0, .L34+40
	ldr	r1, [r3]
	ldr	r3, .L34+44
	mov	lr, pc
	bx	r3
	mov	r2, #60
	ldrh	r3, [r6]
	str	r2, [r5]
	b	.L10
.L33:
	mov	r0, #2
	ldr	r2, [r4, #8]
	add	r1, r1, r2
	ldr	r2, [r5]
	cmp	r2, #0
	str	r1, [r4]
	str	r0, [r4, #28]
	bne	.L12
	ldr	r3, .L34+36
	ldr	r0, .L34+40
	ldr	r1, [r3]
	ldr	r3, .L34+44
	mov	lr, pc
	bx	r3
	mov	r3, #60
	ldr	r1, [r4]
	str	r3, [r5]
	ldr	r3, [r4, #16]
	b	.L12
.L19:
	cmp	r1, #19
	movgt	r1, #0
	strgt	r1, [r4, #36]
	bgt	.L18
	b	.L29
.L30:
	ldr	r3, .L34+36
	ldr	r0, .L34+40
	ldr	r1, [r3]
	ldr	r3, .L34+44
	mov	lr, pc
	bx	r3
	mov	r2, #60
	ldrh	r3, [r6]
	str	r2, [r5]
	b	.L9
.L32:
	ldr	r3, .L34+36
	ldr	r0, .L34+40
	ldr	r1, [r3]
	ldr	r3, .L34+44
	mov	lr, pc
	bx	r3
	mov	r2, #60
	ldrh	r3, [r6]
	str	r2, [r5]
	ldr	r1, [r4]
	b	.L11
.L35:
	.align	2
.L34:
	.word	mapCount
	.word	buttons
	.word	overworldPlayer
	.word	510
	.word	hOff
	.word	vOff
	.word	screenY
	.word	screenX
	.word	frameCount
	.word	footsteps_length
	.word	footsteps_data
	.word	playSoundB
	.size	updateMap, .-updateMap
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	drawMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMap, %function
drawMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L41
	ldr	r0, .L41+4
	ldr	r1, [r3]
	push	{r4, lr}
	ldr	r3, .L41+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L41+12
	ldrh	r1, [r2]
	ldr	r2, .L41+16
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L41+20
	strh	r1, [r3, #18]	@ movhi
	ldr	r3, [r2]
	ldr	r1, .L41+24
	lsl	r3, r3, #23
	ldr	ip, [r1, #28]
	ldr	r2, .L41+28
	lsr	r3, r3, #23
	orr	r3, r3, #32768
	cmp	ip, #3
	strh	r3, [r2, #2]	@ movhi
	orreq	r3, r3, #4096
	strheq	r3, [r2, #2]	@ movhi
	ldr	r3, [r1, #36]
	ldr	r0, .L41+32
	ldr	r1, [r1]
	add	r3, r3, #64
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r3, r3, #2
	and	r3, r3, #1020
	cmp	r1, #120
	strh	r0, [r2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	bgt	.L38
	mov	r0, #80
	mov	r1, #32768
	ldr	r3, .L41+36
	ldr	r2, .L41+40
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L39:
	ldr	r4, .L41+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L41+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L38:
	ldr	r2, .L41+36
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	b	.L39
.L42:
	.align	2
.L41:
	.word	frameCount
	.word	.LC0
	.word	mgba_printf
	.word	hOff
	.word	vOff
	.word	screenX
	.word	overworldPlayer
	.word	shadowOAM
	.word	screenY
	.word	shadowOAM+800
	.word	17069
	.word	DMANow
	.size	drawMap, .-drawMap
	.align	2
	.global	initDungeonOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDungeonOne, %function
initDungeonOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, lr}
	mov	ip, #56
	mov	r5, #16
	mov	r4, #88
	mov	lr, #24
	mov	r0, #5
	mov	r1, #0
	ldr	r3, .L45
	str	r2, [r3, #8]
	ldr	r2, .L45+4
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r2]
	pop	{r4, r5, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	player
	.word	hasSword
	.size	initDungeonOne, .-initDungeonOne
	.align	2
	.global	updateDungeonOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDungeonOne, %function
updateDungeonOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L82
	ldrh	r2, [r6]
	tst	r2, #32
	ldr	r4, .L82+4
	sub	sp, sp, #20
	bne	.L48
	ldr	r3, [r4]
	cmp	r3, #1
	ble	.L48
	mov	r0, #3
	mov	r1, #1
	ldr	ip, [r4, #8]
	sub	r3, r3, ip
	str	r3, [r4]
	str	r0, [r4, #28]
	str	r1, [r4, #32]
.L49:
	ldr	r5, .L82+8
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L61
.L60:
	tst	r2, #1
	beq	.L80
.L53:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldrh	r3, [r5]
	beq	.L51
.L61:
	ldr	r1, .L82+12
	ldr	r2, [r1]
	add	r2, r2, #1
	cmp	r2, #12
	str	r2, [r1]
	ble	.L55
	ldr	r2, [r4, #36]
	ldr	r0, [r4, #40]
	add	r2, r2, #1
	cmp	r2, r0
	str	r2, [r4, #36]
	movge	r2, #0
	strge	r2, [r4, #36]
	mov	r2, #0
	tst	r3, #512
	str	r2, [r1]
	bne	.L81
.L57:
	ldr	r3, [r4, #84]
	cmp	r3, #0
	ble	.L47
.L58:
	sub	r3, r3, #1
	str	r3, [r4, #84]
.L47:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L48:
	tst	r2, #16
	bne	.L50
	ldr	r1, [r4]
	ldr	r3, [r4, #16]
	add	r3, r1, r3
	cmp	r3, #238
	bgt	.L50
	mov	ip, #2
	mov	r0, #1
	ldr	r3, [r4, #8]
	add	r1, r3, r1
	str	r1, [r4]
	str	ip, [r4, #28]
	str	r0, [r4, #32]
	b	.L49
.L50:
	mov	r1, #0
	ldr	r5, .L82+8
	ldrh	r3, [r5]
	tst	r3, #1
	str	r1, [r4, #32]
	bne	.L60
.L51:
	mov	r1, #0
	ldr	r2, .L82+12
	str	r1, [r2]
.L55:
	tst	r3, #512
	beq	.L57
.L81:
	tst	r3, #256
	beq	.L57
	ldrh	r3, [r6]
	tst	r3, #768
	bne	.L57
	mov	r1, #1
	ldr	r2, .L82+16
	mov	r3, #25
	str	r1, [r2]
	b	.L58
.L80:
	mov	r3, #96
	mov	r1, #40
	mov	r2, #16
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r7, .L82+20
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L53
	mov	r1, #1
	mov	r2, #180
	ldr	r3, .L82+24
	str	r1, [r3]
	ldr	r3, .L82+28
	str	r2, [r3]
	b	.L53
.L83:
	.align	2
.L82:
	.word	buttons
	.word	player
	.word	oldButtons
	.word	dungeonFrame
	.word	cheatOne
	.word	collision
	.word	hasSword
	.word	dungeonOneCountdown
	.size	updateDungeonOne, .-updateDungeonOne
	.align	2
	.global	drawDungeonOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDungeonOne, %function
drawDungeonOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L95
	ldr	r0, .L95+4
	ldr	r1, [r4, #32]
	ldr	r3, .L95+8
	mov	lr, pc
	bx	r3
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	mvn	r0, r0, lsl #17
	ldr	r3, [r4]
	ldr	r1, .L95+12
	ldrb	r2, [r4, #44]	@ zero_extendqisi2
	ldr	lr, [r4, #28]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	ip, r1, r2, lsl #3
	cmp	lr, #2
	orr	r3, r3, #49152
	strh	r3, [ip, #2]	@ movhi
	orreq	r3, r3, #4096
	strheq	r3, [ip, #2]	@ movhi
	mvn	r0, r0, lsr #17
	ldr	r3, [r4, #32]
	cmp	r3, #0
	moveq	r3, #16
	ldrne	r3, [r4, #36]
	lsl	r2, r2, #3
	strh	r0, [r1, r2]	@ movhi
	ldr	r0, [r4, #84]
	lslne	r3, r3, #2
	add	r2, r1, r2
	andne	r3, r3, #1020
	cmp	r0, #0
	strh	r3, [r2, #4]	@ movhi
	orrne	r3, r3, #8192
	strhne	r3, [r2, #4]	@ movhi
	ldr	r3, .L95+16
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r0, #20
	ldrhne	r3, [r1, #80]
	ldreq	r2, .L95+20
	ldreq	r3, .L95+24
	orrne	r3, r3, #512
	strheq	r0, [r1, #84]	@ movhi
	strheq	r2, [r1, #80]	@ movhi
	strheq	r3, [r1, #82]	@ movhi
	strhne	r3, [r1, #80]	@ movhi
	ldr	r4, .L95+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L95+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	player
	.word	.LC0
	.word	mgba_printf
	.word	shadowOAM
	.word	hasSword
	.word	-32672
	.word	-16288
	.word	DMANow
	.size	drawDungeonOne, .-drawDungeonOne
	.align	2
	.global	initDungeonTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDungeonTwo, %function
initDungeonTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #1
	mov	r4, #16
	mov	lr, #100
	mov	r0, #5
	mov	r1, #24
	mov	r2, #56
	ldr	r3, .L99
	stm	r3, {r4, lr}
	str	ip, [r3, #8]
	str	r0, [r3, #40]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	player
	.size	initDungeonTwo, .-initDungeonTwo
	.align	2
	.global	updateDungeonTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDungeonTwo, %function
updateDungeonTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L139
	ldrh	r2, [r6]
	tst	r2, #32
	ldr	r4, .L139+4
	sub	sp, sp, #20
	bne	.L102
	ldr	r3, [r4]
	cmp	r3, #1
	ble	.L102
	mov	r0, #3
	mov	r1, #1
	ldr	ip, [r4, #8]
	sub	r3, r3, ip
	str	r3, [r4]
	str	r0, [r4, #28]
	str	r1, [r4, #32]
.L103:
	ldr	r5, .L139+8
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L115
.L114:
	tst	r2, #1
	beq	.L137
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldrh	r3, [r5]
	beq	.L105
.L115:
	ldr	r1, .L139+12
	ldr	r2, [r1]
	add	r2, r2, #1
	cmp	r2, #20
	str	r2, [r1]
	ble	.L109
	ldr	r2, [r4, #36]
	ldr	r0, [r4, #40]
	add	r2, r2, #1
	cmp	r2, r0
	str	r2, [r4, #36]
	movge	r2, #0
	strge	r2, [r4, #36]
	mov	r2, #0
	tst	r3, #512
	str	r2, [r1]
	bne	.L138
.L111:
	ldr	r3, [r4, #84]
	cmp	r3, #0
	bne	.L112
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L102:
	tst	r2, #16
	bne	.L104
	ldr	r1, [r4]
	ldr	r3, [r4, #16]
	add	r3, r1, r3
	cmp	r3, #238
	bgt	.L104
	mov	ip, #2
	mov	r0, #1
	ldr	r3, [r4, #8]
	add	r1, r3, r1
	str	r1, [r4]
	str	ip, [r4, #28]
	str	r0, [r4, #32]
	b	.L103
.L104:
	mov	r1, #0
	ldr	r5, .L139+8
	ldrh	r3, [r5]
	tst	r3, #1
	str	r1, [r4, #32]
	bne	.L114
.L105:
	mov	r1, #0
	ldr	r2, .L139+12
	str	r1, [r2]
.L109:
	tst	r3, #512
	beq	.L111
.L138:
	tst	r3, #256
	beq	.L111
	ldrh	r3, [r6]
	tst	r3, #768
	bne	.L111
	mov	r1, #1
	mov	r3, #25
	ldr	r2, .L139+16
	str	r1, [r2]
.L112:
	sub	r3, r3, #1
	str	r3, [r4, #84]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L137:
	mov	r3, #96
	mov	r1, #40
	mov	r2, #16
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r7, .L139+20
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #1
	ldrne	r1, .L139+24
	ldrne	r2, .L139+28
	strne	r3, [r1]
	strne	r3, [r2]
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldrh	r3, [r5]
	bne	.L115
	b	.L105
.L140:
	.align	2
.L139:
	.word	buttons
	.word	player
	.word	oldButtons
	.word	dungeonFrame
	.word	cheatTwo
	.word	collision
	.word	hasShield
	.word	dungeonTwoCountdown
	.size	updateDungeonTwo, .-updateDungeonTwo
	.align	2
	.global	drawDungeonTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDungeonTwo, %function
drawDungeonTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L152
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	mvn	ip, ip, lsl #17
	push	{r4, lr}
	ldr	r3, [r2]
	ldrb	r0, [r2, #44]	@ zero_extendqisi2
	ldr	r1, .L152+4
	ldr	r4, [r2, #28]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #49152
	add	lr, r1, r0, lsl #3
	cmp	r4, #2
	strh	r3, [lr, #2]	@ movhi
	orreq	r3, r3, #4096
	strheq	r3, [lr, #2]	@ movhi
	ldr	r3, [r2, #32]
	mvn	ip, ip, lsr #17
	cmp	r3, #0
	moveq	r3, #16
	ldrne	r3, [r2, #36]
	ldr	r2, [r2, #84]
	lslne	r3, r3, #2
	lsl	r0, r0, #3
	andne	r3, r3, #1020
	strh	ip, [r1, r0]	@ movhi
	cmp	r2, #0
	add	r1, r1, r0
	strh	r3, [r1, #4]	@ movhi
	orrne	r3, r3, #8192
	strhne	r3, [r1, #4]	@ movhi
	ldr	r3, .L152+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L145
	mov	r0, #96
	mov	r2, #548
	ldr	r3, .L152+12
	ldr	r1, .L152+16
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L146:
	ldr	r4, .L152+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L152+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L145:
	ldr	r2, .L152+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	b	.L146
.L153:
	.align	2
.L152:
	.word	player
	.word	shadowOAM
	.word	hasShield
	.word	shadowOAM+440
	.word	-16288
	.word	DMANow
	.size	drawDungeonTwo, .-drawDungeonTwo
	.comm	dungeonFrame,4,4
	.comm	frameCount,4,4
	.comm	mapCount,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	screenY,4,4
	.comm	screenX,4,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	overworldPlayer,48,4
	.comm	cheatTwo,4,4
	.comm	cheatOne,4,4
	.comm	dungeonTwoCountdown,4,4
	.comm	hasShield,4,4
	.comm	dungeonOneCountdown,4,4
	.comm	hasSword,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

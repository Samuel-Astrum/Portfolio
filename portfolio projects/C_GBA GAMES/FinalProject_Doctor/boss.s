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
	.file	"boss.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"the boss attacks!\000"
	.align	2
.LC1:
	.ascii	"boss attack hits!\000"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBossOne.part.0, %function
updateBossOne.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L57
	ldr	r5, [r4, #56]
	cmp	r5, #0
	sub	sp, sp, #20
	beq	.L52
	ldr	r3, [r4, #60]
	cmp	r3, #0
	sub	r5, r5, #1
	subgt	r3, r3, #1
	str	r5, [r4, #56]
	strgt	r3, [r4, #60]
.L4:
	ldr	r8, [r4, #68]
	cmp	r8, #0
	beq	.L53
	ldr	r1, .L57+4
	ldr	r3, [r1]
	cmp	r3, #0
	subgt	r3, r3, #1
	ldr	r2, [r4, #72]
	strgt	r3, [r1]
	ble	.L54
.L24:
	cmp	r2, #0
	bgt	.L55
.L27:
	ldr	r3, [r4, #92]
	ldr	r2, .L57+8
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #92]
	ldr	r3, [r2]
	cmp	r3, #30
	addle	r3, r3, #1
	ble	.L33
	ldr	r1, .L57+12
	ldr	r3, [r1]
	cmp	r3, #0
	moveq	r3, #1
	movne	r0, #0
	movne	r3, #1
	streq	r3, [r1]
	strne	r0, [r1]
.L33:
	str	r3, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L54:
	ldr	r1, .L57+16
	ldr	r3, [r1]
	cmp	r2, #0
	sub	r8, r8, #1
	subgt	r2, r2, #1
	add	r3, r3, #1
	str	r8, [r4, #68]
	strgt	r2, [r4, #72]
	str	r3, [r1]
	b	.L24
.L53:
	ldr	r6, .L57+20
	mov	lr, pc
	bx	r6
	ldr	r3, .L57+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #300
	str	r0, [r4, #68]
	mov	lr, pc
	bx	r6
	ldr	r5, .L57+28
	smull	r2, r3, r5, r0
	asr	r5, r0, #31
	rsb	r5, r5, r3, asr #1
	add	r5, r5, r5, lsl #2
	sub	r5, r0, r5
	cmp	r5, #4
	ldrls	pc, [pc, r5, asl #2]
	b	.L39
.L8:
	.word	.L12
	.word	.L11
	.word	.L10
	.word	.L9
	.word	.L7
.L52:
	ldr	r0, .L57+32
	ldr	r6, .L57+36
	mov	lr, pc
	bx	r6
	ldr	r3, .L57+40
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L57+44
	ldr	r3, .L57+48
	mov	lr, pc
	bx	r3
	mov	r0, #10
	mov	r1, #15
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r5, .L57+52
	add	r2, r2, #55
	sub	r3, r3, #15
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	ldr	r7, .L57+56
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L3
	ldr	r3, [r5, #88]
	cmp	r3, #0
	bne	.L3
	mov	r2, #25
	ldr	r3, [r5, #48]
	ldr	r0, .L57+60
	sub	r3, r3, #1
	str	r3, [r5, #48]
	str	r2, [r5, #84]
	mov	lr, pc
	bx	r6
.L3:
	ldr	r3, .L57+20
	mov	lr, pc
	bx	r3
	mov	r1, #60
	ldr	r3, .L57+64
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #150
	str	r0, [r4, #56]
	str	r1, [r4, #60]
	b	.L4
.L7:
	mov	r3, #152
	ldr	r9, .L57+68
	str	r3, [r9]
.L6:
	mov	lr, pc
	bx	r6
	ldr	r7, .L57+28
	b	.L50
.L56:
	mov	lr, pc
	bx	r6
.L50:
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3
	cmp	r5, r3
	beq	.L56
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L15
.L17:
	.word	.L21
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L16
.L16:
	mov	r2, #152
	ldr	r3, .L57+72
	str	r2, [r3]
.L15:
	mov	r1, #300
	mov	r3, #0
	mov	r0, #200
	ldr	r2, .L57+4
	ldr	r7, .L57+16
	str	r0, [r4, #72]
	str	r1, [r2]
	str	r3, [r7]
.L22:
	mov	ip, #14
	ldr	r3, [r9]
	ldr	r5, .L57+52
	ldm	r5, {r0, r1}
	stm	sp, {r3, r8}
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r6, .L57+56
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L28
.L30:
	mov	r0, #0
	mov	r1, #25
	mov	r2, #60
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	str	r3, [r5, #48]
	str	r0, [r4, #72]
	str	r1, [r5, #84]
	str	r2, [r5, #88]
	b	.L27
.L18:
	mov	r2, #120
	ldr	r3, .L57+72
	str	r2, [r3]
	b	.L15
.L19:
	mov	r2, #88
	ldr	r3, .L57+72
	str	r2, [r3]
	b	.L15
.L20:
	mov	r2, #56
	ldr	r3, .L57+72
	str	r2, [r3]
	b	.L15
.L21:
	mov	r2, #24
	ldr	r3, .L57+72
	str	r2, [r3]
	b	.L15
.L9:
	mov	r3, #120
	ldr	r9, .L57+68
	str	r3, [r9]
	b	.L6
.L10:
	mov	r3, #88
	ldr	r9, .L57+68
	str	r3, [r9]
	b	.L6
.L11:
	mov	r3, #56
	ldr	r9, .L57+68
	str	r3, [r9]
	b	.L6
.L12:
	mov	r3, #24
	ldr	r9, .L57+68
	str	r3, [r9]
	b	.L6
.L28:
	mov	r3, #10
	ldr	r2, .L57+72
	ldr	ip, [r7]
	ldr	r2, [r2]
	ldm	r5, {r0, r1}
	stm	sp, {r2, ip}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L27
	ldr	r3, [r5, #88]
	cmp	r3, #0
	beq	.L30
	b	.L27
.L55:
	ldr	r7, .L57+16
	ldr	r9, .L57+68
	ldr	r8, [r7]
	b	.L22
.L39:
	ldr	r9, .L57+68
	b	.L6
.L58:
	.align	2
.L57:
	.word	firstBoss
	.word	shotTimer
	.word	shotFrame
	.word	shotCurrFrame
	.word	shotY
	.word	rand
	.word	1374389535
	.word	1717986919
	.word	.LC0
	.word	mgba_printf
	.word	bossPunch_length
	.word	bossPunch_data
	.word	playSoundB
	.word	player
	.word	collision
	.word	.LC1
	.word	458129845
	.word	shotOne
	.word	shotTwo
	.size	updateBossOne.part.0, .-updateBossOne.part.0
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"the boss shoots!\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBossTwo.part.0, %function
updateBossTwo.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L102
	ldr	r5, [r4, #56]
	cmp	r5, #0
	sub	sp, sp, #20
	beq	.L95
	ldr	r3, [r4, #60]
	cmp	r3, #0
	sub	r5, r5, #1
	subgt	r3, r3, #1
	str	r5, [r4, #56]
	strgt	r3, [r4, #60]
.L62:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L96
	sub	r3, r3, #1
	ldr	r2, [r4, #72]
	str	r3, [r4, #68]
	ldr	r3, [r4, #76]
	cmp	r2, #0
	suble	r3, r3, #1
	strle	r3, [r4, #76]
	ble	.L67
	sub	r2, r2, #1
	sub	r3, r3, #1
	cmp	r2, #0
	str	r2, [r4, #72]
	str	r3, [r4, #76]
	bne	.L97
.L67:
	ldr	r2, .L102+4
	ldr	r3, [r2]
	cmp	r3, #30
	addle	r3, r3, #1
	ble	.L70
	ldr	r1, .L102+8
	ldr	r3, [r1]
	cmp	r3, #0
	moveq	r3, #1
	movne	r0, #0
	movne	r3, #1
	streq	r3, [r1]
	strne	r0, [r1]
.L70:
	ldr	r5, .L102+12
	ldr	r1, [r5]
	cmp	r1, #0
	str	r3, [r2]
	beq	.L98
	ldr	r0, .L102+16
	ldr	r3, [r0]
	ldr	r6, .L102+20
	cmp	r3, #0
	subgt	r3, r3, #1
	ldr	r2, [r6]
	strgt	r3, [r0]
	ble	.L99
.L75:
	cmp	r2, #0
	bgt	.L100
.L78:
	ldr	r3, [r4, #92]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #92]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L99:
	sub	r1, r1, #1
	str	r1, [r5]
	ldr	r1, .L102+24
	ldr	r3, [r1]
	cmp	r2, #0
	subgt	r2, r2, #1
	sub	r3, r3, #1
	strgt	r2, [r6]
	str	r3, [r1]
	b	.L75
.L96:
	ldr	r0, .L102+28
	ldr	r3, .L102+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+36
	mov	lr, pc
	bx	r3
	mov	r1, #200
	ldr	r3, .L102+40
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #4]
	sub	r0, r0, r3, lsl #2
	ldr	r3, [r4]
	add	r0, r0, #300
	add	r2, r2, #15
	str	r0, [r4, #68]
	str	r2, [r4, #80]
	str	r1, [r4, #72]
	str	r3, [r4, #76]
.L64:
	mov	r1, #8
	ldr	r5, .L102+44
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r1, [sp, #12]
	str	r1, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	ldr	r6, .L102+48
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L67
	mov	r3, #0
	ldr	r2, [r5, #92]
	cmp	r2, r3
	str	r3, [r4, #72]
	bne	.L67
	mov	r1, #60
	mov	r2, #25
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	str	r3, [r5, #48]
	str	r1, [r5, #88]
	str	r2, [r5, #84]
	b	.L67
.L98:
	mov	r1, #180
	ldr	r2, .L102+16
	ldr	r3, .L102+36
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r1, #200
	ldr	r3, .L102+40
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	ldr	r6, .L102+20
	ldr	r3, [r4]
	ldr	r2, .L102+24
	add	r0, r0, #300
	str	r0, [r5]
	str	r1, [r6]
	str	r3, [r2]
.L73:
	mov	ip, #56
	mov	lr, #16
	ldr	r5, .L102+44
	ldm	r5, {r0, r1}
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r7, .L102+48
	stmib	sp, {ip, lr}
	str	ip, [sp, #12]
	add	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L78
	ldr	r3, .L102+52
	ldrh	r3, [r3]
	and	r3, r3, #3
	cmp	r3, #3
	beq	.L80
	mov	r3, #0
	str	r3, [r6]
	b	.L78
.L95:
	ldr	r0, .L102+56
	ldr	r6, .L102+32
	mov	lr, pc
	bx	r6
	ldr	r3, .L102+60
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L102+64
	ldr	r3, .L102+68
	mov	lr, pc
	bx	r3
	mov	r0, #10
	mov	r1, #15
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r5, .L102+44
	add	r2, r2, #55
	sub	r3, r3, #15
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	ldr	r7, .L102+48
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L101
.L61:
	mov	r2, #240
	mov	r3, #60
	str	r2, [r4, #56]
	str	r3, [r4, #60]
	b	.L62
.L97:
	ldr	r2, [r4, #80]
	b	.L64
.L80:
	mov	r0, #0
	mov	r1, #25
	mov	r2, #60
	ldr	r3, [r5, #48]
	sub	r3, r3, #1
	str	r3, [r5, #48]
	str	r0, [r6]
	str	r1, [r5, #84]
	str	r2, [r5, #88]
	b	.L78
.L101:
	mov	r1, #60
	mov	r2, #25
	ldr	r3, [r5, #48]
	ldr	r0, .L102+72
	sub	r3, r3, #1
	str	r3, [r5, #48]
	str	r1, [r5, #88]
	str	r2, [r5, #84]
	mov	lr, pc
	bx	r6
	b	.L61
.L100:
	ldr	r3, .L102+24
	ldr	r3, [r3]
	b	.L73
.L103:
	.align	2
.L102:
	.word	secondBoss
	.word	shotFrame
	.word	shotCurrFrame
	.word	wallCooldown
	.word	wallTimer
	.word	wallActive
	.word	wallX
	.word	.LC2
	.word	mgba_printf
	.word	rand
	.word	1374389535
	.word	player
	.word	collision
	.word	buttons
	.word	.LC0
	.word	bossPunch_length
	.word	bossPunch_data
	.word	playSoundB
	.word	.LC1
	.size	updateBossTwo.part.0, .-updateBossTwo.part.0
	.align	2
	.global	initBossEncounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBossEncounter, %function
initBossEncounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	ldr	r3, [r3]
	mov	r1, #1
	cmp	r3, #0
	movne	r6, #3
	moveq	r6, #10
	mov	r5, #160
	mov	r4, #88
	mov	lr, #4
	mov	r2, #64
	mov	ip, #5
	mov	r0, #0
	ldr	r3, .L108+8
	strb	r1, [r3, #44]
	ldr	r1, .L108+12
	str	r6, [r3, #48]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #64]
	str	ip, [r3, #84]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	initPlayer
	.word	cheatOne
	.word	firstBoss
	.word	shotFrame
	.size	initBossEncounter, .-initBossEncounter
	.align	2
	.global	initBossOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBossOne, %function
initBossOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L114
	ldr	r3, [r3]
	mov	r1, #1
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	mov	r2, #64
	movne	r6, #3
	moveq	r6, #10
	mov	r5, #160
	mov	r4, #88
	mov	lr, #4
	mov	ip, #5
	mov	r0, #0
	ldr	r3, .L114+4
	strb	r1, [r3, #44]
	ldr	r1, .L114+8
	str	r6, [r3, #48]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #64]
	str	ip, [r3, #84]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	cheatOne
	.word	firstBoss
	.word	shotFrame
	.size	initBossOne, .-initBossOne
	.align	2
	.global	updateBossEncounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBossEncounter, %function
updateBossEncounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L120
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+4
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bleq	updateBossOne.part.0
.L117:
	ldr	r2, .L120+8
	ldr	r3, [r2, #88]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2, #88]
	pop	{r4, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	updatePlayer
	.word	firstBoss
	.word	player
	.size	updateBossEncounter, .-updateBossEncounter
	.align	2
	.global	updateBossOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBossOne, %function
updateBossOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L124
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bxne	lr
	b	updateBossOne.part.0
.L125:
	.align	2
.L124:
	.word	firstBoss
	.size	updateBossOne, .-updateBossOne
	.align	2
	.global	drawBossOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBossOne, %function
drawBossOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L142
	push	{r4, r5, r6, lr}
	ldr	ip, [r3, #88]
	cmp	ip, #0
	ldrb	r1, [r3, #44]	@ zero_extendqisi2
	bne	.L127
	ldr	r0, [r3]
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r4, [r3, #92]
	ldr	r2, .L142+4
	cmp	r4, #0
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	add	lr, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	r4, [r2, r1]	@ movhi
	ldrne	r1, .L142+8
	ldreq	r1, .L142+12
	strh	r1, [lr, #4]	@ movhi
	ldr	r1, [r3, #60]
	cmp	r1, #0
	strh	r0, [lr, #2]	@ movhi
	ldr	r1, [r3, #64]
	beq	.L130
.L140:
	mov	r4, #30
	ldr	lr, [r3, #4]
	ldr	r6, .L142+16
	ldr	r0, [r3]
	add	lr, lr, #32
	and	lr, lr, #255
	add	r5, r2, r1, lsl #3
	sub	r0, r0, #32
	lsl	r1, r1, #3
	orr	lr, lr, r6
	strh	lr, [r2, r1]	@ movhi
	lsl	r0, r0, #23
	ldr	r1, [r3, #72]
	lsr	r0, r0, #23
	orr	r0, r0, r6
	cmp	r1, #0
	strh	r0, [r5, #2]	@ movhi
	strh	r4, [r5, #4]	@ movhi
	beq	.L132
.L141:
	cmp	ip, #0
	bne	.L133
	ldr	r3, .L142+20
	mov	lr, r3
	ldr	r0, .L142+24
	ldr	ip, .L142+28
	ldr	r0, [r0]
	ldrb	r4, [ip]	@ zero_extendqisi2
	ldr	r1, .L142+32
	ldr	r2, .L142+36
	ldr	ip, .L142+40
	add	r0, r0, #13
	lsl	r0, r0, #1
	and	ip, ip, r0
	ldr	r1, [r1]
	ldr	r0, .L142+44
	ldr	r2, [r2]
	strh	r4, [lr, #8]!	@ movhi
	and	r1, r1, r0
	and	r2, r2, r0
	orr	r1, r1, #16384
	orr	r2, r2, #16384
	strh	ip, [r3, #4]	@ movhi
	strh	ip, [r3, #12]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [lr, #2]	@ movhi
	strh	r4, [r3]	@ movhi
.L126:
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	ldr	r2, .L142+4
	lsl	r1, r1, #3
	ldrh	r0, [r2, r1]
	orr	r0, r0, #512
	strh	r0, [r2, r1]	@ movhi
	ldr	r1, [r3, #60]
	cmp	r1, #0
	ldr	r1, [r3, #64]
	bne	.L140
.L130:
	lsl	r1, r1, #3
	ldrh	r0, [r2, r1]
	orr	r0, r0, #512
	strh	r0, [r2, r1]	@ movhi
	ldr	r1, [r3, #72]
	cmp	r1, #0
	bne	.L141
.L132:
	ldr	lr, .L142+20
	mov	r1, lr
	ldrh	r4, [lr]
	ldrh	r0, [r1, #8]!
	cmp	ip, #0
	orr	r0, r0, #512
	orr	ip, r4, #512
	strh	ip, [lr]	@ movhi
	strh	r0, [r1]	@ movhi
	beq	.L126
.L135:
	ldr	r1, [r3, #84]
	lsl	r1, r1, #3
	ldrh	r0, [r2, r1]
	ldr	r3, [r3, #64]
	orr	r0, r0, #512
	strh	r0, [r2, r1]	@ movhi
	lsl	r3, r3, #3
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L133:
	ldr	ip, .L142+20
	mov	r1, ip
	ldrh	lr, [ip]
	ldrh	r0, [r1, #8]!
	orr	lr, lr, #512
	orr	r0, r0, #512
	strh	lr, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
	b	.L135
.L143:
	.align	2
.L142:
	.word	firstBoss
	.word	shadowOAM
	.word	4375
	.word	279
	.word	-32768
	.word	shadowOAM+800
	.word	shotCurrFrame
	.word	shotY
	.word	shotOne
	.word	shotTwo
	.word	1022
	.word	511
	.size	drawBossOne, .-drawBossOne
	.align	2
	.global	drawBossEncounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBossEncounter, %function
drawBossEncounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L171
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, pc
	bx	r3
	bl	drawBossOne
	ldr	r3, .L171+4
	ldr	r3, [r3, #48]
	sub	r3, r3, #1
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L145
.L147:
	.word	.L156
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L146
.L146:
	mov	r2, #40
	mov	r1, #192
	mov	r10, #152
	mov	r9, #4480
	mov	r8, #160
	mov	r7, #168
	mov	r6, #176
	mov	r5, #184
	mov	r4, #200
	mov	lr, #208
	mov	ip, #216
	mov	r0, #224
	ldr	r3, .L171+8
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	strh	r1, [r3, #130]	@ movhi
	ldr	r2, .L171+12
	ldr	r1, .L171+16
	strh	r10, [r3, #90]	@ movhi
	strh	r9, [r3, #92]	@ movhi
	strh	r8, [r3, #98]	@ movhi
	strh	r7, [r3, #106]	@ movhi
	strh	r6, [r3, #114]	@ movhi
	strh	r5, [r3, #122]	@ movhi
	strh	r4, [r3, #138]	@ movhi
	strh	lr, [r3, #146]	@ movhi
	strh	ip, [r3, #154]	@ movhi
	strh	r0, [r3, #162]	@ movhi
	strh	r1, [r3, #164]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	strh	r2, [r3, #108]	@ movhi
	strh	r2, [r3, #116]	@ movhi
	strh	r2, [r3, #124]	@ movhi
	strh	r2, [r3, #132]	@ movhi
	strh	r2, [r3, #140]	@ movhi
	strh	r2, [r3, #148]	@ movhi
	strh	r2, [r3, #156]	@ movhi
.L145:
	ldr	r3, .L171+20
	ldr	r3, [r3, #48]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L157
.L159:
	.word	.L163
	.word	.L162
	.word	.L161
	.word	.L160
	.word	.L158
.L158:
	mov	r2, #40
	mov	r1, #8
	mov	r4, #384
	mov	lr, #16
	mov	ip, #24
	mov	r0, #32
	ldr	r3, .L171+8
	strh	r2, [r3, #168]	@ movhi
	strh	r2, [r3, #176]	@ movhi
	strh	r2, [r3, #184]	@ movhi
	strh	r2, [r3, #192]	@ movhi
	strh	r2, [r3, #200]	@ movhi
	strh	r2, [r3, #202]	@ movhi
	strh	r1, [r3, #170]	@ movhi
	ldr	r2, .L171+24
	ldr	r1, .L171+28
	strh	r4, [r3, #172]	@ movhi
	strh	lr, [r3, #178]	@ movhi
	strh	ip, [r3, #186]	@ movhi
	strh	r0, [r3, #194]	@ movhi
	strh	r1, [r3, #204]	@ movhi
	strh	r2, [r3, #180]	@ movhi
	strh	r2, [r3, #188]	@ movhi
	strh	r2, [r3, #196]	@ movhi
.L157:
	ldr	r3, .L171+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L164
	ldr	r3, .L171+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L170
.L164:
	ldr	r2, .L171+40
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L165:
	ldr	r4, .L171+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L171+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L170:
	mov	r0, #128
	ldr	r3, .L171+40
	ldr	r1, .L171+48
	ldr	r2, .L171+52
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L165
.L163:
	mov	r2, #40
	mov	r4, #8
	mov	lr, #384
	ldr	r3, .L171+8
	ldrh	ip, [r3, #176]
	ldrh	r0, [r3, #184]
	ldrh	r1, [r3, #192]
	strh	r2, [r3, #168]	@ movhi
	ldrh	r2, [r3, #200]
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #170]	@ movhi
	strh	lr, [r3, #172]	@ movhi
	strh	ip, [r3, #176]	@ movhi
	strh	r0, [r3, #184]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	strh	r2, [r3, #200]	@ movhi
	b	.L157
.L162:
	mov	r2, #8
	mov	lr, #16
	mov	ip, #40
	mov	r4, #384
	ldr	r3, .L171+8
	ldrh	r0, [r3, #184]
	ldrh	r1, [r3, #192]
	strh	r2, [r3, #170]	@ movhi
	ldrh	r2, [r3, #200]
	strh	lr, [r3, #178]	@ movhi
	ldr	lr, .L171+24
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #172]	@ movhi
	strh	r0, [r3, #184]	@ movhi
	strh	lr, [r3, #180]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	strh	r2, [r3, #200]	@ movhi
	strh	ip, [r3, #168]	@ movhi
	strh	ip, [r3, #176]	@ movhi
	b	.L157
.L161:
	mov	r1, #8
	mov	ip, #16
	mov	r2, #40
	mov	r4, #384
	mov	lr, #24
	ldr	r3, .L171+8
	ldrh	r0, [r3, #192]
	strh	r1, [r3, #170]	@ movhi
	ldrh	r1, [r3, #200]
	strh	ip, [r3, #178]	@ movhi
	ldr	ip, .L171+24
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r4, [r3, #172]	@ movhi
	strh	lr, [r3, #186]	@ movhi
	strh	r0, [r3, #192]	@ movhi
	strh	r1, [r3, #200]	@ movhi
	strh	r2, [r3, #168]	@ movhi
	strh	r2, [r3, #176]	@ movhi
	strh	r2, [r3, #184]	@ movhi
	strh	ip, [r3, #180]	@ movhi
	strh	ip, [r3, #188]	@ movhi
	b	.L157
.L160:
	mov	r0, #8
	mov	r1, #16
	mov	r2, #40
	mov	r4, #384
	mov	lr, #24
	mov	ip, #32
	ldr	r3, .L171+8
	strh	r0, [r3, #170]	@ movhi
	ldrh	r0, [r3, #200]
	strh	r1, [r3, #178]	@ movhi
	ldr	r1, .L171+24
	orr	r0, r0, #512
	strh	r4, [r3, #172]	@ movhi
	strh	lr, [r3, #186]	@ movhi
	strh	ip, [r3, #194]	@ movhi
	strh	r0, [r3, #200]	@ movhi
	strh	r2, [r3, #168]	@ movhi
	strh	r2, [r3, #176]	@ movhi
	strh	r2, [r3, #184]	@ movhi
	strh	r2, [r3, #192]	@ movhi
	strh	r1, [r3, #180]	@ movhi
	strh	r1, [r3, #188]	@ movhi
	strh	r1, [r3, #196]	@ movhi
	b	.L157
.L156:
	mov	r4, #40
	mov	lr, #152
	mov	ip, #4480
	ldr	r3, .L171+8
	ldrh	r0, [r3, #96]
	ldrh	r1, [r3, #104]
	ldrh	r2, [r3, #112]
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #88]	@ movhi
	strh	lr, [r3, #90]	@ movhi
	ldrh	r4, [r3, #120]
	ldrh	lr, [r3, #128]
	strh	ip, [r3, #92]	@ movhi
	strh	r0, [r3, #96]	@ movhi
	ldrh	ip, [r3, #136]
	ldrh	r0, [r3, #144]
	strh	r1, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	ldrh	r1, [r3, #152]
	ldrh	r2, [r3, #160]
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #120]	@ movhi
	strh	lr, [r3, #128]	@ movhi
	strh	ip, [r3, #136]	@ movhi
	strh	r0, [r3, #144]	@ movhi
	strh	r1, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	b	.L145
.L155:
	mov	r2, #152
	mov	lr, #4480
	mov	ip, #160
	mov	r4, #40
	ldr	r3, .L171+8
	ldrh	r0, [r3, #104]
	ldrh	r1, [r3, #112]
	strh	r2, [r3, #90]	@ movhi
	ldrh	r2, [r3, #120]
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	lr, [r3, #92]	@ movhi
	strh	ip, [r3, #98]	@ movhi
	ldrh	lr, [r3, #128]
	ldrh	ip, [r3, #136]
	strh	r0, [r3, #104]	@ movhi
	strh	r1, [r3, #112]	@ movhi
	ldrh	r0, [r3, #144]
	ldrh	r1, [r3, #152]
	strh	r2, [r3, #120]	@ movhi
	ldrh	r2, [r3, #160]
	ldr	r5, .L171+12
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r5, [r3, #100]	@ movhi
	strh	lr, [r3, #128]	@ movhi
	strh	ip, [r3, #136]	@ movhi
	strh	r0, [r3, #144]	@ movhi
	strh	r1, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	strh	r4, [r3, #88]	@ movhi
	strh	r4, [r3, #96]	@ movhi
	b	.L145
.L154:
	mov	r1, #152
	mov	lr, #160
	mov	r4, #4480
	mov	ip, #168
	mov	r2, #40
	ldr	r3, .L171+8
	ldrh	r0, [r3, #112]
	strh	r1, [r3, #90]	@ movhi
	ldrh	r1, [r3, #120]
	strh	lr, [r3, #98]	@ movhi
	ldrh	lr, [r3, #136]
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	lr, lr, #512
	strh	r4, [r3, #92]	@ movhi
	strh	ip, [r3, #106]	@ movhi
	ldrh	r4, [r3, #128]
	ldrh	ip, [r3, #144]
	strh	r0, [r3, #112]	@ movhi
	strh	r1, [r3, #120]	@ movhi
	ldrh	r0, [r3, #152]
	ldrh	r1, [r3, #160]
	strh	lr, [r3, #136]	@ movhi
	ldr	lr, .L171+12
	orr	r4, r4, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r4, [r3, #128]	@ movhi
	strh	ip, [r3, #144]	@ movhi
	strh	r0, [r3, #152]	@ movhi
	strh	r1, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	lr, [r3, #100]	@ movhi
	strh	lr, [r3, #108]	@ movhi
	b	.L145
.L153:
	mov	r0, #152
	mov	r1, #160
	mov	r4, #4480
	mov	lr, #168
	mov	ip, #176
	mov	r2, #40
	ldr	r3, .L171+8
	strh	r0, [r3, #90]	@ movhi
	ldrh	r0, [r3, #120]
	strh	r1, [r3, #98]	@ movhi
	ldrh	r1, [r3, #136]
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r4, [r3, #92]	@ movhi
	strh	lr, [r3, #106]	@ movhi
	ldrh	r4, [r3, #128]
	ldrh	lr, [r3, #144]
	strh	ip, [r3, #114]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	ldrh	ip, [r3, #152]
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #136]	@ movhi
	ldr	r1, .L171+12
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r4, [r3, #128]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	b	.L145
.L152:
	mov	r1, #160
	mov	r4, #4480
	mov	lr, #168
	mov	ip, #176
	mov	r0, #184
	mov	r2, #40
	mov	r5, #152
	ldr	r3, .L171+8
	strh	r1, [r3, #98]	@ movhi
	ldrh	r1, [r3, #136]
	strh	r4, [r3, #92]	@ movhi
	orr	r1, r1, #512
	ldrh	r4, [r3, #128]
	strh	lr, [r3, #106]	@ movhi
	strh	ip, [r3, #114]	@ movhi
	ldrh	lr, [r3, #144]
	ldrh	ip, [r3, #152]
	strh	r0, [r3, #122]	@ movhi
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #136]	@ movhi
	ldr	r1, .L171+12
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r5, [r3, #90]	@ movhi
	strh	r4, [r3, #128]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	b	.L145
.L151:
	mov	r1, #160
	mov	lr, #168
	mov	ip, #176
	mov	r0, #184
	mov	r2, #40
	mov	r6, #152
	mov	r5, #4480
	mov	r4, #192
	ldr	r3, .L171+8
	strh	r1, [r3, #98]	@ movhi
	ldrh	r1, [r3, #136]
	strh	lr, [r3, #106]	@ movhi
	orr	r1, r1, #512
	ldrh	lr, [r3, #144]
	strh	ip, [r3, #114]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	ldrh	ip, [r3, #152]
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #136]	@ movhi
	ldr	r1, .L171+12
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r6, [r3, #90]	@ movhi
	strh	r5, [r3, #92]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	b	.L145
.L150:
	mov	lr, #168
	mov	ip, #176
	mov	r0, #184
	mov	r1, #200
	mov	r2, #40
	mov	r7, #152
	mov	r6, #4480
	mov	r5, #160
	mov	r4, #192
	ldr	r3, .L171+8
	strh	lr, [r3, #106]	@ movhi
	strh	ip, [r3, #114]	@ movhi
	ldrh	lr, [r3, #144]
	ldrh	ip, [r3, #152]
	strh	r0, [r3, #122]	@ movhi
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #138]	@ movhi
	ldr	r1, .L171+12
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r7, [r3, #90]	@ movhi
	strh	r6, [r3, #92]	@ movhi
	strh	r5, [r3, #98]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r1, [r3, #140]	@ movhi
	b	.L145
.L149:
	mov	ip, #176
	mov	r0, #184
	mov	r1, #200
	mov	r2, #40
	mov	r8, #152
	mov	r7, #4480
	mov	r6, #160
	mov	r5, #168
	mov	r4, #192
	mov	lr, #208
	ldr	r3, .L171+8
	strh	ip, [r3, #114]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	ldrh	ip, [r3, #152]
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #138]	@ movhi
	ldr	r1, .L171+12
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r8, [r3, #90]	@ movhi
	strh	r7, [r3, #92]	@ movhi
	strh	r6, [r3, #98]	@ movhi
	strh	r5, [r3, #106]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #146]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r1, [r3, #140]	@ movhi
	strh	r1, [r3, #148]	@ movhi
	b	.L145
.L148:
	mov	r0, #184
	mov	r1, #200
	mov	r2, #40
	mov	r9, #152
	mov	r8, #4480
	mov	r7, #160
	mov	r6, #168
	mov	r5, #176
	mov	r4, #192
	mov	lr, #208
	mov	ip, #216
	ldr	r3, .L171+8
	strh	r0, [r3, #122]	@ movhi
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #138]	@ movhi
	ldr	r1, .L171+12
	orr	r0, r0, #512
	strh	r9, [r3, #90]	@ movhi
	strh	r8, [r3, #92]	@ movhi
	strh	r7, [r3, #98]	@ movhi
	strh	r6, [r3, #106]	@ movhi
	strh	r5, [r3, #114]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #146]	@ movhi
	strh	ip, [r3, #154]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r1, [r3, #140]	@ movhi
	strh	r1, [r3, #148]	@ movhi
	strh	r1, [r3, #156]	@ movhi
	b	.L145
.L172:
	.align	2
.L171:
	.word	drawPlayer
	.word	firstBoss
	.word	shadowOAM
	.word	4481
	.word	4482
	.word	player
	.word	385
	.word	386
	.word	hasKey
	.word	keyActive
	.word	shadowOAM+816
	.word	DMANow
	.word	16408
	.word	387
	.size	drawBossEncounter, .-drawBossEncounter
	.align	2
	.global	initBossTwoEncounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBossTwoEncounter, %function
initBossTwoEncounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L177
	mov	lr, pc
	bx	r3
	ldr	r3, .L177+4
	ldr	r3, [r3]
	mov	r1, #7
	cmp	r3, #0
	movne	r6, #3
	moveq	r6, #10
	mov	r5, #160
	mov	r4, #88
	mov	lr, #8
	mov	r2, #64
	mov	ip, #9
	mov	r0, #200
	ldr	r3, .L177+8
	strb	r1, [r3, #44]
	ldr	r1, .L177+12
	str	r6, [r3, #48]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #64]
	str	ip, [r3, #84]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L178:
	.align	2
.L177:
	.word	initPlayer
	.word	cheatTwo
	.word	secondBoss
	.word	wallCooldown
	.size	initBossTwoEncounter, .-initBossTwoEncounter
	.align	2
	.global	initBossTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBossTwo, %function
initBossTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L183
	ldr	r3, [r3]
	mov	r1, #7
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	mov	r2, #64
	movne	r6, #3
	moveq	r6, #10
	mov	r5, #160
	mov	r4, #88
	mov	lr, #8
	mov	ip, #9
	mov	r0, #200
	ldr	r3, .L183+4
	strb	r1, [r3, #44]
	ldr	r1, .L183+8
	str	r6, [r3, #48]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #64]
	str	ip, [r3, #84]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	cheatTwo
	.word	secondBoss
	.word	wallCooldown
	.size	initBossTwo, .-initBossTwo
	.align	2
	.global	updateBossTwoEncounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBossTwoEncounter, %function
updateBossTwoEncounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L189
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+4
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bleq	updateBossTwo.part.0
.L186:
	ldr	r2, .L189+8
	ldr	r3, [r2, #88]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2, #88]
	pop	{r4, lr}
	bx	lr
.L190:
	.align	2
.L189:
	.word	updatePlayer
	.word	secondBoss
	.word	player
	.size	updateBossTwoEncounter, .-updateBossTwoEncounter
	.align	2
	.global	updateBossTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBossTwo, %function
updateBossTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L193
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bxne	lr
	b	updateBossTwo.part.0
.L194:
	.align	2
.L193:
	.word	secondBoss
	.size	updateBossTwo, .-updateBossTwo
	.align	2
	.global	drawBossTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBossTwo, %function
drawBossTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L213
	push	{r4, r5, lr}
	ldr	r2, [r3, #88]
	cmp	r2, #0
	ldrb	r1, [r3, #44]	@ zero_extendqisi2
	bne	.L196
	ldr	r0, [r3]
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r2, .L213+4
	add	ip, r2, r1, lsl #3
	ldr	lr, .L213+8
	strh	r0, [ip, #2]	@ movhi
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	lsl	r1, r1, #3
	strh	lr, [ip, #4]	@ movhi
	strh	r0, [r2, r1]	@ movhi
.L197:
	ldr	r1, [r3, #60]
	cmp	r1, #0
	ldr	r1, [r3, #64]
	beq	.L198
	mov	r4, #30
	ldr	r0, [r3]
	ldr	ip, [r3, #4]
	sub	r0, r0, #32
	ldr	r5, .L213+12
	lsl	r0, r0, #23
	add	ip, ip, #32
	lsr	r0, r0, #23
	and	ip, ip, #255
	add	lr, r2, r1, lsl #3
	orr	r0, r0, r5
	lsl	r1, r1, #3
	orr	ip, ip, r5
	strh	r0, [lr, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	strh	r4, [lr, #4]	@ movhi
.L199:
	ldr	r1, [r3, #72]
	cmp	r1, #0
	ldr	r1, [r3, #84]
	beq	.L200
	ldr	ip, .L213+16
	ldr	lr, [ip]
	ldr	r0, [r3, #76]
	ldr	ip, .L213+20
	add	lr, lr, #13
	and	ip, ip, lr, lsl #1
	lsl	r0, r0, #23
	add	lr, r2, r1, lsl #3
	strh	ip, [lr, #4]	@ movhi
	lsr	r0, r0, #23
	ldrb	ip, [r3, #80]	@ zero_extendqisi2
	lsl	r1, r1, #3
	orr	r0, r0, #16384
	strh	r0, [lr, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
.L201:
	ldr	r1, .L213+24
	ldr	r1, [r1]
	cmp	r1, #0
	beq	.L202
	ldr	r1, .L213+28
	ldr	r1, [r1]
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	mvn	r1, r1, lsl #18
	mov	ip, #448
	mvn	r1, r1, lsr #18
	ldr	r0, .L213+32
	ldr	lr, .L213+36
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r0]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L203:
	ldr	r1, .L213+40
	ldr	r1, [r1]
	cmp	r1, #0
	ldrbne	r1, [r3, #44]	@ zero_extendqisi2
	addne	r1, r2, r1, lsl #3
	ldrhne	ip, [r1, #4]
	orrne	ip, ip, #8192
	strhne	ip, [r1, #4]	@ movhi
	ldr	r1, [r3, #88]
	cmp	r1, #0
	beq	.L195
	ldr	r1, [r3, #84]
	lsl	r1, r1, #3
	ldrh	ip, [r2, r1]
	ldr	r3, [r3, #64]
	orr	ip, ip, #512
	strh	ip, [r2, r1]	@ movhi
	lsl	r3, r3, #3
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	ldrh	r3, [r0]
	orr	r3, r3, #512
	strh	r3, [r0]	@ movhi
.L195:
	pop	{r4, r5, lr}
	bx	lr
.L202:
	ldr	r0, .L213+32
	ldrh	r1, [r0]
	orr	r1, r1, #512
	strh	r1, [r0]	@ movhi
	b	.L203
.L200:
	lsl	r1, r1, #3
	ldrh	r0, [r2, r1]
	orr	r0, r0, #512
	strh	r0, [r2, r1]	@ movhi
	b	.L201
.L198:
	lsl	r1, r1, #3
	ldrh	r0, [r2, r1]
	orr	r0, r0, #512
	strh	r0, [r2, r1]	@ movhi
	b	.L199
.L196:
	ldr	r2, .L213+4
	lsl	r1, r1, #3
	ldrh	r0, [r2, r1]
	orr	r0, r0, #512
	strh	r0, [r2, r1]	@ movhi
	b	.L197
.L214:
	.align	2
.L213:
	.word	secondBoss
	.word	shadowOAM
	.word	12567
	.word	-32768
	.word	shotCurrFrame
	.word	1022
	.word	wallActive
	.word	wallX
	.word	shadowOAM+840
	.word	-32712
	.word	wallTimer
	.size	drawBossTwo, .-drawBossTwo
	.align	2
	.global	drawBossTwoEncounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBossTwoEncounter, %function
drawBossTwoEncounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L242
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, pc
	bx	r3
	bl	drawBossTwo
	ldr	r3, .L242+4
	ldr	r3, [r3, #48]
	sub	r3, r3, #1
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L216
.L218:
	.word	.L227
	.word	.L226
	.word	.L225
	.word	.L224
	.word	.L223
	.word	.L222
	.word	.L221
	.word	.L220
	.word	.L219
	.word	.L217
.L217:
	mov	r2, #40
	mov	r1, #192
	mov	r10, #152
	mov	r9, #4480
	mov	r8, #160
	mov	r7, #168
	mov	r6, #176
	mov	r5, #184
	mov	r4, #200
	mov	lr, #208
	mov	ip, #216
	mov	r0, #224
	ldr	r3, .L242+8
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	strh	r1, [r3, #130]	@ movhi
	ldr	r2, .L242+12
	ldr	r1, .L242+16
	strh	r10, [r3, #90]	@ movhi
	strh	r9, [r3, #92]	@ movhi
	strh	r8, [r3, #98]	@ movhi
	strh	r7, [r3, #106]	@ movhi
	strh	r6, [r3, #114]	@ movhi
	strh	r5, [r3, #122]	@ movhi
	strh	r4, [r3, #138]	@ movhi
	strh	lr, [r3, #146]	@ movhi
	strh	ip, [r3, #154]	@ movhi
	strh	r0, [r3, #162]	@ movhi
	strh	r1, [r3, #164]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	strh	r2, [r3, #108]	@ movhi
	strh	r2, [r3, #116]	@ movhi
	strh	r2, [r3, #124]	@ movhi
	strh	r2, [r3, #132]	@ movhi
	strh	r2, [r3, #140]	@ movhi
	strh	r2, [r3, #148]	@ movhi
	strh	r2, [r3, #156]	@ movhi
.L216:
	ldr	r3, .L242+20
	ldr	r3, [r3, #48]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L228
.L230:
	.word	.L234
	.word	.L233
	.word	.L232
	.word	.L231
	.word	.L229
.L229:
	mov	r2, #40
	mov	r1, #8
	mov	r4, #384
	mov	lr, #16
	mov	ip, #24
	mov	r0, #32
	ldr	r3, .L242+8
	strh	r2, [r3, #168]	@ movhi
	strh	r2, [r3, #176]	@ movhi
	strh	r2, [r3, #184]	@ movhi
	strh	r2, [r3, #192]	@ movhi
	strh	r2, [r3, #200]	@ movhi
	strh	r2, [r3, #202]	@ movhi
	strh	r1, [r3, #170]	@ movhi
	ldr	r2, .L242+24
	ldr	r1, .L242+28
	strh	r4, [r3, #172]	@ movhi
	strh	lr, [r3, #178]	@ movhi
	strh	ip, [r3, #186]	@ movhi
	strh	r0, [r3, #194]	@ movhi
	strh	r1, [r3, #204]	@ movhi
	strh	r2, [r3, #180]	@ movhi
	strh	r2, [r3, #188]	@ movhi
	strh	r2, [r3, #196]	@ movhi
.L228:
	ldr	r3, .L242+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L235
	ldr	r3, .L242+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L241
.L235:
	ldr	r2, .L242+40
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L236:
	ldr	r4, .L242+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L242+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L241:
	mov	r0, #128
	ldr	r3, .L242+40
	ldr	r1, .L242+48
	ldr	r2, .L242+52
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L236
.L234:
	mov	r2, #40
	mov	r4, #8
	mov	lr, #384
	ldr	r3, .L242+8
	ldrh	ip, [r3, #176]
	ldrh	r0, [r3, #184]
	ldrh	r1, [r3, #192]
	strh	r2, [r3, #168]	@ movhi
	ldrh	r2, [r3, #200]
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #170]	@ movhi
	strh	lr, [r3, #172]	@ movhi
	strh	ip, [r3, #176]	@ movhi
	strh	r0, [r3, #184]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	strh	r2, [r3, #200]	@ movhi
	b	.L228
.L233:
	mov	r2, #8
	mov	lr, #16
	mov	ip, #40
	mov	r4, #384
	ldr	r3, .L242+8
	ldrh	r0, [r3, #184]
	ldrh	r1, [r3, #192]
	strh	r2, [r3, #170]	@ movhi
	ldrh	r2, [r3, #200]
	strh	lr, [r3, #178]	@ movhi
	ldr	lr, .L242+24
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #172]	@ movhi
	strh	r0, [r3, #184]	@ movhi
	strh	lr, [r3, #180]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	strh	r2, [r3, #200]	@ movhi
	strh	ip, [r3, #168]	@ movhi
	strh	ip, [r3, #176]	@ movhi
	b	.L228
.L232:
	mov	r1, #8
	mov	ip, #16
	mov	r2, #40
	mov	r4, #384
	mov	lr, #24
	ldr	r3, .L242+8
	ldrh	r0, [r3, #192]
	strh	r1, [r3, #170]	@ movhi
	ldrh	r1, [r3, #200]
	strh	ip, [r3, #178]	@ movhi
	ldr	ip, .L242+24
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r4, [r3, #172]	@ movhi
	strh	lr, [r3, #186]	@ movhi
	strh	r0, [r3, #192]	@ movhi
	strh	r1, [r3, #200]	@ movhi
	strh	r2, [r3, #168]	@ movhi
	strh	r2, [r3, #176]	@ movhi
	strh	r2, [r3, #184]	@ movhi
	strh	ip, [r3, #180]	@ movhi
	strh	ip, [r3, #188]	@ movhi
	b	.L228
.L231:
	mov	r0, #8
	mov	r1, #16
	mov	r2, #40
	mov	r4, #384
	mov	lr, #24
	mov	ip, #32
	ldr	r3, .L242+8
	strh	r0, [r3, #170]	@ movhi
	ldrh	r0, [r3, #200]
	strh	r1, [r3, #178]	@ movhi
	ldr	r1, .L242+24
	orr	r0, r0, #512
	strh	r4, [r3, #172]	@ movhi
	strh	lr, [r3, #186]	@ movhi
	strh	ip, [r3, #194]	@ movhi
	strh	r0, [r3, #200]	@ movhi
	strh	r2, [r3, #168]	@ movhi
	strh	r2, [r3, #176]	@ movhi
	strh	r2, [r3, #184]	@ movhi
	strh	r2, [r3, #192]	@ movhi
	strh	r1, [r3, #180]	@ movhi
	strh	r1, [r3, #188]	@ movhi
	strh	r1, [r3, #196]	@ movhi
	b	.L228
.L227:
	mov	r4, #40
	mov	lr, #152
	mov	ip, #4480
	ldr	r3, .L242+8
	ldrh	r0, [r3, #96]
	ldrh	r1, [r3, #104]
	ldrh	r2, [r3, #112]
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #88]	@ movhi
	strh	lr, [r3, #90]	@ movhi
	ldrh	r4, [r3, #120]
	ldrh	lr, [r3, #128]
	strh	ip, [r3, #92]	@ movhi
	strh	r0, [r3, #96]	@ movhi
	ldrh	ip, [r3, #136]
	ldrh	r0, [r3, #144]
	strh	r1, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	ldrh	r1, [r3, #152]
	ldrh	r2, [r3, #160]
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r4, [r3, #120]	@ movhi
	strh	lr, [r3, #128]	@ movhi
	strh	ip, [r3, #136]	@ movhi
	strh	r0, [r3, #144]	@ movhi
	strh	r1, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	b	.L216
.L226:
	mov	r2, #152
	mov	lr, #4480
	mov	ip, #160
	mov	r4, #40
	ldr	r3, .L242+8
	ldrh	r0, [r3, #104]
	ldrh	r1, [r3, #112]
	strh	r2, [r3, #90]	@ movhi
	ldrh	r2, [r3, #120]
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	lr, [r3, #92]	@ movhi
	strh	ip, [r3, #98]	@ movhi
	ldrh	lr, [r3, #128]
	ldrh	ip, [r3, #136]
	strh	r0, [r3, #104]	@ movhi
	strh	r1, [r3, #112]	@ movhi
	ldrh	r0, [r3, #144]
	ldrh	r1, [r3, #152]
	strh	r2, [r3, #120]	@ movhi
	ldrh	r2, [r3, #160]
	ldr	r5, .L242+12
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	r2, r2, #512
	strh	r5, [r3, #100]	@ movhi
	strh	lr, [r3, #128]	@ movhi
	strh	ip, [r3, #136]	@ movhi
	strh	r0, [r3, #144]	@ movhi
	strh	r1, [r3, #152]	@ movhi
	strh	r2, [r3, #160]	@ movhi
	strh	r4, [r3, #88]	@ movhi
	strh	r4, [r3, #96]	@ movhi
	b	.L216
.L225:
	mov	r1, #152
	mov	lr, #160
	mov	r4, #4480
	mov	ip, #168
	mov	r2, #40
	ldr	r3, .L242+8
	ldrh	r0, [r3, #112]
	strh	r1, [r3, #90]	@ movhi
	ldrh	r1, [r3, #120]
	strh	lr, [r3, #98]	@ movhi
	ldrh	lr, [r3, #136]
	orr	r0, r0, #512
	orr	r1, r1, #512
	orr	lr, lr, #512
	strh	r4, [r3, #92]	@ movhi
	strh	ip, [r3, #106]	@ movhi
	ldrh	r4, [r3, #128]
	ldrh	ip, [r3, #144]
	strh	r0, [r3, #112]	@ movhi
	strh	r1, [r3, #120]	@ movhi
	ldrh	r0, [r3, #152]
	ldrh	r1, [r3, #160]
	strh	lr, [r3, #136]	@ movhi
	ldr	lr, .L242+12
	orr	r4, r4, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r4, [r3, #128]	@ movhi
	strh	ip, [r3, #144]	@ movhi
	strh	r0, [r3, #152]	@ movhi
	strh	r1, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	lr, [r3, #100]	@ movhi
	strh	lr, [r3, #108]	@ movhi
	b	.L216
.L224:
	mov	r0, #152
	mov	r1, #160
	mov	r4, #4480
	mov	lr, #168
	mov	ip, #176
	mov	r2, #40
	ldr	r3, .L242+8
	strh	r0, [r3, #90]	@ movhi
	ldrh	r0, [r3, #120]
	strh	r1, [r3, #98]	@ movhi
	ldrh	r1, [r3, #136]
	orr	r0, r0, #512
	orr	r1, r1, #512
	strh	r4, [r3, #92]	@ movhi
	strh	lr, [r3, #106]	@ movhi
	ldrh	r4, [r3, #128]
	ldrh	lr, [r3, #144]
	strh	ip, [r3, #114]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	ldrh	ip, [r3, #152]
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #136]	@ movhi
	ldr	r1, .L242+12
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r4, [r3, #128]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	b	.L216
.L223:
	mov	r1, #160
	mov	r4, #4480
	mov	lr, #168
	mov	ip, #176
	mov	r0, #184
	mov	r2, #40
	mov	r5, #152
	ldr	r3, .L242+8
	strh	r1, [r3, #98]	@ movhi
	ldrh	r1, [r3, #136]
	strh	r4, [r3, #92]	@ movhi
	orr	r1, r1, #512
	ldrh	r4, [r3, #128]
	strh	lr, [r3, #106]	@ movhi
	strh	ip, [r3, #114]	@ movhi
	ldrh	lr, [r3, #144]
	ldrh	ip, [r3, #152]
	strh	r0, [r3, #122]	@ movhi
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #136]	@ movhi
	ldr	r1, .L242+12
	orr	r4, r4, #512
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r5, [r3, #90]	@ movhi
	strh	r4, [r3, #128]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	b	.L216
.L222:
	mov	r1, #160
	mov	lr, #168
	mov	ip, #176
	mov	r0, #184
	mov	r2, #40
	mov	r6, #152
	mov	r5, #4480
	mov	r4, #192
	ldr	r3, .L242+8
	strh	r1, [r3, #98]	@ movhi
	ldrh	r1, [r3, #136]
	strh	lr, [r3, #106]	@ movhi
	orr	r1, r1, #512
	ldrh	lr, [r3, #144]
	strh	ip, [r3, #114]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	ldrh	ip, [r3, #152]
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #136]	@ movhi
	ldr	r1, .L242+12
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r6, [r3, #90]	@ movhi
	strh	r5, [r3, #92]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	b	.L216
.L221:
	mov	lr, #168
	mov	ip, #176
	mov	r0, #184
	mov	r1, #200
	mov	r2, #40
	mov	r7, #152
	mov	r6, #4480
	mov	r5, #160
	mov	r4, #192
	ldr	r3, .L242+8
	strh	lr, [r3, #106]	@ movhi
	strh	ip, [r3, #114]	@ movhi
	ldrh	lr, [r3, #144]
	ldrh	ip, [r3, #152]
	strh	r0, [r3, #122]	@ movhi
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #138]	@ movhi
	ldr	r1, .L242+12
	orr	lr, lr, #512
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r7, [r3, #90]	@ movhi
	strh	r6, [r3, #92]	@ movhi
	strh	r5, [r3, #98]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #144]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r1, [r3, #140]	@ movhi
	b	.L216
.L220:
	mov	ip, #176
	mov	r0, #184
	mov	r1, #200
	mov	r2, #40
	mov	r8, #152
	mov	r7, #4480
	mov	r6, #160
	mov	r5, #168
	mov	r4, #192
	mov	lr, #208
	ldr	r3, .L242+8
	strh	ip, [r3, #114]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	ldrh	ip, [r3, #152]
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #138]	@ movhi
	ldr	r1, .L242+12
	orr	ip, ip, #512
	orr	r0, r0, #512
	strh	r8, [r3, #90]	@ movhi
	strh	r7, [r3, #92]	@ movhi
	strh	r6, [r3, #98]	@ movhi
	strh	r5, [r3, #106]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #146]	@ movhi
	strh	ip, [r3, #152]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r1, [r3, #140]	@ movhi
	strh	r1, [r3, #148]	@ movhi
	b	.L216
.L219:
	mov	r0, #184
	mov	r1, #200
	mov	r2, #40
	mov	r9, #152
	mov	r8, #4480
	mov	r7, #160
	mov	r6, #168
	mov	r5, #176
	mov	r4, #192
	mov	lr, #208
	mov	ip, #216
	ldr	r3, .L242+8
	strh	r0, [r3, #122]	@ movhi
	ldrh	r0, [r3, #160]
	strh	r1, [r3, #138]	@ movhi
	ldr	r1, .L242+12
	orr	r0, r0, #512
	strh	r9, [r3, #90]	@ movhi
	strh	r8, [r3, #92]	@ movhi
	strh	r7, [r3, #98]	@ movhi
	strh	r6, [r3, #106]	@ movhi
	strh	r5, [r3, #114]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	lr, [r3, #146]	@ movhi
	strh	ip, [r3, #154]	@ movhi
	strh	r0, [r3, #160]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #104]	@ movhi
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	strh	r1, [r3, #100]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r1, [r3, #116]	@ movhi
	strh	r1, [r3, #124]	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r1, [r3, #140]	@ movhi
	strh	r1, [r3, #148]	@ movhi
	strh	r1, [r3, #156]	@ movhi
	b	.L216
.L243:
	.align	2
.L242:
	.word	drawPlayer
	.word	secondBoss
	.word	shadowOAM
	.word	4481
	.word	4482
	.word	player
	.word	385
	.word	386
	.word	hasSecondKey
	.word	secondKeyActive
	.word	shadowOAM+968
	.word	DMANow
	.word	16408
	.word	387
	.size	drawBossTwoEncounter, .-drawBossTwoEncounter
	.comm	wallX,4,4
	.comm	wallCooldown,4,4
	.comm	wallTimer,4,4
	.comm	wallActive,4,4
	.comm	shotY,4,4
	.comm	shotTimer,4,4
	.comm	shotTwo,4,4
	.comm	shotOne,4,4
	.comm	shotCurrFrame,4,4
	.comm	shotFrame,4,4
	.comm	secondBoss,96,4
	.comm	firstBoss,96,4
	.comm	player,96,4
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
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

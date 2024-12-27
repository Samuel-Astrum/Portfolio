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
	.global	drawGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #31744
	sub	sp, sp, #36
	str	r6, [sp]
	ldr	r3, .L13
	ldr	r4, .L13+4
	ldr	r0, [r3]
	mov	r2, #14
	mov	r3, #8
	mov	r1, #30
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+8
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #30
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+12
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #30
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+16
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #44
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+20
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #44
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+24
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #44
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+28
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #58
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+32
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #58
	mov	r3, #8
	ldr	r7, .L13+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+40
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #87
	mov	r3, #7
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r3, .L13+44
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #87
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r3, .L13+48
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #101
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r3, .L13+52
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #101
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r3, .L13+56
	mov	r9, #31
	ldr	r0, [r3]
	mov	r2, #10
	mov	r3, #7
	mov	r1, #101
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r3, .L13+60
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #115
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r3, .L13+64
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #115
	mov	r3, #7
	ldr	r5, .L13+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+72
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #30
	str	r5, [sp]
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+76
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #30
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+80
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #30
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+84
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #44
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+88
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #44
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+92
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #44
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+96
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #58
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r3, .L13+100
	mov	r2, #14
	ldr	r0, [r3]
	mov	r1, #58
	mov	r3, #8
	mov	lr, pc
	bx	r4
	str	r9, [sp]
	ldr	r3, .L13+104
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #87
	mov	r3, #7
	mov	lr, pc
	bx	r4
	ldr	r8, .L13+108
	ldr	r3, .L13+112
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #87
	mov	r3, #7
	str	r8, [sp]
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	ldr	r3, .L13+116
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #101
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r9, [sp]
	ldr	r3, .L13+120
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #101
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r8, [sp]
	ldr	r3, .L13+124
	mov	r2, #10
	ldr	r0, [r3]
	mov	r1, #101
	mov	r3, #7
	mov	lr, pc
	bx	r4
	str	r9, [sp]
	ldr	r3, .L13+128
	ldr	fp, .L13+132
	ldr	r0, [r3]
	mov	r2, #10
	mov	r3, #7
	mov	r1, #115
	ldr	r10, .L13+136
	mov	lr, pc
	bx	r4
	mov	r3, #7
	mov	r2, #10
	mov	r1, #115
	str	r6, [sp]
	ldr	r0, [fp]
	mov	lr, pc
	bx	r4
	ldr	r1, [r10]
	cmp	r1, #101
	cmpne	r1, #115
	moveq	r3, #1
	movne	r3, #0
	cmp	r1, #87
	orreq	r3, r3, #1
	cmp	r3, #0
	movne	r5, r7
	cmp	r1, #45
	cmpne	r1, #59
	moveq	r3, #1
	movne	r3, #0
	cmp	r1, r9
	orreq	r3, r3, #1
	cmp	r3, #0
	movne	r5, r6
	mov	r3, #8
	str	r5, [sp]
	ldr	r9, .L13+140
	mov	r8, #992
	mov	r2, r3
	ldr	r0, [r9]
	mov	lr, pc
	bx	r4
	mov	r3, #8
	str	r8, [sp]
	ldr	r5, .L13+144
	ldr	r6, .L13+148
	ldr	r7, .L13+152
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r6]
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L11
	cmp	r3, #1
	beq	.L12
.L5:
	ldr	r0, .L13+76
	ldr	r8, [r0]
	ldr	r0, .L13+80
	ldr	r7, [r0]
	ldr	r0, .L13+84
	ldr	r3, [r6]
	ldr	r6, [r0]
	ldr	r0, .L13+88
	ldr	r2, [r5]
	ldr	r5, [r0]
	str	r5, [sp, #20]
	ldr	r5, .L13+128
	ldr	r5, [r5]
	str	r3, [sp, #8]
	ldr	r1, .L13+72
	str	r5, [sp, #28]
	ldr	r0, .L13+92
	ldr	r5, [sp, #8]
	str	r2, [sp, #12]
	ldr	r1, [r1]
	str	r5, [r9]
	ldr	r4, [r0]
	ldr	r5, [sp, #12]
	ldr	r0, .L13+96
	str	r1, [sp, #16]
	ldr	lr, [r0]
	str	r5, [r10]
	ldr	r9, .L13
	ldr	r5, [sp, #16]
	ldr	r0, .L13+100
	str	r5, [r9]
	ldr	r0, [r0]
	ldr	r3, .L13+112
	ldr	r9, .L13+8
	str	r0, [sp, #24]
	str	r8, [r9]
	ldr	r0, [r3]
	ldr	r8, .L13+12
	ldr	r3, .L13+116
	str	r7, [r8]
	ldr	r1, [r3]
	ldr	r7, .L13+16
	ldr	r3, .L13+120
	str	r6, [r7]
	ldr	r2, [r3]
	ldr	r5, [sp, #20]
	ldr	r6, .L13+20
	ldr	ip, .L13+104
	ldr	r3, .L13+124
	ldr	ip, [ip]
	ldr	r3, [r3]
	str	r5, [r6]
	ldr	r6, .L13+24
	str	r4, [r6]
	ldr	r4, .L13+28
	str	lr, [r4]
	ldr	lr, [sp, #24]
	ldr	r4, .L13+32
	str	lr, [r4]
	ldr	lr, .L13+40
	str	ip, [lr]
	ldr	ip, .L13+44
	str	r0, [ip]
	ldr	r0, .L13+48
	str	r1, [r0]
	ldr	r1, .L13+52
	str	r2, [r1]
	ldr	r2, .L13+56
	ldr	r5, [sp, #28]
	str	r3, [r2]
	ldr	r3, .L13+60
	ldr	r2, .L13+64
	str	r5, [r3]
	ldr	r3, [fp]
	str	r3, [r2]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	mov	r3, #5
	mov	r0, #25
	mov	r2, r3
	mov	r1, r3
	str	r8, [sp]
	mov	lr, pc
	bx	r4
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L5
.L12:
	mov	r3, #5
	mov	r7, #992
	mov	r2, r3
	mov	r1, r3
	mov	r0, #15
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r0, #25
	mov	r2, r3
	mov	r1, r3
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	b	.L5
.L14:
	.align	2
.L13:
	.word	oldLA1
	.word	drawRectangle
	.word	oldLA2
	.word	oldLA3
	.word	oldLB1
	.word	oldLB2
	.word	oldLB3
	.word	oldLC1
	.word	oldLC2
	.word	15855
	.word	oldA1
	.word	oldA2
	.word	oldB1
	.word	oldB2
	.word	oldB3
	.word	oldC1
	.word	oldC2
	.word	5460
	.word	LA1
	.word	LA2
	.word	LA3
	.word	LB1
	.word	LB2
	.word	LB3
	.word	LC1
	.word	LC2
	.word	A1
	.word	1023
	.word	A2
	.word	B1
	.word	B2
	.word	B3
	.word	C1
	.word	C2
	.word	oldPY
	.word	oldPX
	.word	pY
	.word	pX
	.word	lives
	.size	drawGame, .-drawGame
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L100
	ldrh	r3, [r3]
	tst	r3, #64
	sub	sp, sp, #20
	beq	.L78
	ldr	fp, .L100+4
.L16:
	tst	r3, #128
	bne	.L17
	ldr	r2, .L100+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L95
.L17:
	ldr	r4, .L100+12
	tst	r3, #32
	ldr	r0, [r4]
	bne	.L18
	ldr	r2, .L100+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L96
.L18:
	tst	r3, #16
	bne	.L19
	ldr	r3, .L100+8
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L97
.L19:
	cmp	r0, #252
	bhi	.L20
.L99:
	ldr	r1, [fp]
.L21:
	ldr	r2, .L100+16
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldrgt	r2, .L100+16
	str	r3, [r2]
	ldr	r2, .L100+20
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldrgt	r2, .L100+20
	str	r3, [r2]
	ldr	r2, .L100+24
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldrgt	r2, .L100+24
	ldr	r10, .L100+28
	str	r3, [r2]
	ldr	r3, [r10]
	subs	r3, r3, #1
	movmi	r3, #225
	ldr	r9, .L100+32
	str	r3, [r10]
	ldr	r3, [r9]
	subs	r3, r3, #1
	movmi	r3, #225
	ldr	r2, .L100+36
	str	r3, [r9]
	ldr	r3, [r2]
	subs	r3, r3, #1
	movmi	r3, #225
	ldrmi	r2, .L100+36
	str	r3, [r2]
	ldr	r2, .L100+40
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldrgt	r2, .L100+40
	str	r3, [r2]
	ldr	r2, .L100+44
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldrgt	r2, .L100+44
	str	r3, [r2]
	ldr	r3, .L100+48
	ldr	r2, [r3]
	subs	r2, r2, #1
	movmi	ip, #225
	ldr	r6, .L100+52
	strpl	r2, [r3]
	strmi	ip, [r3]
	ldr	r3, [r6]
	movmi	r2, ip
	subs	r3, r3, #1
	movmi	r3, #225
	ldr	r7, .L100+56
	str	r3, [r6]
	ldr	r3, [r7]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldr	r8, .L100+60
	str	r3, [r7]
	ldr	r3, [r8]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldr	ip, .L100+64
	str	r3, [r8]
	ldr	r3, [ip]
	add	r3, r3, #1
	cmp	r3, #225
	movgt	r3, #0
	ldrgt	ip, .L100+64
	str	r3, [ip]
	ldr	ip, .L100+68
	ldr	r3, [ip]
	subs	r3, r3, #1
	movmi	r3, #225
	ldrmi	ip, .L100+68
	str	r3, [ip]
	ldr	ip, .L100+72
	ldr	r3, [ip]
	subs	r3, r3, #1
	movmi	r3, #225
	ldrmi	ip, .L100+72
	mov	lr, #7
	str	r3, [ip]
	mov	r3, #8
	mov	ip, #10
	str	r2, [sp]
	mov	r2, #87
	ldr	r5, .L100+76
	stmib	sp, {r2, ip, lr}
	mov	r2, r3
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L98
.L52:
	mov	ip, #117
	mov	r2, #129
	mov	r0, ip
	mov	r1, r2
	ldr	lr, .L100+80
	ldr	r3, [lr]
	sub	r3, r3, #1
	str	r3, [lr]
	str	ip, [r4]
	str	r2, [fp]
.L53:
	mov	r8, #8
	mov	r6, #14
	mov	r7, #44
	ldr	r3, [r10]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L54
.L56:
	ldr	r0, [r4]
	sub	r0, r0, #1
	str	r0, [r4]
.L55:
	mov	r3, #8
	mov	lr, #14
	mov	ip, #260
	mov	r2, #0
	ldr	r1, [fp]
	stmib	sp, {r2, ip, lr}
	str	r2, [sp]
	mov	r2, r3
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L100+84
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L97:
	cmp	r0, #220
	addle	r0, r0, #13
	strle	r0, [r4]
	cmp	r0, #252
	bls	.L99
.L20:
	mov	ip, #117
	mov	r2, #129
	ldr	lr, .L100+80
	ldr	r3, [lr]
	sub	r3, r3, #1
	mov	r0, ip
	mov	r1, r2
	str	r3, [lr]
	str	ip, [r4]
	str	r2, [fp]
	b	.L21
.L96:
	cmp	r0, #13
	subgt	r0, r0, #13
	strgt	r0, [r4]
	b	.L18
.L95:
	ldr	r2, [fp]
	cmp	r2, #122
	addle	r2, r2, #14
	strle	r2, [fp]
	b	.L17
.L78:
	ldr	r2, .L100+8
	ldrh	r2, [r2]
	tst	r2, #64
	ldr	fp, .L100+4
	beq	.L16
	ldr	r2, [fp]
	cmp	r2, #11
	subgt	r2, r2, #14
	strgt	r2, [fp]
	b	.L16
.L54:
	ldr	r3, [r9]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L56
	ldr	r3, .L100+36
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L56
	mov	r7, #30
	ldr	r3, .L100+16
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L57
.L60:
	ldr	r0, [r4]
	add	r0, r0, #1
	str	r0, [r4]
	b	.L55
.L98:
	mov	r1, #7
	ldr	r2, [r6]
	mov	r3, #8
	str	r1, [sp, #12]
	str	r2, [sp]
	mov	r1, #87
	mov	r2, #10
	ldr	r0, [r4]
	stmib	sp, {r1, r2}
	mov	r2, r3
	ldr	r1, [fp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L52
	ldr	r2, [r7]
	mov	r3, #8
	mov	r1, #7
	str	r2, [sp]
	mov	r6, #101
	mov	r2, #10
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r6, [sp, #4]
	mov	r2, r3
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L52
	ldr	r2, [r8]
	mov	r3, #8
	mov	r1, #7
	str	r2, [sp]
	mov	r2, #10
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r6, [sp, #4]
	mov	r2, r3
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L52
	ldr	r2, .L100+64
	ldr	r2, [r2]
	mov	r3, #8
	mov	r1, #7
	str	r2, [sp]
	mov	r2, #10
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r6, [sp, #4]
	mov	r2, r3
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L52
	ldr	r2, .L100+68
	ldr	r2, [r2]
	mov	r3, #8
	mov	r1, #7
	str	r2, [sp]
	mov	r6, #115
	mov	r2, #10
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r6, [sp, #4]
	mov	r2, r3
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L52
	ldr	r2, .L100+72
	ldr	r2, [r2]
	mov	r3, #8
	mov	r1, #7
	str	r2, [sp]
	mov	r2, #10
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, [fp]
	mov	r2, r3
	str	r6, [sp, #4]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldreq	r0, [r4]
	ldreq	r1, [fp]
	beq	.L53
	b	.L52
.L57:
	ldr	r3, .L100+20
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L60
	ldr	r3, .L100+24
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L60
	mov	r7, #58
	ldr	r3, .L100+40
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L60
	ldr	r3, .L100+44
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp]
	str	r8, [sp, #12]
	mov	r3, r8
	str	r6, [sp, #8]
	str	r7, [sp, #4]
	ldr	r1, [fp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L60
	mov	r1, #42
	mov	r2, #240
	mov	r3, #28
	str	r0, [sp]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, [fp]
	mov	r2, r8
	str	r3, [sp, #4]
	ldr	r0, [r4]
	mov	r3, r8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #117
	movne	ip, #129
	ldrne	r1, .L100+80
	ldrne	r3, [r1]
	subne	r3, r3, #1
	movne	r0, r2
	ldreq	r0, [r4]
	strne	r3, [r1]
	strne	r2, [r4]
	strne	ip, [fp]
	b	.L55
.L101:
	.align	2
.L100:
	.word	buttons
	.word	pY
	.word	oldButtons
	.word	pX
	.word	LA1
	.word	LA2
	.word	LA3
	.word	LB1
	.word	LB2
	.word	LB3
	.word	LC1
	.word	LC2
	.word	A1
	.word	A2
	.word	B1
	.word	B2
	.word	B3
	.word	C1
	.word	C2
	.word	collision
	.word	lives
	.word	win
	.size	updateGame, .-updateGame
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r3, .L104
	sub	sp, sp, #12
	ldr	ip, .L104+4
	ldr	r5, .L104+8
	mov	r1, r4
	mov	r0, r4
	str	r3, [sp]
	mov	r2, #260
	mov	r3, #140
	strb	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r3, #31
	mov	r2, #8
	mov	r1, #35
	mov	r0, #88
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #31
	mov	r2, #8
	mov	r1, #35
	mov	r0, #109
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #10
	mov	r2, #46
	mov	r1, #88
	mov	r0, #78
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #20
	mov	r2, #10
	mov	r1, #69
	mov	r0, #124
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #20
	mov	r2, #10
	mov	r1, #69
	mov	r0, #68
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L105:
	.align	2
.L104:
	.word	1023
	.word	state
	.word	drawRectangle
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
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L108+4
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L109:
	.align	2
.L108:
	.word	mgba_open
	.word	1027
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #1
	mov	ip, #3
	mov	r2, #0
	mov	r9, #117
	mov	r8, #129
	mov	r3, #40
	ldr	r10, .L112
	strb	lr, [r10]
	ldr	r10, .L112+4
	mov	r0, #100
	str	ip, [r10]
	ldr	r10, .L112+8
	str	ip, [r10]
	ldr	r10, .L112+12
	str	ip, [r10]
	ldr	ip, .L112+16
	str	r2, [ip]
	ldr	ip, .L112+20
	str	r2, [ip]
	ldr	ip, .L112+24
	str	r2, [ip]
	ldr	ip, .L112+28
	str	r2, [ip]
	ldr	ip, .L112+32
	str	r2, [ip]
	ldr	r2, .L112+36
	str	r9, [r2]
	ldr	r2, .L112+40
	mov	r7, #80
	str	r9, [r2]
	ldr	r2, .L112+44
	str	r8, [r2]
	ldr	r2, .L112+48
	mov	r6, #120
	str	r8, [r2]
	ldr	r2, .L112+52
	str	r3, [r2]
	ldr	r2, .L112+56
	mov	r1, #70
	str	r3, [r2]
	ldr	r2, .L112+60
	str	r3, [r2]
	ldr	r2, .L112+64
	str	r3, [r2]
	ldr	r2, .L112+68
	mov	r5, #30
	str	r0, [r2]
	mov	r4, #60
	ldr	r2, .L112+72
	mov	lr, #110
	str	r0, [r2]
	mov	fp, #130
	ldr	r2, .L112+76
	str	r0, [r2]
	mov	r0, #20
	ldr	r2, .L112+80
	str	r7, [r2]
	ldr	r2, .L112+84
	str	r7, [r2]
	ldr	r2, .L112+88
	str	r6, [r2]
	ldr	r2, .L112+92
	str	r6, [r2]
	ldr	r2, .L112+96
	str	r1, [r2]
	ldr	r2, .L112+100
	str	r1, [r2]
	ldr	r2, .L112+104
	str	r1, [r2]
	ldr	r1, .L112+108
	ldr	r2, .L112+112
	str	r5, [r1]
	str	r4, [r2]
	ldr	r1, .L112+116
	ldr	r2, .L112+120
	str	lr, [r1]
	str	fp, [r2]
	ldr	r1, .L112+124
	ldr	r2, .L112+128
	ldr	ip, .L112+132
	str	r0, [r1]
	str	r5, [r2]
	ldr	r0, .L112+136
	ldr	r1, .L112+140
	ldr	r2, .L112+144
	str	r3, [ip]
	ldr	r3, .L112+148
	str	r4, [r0]
	str	lr, [r1]
	str	fp, [r2]
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	state
	.word	lives
	.word	LC1
	.word	oldLC1
	.word	win
	.word	LA1
	.word	A1
	.word	oldLA1
	.word	oldA1
	.word	pX
	.word	oldPX
	.word	pY
	.word	oldPY
	.word	LA2
	.word	LB1
	.word	C1
	.word	oldLB1
	.word	LA3
	.word	LC2
	.word	oldLC2
	.word	LB2
	.word	oldLB2
	.word	LB3
	.word	oldLB3
	.word	A2
	.word	oldLA3
	.word	oldA2
	.word	B1
	.word	B2
	.word	B3
	.word	C2
	.word	oldLA2
	.word	oldB1
	.word	oldC1
	.word	oldB2
	.word	oldB3
	.word	oldC2
	.word	drawBG
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"something is wrong with your states... :()\000"
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
	push	{r7, fp, lr}
	ldr	r3, .L144
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L144+4
	ldr	r4, .L144+8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L144+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L144+16
	ldrh	r3, [r4]
	ldr	r6, .L144+20
	ldr	r8, .L144+24
	ldr	fp, .L144+28
	ldr	r10, .L144+32
	ldr	r9, .L144+36
	ldr	r7, .L144+40
.L115:
	strh	r3, [r5]	@ movhi
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrh	r2, [r7, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L116
.L118:
	.word	.L121
	.word	.L120
	.word	.L117
	.word	.L117
.L117:
	mov	lr, pc
	bx	r8
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L115
	ldrh	r2, [r5]
	tst	r2, #8
	beq	.L115
	ldr	r3, .L144+12
	mov	lr, pc
	bx	r3
	b	.L139
.L120:
	mov	lr, pc
	bx	fp
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r10
	ldr	r3, [r9]
	cmp	r3, #0
	bne	.L143
.L123:
	ldr	r3, .L144+44
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L124
.L139:
	ldrh	r3, [r4]
	b	.L115
.L121:
	mov	lr, pc
	bx	r8
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L115
	ldrh	r2, [r5]
	tst	r2, #8
	beq	.L115
	ldr	r3, .L144+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L115
.L124:
	mov	r2, #31
	mov	ip, #3
	mov	r3, #140
	str	r2, [sp]
	strb	ip, [r6]
	mov	r2, #260
	mov	r0, r1
	ldr	ip, .L144+52
	mov	lr, pc
	bx	ip
	ldrh	r3, [r4]
	b	.L115
.L143:
	mov	r3, #992
	mov	r1, #0
	mov	ip, #2
	str	r3, [sp]
	strb	ip, [r6]
	mov	r0, r1
	mov	r3, #140
	mov	r2, #260
	ldr	ip, .L144+52
	mov	lr, pc
	bx	ip
	b	.L123
.L116:
	ldr	r3, .L144+56
	ldr	r0, .L144+60
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L115
.L145:
	.align	2
.L144:
	.word	mgba_open
	.word	1027
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	state
	.word	waitForVBlank
	.word	updateGame
	.word	drawGame
	.word	win
	.word	67109120
	.word	lives
	.word	goToGame
	.word	drawRectangle
	.word	mgba_printf
	.word	.LC0
	.size	main, .-main
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
	mov	r1, #0
	mov	r3, #992
	push	{r4, lr}
	mov	lr, #2
	sub	sp, sp, #8
	ldr	ip, .L148
	str	r3, [sp]
	mov	r0, r1
	mov	r3, #140
	mov	r2, #260
	ldr	r4, .L148+4
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	state
	.word	drawRectangle
	.size	goToWin, .-goToWin
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
	mov	r1, #0
	mov	r3, #31
	push	{r4, lr}
	mov	lr, #3
	sub	sp, sp, #8
	ldr	ip, .L152
	str	r3, [sp]
	mov	r0, r1
	mov	r3, #140
	mov	r2, #260
	ldr	r4, .L152+4
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	state
	.word	drawRectangle
	.size	goToLose, .-goToLose
	.align	2
	.global	drawLog
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLog, %function
drawLog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #8
	mov	r2, #14
	ldr	r4, .L156
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L157:
	.align	2
.L156:
	.word	drawRectangle
	.size	drawLog, .-drawLog
	.align	2
	.global	drawCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCar, %function
drawCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #7
	mov	r2, #10
	ldr	r4, .L160
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	drawRectangle
	.size	drawCar, .-drawCar
	.comm	oldPY,4,4
	.comm	oldPX,4,4
	.comm	pY,4,4
	.comm	pX,4,4
	.comm	logs,4,4
	.comm	win,4,4
	.comm	lives,4,4
	.comm	frameCounter,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	state,1,1
	.comm	oldC2,4,4
	.comm	oldC1,4,4
	.comm	oldB3,4,4
	.comm	oldB2,4,4
	.comm	oldB1,4,4
	.comm	oldA2,4,4
	.comm	oldA1,4,4
	.comm	oldLC2,4,4
	.comm	oldLC1,4,4
	.comm	oldLB3,4,4
	.comm	oldLB2,4,4
	.comm	oldLB1,4,4
	.comm	oldLA3,4,4
	.comm	oldLA2,4,4
	.comm	oldLA1,4,4
	.comm	C2,4,4
	.comm	C1,4,4
	.comm	B3,4,4
	.comm	B2,4,4
	.comm	B1,4,4
	.comm	A2,4,4
	.comm	A1,4,4
	.comm	LC2,4,4
	.comm	LC1,4,4
	.comm	LB3,4,4
	.comm	LB2,4,4
	.comm	LB1,4,4
	.comm	LA3,4,4
	.comm	LA2,4,4
	.comm	LA1,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

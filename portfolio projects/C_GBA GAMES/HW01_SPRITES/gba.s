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
	.file	"gba.c"
	.text
	.align	2
	.global	drawHorizontalLine
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalLine, %function
drawHorizontalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	bxgt	lr
	ldr	ip, .L10
	ldr	ip, [ip]
	rsb	r0, r0, r0, lsl #4
	str	lr, [sp, #-4]!
	add	lr, r1, r0, lsl #4
	add	r0, r2, r0, lsl #4
	add	r1, ip, #2
	add	r2, ip, lr, lsl #1
	add	r1, r1, r0, lsl #1
.L3:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L3
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawHorizontalLine, .-drawHorizontalLine
	.align	2
	.global	drawVerticalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVerticalLine, %function
drawVerticalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	bxgt	lr
	ldr	ip, .L20
	ldr	ip, [ip]
	rsb	r1, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	rsb	lr, r2, r2, lsl #4
	add	r2, r0, r1, lsl #4
	add	r0, r0, lr, lsl #4
	add	r1, ip, #480
	add	r2, ip, r2, lsl #1
	add	r1, r1, r0, lsl #1
.L14:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L14
	ldr	lr, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.size	drawVerticalLine, .-drawVerticalLine
	.align	2
	.global	drawRectangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRectangle, %function
drawRectangle:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r2, #0
	ldrh	ip, [sp, #8]
	ble	.L22
	ldr	lr, .L30
	add	r2, r1, r3
	rsb	r2, r2, r2, lsl #4
	ldr	r1, [lr]
	add	r2, r0, r2, lsl #4
	sub	lr, r3, r3, lsl #4
	add	r4, r4, r0
	add	r1, r1, r2, lsl #1
	lsl	lr, lr, #5
.L24:
	cmp	r3, #0
	addgt	r2, r1, lr
	ble	.L27
.L25:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L25
.L27:
	add	r0, r0, #1
	cmp	r0, r4
	add	r1, r1, #2
	bne	.L24
.L22:
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.size	drawRectangle, .-drawRectangle
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	ldr	r3, [r3]
	add	r2, r3, #76800
.L33:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L33
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	head1
	.syntax unified
	.arm
	.fpu softvfp
	.type	head1, %function
head1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r0, .L96
	mov	r2, r0
	ldr	r1, .L96+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r1]
	add	ip, r4, #8192
	add	r1, r4, #12288
	add	fp, r4, #9856
	add	lr, ip, #1184
	add	r5, ip, #1200
	add	r10, ip, #1680
	strh	r3, [lr, #12]	@ movhi
	add	r7, ip, #2144
	strh	r3, [fp, #12]	@ movhi
	add	r6, ip, #3104
	strh	r3, [lr, #14]	@ movhi
	add	r9, r4, #10816
	strh	r3, [fp, #14]	@ movhi
	add	lr, ip, #4064
	strh	r3, [r5]	@ movhi
	add	r8, r4, #11776
	strh	r3, [r10]	@ movhi
	add	r5, r4, #12736
	strh	r3, [fp, #10]	@ movhi
	add	r10, r1, #928
	add	fp, r1, #924
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r9, #8]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r8, #4]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	add	r5, r4, #13696
	strh	r3, [fp, #2]	@ movhi
	add	r10, r1, #1392
	add	fp, r1, #1872
	strh	r3, [r5]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	strh	r3, [fp, #12]	@ movhi
	strh	r3, [r10, #14]	@ movhi
	add	r10, ip, #2160
	strh	r3, [fp, #14]	@ movhi
	strh	r3, [r10]	@ movhi
	add	r10, ip, #2640
	strh	r3, [r10]	@ movhi
	add	r10, ip, #3120
	strh	r3, [r10]	@ movhi
	add	r10, ip, #3600
	strh	r3, [r10]	@ movhi
	add	fp, r1, #2352
	strh	r0, [r7, #12]	@ movhi
	add	r10, r1, #2832
	strh	r0, [r9, #12]	@ movhi
	strh	r0, [r6, #12]	@ movhi
	strh	r0, [r8, #12]	@ movhi
	strh	r0, [lr, #12]	@ movhi
	strh	r0, [r7, #14]	@ movhi
	add	r7, r1, #3312
	strh	r0, [r9, #14]	@ movhi
	add	r3, r4, #15552
	strh	r0, [r6, #14]	@ movhi
	strh	r0, [r8, #14]	@ movhi
	strh	r0, [lr, #14]	@ movhi
	strh	r0, [fp, #12]	@ movhi
	add	lr, r4, #15616
	strh	r0, [r10, #12]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	sub	sp, sp, #12
	add	r3, r3, #62
	add	r6, lr, #8
.L39:
	strh	r2, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	r6, r3
	strh	r2, [r0]	@ movhi
	bne	.L39
	add	r7, r4, #14592
	add	r6, r4, #14656
	ldr	r2, .L96
	add	r3, r7, #62
	add	r10, r6, #10
.L40:
	strh	r2, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	r3, r10
	strh	r2, [r0]	@ movhi
	bne	.L40
	mov	r10, #130
	ldr	r2, .L96
	add	r0, r6, #4
.L41:
	sub	r3, r0, #2400
.L42:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L42
	add	r10, r10, #1
	cmp	r10, #133
	add	r0, r3, #2
	bne	.L41
	mov	r3, #0
	add	fp, ip, #3104
	add	r0, ip, #4064
	strh	r2, [r9, #10]	@ movhi
	add	ip, r1, #456
	strh	r2, [fp, #10]	@ movhi
	add	r10, r1, #936
	strh	r2, [r8, #10]	@ movhi
	add	r9, r1, #460
	strh	r2, [r0, #10]	@ movhi
	add	r0, r1, #1888
	strh	r2, [ip, #2]	@ movhi
	strh	r2, [r10, #2]	@ movhi
	strh	r2, [r5, #10]	@ movhi
	strh	r2, [r9]	@ movhi
	strh	r2, [r8, #6]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r2, [fp, #8]	@ movhi
	strh	r2, [r8, #8]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	add	r2, r7, #40
	add	r7, r7, #60
.L44:
	strh	r3, [r2]	@ movhi
	add	r0, r2, #480
	add	r2, r2, #2
	cmp	r2, r7
	strh	r3, [r0]	@ movhi
	bne	.L44
	mov	r2, #0
	add	r0, r4, #16384
	add	ip, r1, #3808
	add	r8, r1, #940
	add	r7, r1, #1888
	add	fp, r1, #460
	add	r10, r1, #2848
	add	r9, r0, #680
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r10, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r0, #202]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r0, #204]	@ movhi
	strh	r3, [r0, #206]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [ip, #8]	@ movhi
	strh	r3, [r0, #200]	@ movhi
	add	ip, r0, #200
	strh	r3, [r9]	@ movhi
	add	r3, r0, #188
.L45:
	strh	r2, [r3]	@ movhi
	add	lr, r3, #480
	add	r3, r3, #2
	cmp	ip, r3
	strh	r2, [lr]	@ movhi
	bne	.L45
	mov	r5, #0
	add	ip, r1, #3312
	add	lr, r1, #3792
	add	r3, r4, #16064
	add	r1, r1, #3296
	strh	r2, [ip, #10]	@ movhi
	strh	r2, [lr, #10]	@ movhi
	strh	r2, [r0, #186]	@ movhi
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	r2, [r1, #12]	@ movhi
	strh	r2, [r1, #14]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	add	r2, r3, #2
	add	r3, r3, #12
.L46:
	strh	r5, [r2]	@ movhi
	add	r1, r2, #480
	add	r2, r2, #2
	cmp	r2, r3
	strh	r5, [r1]	@ movhi
	bne	.L46
	mov	r2, #0
	add	r5, r4, #16896
	add	r3, r5, #126
	add	r5, r5, #136
.L47:
	strh	r2, [r3]	@ movhi
	add	lr, r3, #480
	add	ip, r3, #960
	add	r1, r3, #1440
	add	r3, r3, #2
	cmp	r3, r5
	strh	r2, [lr]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r2, [r1]	@ movhi
	bne	.L47
	mov	r2, #0
	add	lr, r4, #19200
	add	r3, lr, #222
	add	r1, lr, #236
.L48:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L48
	add	r3, r0, #3504
	add	r1, r4, #20480
	strh	r2, [r3, #6]	@ movhi
	add	r5, r0, #3984
	strh	r2, [r3, #8]	@ movhi
	add	r6, r1, #1328
	strh	r2, [r3, #10]	@ movhi
	add	r10, r1, #368
	strh	r2, [r3, #12]	@ movhi
	add	r9, r1, #848
	strh	r2, [r3, #14]	@ movhi
	add	r8, r1, #372
	add	r3, r4, #21760
	add	r7, r1, #852
	strh	r2, [r5, #2]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strh	r2, [r5, #6]	@ movhi
	strh	r2, [r5, #8]	@ movhi
	strh	r2, [r10, #2]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [r8]	@ movhi
	strh	r2, [r7]	@ movhi
	strh	r2, [r6, #4]	@ movhi
	mov	r2, r3
	mov	ip, #0
	add	r3, r3, #54
	add	r2, r2, #72
.L49:
	strh	ip, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L49
	mov	r5, #0
	add	r2, r4, #21248
	add	r3, r2, #94
	add	r2, r2, #108
.L50:
	strh	r5, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L50
	add	ip, r0, #3520
	add	r2, r0, #4000
	add	r3, r1, #392
	strh	r5, [ip, #8]	@ movhi
	strh	r5, [r2, #8]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r5, [ip, #10]	@ movhi
	strh	r5, [r2, #10]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	mov	r2, #0
	mov	r5, #110
	add	r6, r4, #25600
	str	r6, [sp]
	add	ip, r6, #60
.L51:
	sub	r3, ip, #3360
.L52:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L52
	add	r5, r5, #1
	cmp	r5, #113
	add	ip, ip, #2
	bne	.L51
	mov	r5, #0
	add	ip, r4, #24576
	add	r3, ip, #1568
	add	r9, r4, #26624
	add	r8, ip, #1088
	strh	r2, [r8]	@ movhi
	add	r6, r1, #3744
	strh	r2, [r3]	@ movhi
	add	r7, r1, #3264
	strh	r2, [r9]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r8, #4]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r9, #4]	@ movhi
	strh	r2, [r8, #6]	@ movhi
	add	r8, ip, #608
	strh	r2, [r3, #6]	@ movhi
	strh	r2, [r9, #6]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [ip, #130]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	add	r8, ip, #612
	strh	r2, [r7, #4]	@ movhi
	str	r9, [sp, #4]
	strh	r2, [r6, #4]	@ movhi
	strh	r2, [ip, #132]	@ movhi
	strh	r2, [r8]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	strh	r2, [r6, #6]	@ movhi
	strh	r2, [ip, #134]	@ movhi
	add	r6, r4, #18432
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r9, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	r2, [r9, #6]	@ movhi
	add	r3, r6, #58
	add	r6, r6, #68
.L54:
	strh	r5, [r3]	@ movhi
	add	r2, r3, #480
	add	r3, r3, #2
	cmp	r6, r3
	strh	r5, [r2]	@ movhi
	bne	.L54
	mov	r5, #0
	add	r3, lr, #250
	add	r2, ip, #154
.L55:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L55
	mov	r2, #0
	add	lr, lr, #252
	add	r3, ip, #156
.L56:
	strh	r2, [lr]	@ movhi
	add	lr, lr, #480
	cmp	lr, r3
	bne	.L56
	mov	r5, #127
	mov	lr, #0
	add	r2, ip, #158
.L57:
	sub	r3, r2, #5248
	sub	r3, r3, #32
.L58:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L58
	add	r5, r5, #1
	cmp	r5, #131
	add	r2, r2, #2
	bne	.L57
	mvn	r3, #32768
	add	lr, r0, #3056
	add	r2, r0, #3536
	strh	r3, [lr, #14]	@ movhi
	add	r5, r0, #4016
	strh	r3, [r2, #14]	@ movhi
	add	lr, r1, #412
	add	r2, r1, #892
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	add	r5, r1, #1360
	strh	r3, [r2, #2]	@ movhi
	add	lr, r1, #1840
	add	r2, r4, #19456
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	add	r5, r0, #3552
	strh	r3, [r2]	@ movhi
	add	lr, r0, #4032
	add	r2, r1, #416
	strh	r3, [r5]	@ movhi
	strh	r3, [lr]	@ movhi
	add	r5, r1, #896
	strh	r3, [r2]	@ movhi
	add	lr, r1, #1376
	add	r2, r1, #1856
	strh	r3, [r5]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	r3, #0
	add	r5, r4, #24064
	add	lr, r5, #200
	add	r5, r5, #210
.L60:
	sub	r2, lr, #4800
.L61:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	lr, r2
	bne	.L61
	add	lr, lr, #2
	cmp	r5, lr
	bne	.L60
	mvn	lr, #32768
	mov	fp, #0
	ldr	r2, .L96
	add	r9, r0, #4032
	add	r8, r1, #428
	add	r7, r1, #908
	add	r6, r1, #1376
	add	r5, r1, #1856
	add	r10, r0, #3552
	strh	lr, [r10, #12]	@ movhi
	strh	lr, [r9, #12]	@ movhi
	strh	lr, [r8]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r6, #12]	@ movhi
	strh	lr, [r5, #12]	@ movhi
	strh	lr, [r10, #14]	@ movhi
	strh	lr, [r9, #14]	@ movhi
	strh	lr, [r8, #2]	@ movhi
	add	r9, r0, #3520
	strh	lr, [r7, #2]	@ movhi
	add	r8, r0, #4000
	add	r7, r1, #384
	strh	lr, [r6, #14]	@ movhi
	strh	lr, [r5, #14]	@ movhi
	add	r6, r1, #388
	strh	r2, [r9]	@ movhi
	add	lr, r0, #3984
	strh	r2, [r8]	@ movhi
	add	r5, r1, #376
	strh	r2, [r7]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	add	r7, r1, #380
	strh	r2, [r9, #4]	@ movhi
	strh	r2, [r8, #4]	@ movhi
	strh	r2, [r6]	@ movhi
	strh	r2, [r9, #6]	@ movhi
	strh	r2, [r8, #6]	@ movhi
	add	r9, r1, #372
	strh	r2, [r6, #2]	@ movhi
	add	r8, r1, #852
	strh	r2, [lr, #10]	@ movhi
	add	r6, r1, #856
	strh	r2, [r5, #2]	@ movhi
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [r7]	@ movhi
	strh	r2, [lr, #14]	@ movhi
	add	lr, r1, #860
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	add	r7, ip, #620
	strh	r2, [r5]	@ movhi
	add	r9, ip, #1088
	strh	r2, [r8, #2]	@ movhi
	add	r5, ip, #1568
	strh	r2, [r6]	@ movhi
	add	r8, ip, #624
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [lr]	@ movhi
	add	r6, ip, #1104
	add	r2, ip, #1584
	add	lr, r4, #25088
	strh	r3, [ip, #142]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [ip, #144]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [ip, #146]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	add	r3, lr, #124
	add	lr, lr, #138
.L63:
	strh	fp, [r3]	@ movhi
	add	r6, r3, #480
	add	r5, r3, #960
	add	r2, r3, #1440
	add	r3, r3, #2
	cmp	r3, lr
	strh	fp, [r6]	@ movhi
	strh	fp, [r5]	@ movhi
	strh	fp, [r2]	@ movhi
	bne	.L63
	mov	r2, #0
	add	r3, r4, #20736
	add	r6, r4, #27136
	add	r3, r3, #182
	add	lr, r6, #22
.L64:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, lr
	bne	.L64
	ldr	r5, [sp]
	add	lr, r5, #120
	add	r9, r5, #132
	mov	r5, #0
	add	r8, ip, #1136
	add	r7, ip, #1616
	add	r3, ip, #2096
	strh	r2, [r8]	@ movhi
	strh	r2, [r7]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r8, #4]	@ movhi
	strh	r2, [r7, #4]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L65:
	sub	r3, lr, #2880
.L66:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L66
	add	lr, lr, #2
	cmp	lr, r9
	bne	.L65
	add	r7, r4, #23296
	ldr	r2, .L96
	add	r3, r7, #24
	add	r7, r7, #34
.L68:
	strh	r2, [r3]	@ movhi
	add	r5, r3, #480
	add	lr, r3, #960
	add	r3, r3, #2
	cmp	r7, r3
	strh	r2, [r5]	@ movhi
	strh	r2, [lr]	@ movhi
	bne	.L68
	ldr	lr, .L96+8
	mov	r2, r6
	mov	r3, lr
	ldr	r7, [sp, #4]
	add	r5, ip, #2064
	strh	lr, [r7, #8]	@ movhi
	strh	lr, [r7, #10]	@ movhi
	strh	lr, [r7, #12]	@ movhi
	strh	lr, [r7, #14]	@ movhi
	strh	lr, [r5]	@ movhi
	add	r7, ip, #2544
	strh	lr, [r5, #2]	@ movhi
	add	r5, ip, #3024
	strh	lr, [r7, #4]	@ movhi
	strh	lr, [r5, #4]	@ movhi
	strh	lr, [r7, #6]	@ movhi
	strh	lr, [r5, #6]	@ movhi
	strh	lr, [r7, #8]	@ movhi
	strh	lr, [r5, #8]	@ movhi
	add	r5, r6, #10
.L69:
	strh	r3, [r2]	@ movhi
	add	lr, r2, #480
	add	r2, r2, #2
	cmp	r5, r2
	strh	r3, [lr]	@ movhi
	bne	.L69
	mov	lr, #0
	add	r5, ip, #3024
	add	r2, r4, #26880
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	add	r3, r2, #228
	add	r2, r2, #244
.L70:
	strh	lr, [r3]	@ movhi
	add	r8, r3, #480
	add	r7, r3, #960
	add	r5, r3, #1440
	add	r3, r3, #2
	cmp	r2, r3
	strh	lr, [r8]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r5]	@ movhi
	bne	.L70
	mov	r2, #0
	add	r7, r4, #27904
	add	r3, r7, #180
	add	r7, r7, #200
.L71:
	strh	r2, [r3]	@ movhi
	add	r5, r3, #480
	add	lr, r3, #960
	add	r3, r3, #2
	cmp	r7, r3
	strh	r2, [r5]	@ movhi
	strh	r2, [lr]	@ movhi
	bne	.L71
	ldr	r3, .L96+8
	add	r5, ip, #2080
	add	r8, ip, #3040
	add	lr, ip, #3520
	strh	r2, [r5, #10]	@ movhi
	add	r7, r1, #1824
	strh	r2, [r6, #10]	@ movhi
	add	r4, r4, #22784
	strh	r2, [r8, #10]	@ movhi
	strh	r2, [lr, #10]	@ movhi
	strh	r2, [r5, #12]	@ movhi
	strh	r2, [r6, #12]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [r5, #14]	@ movhi
	add	r5, r1, #2784
	strh	r2, [r6, #14]	@ movhi
	strh	r2, [r8, #14]	@ movhi
	add	r6, ip, #616
	strh	r2, [lr, #14]	@ movhi
	add	r8, r0, #2576
	strh	r3, [r7, #2]	@ movhi
	add	lr, ip, #1088
	strh	r3, [r4, #2]	@ movhi
	add	r2, ip, #1568
	strh	r3, [r5, #2]	@ movhi
	add	ip, ip, #620
	strh	r3, [r7, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	add	r7, r1, #2800
	strh	r3, [r5, #6]	@ movhi
	add	r4, r0, #1632
	add	r5, r0, #3056
	add	r1, r1, #3280
	add	r0, r0, #2112
	strh	r3, [r6]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r8, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	strh	r3, [r0, #6]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [r0, #8]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	16180
	.word	.LANCHOR0
	.word	13647
	.size	head1, .-head1
	.align	2
	.global	head2
	.syntax unified
	.arm
	.fpu softvfp
	.type	head2, %function
head2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L190
	ldr	r1, [r3]
	add	r3, r1, #7872
	add	r6, r1, #16384
	sub	sp, sp, #20
	add	r2, r3, #30
	add	r0, r6, #158
.L99:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L99
	mov	r0, #0
	add	r3, r3, #32
	add	r2, r6, #160
.L100:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L100
	mov	ip, #113
	mov	r0, #0
	add	r3, r1, #10304
	str	r3, [sp, #4]
	add	r2, r3, #2
.L101:
	sub	r3, r2, #2400
.L102:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L102
	add	ip, ip, #1
	cmp	ip, #116
	add	r2, r2, #2
	bne	.L101
	add	lr, r1, #8192
	add	ip, lr, #1632
	add	r3, r1, #9344
	strh	r0, [r3, #8]	@ movhi
	strh	r0, [ip, #8]	@ movhi
	mov	ip, #113
	ldr	r3, [sp, #4]
	add	r2, r1, #16064
	strh	r0, [r3, #8]	@ movhi
	ldr	r0, .L190+4
	str	r2, [sp, #8]
	add	r2, r2, #2
.L104:
	sub	r3, r2, #5760
.L105:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L105
	add	ip, ip, #1
	cmp	ip, #116
	add	r2, r2, #2
	bne	.L104
	ldr	r0, [sp, #8]
	add	r2, r1, #10752
	ldr	r3, .L190+4
	add	r2, r2, #40
	add	r0, r0, #8
.L107:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L107
	add	r0, r1, #12288
	add	r5, r1, #12224
	add	r9, r0, #1376
	add	fp, r0, #2336
	add	r4, r1, #14144
	add	ip, r1, #15104
	add	r10, r0, #424
	add	r8, r0, #904
	add	r7, r0, #3296
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [fp, #10]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	add	r7, r0, #428
	strh	r3, [r5, #12]	@ movhi
	str	r7, [sp, #12]
	strh	r3, [r7]	@ movhi
	mov	r7, r9
	mov	r2, #0
	add	r10, r0, #908
	strh	r3, [r10]	@ movhi
	add	r8, lr, #3552
	strh	r3, [r9, #12]	@ movhi
	add	r9, r0, #3296
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [fp, #12]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	add	r10, r0, #2352
	strh	r3, [r4, #14]	@ movhi
	add	r7, r0, #1872
	strh	r3, [fp, #14]	@ movhi
	add	r4, r0, #2832
	strh	r3, [ip, #14]	@ movhi
	ldr	fp, [sp, #4]
	add	ip, r0, #3312
	strh	r3, [r9, #14]	@ movhi
	strh	r3, [r7]	@ movhi
	add	r9, lr, #2592
	strh	r3, [r10]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [ip]	@ movhi
	add	r3, r1, #11264
	strh	r2, [fp, #10]	@ movhi
	strh	r2, [r9, #10]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r9, #12]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	strh	r2, [r8, #14]	@ movhi
	ldr	r8, [sp, #12]
	add	r3, r0, #1392
	add	fp, r0, #432
	add	r9, r0, #912
	add	lr, lr, #4048
	strh	r2, [r5, #14]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [lr]	@ movhi
	strh	r2, [fp]	@ movhi
	strh	r2, [r9]	@ movhi
	strh	r2, [fp, #2]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r10, #2]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [sp, #8]
	strh	r2, [r7, #4]	@ movhi
	add	r5, r1, #16000
	strh	r2, [r10, #4]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	strh	r2, [r10, #6]	@ movhi
	strh	r2, [r4, #6]	@ movhi
	strh	r2, [ip, #6]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r2, [ip, #8]	@ movhi
	strh	r2, [ip, #10]	@ movhi
	add	r3, r3, #28
	add	r5, r5, #44
.L108:
	mov	ip, #0	@ movhi
	add	r2, r5, #480
	strh	ip, [r5]	@ movhi
	add	r5, r5, #2
	cmp	r5, r3
	strh	ip, [r2]	@ movhi
	bne	.L108
	mov	lr, #0	@ movhi
	mov	ip, #0
	add	r3, r0, #2320
	add	r2, r0, #2800
	add	r0, r0, #3280
	strh	lr, [r3, #6]	@ movhi
	add	r4, r1, #26368
	strh	lr, [r2, #6]	@ movhi
	strh	lr, [r0, #6]	@ movhi
	strh	lr, [r3, #8]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	strh	lr, [r0, #8]	@ movhi
	strh	lr, [r3, #10]	@ movhi
	strh	lr, [r2, #10]	@ movhi
	strh	lr, [r0, #10]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	add	r3, r1, #16896
	strh	lr, [r2, #12]	@ movhi
	strh	lr, [r0, #12]	@ movhi
	add	r2, r3, #108
	add	r0, r4, #236
.L109:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L109
	mov	r0, #0
	add	r3, r3, #110
	add	r2, r4, #238
.L110:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L110
	add	r2, r6, #1104
	add	ip, r6, #624
	add	r3, r6, #1584
	add	lr, r6, #628
	strh	r0, [ip]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	mov	r0, #0
	add	r5, r1, #23040
	add	r2, r5, #186
	add	ip, r5, #204
.L111:
	sub	r3, r2, #3360
.L112:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L112
	add	r2, r3, #2
	cmp	r2, ip
	bne	.L111
	add	r7, r1, #20736
	ldr	r2, .L190+4
	add	r3, r7, #92
	add	r7, r7, #106
.L113:
	strh	r2, [r3]	@ movhi
	add	lr, r3, #480
	add	ip, r3, #960
	add	r0, r3, #1440
	add	r3, r3, #2
	cmp	r3, r7
	strh	r2, [lr]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r2, [r0]	@ movhi
	bne	.L113
	mov	r3, #0
	add	r0, r1, #20480
	add	ip, r6, #3952
	add	r8, r0, #340
	add	r10, r0, #1296
	add	r9, r0, #1776
	add	r7, r0, #2256
	add	lr, r0, #820
	strh	r3, [ip, #6]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [r10, #6]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [ip, #8]	@ movhi
	add	ip, r0, #344
	strh	r3, [ip]	@ movhi
	add	ip, r0, #824
	strh	r3, [ip]	@ movhi
	add	fp, r0, #332
	strh	r3, [r10, #8]	@ movhi
	add	ip, r0, #336
	strh	r3, [r9, #8]	@ movhi
	add	r10, r0, #812
	strh	r3, [r7, #8]	@ movhi
	add	r9, r0, #816
	add	r7, r1, #28416
	strh	r3, [fp, #2]	@ movhi
	mov	r2, r3
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [lr]	@ movhi
	add	r8, r7, #160
	add	r3, r7, #120
.L114:
	strh	r2, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r8, r3
	strh	r2, [ip]	@ movhi
	bne	.L114
	mov	r9, #104
	mov	lr, #0
	add	ip, r1, #27904
	add	r2, ip, #144
.L117:
	sub	r3, r2, #3360
.L116:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L116
	add	r9, r9, #1
	cmp	r9, #107
	add	r2, r3, #2
	bne	.L117
	mov	r3, #0
	add	lr, r1, #26624
	add	r4, r4, #246
	add	fp, lr, #2
.L118:
	strh	r3, [r4]	@ movhi
	add	r10, r4, #480
	add	r9, r4, #960
	add	r2, r4, #1440
	add	r4, r4, #2
	cmp	fp, r4
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r2]	@ movhi
	bne	.L118
	add	r2, ip, #162
	mov	r3, r2
	mov	r9, #0
	add	ip, ip, #176
.L119:
	strh	r9, [r3], #2	@ movhi
	cmp	ip, r3
	bne	.L119
	add	r4, r1, #24576
	add	r10, r4, #3024
	add	r3, r4, #3504
	strh	r9, [r10]	@ movhi
	strh	r9, [r3]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	strh	r9, [r3, #2]	@ movhi
	strh	r9, [r10, #4]	@ movhi
	mov	r10, #0
	strh	r9, [r3, #4]	@ movhi
	add	r7, r7, #150
.L120:
	sub	r3, r7, #2400
.L121:
	strh	r10, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r7
	bne	.L121
	add	r7, r3, #2
	cmp	r8, r7
	bne	.L120
	mov	r8, #128
	mov	r7, #0
	add	lr, lr, #32
.L122:
	sub	r3, lr, #3360
.L123:
	strh	r7, [r3]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L123
	add	r8, r8, #1
	cmp	r8, #131
	add	lr, lr, #2
	bne	.L122
	mov	r8, #0
	add	r3, r6, #2112
	add	lr, r1, #18944
	strh	r7, [r3, #2]	@ movhi
	strh	r7, [r3, #4]	@ movhi
	add	r3, lr, #34
	add	r7, lr, #48
.L125:
	strh	r8, [r3], #2	@ movhi
	cmp	r7, r3
	bne	.L125
	add	r7, r1, #19456
	ldr	r10, .L190+4
	add	r3, r7, #22
	add	r7, r7, #38
.L126:
	strh	r10, [r3]	@ movhi
	add	fp, r3, #480
	add	r9, r3, #960
	add	r8, r3, #1440
	add	r3, r3, #2
	cmp	r7, r3
	strh	r10, [fp]	@ movhi
	strh	r10, [r9]	@ movhi
	strh	r10, [r8]	@ movhi
	bne	.L126
	mov	r3, #0
	add	r8, r0, #900
	add	r7, r0, #904
	strh	r10, [r8]	@ movhi
	add	r9, r0, #1376
	strh	r10, [r8, #2]	@ movhi
	add	fp, r0, #908
	strh	r10, [r7]	@ movhi
	add	r8, r0, #1856
	strh	r10, [r7, #2]	@ movhi
	add	r7, r0, #2336
	strh	r10, [fp]	@ movhi
	strh	r3, [r9, #4]	@ movhi
	add	r10, r0, #912
	strh	r3, [r8, #4]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r9, #8]	@ movhi
	add	r7, r0, #1392
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	add	r8, r0, #916
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	add	fp, r6, #3088
	strh	r3, [r10]	@ movhi
	add	r9, r6, #3568
	strh	r3, [r7]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	add	r10, r6, #4048
	strh	r3, [r8]	@ movhi
	add	r8, r0, #436
	strh	r3, [r7, #4]	@ movhi
	strh	r3, [fp, #4]	@ movhi
	strh	r3, [r9, #4]	@ movhi
	strh	r3, [r10, #4]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [fp, #6]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r10, #6]	@ movhi
	mov	r10, #104
	strh	r3, [r8, #2]	@ movhi
	add	r7, r1, #25088
	ldr	r3, .L190+8
	add	r9, r7, #80
.L127:
	sub	r8, r9, #2880
.L128:
	strh	r3, [r8]	@ movhi
	add	r8, r8, #480
	cmp	r8, r9
	bne	.L128
	add	r10, r10, #1
	cmp	r10, #107
	add	r9, r8, #2
	bne	.L127
	add	r8, r4, #1552
	add	r9, r4, #1072
	add	r10, r4, #600
	add	fp, r4, #596
	strh	r3, [r4, #118]	@ movhi
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	add	fp, r4, #1088
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9, #8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	add	r10, r4, #1568
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	strh	r3, [r8, #14]	@ movhi
	strh	r3, [fp]	@ movhi
	ldr	r8, .L190+8
	strh	r3, [r10]	@ movhi
.L130:
	sub	r3, r2, #2400
.L131:
	strh	r8, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L131
	add	r2, r3, #2
	cmp	r2, ip
	bne	.L130
	add	r3, r4, #1584
	add	r2, r4, #2544
	add	r10, r4, #1104
	add	ip, r4, #2064
	add	r9, r4, #628
	strh	r8, [r10]	@ movhi
	strh	r8, [r3]	@ movhi
	strh	r8, [ip]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r8, [r10, #2]	@ movhi
	strh	r8, [r3, #2]	@ movhi
	strh	r8, [ip, #2]	@ movhi
	strh	r8, [r2, #2]	@ movhi
	strh	r8, [r10, #4]	@ movhi
	strh	r8, [r3, #4]	@ movhi
	strh	r8, [ip, #4]	@ movhi
	strh	r8, [r2, #4]	@ movhi
	ldr	r2, .L190+8
	strh	r8, [r9]	@ movhi
	add	r3, r7, #118
	add	r7, r7, #128
.L132:
	strh	r2, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r3, r7
	strh	r2, [ip]	@ movhi
	bne	.L132
	mov	r3, #0
	add	r8, r0, #3280
	add	r7, r0, #3760
	add	r9, r0, #2800
	strh	r2, [r4, #152]	@ movhi
	strh	r2, [r9, #10]	@ movhi
	strh	r2, [r8, #10]	@ movhi
	strh	r2, [r7, #10]	@ movhi
	strh	r2, [r4, #154]	@ movhi
	strh	r2, [r9, #12]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	strh	r2, [r7, #12]	@ movhi
	strh	r2, [r4, #156]	@ movhi
	strh	r2, [r9, #14]	@ movhi
	strh	r2, [r8, #14]	@ movhi
	add	r8, r0, #2320
	strh	r2, [r7, #14]	@ movhi
	strh	r2, [r4, #158]	@ movhi
	add	r7, r0, #1856
	strh	r2, [r8, #14]	@ movhi
	add	r8, r0, #2336
	strh	r2, [r7]	@ movhi
	strh	r2, [r8]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	add	r7, r0, #3248
	add	r2, r0, #3728
	add	r8, r4, #604
	strh	r3, [r7, #6]	@ movhi
	mov	ip, r3
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	add	r7, r4, #148
	strh	r3, [r2, #12]	@ movhi
	strh	r3, [r4, #124]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r2, #14]	@ movhi
	strh	r3, [r4, #126]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r4, #120]	@ movhi
	strh	r3, [r4, #122]	@ movhi
	add	r3, r4, #128
.L133:
	strh	ip, [r3]	@ movhi
	add	r2, r3, #480
	add	r3, r3, #2
	cmp	r3, r7
	strh	ip, [r2]	@ movhi
	bne	.L133
	mov	r7, #0
	add	r3, r0, #3760
	strh	ip, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	add	r3, r0, #3280
	strh	ip, [r4, #148]	@ movhi
	add	r2, r5, #248
	strh	ip, [r4, #150]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	add	r3, lr, #24
.L134:
	strh	r7, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L134
	mov	ip, #0
	add	r3, lr, #26
	add	r2, r5, #250
.L135:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L135
	mov	r7, #120
	mov	r4, #0
	add	r2, r1, #23552
	add	ip, r2, #208
.L138:
	sub	r3, ip, #5760
.L137:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L137
	add	r7, r7, #1
	cmp	r7, #124
	add	ip, ip, #2
	bne	.L138
	mov	r7, #120
	mvn	r4, #32768
	add	ip, r1, #22272
	add	ip, ip, #48
.L139:
	sub	r3, ip, #3360
.L140:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L140
	add	r7, r7, #1
	cmp	r7, #124
	add	ip, r3, #2
	bne	.L139
	mov	r4, #0
	add	r3, r1, #18432
	add	r3, r3, #46
	add	ip, r5, #238
.L142:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L142
	mov	r4, #0
	add	r1, r1, #18688
	add	r3, r1, #252
	add	ip, r2, #188
.L143:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L143
	mov	ip, #0
	add	r3, r1, #254
	add	r1, r2, #190
.L144:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L144
	mov	ip, #112
	mov	r1, #0
	add	r2, r2, #192
.L145:
	sub	r3, r2, #5760
.L146:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L146
	add	ip, ip, #1
	cmp	ip, #115
	add	r2, r3, #2
	bne	.L145
	mvn	r3, #32768
	mov	r10, #0
	add	r2, r6, #4000
	add	r1, r6, #3520
	add	r8, r0, #384
	add	r7, r0, #864
	add	r4, r0, #1344
	add	ip, r6, #3040
	add	r9, r0, #388
	add	r0, r0, #868
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r9]	@ movhi
	add	r2, r5, #230
	strh	r3, [r0]	@ movhi
	add	r3, lr, #6
.L148:
	strh	r10, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L148
	mov	r3, #0
	add	lr, lr, #8
	add	r5, r5, #232
.L149:
	strh	r3, [lr]	@ movhi
	add	lr, lr, #480
	cmp	r5, lr
	bne	.L149
	ldr	r3, .L190+8
	add	r2, r6, #3504
	add	r6, r6, #3984
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L191:
	.align	2
.L190:
	.word	.LANCHOR0
	.word	16180
	.word	13647
	.size	head2, .-head2
	.align	2
	.global	head3
	.syntax unified
	.arm
	.fpu softvfp
	.type	head3, %function
head3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L248
	ldr	r0, [r1]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	lr, r0, #12288
	add	r1, r0, #16384
	add	r5, lr, #2784
	add	ip, r0, #14592
	strh	r3, [ip, #4]	@ movhi
	add	r4, r0, #15552
	strh	r3, [r5, #4]	@ movhi
	add	ip, lr, #3744
	add	r5, r1, #612
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	add	r4, r1, #1088
	strh	r3, [r1, #132]	@ movhi
	add	ip, r1, #1568
	strh	r3, [r5]	@ movhi
	add	r5, r0, #18432
	strh	r3, [r4, #4]	@ movhi
	mov	r2, r3
	strh	r3, [ip, #4]	@ movhi
	add	r4, r5, #18
	add	r3, r5, #4
.L193:
	strh	r2, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r3, r4
	strh	r2, [ip]	@ movhi
	bne	.L193
	add	r4, r0, #13632
	ldr	ip, .L248+4
	add	r3, r4, #6
	add	r2, r5, #6
.L194:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L194
	mov	r6, #100
	ldr	ip, .L248+4
	add	r2, r5, #8
.L195:
	sub	r3, r2, #5248
	sub	r3, r3, #32
.L196:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L196
	add	r6, r6, #1
	cmp	r6, #103
	add	r2, r2, #2
	bne	.L195
	mov	r3, #0
	add	r2, r0, #12160
	add	r6, lr, #392
	strh	r3, [r2, #40]	@ movhi
	add	r7, lr, #876
	strh	r3, [r6]	@ movhi
	strh	r3, [r2, #42]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	add	r6, lr, #396
	strh	r3, [r2, #44]	@ movhi
	mov	ip, r3
	strh	r3, [r6]	@ movhi
	add	r2, r5, #14
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	add	r3, r4, #14
.L198:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L198
	mov	r3, #0
	add	r2, r4, #16
	add	ip, r5, #16
.L199:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	ip, r2
	bne	.L199
	add	r6, lr, #3280
	add	ip, lr, #3760
	add	r2, r1, #1072
	add	fp, r1, #604
	strh	r3, [r6, #2]	@ movhi
	add	r4, r1, #1552
	strh	r3, [ip, #2]	@ movhi
	add	lr, r1, #2032
	strh	r3, [r6, #4]	@ movhi
	add	r10, r1, #608
	strh	r3, [ip, #4]	@ movhi
	add	r9, r1, #1088
	strh	r3, [r6, #6]	@ movhi
	add	r8, r1, #1568
	strh	r3, [ip, #6]	@ movhi
	add	r6, r1, #2512
	strh	r3, [fp, #2]	@ movhi
	add	ip, r1, #2992
	strh	r3, [r2, #14]	@ movhi
	add	r2, r0, #19712
	strh	r3, [r4, #14]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [ip, #6]	@ movhi
	strh	r3, [ip, #8]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	mov	r3, r2
	mov	r7, #0
	add	r2, r2, #150
	add	r3, r3, #164
.L200:
	strh	r7, [r2]	@ movhi
	add	lr, r2, #480
	add	ip, r2, #960
	add	r2, r2, #2
	cmp	r3, r2
	strh	r7, [lr]	@ movhi
	strh	r7, [ip]	@ movhi
	bne	.L200
	mov	ip, #0
	add	r3, r0, #21248
	add	r2, r0, #25600
	add	r3, r3, #66
	add	r2, r2, #34
.L201:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L201
	mov	ip, #0
	add	r4, r0, #24064
	add	r2, r4, #110
	add	lr, r4, #124
.L202:
	sub	r3, r2, #2880
.L203:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L203
	add	r2, r3, #2
	cmp	lr, r2
	bne	.L202
	ldr	r3, .L248+4
	add	lr, r0, #20480
	add	r5, lr, #1776
	add	ip, lr, #2256
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	mov	r5, #94
	mvn	ip, #32768
	add	r2, r0, #23552
	add	r2, r2, #156
.L205:
	sub	r3, r2, #2400
.L206:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L206
	add	r5, r5, #1
	cmp	r5, #97
	add	r2, r2, #2
	bne	.L205
	mov	r3, #0
	add	r2, r0, #24576
	add	ip, lr, #3696
	add	r5, lr, #3216
	add	r7, r2, #572
	strh	r3, [r5, #12]	@ movhi
	add	r6, lr, #3232
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r2, #92]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [ip, #14]	@ movhi
	add	r5, lr, #3712
	strh	r3, [r2, #94]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	add	r7, r2, #576
	strh	r3, [r6]	@ movhi
	add	r8, r2, #1040
	strh	r3, [r5]	@ movhi
	add	r6, r2, #568
	strh	r3, [r2, #96]	@ movhi
	add	r5, r2, #1520
	strh	r3, [r7]	@ movhi
	add	r7, r2, #2000
	strh	r3, [ip, #8]	@ movhi
	strh	r3, [r2, #88]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r2, #90]	@ movhi
	add	ip, r2, #3440
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	add	r6, r2, #2480
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	add	r5, r2, #2960
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	mov	r5, r3
	add	r9, r2, #2496
	add	r8, r2, #2976
	add	r7, r2, #3456
	strh	r3, [ip, #14]	@ movhi
	add	r6, r0, #25088
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r7]	@ movhi
	add	ip, r6, #72
	add	r6, r6, #86
.L207:
	sub	r3, ip, #5248
	sub	r3, r3, #32
.L208:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L208
	add	ip, ip, #2
	cmp	r6, ip
	bne	.L207
	mov	r6, #101
	mvn	r5, #32768
	add	ip, r2, #106
.L211:
	sub	r3, ip, #3840
.L210:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L210
	add	r6, r6, #1
	cmp	r6, #104
	add	ip, r3, #2
	bne	.L211
	mov	r5, #0
	add	ip, r4, #158
	add	r4, r4, #182
.L212:
	sub	r3, ip, #3360
.L213:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L213
	add	ip, r3, #2
	cmp	r4, ip
	bne	.L212
	add	r5, r0, #21760
	ldr	ip, .L248+4
	add	r3, r5, #64
	add	r5, r5, #78
.L215:
	strh	ip, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r3, r5
	strh	ip, [r4]	@ movhi
	bne	.L215
	mov	r4, #0
	add	r5, r0, #26112
	add	r3, r5, #2
	add	r5, r5, #28
.L216:
	strh	r4, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r4, [ip]	@ movhi
	bne	.L216
	mov	ip, #0
	add	r3, r2, #1072
	add	r5, r2, #600
	add	r6, r2, #596
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	strh	r4, [r5]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r4, [r5, #2]	@ movhi
	add	r5, r0, #27904
	strh	r4, [r3, #10]	@ movhi
	add	r8, r5, #142
	add	r3, r5, #130
.L217:
	strh	ip, [r3]	@ movhi
	add	r7, r3, #480
	add	r6, r3, #960
	add	r4, r3, #1440
	add	r3, r3, #2
	cmp	r3, r8
	strh	ip, [r7]	@ movhi
	strh	ip, [r6]	@ movhi
	strh	ip, [r4]	@ movhi
	bne	.L217
	mov	ip, #0
	add	r6, r0, #28928
	add	r3, r6, #78
	add	r6, r6, #98
.L218:
	strh	ip, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r6, r3
	strh	ip, [r4]	@ movhi
	bne	.L218
	mov	r4, #0
	add	r3, r5, #156
	add	r5, r5, #172
.L219:
	strh	r4, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r3, r5
	strh	r4, [ip]	@ movhi
	bne	.L219
	mov	ip, #0
	add	r5, r1, #3040
	strh	r4, [r5, #12]	@ movhi
	add	r3, r1, #3520
	add	r5, r1, #4000
	strh	r4, [r3, #14]	@ movhi
	strh	r4, [r5, #14]	@ movhi
	add	r5, r1, #3536
	strh	r4, [r5]	@ movhi
	ldr	r6, .L248+8
	add	r5, r1, #4016
	strh	r4, [r5]	@ movhi
	add	r4, r0, #20224
	strh	r6, [r3, #10]	@ movhi
	strh	r6, [r3, #12]	@ movhi
	add	r3, r4, #160
	add	r4, r4, #174
.L220:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r4
	bne	.L220
	ldr	r4, .L248+8
	mov	r3, r4
	add	r5, r1, #2064
	add	r1, r1, #2544
	strh	r4, [r5, #10]	@ movhi
	add	r7, lr, #3760
	strh	r4, [r1, #10]	@ movhi
	add	r6, r2, #620
	strh	r4, [r5, #12]	@ movhi
	strh	r4, [r1, #12]	@ movhi
	add	r5, r2, #1088
	add	r1, r2, #1568
	strh	ip, [r7]	@ movhi
	strh	ip, [r2, #144]	@ movhi
	strh	ip, [r7, #2]	@ movhi
	strh	ip, [r2, #146]	@ movhi
	add	r7, r2, #624
	strh	ip, [r6]	@ movhi
	strh	ip, [r5, #12]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	strh	ip, [r6, #2]	@ movhi
	add	r6, r2, #1104
	strh	ip, [r5, #14]	@ movhi
	add	r8, r2, #1584
	strh	ip, [r1, #14]	@ movhi
	add	r5, r0, #26624
	strh	ip, [r7]	@ movhi
	add	r1, r2, #3488
	strh	ip, [r6]	@ movhi
	add	r7, r2, #2528
	add	r6, r2, #3008
	strh	ip, [r8]	@ movhi
	strh	ip, [r5, #12]	@ movhi
	strh	ip, [r7, #12]	@ movhi
	strh	ip, [r6, #12]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	strh	ip, [r5, #14]	@ movhi
	strh	ip, [r7, #14]	@ movhi
	strh	ip, [r6, #14]	@ movhi
	strh	ip, [r1, #14]	@ movhi
	add	r1, r2, #2064
	strh	ip, [r1]	@ movhi
	add	r1, r2, #2544
	strh	ip, [r1]	@ movhi
	add	r1, r2, #3024
	strh	ip, [r1]	@ movhi
	add	r1, r2, #3504
	strh	ip, [r1]	@ movhi
	add	r1, r2, #2976
	strh	ip, [r5, #8]	@ movhi
	add	r0, r0, #26880
	strh	ip, [r7, #8]	@ movhi
	add	r8, r2, #3456
	strh	ip, [r6, #8]	@ movhi
	strh	ip, [r5, #10]	@ movhi
	strh	ip, [r7, #10]	@ movhi
	strh	ip, [r6, #10]	@ movhi
	add	r7, r2, #3936
	strh	r4, [r1, #2]	@ movhi
	add	r6, r2, #2992
	strh	r4, [r1, #4]	@ movhi
	add	ip, r2, #3472
	strh	r4, [r1, #6]	@ movhi
	strh	r4, [r1, #8]	@ movhi
	strh	r4, [r1, #10]	@ movhi
	strh	r4, [r1, #12]	@ movhi
	strh	r4, [r1, #14]	@ movhi
	add	r1, r2, #3952
	strh	r4, [r8, #14]	@ movhi
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [ip]	@ movhi
	add	r6, r0, #220
	strh	r4, [r1]	@ movhi
	add	r1, r0, #210
.L221:
	strh	r3, [r1]	@ movhi
	add	r4, r1, #480
	add	ip, r1, #960
	add	r0, r1, #1440
	add	r1, r1, #2
	cmp	r1, r6
	strh	r3, [r4]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L221
	add	r0, r2, #1552
	add	r7, r2, #2032
	add	r1, r2, #2512
	add	r6, r2, #2992
	add	ip, r2, #604
	strh	r3, [r0, #12]	@ movhi
	add	r4, r2, #2528
	strh	r3, [r7, #12]	@ movhi
	add	fp, r2, #1072
	strh	r3, [r1, #12]	@ movhi
	add	r10, r2, #608
	strh	r3, [r6, #12]	@ movhi
	add	r9, r2, #1088
	strh	r3, [ip, #2]	@ movhi
	add	r8, r2, #1568
	add	ip, r2, #3008
	strh	r3, [fp, #14]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	ldr	r1, .L248+8
	strh	r3, [r2, #128]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	strh	r3, [ip, #6]	@ movhi
	add	r0, r5, #2
	add	r7, r5, #12
.L222:
	sub	r3, r0, #2400
.L223:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L223
	add	r0, r3, #2
	cmp	r0, r7
	bne	.L222
	add	lr, lr, #3744
	strh	r1, [lr, #12]	@ movhi
	strh	r1, [r2, #140]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r1, [r2, #142]	@ movhi
	bx	lr
.L249:
	.align	2
.L248:
	.word	.LANCHOR0
	.word	16180
	.word	13647
	.size	head3, .-head3
	.align	2
	.global	head4
	.syntax unified
	.arm
	.fpu softvfp
	.type	head4, %function
head4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L308
	ldr	r1, [r1]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	lr, r1, #12288
	add	r0, r1, #16384
	add	r5, lr, #2784
	add	ip, r1, #14592
	strh	r3, [ip, #4]	@ movhi
	add	r4, r1, #15552
	strh	r3, [r5, #4]	@ movhi
	add	ip, lr, #3744
	add	r5, r0, #612
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	add	r4, r0, #1088
	strh	r3, [r0, #132]	@ movhi
	add	ip, r0, #1568
	strh	r3, [r5]	@ movhi
	add	r5, r1, #18432
	strh	r3, [r4, #4]	@ movhi
	mov	r2, r3
	strh	r3, [ip, #4]	@ movhi
	add	r4, r5, #18
	add	r3, r5, #4
.L251:
	strh	r2, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r4, r3
	strh	r2, [ip]	@ movhi
	bne	.L251
	add	r4, r1, #13632
	ldr	ip, .L308+4
	add	r3, r4, #6
	add	r2, r5, #6
.L252:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L252
	mov	r6, #100
	ldr	ip, .L308+4
	add	r2, r5, #8
.L253:
	sub	r3, r2, #5248
	sub	r3, r3, #32
.L254:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L254
	add	r6, r6, #1
	cmp	r6, #103
	add	r2, r2, #2
	bne	.L253
	mov	r3, #0
	add	r2, r1, #12160
	add	r6, lr, #392
	strh	r3, [r2, #40]	@ movhi
	add	r7, lr, #876
	strh	r3, [r6]	@ movhi
	strh	r3, [r2, #42]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	add	r6, lr, #396
	strh	r3, [r2, #44]	@ movhi
	mov	ip, r3
	strh	r3, [r6]	@ movhi
	add	r2, r5, #14
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	add	r3, r4, #14
.L256:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L256
	mov	r3, #0
	add	r2, r4, #16
	add	ip, r5, #16
.L257:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, ip
	bne	.L257
	add	r6, lr, #3280
	add	ip, lr, #3760
	add	r2, r0, #1072
	add	fp, r0, #604
	strh	r3, [r6, #2]	@ movhi
	add	r4, r0, #1552
	strh	r3, [ip, #2]	@ movhi
	add	lr, r0, #2032
	strh	r3, [r6, #4]	@ movhi
	add	r10, r0, #608
	strh	r3, [ip, #4]	@ movhi
	add	r9, r0, #1088
	strh	r3, [r6, #6]	@ movhi
	add	r8, r0, #1568
	strh	r3, [ip, #6]	@ movhi
	add	r6, r0, #2512
	strh	r3, [fp, #2]	@ movhi
	add	ip, r0, #2992
	strh	r3, [r2, #14]	@ movhi
	add	r2, r1, #19712
	strh	r3, [r4, #14]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [ip, #6]	@ movhi
	strh	r3, [ip, #8]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	mov	r3, r2
	mov	r7, #0
	add	r2, r2, #150
	add	r3, r3, #164
.L258:
	strh	r7, [r2]	@ movhi
	add	lr, r2, #480
	add	ip, r2, #960
	add	r2, r2, #2
	cmp	r2, r3
	strh	r7, [lr]	@ movhi
	strh	r7, [ip]	@ movhi
	bne	.L258
	mov	ip, #0
	add	r3, r1, #21248
	add	r2, r1, #25600
	add	r3, r3, #66
	add	r2, r2, #34
.L259:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L259
	mov	ip, #0
	add	r4, r1, #24064
	add	r2, r4, #110
	add	lr, r4, #124
.L260:
	sub	r3, r2, #2880
.L261:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L261
	add	r2, r2, #2
	cmp	lr, r2
	bne	.L260
	ldr	r3, .L308+4
	add	lr, r1, #20480
	add	r5, lr, #1776
	add	ip, lr, #2256
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	mov	r5, #94
	mvn	ip, #32768
	add	r2, r1, #23552
	add	r2, r2, #156
.L263:
	sub	r3, r2, #2400
.L264:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L264
	add	r5, r5, #1
	cmp	r5, #97
	add	r2, r2, #2
	bne	.L263
	mov	r3, #0
	add	r2, r1, #24576
	add	ip, lr, #3696
	add	r5, lr, #3216
	add	r7, r2, #572
	strh	r3, [r5, #12]	@ movhi
	add	r6, lr, #3232
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r2, #92]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [ip, #14]	@ movhi
	add	r5, lr, #3712
	strh	r3, [r2, #94]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	add	r7, r2, #576
	strh	r3, [r6]	@ movhi
	add	r8, r2, #1040
	strh	r3, [r5]	@ movhi
	add	r6, r2, #568
	strh	r3, [r2, #96]	@ movhi
	add	r5, r2, #1520
	strh	r3, [r7]	@ movhi
	add	r7, r2, #2000
	strh	r3, [ip, #8]	@ movhi
	strh	r3, [r2, #88]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r2, #90]	@ movhi
	add	ip, r2, #3440
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	add	r6, r2, #2480
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	add	r5, r2, #2960
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	mov	r5, r3
	add	r9, r2, #2496
	add	r8, r2, #2976
	add	r7, r2, #3456
	strh	r3, [ip, #14]	@ movhi
	add	r6, r1, #25088
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r7]	@ movhi
	add	ip, r6, #72
	add	r6, r6, #86
.L265:
	sub	r3, ip, #5248
	sub	r3, r3, #32
.L266:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L266
	add	ip, ip, #2
	cmp	ip, r6
	bne	.L265
	mov	r6, #101
	mvn	r5, #32768
	add	ip, r2, #106
.L269:
	sub	r3, ip, #3840
.L268:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L268
	add	r6, r6, #1
	cmp	r6, #104
	add	ip, ip, #2
	bne	.L269
	mov	r5, #0
	add	ip, r4, #158
	add	r4, r4, #182
.L270:
	sub	r3, ip, #3360
.L271:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L271
	add	ip, r3, #2
	cmp	r4, ip
	bne	.L270
	add	r5, r1, #21760
	ldr	ip, .L308+4
	add	r3, r5, #64
	add	r5, r5, #78
.L273:
	strh	ip, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r3, r5
	strh	ip, [r4]	@ movhi
	bne	.L273
	mov	r4, #0
	add	r5, r1, #26112
	add	r3, r5, #2
	add	r5, r5, #28
.L274:
	strh	r4, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r4, [ip]	@ movhi
	bne	.L274
	mov	ip, #0
	add	r3, r2, #1072
	add	r5, r2, #600
	add	r6, r2, #596
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	strh	r4, [r5]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r4, [r5, #2]	@ movhi
	add	r5, r1, #27904
	strh	r4, [r3, #10]	@ movhi
	add	r8, r5, #142
	add	r3, r5, #130
.L275:
	strh	ip, [r3]	@ movhi
	add	r7, r3, #480
	add	r6, r3, #960
	add	r4, r3, #1440
	add	r3, r3, #2
	cmp	r3, r8
	strh	ip, [r7]	@ movhi
	strh	ip, [r6]	@ movhi
	strh	ip, [r4]	@ movhi
	bne	.L275
	mov	ip, #0
	add	r6, r1, #28928
	add	r3, r6, #78
	add	r6, r6, #98
.L276:
	strh	ip, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r6, r3
	strh	ip, [r4]	@ movhi
	bne	.L276
	mov	r4, #0
	add	r3, r5, #156
	add	r5, r5, #172
.L277:
	strh	r4, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r4, [ip]	@ movhi
	bne	.L277
	mov	ip, #0
	add	r5, r0, #3040
	strh	r4, [r5, #12]	@ movhi
	add	r3, r0, #3520
	add	r5, r0, #4000
	strh	r4, [r3, #14]	@ movhi
	strh	r4, [r5, #14]	@ movhi
	add	r5, r0, #3536
	strh	r4, [r5]	@ movhi
	ldr	r6, .L308+8
	add	r5, r0, #4016
	strh	r4, [r5]	@ movhi
	add	r4, r1, #20224
	strh	r6, [r3, #10]	@ movhi
	strh	r6, [r3, #12]	@ movhi
	add	r3, r4, #160
	add	r4, r4, #174
.L278:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r4
	bne	.L278
	ldr	r4, .L308+8
	mov	r3, r4
	add	r5, r0, #2064
	add	r7, lr, #3760
	add	r0, r0, #2544
	strh	r4, [r5, #10]	@ movhi
	add	r6, r2, #620
	strh	r4, [r0, #10]	@ movhi
	strh	r4, [r5, #12]	@ movhi
	strh	r4, [r0, #12]	@ movhi
	add	r5, r2, #1088
	strh	ip, [r7]	@ movhi
	add	r0, r2, #1568
	strh	ip, [r2, #144]	@ movhi
	strh	ip, [r7, #2]	@ movhi
	add	r7, r2, #624
	strh	ip, [r2, #146]	@ movhi
	add	r8, r2, #1584
	strh	ip, [r6]	@ movhi
	add	r9, r2, #1104
	strh	ip, [r5, #12]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strh	ip, [r6, #2]	@ movhi
	strh	ip, [r5, #14]	@ movhi
	add	r6, r1, #26624
	strh	ip, [r0, #14]	@ movhi
	add	r5, r2, #3008
	strh	ip, [r7]	@ movhi
	add	r0, r2, #3488
	add	r7, r2, #2528
	strh	ip, [r9]	@ movhi
	strh	ip, [r8]	@ movhi
	strh	ip, [r6, #12]	@ movhi
	strh	ip, [r7, #12]	@ movhi
	strh	ip, [r5, #12]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strh	ip, [r6, #14]	@ movhi
	strh	ip, [r7, #14]	@ movhi
	strh	ip, [r5, #14]	@ movhi
	strh	ip, [r0, #14]	@ movhi
	add	r0, r2, #2064
	strh	ip, [r0]	@ movhi
	add	r0, r2, #2544
	strh	ip, [r0]	@ movhi
	add	r0, r2, #3024
	strh	ip, [r0]	@ movhi
	add	r0, r2, #3504
	strh	ip, [r0]	@ movhi
	add	r0, r2, #2976
	strh	ip, [r6, #8]	@ movhi
	add	r1, r1, #26880
	strh	ip, [r7, #8]	@ movhi
	add	r8, r2, #3456
	strh	ip, [r5, #8]	@ movhi
	strh	ip, [r6, #10]	@ movhi
	strh	ip, [r7, #10]	@ movhi
	strh	ip, [r5, #10]	@ movhi
	add	r7, r2, #3936
	strh	r4, [r0, #2]	@ movhi
	add	r5, r2, #2992
	strh	r4, [r0, #4]	@ movhi
	add	ip, r2, #3472
	strh	r4, [r0, #6]	@ movhi
	strh	r4, [r0, #8]	@ movhi
	strh	r4, [r0, #10]	@ movhi
	strh	r4, [r0, #12]	@ movhi
	strh	r4, [r0, #14]	@ movhi
	add	r0, r2, #3952
	strh	r4, [r8, #14]	@ movhi
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [r5]	@ movhi
	add	r7, r1, #220
	strh	r4, [ip]	@ movhi
	strh	r4, [r0]	@ movhi
	add	r0, r1, #210
.L279:
	strh	r3, [r0]	@ movhi
	add	r5, r0, #480
	add	r4, r0, #960
	add	ip, r0, #1440
	add	r0, r0, #2
	cmp	r0, r7
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [ip]	@ movhi
	bne	.L279
	add	r0, r2, #2032
	add	r7, r2, #2512
	add	ip, r2, #2992
	add	fp, r2, #1552
	add	r5, r2, #604
	add	r4, r2, #1072
	strh	r3, [fp, #12]	@ movhi
	add	r10, r2, #608
	strh	r3, [r0, #12]	@ movhi
	add	r9, r2, #1088
	strh	r3, [r7, #12]	@ movhi
	add	r8, r2, #1568
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	add	r5, r2, #2528
	add	r4, r2, #3008
	strh	r3, [fp, #14]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [ip, #14]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	ldr	ip, .L308+8
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	add	r0, r6, #2
	add	r7, r6, #12
.L280:
	sub	r3, r0, #2400
.L281:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L281
	add	r0, r0, #2
	cmp	r7, r0
	bne	.L280
	mov	r0, #0
	add	lr, lr, #3744
	strh	ip, [lr, #12]	@ movhi
	strh	ip, [r2, #140]	@ movhi
	strh	ip, [r2, #142]	@ movhi
	add	r3, r1, #198
	add	r1, r1, #218
.L283:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L283
	add	r2, r2, #2992
	strh	r0, [r2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r0, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	strh	r0, [r2, #6]	@ movhi
	bx	lr
.L309:
	.align	2
.L308:
	.word	.LANCHOR0
	.word	16180
	.word	13647
	.size	head4, .-head4
	.align	2
	.global	topMid1
	.syntax unified
	.arm
	.fpu softvfp
	.type	topMid1, %function
topMid1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L346
	ldr	r1, [r2]
	add	lr, r1, #28928
	add	r2, lr, #84
	sub	sp, sp, #12
	add	lr, lr, #124
.L311:
	strh	r3, [r2]	@ movhi
	add	ip, r2, #480
	add	r0, r2, #960
	add	r2, r2, #2
	cmp	r2, lr
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L311
	add	r6, r1, #28672
	add	r0, r6, #1808
	add	r2, r1, #30208
	add	r4, r6, #1328
	add	lr, r6, #2288
	strh	r3, [r0, #6]	@ movhi
	strh	r3, [r0, #8]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	mov	r3, r2
	mov	ip, #0
	add	r2, r2, #240
	add	r3, r3, #250
.L312:
	strh	ip, [r2]	@ movhi
	add	r0, r2, #480
	add	r2, r2, #2
	cmp	r3, r2
	strh	ip, [r0]	@ movhi
	bne	.L312
	add	r3, r6, #2720
	strh	ip, [r3, #14]	@ movhi
	add	r0, r6, #3200
	add	r3, r6, #3216
	add	r2, r6, #2736
	strh	ip, [r0, #14]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	ip, [r3]	@ movhi
	mov	ip, #101
	mov	r3, #0
	add	r0, r1, #34048
	add	r0, r0, #234
.L313:
	sub	r2, r0, #2400
.L314:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L314
	add	ip, ip, #1
	cmp	ip, #104
	add	r0, r2, #2
	bne	.L313
	add	r2, r1, #32768
	add	ip, r1, #36864
	add	lr, ip, #296
	add	fp, ip, #776
	str	ip, [sp, #4]
	add	r10, r2, #1504
	add	r9, r2, #1984
	add	r8, r2, #2464
	add	r7, r2, #2944
	add	r5, r2, #3424
	add	r4, r2, #3904
	strh	r3, [r10, #8]	@ movhi
	strh	r3, [r9, #8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [fp]	@ movhi
	strh	r3, [r10, #10]	@ movhi
	ldr	r10, [sp, #4]
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [fp, #2]	@ movhi
	mov	fp, r10
	mov	r0, #0
	add	ip, r1, #40960
	add	r9, r10, #1248
	add	r8, r10, #1728
	add	r7, r10, #2208
	add	r5, r10, #2688
	add	r4, r10, #3168
	add	lr, r10, #2704
	strh	r3, [r9, #10]	@ movhi
	add	r10, r10, #3184
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	add	r9, fp, #3648
	strh	r3, [r7, #12]	@ movhi
	add	r8, fp, #3664
	strh	r3, [r5, #12]	@ movhi
	add	r7, ip, #528
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	add	r5, ip, #1008
	strh	r3, [lr]	@ movhi
	add	r4, ip, #532
	add	lr, ip, #1012
	strh	r3, [r10]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	add	r10, ip, #536
	strh	r3, [ip, #46]	@ movhi
	add	r9, ip, #1016
	strh	r3, [r8]	@ movhi
	strh	r3, [ip, #48]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [ip, #50]	@ movhi
	add	r8, ip, #1488
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	add	r7, ip, #1968
	strh	r3, [r4]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	add	r4, r1, #42752
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	add	r3, r4, #190
	add	r4, r4, #212
.L316:
	strh	r0, [r3]	@ movhi
	add	lr, r3, #480
	add	r3, r3, #2
	cmp	r3, r4
	strh	r0, [lr]	@ movhi
	bne	.L316
	mov	r3, #0
	add	r4, ip, #1520
	add	lr, ip, #2000
	add	r5, ip, #564
	strh	r0, [r4, #4]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	strh	r0, [r4, #6]	@ movhi
	strh	r0, [lr, #6]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	add	lr, ip, #1040
	add	r5, ip, #568
	strh	r0, [lr, #6]	@ movhi
	ldr	r8, [sp, #4]
	strh	r0, [r4, #6]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r0, [lr, #8]	@ movhi
	strh	r0, [r4, #8]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	add	r5, ip, #572
	strh	r0, [lr, #10]	@ movhi
	add	r7, ip, #576
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [ip, #92]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r0, [lr, #12]	@ movhi
	strh	r0, [ip, #94]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	add	r5, ip, #1056
	strh	r0, [lr, #14]	@ movhi
	add	r4, r8, #2736
	strh	r0, [ip, #96]	@ movhi
	add	lr, r8, #3216
	strh	r0, [r7]	@ movhi
	strh	r0, [r5]	@ movhi
	add	r5, r8, #3696
	strh	r0, [r4, #14]	@ movhi
	strh	r0, [lr, #14]	@ movhi
	add	r4, r8, #2752
	strh	r0, [r5, #14]	@ movhi
	add	lr, r8, #3232
	add	r5, r8, #3712
	strh	r0, [r4]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	add	r4, r1, #38656
	add	lr, r8, #2272
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	add	r4, r1, #32256
	strh	r0, [lr, #4]	@ movhi
	add	r0, r4, #126
	add	r4, r4, #142
.L317:
	strh	r3, [r0]	@ movhi
	add	lr, r0, #480
	add	r0, r0, #2
	cmp	r0, r4
	strh	r3, [lr]	@ movhi
	bne	.L317
	mov	r0, #0
	add	lr, r2, #1040
	add	r4, r2, #1056
	add	r7, r2, #576
	add	r8, r2, #572
	strh	r3, [r8, #2]	@ movhi
	add	r5, r2, #588
	strh	r3, [lr, #14]	@ movhi
	add	r10, r2, #2016
	strh	r3, [r7]	@ movhi
	add	r9, r2, #2496
	strh	r3, [r4]	@ movhi
	add	r8, r2, #2976
	strh	r3, [r7, #2]	@ movhi
	add	fp, r1, #34304
	add	r7, r2, #3456
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [fp, #12]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	add	r5, r2, #1520
	add	r4, r2, #2000
	strh	r3, [fp, #14]	@ movhi
	strh	r3, [r10, #14]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	add	r10, r2, #2480
	strh	r3, [r8, #14]	@ movhi
	add	r9, r2, #2960
	strh	r3, [r7, #14]	@ movhi
	add	r8, r2, #3440
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	add	lr, r1, #36096
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r10, #8]	@ movhi
	add	r4, lr, #140
	strh	r3, [r9, #8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	add	r3, lr, #122
.L318:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r4
	bne	.L318
	mov	r4, #114
	ldr	r0, .L346+4
	add	lr, lr, #132
.L321:
	sub	r3, lr, #2880
.L320:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L320
	add	r4, r4, #1
	cmp	r4, #118
	add	lr, lr, #2
	bne	.L321
	add	r8, r2, #1520
	add	lr, r2, #2000
	strh	r0, [r8, #14]	@ movhi
	ldr	r3, .L346+8
	strh	r0, [lr, #14]	@ movhi
	add	r5, r2, #2480
	add	r7, r2, #2960
	add	r4, r2, #2016
	add	r9, r2, #2496
	add	lr, r2, #2976
	strh	r0, [r5, #14]	@ movhi
	add	r8, r6, #1776
	strh	r0, [r7, #14]	@ movhi
	add	r10, r6, #2736
	strh	r0, [fp]	@ movhi
	strh	r0, [r4]	@ movhi
	strh	r0, [r9]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r0, [fp, #2]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [r9, #2]	@ movhi
	add	r4, r6, #2256
	strh	r0, [lr, #2]	@ movhi
	add	lr, r6, #3216
	strh	r0, [r5, #10]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r5, #12]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r10, #4]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [r10, #6]	@ movhi
	strh	r3, [lr, #6]	@ movhi
	strh	r3, [r10, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	mov	lr, r3
	add	r5, r6, #3696
	add	r7, r2, #1040
	add	r9, r2, #560
	add	r8, r2, #564
	strh	r3, [r5]	@ movhi
	add	r4, r1, #37888
	strh	r3, [r2, #80]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r2, #82]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r2, #84]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r2, #86]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	add	r0, r4, #236
	add	r5, r4, #248
.L322:
	sub	r3, r0, #3840
.L323:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L323
	add	r0, r3, #2
	cmp	r0, r5
	bne	.L322
	ldr	r2, .L346+8
	add	r3, r4, #238
	add	r4, r4, #250
.L324:
	strh	r2, [r3]	@ movhi
	add	lr, r3, #480
	add	r0, r3, #960
	add	r3, r3, #2
	cmp	r4, r3
	strh	r2, [lr]	@ movhi
	strh	r2, [r0]	@ movhi
	bne	.L324
	add	lr, r1, #39424
	ldr	r2, .L346+8
	add	r3, lr, #146
	add	lr, lr, #158
.L325:
	strh	r2, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	lr, r3
	strh	r2, [r0]	@ movhi
	bne	.L325
	add	lr, r1, #40448
	ldr	r3, .L346+8
	add	r2, lr, #84
	add	lr, lr, #96
.L326:
	strh	r3, [r2]	@ movhi
	add	r0, r2, #480
	add	r2, r2, #2
	cmp	r2, lr
	strh	r3, [r0]	@ movhi
	bne	.L326
	add	r2, r1, #41472
	strh	r3, [ip, #64]	@ movhi
	strh	r3, [ip, #66]	@ movhi
	strh	r3, [ip, #68]	@ movhi
	strh	r3, [ip, #70]	@ movhi
	strh	r3, [ip, #72]	@ movhi
	mov	r3, r2
	ldr	r0, .L346+8
	add	r2, r2, #26
	add	r3, r3, #54
.L327:
	strh	r0, [r2]	@ movhi
	add	lr, r2, #480
	add	r2, r2, #2
	cmp	r2, r3
	strh	r0, [lr]	@ movhi
	bne	.L327
	add	r2, r1, #42240
	ldr	r1, .L346+8
	add	r3, r2, #222
	add	r2, r2, #242
.L328:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L328
	ldr	r0, [sp, #4]
	add	r3, r0, #3696
	strh	r1, [r3, #4]	@ movhi
	add	r2, r0, #2240
	strh	r1, [ip, #84]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	strh	r1, [ip, #86]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [ip, #88]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	add	r3, r0, #2720
	strh	r1, [ip, #90]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	mov	r2, r0
	strh	r1, [r3, #6]	@ movhi
	add	lr, r0, #340
	add	ip, r0, #820
	add	r3, r2, #824
	add	r0, r0, #344
	add	r2, r6, #3248
	add	r6, r6, #3728
	strh	r1, [lr, #2]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L347:
	.align	2
.L346:
	.word	.LANCHOR0
	.word	16180
	.word	13647
	.size	topMid1, .-topMid1
	.align	2
	.global	topMid2
	.syntax unified
	.arm
	.fpu softvfp
	.type	topMid2, %function
topMid2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L376
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, [r3]
	add	ip, r0, #29440
	add	r3, ip, #52
	sub	sp, sp, #20
	add	ip, ip, #64
.L349:
	strh	r2, [r3]	@ movhi
	add	r1, r3, #480
	add	r3, r3, #2
	cmp	r3, ip
	strh	r2, [r1]	@ movhi
	bne	.L349
	mov	r1, #0
	add	ip, r0, #28672
	add	r3, ip, #2256
	add	lr, ip, #1776
	strh	r2, [lr, #2]	@ movhi
	add	r4, ip, #2240
	strh	r2, [r3, #2]	@ movhi
	add	r5, ip, #2736
	strh	r2, [lr, #4]	@ movhi
	add	lr, ip, #2720
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r4, #14]	@ movhi
	strh	r2, [lr, #14]	@ movhi
	add	r4, ip, #3200
	strh	r2, [r3]	@ movhi
	add	lr, ip, #3680
	strh	r2, [r5]	@ movhi
	add	r3, r0, #32768
	add	r5, r0, #33280
	strh	r2, [r4, #12]	@ movhi
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [r4, #14]	@ movhi
	strh	r2, [lr, #14]	@ movhi
	strh	r2, [r3, #74]	@ movhi
	strh	r2, [r3, #76]	@ movhi
	add	r2, r5, #34
	add	r5, r5, #52
.L350:
	strh	r1, [r2]	@ movhi
	add	r4, r2, #480
	add	lr, r2, #960
	add	r2, r2, #2
	cmp	r2, r5
	strh	r1, [r4]	@ movhi
	strh	r1, [lr]	@ movhi
	bne	.L350
	mov	r5, #0
	add	r2, r0, #36864
	add	lr, r3, #1520
	add	r4, r3, #2000
	strh	r1, [lr, #4]	@ movhi
	add	r10, r3, #2480
	strh	r1, [r4, #4]	@ movhi
	add	lr, r3, #1488
	add	r4, r3, #1968
	add	r9, r3, #2960
	add	r6, r3, #3440
	add	r7, r2, #308
	add	r8, r3, #3920
	add	fp, r2, #788
	strh	r1, [r10, #4]	@ movhi
	strh	r1, [r9, #4]	@ movhi
	add	r10, r3, #1504
	strh	r1, [r6, #4]	@ movhi
	add	r9, r3, #1984
	strh	r1, [r8, #4]	@ movhi
	add	r6, r3, #2448
	strh	r1, [r7]	@ movhi
	add	r8, r3, #2928
	strh	r1, [fp]	@ movhi
	add	r7, r3, #3408
	strh	r1, [lr, #12]	@ movhi
	strh	r1, [r4, #12]	@ movhi
	strh	r1, [lr, #14]	@ movhi
	add	lr, r0, #36608
	strh	r1, [r4, #14]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r4, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	strh	r1, [r6, #10]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	add	r1, lr, #54
	add	lr, lr, #68
.L351:
	strh	r5, [r1], #2	@ movhi
	cmp	lr, r1
	bne	.L351
	add	lr, r2, #292
	strh	r5, [lr]	@ movhi
	strh	r5, [lr, #2]	@ movhi
	mov	lr, #0
	add	r6, r2, #296
	add	r4, r0, #37120
	strh	r5, [r6]	@ movhi
	add	r1, r4, #42
	add	r7, r4, #52
.L352:
	strh	lr, [r1]	@ movhi
	add	r6, r1, #480
	add	r5, r1, #960
	add	r1, r1, #2
	cmp	r1, r7
	strh	lr, [r6]	@ movhi
	strh	lr, [r5]	@ movhi
	bne	.L352
	ldr	lr, .L376+4
	add	r4, r4, #36
.L353:
	sub	r1, r4, #2400
.L355:
	strh	lr, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r4
	bne	.L355
	add	r4, r1, #2
	cmp	r7, r4
	bne	.L353
	mov	r6, #0
	add	r5, r3, #1984
	strh	lr, [r5, #2]	@ movhi
	add	r1, r3, #3408
	add	r4, r3, #2928
	add	r9, r3, #2464
	add	r8, r3, #2944
	add	r7, r3, #3424
	add	r10, r3, #2448
	add	r5, r0, #30464
	strh	lr, [r9, #2]	@ movhi
	strh	lr, [r8, #2]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	strh	lr, [r10, #12]	@ movhi
	strh	lr, [r4, #12]	@ movhi
	strh	lr, [r1, #12]	@ movhi
	strh	lr, [r10, #14]	@ movhi
	strh	lr, [r4, #14]	@ movhi
	strh	lr, [r1, #14]	@ movhi
	strh	lr, [r9]	@ movhi
	strh	lr, [r8]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r4, #6]	@ movhi
	strh	lr, [r1, #6]	@ movhi
	strh	lr, [r4, #8]	@ movhi
	strh	lr, [r1, #8]	@ movhi
	strh	lr, [r4, #10]	@ movhi
	strh	lr, [r1, #10]	@ movhi
	add	r1, r5, #24
	add	r5, r5, #34
.L357:
	strh	r6, [r1]	@ movhi
	add	r7, r1, #480
	add	r4, r1, #960
	add	lr, r1, #1440
	add	r1, r1, #2
	cmp	r1, r5
	strh	r6, [r7]	@ movhi
	strh	r6, [r4]	@ movhi
	strh	r6, [lr]	@ movhi
	bne	.L357
	mov	r1, #0
	add	r4, ip, #3728
	add	lr, r3, #600
	strh	r6, [r4, #8]	@ movhi
	add	r5, r0, #33792
	strh	r6, [r3, #120]	@ movhi
	strh	r6, [lr]	@ movhi
	strh	r6, [r4, #10]	@ movhi
	strh	r6, [r3, #122]	@ movhi
	add	r4, r3, #604
	strh	r6, [lr, #2]	@ movhi
	add	lr, r3, #1072
	strh	r6, [r4]	@ movhi
	strh	r6, [lr, #10]	@ movhi
	add	lr, r5, #60
	add	r5, r5, #72
.L358:
	strh	r1, [lr]	@ movhi
	add	r4, lr, #480
	add	lr, lr, #2
	cmp	r5, lr
	strh	r1, [r4]	@ movhi
	bne	.L358
	add	r8, r3, #612
	add	r5, r3, #616
	strh	r1, [r3, #134]	@ movhi
	add	r10, ip, #3744
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r3, #136]	@ movhi
	strh	r1, [r5]	@ movhi
	add	r5, ip, #3264
	strh	r1, [r5, #10]	@ movhi
	add	r7, ip, #1344
	strh	r1, [r10, #10]	@ movhi
	add	r6, ip, #1824
	strh	r1, [r5, #12]	@ movhi
	add	fp, r0, #30976
	str	r5, [sp, #4]
	add	r5, ip, #868
	strh	r1, [r10, #12]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [fp, #2]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [fp, #4]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	add	r5, r0, #24576
	str	r10, [sp, #8]
	add	r10, r5, #4000
	add	r5, r5, #4016
	str	r5, [sp, #12]
	add	r8, ip, #392
	add	r5, ip, #872
	strh	r1, [r7, #6]	@ movhi
	add	r9, ip, #396
	strh	r1, [r5]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	add	r8, ip, #876
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r10, #14]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	ldr	r8, [sp, #12]
	ldr	lr, .L376+4
	add	r5, ip, #400
	add	r10, ip, #880
	add	r9, ip, #1360
	strh	r1, [r8]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	str	r9, [sp, #12]
	strh	r1, [r10, #2]	@ movhi
	add	r5, ip, #2784
	strh	r1, [r9, #2]	@ movhi
	add	r8, ip, #2320
	add	r9, ip, #1840
	add	r10, ip, #2800
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r5, #14]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	lr, [r7, #10]	@ movhi
	strh	lr, [r6, #10]	@ movhi
	strh	lr, [fp, #10]	@ movhi
	strh	lr, [r7, #12]	@ movhi
	strh	lr, [r6, #12]	@ movhi
	strh	lr, [fp, #12]	@ movhi
	strh	lr, [r7, #14]	@ movhi
	ldr	r7, [sp, #12]
	strh	lr, [r6, #14]	@ movhi
	strh	lr, [fp, #14]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r9]	@ movhi
	ldr	r7, [sp, #4]
	strh	lr, [r8]	@ movhi
	ldr	r8, [sp, #8]
	add	r1, r0, #32256
	strh	lr, [r5, #10]	@ movhi
	mov	r4, lr
	strh	lr, [r5, #12]	@ movhi
	strh	lr, [r6, #6]	@ movhi
	strh	lr, [fp, #6]	@ movhi
	strh	lr, [r5, #6]	@ movhi
	strh	lr, [r7, #6]	@ movhi
	strh	lr, [r8, #6]	@ movhi
	strh	lr, [r3, #134]	@ movhi
	strh	lr, [r6, #8]	@ movhi
	strh	lr, [fp, #8]	@ movhi
	strh	lr, [r5, #8]	@ movhi
	strh	lr, [r7, #8]	@ movhi
	strh	lr, [r8, #8]	@ movhi
	strh	lr, [r3, #136]	@ movhi
	strh	lr, [r5, #2]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	strh	lr, [r5, #4]	@ movhi
	strh	lr, [r7, #4]	@ movhi
	add	r5, r1, #166
	add	lr, r1, #156
.L359:
	strh	r4, [lr]	@ movhi
	add	r1, lr, #480
	add	lr, lr, #2
	cmp	lr, r5
	strh	r4, [r1]	@ movhi
	bne	.L359
	mov	r1, #0
	add	r5, r3, #608
	add	lr, r3, #604
	add	fp, r3, #612
	strh	r4, [lr, #2]	@ movhi
	add	r9, r3, #2032
	strh	r4, [r5]	@ movhi
	add	r8, r3, #2512
	strh	r4, [r5, #2]	@ movhi
	add	r7, r3, #2992
	strh	r4, [fp]	@ movhi
	add	r6, r3, #3472
	add	lr, r3, #3952
	add	r4, r2, #816
	add	r10, r2, #336
	strh	r1, [r9]	@ movhi
	add	r5, r2, #1312
	strh	r1, [r8]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r6]	@ movhi
	strh	r1, [lr]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	add	r9, r0, #38656
	add	r8, r2, #2272
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	mov	r4, r1
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	mov	r5, #127
	add	r7, r2, #2752
	add	r6, r2, #3232
	strh	r1, [r9, #4]	@ movhi
	add	lr, r0, #42240
	strh	r1, [r8, #4]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r6]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	add	lr, lr, #254
.L360:
	sub	r1, lr, #2400
.L361:
	strh	r4, [r1]	@ movhi
	add	r1, r1, #480
	cmp	lr, r1
	bne	.L361
	add	r5, r5, #1
	cmp	r5, #130
	add	lr, lr, #2
	bne	.L360
	mov	r1, #0
	add	r5, r0, #40960
	add	lr, r0, #42496
	strh	r4, [lr]	@ movhi
	add	r7, r0, #39936
	strh	r4, [lr, #2]	@ movhi
	add	r6, r5, #568
	strh	r4, [lr, #4]	@ movhi
	add	lr, r5, #572
	strh	r4, [r5, #90]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r5, #92]	@ movhi
	strh	r4, [lr]	@ movhi
	add	lr, r7, #128
	add	r7, r7, #154
.L363:
	strh	r1, [lr]	@ movhi
	add	r6, lr, #480
	add	r4, lr, #960
	add	lr, lr, #2
	cmp	r7, lr
	strh	r1, [r6]	@ movhi
	strh	r1, [r4]	@ movhi
	bne	.L363
	ldr	r4, .L376+4
	add	r6, r5, #1040
	add	r7, r0, #41984
	add	r10, r5, #556
	add	r9, r5, #560
	strh	r1, [r10]	@ movhi
	add	r8, r5, #564
	strh	r1, [r7, #12]	@ movhi
	add	fp, r5, #568
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	add	r10, r5, #1520
	strh	r4, [r9]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [r9, #2]	@ movhi
	add	r9, r5, #1504
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r8]	@ movhi
	strh	r4, [r6, #4]	@ movhi
	strh	r4, [r8, #2]	@ movhi
	strh	r4, [r6, #6]	@ movhi
	add	r8, r2, #1728
	strh	r1, [fp]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	add	fp, r2, #2208
	strh	r1, [r10, #8]	@ movhi
	add	r6, r2, #2688
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [r9, #10]	@ movhi
	add	r7, r2, #3168
	strh	r4, [r9, #12]	@ movhi
	strh	r4, [r9, #14]	@ movhi
	strh	r4, [r10]	@ movhi
	add	r9, r2, #3184
	strh	r4, [r10, #2]	@ movhi
	strh	r4, [r10, #4]	@ movhi
	strh	r4, [r10, #6]	@ movhi
	add	r4, r2, #3664
	add	r10, r5, #528
	strh	r1, [r8, #10]	@ movhi
	strh	r1, [fp, #10]	@ movhi
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [fp, #12]	@ movhi
	strh	r1, [r6, #12]	@ movhi
	strh	r1, [r7, #12]	@ movhi
	strh	r1, [r6, #14]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	add	r6, r5, #532
	add	r7, r5, #1012
	strh	r1, [r9]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r1, [r5, #48]	@ movhi
	strh	r1, [r5, #50]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	add	r10, r5, #1488
	ldr	lr, .L376+8
	strh	r1, [r6]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r10, #4]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	add	r6, r5, #536
	add	r7, r5, #540
	strh	r1, [r10, #6]	@ movhi
	strh	r1, [r5, #58]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r5, #60]	@ movhi
	add	r6, r2, #2704
	strh	r1, [r7]	@ movhi
	strh	r1, [r5, #62]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	add	r1, r2, #2224
	strh	lr, [r6, #10]	@ movhi
	add	r7, r5, #1016
	strh	lr, [r9, #10]	@ movhi
	strh	lr, [r4, #10]	@ movhi
	strh	lr, [r6, #12]	@ movhi
	strh	lr, [r9, #12]	@ movhi
	strh	lr, [r4, #12]	@ movhi
	strh	lr, [r6, #8]	@ movhi
	strh	lr, [r9, #8]	@ movhi
	strh	lr, [r4, #8]	@ movhi
	strh	lr, [r5, #56]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	lr, [r6, #4]	@ movhi
	strh	lr, [r9, #4]	@ movhi
	strh	lr, [r4, #4]	@ movhi
	strh	lr, [r5, #52]	@ movhi
	strh	lr, [r1, #6]	@ movhi
	strh	lr, [r6, #6]	@ movhi
	strh	lr, [r9, #6]	@ movhi
	strh	lr, [r4, #6]	@ movhi
	strh	lr, [r5, #54]	@ movhi
	add	r5, r2, #1744
	strh	lr, [r8, #14]	@ movhi
	strh	lr, [fp, #14]	@ movhi
	add	r8, ip, #1776
	strh	lr, [r5]	@ movhi
	add	fp, ip, #2256
	strh	lr, [r1]	@ movhi
	strh	lr, [r5, #2]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	add	r1, r3, #572
	strh	lr, [r6]	@ movhi
	add	r0, r0, #38144
	strh	lr, [r6, #2]	@ movhi
	strh	lr, [r9, #2]	@ movhi
	add	r6, r3, #576
	strh	lr, [r4, #2]	@ movhi
	add	r9, ip, #3232
	strh	lr, [r8, #12]	@ movhi
	add	ip, ip, #3712
	strh	lr, [fp, #12]	@ movhi
	add	r4, r3, #2496
	strh	lr, [r8, #14]	@ movhi
	strh	lr, [fp, #14]	@ movhi
	add	r8, r3, #2976
	strh	lr, [r3, #94]	@ movhi
	add	fp, r3, #2512
	strh	lr, [r1, #2]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	add	r1, r3, #2992
	add	r3, r2, #1264
	add	r2, r2, #1760
	strh	lr, [r6]	@ movhi
	strh	lr, [r9, #8]	@ movhi
	strh	lr, [ip, #8]	@ movhi
	strh	lr, [r9, #10]	@ movhi
	strh	lr, [ip, #10]	@ movhi
	strh	lr, [r4, #14]	@ movhi
	strh	lr, [r8, #14]	@ movhi
	strh	lr, [fp]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	lr, [r3, #14]	@ movhi
	strh	lr, [r5, #14]	@ movhi
	strh	lr, [r0]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r10, #8]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	strh	lr, [r10, #10]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L377:
	.align	2
.L376:
	.word	.LANCHOR0
	.word	16180
	.word	13647
	.size	topMid2, .-topMid2
	.align	2
	.global	topMid3
	.syntax unified
	.arm
	.fpu softvfp
	.type	topMid3, %function
topMid3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r2, .L430
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, [r2]
	add	r5, r1, #28672
	add	ip, r5, #1296
	add	r2, r5, #1776
	add	lr, r1, #30720
	strh	r3, [ip, #8]	@ movhi
	mov	r0, r3
	strh	r3, [r2, #8]	@ movhi
	sub	sp, sp, #12
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	add	r3, lr, #200
	add	lr, lr, #218
.L379:
	strh	r0, [r3]	@ movhi
	add	ip, r3, #480
	add	r2, r3, #960
	add	r3, r3, #2
	cmp	r3, lr
	strh	r0, [ip]	@ movhi
	strh	r0, [r2]	@ movhi
	bne	.L379
	mov	r4, #0
	add	r2, r1, #32768
	ldr	r6, .L430+4
	add	r3, r5, #3680
	add	lr, r1, #33792
	add	r8, r5, #3696
	add	ip, r2, #556
	add	r7, r2, #560
	add	r9, r2, #564
	add	fp, r2, #552
	strh	r0, [r8, #4]	@ movhi
	add	r10, r2, #1504
	strh	r0, [r2, #84]	@ movhi
	strh	r0, [r9]	@ movhi
	strh	r6, [r3, #14]	@ movhi
	add	r9, r2, #1984
	strh	r6, [r2, #78]	@ movhi
	strh	r6, [ip, #2]	@ movhi
	strh	r6, [r8]	@ movhi
	strh	r6, [r2, #80]	@ movhi
	strh	r6, [r7]	@ movhi
	strh	r6, [r8, #2]	@ movhi
	strh	r6, [r2, #82]	@ movhi
	add	r8, r2, #1040
	strh	r6, [r7, #2]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	add	r7, r2, #1520
	strh	r0, [r2, #72]	@ movhi
	add	r6, r2, #2000
	strh	r0, [fp]	@ movhi
	strh	r0, [lr, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r2, #74]	@ movhi
	strh	r0, [fp, #2]	@ movhi
	strh	r0, [lr, #10]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r2, #76]	@ movhi
	add	r3, r1, #35072
	strh	r0, [ip]	@ movhi
	add	ip, r1, #39424
	strh	r0, [lr, #12]	@ movhi
	strh	r0, [lr, #14]	@ movhi
	strh	r0, [r10, #14]	@ movhi
	add	lr, ip, #144
	strh	r0, [r9, #14]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r8, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	add	r0, r3, #176
.L380:
	strh	r4, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, lr
	bne	.L380
	mov	r4, #0
	add	r6, r1, #39936
	add	r0, r6, #102
	add	lr, r6, #124
.L381:
	strh	r4, [r0]	@ movhi
	add	r8, r0, #480
	add	r7, r0, #960
	add	r0, r0, #2
	cmp	lr, r0
	strh	r4, [r8]	@ movhi
	strh	r4, [r7]	@ movhi
	bne	.L381
	mov	r4, #0
	add	r0, r6, #134
.L382:
	strh	r4, [lr]	@ movhi
	add	r7, lr, #480
	add	lr, lr, #2
	cmp	lr, r0
	strh	r4, [r7]	@ movhi
	bne	.L382
	add	r10, r1, #38400
	add	r7, r10, #210
	mov	lr, r7
	mov	r4, #0
	add	r10, r10, #238
.L383:
	strh	r4, [lr]	@ movhi
	add	r9, lr, #480
	add	r8, lr, #960
	add	lr, lr, #2
	cmp	r10, lr
	strh	r4, [r9]	@ movhi
	strh	r4, [r8]	@ movhi
	bne	.L383
	ldr	lr, .L430+4
	mov	r8, lr
	add	r4, r1, #40960
	strh	lr, [r4, #60]	@ movhi
	strh	lr, [r4, #62]	@ movhi
	strh	lr, [r4, #64]	@ movhi
	strh	lr, [r4, #66]	@ movhi
	strh	lr, [r4, #68]	@ movhi
	add	r6, r6, #146
.L384:
	strh	r8, [r0]	@ movhi
	add	r9, r0, #480
	add	lr, r0, #960
	add	r0, r0, #2
	cmp	r0, r6
	strh	r8, [r9]	@ movhi
	strh	r8, [lr]	@ movhi
	bne	.L384
	add	lr, r1, #36864
	add	r0, lr, #1760
	add	r6, lr, #1776
	add	r9, lr, #2240
	strh	r8, [r0, #14]	@ movhi
	strh	r8, [r9, #14]	@ movhi
	strh	r8, [r6]	@ movhi
	mov	r6, #0
	add	r0, lr, #2256
	add	r10, r1, #37120
	strh	r8, [r0]	@ movhi
	add	r0, r10, #76
	add	r10, r10, #86
.L385:
	strh	r6, [r0]	@ movhi
	add	r9, r0, #480
	add	r8, r0, #960
	add	r0, r0, #2
	cmp	r10, r0
	strh	r6, [r9]	@ movhi
	strh	r6, [r8]	@ movhi
	bne	.L385
	mov	r8, #105
	ldr	r0, .L430+8
.L386:
	sub	r6, r7, #3840
.L388:
	strh	r0, [r6]	@ movhi
	add	r6, r6, #480
	cmp	r7, r6
	bne	.L388
	add	r8, r8, #1
	cmp	r8, #108
	add	r7, r7, #2
	bne	.L386
	add	r7, r2, #3920
	add	r8, r2, #2960
	add	fp, r2, #3440
	add	r10, lr, #312
	add	r9, lr, #792
	strh	r0, [r8, #8]	@ movhi
	str	r9, [sp, #4]
	strh	r0, [fp, #8]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r10]	@ movhi
	strh	r0, [r9]	@ movhi
	add	r9, lr, #1264
	strh	r0, [r9, #8]	@ movhi
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [fp, #10]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r10, #2]	@ movhi
	ldr	r10, [sp, #4]
	strh	r0, [r10, #2]	@ movhi
	mov	r10, r9
	mov	r6, #0
	add	r8, lr, #316
	add	fp, lr, #796
	strh	r0, [r9, #10]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r9, #12]	@ movhi
	strh	r0, [r7, #14]	@ movhi
	strh	r0, [r8, #2]	@ movhi
	add	r7, r1, #38144
	strh	r0, [fp, #2]	@ movhi
	strh	r0, [r10, #14]	@ movhi
	add	r10, lr, #800
	strh	r0, [r10]	@ movhi
	add	r8, r2, #2016
	strh	r0, [r7]	@ movhi
	add	fp, r5, #3216
	strh	r0, [r10, #2]	@ movhi
	add	r9, r1, #34304
	add	r10, r5, #3696
	strh	r0, [r7, #2]	@ movhi
	strh	r0, [r7, #4]	@ movhi
	strh	r0, [r7, #6]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r9, #4]	@ movhi
	add	r7, r5, #2272
	strh	r0, [r8, #4]	@ movhi
	strh	r0, [r9, #6]	@ movhi
	strh	r0, [r8, #6]	@ movhi
	strh	r0, [fp, #12]	@ movhi
	strh	r0, [r10, #12]	@ movhi
	strh	r0, [fp, #14]	@ movhi
	strh	r0, [r10, #14]	@ movhi
	add	r10, r1, #30464
	strh	r0, [r10, #4]	@ movhi
	add	r8, r5, #1328
	strh	r0, [r7, #4]	@ movhi
	add	fp, r5, #1808
	strh	r0, [r10, #6]	@ movhi
	add	r10, r1, #31744
	strh	r0, [r7, #6]	@ movhi
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [fp, #10]	@ movhi
	strh	r0, [r8, #12]	@ movhi
	strh	r0, [fp, #12]	@ movhi
	add	r8, r10, #188
	add	r0, r10, #176
.L390:
	strh	r6, [r0]	@ movhi
	add	r7, r0, #480
	add	r0, r0, #2
	cmp	r8, r0
	strh	r6, [r7]	@ movhi
	bne	.L390
	ldr	r6, .L430+4
	add	r0, r2, #114
	add	r10, r2, #136
.L391:
	strh	r6, [r0]	@ movhi
	add	r8, r0, #480
	add	r7, r0, #960
	add	r0, r0, #2
	cmp	r0, r10
	strh	r6, [r8]	@ movhi
	strh	r6, [r7]	@ movhi
	bne	.L391
	mov	r7, #0
	mov	r6, r7
	add	r8, r5, #3264
	add	r5, r5, #3744
	strh	r7, [r8, #12]	@ movhi
	strh	r7, [r5, #12]	@ movhi
	strh	r7, [r8, #14]	@ movhi
	strh	r7, [r5, #14]	@ movhi
	add	r8, r2, #146
.L392:
	strh	r6, [r0]	@ movhi
	add	r7, r0, #480
	add	r5, r0, #960
	add	r0, r0, #2
	cmp	r8, r0
	strh	r6, [r7]	@ movhi
	strh	r6, [r5]	@ movhi
	bne	.L392
	add	r5, r2, #1552
	add	r0, r2, #2032
	add	r10, r2, #592
	add	r8, r2, #1072
	ldr	r7, .L430+4
	strh	r6, [r2, #112]	@ movhi
	strh	r6, [r10]	@ movhi
	strh	r6, [r8]	@ movhi
	strh	r6, [r5]	@ movhi
	strh	r6, [r0]	@ movhi
	add	r5, r9, #18
	add	r0, r9, #32
.L393:
	strh	r7, [r5]	@ movhi
	add	r6, r5, #480
	add	r5, r5, #2
	cmp	r5, r0
	strh	r7, [r6]	@ movhi
	bne	.L393
	mov	r5, #0
	add	r6, r3, #210
	add	r10, r3, #222
.L394:
	strh	r5, [r6]	@ movhi
	add	r8, r6, #480
	add	r7, r6, #960
	add	r6, r6, #2
	cmp	r6, r10
	strh	r5, [r8]	@ movhi
	strh	r5, [r7]	@ movhi
	bne	.L394
	mov	r6, #0
	add	r7, r2, #2512
	add	r2, r2, #2528
	strh	r5, [r7, #14]	@ movhi
	strh	r5, [r2]	@ movhi
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r2, #6]	@ movhi
	add	r9, r9, #50
.L395:
	strh	r6, [r0]	@ movhi
	add	r2, r0, #480
	add	r0, r0, #2
	cmp	r9, r0
	strh	r6, [r2]	@ movhi
	bne	.L395
	mov	r6, #132
	add	r0, r1, #38912
	ldr	r5, .L430+8
	add	r0, r0, #232
.L396:
	sub	r2, r0, #3840
.L397:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L397
	add	r6, r6, #1
	cmp	r6, #136
	add	r0, r0, #2
	bne	.L396
	add	r1, r1, #41472
	ldr	r5, .L430+8
	add	r0, r1, #62
	add	r6, r1, #72
.L400:
	sub	r2, r0, #5248
	sub	r2, r2, #32
.L399:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L399
	add	r0, r0, #2
	cmp	r0, r6
	bne	.L400
	mov	r6, #123
	ldr	r5, .L430+8
	add	r0, r1, #54
.L401:
	sub	r2, r0, #3840
.L402:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L402
	add	r6, r6, #1
	cmp	r6, #127
	add	r0, r2, #2
	bne	.L401
	mov	r0, #0
	mov	r2, r0
	add	r9, lr, #1776
	add	r8, lr, #2256
	add	r7, lr, #2736
	add	r6, lr, #3216
	add	r5, lr, #3696
	strh	r0, [r9, #2]	@ movhi
	strh	r0, [r8, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r4, #82]	@ movhi
	strh	r0, [r9, #4]	@ movhi
	strh	r0, [r8, #4]	@ movhi
	strh	r0, [r7, #4]	@ movhi
	strh	r0, [r6, #4]	@ movhi
	strh	r0, [r5, #4]	@ movhi
	strh	r0, [r4, #84]	@ movhi
	add	r3, r3, #240
	add	ip, ip, #208
.L404:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L404
	mov	r0, #133
	mov	r2, #0
	add	r1, r1, #74
.L405:
	sub	r3, r1, #2400
.L406:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L406
	add	r0, r0, #1
	cmp	r0, #136
	add	r1, r1, #2
	bne	.L405
	add	r0, lr, #2272
	add	r1, lr, #2752
	add	r3, lr, #3232
	add	lr, lr, #3712
	strh	r2, [r0, #8]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [lr, #8]	@ movhi
	strh	r2, [r4, #104]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L431:
	.align	2
.L430:
	.word	.LANCHOR0
	.word	16180
	.word	13647
	.size	topMid3, .-topMid3
	.align	2
	.global	music
	.syntax unified
	.arm
	.fpu softvfp
	.type	music, %function
music:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L450
	ldr	ip, [r3]
	add	r3, ip, #10240
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, r3
	mov	lr, #0
	add	r1, ip, #17408
	add	r0, r1, #32
.L433:
	strh	lr, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L433
	mov	r0, #0
	add	r3, r3, #2
	add	r2, r1, #34
.L434:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L434
	add	r2, ip, #8192
	add	r1, r2, #3488
	add	r3, ip, #12160
	add	lr, ip, #11200
	strh	r0, [lr, #4]	@ movhi
	add	r5, r2, #3024
	strh	r0, [r1, #4]	@ movhi
	add	r4, r2, #3984
	strh	r0, [r3, #4]	@ movhi
	strh	r0, [lr, #6]	@ movhi
	strh	r0, [r1, #6]	@ movhi
	strh	r0, [r3, #6]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r0, [r1, #10]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [lr, #12]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [lr, #14]	@ movhi
	add	lr, r2, #3504
	strh	r0, [r1, #14]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r0, [r4]	@ movhi
	mov	lr, #76
	mov	r0, #0
	add	r1, ip, #19200
	add	r1, r1, #152
.L435:
	sub	r3, r1, #3840
.L436:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L436
	add	lr, lr, #1
	cmp	lr, #80
	add	r1, r1, #2
	bne	.L435
	mov	r4, #0
	add	r3, ip, #16384
	add	r8, r3, #564
	add	r7, r3, #1040
	add	r5, r3, #1520
	add	lr, r3, #2000
	add	r1, r3, #2480
	add	r6, ip, #12288
	strh	r0, [r3, #84]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [r7, #4]	@ movhi
	strh	r0, [r5, #4]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	r0, [r3, #86]	@ movhi
	strh	r0, [r8, #2]	@ movhi
	strh	r0, [r7, #6]	@ movhi
	add	r8, r6, #3696
	strh	r0, [r5, #6]	@ movhi
	add	r7, r6, #2736
	strh	r0, [lr, #6]	@ movhi
	add	lr, r3, #1056
	strh	r0, [r1, #6]	@ movhi
	add	r3, r3, #2016
	strh	r0, [r8, #6]	@ movhi
	add	r5, ip, #17920
	strh	r0, [r7, #14]	@ movhi
	add	r1, ip, #6464
	strh	r0, [lr]	@ movhi
	add	lr, ip, #13184
	strh	r0, [r5]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r3, r1, #14
	add	r0, lr, #14
.L438:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L438
	mov	r3, #0
	add	r1, r1, #16
	add	r0, lr, #16
.L439:
	strh	r3, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r0
	bne	.L439
	mov	r0, #0
	add	r5, r2, #4064
	add	r10, r2, #3104
	add	lr, r2, #4048
	add	r9, ip, #11776
	add	r8, r6, #444
	add	r7, ip, #12736
	strh	r3, [lr, #14]	@ movhi
	add	r1, ip, #4096
	strh	r3, [r8, #2]	@ movhi
	add	lr, r2, #1184
	strh	r3, [r5]	@ movhi
	add	r4, r2, #2144
	strh	r3, [r7]	@ movhi
	add	fp, ip, #10816
	strh	r3, [r10, #2]	@ movhi
	add	r8, ip, #9856
	strh	r3, [r9, #2]	@ movhi
	add	r7, r2, #716
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r10, #4]	@ movhi
	strh	r3, [r9, #4]	@ movhi
	add	r10, r2, #720
	add	r9, r2, #1200
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	add	r5, r1, #3376
	strh	r3, [fp, #4]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	strh	r3, [fp, #6]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [fp, #8]	@ movhi
	add	r4, r1, #3856
	strh	r3, [lr, #8]	@ movhi
	add	fp, r1, #980
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r2, #238]	@ movhi
	add	r8, r1, #1456
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	add	r7, r1, #1936
	strh	r3, [r2, #240]	@ movhi
	add	lr, r6, #2848
	strh	r3, [r10]	@ movhi
	add	r1, r1, #984
	strh	r3, [r9]	@ movhi
	strh	r3, [r2, #242]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	add	r2, r6, #2864
	strh	r3, [r9, #2]	@ movhi
	add	r9, ip, #14656
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	add	r3, r9, #10
	add	r2, r9, #24
.L440:
	strh	r0, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L440
	mov	r1, #0
	add	r6, r6, #1904
	add	r3, ip, #13696
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r6, #4]	@ movhi
	add	r2, r3, #22
	add	r3, r3, #32
.L441:
	strh	r1, [r2]	@ movhi
	add	r0, r2, #480
	add	r2, r2, #2
	cmp	r3, r2
	strh	r1, [r0]	@ movhi
	bne	.L441
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L451:
	.align	2
.L450:
	.word	.LANCHOR0
	.size	music, .-music
	.align	2
	.global	clearScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearScreen, %function
clearScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L457
	ldr	r0, [r3]
	ldr	r1, .L457+4
	add	r2, r0, #43264
	add	r0, r0, #43520
	add	r2, r2, #108
	add	r0, r0, #2
.L453:
	sub	r3, r2, #35840
	sub	r3, r3, #160
.L454:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L454
	add	r2, r3, #2
	cmp	r2, r0
	bne	.L453
	bx	lr
.L458:
	.align	2
.L457:
	.word	.LANCHOR0
	.word	16191
	.size	clearScreen, .-clearScreen
	.align	2
	.global	frame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame1, %function
frame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	head1
	pop	{r4, lr}
	b	topMid1
	.size	frame1, .-frame1
	.align	2
	.global	clearFrame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFrame1, %function
clearFrame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L553+4
	mov	ip, r1
	ldr	r3, .L553
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r3, #8192
	add	r0, r3, #12288
	add	r7, r3, #9856
	add	r2, r4, #1184
	add	r9, r4, #1200
	add	r8, r4, #1680
	strh	r1, [r2, #12]	@ movhi
	add	r5, r4, #2144
	strh	r1, [r7, #12]	@ movhi
	add	lr, r4, #3104
	strh	r1, [r2, #14]	@ movhi
	add	r10, r3, #10816
	strh	r1, [r7, #14]	@ movhi
	add	r2, r4, #4064
	strh	r1, [r9]	@ movhi
	add	r6, r3, #11776
	strh	r1, [r8]	@ movhi
	add	r9, r3, #12736
	add	r8, r0, #928
	strh	r1, [r7, #10]	@ movhi
	add	fp, r0, #924
	strh	r1, [r5, #10]	@ movhi
	add	r7, r3, #13696
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r10, #8]	@ movhi
	strh	r1, [r10, #6]	@ movhi
	strh	r1, [lr, #6]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	add	r9, r0, #1392
	add	r8, r0, #1872
	strh	r1, [fp, #2]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r9, #12]	@ movhi
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [r9, #14]	@ movhi
	strh	r1, [r8, #14]	@ movhi
	add	r9, r4, #2160
	add	r8, r4, #2640
	strh	r1, [r9]	@ movhi
	strh	r1, [r8]	@ movhi
	add	r9, r4, #3120
	add	r8, r4, #3600
	strh	r1, [r9]	@ movhi
	strh	r1, [r8]	@ movhi
	add	r9, r0, #2352
	strh	r1, [r5, #12]	@ movhi
	add	r8, r0, #2832
	strh	r1, [r10, #12]	@ movhi
	strh	r1, [lr, #12]	@ movhi
	strh	r1, [r6, #12]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	strh	r1, [r5, #14]	@ movhi
	add	r5, r0, #3312
	strh	r1, [r10, #14]	@ movhi
	strh	r1, [lr, #14]	@ movhi
	strh	r1, [r6, #14]	@ movhi
	strh	r1, [r2, #14]	@ movhi
	strh	r1, [r9, #12]	@ movhi
	add	r2, r3, #15552
	strh	r1, [r8, #12]	@ movhi
	add	r9, r3, #15616
	strh	r1, [r5, #12]	@ movhi
	add	r2, r2, #62
	add	lr, r9, #8
.L462:
	strh	ip, [r2]	@ movhi
	add	r1, r2, #480
	add	r2, r2, #2
	cmp	lr, r2
	strh	ip, [r1]	@ movhi
	bne	.L462
	add	ip, r3, #14592
	add	r8, r3, #14656
	ldr	r1, .L553+4
	add	r2, ip, #62
	add	r5, r8, #10
.L463:
	strh	r1, [r2]	@ movhi
	add	lr, r2, #480
	add	r2, r2, #2
	cmp	r5, r2
	strh	r1, [lr]	@ movhi
	bne	.L463
	mov	r5, #130
	ldr	r1, .L553+4
	add	lr, r8, #4
.L464:
	sub	r2, lr, #2400
.L465:
	strh	r1, [r2]	@ movhi
	add	r2, r2, #480
	cmp	lr, r2
	bne	.L465
	add	r5, r5, #1
	cmp	r5, #133
	add	lr, lr, #2
	bne	.L464
	add	fp, r4, #3104
	add	r2, r4, #4064
	strh	r1, [r10, #10]	@ movhi
	add	r5, r0, #456
	strh	r1, [fp, #10]	@ movhi
	add	r10, r0, #1888
	strh	r1, [r6, #10]	@ movhi
	add	r4, r0, #936
	strh	r1, [r2, #10]	@ movhi
	add	lr, r0, #460
	ldr	r2, .L553+4
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [lr]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [fp, #8]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	add	r1, ip, #40
	add	ip, ip, #60
.L467:
	strh	r2, [r1]	@ movhi
	add	lr, r1, #480
	add	r1, r1, #2
	cmp	r1, ip
	strh	r2, [lr]	@ movhi
	bne	.L467
	add	ip, r3, #16384
	add	r1, r0, #460
	strh	r2, [r1, #2]	@ movhi
	add	lr, r0, #3808
	add	r5, r0, #940
	add	r4, r0, #1888
	add	r10, r0, #2848
	add	r6, ip, #680
	ldr	r1, .L553+4
	strh	r2, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r2, [r7, #12]	@ movhi
	strh	r2, [r4, #12]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	strh	r2, [r4, #10]	@ movhi
	strh	r2, [r8, #10]	@ movhi
	strh	r2, [r10, #10]	@ movhi
	strh	r2, [r9, #10]	@ movhi
	strh	r2, [lr, #10]	@ movhi
	strh	r2, [ip, #202]	@ movhi
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [ip, #204]	@ movhi
	strh	r2, [ip, #206]	@ movhi
	strh	r2, [r9, #8]	@ movhi
	strh	r2, [lr, #8]	@ movhi
	strh	r2, [ip, #200]	@ movhi
	add	lr, ip, #200
	strh	r2, [r6]	@ movhi
	add	r2, ip, #188
.L468:
	strh	r1, [r2]	@ movhi
	add	r4, r2, #480
	add	r2, r2, #2
	cmp	lr, r2
	strh	r1, [r4]	@ movhi
	bne	.L468
	add	lr, r0, #3312
	add	r4, r0, #3792
	add	r2, r3, #16064
	add	r0, r0, #3296
	ldr	r5, .L553+4
	strh	r1, [lr, #10]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	strh	r1, [ip, #186]	@ movhi
	strh	r1, [r4, #12]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r1, [r0, #10]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	strh	r1, [r0, #14]	@ movhi
	strh	r1, [lr]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	add	r1, r2, #2
	add	r2, r2, #12
.L469:
	strh	r5, [r1]	@ movhi
	add	r0, r1, #480
	add	r1, r1, #2
	cmp	r1, r2
	strh	r5, [r0]	@ movhi
	bne	.L469
	add	r5, r3, #16896
	ldr	r1, .L553+4
	add	r2, r5, #126
	add	r5, r5, #136
.L470:
	strh	r1, [r2]	@ movhi
	add	r4, r2, #480
	add	lr, r2, #960
	add	r0, r2, #1440
	add	r2, r2, #2
	cmp	r2, r5
	strh	r1, [r4]	@ movhi
	strh	r1, [lr]	@ movhi
	strh	r1, [r0]	@ movhi
	bne	.L470
	add	r4, r3, #19200
	ldr	r1, .L553+4
	add	r2, r4, #222
	add	r0, r4, #236
.L471:
	strh	r1, [r2], #2	@ movhi
	cmp	r0, r2
	bne	.L471
	add	r0, r3, #20480
	add	lr, ip, #3504
	add	r5, ip, #3984
	add	r6, r0, #1328
	add	r2, r3, #21760
	add	r10, r0, #368
	add	r9, r0, #848
	add	r8, r0, #372
	add	r7, r0, #852
	strh	r1, [lr, #6]	@ movhi
	strh	r1, [lr, #8]	@ movhi
	strh	r1, [lr, #10]	@ movhi
	strh	r1, [lr, #12]	@ movhi
	strh	r1, [lr, #14]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	mov	r1, r2
	ldr	lr, .L553+4
	add	r2, r2, #54
	add	r1, r1, #72
.L472:
	strh	lr, [r2], #2	@ movhi
	cmp	r1, r2
	bne	.L472
	add	r1, r3, #21248
	ldr	r6, .L553+4
	add	r2, r1, #94
	add	r1, r1, #108
.L473:
	strh	r6, [r2], #2	@ movhi
	cmp	r1, r2
	bne	.L473
	add	lr, ip, #3520
	add	r1, ip, #4000
	add	r2, r0, #392
	strh	r6, [lr, #8]	@ movhi
	strh	r6, [r1, #8]	@ movhi
	strh	r6, [r2]	@ movhi
	strh	r6, [lr, #10]	@ movhi
	strh	r6, [r1, #10]	@ movhi
	strh	r6, [r2, #2]	@ movhi
	mov	r6, #110
	add	r5, r3, #25600
	ldr	r1, .L553+4
	add	lr, r5, #60
.L474:
	sub	r2, lr, #3360
.L475:
	strh	r1, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, lr
	bne	.L475
	add	r6, r6, #1
	cmp	r6, #113
	add	lr, r2, #2
	bne	.L474
	add	lr, r3, #24576
	add	r2, lr, #1568
	add	r6, r3, #26624
	add	r9, lr, #1088
	strh	r1, [r9]	@ movhi
	add	r8, r0, #3264
	strh	r1, [r2]	@ movhi
	add	r7, r0, #3744
	strh	r1, [r6]	@ movhi
	add	r10, lr, #608
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r9, #4]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r9, #6]	@ movhi
	add	r9, lr, #612
	strh	r1, [r2, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [lr, #130]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [lr, #132]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r8, #6]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	add	r8, r3, #18432
	strh	r1, [lr, #134]	@ movhi
	ldr	r7, .L553+4
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	add	r2, r8, #58
	add	r8, r8, #68
.L477:
	strh	r7, [r2]	@ movhi
	add	r1, r2, #480
	add	r2, r2, #2
	cmp	r2, r8
	strh	r7, [r1]	@ movhi
	bne	.L477
	ldr	r7, .L553+4
	add	r2, r4, #250
	add	r1, lr, #154
.L478:
	strh	r7, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r1, r2
	bne	.L478
	ldr	r1, .L553+4
	add	r4, r4, #252
	add	r2, lr, #156
.L479:
	strh	r1, [r4]	@ movhi
	add	r4, r4, #480
	cmp	r4, r2
	bne	.L479
	mov	r7, #127
	ldr	r4, .L553+4
	add	r1, lr, #158
.L480:
	sub	r2, r1, #5248
	sub	r2, r2, #32
.L481:
	strh	r4, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L481
	add	r7, r7, #1
	cmp	r7, #131
	add	r1, r2, #2
	bne	.L480
	add	r1, ip, #3056
	add	r2, ip, #3536
	strh	r4, [r1, #14]	@ movhi
	add	r7, ip, #4016
	strh	r4, [r2, #14]	@ movhi
	add	r1, r0, #412
	add	r2, r0, #892
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	add	r7, r0, #1360
	strh	r4, [r2, #2]	@ movhi
	add	r1, r0, #1840
	add	r2, r3, #19456
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [r1, #14]	@ movhi
	add	r7, ip, #3552
	strh	r4, [r2]	@ movhi
	add	r1, ip, #4032
	add	r2, r0, #416
	strh	r4, [r7]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r7, r0, #896
	strh	r4, [r2]	@ movhi
	add	r1, r0, #1376
	add	r2, r0, #1856
	strh	r4, [r7]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r7, r3, #24064
	strh	r4, [r2]	@ movhi
	ldr	r2, .L553+4
	add	r4, r7, #200
	add	r7, r7, #210
.L483:
	sub	r1, r4, #4800
.L484:
	strh	r2, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r4, r1
	bne	.L484
	add	r4, r4, #2
	cmp	r7, r4
	bne	.L483
	add	r1, ip, #3552
	add	r10, ip, #4032
	add	fp, r0, #428
	add	r8, r0, #908
	add	r9, r0, #1376
	add	r7, r0, #1856
	strh	r2, [r1, #12]	@ movhi
	add	r4, ip, #3520
	strh	r2, [r10, #12]	@ movhi
	strh	r2, [fp]	@ movhi
	strh	r2, [r8]	@ movhi
	strh	r2, [r9, #12]	@ movhi
	strh	r2, [r7, #12]	@ movhi
	strh	r2, [r1, #14]	@ movhi
	strh	r2, [r10, #14]	@ movhi
	add	r1, ip, #4000
	strh	r2, [fp, #2]	@ movhi
	add	r10, r0, #384
	strh	r2, [r8, #2]	@ movhi
	add	fp, r0, #388
	strh	r2, [r9, #14]	@ movhi
	add	r8, ip, #3984
	strh	r2, [r7, #14]	@ movhi
	add	r9, r0, #376
	add	r7, r0, #380
	strh	r2, [r4]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [r10]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [r10, #2]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	add	r10, r0, #372
	strh	r2, [r1, #4]	@ movhi
	strh	r2, [fp]	@ movhi
	strh	r2, [r4, #6]	@ movhi
	strh	r2, [r1, #6]	@ movhi
	add	r4, r0, #852
	strh	r2, [fp, #2]	@ movhi
	add	r1, r0, #856
	strh	r2, [r8, #10]	@ movhi
	add	fp, r0, #860
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	strh	r2, [r7]	@ movhi
	strh	r2, [r8, #14]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	add	r8, lr, #620
	add	r7, lr, #1088
	strh	r2, [r10, #2]	@ movhi
	strh	r2, [r9]	@ movhi
	add	r10, lr, #1568
	strh	r2, [r4, #2]	@ movhi
	add	r9, lr, #624
	strh	r2, [r1]	@ movhi
	add	r4, lr, #1104
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [fp]	@ movhi
	add	r1, lr, #1584
	strh	r2, [lr, #142]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r7, #14]	@ movhi
	add	r8, r3, #25088
	ldr	r7, .L553+4
	strh	r2, [r10, #14]	@ movhi
	strh	r2, [lr, #144]	@ movhi
	strh	r2, [r9]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [lr, #146]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r2, [r4, #6]	@ movhi
	strh	r2, [r1, #6]	@ movhi
	strh	r2, [r4, #8]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r2, [r4, #10]	@ movhi
	strh	r2, [r1, #10]	@ movhi
	add	r2, r8, #124
	add	r1, r8, #138
.L486:
	strh	r7, [r2]	@ movhi
	add	r9, r2, #480
	add	r8, r2, #960
	add	r4, r2, #1440
	add	r2, r2, #2
	cmp	r1, r2
	strh	r7, [r9]	@ movhi
	strh	r7, [r8]	@ movhi
	strh	r7, [r4]	@ movhi
	bne	.L486
	add	r2, r3, #20736
	add	r8, r3, #27136
	ldr	r1, .L553+4
	add	r2, r2, #182
	add	r4, r8, #22
.L487:
	strh	r1, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r4, r2
	bne	.L487
	add	r10, lr, #1136
	add	r9, lr, #1616
	add	r2, lr, #2096
	strh	r1, [r10]	@ movhi
	ldr	r7, .L553+4
	strh	r1, [r9]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r10, #4]	@ movhi
	strh	r1, [r9, #4]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	add	r4, r5, #120
	add	r5, r5, #132
.L488:
	sub	r2, r4, #2880
.L489:
	strh	r7, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r4
	bne	.L489
	add	r4, r2, #2
	cmp	r5, r4
	bne	.L488
	add	r7, r3, #23296
	ldr	r4, .L553+4
	add	r2, r7, #24
	add	r7, r7, #34
.L491:
	strh	r4, [r2]	@ movhi
	add	r5, r2, #480
	add	r1, r2, #960
	add	r2, r2, #2
	cmp	r7, r2
	strh	r4, [r5]	@ movhi
	strh	r4, [r1]	@ movhi
	bne	.L491
	mov	r1, r8
	add	r2, lr, #2064
	strh	r4, [r6, #8]	@ movhi
	add	r5, lr, #2544
	strh	r4, [r6, #10]	@ movhi
	strh	r4, [r6, #12]	@ movhi
	strh	r4, [r6, #14]	@ movhi
	strh	r4, [r2]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	add	r2, lr, #3024
	strh	r4, [r5, #4]	@ movhi
	strh	r4, [r2, #4]	@ movhi
	strh	r4, [r5, #6]	@ movhi
	strh	r4, [r2, #6]	@ movhi
	strh	r4, [r5, #8]	@ movhi
	strh	r4, [r2, #8]	@ movhi
	ldr	r2, .L553+4
	add	r5, r8, #10
.L492:
	strh	r2, [r1]	@ movhi
	add	r4, r1, #480
	add	r1, r1, #2
	cmp	r1, r5
	strh	r2, [r4]	@ movhi
	bne	.L492
	add	r5, lr, #3024
	add	r1, r3, #26880
	ldr	r4, .L553+4
	strh	r2, [r5, #10]	@ movhi
	strh	r2, [r5, #12]	@ movhi
	strh	r2, [r5, #14]	@ movhi
	add	r2, r1, #228
	add	r1, r1, #244
.L493:
	strh	r4, [r2]	@ movhi
	add	r7, r2, #480
	add	r6, r2, #960
	add	r5, r2, #1440
	add	r2, r2, #2
	cmp	r1, r2
	strh	r4, [r7]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [r5]	@ movhi
	bne	.L493
	add	r6, r3, #27904
	ldr	r1, .L553+4
	add	r2, r6, #180
	add	r6, r6, #200
.L494:
	strh	r1, [r2]	@ movhi
	add	r5, r2, #480
	add	r4, r2, #960
	add	r2, r2, #2
	cmp	r2, r6
	strh	r1, [r5]	@ movhi
	strh	r1, [r4]	@ movhi
	bne	.L494
	add	r2, lr, #2080
	add	r7, lr, #3040
	add	r5, lr, #3520
	strh	r1, [r2, #10]	@ movhi
	add	r4, r0, #1824
	strh	r1, [r8, #10]	@ movhi
	add	r6, r0, #2784
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [r7, #12]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	strh	r1, [r2, #14]	@ movhi
	add	r2, r3, #22784
	strh	r1, [r8, #14]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	strh	r1, [r5, #14]	@ movhi
	add	r7, lr, #616
	strh	r1, [r4, #2]	@ movhi
	add	r5, lr, #1088
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r4, #6]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	add	r4, lr, #1568
	add	r2, r0, #2800
	add	lr, lr, #620
	add	r0, r0, #3280
	strh	r1, [r6, #6]	@ movhi
	add	r8, ip, #2576
	strh	r1, [r7]	@ movhi
	add	r6, ip, #1632
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	add	r7, ip, #3056
	strh	r1, [r4, #10]	@ movhi
	add	ip, ip, #2112
	strh	r1, [lr]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	add	lr, r3, #28928
	strh	r1, [r4, #12]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	ldr	r2, .L553+4
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [ip, #6]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	strh	r1, [ip, #8]	@ movhi
	add	r1, lr, #84
	add	lr, lr, #124
.L495:
	strh	r2, [r1]	@ movhi
	add	ip, r1, #480
	add	r0, r1, #960
	add	r1, r1, #2
	cmp	r1, lr
	strh	r2, [ip]	@ movhi
	strh	r2, [r0]	@ movhi
	bne	.L495
	add	r0, r3, #28672
	add	ip, r0, #1808
	add	r1, r3, #30208
	add	r5, r0, #1328
	add	r4, r0, #2288
	strh	r2, [ip, #6]	@ movhi
	strh	r2, [ip, #8]	@ movhi
	strh	r2, [ip, #10]	@ movhi
	strh	r2, [r5, #12]	@ movhi
	strh	r2, [ip, #12]	@ movhi
	strh	r2, [r4, #12]	@ movhi
	mov	r2, r1
	ldr	lr, .L553+4
	add	r1, r1, #240
	add	r2, r2, #250
.L496:
	strh	lr, [r1]	@ movhi
	add	ip, r1, #480
	add	r1, r1, #2
	cmp	r1, r2
	strh	lr, [ip]	@ movhi
	bne	.L496
	add	r2, r0, #2720
	strh	lr, [r2, #14]	@ movhi
	add	ip, r0, #3200
	add	r1, r0, #2736
	add	r2, r0, #3216
	strh	lr, [ip, #14]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	lr, [r2]	@ movhi
	mov	lr, #101
	add	ip, r3, #34048
	ldr	r1, .L553+4
	add	ip, ip, #234
.L497:
	sub	r2, ip, #2400
.L498:
	strh	r1, [r2]	@ movhi
	add	r2, r2, #480
	cmp	ip, r2
	bne	.L498
	add	lr, lr, #1
	cmp	lr, #104
	add	ip, ip, #2
	bne	.L497
	add	lr, r3, #36864
	add	ip, r3, #32768
	add	r5, ip, #1504
	add	fp, ip, #1984
	add	r6, ip, #2464
	add	r4, ip, #2944
	add	r8, ip, #3424
	add	r10, ip, #3904
	add	r9, lr, #296
	add	r7, lr, #776
	strh	r1, [r5, #8]	@ movhi
	add	r2, r3, #40960
	strh	r1, [fp, #8]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	strh	r1, [r8, #8]	@ movhi
	strh	r1, [r10, #8]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [fp, #10]	@ movhi
	add	r5, lr, #1248
	strh	r1, [r6, #10]	@ movhi
	add	fp, lr, #1728
	strh	r1, [r4, #10]	@ movhi
	add	r6, lr, #2208
	strh	r1, [r8, #10]	@ movhi
	add	r4, lr, #2688
	add	r8, lr, #3168
	strh	r1, [r10, #10]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	add	r10, lr, #2704
	strh	r1, [r7, #2]	@ movhi
	add	r9, lr, #3184
	strh	r1, [r5, #10]	@ movhi
	add	r7, lr, #3648
	strh	r1, [fp, #10]	@ movhi
	strh	r1, [r6, #10]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	strh	r1, [fp, #12]	@ movhi
	add	r5, lr, #3664
	strh	r1, [r6, #12]	@ movhi
	add	fp, r2, #528
	strh	r1, [r4, #12]	@ movhi
	add	r6, r2, #1008
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [r4, #14]	@ movhi
	strh	r1, [r8, #14]	@ movhi
	add	r4, r2, #532
	add	r8, r2, #1012
	strh	r1, [r10]	@ movhi
	strh	r1, [r9]	@ movhi
	add	r10, r2, #536
	strh	r1, [r7, #14]	@ movhi
	add	r9, r2, #1016
	strh	r1, [r2, #46]	@ movhi
	add	r7, r2, #1488
	strh	r1, [r5]	@ movhi
	strh	r1, [r2, #48]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r2, #50]	@ movhi
	add	r5, r2, #1968
	strh	r1, [fp, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	add	r6, r3, #42752
	strh	r1, [r8]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	ldr	r4, .L553+4
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [r7, #12]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	add	r1, r6, #190
	add	r6, r6, #212
.L500:
	strh	r4, [r1]	@ movhi
	add	r5, r1, #480
	add	r1, r1, #2
	cmp	r6, r1
	strh	r4, [r5]	@ movhi
	bne	.L500
	add	r5, r2, #1520
	add	r6, r2, #2000
	strh	r4, [r5, #4]	@ movhi
	add	r1, r2, #1040
	strh	r4, [r6, #4]	@ movhi
	add	r7, r2, #568
	strh	r4, [r5, #6]	@ movhi
	add	r8, r2, #564
	strh	r4, [r6, #6]	@ movhi
	add	r6, r2, #572
	strh	r4, [r8, #2]	@ movhi
	add	r9, r2, #576
	strh	r4, [r1, #6]	@ movhi
	add	r8, r2, #1056
	strh	r4, [r5, #6]	@ movhi
	strh	r4, [r7]	@ movhi
	strh	r4, [r1, #8]	@ movhi
	strh	r4, [r5, #8]	@ movhi
	strh	r4, [r7, #2]	@ movhi
	strh	r4, [r1, #10]	@ movhi
	add	r7, lr, #2736
	strh	r4, [r5, #10]	@ movhi
	strh	r4, [r2, #92]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [r1, #12]	@ movhi
	strh	r4, [r2, #94]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	add	r6, lr, #3216
	strh	r4, [r1, #14]	@ movhi
	add	r5, lr, #2752
	strh	r4, [r2, #96]	@ movhi
	add	r1, lr, #3696
	strh	r4, [r9]	@ movhi
	strh	r4, [r8]	@ movhi
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [r6, #14]	@ movhi
	add	r7, lr, #3232
	add	r6, lr, #3712
	strh	r4, [r1, #14]	@ movhi
	strh	r4, [r5]	@ movhi
	add	r1, r3, #38656
	strh	r4, [r7]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [r5, #2]	@ movhi
	add	r5, lr, #2272
	strh	r4, [r7, #2]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	add	r6, r3, #32256
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	ldr	r1, .L553+4
	strh	r4, [r5, #4]	@ movhi
	add	r4, r6, #126
	add	r6, r6, #142
.L501:
	strh	r1, [r4]	@ movhi
	add	r5, r4, #480
	add	r4, r4, #2
	cmp	r6, r4
	strh	r1, [r5]	@ movhi
	bne	.L501
	add	r4, ip, #1040
	add	r5, ip, #1056
	add	r10, ip, #576
	add	fp, ip, #572
	strh	r1, [fp, #2]	@ movhi
	add	r9, ip, #588
	strh	r1, [r4, #14]	@ movhi
	add	r8, ip, #2016
	strh	r1, [r10]	@ movhi
	add	r7, ip, #2496
	strh	r1, [r5]	@ movhi
	add	fp, ip, #3456
	strh	r1, [r10, #2]	@ movhi
	add	r6, r3, #34304
	add	r10, ip, #2976
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	strh	r1, [r6, #12]	@ movhi
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [r7, #12]	@ movhi
	strh	r1, [r10, #12]	@ movhi
	strh	r1, [fp, #12]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r5, #14]	@ movhi
	add	r9, ip, #2000
	strh	r1, [r6, #14]	@ movhi
	strh	r1, [r8, #14]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	strh	r1, [r10, #14]	@ movhi
	strh	r1, [fp, #14]	@ movhi
	add	fp, ip, #1520
	strh	r1, [r4, #8]	@ movhi
	add	r5, ip, #2480
	strh	r1, [fp, #8]	@ movhi
	add	r10, r3, #36096
	strh	r1, [r9, #8]	@ movhi
	add	r8, ip, #2960
	strh	r1, [r4, #10]	@ movhi
	add	r7, ip, #3440
	strh	r1, [fp, #10]	@ movhi
	strh	r1, [r9, #10]	@ movhi
	strh	r1, [r4, #12]	@ movhi
	ldr	r4, .L553+4
	strh	r1, [fp, #12]	@ movhi
	strh	r1, [r9, #12]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r8, #8]	@ movhi
	add	r5, r10, #140
	strh	r1, [r7, #8]	@ movhi
	add	r1, r10, #122
.L502:
	strh	r4, [r1], #2	@ movhi
	cmp	r5, r1
	bne	.L502
	mov	r5, #114
	ldr	r4, .L553+4
	add	r10, r10, #132
.L505:
	sub	r1, r10, #2880
.L504:
	strh	r4, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r10
	bne	.L504
	add	r5, r5, #1
	cmp	r5, #118
	add	r10, r1, #2
	bne	.L505
	add	r1, ip, #1520
	add	r7, ip, #2000
	strh	r4, [r1, #14]	@ movhi
	add	r9, ip, #2960
	strh	r4, [r7, #14]	@ movhi
	add	fp, ip, #2480
	add	r8, ip, #2016
	add	r5, ip, #2496
	add	r1, ip, #2976
	add	r10, r0, #1776
	add	r7, r0, #2256
	strh	r4, [fp, #14]	@ movhi
	strh	r4, [r9, #14]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [r8]	@ movhi
	strh	r4, [r5]	@ movhi
	strh	r4, [r1]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r8, #2]	@ movhi
	add	r6, ip, #560
	strh	r4, [r5, #2]	@ movhi
	add	r8, r0, #2736
	strh	r4, [r1, #2]	@ movhi
	add	r5, r0, #3216
	strh	r4, [fp, #10]	@ movhi
	add	r1, r0, #3696
	strh	r4, [r9, #10]	@ movhi
	strh	r4, [fp, #12]	@ movhi
	strh	r4, [r9, #12]	@ movhi
	strh	r4, [r10, #10]	@ movhi
	add	r9, ip, #1040
	strh	r4, [r7, #10]	@ movhi
	strh	r4, [r10, #12]	@ movhi
	add	r10, ip, #564
	strh	r4, [r7, #12]	@ movhi
	strh	r4, [r8, #4]	@ movhi
	add	r7, r3, #37888
	strh	r4, [r5, #4]	@ movhi
	strh	r4, [r8, #6]	@ movhi
	strh	r4, [r5, #6]	@ movhi
	strh	r4, [r8, #8]	@ movhi
	strh	r4, [r5, #8]	@ movhi
	strh	r4, [r1]	@ movhi
	strh	r4, [ip, #80]	@ movhi
	strh	r4, [r6]	@ movhi
	strh	r4, [r9]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	strh	r4, [ip, #82]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r9, #2]	@ movhi
	ldr	r6, .L553+4
	strh	r4, [r1, #4]	@ movhi
	strh	r4, [ip, #84]	@ movhi
	strh	r4, [r10]	@ movhi
	strh	r4, [r9, #4]	@ movhi
	strh	r4, [r1, #6]	@ movhi
	strh	r4, [ip, #86]	@ movhi
	strh	r4, [r10, #2]	@ movhi
	strh	r4, [r9, #6]	@ movhi
	add	r5, r7, #236
	add	r8, r7, #248
.L506:
	sub	r1, r5, #3840
.L507:
	strh	r6, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r5
	bne	.L507
	add	r5, r1, #2
	cmp	r8, r5
	bne	.L506
	ldr	ip, .L553+4
	add	r1, r7, #238
	add	r6, r7, #250
.L509:
	strh	ip, [r1]	@ movhi
	add	r5, r1, #480
	add	r4, r1, #960
	add	r1, r1, #2
	cmp	r6, r1
	strh	ip, [r5]	@ movhi
	strh	ip, [r4]	@ movhi
	bne	.L509
	add	r5, r3, #39424
	ldr	ip, .L553+4
	add	r1, r5, #146
	add	r5, r5, #158
.L510:
	strh	ip, [r1]	@ movhi
	add	r4, r1, #480
	add	r1, r1, #2
	cmp	r5, r1
	strh	ip, [r4]	@ movhi
	bne	.L510
	add	r5, r3, #40448
	ldr	r1, .L553+4
	add	ip, r5, #84
	add	r5, r5, #96
.L511:
	strh	r1, [ip]	@ movhi
	add	r4, ip, #480
	add	ip, ip, #2
	cmp	r5, ip
	strh	r1, [r4]	@ movhi
	bne	.L511
	add	ip, r3, #41472
	strh	r1, [r2, #64]	@ movhi
	strh	r1, [r2, #66]	@ movhi
	strh	r1, [r2, #68]	@ movhi
	strh	r1, [r2, #70]	@ movhi
	strh	r1, [r2, #72]	@ movhi
	mov	r1, ip
	ldr	r4, .L553+4
	add	ip, ip, #26
	add	r1, r1, #54
	b	.L554
.L555:
	.align	2
.L553:
	.word	.LANCHOR0
	.word	16191
.L554:
.L512:
	strh	r4, [ip]	@ movhi
	add	r5, ip, #480
	add	ip, ip, #2
	cmp	r1, ip
	strh	r4, [r5]	@ movhi
	bne	.L512
	add	r3, r3, #42240
	ldr	ip, .L553+4
	add	r1, r3, #222
	add	r3, r3, #242
.L513:
	strh	ip, [r1], #2	@ movhi
	cmp	r3, r1
	bne	.L513
	add	r3, lr, #3696
	strh	ip, [r3, #4]	@ movhi
	add	r1, lr, #2240
	strh	ip, [r2, #84]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	ip, [r2, #86]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	ip, [r2, #88]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	add	r3, lr, #2720
	strh	ip, [r2, #90]	@ movhi
	add	r4, lr, #340
	strh	ip, [r1, #4]	@ movhi
	add	r2, lr, #344
	strh	ip, [r3, #4]	@ movhi
	strh	ip, [r1, #6]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	add	r1, lr, #820
	add	r3, r0, #3248
	add	lr, lr, #824
	add	r0, r0, #3728
	strh	ip, [r4, #2]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	ip, [lr]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	ip, [r0, #4]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	ip, [r0, #6]	@ movhi
	bx	lr
	.size	clearFrame1, .-clearFrame1
	.align	2
	.global	frame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame2, %function
frame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	head2
	pop	{r4, lr}
	b	topMid2
	.size	frame2, .-frame2
	.align	2
	.global	clearFrame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFrame2, %function
clearFrame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L674
	ldr	r2, [r3]
	ldr	ip, .L674+4
	add	r3, r2, #7872
	add	r4, r2, #16384
	sub	sp, sp, #20
	add	r1, r3, #30
	add	r0, r4, #158
.L559:
	strh	ip, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r0
	bne	.L559
	ldr	r0, .L674+4
	add	r3, r3, #32
	add	r1, r4, #160
.L560:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L560
	mov	ip, #113
	add	r3, r2, #10304
	str	r3, [sp, #8]
	ldr	r1, .L674+4
	add	r0, r3, #2
.L561:
	sub	r3, r0, #2400
.L562:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L562
	add	ip, ip, #1
	cmp	ip, #116
	add	r0, r0, #2
	bne	.L561
	add	ip, r2, #8192
	add	lr, ip, #1632
	add	r3, r2, #9344
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [lr, #8]	@ movhi
	mov	lr, #113
	ldr	r3, [sp, #8]
	add	r0, r2, #16064
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L674+4
	str	r0, [sp, #4]
	add	r0, r0, #2
.L564:
	sub	r3, r0, #5760
.L565:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L565
	add	lr, lr, #1
	cmp	lr, #116
	add	r0, r3, #2
	bne	.L564
	ldr	r0, [sp, #4]
	add	r1, r2, #10752
	ldr	r3, .L674+4
	add	r1, r1, #40
	add	r0, r0, #8
.L567:
	strh	r3, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r0
	bne	.L567
	add	r1, r2, #12288
	add	fp, r2, #12224
	add	lr, r1, #1376
	add	r9, r1, #2336
	add	r10, r1, #3296
	add	r7, r2, #15104
	add	r0, r2, #14144
	add	r5, r1, #428
	add	r8, r1, #424
	add	r6, r1, #904
	strh	r3, [fp, #10]	@ movhi
	str	r5, [sp, #12]
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	add	r8, ip, #3552
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r10, #10]	@ movhi
	strh	r3, [fp, #12]	@ movhi
	strh	r3, [r5]	@ movhi
	add	r5, r1, #908
	strh	r3, [r5]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [r10, #14]	@ movhi
	ldr	r10, [sp, #8]
	add	r0, r1, #3312
	add	lr, r1, #2832
	add	r6, r1, #1872
	add	r5, r1, #2352
	add	r9, ip, #2592
	add	r7, r2, #11264
	strh	r3, [r6]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r10, #10]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r8, #14]	@ movhi
	strh	r3, [fp, #14]	@ movhi
	ldr	fp, [sp, #12]
	add	ip, ip, #4048
	strh	r3, [fp, #2]	@ movhi
	add	r10, r1, #912
	strh	r3, [ip]	@ movhi
	add	r9, r1, #1392
	add	ip, r1, #432
	strh	r3, [ip]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r9, #4]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [lr, #6]	@ movhi
	strh	r3, [r0, #6]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r0, #8]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	ldr	r3, [sp, #4]
	add	r7, r2, #16000
	ldr	r8, .L674+4
	add	r3, r3, #28
	add	r7, r7, #44
.L568:
	strh	r8, [r7]	@ movhi
	add	r0, r7, #480
	add	r7, r7, #2
	cmp	r7, r3
	strh	r8, [r0]	@ movhi
	bne	.L568
	add	ip, r1, #2320
	add	r0, r1, #2800
	add	r1, r1, #3280
	strh	r8, [ip, #6]	@ movhi
	add	r3, r2, #16896
	strh	r8, [r0, #6]	@ movhi
	ldr	lr, .L674+4
	strh	r8, [r1, #6]	@ movhi
	strh	r8, [ip, #8]	@ movhi
	strh	r8, [r0, #8]	@ movhi
	strh	r8, [r1, #8]	@ movhi
	strh	r8, [ip, #10]	@ movhi
	strh	r8, [r0, #10]	@ movhi
	strh	r8, [r1, #10]	@ movhi
	strh	r8, [ip, #12]	@ movhi
	add	ip, r2, #26368
	strh	r8, [r0, #12]	@ movhi
	strh	r8, [r1, #12]	@ movhi
	add	r0, ip, #236
	add	r1, r3, #108
.L569:
	strh	lr, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r0
	bne	.L569
	ldr	r0, .L674+4
	add	r3, r3, #110
	add	r1, ip, #238
.L570:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L570
	add	r1, r4, #1104
	add	lr, r4, #624
	add	r3, r4, #1584
	add	r6, r4, #628
	strh	r0, [lr]	@ movhi
	add	r5, r2, #23040
	strh	r0, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	r0, .L674+4
	add	r1, r5, #186
	add	lr, r5, #204
.L571:
	sub	r3, r1, #3360
.L572:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L572
	add	r1, r1, #2
	cmp	r1, lr
	bne	.L571
	add	r7, r2, #20736
	ldr	r1, .L674+4
	add	r3, r7, #92
	add	r7, r7, #106
.L573:
	strh	r1, [r3]	@ movhi
	add	r6, r3, #480
	add	lr, r3, #960
	add	r0, r3, #1440
	add	r3, r3, #2
	cmp	r3, r7
	strh	r1, [r6]	@ movhi
	strh	r1, [lr]	@ movhi
	strh	r1, [r0]	@ movhi
	bne	.L573
	add	r0, r2, #20480
	add	r8, r0, #340
	add	r3, r4, #3952
	add	r9, r0, #1296
	add	r6, r0, #1776
	add	lr, r0, #2256
	add	r7, r0, #820
	strh	r1, [r3, #6]	@ movhi
	add	r10, r0, #344
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r9, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [lr, #6]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	add	r3, r0, #824
	strh	r1, [r10]	@ movhi
	add	fp, r0, #332
	strh	r1, [r3]	@ movhi
	add	r10, r0, #812
	strh	r1, [r9, #8]	@ movhi
	add	r3, r0, #816
	add	r9, r0, #336
	strh	r1, [r6, #8]	@ movhi
	strh	r1, [lr, #8]	@ movhi
	ldr	r6, .L674+4
	strh	r1, [fp, #2]	@ movhi
	add	lr, r2, #28416
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r7]	@ movhi
	add	r3, lr, #120
	add	r8, lr, #160
.L574:
	strh	r6, [r3]	@ movhi
	add	r1, r3, #480
	add	r3, r3, #2
	cmp	r3, r8
	strh	r6, [r1]	@ movhi
	bne	.L574
	mov	r9, #104
	add	r6, r2, #27904
	ldr	r7, .L674+4
	add	r1, r6, #144
.L577:
	sub	r3, r1, #3360
.L576:
	strh	r7, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L576
	add	r9, r9, #1
	cmp	r9, #107
	add	r1, r3, #2
	bne	.L577
	add	r7, r2, #26624
	ldr	r3, .L674+4
	add	ip, ip, #246
	add	fp, r7, #2
.L578:
	strh	r3, [ip]	@ movhi
	add	r10, ip, #480
	add	r9, ip, #960
	add	r1, ip, #1440
	add	ip, ip, #2
	cmp	fp, ip
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r1]	@ movhi
	bne	.L578
	add	r1, r6, #162
	mov	r3, r1
	ldr	r9, .L674+4
	add	r6, r6, #176
.L579:
	strh	r9, [r3], #2	@ movhi
	cmp	r6, r3
	bne	.L579
	add	ip, r2, #24576
	add	r10, ip, #3024
	add	r3, ip, #3504
	strh	r9, [r10]	@ movhi
	strh	r9, [r3]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	strh	r9, [r3, #2]	@ movhi
	strh	r9, [r10, #4]	@ movhi
	ldr	r10, .L674+4
	strh	r9, [r3, #4]	@ movhi
	add	lr, lr, #150
.L580:
	sub	r3, lr, #2400
.L581:
	strh	r10, [r3]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L581
	add	lr, lr, #2
	cmp	lr, r8
	bne	.L580
	add	lr, r7, #32
	mov	r7, #128
	ldr	r8, .L674+4
.L582:
	sub	r3, lr, #3360
.L583:
	strh	r8, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, lr
	bne	.L583
	add	r7, r7, #1
	cmp	r7, #131
	add	lr, r3, #2
	bne	.L582
	add	r3, r4, #2112
	strh	r8, [r3, #2]	@ movhi
	add	r7, r2, #18944
	strh	r8, [r3, #4]	@ movhi
	ldr	r8, .L674+4
	add	r3, r7, #34
	add	lr, r7, #48
.L585:
	strh	r8, [r3], #2	@ movhi
	cmp	lr, r3
	bne	.L585
	add	r8, r2, #19456
	ldr	r3, .L674+4
	add	lr, r8, #22
	add	r8, r8, #38
.L586:
	strh	r3, [lr]	@ movhi
	add	fp, lr, #480
	add	r10, lr, #960
	add	r9, lr, #1440
	add	lr, lr, #2
	cmp	lr, r8
	strh	r3, [fp]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	bne	.L586
	add	r8, r0, #900
	strh	r3, [r8]	@ movhi
	add	r9, r0, #1376
	strh	r3, [r8, #2]	@ movhi
	add	lr, r0, #1856
	add	r10, r0, #904
	add	fp, r0, #908
	add	r8, r0, #2336
	strh	r3, [r10]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [fp]	@ movhi
	add	r10, r0, #912
	strh	r3, [r9, #4]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [r8, #4]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [lr, #6]	@ movhi
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r9, #8]	@ movhi
	add	r8, r0, #1392
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	add	lr, r0, #916
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	add	fp, r4, #3088
	strh	r3, [r10]	@ movhi
	add	r9, r4, #3568
	strh	r3, [r8]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	add	r10, r4, #4048
	strh	r3, [lr]	@ movhi
	add	lr, r0, #436
	strh	r3, [r8, #4]	@ movhi
	strh	r3, [fp, #4]	@ movhi
	strh	r3, [r9, #4]	@ movhi
	strh	r3, [r10, #4]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [fp, #6]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r10, #6]	@ movhi
	mov	r10, #104
	strh	r3, [lr, #2]	@ movhi
	add	r8, r2, #25088
	ldr	lr, .L674+4
	add	r9, r8, #80
.L587:
	sub	r3, r9, #2880
.L588:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r9
	bne	.L588
	add	r10, r10, #1
	cmp	r10, #107
	add	r9, r3, #2
	bne	.L587
	add	r9, ip, #1072
	add	r3, ip, #1552
	add	r10, ip, #600
	add	fp, ip, #596
	strh	lr, [ip, #118]	@ movhi
	strh	lr, [fp, #2]	@ movhi
	strh	lr, [r9, #6]	@ movhi
	add	fp, ip, #1088
	strh	lr, [r3, #6]	@ movhi
	strh	lr, [r10]	@ movhi
	strh	lr, [r9, #8]	@ movhi
	strh	lr, [r3, #8]	@ movhi
	strh	lr, [r10, #2]	@ movhi
	add	r10, ip, #1568
	strh	lr, [r9, #10]	@ movhi
	strh	lr, [r3, #10]	@ movhi
	strh	lr, [r9, #12]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	lr, [r9, #14]	@ movhi
	strh	lr, [r3, #14]	@ movhi
	ldr	r9, .L674+4
	strh	lr, [fp]	@ movhi
	strh	lr, [r10]	@ movhi
.L590:
	sub	r3, r1, #2400
.L591:
	strh	r9, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L591
	add	r1, r1, #2
	cmp	r6, r1
	bne	.L590
	add	r1, ip, #1584
	add	r3, ip, #2544
	add	r10, ip, #1104
	add	lr, ip, #2064
	add	r6, ip, #628
	strh	r9, [r10]	@ movhi
	strh	r9, [r1]	@ movhi
	strh	r9, [lr]	@ movhi
	strh	r9, [r3]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	strh	r9, [r1, #2]	@ movhi
	strh	r9, [lr, #2]	@ movhi
	strh	r9, [r3, #2]	@ movhi
	strh	r9, [r10, #4]	@ movhi
	strh	r9, [r1, #4]	@ movhi
	strh	r9, [lr, #4]	@ movhi
	strh	r9, [r3, #4]	@ movhi
	ldr	r3, .L674+4
	strh	r9, [r6]	@ movhi
	add	r1, r8, #118
	add	r8, r8, #128
.L592:
	strh	r3, [r1]	@ movhi
	add	lr, r1, #480
	add	r1, r1, #2
	cmp	r1, r8
	strh	r3, [lr]	@ movhi
	bne	.L592
	add	r6, r0, #2800
	add	lr, r0, #3280
	add	r1, r0, #3760
	strh	r3, [ip, #152]	@ movhi
	add	r8, r0, #2320
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	r3, [ip, #154]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	strh	r3, [ip, #156]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	add	r6, r0, #2336
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	strh	r3, [ip, #158]	@ movhi
	strh	r3, [r8, #14]	@ movhi
	mov	r8, r6
	add	lr, r0, #3728
	add	r1, r0, #3248
	add	r9, r0, #1856
	strh	r3, [r9]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	add	r6, ip, #604
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [lr, #6]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	ldr	r1, .L674+4
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [ip, #124]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [ip, #126]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [ip, #120]	@ movhi
	add	r6, ip, #148
	strh	r3, [ip, #122]	@ movhi
	add	r3, ip, #128
.L593:
	strh	r1, [r3]	@ movhi
	add	lr, r3, #480
	add	r3, r3, #2
	cmp	r6, r3
	strh	r1, [lr]	@ movhi
	bne	.L593
	add	r3, r0, #3760
	add	r6, r0, #3280
	ldr	lr, .L674+4
	strh	r1, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [ip, #148]	@ movhi
	add	r3, r7, #24
	strh	r1, [ip, #150]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	add	r1, r5, #248
.L594:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L594
	ldr	lr, .L674+4
	add	r3, r7, #26
	add	r1, r5, #250
.L595:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L595
	mov	r8, #120
	add	lr, r2, #23552
	ldr	r6, .L674+4
	add	r1, lr, #208
.L598:
	sub	r3, r1, #5760
.L597:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L597
	add	r8, r8, #1
	cmp	r8, #124
	add	r1, r3, #2
	bne	.L598
	mov	r8, #120
	add	r1, r2, #22272
	ldr	r6, .L674+4
	add	r1, r1, #48
.L599:
	sub	r3, r1, #3360
.L600:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L600
	add	r8, r8, #1
	cmp	r8, #124
	add	r1, r3, #2
	bne	.L599
	add	r3, r2, #18432
	ldr	r6, .L674+4
	add	r3, r3, #46
	add	r1, r5, #238
.L602:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L602
	add	r3, r2, #18688
	ldr	r8, .L674+4
	add	r1, r3, #252
	add	r6, lr, #188
.L603:
	strh	r8, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r6
	bne	.L603
	ldr	r6, .L674+4
	add	r3, r3, #254
	add	r1, lr, #190
.L604:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L604
	mov	r6, #112
	ldr	r1, .L674+4
	add	lr, lr, #192
.L605:
	sub	r3, lr, #5760
.L606:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L606
	add	r6, r6, #1
	cmp	r6, #115
	add	lr, lr, #2
	bne	.L605
	add	r3, r4, #4000
	add	r6, r4, #3040
	add	lr, r4, #3520
	add	r10, r0, #384
	add	r9, r0, #864
	add	r8, r0, #1344
	strh	r1, [r7]	@ movhi
	add	fp, r0, #388
	strh	r1, [r6]	@ movhi
	add	r0, r0, #868
	strh	r1, [lr]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	ldr	r6, .L674+4
	strh	r1, [lr, #2]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r1, [fp]	@ movhi
	add	r3, r7, #6
	strh	r1, [r0]	@ movhi
	add	r1, r5, #230
.L608:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L608
	ldr	r3, .L674+4
	add	r7, r7, #8
	add	r5, r5, #232
.L609:
	strh	r3, [r7]	@ movhi
	add	r7, r7, #480
	cmp	r7, r5
	bne	.L609
	add	r1, r4, #3504
	add	lr, r2, #29440
	add	r4, r4, #3984
	ldr	r0, .L674+4
	strh	r3, [r1, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	add	r3, lr, #52
	add	lr, lr, #64
.L610:
	strh	r0, [r3]	@ movhi
	add	r1, r3, #480
	add	r3, r3, #2
	cmp	r3, lr
	strh	r0, [r1]	@ movhi
	bne	.L610
	add	lr, r2, #28672
	add	r3, lr, #2256
	add	r1, lr, #1776
	add	r4, lr, #2240
	strh	r0, [r1, #2]	@ movhi
	add	r6, lr, #2720
	strh	r0, [r3, #2]	@ movhi
	add	r5, lr, #2736
	strh	r0, [r1, #4]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r1, lr, #3680
	strh	r0, [r4, #14]	@ movhi
	add	r4, lr, #3200
	strh	r0, [r6, #14]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r6, r2, #33280
	strh	r0, [r5]	@ movhi
	add	r3, r2, #32768
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	strh	r0, [r1, #14]	@ movhi
	ldr	r1, .L674+4
	strh	r0, [r3, #74]	@ movhi
	strh	r0, [r3, #76]	@ movhi
	add	r0, r6, #34
	add	r6, r6, #52
.L611:
	strh	r1, [r0]	@ movhi
	add	r5, r0, #480
	add	r4, r0, #960
	add	r0, r0, #2
	cmp	r0, r6
	strh	r1, [r5]	@ movhi
	strh	r1, [r4]	@ movhi
	bne	.L611
	add	r0, r2, #36864
	add	r4, r3, #1520
	add	r5, r3, #2000
	add	r6, r3, #2480
	strh	r1, [r4, #4]	@ movhi
	add	r10, r3, #2960
	strh	r1, [r5, #4]	@ movhi
	add	r4, r3, #1488
	strh	r1, [r6, #4]	@ movhi
	add	r5, r3, #1968
	add	r7, r3, #3440
	add	r8, r0, #308
	add	r9, r3, #3920
	add	r6, r3, #1504
	add	fp, r0, #788
	strh	r1, [r10, #4]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	add	r10, r3, #1984
	strh	r1, [r9, #4]	@ movhi
	add	r7, r3, #2448
	strh	r1, [r8]	@ movhi
	add	r9, r3, #2928
	strh	r1, [fp]	@ movhi
	add	r8, r3, #3408
	strh	r1, [r4, #12]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	strh	r1, [r4, #14]	@ movhi
	strh	r1, [r5, #14]	@ movhi
	add	r4, r2, #36608
	strh	r1, [r6]	@ movhi
	ldr	r6, .L674+4
	strh	r1, [r10]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [r9, #4]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	add	r1, r4, #54
	add	r4, r4, #68
.L612:
	strh	r6, [r1], #2	@ movhi
	cmp	r1, r4
	bne	.L612
	add	r1, r0, #292
	add	r5, r2, #37120
	add	r4, r0, #296
	ldr	r7, .L674+4
	strh	r6, [r1]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r6, [r4]	@ movhi
	add	r1, r5, #42
	add	r6, r5, #52
.L613:
	strh	r7, [r1]	@ movhi
	add	r8, r1, #480
	add	r4, r1, #960
	add	r1, r1, #2
	cmp	r1, r6
	strh	r7, [r8]	@ movhi
	strh	r7, [r4]	@ movhi
	bne	.L613
	ldr	r4, .L674+4
	add	r5, r5, #36
.L614:
	sub	r1, r5, #2400
.L615:
	strh	r4, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r5
	bne	.L615
	add	r5, r1, #2
	cmp	r6, r5
	bne	.L614
	add	r1, r3, #3408
	add	r5, r3, #2928
	add	r7, r3, #2448
	add	r6, r3, #1984
	add	r10, r3, #2464
	add	r9, r3, #2944
	add	r8, r3, #3424
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r10, #2]	@ movhi
	add	r6, r2, #30464
	strh	r4, [r9, #2]	@ movhi
	strh	r4, [r8, #2]	@ movhi
	strh	r4, [r7, #12]	@ movhi
	strh	r4, [r5, #12]	@ movhi
	strh	r4, [r1, #12]	@ movhi
	strh	r4, [r7, #14]	@ movhi
	ldr	r7, .L674+4
	strh	r4, [r5, #14]	@ movhi
	strh	r4, [r1, #14]	@ movhi
	strh	r4, [r10]	@ movhi
	strh	r4, [r9]	@ movhi
	strh	r4, [r8]	@ movhi
	strh	r4, [r5, #6]	@ movhi
	strh	r4, [r1, #6]	@ movhi
	strh	r4, [r5, #8]	@ movhi
	strh	r4, [r1, #8]	@ movhi
	strh	r4, [r5, #10]	@ movhi
	strh	r4, [r1, #10]	@ movhi
	add	r1, r6, #24
	add	r4, r6, #34
.L617:
	strh	r7, [r1]	@ movhi
	add	r8, r1, #480
	add	r6, r1, #960
	add	r5, r1, #1440
	add	r1, r1, #2
	cmp	r4, r1
	strh	r7, [r8]	@ movhi
	strh	r7, [r6]	@ movhi
	strh	r7, [r5]	@ movhi
	bne	.L617
	add	r4, lr, #3728
	add	r1, r3, #600
	strh	r7, [r4, #8]	@ movhi
	add	r6, r2, #33792
	strh	r7, [r3, #120]	@ movhi
	add	r5, r3, #604
	strh	r7, [r1]	@ movhi
	strh	r7, [r4, #10]	@ movhi
	strh	r7, [r3, #122]	@ movhi
	add	r4, r3, #1072
	strh	r7, [r1, #2]	@ movhi
	ldr	r1, .L674+4
	strh	r7, [r5]	@ movhi
	strh	r7, [r4, #10]	@ movhi
	add	r4, r6, #60
	add	r6, r6, #72
.L618:
	strh	r1, [r4]	@ movhi
	add	r5, r4, #480
	add	r4, r4, #2
	cmp	r4, r6
	strh	r1, [r5]	@ movhi
	bne	.L618
	add	r6, lr, #1344
	add	r4, r2, #30976
	add	r5, lr, #1824
	add	fp, lr, #3264
	add	r10, lr, #3744
	add	r9, r3, #612
	add	r8, r3, #616
	add	r7, lr, #868
	strh	r1, [r3, #134]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r3, #136]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [fp, #10]	@ movhi
	add	r8, lr, #392
	strh	r1, [r10, #10]	@ movhi
	strh	r1, [fp, #12]	@ movhi
	strh	r1, [r10, #12]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	add	r7, lr, #872
	strh	r1, [r6, #6]	@ movhi
	add	r9, ip, #4000
	strh	r1, [r7]	@ movhi
	add	ip, ip, #4016
	strh	r1, [r6, #8]	@ movhi
	str	fp, [sp, #4]
	strh	r1, [r8, #2]	@ movhi
	add	fp, lr, #400
	strh	r1, [r7, #2]	@ movhi
	add	r8, lr, #396
	add	r7, lr, #876
	str	r10, [sp, #8]
	add	r10, lr, #880
	strh	r1, [r8]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r9, #14]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	add	r9, lr, #1360
	strh	r1, [r7, #2]	@ movhi
	add	r8, lr, #1840
	strh	r1, [ip]	@ movhi
	add	r7, lr, #2320
	strh	r1, [fp]	@ movhi
	strh	r1, [r10]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	add	ip, lr, #2784
	strh	r1, [fp, #2]	@ movhi
	add	fp, lr, #2800
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [ip, #14]	@ movhi
	strh	r1, [fp]	@ movhi
	strh	r1, [r6, #10]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	strh	r1, [r6, #12]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	strh	r1, [r4, #12]	@ movhi
	strh	r1, [r6, #14]	@ movhi
	strh	r1, [r5, #14]	@ movhi
	strh	r1, [r4, #14]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r7]	@ movhi
	ldr	r8, [sp, #4]
	ldr	r7, [sp, #8]
	add	r10, r2, #32256
	ldr	r6, .L674+4
	strh	r1, [ip, #10]	@ movhi
	strh	r1, [ip, #12]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r4, #6]	@ movhi
	strh	r1, [ip, #6]	@ movhi
	strh	r1, [r8, #6]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	strh	r1, [r3, #134]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	strh	r1, [ip, #8]	@ movhi
	add	r4, r10, #166
	strh	r1, [r8, #8]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	strh	r1, [r3, #136]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	add	r1, r10, #156
.L619:
	strh	r6, [r1]	@ movhi
	add	ip, r1, #480
	add	r1, r1, #2
	cmp	r1, r4
	strh	r6, [ip]	@ movhi
	bne	.L619
	add	r5, r3, #604
	strh	r6, [r5, #2]	@ movhi
	add	r4, r3, #608
	add	r9, r3, #2032
	add	r8, r3, #2512
	add	r7, r3, #2992
	add	r1, r3, #3472
	add	ip, r3, #3952
	add	r5, r0, #816
	add	r10, r0, #336
	add	fp, r3, #612
	strh	r6, [r4]	@ movhi
	strh	r6, [r4, #2]	@ movhi
	strh	r6, [fp]	@ movhi
	strh	r6, [r9]	@ movhi
	strh	r6, [r8]	@ movhi
	strh	r6, [r7]	@ movhi
	strh	r6, [r1]	@ movhi
	strh	r6, [ip]	@ movhi
	strh	r6, [r10]	@ movhi
	strh	r6, [r5]	@ movhi
	strh	r6, [r9, #2]	@ movhi
	strh	r6, [r8, #2]	@ movhi
	strh	r6, [r7, #2]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r6, [ip, #2]	@ movhi
	strh	r6, [r10, #2]	@ movhi
	strh	r6, [r5, #2]	@ movhi
	mov	r5, #127
	add	r4, r0, #1312
	add	r9, r2, #38656
	add	r8, r0, #2272
	add	r7, r0, #2752
	add	r1, r0, #3232
	strh	r6, [r4, #2]	@ movhi
	add	ip, r2, #42240
	strh	r6, [r9, #2]	@ movhi
	strh	r6, [r8, #2]	@ movhi
	strh	r6, [r4, #4]	@ movhi
	strh	r6, [r9, #4]	@ movhi
	ldr	r4, .L674+4
	strh	r6, [r8, #4]	@ movhi
	strh	r6, [r7]	@ movhi
	strh	r6, [r1]	@ movhi
	strh	r6, [r7, #2]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	add	ip, ip, #254
.L620:
	sub	r1, ip, #2400
.L621:
	strh	r4, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, ip
	bne	.L621
	add	r5, r5, #1
	cmp	r5, #130
	add	ip, r1, #2
	bne	.L620
	add	ip, r2, #40960
	add	r1, r2, #42496
	strh	r4, [r1]	@ movhi
	add	r7, r2, #39936
	strh	r4, [r1, #2]	@ movhi
	add	r6, ip, #568
	strh	r4, [r1, #4]	@ movhi
	add	r5, ip, #572
	ldr	r1, .L674+4
	strh	r4, [ip, #90]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [ip, #92]	@ movhi
	strh	r4, [r5]	@ movhi
	add	r4, r7, #128
	add	r7, r7, #154
	b	.L675
.L676:
	.align	2
.L674:
	.word	.LANCHOR0
	.word	16191
.L675:
.L623:
	strh	r1, [r4]	@ movhi
	add	r6, r4, #480
	add	r5, r4, #960
	add	r4, r4, #2
	cmp	r7, r4
	strh	r1, [r6]	@ movhi
	strh	r1, [r5]	@ movhi
	bne	.L623
	add	r5, ip, #1040
	add	r4, ip, #1520
	add	r7, r2, #41984
	add	r6, ip, #1504
	add	r10, ip, #556
	add	r9, ip, #560
	add	r8, ip, #564
	add	fp, ip, #568
	strh	r1, [r10]	@ movhi
	strh	r1, [r7, #12]	@ movhi
	strh	r1, [r10, #2]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	add	r10, r0, #1728
	strh	r1, [r9]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	r1, [r9, #2]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	add	r9, r0, #2208
	strh	r1, [r8]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	add	r8, r0, #2688
	strh	r1, [fp]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	add	fp, r0, #3168
	strh	r1, [r4, #8]	@ movhi
	add	r5, r0, #3184
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [r6, #10]	@ movhi
	add	r7, r0, #3664
	strh	r1, [r6, #12]	@ movhi
	strh	r1, [r6, #14]	@ movhi
	add	r6, ip, #528
	strh	r1, [r4]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	strh	r1, [r4, #6]	@ movhi
	strh	r1, [r10, #10]	@ movhi
	add	r4, ip, #532
	strh	r1, [r9, #10]	@ movhi
	strh	r1, [r10, #12]	@ movhi
	strh	r1, [r9, #12]	@ movhi
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [fp, #12]	@ movhi
	strh	r1, [r8, #14]	@ movhi
	strh	r1, [fp, #14]	@ movhi
	add	r8, ip, #1012
	add	fp, ip, #1488
	strh	r1, [r5]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [ip, #48]	@ movhi
	strh	r1, [ip, #50]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	add	r6, ip, #536
	strh	r1, [r4]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [fp, #4]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	add	r4, ip, #540
	strh	r1, [fp, #6]	@ movhi
	add	r8, r0, #2704
	strh	r1, [ip, #58]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	add	r6, r0, #2224
	strh	r1, [ip, #60]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r1, [ip, #62]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [r8, #10]	@ movhi
	add	r4, ip, #1016
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [r7, #10]	@ movhi
	strh	r1, [r8, #12]	@ movhi
	strh	r1, [r5, #12]	@ movhi
	strh	r1, [r7, #12]	@ movhi
	strh	r1, [r8, #8]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	strh	r1, [ip, #56]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [ip, #52]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [r8, #6]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	strh	r1, [ip, #54]	@ movhi
	add	ip, r0, #1744
	strh	r1, [r10, #14]	@ movhi
	strh	r1, [r9, #14]	@ movhi
	add	r10, lr, #1776
	strh	r1, [ip]	@ movhi
	add	r9, lr, #2256
	strh	r1, [r6]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	add	r6, r3, #572
	strh	r1, [r8]	@ movhi
	add	r2, r2, #38144
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	add	r8, r3, #576
	strh	r1, [r7, #2]	@ movhi
	add	r5, lr, #3232
	strh	r1, [r10, #12]	@ movhi
	add	lr, lr, #3712
	strh	r1, [r9, #12]	@ movhi
	add	r7, r3, #2496
	strh	r1, [r10, #14]	@ movhi
	strh	r1, [r9, #14]	@ movhi
	add	r10, r3, #2976
	strh	r1, [r3, #94]	@ movhi
	add	r9, r3, #2512
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	add	r6, r3, #2992
	add	r3, r0, #1264
	add	r0, r0, #1760
	strh	r1, [r8]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [lr, #8]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	strh	r1, [lr, #10]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	strh	r1, [r10, #14]	@ movhi
	strh	r1, [r9]	@ movhi
	strh	r1, [r6]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	strh	r1, [ip, #14]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r1, [fp, #8]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r1, [fp, #10]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
	.size	clearFrame2, .-clearFrame2
	.align	2
	.global	frame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame3, %function
frame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	head3
	pop	{r4, lr}
	b	topMid3
	.size	frame3, .-frame3
	.align	2
	.global	clearFrame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFrame3, %function
clearFrame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L783
	ldr	r1, [r1]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L783+4
	add	r4, r1, #12288
	add	ip, r1, #16384
	add	r5, r4, #2784
	add	r0, r1, #14592
	strh	r3, [r0, #4]	@ movhi
	add	lr, r1, #15552
	strh	r3, [r5, #4]	@ movhi
	add	r0, r4, #3744
	add	r5, ip, #612
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	add	lr, ip, #1088
	strh	r3, [ip, #132]	@ movhi
	add	r0, ip, #1568
	strh	r3, [r5]	@ movhi
	add	r5, r1, #18432
	strh	r3, [lr, #4]	@ movhi
	mov	r2, r3
	strh	r3, [r0, #4]	@ movhi
	add	lr, r5, #18
	add	r3, r5, #4
.L680:
	strh	r2, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	r3, lr
	strh	r2, [r0]	@ movhi
	bne	.L680
	add	lr, r1, #13632
	ldr	r0, .L783+4
	add	r3, lr, #6
	add	r2, r5, #6
.L681:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L681
	mov	r6, #100
	ldr	r0, .L783+4
	add	r2, r5, #8
.L682:
	sub	r3, r2, #5248
	sub	r3, r3, #32
.L683:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L683
	add	r6, r6, #1
	cmp	r6, #103
	add	r2, r2, #2
	bne	.L682
	add	r3, r1, #12160
	add	r6, r4, #392
	add	r2, r4, #396
	add	r7, r4, #876
	strh	r0, [r3, #40]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r3, #42]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r3, #44]	@ movhi
	ldr	r6, .L783+4
	strh	r0, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	add	r3, lr, #14
	add	r2, r5, #14
.L685:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L685
	ldr	r3, .L783+4
	add	r0, lr, #16
	add	r2, r5, #16
.L686:
	strh	r3, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, r2
	bne	.L686
	add	r0, r4, #3280
	add	r2, r4, #3760
	strh	r3, [r0, #2]	@ movhi
	add	r4, ip, #1552
	strh	r3, [r2, #2]	@ movhi
	add	lr, ip, #2032
	strh	r3, [r0, #4]	@ movhi
	add	r7, ip, #2512
	strh	r3, [r2, #4]	@ movhi
	add	r6, ip, #1072
	strh	r3, [r0, #6]	@ movhi
	add	r10, ip, #608
	strh	r3, [r2, #6]	@ movhi
	add	r0, ip, #2992
	add	r9, ip, #1088
	add	r8, ip, #1568
	add	r2, r1, #19712
	add	fp, ip, #604
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r0, #6]	@ movhi
	strh	r3, [r0, #8]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	mov	r3, r2
	ldr	r6, .L783+4
	add	r2, r2, #150
	add	r3, r3, #164
.L687:
	strh	r6, [r2]	@ movhi
	add	lr, r2, #480
	add	r0, r2, #960
	add	r2, r2, #2
	cmp	r2, r3
	strh	r6, [lr]	@ movhi
	strh	r6, [r0]	@ movhi
	bne	.L687
	add	r3, r1, #21248
	add	r2, r1, #25600
	ldr	r0, .L783+4
	add	r3, r3, #66
	add	r2, r2, #34
.L688:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L688
	add	r5, r1, #24064
	ldr	r0, .L783+4
	add	r2, r5, #110
	add	lr, r5, #124
.L689:
	sub	r3, r2, #2880
.L690:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L690
	add	r2, r2, #2
	cmp	r2, lr
	bne	.L689
	add	lr, r1, #20480
	add	r4, lr, #1776
	add	r3, lr, #2256
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	mov	r4, #94
	strh	r0, [r3, #4]	@ movhi
	add	r2, r1, #23552
	ldr	r0, .L783+4
	add	r2, r2, #156
.L692:
	sub	r3, r2, #2400
.L693:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L693
	add	r4, r4, #1
	cmp	r4, #97
	add	r2, r2, #2
	bne	.L692
	add	r2, r1, #24576
	add	r3, lr, #3696
	add	r4, lr, #3216
	add	r7, r2, #572
	strh	r0, [r4, #12]	@ movhi
	add	r6, lr, #3232
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r2, #92]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r4, lr, #3712
	strh	r0, [r2, #94]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	add	r7, r2, #576
	strh	r0, [r6]	@ movhi
	add	r8, r2, #1520
	strh	r0, [r4]	@ movhi
	add	r6, r2, #568
	strh	r0, [r2, #96]	@ movhi
	add	r4, r2, #1040
	strh	r0, [r7]	@ movhi
	add	r7, r2, #2000
	strh	r0, [r3, #8]	@ movhi
	add	r9, r2, #2496
	strh	r0, [r2, #88]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r2, #90]	@ movhi
	add	r3, r2, #3440
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r4, #8]	@ movhi
	add	r6, r2, #2480
	strh	r0, [r8, #8]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r8, #12]	@ movhi
	add	r4, r2, #2960
	strh	r0, [r7, #12]	@ movhi
	add	r8, r2, #2976
	add	r7, r2, #3456
	strh	r0, [r6, #10]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r6, #12]	@ movhi
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r6, #14]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	add	r6, r1, #25088
	strh	r0, [r3, #14]	@ movhi
	strh	r0, [r9]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [r7]	@ movhi
	ldr	r0, .L783+4
	add	r4, r6, #72
	add	r6, r6, #86
.L694:
	sub	r3, r4, #5248
	sub	r3, r3, #32
.L695:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r4
	bne	.L695
	add	r4, r3, #2
	cmp	r6, r4
	bne	.L694
	mov	r6, #101
	ldr	r4, .L783+4
	add	r0, r2, #106
.L698:
	sub	r3, r0, #3840
.L697:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L697
	add	r6, r6, #1
	cmp	r6, #104
	add	r0, r3, #2
	bne	.L698
	ldr	r4, .L783+4
	add	r0, r5, #158
	add	r5, r5, #182
.L699:
	sub	r3, r0, #3360
.L700:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L700
	add	r0, r3, #2
	cmp	r5, r0
	bne	.L699
	add	r5, r1, #21760
	ldr	r0, .L783+4
	add	r3, r5, #64
	add	r5, r5, #78
.L702:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r3, r5
	strh	r0, [r4]	@ movhi
	bne	.L702
	add	r5, r1, #26112
	ldr	r4, .L783+4
	add	r3, r5, #2
	add	r5, r5, #28
.L703:
	strh	r4, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r4, [r0]	@ movhi
	bne	.L703
	add	r3, r2, #1072
	add	r0, r2, #600
	add	r5, r2, #596
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	add	r5, r1, #27904
	strh	r4, [r0]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	ldr	r0, .L783+4
	strh	r4, [r3, #10]	@ movhi
	add	r8, r5, #142
	add	r3, r5, #130
.L704:
	strh	r0, [r3]	@ movhi
	add	r7, r3, #480
	add	r6, r3, #960
	add	r4, r3, #1440
	add	r3, r3, #2
	cmp	r8, r3
	strh	r0, [r7]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r4]	@ movhi
	bne	.L704
	add	r6, r1, #28928
	ldr	r0, .L783+4
	add	r3, r6, #78
	add	r6, r6, #98
.L705:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r3, r6
	strh	r0, [r4]	@ movhi
	bne	.L705
	ldr	r0, .L783+4
	add	r3, r5, #156
	add	r5, r5, #172
.L706:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r0, [r4]	@ movhi
	bne	.L706
	add	r3, ip, #3520
	add	r5, ip, #3040
	add	r4, ip, #4000
	strh	r0, [r5, #12]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r5, ip, #3536
	strh	r0, [r4, #14]	@ movhi
	add	r4, ip, #4016
	strh	r0, [r5]	@ movhi
	strh	r0, [r4]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	add	r4, r1, #20224
	strh	r0, [r3, #12]	@ movhi
	ldr	r0, .L783+4
	add	r3, r4, #160
	add	r4, r4, #174
.L707:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r4
	bne	.L707
	add	r3, ip, #2064
	add	ip, ip, #2544
	strh	r0, [r3, #10]	@ movhi
	add	r6, lr, #3760
	strh	r0, [ip, #10]	@ movhi
	add	r5, r2, #620
	strh	r0, [r3, #12]	@ movhi
	add	r4, r2, #1088
	add	r3, r2, #1568
	strh	r0, [ip, #12]	@ movhi
	add	r7, r2, #624
	strh	r0, [r6]	@ movhi
	add	ip, r2, #3008
	strh	r0, [r2, #144]	@ movhi
	add	r8, r2, #1104
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r2, #146]	@ movhi
	add	r6, r1, #26624
	strh	r0, [r5]	@ movhi
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	add	r5, r2, #1584
	strh	r0, [r3, #14]	@ movhi
	add	r4, r2, #2528
	add	r3, r2, #3488
	strh	r0, [r7]	@ movhi
	strh	r0, [r8]	@ movhi
	add	r7, r2, #2064
	strh	r0, [r5]	@ movhi
	strh	r0, [r6, #12]	@ movhi
	add	r5, r2, #2544
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [ip, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r6, #14]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	strh	r0, [ip, #14]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r3, r2, #3024
	strh	r0, [r7]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r5, r2, #3504
	add	r3, r2, #2976
	strh	r0, [r5]	@ movhi
	add	r7, r2, #3456
	strh	r0, [r6, #8]	@ movhi
	add	r5, r2, #3936
	strh	r0, [r4, #8]	@ movhi
	strh	r0, [ip, #8]	@ movhi
	strh	r0, [r6, #10]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [ip, #10]	@ movhi
	add	r4, r2, #2992
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r0, [r3, #6]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r3, r2, #3472
	strh	r0, [r7, #14]	@ movhi
	add	ip, r2, #3952
	strh	r0, [r5, #14]	@ movhi
	add	r7, r1, #26880
	strh	r0, [r4]	@ movhi
	strh	r0, [r3]	@ movhi
	ldr	r3, .L783+4
	strh	r0, [ip]	@ movhi
	add	r0, r7, #210
	add	r7, r7, #220
.L708:
	strh	r3, [r0]	@ movhi
	add	r5, r0, #480
	add	r4, r0, #960
	add	ip, r0, #1440
	add	r0, r0, #2
	cmp	r0, r7
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [ip]	@ movhi
	bne	.L708
	add	r0, r2, #2032
	add	r7, r2, #2512
	add	ip, r2, #2992
	add	fp, r2, #1552
	add	r5, r2, #604
	add	r4, r2, #1072
	strh	r3, [fp, #12]	@ movhi
	add	r10, r2, #608
	strh	r3, [r0, #12]	@ movhi
	add	r9, r2, #1088
	strh	r3, [r7, #12]	@ movhi
	add	r8, r2, #1568
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	add	r5, r2, #2528
	add	r4, r2, #3008
	strh	r3, [fp, #14]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [ip, #14]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	ldr	ip, .L783+4
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	add	r0, r6, #2
	add	r7, r6, #12
.L709:
	sub	r3, r0, #2400
.L710:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L710
	add	r0, r0, #2
	cmp	r7, r0
	bne	.L709
	add	r5, r1, #28672
	add	r6, r5, #1296
	add	r4, r5, #1776
	add	lr, lr, #3744
	strh	ip, [lr, #12]	@ movhi
	add	r3, r1, #30720
	strh	ip, [r2, #140]	@ movhi
	ldr	r0, .L783+4
	strh	ip, [r2, #142]	@ movhi
	strh	ip, [r6, #8]	@ movhi
	strh	ip, [r4, #8]	@ movhi
	strh	ip, [r6, #10]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	add	r2, r3, #200
	add	r3, r3, #218
.L712:
	strh	r0, [r2]	@ movhi
	add	lr, r2, #480
	add	ip, r2, #960
	add	r2, r2, #2
	cmp	r3, r2
	strh	r0, [lr]	@ movhi
	strh	r0, [ip]	@ movhi
	bne	.L712
	add	r2, r1, #32768
	add	ip, r5, #3680
	add	lr, r1, #33792
	add	r6, r5, #3696
	add	r4, r2, #556
	add	r3, r2, #552
	add	r7, r2, #564
	add	fp, r2, #560
	strh	r0, [r6, #4]	@ movhi
	add	r8, r2, #1040
	strh	r0, [r2, #84]	@ movhi
	add	r10, r2, #1504
	strh	r0, [r7]	@ movhi
	add	r9, r2, #1984
	strh	r0, [ip, #14]	@ movhi
	add	r7, r2, #1520
	strh	r0, [r2, #78]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r2, #80]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r2, #82]	@ movhi
	add	r6, r2, #2000
	strh	r0, [fp, #2]	@ movhi
	strh	r0, [ip, #8]	@ movhi
	strh	r0, [r2, #72]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r0, [lr, #8]	@ movhi
	strh	r0, [ip, #10]	@ movhi
	strh	r0, [r2, #74]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [lr, #10]	@ movhi
	add	r3, r1, #35072
	strh	r0, [ip, #12]	@ movhi
	strh	r0, [r2, #76]	@ movhi
	add	ip, r1, #39424
	strh	r0, [r4]	@ movhi
	ldr	r4, .L783+4
	strh	r0, [lr, #12]	@ movhi
	strh	r0, [lr, #14]	@ movhi
	strh	r0, [r10, #14]	@ movhi
	add	lr, ip, #144
	strh	r0, [r9, #14]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r8, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	add	r0, r3, #176
.L713:
	strh	r4, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, lr
	bne	.L713
	add	r8, r1, #39936
	ldr	lr, .L783+4
	add	r0, r8, #102
	add	r4, r8, #124
.L714:
	strh	lr, [r0]	@ movhi
	add	r7, r0, #480
	add	r6, r0, #960
	add	r0, r0, #2
	cmp	r0, r4
	strh	lr, [r7]	@ movhi
	strh	lr, [r6]	@ movhi
	bne	.L714
	ldr	r4, .L783+4
	add	lr, r8, #134
.L715:
	strh	r4, [r0]	@ movhi
	add	r6, r0, #480
	add	r0, r0, #2
	cmp	lr, r0
	strh	r4, [r6]	@ movhi
	bne	.L715
	add	r10, r1, #38400
	add	r7, r10, #210
	mov	r0, r7
	ldr	r6, .L783+4
	add	r10, r10, #238
.L716:
	strh	r6, [r0]	@ movhi
	add	r9, r0, #480
	add	r4, r0, #960
	add	r0, r0, #2
	cmp	r10, r0
	strh	r6, [r9]	@ movhi
	strh	r6, [r4]	@ movhi
	bne	.L716
	mov	r0, lr
	add	r4, r1, #40960
	strh	r6, [r4, #60]	@ movhi
	ldr	r9, .L783+4
	strh	r6, [r4, #62]	@ movhi
	strh	r6, [r4, #64]	@ movhi
	strh	r6, [r4, #66]	@ movhi
	strh	r6, [r4, #68]	@ movhi
	add	r8, r8, #146
.L717:
	strh	r9, [r0]	@ movhi
	add	r6, r0, #480
	add	lr, r0, #960
	add	r0, r0, #2
	cmp	r8, r0
	strh	r9, [r6]	@ movhi
	strh	r9, [lr]	@ movhi
	bne	.L717
	add	lr, r1, #36864
	add	r0, lr, #1760
	add	r6, lr, #1776
	add	r8, lr, #2240
	strh	r9, [r0, #14]	@ movhi
	add	r10, r1, #37120
	strh	r9, [r8, #14]	@ movhi
	add	r0, lr, #2256
	strh	r9, [r6]	@ movhi
	ldr	r6, .L783+4
	strh	r9, [r0]	@ movhi
	add	r0, r10, #76
	add	r10, r10, #86
.L718:
	strh	r6, [r0]	@ movhi
	add	r9, r0, #480
	add	r8, r0, #960
	add	r0, r0, #2
	cmp	r0, r10
	strh	r6, [r9]	@ movhi
	strh	r6, [r8]	@ movhi
	bne	.L718
	mov	r8, #105
	ldr	r0, .L783+4
.L719:
	sub	r6, r7, #3840
.L720:
	strh	r0, [r6]	@ movhi
	add	r6, r6, #480
	cmp	r6, r7
	bne	.L720
	add	r8, r8, #1
	cmp	r8, #108
	add	r7, r6, #2
	bne	.L719
	add	r8, r2, #3920
	add	r7, lr, #1264
	add	r10, r2, #2960
	add	r9, r2, #3440
	add	fp, lr, #312
	add	r6, lr, #792
	strh	r0, [r10, #8]	@ movhi
	strh	r0, [r9, #8]	@ movhi
	strh	r0, [r8, #8]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r10, #10]	@ movhi
	strh	r0, [r9, #10]	@ movhi
	add	r10, lr, #796
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [fp, #2]	@ movhi
	add	fp, lr, #316
	strh	r0, [r6, #2]	@ movhi
	add	r9, lr, #800
	strh	r0, [r7, #10]	@ movhi
	add	r6, r1, #34304
	strh	r0, [r8, #12]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r10]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	strh	r0, [r8, #14]	@ movhi
	strh	r0, [fp, #2]	@ movhi
	add	r8, r2, #2016
	strh	r0, [r10, #2]	@ movhi
	add	fp, r5, #3216
	strh	r0, [r7, #14]	@ movhi
	add	r10, r5, #3696
	add	r7, r1, #38144
	strh	r0, [r9]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r9, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	add	r9, r5, #2272
	strh	r0, [r7, #4]	@ movhi
	strh	r0, [r7, #6]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r6, #4]	@ movhi
	strh	r0, [r8, #4]	@ movhi
	strh	r0, [r6, #6]	@ movhi
	strh	r0, [r8, #6]	@ movhi
	strh	r0, [fp, #12]	@ movhi
	strh	r0, [r10, #12]	@ movhi
	strh	r0, [fp, #14]	@ movhi
	add	fp, r1, #30464
	strh	r0, [r10, #14]	@ movhi
	add	r8, r5, #1808
	strh	r0, [fp, #4]	@ movhi
	add	r7, r5, #1328
	strh	r0, [r9, #4]	@ movhi
	add	r10, r1, #31744
	strh	r0, [fp, #6]	@ movhi
	ldr	fp, .L783+4
	strh	r0, [r9, #6]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	strh	r0, [r8, #12]	@ movhi
	add	r0, r10, #176
	add	r8, r10, #188
.L722:
	strh	fp, [r0]	@ movhi
	add	r7, r0, #480
	add	r0, r0, #2
	cmp	r0, r8
	strh	fp, [r7]	@ movhi
	bne	.L722
	ldr	r8, .L783+4
	add	r0, r2, #114
	add	r7, r2, #136
.L723:
	strh	r8, [r0]	@ movhi
	add	r10, r0, #480
	add	r9, r0, #960
	add	r0, r0, #2
	cmp	r7, r0
	strh	r8, [r10]	@ movhi
	strh	r8, [r9]	@ movhi
	bne	.L723
	add	r0, r5, #3264
	add	r5, r5, #3744
	strh	r8, [r0, #12]	@ movhi
	strh	r8, [r5, #12]	@ movhi
	strh	r8, [r0, #14]	@ movhi
	ldr	r0, .L783+4
	strh	r8, [r5, #14]	@ movhi
	add	r9, r2, #146
.L724:
	strh	r0, [r7]	@ movhi
	add	r8, r7, #480
	add	r5, r7, #960
	add	r7, r7, #2
	cmp	r9, r7
	strh	r0, [r8]	@ movhi
	strh	r0, [r5]	@ movhi
	bne	.L724
	add	r5, r2, #2032
	add	r10, r2, #592
	add	r9, r2, #1072
	add	r7, r2, #1552
	ldr	r8, .L783+4
	strh	r0, [r2, #112]	@ movhi
	strh	r0, [r10]	@ movhi
	strh	r0, [r9]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r5]	@ movhi
	add	r5, r6, #18
	add	r0, r6, #32
.L725:
	strh	r8, [r5]	@ movhi
	add	r7, r5, #480
	add	r5, r5, #2
	cmp	r5, r0
	strh	r8, [r7]	@ movhi
	bne	.L725
	ldr	r5, .L783+4
	add	r7, r3, #210
	add	r10, r3, #222
.L726:
	strh	r5, [r7]	@ movhi
	add	r9, r7, #480
	add	r8, r7, #960
	add	r7, r7, #2
	cmp	r7, r10
	strh	r5, [r9]	@ movhi
	strh	r5, [r8]	@ movhi
	bne	.L726
	add	r7, r2, #2512
	add	r2, r2, #2528
	strh	r5, [r7, #14]	@ movhi
	strh	r5, [r2]	@ movhi
	ldr	r7, .L783+4
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r2, #6]	@ movhi
	add	r6, r6, #50
.L727:
	strh	r7, [r0]	@ movhi
	add	r2, r0, #480
	add	r0, r0, #2
	cmp	r0, r6
	strh	r7, [r2]	@ movhi
	bne	.L727
	mov	r6, #132
	add	r0, r1, #38912
	ldr	r5, .L783+4
	add	r0, r0, #232
.L728:
	sub	r2, r0, #3840
.L729:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L729
	add	r6, r6, #1
	cmp	r6, #136
	add	r0, r0, #2
	bne	.L728
	add	r1, r1, #41472
	ldr	r5, .L783+4
	add	r0, r1, #62
	add	r6, r1, #72
.L732:
	sub	r2, r0, #5248
	sub	r2, r2, #32
.L731:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L731
	add	r0, r0, #2
	cmp	r0, r6
	bne	.L732
	mov	r6, #123
	ldr	r5, .L783+4
	add	r0, r1, #54
.L733:
	sub	r2, r0, #3840
.L734:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L734
	add	r6, r6, #1
	cmp	r6, #127
	add	r0, r2, #2
	bne	.L733
	add	r2, lr, #1776
	add	r8, lr, #2256
	add	r7, lr, #2736
	add	r6, lr, #3216
	add	r0, lr, #3696
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r8, #2]	@ movhi
	strh	r5, [r7, #2]	@ movhi
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r8, #4]	@ movhi
	ldr	r2, .L783+4
	strh	r5, [r7, #4]	@ movhi
	strh	r5, [r6, #4]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	strh	r5, [r4, #84]	@ movhi
	add	r3, r3, #240
	add	ip, ip, #208
.L736:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	ip, r3
	bne	.L736
	mov	r0, #133
	ldr	r2, .L783+4
	add	r1, r1, #74
.L737:
	sub	r3, r1, #2400
.L738:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L738
	add	r0, r0, #1
	cmp	r0, #136
	add	r1, r3, #2
	bne	.L737
	add	r0, lr, #2272
	add	r1, lr, #2752
	add	r3, lr, #3232
	add	lr, lr, #3712
	strh	r2, [r0, #8]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [lr, #8]	@ movhi
	strh	r2, [r4, #104]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L784:
	.align	2
.L783:
	.word	.LANCHOR0
	.word	16191
	.size	clearFrame3, .-clearFrame3
	.align	2
	.global	frame4
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame4, %function
frame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	head4
	pop	{r4, lr}
	b	topMid3
	.size	frame4, .-frame4
	.align	2
	.global	clearFrame4
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFrame4, %function
clearFrame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L893
	ldr	r1, [r1]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L893+4
	add	r4, r1, #12288
	add	ip, r1, #16384
	add	r5, r4, #2784
	add	r0, r1, #14592
	strh	r3, [r0, #4]	@ movhi
	add	lr, r1, #15552
	strh	r3, [r5, #4]	@ movhi
	add	r0, r4, #3744
	add	r5, ip, #612
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	add	lr, ip, #1088
	strh	r3, [ip, #132]	@ movhi
	add	r0, ip, #1568
	strh	r3, [r5]	@ movhi
	add	r5, r1, #18432
	strh	r3, [lr, #4]	@ movhi
	mov	r2, r3
	strh	r3, [r0, #4]	@ movhi
	add	lr, r5, #18
	add	r3, r5, #4
.L788:
	strh	r2, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	lr, r3
	strh	r2, [r0]	@ movhi
	bne	.L788
	add	lr, r1, #13632
	ldr	r0, .L893+4
	add	r3, lr, #6
	add	r2, r5, #6
.L789:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L789
	mov	r6, #100
	ldr	r0, .L893+4
	add	r2, r5, #8
.L790:
	sub	r3, r2, #5248
	sub	r3, r3, #32
.L791:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L791
	add	r6, r6, #1
	cmp	r6, #103
	add	r2, r3, #2
	bne	.L790
	add	r3, r1, #12160
	add	r6, r4, #392
	add	r2, r4, #396
	add	r7, r4, #876
	strh	r0, [r3, #40]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r3, #42]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r3, #44]	@ movhi
	ldr	r6, .L893+4
	strh	r0, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	add	r3, lr, #14
	add	r2, r5, #14
.L793:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L793
	ldr	r3, .L893+4
	add	r0, lr, #16
	add	r2, r5, #16
.L794:
	strh	r3, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r2, r0
	bne	.L794
	add	r0, r4, #3280
	add	r2, r4, #3760
	strh	r3, [r0, #2]	@ movhi
	add	r4, ip, #1552
	strh	r3, [r2, #2]	@ movhi
	add	lr, ip, #2032
	strh	r3, [r0, #4]	@ movhi
	add	r7, ip, #2512
	strh	r3, [r2, #4]	@ movhi
	add	r6, ip, #1072
	strh	r3, [r0, #6]	@ movhi
	add	r10, ip, #608
	strh	r3, [r2, #6]	@ movhi
	add	r0, ip, #2992
	add	r9, ip, #1088
	add	r8, ip, #1568
	add	r2, r1, #19712
	add	fp, ip, #604
	strh	r3, [fp, #2]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r0, #6]	@ movhi
	strh	r3, [r0, #8]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	mov	r3, r2
	ldr	r6, .L893+4
	add	r2, r2, #150
	add	r3, r3, #164
.L795:
	strh	r6, [r2]	@ movhi
	add	lr, r2, #480
	add	r0, r2, #960
	add	r2, r2, #2
	cmp	r3, r2
	strh	r6, [lr]	@ movhi
	strh	r6, [r0]	@ movhi
	bne	.L795
	add	r3, r1, #21248
	add	r2, r1, #25600
	ldr	r0, .L893+4
	add	r3, r3, #66
	add	r2, r2, #34
.L796:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L796
	add	r5, r1, #24064
	ldr	r0, .L893+4
	add	r2, r5, #110
	add	lr, r5, #124
.L797:
	sub	r3, r2, #2880
.L798:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L798
	add	r2, r2, #2
	cmp	lr, r2
	bne	.L797
	add	lr, r1, #20480
	add	r4, lr, #1776
	add	r3, lr, #2256
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	mov	r4, #94
	strh	r0, [r3, #4]	@ movhi
	add	r2, r1, #23552
	ldr	r0, .L893+4
	add	r2, r2, #156
.L800:
	sub	r3, r2, #2400
.L801:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L801
	add	r4, r4, #1
	cmp	r4, #97
	add	r2, r2, #2
	bne	.L800
	add	r2, r1, #24576
	add	r3, lr, #3696
	add	r4, lr, #3216
	add	r7, r2, #572
	strh	r0, [r4, #12]	@ movhi
	add	r6, lr, #3232
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r2, #92]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r4, lr, #3712
	strh	r0, [r2, #94]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	add	r7, r2, #576
	strh	r0, [r6]	@ movhi
	add	r8, r2, #1520
	strh	r0, [r4]	@ movhi
	add	r6, r2, #568
	strh	r0, [r2, #96]	@ movhi
	add	r4, r2, #1040
	strh	r0, [r7]	@ movhi
	add	r7, r2, #2000
	strh	r0, [r3, #8]	@ movhi
	add	r9, r2, #2496
	strh	r0, [r2, #88]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r2, #90]	@ movhi
	add	r3, r2, #3440
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r4, #8]	@ movhi
	add	r6, r2, #2480
	strh	r0, [r8, #8]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r8, #12]	@ movhi
	add	r4, r2, #2960
	strh	r0, [r7, #12]	@ movhi
	add	r8, r2, #2976
	add	r7, r2, #3456
	strh	r0, [r6, #10]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r6, #12]	@ movhi
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r6, #14]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	add	r6, r1, #25088
	strh	r0, [r3, #14]	@ movhi
	strh	r0, [r9]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [r7]	@ movhi
	ldr	r0, .L893+4
	add	r4, r6, #72
	add	r6, r6, #86
.L802:
	sub	r3, r4, #5248
	sub	r3, r3, #32
.L803:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r4
	bne	.L803
	add	r4, r3, #2
	cmp	r6, r4
	bne	.L802
	mov	r6, #101
	ldr	r4, .L893+4
	add	r0, r2, #106
.L806:
	sub	r3, r0, #3840
.L805:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L805
	add	r6, r6, #1
	cmp	r6, #104
	add	r0, r3, #2
	bne	.L806
	ldr	r4, .L893+4
	add	r0, r5, #158
	add	r5, r5, #182
.L807:
	sub	r3, r0, #3360
.L808:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L808
	add	r0, r0, #2
	cmp	r0, r5
	bne	.L807
	add	r5, r1, #21760
	ldr	r0, .L893+4
	add	r3, r5, #64
	add	r5, r5, #78
.L810:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r0, [r4]	@ movhi
	bne	.L810
	add	r5, r1, #26112
	ldr	r4, .L893+4
	add	r3, r5, #2
	add	r5, r5, #28
.L811:
	strh	r4, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r4, [r0]	@ movhi
	bne	.L811
	add	r3, r2, #1072
	add	r0, r2, #600
	add	r5, r2, #596
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	add	r5, r1, #27904
	strh	r4, [r0]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	ldr	r0, .L893+4
	strh	r4, [r3, #10]	@ movhi
	add	r8, r5, #142
	add	r3, r5, #130
.L812:
	strh	r0, [r3]	@ movhi
	add	r7, r3, #480
	add	r6, r3, #960
	add	r4, r3, #1440
	add	r3, r3, #2
	cmp	r3, r8
	strh	r0, [r7]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r4]	@ movhi
	bne	.L812
	add	r6, r1, #28928
	ldr	r0, .L893+4
	add	r3, r6, #78
	add	r6, r6, #98
.L813:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r6, r3
	strh	r0, [r4]	@ movhi
	bne	.L813
	ldr	r0, .L893+4
	add	r3, r5, #156
	add	r5, r5, #172
.L814:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r0, [r4]	@ movhi
	bne	.L814
	add	r3, ip, #3520
	add	r5, ip, #3040
	add	r4, ip, #4000
	strh	r0, [r5, #12]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r5, ip, #3536
	strh	r0, [r4, #14]	@ movhi
	add	r4, ip, #4016
	strh	r0, [r5]	@ movhi
	strh	r0, [r4]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	add	r4, r1, #20224
	strh	r0, [r3, #12]	@ movhi
	ldr	r0, .L893+4
	add	r3, r4, #160
	add	r4, r4, #174
.L815:
	strh	r0, [r3], #2	@ movhi
	cmp	r4, r3
	bne	.L815
	add	r3, ip, #2064
	add	ip, ip, #2544
	strh	r0, [r3, #10]	@ movhi
	add	r6, lr, #3760
	strh	r0, [ip, #10]	@ movhi
	add	r5, r2, #620
	strh	r0, [r3, #12]	@ movhi
	add	r4, r2, #1088
	add	r3, r2, #1568
	strh	r0, [ip, #12]	@ movhi
	add	r7, r1, #26624
	strh	r0, [r6]	@ movhi
	add	ip, r2, #3008
	strh	r0, [r2, #144]	@ movhi
	add	r8, r2, #624
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r2, #146]	@ movhi
	add	r6, r2, #1104
	strh	r0, [r5]	@ movhi
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	add	r5, r2, #1584
	strh	r0, [r3, #14]	@ movhi
	add	r4, r2, #2528
	add	r3, r2, #3488
	strh	r0, [r8]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r5]	@ movhi
	add	r6, r2, #2064
	strh	r0, [r7, #12]	@ movhi
	add	r5, r2, #2544
	strh	r0, [r4, #12]	@ movhi
	strh	r0, [ip, #12]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r7, #14]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	strh	r0, [ip, #14]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r3, r2, #3024
	strh	r0, [r6]	@ movhi
	strh	r0, [r5]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r5, r2, #3504
	add	r3, r2, #2976
	strh	r0, [r5]	@ movhi
	add	r6, r2, #3456
	strh	r0, [r7, #8]	@ movhi
	add	r5, r2, #3936
	strh	r0, [r4, #8]	@ movhi
	strh	r0, [ip, #8]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r0, [ip, #10]	@ movhi
	add	r4, r2, #2992
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r0, [r3, #6]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r0, [r3, #14]	@ movhi
	add	r3, r2, #3472
	strh	r0, [r6, #14]	@ movhi
	add	ip, r2, #3952
	strh	r0, [r5, #14]	@ movhi
	strh	r0, [r4]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r4, r1, #26880
	ldr	r3, .L893+4
	strh	r0, [ip]	@ movhi
	add	r8, r4, #220
	add	r0, r4, #210
.L816:
	strh	r3, [r0]	@ movhi
	add	r6, r0, #480
	add	r5, r0, #960
	add	ip, r0, #1440
	add	r0, r0, #2
	cmp	r8, r0
	strh	r3, [r6]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [ip]	@ movhi
	bne	.L816
	add	r5, r2, #1552
	add	r8, r2, #2032
	add	ip, r2, #2512
	add	r0, r2, #2992
	add	r9, r2, #604
	add	r6, r2, #1072
	strh	r3, [r5, #12]	@ movhi
	add	fp, r2, #608
	strh	r3, [r8, #12]	@ movhi
	add	r10, r2, #1088
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	add	r9, r2, #1568
	strh	r3, [r5, #14]	@ movhi
	add	r6, r2, #2528
	add	r5, r2, #3008
	strh	r3, [r8, #14]	@ movhi
	strh	r3, [ip, #14]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	ldr	r0, .L893+4
	strh	r3, [fp]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	add	ip, r7, #2
	add	r8, r7, #12
.L817:
	sub	r3, ip, #2400
.L818:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L818
	add	ip, r3, #2
	cmp	ip, r8
	bne	.L817
	add	lr, lr, #3744
	ldr	ip, .L893+4
	strh	r0, [lr, #12]	@ movhi
	add	r3, r4, #198
	strh	r0, [r2, #140]	@ movhi
	strh	r0, [r2, #142]	@ movhi
	add	r0, r4, #218
.L820:
	strh	ip, [r3], #2	@ movhi
	cmp	r0, r3
	bne	.L820
	add	r5, r1, #28672
	add	r2, r2, #2992
	add	r4, r5, #1296
	add	lr, r5, #1776
	strh	ip, [r2]	@ movhi
	add	r3, r1, #30720
	strh	ip, [r2, #2]	@ movhi
	ldr	r0, .L893+4
	strh	ip, [r2, #4]	@ movhi
	strh	ip, [r2, #6]	@ movhi
	strh	ip, [r4, #8]	@ movhi
	strh	ip, [lr, #8]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	strh	ip, [lr, #10]	@ movhi
	add	r2, r3, #200
	add	r3, r3, #218
.L821:
	strh	r0, [r2]	@ movhi
	add	lr, r2, #480
	add	ip, r2, #960
	add	r2, r2, #2
	cmp	r2, r3
	strh	r0, [lr]	@ movhi
	strh	r0, [ip]	@ movhi
	bne	.L821
	add	r2, r1, #32768
	add	ip, r5, #3680
	add	lr, r1, #33792
	add	r6, r5, #3696
	add	r4, r2, #556
	add	r3, r2, #552
	add	r7, r2, #564
	add	fp, r2, #560
	strh	r0, [r6, #4]	@ movhi
	add	r8, r2, #1040
	strh	r0, [r2, #84]	@ movhi
	add	r10, r2, #1504
	strh	r0, [r7]	@ movhi
	add	r9, r2, #1984
	strh	r0, [ip, #14]	@ movhi
	add	r7, r2, #1520
	strh	r0, [r2, #78]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r2, #80]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	strh	r0, [r2, #82]	@ movhi
	add	r6, r2, #2000
	strh	r0, [fp, #2]	@ movhi
	strh	r0, [ip, #8]	@ movhi
	strh	r0, [r2, #72]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r0, [lr, #8]	@ movhi
	strh	r0, [ip, #10]	@ movhi
	strh	r0, [r2, #74]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [lr, #10]	@ movhi
	add	r3, r1, #35072
	strh	r0, [ip, #12]	@ movhi
	strh	r0, [r2, #76]	@ movhi
	add	ip, r1, #39424
	strh	r0, [r4]	@ movhi
	ldr	r4, .L893+4
	strh	r0, [lr, #12]	@ movhi
	strh	r0, [lr, #14]	@ movhi
	strh	r0, [r10, #14]	@ movhi
	add	lr, ip, #144
	strh	r0, [r9, #14]	@ movhi
	strh	r0, [r8]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r8, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	add	r0, r3, #176
.L822:
	strh	r4, [r0]	@ movhi
	add	r0, r0, #480
	cmp	lr, r0
	bne	.L822
	add	r6, r1, #39936
	ldr	r4, .L893+4
	add	r0, r6, #102
	add	lr, r6, #124
.L823:
	strh	r4, [r0]	@ movhi
	add	r8, r0, #480
	add	r7, r0, #960
	add	r0, r0, #2
	cmp	lr, r0
	strh	r4, [r8]	@ movhi
	strh	r4, [r7]	@ movhi
	bne	.L823
	ldr	r4, .L893+4
	add	r0, r6, #134
.L824:
	strh	r4, [lr]	@ movhi
	add	r7, lr, #480
	add	lr, lr, #2
	cmp	lr, r0
	strh	r4, [r7]	@ movhi
	bne	.L824
	add	r10, r1, #38400
	add	r7, r10, #210
	mov	r4, r7
	ldr	lr, .L893+4
	add	r10, r10, #238
.L825:
	strh	lr, [r4]	@ movhi
	add	r9, r4, #480
	add	r8, r4, #960
	add	r4, r4, #2
	cmp	r10, r4
	strh	lr, [r9]	@ movhi
	strh	lr, [r8]	@ movhi
	bne	.L825
	add	r4, r1, #40960
	strh	lr, [r4, #60]	@ movhi
	ldr	r8, .L893+4
	strh	lr, [r4, #62]	@ movhi
	strh	lr, [r4, #64]	@ movhi
	strh	lr, [r4, #66]	@ movhi
	strh	lr, [r4, #68]	@ movhi
	add	r6, r6, #146
.L826:
	strh	r8, [r0]	@ movhi
	add	r9, r0, #480
	add	lr, r0, #960
	add	r0, r0, #2
	cmp	r0, r6
	strh	r8, [r9]	@ movhi
	strh	r8, [lr]	@ movhi
	bne	.L826
	add	lr, r1, #36864
	add	r0, lr, #1760
	add	r6, lr, #1776
	add	r9, lr, #2240
	strh	r8, [r0, #14]	@ movhi
	add	r10, r1, #37120
	strh	r8, [r9, #14]	@ movhi
	add	r0, lr, #2256
	strh	r8, [r6]	@ movhi
	ldr	r6, .L893+4
	strh	r8, [r0]	@ movhi
	add	r0, r10, #76
	add	r10, r10, #86
.L827:
	strh	r6, [r0]	@ movhi
	add	r9, r0, #480
	add	r8, r0, #960
	add	r0, r0, #2
	cmp	r0, r10
	strh	r6, [r9]	@ movhi
	strh	r6, [r8]	@ movhi
	bne	.L827
	mov	r8, #105
	ldr	r0, .L893+4
.L828:
	sub	r6, r7, #3840
.L829:
	strh	r0, [r6]	@ movhi
	add	r6, r6, #480
	cmp	r7, r6
	bne	.L829
	add	r8, r8, #1
	cmp	r8, #108
	add	r7, r7, #2
	bne	.L828
	add	r8, r2, #3920
	add	r7, lr, #1264
	add	r10, r2, #2960
	add	r9, r2, #3440
	add	fp, lr, #312
	add	r6, lr, #792
	strh	r0, [r10, #8]	@ movhi
	strh	r0, [r9, #8]	@ movhi
	strh	r0, [r8, #8]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r10, #10]	@ movhi
	strh	r0, [r9, #10]	@ movhi
	add	r10, lr, #796
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [fp, #2]	@ movhi
	add	fp, lr, #316
	strh	r0, [r6, #2]	@ movhi
	add	r9, lr, #800
	strh	r0, [r7, #10]	@ movhi
	add	r6, r1, #34304
	strh	r0, [r8, #12]	@ movhi
	strh	r0, [fp]	@ movhi
	strh	r0, [r10]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	strh	r0, [r8, #14]	@ movhi
	strh	r0, [fp, #2]	@ movhi
	add	r8, r2, #2016
	strh	r0, [r10, #2]	@ movhi
	add	fp, r5, #3216
	strh	r0, [r7, #14]	@ movhi
	add	r10, r5, #3696
	add	r7, r1, #38144
	strh	r0, [r9]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r9, #2]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	add	r9, r5, #2272
	strh	r0, [r7, #4]	@ movhi
	strh	r0, [r7, #6]	@ movhi
	strh	r0, [r7, #8]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r6, #4]	@ movhi
	strh	r0, [r8, #4]	@ movhi
	strh	r0, [r6, #6]	@ movhi
	strh	r0, [r8, #6]	@ movhi
	strh	r0, [fp, #12]	@ movhi
	strh	r0, [r10, #12]	@ movhi
	strh	r0, [fp, #14]	@ movhi
	add	fp, r1, #30464
	strh	r0, [r10, #14]	@ movhi
	add	r8, r5, #1808
	strh	r0, [fp, #4]	@ movhi
	add	r7, r5, #1328
	strh	r0, [r9, #4]	@ movhi
	add	r10, r1, #31744
	strh	r0, [fp, #6]	@ movhi
	ldr	fp, .L893+4
	strh	r0, [r9, #6]	@ movhi
	strh	r0, [r7, #10]	@ movhi
	strh	r0, [r8, #10]	@ movhi
	strh	r0, [r7, #12]	@ movhi
	strh	r0, [r8, #12]	@ movhi
	add	r0, r10, #176
	add	r8, r10, #188
.L831:
	strh	fp, [r0]	@ movhi
	add	r7, r0, #480
	add	r0, r0, #2
	cmp	r0, r8
	strh	fp, [r7]	@ movhi
	bne	.L831
	ldr	r8, .L893+4
	add	r0, r2, #114
	add	r7, r2, #136
.L832:
	strh	r8, [r0]	@ movhi
	add	r10, r0, #480
	add	r9, r0, #960
	add	r0, r0, #2
	cmp	r7, r0
	strh	r8, [r10]	@ movhi
	strh	r8, [r9]	@ movhi
	bne	.L832
	add	r0, r5, #3264
	add	r5, r5, #3744
	strh	r8, [r0, #12]	@ movhi
	strh	r8, [r5, #12]	@ movhi
	strh	r8, [r0, #14]	@ movhi
	ldr	r0, .L893+4
	strh	r8, [r5, #14]	@ movhi
	add	r9, r2, #146
.L833:
	strh	r0, [r7]	@ movhi
	add	r8, r7, #480
	add	r5, r7, #960
	add	r7, r7, #2
	cmp	r7, r9
	strh	r0, [r8]	@ movhi
	strh	r0, [r5]	@ movhi
	bne	.L833
	add	r5, r2, #2032
	add	r10, r2, #592
	add	r9, r2, #1072
	add	r7, r2, #1552
	ldr	r8, .L893+4
	strh	r0, [r2, #112]	@ movhi
	strh	r0, [r10]	@ movhi
	strh	r0, [r9]	@ movhi
	strh	r0, [r7]	@ movhi
	strh	r0, [r5]	@ movhi
	add	r5, r6, #18
	add	r0, r6, #32
.L834:
	strh	r8, [r5]	@ movhi
	add	r7, r5, #480
	add	r5, r5, #2
	cmp	r5, r0
	strh	r8, [r7]	@ movhi
	bne	.L834
	ldr	r5, .L893+4
	add	r7, r3, #210
	add	r10, r3, #222
.L835:
	strh	r5, [r7]	@ movhi
	add	r9, r7, #480
	add	r8, r7, #960
	add	r7, r7, #2
	cmp	r7, r10
	strh	r5, [r9]	@ movhi
	strh	r5, [r8]	@ movhi
	bne	.L835
	add	r7, r2, #2512
	add	r2, r2, #2528
	strh	r5, [r7, #14]	@ movhi
	strh	r5, [r2]	@ movhi
	ldr	r7, .L893+4
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r2, #6]	@ movhi
	add	r6, r6, #50
.L836:
	strh	r7, [r0]	@ movhi
	add	r2, r0, #480
	add	r0, r0, #2
	cmp	r6, r0
	strh	r7, [r2]	@ movhi
	bne	.L836
	mov	r6, #132
	add	r0, r1, #38912
	ldr	r5, .L893+4
	add	r0, r0, #232
.L837:
	sub	r2, r0, #3840
.L838:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L838
	add	r6, r6, #1
	cmp	r6, #136
	add	r0, r0, #2
	bne	.L837
	add	r1, r1, #41472
	ldr	r5, .L893+4
	add	r0, r1, #62
	add	r6, r1, #72
.L841:
	sub	r2, r0, #5248
	sub	r2, r2, #32
.L840:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r0, r2
	bne	.L840
	add	r0, r0, #2
	cmp	r6, r0
	bne	.L841
	mov	r6, #123
	ldr	r5, .L893+4
	add	r0, r1, #54
.L842:
	sub	r2, r0, #3840
.L843:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L843
	add	r6, r6, #1
	cmp	r6, #127
	add	r0, r2, #2
	bne	.L842
	add	r2, lr, #1776
	add	r8, lr, #2256
	add	r7, lr, #2736
	add	r6, lr, #3216
	add	r0, lr, #3696
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r8, #2]	@ movhi
	strh	r5, [r7, #2]	@ movhi
	strh	r5, [r6, #2]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	strh	r5, [r4, #82]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r8, #4]	@ movhi
	ldr	r2, .L893+4
	strh	r5, [r7, #4]	@ movhi
	strh	r5, [r6, #4]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	strh	r5, [r4, #84]	@ movhi
	add	r3, r3, #240
	add	ip, ip, #208
.L845:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, ip
	bne	.L845
	mov	r0, #133
	ldr	r2, .L893+4
	add	r1, r1, #74
.L846:
	sub	r3, r1, #2400
.L847:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L847
	add	r0, r0, #1
	cmp	r0, #136
	add	r1, r3, #2
	bne	.L846
	add	r0, lr, #2272
	add	r1, lr, #2752
	add	r3, lr, #3232
	add	lr, lr, #3712
	strh	r2, [r0, #8]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [lr, #8]	@ movhi
	strh	r2, [r4, #104]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L894:
	.align	2
.L893:
	.word	.LANCHOR0
	.word	16191
	.size	clearFrame4, .-clearFrame4
	.align	2
	.global	frame5
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame5, %function
frame5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	head4
	bl	topMid3
	pop	{r4, lr}
	b	music
	.size	frame5, .-frame5
	.align	2
	.global	clearFrame5
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFrame5, %function
clearFrame5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L1019
	ldr	r1, [r1]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L1019+4
	add	fp, r1, #12288
	add	r0, r1, #16384
	add	r4, fp, #2784
	add	ip, r1, #14592
	strh	r3, [ip, #4]	@ movhi
	add	lr, r1, #15552
	strh	r3, [r4, #4]	@ movhi
	add	ip, fp, #3744
	add	r4, r0, #612
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	add	lr, r0, #1088
	strh	r3, [r0, #132]	@ movhi
	add	ip, r0, #1568
	strh	r3, [r4]	@ movhi
	add	r4, r1, #18432
	strh	r3, [lr, #4]	@ movhi
	mov	r2, r3
	strh	r3, [ip, #4]	@ movhi
	sub	sp, sp, #20
	add	r3, r4, #4
	add	lr, r4, #18
.L898:
	strh	r2, [r3]	@ movhi
	add	ip, r3, #480
	add	r3, r3, #2
	cmp	lr, r3
	strh	r2, [ip]	@ movhi
	bne	.L898
	add	r5, r1, #13632
	ldr	ip, .L1019+4
	add	r3, r5, #6
	add	r2, r4, #6
.L899:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L899
	mov	ip, #100
	ldr	lr, .L1019+4
	add	r2, r4, #8
.L900:
	sub	r3, r2, #5248
	sub	r3, r3, #32
.L901:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L901
	add	ip, ip, #1
	cmp	ip, #103
	add	r2, r3, #2
	bne	.L900
	add	ip, r1, #8192
	add	r6, ip, #4000
	add	r2, fp, #392
	strh	lr, [r6, #8]	@ movhi
	add	r3, fp, #396
	strh	lr, [r2]	@ movhi
	strh	lr, [r6, #10]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	lr, [r6, #12]	@ movhi
	add	r2, fp, #876
	ldr	r6, .L1019+4
	strh	lr, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	add	r3, r5, #14
	add	r2, r4, #14
.L903:
	strh	r6, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L903
	ldr	r3, .L1019+4
	add	r2, r5, #16
	add	lr, r4, #16
.L904:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	lr, r2
	bne	.L904
	add	r9, fp, #3280
	add	r8, fp, #3760
	strh	r3, [r9, #2]	@ movhi
	add	r7, r0, #1552
	strh	r3, [r8, #2]	@ movhi
	add	r5, r0, #2032
	strh	r3, [r9, #4]	@ movhi
	add	r2, r0, #608
	strh	r3, [r8, #4]	@ movhi
	add	r6, r0, #1088
	strh	r3, [r9, #6]	@ movhi
	add	lr, r0, #604
	add	r9, r0, #1568
	add	r10, r0, #1072
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	add	r8, r0, #2512
	strh	r3, [r10, #14]	@ movhi
	add	lr, r0, #2992
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	add	r2, r1, #19712
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [lr, #6]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	mov	r3, r2
	ldr	r6, .L1019+4
	add	r2, r2, #150
	add	r3, r3, #164
.L905:
	strh	r6, [r2]	@ movhi
	add	r4, r2, #480
	add	lr, r2, #960
	add	r2, r2, #2
	cmp	r3, r2
	strh	r6, [r4]	@ movhi
	strh	r6, [lr]	@ movhi
	bne	.L905
	add	r3, r1, #21248
	add	r2, r1, #25600
	ldr	lr, .L1019+4
	add	r3, r3, #66
	add	r2, r2, #34
.L906:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L906
	add	r4, r1, #24064
	ldr	lr, .L1019+4
	add	r2, r4, #110
	add	r5, r4, #124
.L907:
	sub	r3, r2, #2880
.L908:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L908
	add	r2, r3, #2
	cmp	r5, r2
	bne	.L907
	add	r3, r1, #20480
	add	r5, r3, #1776
	str	r3, [sp, #4]
	add	r3, r3, #2256
	strh	lr, [r5, #2]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	lr, [r5, #4]	@ movhi
	mov	r5, #94
	strh	lr, [r3, #4]	@ movhi
	add	r2, r1, #23552
	ldr	lr, .L1019+4
	add	r2, r2, #156
.L910:
	sub	r3, r2, #2400
.L911:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L911
	add	r5, r5, #1
	cmp	r5, #97
	add	r2, r2, #2
	bne	.L910
	ldr	r8, [sp, #4]
	add	r2, r1, #24576
	add	r3, r8, #3696
	add	r5, r8, #3216
	add	r7, r2, #572
	strh	lr, [r5, #12]	@ movhi
	add	r6, r8, #3232
	strh	lr, [r3, #12]	@ movhi
	strh	lr, [r2, #92]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r5, #14]	@ movhi
	strh	lr, [r3, #14]	@ movhi
	add	r5, r8, #3712
	strh	lr, [r2, #94]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	add	r7, r2, #576
	strh	lr, [r6]	@ movhi
	add	r8, r2, #1520
	strh	lr, [r5]	@ movhi
	add	r6, r2, #568
	strh	lr, [r2, #96]	@ movhi
	add	r5, r2, #1040
	strh	lr, [r7]	@ movhi
	add	r7, r2, #2000
	strh	lr, [r3, #8]	@ movhi
	add	r9, r2, #2976
	strh	lr, [r2, #88]	@ movhi
	strh	lr, [r6]	@ movhi
	strh	lr, [r3, #10]	@ movhi
	strh	lr, [r2, #90]	@ movhi
	add	r3, r2, #3440
	strh	lr, [r6, #2]	@ movhi
	strh	lr, [r5, #8]	@ movhi
	add	r6, r2, #2480
	strh	lr, [r8, #8]	@ movhi
	strh	lr, [r7, #8]	@ movhi
	strh	lr, [r5, #10]	@ movhi
	strh	lr, [r8, #10]	@ movhi
	strh	lr, [r7, #10]	@ movhi
	strh	lr, [r5, #12]	@ movhi
	strh	lr, [r8, #12]	@ movhi
	add	r5, r2, #2960
	strh	lr, [r7, #12]	@ movhi
	add	r8, r2, #2496
	add	r7, r2, #3456
	strh	lr, [r6, #10]	@ movhi
	strh	lr, [r5, #10]	@ movhi
	strh	lr, [r3, #10]	@ movhi
	strh	lr, [r6, #12]	@ movhi
	strh	lr, [r5, #12]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	lr, [r6, #14]	@ movhi
	strh	lr, [r5, #14]	@ movhi
	add	r6, r1, #25088
	strh	lr, [r3, #14]	@ movhi
	strh	lr, [r8]	@ movhi
	strh	lr, [r9]	@ movhi
	strh	lr, [r7]	@ movhi
	ldr	lr, .L1019+4
	add	r5, r6, #72
	add	r6, r6, #86
.L912:
	sub	r3, r5, #5248
	sub	r3, r3, #32
.L913:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r5
	bne	.L913
	add	r5, r3, #2
	cmp	r6, r5
	bne	.L912
	mov	r6, #101
	ldr	r5, .L1019+4
	add	lr, r2, #106
.L916:
	sub	r3, lr, #3840
.L915:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, lr
	bne	.L915
	add	r6, r6, #1
	cmp	r6, #104
	add	lr, r3, #2
	bne	.L916
	ldr	r5, .L1019+4
	add	lr, r4, #158
	add	r4, r4, #182
.L917:
	sub	r3, lr, #3360
.L918:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, lr
	bne	.L918
	add	lr, r3, #2
	cmp	r4, lr
	bne	.L917
	add	r5, r1, #21760
	ldr	lr, .L1019+4
	add	r3, r5, #64
	add	r5, r5, #78
.L920:
	strh	lr, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	lr, [r4]	@ movhi
	bne	.L920
	add	r5, r1, #26112
	ldr	r4, .L1019+4
	add	r3, r5, #2
	add	r5, r5, #28
.L921:
	strh	r4, [r3]	@ movhi
	add	lr, r3, #480
	add	r3, r3, #2
	cmp	r5, r3
	strh	r4, [lr]	@ movhi
	bne	.L921
	add	r3, r2, #1072
	add	lr, r2, #600
	add	r5, r2, #596
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	add	r5, r1, #27904
	strh	r4, [lr]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r4, [lr, #2]	@ movhi
	ldr	lr, .L1019+4
	strh	r4, [r3, #10]	@ movhi
	add	r8, r5, #142
	add	r3, r5, #130
.L922:
	strh	lr, [r3]	@ movhi
	add	r7, r3, #480
	add	r6, r3, #960
	add	r4, r3, #1440
	add	r3, r3, #2
	cmp	r8, r3
	strh	lr, [r7]	@ movhi
	strh	lr, [r6]	@ movhi
	strh	lr, [r4]	@ movhi
	bne	.L922
	add	r6, r1, #28928
	ldr	lr, .L1019+4
	add	r3, r6, #78
	add	r6, r6, #98
.L923:
	strh	lr, [r3]	@ movhi
	add	r4, r3, #480
	add	r3, r3, #2
	cmp	r3, r6
	strh	lr, [r4]	@ movhi
	bne	.L923
	ldr	r4, .L1019+4
	add	r3, r5, #156
	add	r5, r5, #172
.L924:
	strh	r4, [r3]	@ movhi
	add	lr, r3, #480
	add	r3, r3, #2
	cmp	r3, r5
	strh	r4, [lr]	@ movhi
	bne	.L924
	add	r3, r0, #3520
	add	r5, r0, #3040
	add	lr, r0, #4000
	strh	r4, [r5, #12]	@ movhi
	strh	r4, [r3, #14]	@ movhi
	add	r5, r0, #3536
	strh	r4, [lr, #14]	@ movhi
	add	lr, r0, #4016
	strh	r4, [r5]	@ movhi
	strh	r4, [lr]	@ movhi
	strh	r4, [r3, #10]	@ movhi
	add	lr, r1, #20224
	strh	r4, [r3, #12]	@ movhi
	ldr	r4, .L1019+4
	add	r3, lr, #160
	add	lr, lr, #174
.L925:
	strh	r4, [r3], #2	@ movhi
	cmp	lr, r3
	bne	.L925
	ldr	r5, [sp, #4]
	add	r3, r0, #2064
	add	lr, r0, #2544
	strh	r4, [r3, #10]	@ movhi
	add	r7, r5, #3760
	strh	r4, [lr, #10]	@ movhi
	add	r6, r2, #620
	strh	r4, [r3, #12]	@ movhi
	add	r5, r2, #1088
	strh	r4, [lr, #12]	@ movhi
	add	r3, r2, #1568
	add	lr, r2, #624
	strh	r4, [r7]	@ movhi
	add	r8, r2, #1104
	strh	r4, [r2, #144]	@ movhi
	strh	r4, [r7, #2]	@ movhi
	strh	r4, [r2, #146]	@ movhi
	add	r7, r2, #1584
	strh	r4, [r6]	@ movhi
	strh	r4, [r5, #12]	@ movhi
	strh	r4, [r3, #12]	@ movhi
	strh	r4, [r6, #2]	@ movhi
	strh	r4, [r5, #14]	@ movhi
	add	r6, r1, #26624
	strh	r4, [r3, #14]	@ movhi
	add	r5, r2, #2528
	strh	r4, [lr]	@ movhi
	add	r3, r2, #3488
	add	lr, r2, #3008
	strh	r4, [r8]	@ movhi
	strh	r4, [r7]	@ movhi
	add	r8, r2, #2544
	strh	r4, [r6, #12]	@ movhi
	add	r7, r2, #2064
	strh	r4, [r5, #12]	@ movhi
	strh	r4, [lr, #12]	@ movhi
	strh	r4, [r3, #12]	@ movhi
	strh	r4, [r6, #14]	@ movhi
	strh	r4, [r5, #14]	@ movhi
	strh	r4, [lr, #14]	@ movhi
	strh	r4, [r3, #14]	@ movhi
	add	r3, r2, #3024
	strh	r4, [r7]	@ movhi
	strh	r4, [r8]	@ movhi
	add	r7, r2, #3504
	strh	r4, [r3]	@ movhi
	add	r3, r2, #2976
	strh	r4, [r7]	@ movhi
	add	r8, r2, #3456
	strh	r4, [r6, #8]	@ movhi
	add	r7, r2, #3936
	strh	r4, [r5, #8]	@ movhi
	strh	r4, [lr, #8]	@ movhi
	strh	r4, [r6, #10]	@ movhi
	strh	r4, [r5, #10]	@ movhi
	strh	r4, [lr, #10]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	add	lr, r2, #2992
	strh	r4, [r3, #4]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r4, [r3, #10]	@ movhi
	strh	r4, [r3, #12]	@ movhi
	strh	r4, [r3, #14]	@ movhi
	add	r3, r2, #3472
	strh	r4, [r8, #14]	@ movhi
	add	r5, r2, #3952
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [lr]	@ movhi
	strh	r4, [r3]	@ movhi
	add	lr, r1, #26880
	ldr	r3, .L1019+4
	strh	r4, [r5]	@ movhi
	add	r9, lr, #220
	add	r4, lr, #210
.L926:
	strh	r3, [r4]	@ movhi
	add	r8, r4, #480
	add	r7, r4, #960
	add	r5, r4, #1440
	add	r4, r4, #2
	cmp	r9, r4
	strh	r3, [r8]	@ movhi
	strh	r3, [r7]	@ movhi
	strh	r3, [r5]	@ movhi
	bne	.L926
	add	r8, r2, #1552
	add	r5, r2, #2032
	add	r4, r2, #2512
	add	r7, r2, #2992
	add	r10, r2, #604
	add	r9, r2, #1072
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	add	r10, r2, #608
	strh	r3, [r8, #14]	@ movhi
	add	r9, r2, #1088
	strh	r3, [r5, #14]	@ movhi
	add	r8, r2, #1568
	strh	r3, [r4, #14]	@ movhi
	add	r5, r2, #2528
	add	r4, r2, #3008
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r8]	@ movhi
	strh	r3, [r6]	@ movhi
	ldr	r8, .L1019+4
	strh	r3, [r5]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	add	r7, r6, #2
	add	r9, r6, #12
.L927:
	sub	r3, r7, #2400
.L928:
	strh	r8, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r7
	bne	.L928
	add	r7, r3, #2
	cmp	r9, r7
	bne	.L927
	ldr	r3, [sp, #4]
	add	r3, r3, #3744
	strh	r8, [r3, #12]	@ movhi
	ldr	r4, .L1019+4
	strh	r8, [r2, #140]	@ movhi
	strh	r8, [r2, #142]	@ movhi
	add	r3, lr, #198
	add	lr, lr, #218
.L930:
	strh	r4, [r3], #2	@ movhi
	cmp	lr, r3
	bne	.L930
	add	r5, r1, #28672
	add	r2, r2, #2992
	add	r7, r5, #1296
	add	r6, r5, #1776
	strh	r4, [r2]	@ movhi
	add	r3, r1, #30720
	strh	r4, [r2, #2]	@ movhi
	ldr	lr, .L1019+4
	strh	r4, [r2, #4]	@ movhi
	strh	r4, [r2, #6]	@ movhi
	strh	r4, [r7, #8]	@ movhi
	strh	r4, [r6, #8]	@ movhi
	strh	r4, [r7, #10]	@ movhi
	strh	r4, [r6, #10]	@ movhi
	add	r2, r3, #200
	add	r3, r3, #218
.L931:
	strh	lr, [r2]	@ movhi
	add	r6, r2, #480
	add	r4, r2, #960
	add	r2, r2, #2
	cmp	r3, r2
	strh	lr, [r6]	@ movhi
	strh	lr, [r4]	@ movhi
	bne	.L931
	add	r3, r1, #32768
	add	r6, r5, #3680
	add	r4, r5, #3696
	add	r8, r3, #560
	add	r9, r3, #564
	add	r10, r3, #556
	strh	lr, [r4, #4]	@ movhi
	add	r2, r1, #33792
	strh	lr, [r3, #84]	@ movhi
	add	r7, r3, #552
	strh	lr, [r9]	@ movhi
	strh	lr, [r6, #14]	@ movhi
	add	r9, r3, #1504
	strh	lr, [r3, #78]	@ movhi
	strh	lr, [r10, #2]	@ movhi
	strh	lr, [r4]	@ movhi
	strh	lr, [r3, #80]	@ movhi
	strh	lr, [r8]	@ movhi
	strh	lr, [r4, #2]	@ movhi
	add	r4, r3, #1984
	strh	lr, [r3, #82]	@ movhi
	strh	lr, [r8, #2]	@ movhi
	strh	lr, [r6, #8]	@ movhi
	add	r8, r3, #1040
	strh	lr, [r3, #72]	@ movhi
	strh	lr, [r7]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	strh	lr, [r6, #10]	@ movhi
	strh	lr, [r3, #74]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	strh	lr, [r2, #10]	@ movhi
	add	r7, r3, #1520
	strh	lr, [r6, #12]	@ movhi
	strh	lr, [r3, #76]	@ movhi
	add	r6, r3, #2000
	strh	lr, [r10]	@ movhi
	strh	lr, [r2, #12]	@ movhi
	strh	lr, [r2, #14]	@ movhi
	strh	lr, [r9, #14]	@ movhi
	add	r2, r1, #35072
	strh	lr, [r4, #14]	@ movhi
	add	r9, r1, #39424
	ldr	r4, .L1019+4
	strh	lr, [r8]	@ movhi
	str	r2, [sp, #4]
	strh	lr, [r7]	@ movhi
	str	r9, [sp, #8]
	strh	lr, [r6]	@ movhi
	add	r2, r2, #176
	strh	lr, [r8, #2]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	strh	lr, [r6, #2]	@ movhi
	add	lr, r9, #144
.L932:
	strh	r4, [r2]	@ movhi
	add	r2, r2, #480
	cmp	lr, r2
	bne	.L932
	add	r7, r1, #39936
	ldr	lr, .L1019+4
	add	r2, r7, #102
	add	r4, r7, #124
.L933:
	strh	lr, [r2]	@ movhi
	add	r8, r2, #480
	add	r6, r2, #960
	add	r2, r2, #2
	cmp	r2, r4
	strh	lr, [r8]	@ movhi
	strh	lr, [r6]	@ movhi
	bne	.L933
	ldr	r4, .L1019+4
	add	lr, r7, #134
.L934:
	strh	r4, [r2]	@ movhi
	add	r6, r2, #480
	add	r2, r2, #2
	cmp	lr, r2
	strh	r4, [r6]	@ movhi
	bne	.L934
	add	r10, r1, #38400
	add	r2, r10, #210
	mov	r4, r2
	ldr	r6, .L1019+4
	add	r10, r10, #238
.L935:
	strh	r6, [r4]	@ movhi
	add	r9, r4, #480
	add	r8, r4, #960
	add	r4, r4, #2
	cmp	r10, r4
	strh	r6, [r9]	@ movhi
	strh	r6, [r8]	@ movhi
	bne	.L935
	add	r4, r1, #40960
	strh	r6, [r4, #60]	@ movhi
	strh	r6, [r4, #62]	@ movhi
	strh	r6, [r4, #64]	@ movhi
	strh	r6, [r4, #66]	@ movhi
	strh	r6, [r4, #68]	@ movhi
	ldr	r6, .L1019+4
	add	r7, r7, #146
.L936:
	strh	r6, [lr]	@ movhi
	add	r9, lr, #480
	add	r8, lr, #960
	add	lr, lr, #2
	cmp	r7, lr
	strh	r6, [r9]	@ movhi
	strh	r6, [r8]	@ movhi
	bne	.L936
	add	lr, r1, #36864
	add	r7, lr, #1760
	strh	r6, [r7, #14]	@ movhi
	add	r9, lr, #2240
	add	r7, lr, #2256
	add	r8, lr, #1776
	strh	r6, [r9, #14]	@ movhi
	add	r10, r1, #37120
	strh	r6, [r8]	@ movhi
	strh	r6, [r7]	@ movhi
	ldr	r7, .L1019+4
	add	r6, r10, #76
	add	r10, r10, #86
.L937:
	strh	r7, [r6]	@ movhi
	add	r9, r6, #480
	add	r8, r6, #960
	add	r6, r6, #2
	cmp	r10, r6
	strh	r7, [r9]	@ movhi
	strh	r7, [r8]	@ movhi
	bne	.L937
	mov	r8, #105
	mov	r7, r2
	ldr	r2, .L1019+4
.L938:
	sub	r6, r7, #3840
.L939:
	strh	r2, [r6]	@ movhi
	add	r6, r6, #480
	cmp	r6, r7
	bne	.L939
	add	r8, r8, #1
	cmp	r8, #108
	add	r7, r6, #2
	bne	.L938
	add	r10, r3, #2960
	add	r9, r3, #3440
	add	r6, r3, #3920
	strh	r2, [r10, #8]	@ movhi
	str	r6, [sp, #12]
	strh	r2, [r9, #8]	@ movhi
	add	r8, lr, #312
	strh	r2, [r6, #8]	@ movhi
	add	r7, lr, #792
	add	r6, lr, #1264
	strh	r2, [r8]	@ movhi
	strh	r2, [r7]	@ movhi
	strh	r2, [r6, #8]	@ movhi
	strh	r2, [r10, #10]	@ movhi
	strh	r2, [r9, #10]	@ movhi
	ldr	r9, [sp, #12]
	add	r10, lr, #796
	strh	r2, [r9, #10]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	mov	r8, r10
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r6, #10]	@ movhi
	strh	r2, [r9, #12]	@ movhi
	add	r9, lr, #316
	strh	r2, [r9]	@ movhi
	strh	r2, [r10]	@ movhi
	ldr	r10, [sp, #12]
	strh	r2, [r6, #12]	@ movhi
	strh	r2, [r10, #14]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r6, #14]	@ movhi
	add	r8, r1, #38144
	add	r6, lr, #800
	strh	r2, [r6]	@ movhi
	add	r10, r3, #2016
	strh	r2, [r8]	@ movhi
	add	r7, r1, #34304
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	add	r6, r5, #3696
	strh	r2, [r8, #4]	@ movhi
	strh	r2, [r8, #6]	@ movhi
	strh	r2, [r8, #8]	@ movhi
	strh	r2, [r8, #10]	@ movhi
	add	r8, r5, #3216
	strh	r2, [r7, #4]	@ movhi
	strh	r2, [r10, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	strh	r2, [r10, #6]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	strh	r2, [r6, #12]	@ movhi
	strh	r2, [r8, #14]	@ movhi
	strh	r2, [r6, #14]	@ movhi
	add	r8, r5, #2272
	add	r6, r1, #30464
	strh	r2, [r6, #4]	@ movhi
	add	r9, r5, #1328
	strh	r2, [r8, #4]	@ movhi
	add	r10, r1, #31744
	strh	r2, [r6, #6]	@ movhi
	strh	r2, [r8, #6]	@ movhi
	ldr	r6, .L1019+4
	add	r8, r5, #1808
	strh	r2, [r9, #10]	@ movhi
	strh	r2, [r8, #10]	@ movhi
	strh	r2, [r9, #12]	@ movhi
	strh	r2, [r8, #12]	@ movhi
	add	r9, r10, #188
	add	r2, r10, #176
.L941:
	strh	r6, [r2]	@ movhi
	add	r8, r2, #480
	add	r2, r2, #2
	cmp	r9, r2
	strh	r6, [r8]	@ movhi
	bne	.L941
	ldr	r8, .L1019+4
	add	r6, r3, #114
	add	r2, r3, #136
.L942:
	strh	r8, [r6]	@ movhi
	add	r10, r6, #480
	add	r9, r6, #960
	add	r6, r6, #2
	cmp	r2, r6
	strh	r8, [r10]	@ movhi
	strh	r8, [r9]	@ movhi
	bne	.L942
	add	r6, r5, #3264
	add	r5, r5, #3744
	strh	r8, [r6, #12]	@ movhi
	strh	r8, [r5, #12]	@ movhi
	strh	r8, [r6, #14]	@ movhi
	ldr	r6, .L1019+4
	strh	r8, [r5, #14]	@ movhi
	add	r9, r3, #146
.L943:
	strh	r6, [r2]	@ movhi
	add	r8, r2, #480
	add	r5, r2, #960
	add	r2, r2, #2
	cmp	r2, r9
	strh	r6, [r8]	@ movhi
	strh	r6, [r5]	@ movhi
	bne	.L943
	add	r2, r3, #592
	add	r8, r3, #1072
	strh	r6, [r3, #112]	@ movhi
	add	r5, r3, #1552
	strh	r6, [r2]	@ movhi
	strh	r6, [r8]	@ movhi
	add	r2, r3, #2032
	ldr	r8, .L1019+4
	strh	r6, [r5]	@ movhi
	strh	r6, [r2]	@ movhi
	add	r5, r7, #18
	add	r2, r7, #32
.L944:
	strh	r8, [r5]	@ movhi
	add	r6, r5, #480
	add	r5, r5, #2
	cmp	r2, r5
	strh	r8, [r6]	@ movhi
	bne	.L944
	ldr	r8, [sp, #4]
	ldr	r5, .L1019+4
	add	r6, r8, #210
	add	r10, r8, #222
.L945:
	strh	r5, [r6]	@ movhi
	add	r9, r6, #480
	add	r8, r6, #960
	add	r6, r6, #2
	cmp	r10, r6
	strh	r5, [r9]	@ movhi
	strh	r5, [r8]	@ movhi
	bne	.L945
	add	r6, r3, #2512
	add	r3, r3, #2528
	strh	r5, [r6, #14]	@ movhi
	strh	r5, [r3]	@ movhi
	ldr	r6, .L1019+4
	strh	r5, [r3, #2]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	strh	r5, [r3, #6]	@ movhi
	add	r7, r7, #50
.L946:
	strh	r6, [r2]	@ movhi
	add	r3, r2, #480
	add	r2, r2, #2
	cmp	r2, r7
	strh	r6, [r3]	@ movhi
	bne	.L946
	mov	r6, #132
	add	r2, r1, #38912
	ldr	r5, .L1019+4
	add	r2, r2, #232
.L947:
	sub	r3, r2, #3840
.L948:
	strh	r5, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L948
	add	r6, r6, #1
	cmp	r6, #136
	add	r2, r3, #2
	bne	.L947
	add	r3, r1, #41472
	ldr	r6, .L1019+4
	add	r5, r3, #62
	add	r7, r3, #72
.L951:
	sub	r2, r5, #5248
	sub	r2, r2, #32
.L950:
	strh	r6, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r5
	bne	.L950
	add	r5, r2, #2
	cmp	r5, r7
	bne	.L951
	mov	r7, #123
	ldr	r2, .L1019+4
	add	r6, r3, #54
.L952:
	sub	r5, r6, #3840
.L953:
	strh	r2, [r5]	@ movhi
	add	r5, r5, #480
	cmp	r6, r5
	bne	.L953
	add	r7, r7, #1
	cmp	r7, #127
	add	r6, r6, #2
	bne	.L952
	add	r5, lr, #1776
	add	r6, lr, #3696
	add	r9, lr, #2256
	add	r8, lr, #2736
	add	r7, lr, #3216
	strh	r2, [r5, #2]	@ movhi
	strh	r2, [r9, #2]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [r4, #82]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strh	r2, [r9, #4]	@ movhi
	strh	r2, [r8, #4]	@ movhi
	strh	r2, [r7, #4]	@ movhi
	strh	r2, [r6, #4]	@ movhi
	strh	r2, [r4, #84]	@ movhi
	ldr	r6, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r5, .L1019+4
	add	r2, r2, #240
	add	r6, r6, #208
.L955:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r6
	bne	.L955
	mov	r6, #133
	ldr	r5, .L1019+4
	add	r3, r3, #74
.L956:
	sub	r2, r3, #2400
.L957:
	strh	r5, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r3
	bne	.L957
	add	r6, r6, #1
	cmp	r6, #136
	add	r3, r2, #2
	bne	.L956
	add	r3, r1, #10240
	mov	r2, r3
	add	r6, lr, #2272
	add	r8, lr, #2752
	add	r7, lr, #3232
	add	lr, lr, #3712
	strh	r5, [r6, #8]	@ movhi
	strh	r5, [r8, #8]	@ movhi
	add	r6, r1, #17408
	strh	r5, [r7, #8]	@ movhi
	ldr	r8, .L1019+4
	strh	r5, [lr, #8]	@ movhi
	strh	r5, [r4, #104]	@ movhi
	add	lr, r6, #32
.L959:
	strh	r8, [r2]	@ movhi
	add	r2, r2, #480
	cmp	lr, r2
	bne	.L959
	ldr	lr, .L1019+4
	add	r3, r3, #2
	add	r6, r6, #34
.L960:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r6
	bne	.L960
	add	r2, ip, #3488
	add	r3, r1, #12160
	add	r4, r1, #11200
	strh	lr, [r4, #4]	@ movhi
	add	r6, ip, #3024
	strh	lr, [r2, #4]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	strh	lr, [r4, #6]	@ movhi
	strh	lr, [r2, #6]	@ movhi
	strh	lr, [r3, #6]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	strh	lr, [r3, #8]	@ movhi
	strh	lr, [r2, #10]	@ movhi
	strh	lr, [r3, #10]	@ movhi
	strh	lr, [r4, #12]	@ movhi
	strh	lr, [r2, #12]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	lr, [r4, #14]	@ movhi
	add	r4, ip, #3504
	strh	lr, [r2, #14]	@ movhi
	strh	lr, [r3, #14]	@ movhi
	strh	lr, [r6]	@ movhi
	strh	lr, [r4]	@ movhi
	mov	r4, #76
	add	r5, ip, #3984
	strh	lr, [r5]	@ movhi
	add	r2, r1, #19200
	ldr	lr, .L1019+4
	add	r2, r2, #152
.L961:
	sub	r3, r2, #3840
.L962:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L962
	add	r4, r4, #1
	cmp	r4, #80
	add	r2, r2, #2
	bne	.L961
	add	r4, r0, #564
	add	r6, r0, #1040
	add	r3, r0, #1520
	add	r2, r0, #2480
	add	r8, r0, #2000
	strh	lr, [r0, #84]	@ movhi
	add	r5, fp, #3696
	strh	lr, [r4]	@ movhi
	strh	lr, [r6, #4]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	strh	lr, [r8, #4]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	strh	lr, [r0, #86]	@ movhi
	strh	lr, [r4, #2]	@ movhi
	add	r4, fp, #2736
	strh	lr, [r6, #6]	@ movhi
	add	r7, r0, #1056
	strh	lr, [r3, #6]	@ movhi
	add	r6, r0, #2016
	strh	lr, [r8, #6]	@ movhi
	add	r3, r1, #17920
	strh	lr, [r2, #6]	@ movhi
	add	r0, r1, #13184
	strh	lr, [r5, #6]	@ movhi
	add	r2, r1, #6464
	strh	lr, [r4, #14]	@ movhi
	ldr	r4, .L1019+4
	strh	lr, [r7]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	lr, [r6]	@ movhi
	add	r3, r2, #14
	add	lr, r0, #14
.L964:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L964
	ldr	r3, .L1019+4
	add	r2, r2, #16
	add	r0, r0, #16
	b	.L1020
.L1021:
	.align	2
.L1019:
	.word	.LANCHOR0
	.word	16191
.L1020:
.L965:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L965
	add	r5, ip, #4064
	add	r10, ip, #3104
	add	r7, ip, #4048
	add	r6, r1, #11776
	add	lr, fp, #444
	add	r2, r1, #12736
	strh	r3, [r7, #14]	@ movhi
	add	r0, r1, #4096
	strh	r3, [lr, #2]	@ movhi
	add	r4, ip, #1184
	strh	r3, [r5]	@ movhi
	add	r9, ip, #2144
	strh	r3, [r2]	@ movhi
	add	r8, r1, #10816
	strh	r3, [r10, #2]	@ movhi
	add	r7, r1, #9856
	strh	r3, [r6, #2]	@ movhi
	add	r2, ip, #720
	strh	r3, [r5, #2]	@ movhi
	add	lr, ip, #716
	strh	r3, [r10, #4]	@ movhi
	add	r10, ip, #1200
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	add	r6, r0, #3376
	strh	r3, [r9, #4]	@ movhi
	add	r5, r0, #3856
	strh	r3, [r8, #4]	@ movhi
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r9, #8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	add	r9, r0, #980
	strh	r3, [r4, #8]	@ movhi
	add	r8, r0, #1456
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [ip, #238]	@ movhi
	add	r7, r0, #1936
	strh	r3, [lr, #2]	@ movhi
	add	r0, r0, #984
	strh	r3, [r4, #14]	@ movhi
	add	lr, fp, #2848
	strh	r3, [ip, #240]	@ movhi
	add	r4, fp, #2864
	strh	r3, [r2]	@ movhi
	strh	r3, [r10]	@ movhi
	strh	r3, [ip, #242]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	ip, .L1019+4
	add	r2, r1, #14656
	strh	r3, [r10, #2]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r6, #4]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r8, #6]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	add	r3, r2, #10
	add	r2, r2, #24
.L966:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L966
	add	r2, fp, #1904
	add	r3, r1, #13696
	ldr	r1, .L1019+4
	strh	ip, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	add	r2, r3, #22
	add	r3, r3, #32
.L967:
	strh	r1, [r2]	@ movhi
	add	r0, r2, #480
	add	r2, r2, #2
	cmp	r3, r2
	strh	r1, [r0]	@ movhi
	bne	.L967
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
	.size	clearFrame5, .-clearFrame5
	.align	2
	.global	drawPipe
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPipe, %function
drawPipe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #992
	ldr	r3, .L1038
	str	lr, [sp, #-4]!
	ldr	lr, [r3]
	add	r2, lr, #52736
	add	ip, lr, #52992
	add	r2, r2, #250
	add	r0, ip, #96
.L1023:
	sub	r3, r2, #7168
	sub	r3, r3, #32
.L1024:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L1024
	add	r2, r3, #2
	cmp	r2, r0
	bne	.L1023
	ldr	r2, .L1038+4
	add	r0, lr, #71680
	ldr	r1, .L1038+8
	add	r2, lr, r2
	add	lr, r0, #592
.L1025:
	sub	r3, r2, #19200
.L1026:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L1026
	add	r2, r2, #2
	cmp	lr, r2
	bne	.L1025
	mov	r1, #992
	add	r2, r0, #516
	add	r0, r0, #544
.L1029:
	sub	r3, r2, #19200
.L1028:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L1028
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L1029
	ldr	r2, .L1038+8
	add	r3, ip, #4
	add	ip, ip, #32
.L1030:
	strh	r2, [r3]	@ movhi
	add	r0, r3, #480
	add	r1, r3, #960
	add	r3, r3, #2
	cmp	r3, ip
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
	bne	.L1030
	ldr	lr, [sp], #4
	bx	lr
.L1039:
	.align	2
.L1038:
	.word	.LANCHOR0
	.word	72210
	.word	16180
	.size	drawPipe, .-drawPipe
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L1041:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L1041
	mov	r2, #67108864
.L1042:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L1042
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"

	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	drawSprites
	.type	drawSprites, %function
drawSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L35
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+4
	ldr	r2, .L35+8
	ldr	r3, [r3, #0]
	smull	r0, r2, r3, r2
	ldr	r5, .L35+12
	ldr	r1, [r5, #4]
	sub	r2, r2, r3, asr #31
	mov	r1, r1, asl #23
	ldr	ip, .L35+16
	ldrb	r0, [r5, #0]	@ zero_extendqisi2
	mvn	r1, r1, lsr #5
	add	r2, r2, r2, asl #1
	mvn	r1, r1, lsr #18
	subs	r3, r3, r2
	strh	r0, [ip, #0]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	bne	.L2
	ldr	r1, .L35+20
	ldr	r2, [r1, #0]
	cmp	r2, #8
	addle	r2, r2, #1
	strle	r2, [r1, #0]
	strgt	r3, [r1, #0]
.L2:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	blt	.L31
	movne	r2, #536	@ movhi
	strneh	r2, [ip, #4]	@ movhi
	beq	.L32
.L8:
	ldr	r3, .L35+24
	ldr	lr, [r3, #0]
	cmp	lr, #0
	ble	.L6
	ldr	r3, .L35+28
	ldr	r2, .L35+16
	mov	r1, #1
.L14:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	moveq	r0, r1
	beq	.L13
	ldr	r0, [r3, #-52]
	ldrb	r4, [r3, #-56]	@ zero_extendqisi2
	mov	r0, r0, asl #23
	mov	r0, r0, lsr #23
	strh	r4, [r2, #8]	@ movhi
	mov	r4, #776	@ movhi
	orr	r0, r0, #16384
	strh	r4, [r2, #12]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	mov	r0, r1
.L13:
	cmp	r0, lr
	add	r3, r3, #60
	add	r1, r1, #1
	add	r2, r2, #8
	blt	.L14
.L6:
	ldr	r3, .L35+32
	ldr	r1, [r3, #4]
	ldrb	lr, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L35+36
	mov	r1, r1, asl #23
	ldr	r2, [r3, #0]
	mvn	r1, r1, lsr #6
	mov	r3, #968
	add	r3, r3, #2
	mvn	lr, lr, asl #17
	mvn	r1, r1, lsr #17
	strh	r1, [ip, r3]	@ movhi
	mvn	lr, lr, lsr #17
	cmp	r2, #0
	mov	r0, #968
	mov	r3, #972
	mov	r6, #772	@ movhi
	ldr	r2, .L35+16
	strh	lr, [ip, r0]	@ movhi
	strh	r6, [ip, r3]	@ movhi
	ble	.L15
	ldr	r0, [r5, #4]
	sub	r0, r0, #8
	ldr	r4, [r5, #0]
	mov	r0, r0, asl #23
	mov	r1, #400
	mvn	r0, r0, lsr #5
	add	r1, r1, #2
	sub	r4, r4, #6
	mov	r3, #776
	mvn	r0, r0, lsr #18
	strh	r0, [r2, r1]	@ movhi
	and	r4, r4, #255
	add	r3, r3, #2
	mov	lr, #400
	mov	r1, #404
	strh	r4, [r2, lr]	@ movhi
	strh	r3, [r2, r1]	@ movhi
.L15:
	ldr	r3, .L35+40
	ldr	lr, [r3, #0]
	cmp	lr, #0
	ble	.L16
	mov	r1, #0
	ldr	r3, .L35+44
	mov	r2, r1
	b	.L20
.L33:
	ldr	r5, [r3, #-52]
	mov	r5, r5, asl #23
	add	r4, ip, r1
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mvn	r5, r5, lsr #6
	add	r0, r4, #408
	mvn	r5, r5, lsr #17
	add	r4, r4, #412
	mov	r7, #896	@ movhi
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	strh	r7, [r4, #0]	@ movhi
.L17:
	add	r2, r2, #1
	cmp	lr, r2
	add	r3, r3, #60
	add	r1, r1, #8
	ble	.L16
.L20:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L17
	ldr	r0, [r3, #-20]
	cmp	r0, #0
	beq	.L33
	cmp	r0, #1
	beq	.L34
	cmp	r0, #2
	bne	.L17
	ldr	r5, [r3, #-52]
	mov	r5, r5, asl #23
	add	r0, ip, r1
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mov	r5, r5, lsr #23
	add	r4, r0, #408
	orr	r5, r5, #16384
	add	r2, r2, #1
	strh	r6, [r4, #0]	@ movhi
	strh	r5, [r4, #2]	@ movhi
	add	r0, r0, #412
	mov	r4, #964	@ movhi
	cmp	lr, r2
	strh	r4, [r0, #0]	@ movhi
	add	r3, r3, #60
	add	r1, r1, #8
	bgt	.L20
.L16:
	mov	r5, #816
	ldr	r1, .L35+48
	mov	r2, #60
	mov	r3, #0
	add	r5, r5, #2
.L22:
	ldr	lr, [r1, #4]!
	add	r0, r2, #8
	cmp	lr, #0
	mov	r0, r0, asl #16
	beq	.L21
	add	r4, ip, r3
	add	lr, r4, #568
	mov	r6, #146	@ movhi
	add	r4, r4, #572
	strh	r2, [lr, #2]	@ movhi
	strh	r5, [r4, #0]	@ movhi
	strh	r6, [lr, #0]	@ movhi
.L21:
	add	r3, r3, #8
	cmp	r3, #80
	mov	r2, r0, lsr #16
	bne	.L22
	mov	lr, #804
	ldr	r3, .L35+52
	mov	r2, #0
	add	lr, lr, #2
.L24:
	ldr	r1, [r3, #0]
	cmp	r1, #0
	beq	.L23
	ldrb	r5, [r3, #-56]	@ zero_extendqisi2
	ldr	r4, [r3, #-52]
	add	r0, ip, r2
	mvn	r5, r5, asl #17
	add	r1, r0, #728
	mvn	r5, r5, lsr #17
	bic	r4, r4, #65024
	add	r0, r0, #732
	strh	r5, [r1, #0]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	strh	lr, [r0, #0]	@ movhi
.L23:
	add	r2, r2, #8
	cmp	r2, #40
	add	r3, r3, #60
	bne	.L24
	ldr	r3, .L35+56
	ldr	r2, .L35+60
	ldr	r3, [r3, #0]
	smull	r7, r5, r2, r3
	mov	r1, r3, asr #31
	rsb	r5, r1, r5, asr #2
	add	r5, r5, r5, asl #2
	sub	r5, r3, r5, asl #1
	rsb	r3, r5, r3
	smull	r8, r6, r2, r3
	mov	r3, r3, asr #31
	mov	r8, #146	@ movhi
	rsb	r6, r3, r6, asr #2
	mov	r7, #800
	mov	r4, #800
	strh	r8, [ip, r7]	@ movhi
	add	r4, r4, #2
	mov	r7, #200	@ movhi
	add	r6, r6, #784
	strh	r7, [ip, r4]	@ movhi
	add	r6, r6, #2
	mov	r4, #804
	strh	r6, [ip, r4]	@ movhi
	mov	lr, #808
	mov	r4, #808
	strh	r8, [ip, r4]	@ movhi
	add	lr, lr, #2
	mov	r8, #208	@ movhi
	add	r5, r5, #784
	strh	r8, [ip, lr]	@ movhi
	add	r5, r5, #2
	mov	lr, #812
	strh	r5, [ip, lr]	@ movhi
	mov	r0, #3
	ldr	r1, .L35+16
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L35+64
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L34:
	ldr	r5, [r3, #-52]
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mov	r5, r5, asl #23
	add	r4, ip, r1
	mvn	r5, r5, lsr #6
	add	r0, r4, #408
	orr	r6, r6, #16384
	mvn	r5, r5, lsr #17
	add	r4, r4, #412
	mov	r8, #900	@ movhi
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	strh	r8, [r4, #0]	@ movhi
	b	.L17
.L31:
	mov	r1, #528	@ movhi
	strh	r1, [ip, #4]	@ movhi
	b	.L8
.L32:
	ldr	r3, .L35+12
	ldr	r3, [r3, #8]
	cmp	r3, #91
	movle	r3, #536	@ movhi
	strleh	r3, [ip, #4]	@ movhi
	ble	.L8
	ldr	r3, .L35+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ble	.L29
	cmp	r3, #7
	bgt	.L11
	add	r3, r3, #28
.L29:
	mov	r3, r3, asl #3
	strh	r3, [ip, #4]	@ movhi
	b	.L8
.L11:
	cmp	r3, #9
	addle	r3, r3, #56
	movle	r3, r3, asl #3
	strleh	r3, [ip, #4]	@ movhi
	b	.L8
.L36:
	.align	2
.L35:
	.word	hideSprites
	.word	frame
	.word	1431655766
	.word	hero
	.word	shadowOAM
	.word	aniState
	.word	bulletLength
	.word	bullets+56
	.word	obstacles
	.word	cheat
	.word	enemyLength
	.word	enemies+56
	.word	health-4
	.word	jades+56
	.word	score
	.word	1717986919
	.word	DMANow
	.size	drawSprites, .-drawSprites
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, .L38
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mvn	r2, #32768
	mov	r4, #0
	ldr	r8, .L38+8
	strh	r2, [r3, #254]	@ movhi
	strh	r4, [r3, #252]	@ movhi
	ldr	r7, .L38+12
	mov	lr, pc
	bx	r7
	ldr	sl, .L38+16
	mov	r0, r8
	ldr	r9, .L38+20
	mov	lr, pc
	bx	sl
	ldr	r5, .L38+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L38+28
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldr	r6, .L38+32
	mov	r1, #2
	mov	r2, r9
	mov	r3, #255
	mov	r0, #150
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r7
	mov	r0, r8
	mov	lr, pc
	bx	sl
	mov	r2, r9
	mov	r3, #255
	mov	r0, #150
	mov	r1, #2
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r6
	ldr	r3, .L38+36
	str	r4, [r3, #0]
	ldr	r3, .L38+40
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L38+44
	str	r4, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	startScreenPal
	.word	loadPalette
	.word	startScreenBitmap
	.word	waitForVBlank
	.word	drawFullscreenImage4
	.word	.LC1
	.word	drawString4
	.word	.LC0
	.word	flipPage
	.word	state
	.word	frameCount
	.word	score
	.size	goToStart, .-goToStart
	.align	2
	.global	firstStart
	.type	firstStart, %function
firstStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #80896
	mov	r2, #11008
	stmfd	sp!, {r4, lr}
	ldr	r0, .L41
	add	r1, r1, #344
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L41+4
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L42:
	.align	2
.L41:
	.word	title
	.word	playSoundA
	.size	firstStart, .-firstStart
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L44
	ldr	r4, .L44+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L44+8
	mov	lr, pc
	bx	r3
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L44+12
	mov	lr, pc
	bx	r3
	mov	r1, #753664
	add	r1, r1, #1696
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L44+16
	add	r1, r1, #4
	ldr	ip, .L44+20
	mov	lr, pc
	bx	ip
	ldr	r3, .L44+24
	mov	r2, #3
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	winScreenBitmap
	.word	drawFullscreenImage4
	.word	flipPage
	.word	stopSound
	.word	victory
	.word	playSoundA
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L49
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L46
	ldr	r3, .L49+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L48
.L46:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L48:
	bl	firstStart
	ldr	r5, .L49+12
	ldr	r0, .L49+16
	mov	lr, pc
	bx	r5
	ldr	r4, .L49+20
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L49+24
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L49+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L49+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L49+16
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L49+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L50:
	.align	2
.L49:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	drawFullscreenImage4
	.word	startScreenBitmap
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	flipPage
	.size	win, .-win
	.align	2
	.global	fireBullet
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L64
	stmfd	sp!, {r4, r5}
	ldr	r0, [r3, #0]
	cmp	r0, #0
	ble	.L51
	ldr	ip, .L64+4
	ldr	r3, [ip, #56]
	cmp	r3, #0
	movne	r2, ip
	movne	r3, #0
	bne	.L55
	b	.L53
.L60:
	ldr	r1, [r2, #116]
	cmp	r1, #0
	add	r2, r2, #60
	beq	.L53
.L55:
	add	r3, r3, #1
	cmp	r3, r0
	blt	.L60
.L51:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L53:
	mov	r2, #67108864
	add	r2, r2, #256
	ldrh	r2, [r2, #48]
	tst	r2, #64
	moveq	r1, r3, asl #4
	movne	r1, r3, asl #4
	rsbeq	r2, r3, r1
	rsbne	r2, r3, r1
	addeq	r2, ip, r2, asl #2
	mvneq	r0, #8
	addne	r2, ip, r2, asl #2
	movne	r0, #0
	streq	r0, [r2, #16]
	strne	r0, [r2, #16]
	ldr	r0, .L64+8
	ldr	r4, [r0, #8]
	cmp	r4, #92
	ldreq	r0, [r0, #12]
	ldrne	r0, [r0, #12]
	rsb	r2, r3, r1
	add	r2, ip, r2, asl #2
	mov	r5, #1
	addeq	r0, r0, #37
	moveq	r4, #97
	addne	r4, r4, #7
	addne	r0, r0, #35
	streq	r4, [r2, #8]
	streq	r0, [r2, #12]
	strne	r4, [r2, #8]
	strne	r0, [r2, #12]
	rsb	r3, r3, r1
	str	r5, [r2, #56]
	ldr	r1, .L64+12
	mov	r5, #12
	str	r5, [r2, #20]
	add	r2, ip, r3, asl #2
	ldr	r0, [r1, #0]
	ldr	r5, [r2, #8]
	ldr	r4, [r2, #12]
	ldr	r1, [r1, #4]
	rsb	r0, r0, r5
	rsb	r1, r1, r4
	str	r0, [ip, r3, asl #2]
	str	r1, [r2, #4]
	b	.L51
.L65:
	.align	2
.L64:
	.word	bulletLength
	.word	bullets
	.word	hero
	.word	.LANCHOR0
	.size	fireBullet, .-fireBullet
	.align	2
	.global	spawnEnemy
	.type	spawnEnemy, %function
spawnEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L81
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r1, [r3, #0]
	cmp	r1, #0
	ble	.L66
	ldr	r5, .L81+4
	ldr	r4, [r5, #56]
	cmp	r4, #0
	movne	r3, r5
	movne	r4, #0
	bne	.L70
	b	.L68
.L74:
	ldr	r2, [r3, #116]
	cmp	r2, #0
	add	r3, r3, #60
	beq	.L68
.L70:
	add	r4, r4, #1
	cmp	r1, r4
	bgt	.L74
.L66:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L68:
	mov	r8, r4, asl #4
	rsb	r6, r4, r8
	add	r6, r5, r6, asl #2
	mov	r3, #1
	str	r3, [r6, #56]
	mvn	r3, #1
	str	r3, [r6, #20]
	ldr	r7, .L81+8
	mov	lr, pc
	bx	r7
	ldr	r3, .L81+12
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r0
	cmp	r3, #0
	str	r3, [r6, #36]
	beq	.L78
	cmp	r3, #1
	beq	.L79
	cmp	r3, #2
	beq	.L80
.L72:
	mov	lr, pc
	bx	r7
	ldr	r2, .L81+16
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, asl #4
	add	r3, r3, r2, asl #2
	rsb	r0, r3, r0
	rsb	r4, r4, r8
	add	r6, r5, r4, asl #2
	add	r0, r0, #16
	str	r0, [r6, #8]
	mov	lr, pc
	bx	r7
	ldr	ip, .L81+20
	smull	r2, ip, r0, ip
	ldr	r2, .L81+24
	mov	r1, r0, asr #31
	ldr	r3, [r2, #4]
	rsb	r1, r1, ip, asr #7
	add	r1, r1, r1, asl #4
	add	r7, r3, #240
	sub	r0, r0, r1, asl #4
	add	r0, r7, r0
	ldr	ip, [r6, #8]
	ldr	r2, [r2, #0]
	rsb	r3, r3, r0
	rsb	r2, r2, ip
	str	r3, [r6, #4]
	ldr	r3, .L81+28
	str	r2, [r5, r4, asl #2]
	mov	r2, #1
	str	r0, [r6, #12]
	str	r2, [r3, #0]
	b	.L66
.L78:
	mov	r3, #28
	str	r3, [r6, #28]
	mov	r3, #30
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, .L81+16
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, asl #4
	add	r3, r3, r2, asl #2
	rsb	r3, r3, r0
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L72
.L80:
	mov	r3, #16
	str	r3, [r6, #28]
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, .L81+32
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, asl #2
	sub	r3, r0, r3, asl #4
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L72
.L79:
	mov	r3, #12
	str	r3, [r6, #28]
	mov	r3, #21
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	mov	r3, #817889280
	add	r3, r3, #199680
	add	r3, r3, #49
	smull	r2, r3, r0, r3
	mov	r2, r0, asr #31
	rsb	r3, r2, r3, asr #4
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r3, asl #3
	sub	r3, r0, r3, asl #2
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L72
.L82:
	.align	2
.L81:
	.word	enemyLength
	.word	enemies
	.word	rand
	.word	1431655766
	.word	1991868891
	.word	2021161081
	.word	.LANCHOR0
	.word	enemyCanHurt
	.word	1717986919
	.size	spawnEnemy, .-spawnEnemy
	.align	2
	.global	spawnJade
	.type	spawnJade, %function
spawnJade:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L89
	mov	r6, #0
	mov	r3, r4
.L86:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L88
	add	r6, r6, #1
	cmp	r6, #5
	add	r3, r3, #60
	bne	.L86
.L83:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L88:
	rsb	r6, r6, r6, asl #4
	add	r5, r4, r6, asl #2
	mov	r3, #1
	str	r3, [r5, #56]
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	ldr	ip, .L89+8
	smull	r3, ip, r0, ip
	ldr	r2, .L89+12
	mov	r1, r0, asr #31
	ldr	r3, [r2, #4]
	rsb	r1, r1, ip, asr #7
	add	ip, r1, r1, asl #4
	sub	r0, r0, ip, asl #4
	add	r1, r3, #210
	ldr	ip, [r5, #8]
	ldr	r2, [r2, #0]
	add	r0, r1, r0
	rsb	r2, r2, ip
	rsb	r3, r3, r0
	str	r0, [r5, #12]
	str	r2, [r4, r6, asl #2]
	str	r3, [r5, #4]
	b	.L83
.L90:
	.align	2
.L89:
	.word	jades
	.word	rand
	.word	2021161081
	.word	.LANCHOR0
	.size	spawnJade, .-spawnJade
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, #5888	@ movhi
	mov	r6, #67108864
	ldr	r0, .L108
	strh	r1, [r6, #0]	@ movhi
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	mov	lr, #23808
	mov	ip, #6912
	add	lr, lr, #4
	add	ip, ip, #8
	mov	r5, #7936	@ movhi
	mov	r3, #7168
	ldr	r4, .L108+8
	strh	r5, [r6, #12]	@ movhi
	mov	r0, #3
	strh	lr, [r6, #10]	@ movhi
	ldr	r1, .L108+12
	strh	ip, [r6, #8]	@ movhi
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+16
	add	r2, r2, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+20
	add	r2, r2, #16384
	mov	r3, #2272
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+24
	add	r2, r2, #59392
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+28
	add	r2, r2, #32768
	mov	r3, #528
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+32
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+36
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L108+40
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L108+44
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L108+48
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r4, .L108+52
	mov	r5, #0
	ldr	r3, [r4, #0]
	str	r5, [r4, #4]
	ldr	r4, .L108+56
	str	r5, [r4, #0]
	ldr	r4, .L108+60
	str	r5, [r4, #0]
	ldr	r4, .L108+64
	str	r5, [r4, #0]
	ldr	r4, .L108+68
	mov	fp, #12
	str	fp, [r4, #0]
	ldr	r4, .L108+72
	mov	r0, #1
	str	r0, [r4, #0]
	ldr	r4, .L108+76
	str	r0, [r4, #0]
	ldr	r4, .L108+80
	ldr	r1, .L108+84
	mov	ip, #10
	str	ip, [r4, #0]
	mov	r4, #92
	str	r4, [r1, #8]
	mov	r4, #38
	str	r4, [r1, #28]
	mov	r4, #37
	str	r4, [r1, #24]
	ldr	r4, .L108+88
	mvn	fp, #0
	str	fp, [r4, #0]
	ldr	r4, .L108+92
	ldr	r2, .L108+96
	rsb	r9, r3, #92
	str	r0, [r4, #0]
	str	ip, [r1, #12]
	stmia	r1, {r9, ip}	@ phole stm
	ldr	r4, .L108+100
	mov	r1, #32
	str	r1, [r2, #28]
	add	r8, r3, #13
	mov	r1, #16
	str	r0, [r4, #0]
	str	r1, [r2, #24]
	ldr	r7, .L108+104
	mov	r1, #96
	mov	r8, r8, asl #16
	ldr	r4, .L108+108
	str	r1, [r2, #8]
	mov	lr, #300
	rsb	sl, r3, #96
	mov	r1, #27	@ movhi
	mov	r8, r8, lsr #16
	str	r0, [r2, #56]
	str	lr, [r2, #12]
	stmia	r2, {sl, lr}	@ phole stm
	str	ip, [r7, #0]
	str	ip, [r4, #0]
	ldr	r3, .L108+112
	strh	r8, [r6, #26]	@ movhi
	strh	r5, [r6, #22]	@ movhi
	strh	r1, [r6, #18]	@ movhi
	mov	r1, #8	@ movhi
	strh	r1, [r6, #16]	@ movhi
	add	r2, r3, #600
.L92:
	str	r5, [r3, #56]
	add	r3, r3, #60
	cmp	r3, r2
	bne	.L92
	ldr	r6, .L108+116
	mov	r9, #817889280
	add	r9, r9, #199680
	ldr	r4, .L108+120
	ldr	sl, .L108+124
	mov	r8, r5
	mov	fp, r6
	add	r9, r9, #49
	b	.L96
.L93:
	cmp	r3, #1
	beq	.L105
	cmp	r3, #2
	beq	.L106
.L94:
	ldr	r3, [r7, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L107
.L96:
	str	r8, [r4, #56]
	mov	lr, pc
	bx	r6
	smull	r2, r3, sl, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r0
	cmp	r3, #0
	str	r3, [r4, #36]
	bne	.L93
	mov	r3, #28
	str	r3, [r4, #28]
	mov	r3, #30
	str	r3, [r4, #24]
	mov	lr, pc
	bx	fp
	ldr	r3, .L108+128
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, asl #4
	add	r3, r3, r2, asl #2
	rsb	r0, r3, r0
	ldr	r3, [r7, #0]
	add	r5, r5, #1
	add	r0, r0, #16
	cmp	r3, r5
	str	r0, [r4, #8]
	add	r4, r4, #60
	bgt	.L96
.L107:
	ldr	r3, .L108+132
	mov	r1, #1
	add	r2, r3, #40
.L98:
	str	r1, [r3, #4]!
	cmp	r3, r2
	bne	.L98
	ldr	r4, .L108+136
	mov	r5, #268
	add	fp, r4, #300
	mov	r9, #0
	mov	sl, #116
	add	r5, r5, #2
	mov	r8, #12
	mov	r7, #8
.L99:
	str	r9, [r4, #56]
	str	sl, [r4, #8]
	str	r5, [r4, #12]
	str	r8, [r4, #28]
	str	r7, [r4, #24]
	mov	lr, pc
	bx	r6
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	str	r3, [r4, #36]
	add	r4, r4, #60
	cmp	r4, fp
	bne	.L99
	bl	spawnEnemy
	bl	spawnJade
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r2, [r3, #48]
	ldr	r3, .L108+140
	strh	r2, [r3, #0]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L105:
	mov	r2, #12
	mov	r3, #21
	str	r2, [r4, #28]
	str	r3, [r4, #24]
	mov	lr, pc
	bx	fp
	smull	r1, r2, r9, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r3, asl #3
	sub	r0, r0, r3, asl #2
	add	r0, r0, #16
	str	r0, [r4, #8]
	b	.L94
.L106:
	mov	r2, #16
	str	r2, [r4, #28]
	str	r2, [r4, #24]
	mov	lr, pc
	bx	fp
	ldr	r3, .L108+144
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, asl #2
	sub	r0, r0, r3, asl #4
	add	r0, r0, #16
	str	r0, [r4, #8]
	b	.L94
.L109:
	.align	2
.L108:
	.word	bg2Pal
	.word	loadPalette
	.word	DMANow
	.word	bgTiles
	.word	bgMap
	.word	bg2Tiles
	.word	bg2Map
	.word	bg3Tiles
	.word	bg3Map
	.word	spritesheetTiles
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	.LANCHOR0
	.word	frame
	.word	aniState
	.word	jumpFrame
	.word	jumpSpeed
	.word	rAcc
	.word	aniCounter
	.word	bulletLength
	.word	hero
	.word	cheat
	.word	obsCanHurt
	.word	obstacles
	.word	enemyCanHurt
	.word	enemyLength
	.word	healthBucket
	.word	bullets
	.word	rand
	.word	enemies
	.word	1431655766
	.word	1991868891
	.word	health-4
	.word	jades
	.word	buttons
	.word	1717986919
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L111
	mov	r2, #1
	str	r2, [r3, #0]
	bx	lr
.L112:
	.align	2
.L111:
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	startGame
	.type	startGame, %function
startGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L114
	mov	r2, #1
	str	r2, [r3, #0]
	b	initialize
.L115:
	.align	2
.L114:
	.word	state
	.size	startGame, .-startGame
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L117
	ldr	r4, .L117+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L117+8
	mov	lr, pc
	bx	r3
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L117+12
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	loseScreenBitmap
	.word	drawFullscreenImage4
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L184
	sub	sp, sp, #28
	mov	lr, pc
	bx	r3
	ldr	r8, .L184+4
	ldr	r3, .L184+8
	ldr	r4, .L184+12
	ldr	r1, [r8, #16]
	ldr	r2, [r8, #12]
	ldr	r0, [r3, #0]
	ldrh	r3, [r4, #0]
	add	r1, r0, r1
	add	r2, r2, #1
	tst	r3, #8
	str	r1, [r8, #16]
	str	r2, [r8, #12]
	beq	.L120
	ldr	r2, .L184+16
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L174
.L120:
	ldr	r2, [r8, #8]
	cmp	r2, #92
	ldr	r1, .L184+4
	beq	.L175
.L121:
	tst	r3, #1
	beq	.L122
	ldr	r1, .L184+16
	ldrh	r1, [r1, #0]
	tst	r1, #1
	beq	.L176
.L122:
	ldr	r0, [r8, #16]
	tst	r3, #2
	add	r0, r2, r0
	str	r0, [r8, #8]
	beq	.L123
	ldr	r3, .L184+16
	ldrh	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L177
.L123:
	ldr	r6, .L184+20
	ldr	ip, [r6, #12]
	ldr	lr, [r6, #8]
	str	ip, [sp, #4]
	mov	ip, #32
	str	ip, [sp, #8]
	mov	ip, #16
	ldr	r1, [r8, #12]
	ldr	r2, [r8, #28]
	ldr	r3, [r8, #24]
	str	lr, [sp, #0]
	str	ip, [sp, #12]
	ldr	r9, .L184+24
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L171
	ldr	fp, .L184+28
	str	fp, [sp, #16]
.L124:
	ldr	sl, .L184+32
	ldr	r3, [sl, #0]
	cmp	r3, #0
	ble	.L127
	mov	r5, #0
	ldr	r4, .L184+36
	ldr	r7, .L184+40
	b	.L132
.L129:
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L127
.L132:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L129
	ldr	r9, [r8, #28]
	add	ip, r8, #8
	ldmia	ip, {ip, lr}	@ phole ldm
	ldr	fp, [r8, #24]
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	str	r9, [sp, #8]
	stmia	sp, {ip, lr}	@ phole stm
	str	fp, [sp, #12]
	ldr	r9, .L184+24
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L129
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bge	.L129
	ldr	fp, .L184+44
	ldr	r3, .L184+48
	ldr	r2, [fp, #0]
	mov	lr, #9
	b	.L131
.L130:
	sub	lr, lr, #1
	cmn	lr, #1
	sub	r3, r3, #4
	beq	.L129
.L131:
	cmp	r2, #0
	beq	.L130
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L130
	ldr	r0, [sp, #16]
	ldr	r9, .L184+48
	ldr	ip, [r0, #0]
	mov	r3, #0
	str	r3, [r9, lr, asl #2]
	ldr	fp, .L184+44
	ldr	lr, [sp, #16]
	sub	ip, ip, #1
	mov	r1, #3728
	mov	r2, #11008
	ldr	r0, .L184+52
	add	r1, r1, #6
	add	r2, r2, #17
	str	r3, [fp, #0]
	str	ip, [lr, #0]
	ldr	r9, .L184+56
	mov	lr, pc
	bx	r9
	b	.L129
.L127:
	ldr	r5, .L184+60
	mov	r7, #0
	sub	r4, r5, #300
.L136:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L178
.L133:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L136
	ldr	fp, [sp, #16]
	ldr	r3, [fp, #0]
	cmp	r3, #0
	beq	.L179
.L137:
	ldr	r9, .L184+64
	ldr	r3, [r9, #4]
	add	r3, r3, #3
	str	r3, [r9, #4]
	bl	drawSprites
	ldr	r3, [r8, #4]
	cmp	r3, #10
	ldr	r3, .L184+4
	ble	.L138
	ldr	r2, [r3, #8]
	cmp	r2, #92
	beq	.L180
.L138:
	ldr	r3, [r8, #12]
	add	r3, r3, #3
	str	r3, [r8, #12]
.L139:
	ldr	r3, .L184+68
	ldmia	r9, {r4, ip}	@ phole ldm
	add	r0, r3, #180
.L140:
	ldmia	r3, {r1, r2}	@ phole ldm
	rsb	r1, r4, r1
	rsb	r2, ip, r2
	stmdb	r3, {r1, r2}	@ phole stm
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L140
	ldr	r3, [r6, #4]
	cmn	r3, #15
	ldr	r4, .L184+20
	bge	.L141
	ldr	r3, .L184+72
	mov	lr, pc
	bx	r3
	ldr	r1, .L184+76
	smull	ip, r1, r0, r1
	mov	r3, r0, asr #31
	ldr	r2, [r9, #4]
	rsb	r3, r3, r1, asr #7
	add	r3, r3, r3, asl #4
	add	r1, r2, #240
	sub	r0, r0, r3, asl #4
	add	r3, r1, r0
	rsb	r2, r2, r3
	str	r3, [r4, #12]
	ldr	r3, .L184+80
	str	r2, [r4, #4]
	mov	r2, #1
	str	r2, [r3, #0]
.L141:
	ldr	r7, .L184+84
	ldr	r1, [r7, #0]
	cmp	r1, #0
	ble	.L142
	ldmia	r9, {r0, fp}	@ phole ldm
	mov	r2, #0
	str	r0, [sp, #20]
	ldr	r3, .L184+88
	add	r4, fp, #240
	mov	r5, r2
	b	.L146
.L144:
	ldr	r0, [r3, #8]
	cmn	r0, #8
	blt	.L173
	ldr	r6, [r3, #20]
	add	ip, r6, ip
	ldr	r6, [r3, #16]
	add	r0, r6, r0
	ldr	r6, [sp, #20]
	rsb	r6, r6, r0
	str	r6, [r3, #0]
	rsb	r6, fp, ip
	str	ip, [r3, #12]
	str	r0, [r3, #8]
	str	r6, [r3, #4]
.L143:
	add	r2, r2, #1
	cmp	r2, r1
	add	r3, r3, #60
	bge	.L142
.L146:
	ldr	r0, [r3, #56]
	cmp	r0, #0
	beq	.L143
	ldr	ip, [r3, #12]
	cmp	ip, r4
	ble	.L144
.L173:
	add	r2, r2, #1
	cmp	r2, r1
	str	r5, [r3, #56]
	add	r3, r3, #60
	blt	.L146
.L142:
	ldr	r3, [sl, #0]
	cmp	r3, #0
	ble	.L147
	mov	r5, #0
	ldr	r4, .L184+92
	mov	r6, r5
	b	.L150
.L149:
	ldr	ip, [r4, #-8]
	ldr	r3, [r4, #0]
	ldr	r0, [r4, #-12]
	ldmia	r9, {r1, r2}	@ phole ldm
	add	r3, ip, r3
	rsb	r1, r1, r0
	rsb	r2, r2, r3
	str	r3, [r4, #-8]
	str	r1, [r4, #-20]
	str	r2, [r4, #-16]
.L148:
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L181
.L150:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L148
	ldr	r3, [r4, #-16]
	cmn	r3, #30
	bge	.L149
	str	r6, [r4, #36]
	bl	spawnEnemy
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	bgt	.L150
.L181:
	cmp	r3, #0
	ble	.L147
	ldr	r6, .L184+36
	mov	fp, #0
.L151:
	ldr	r3, [r7, #0]
	cmp	r3, #0
	ble	.L154
	ldr	r4, .L184+88
	mov	r5, #0
	b	.L153
.L152:
	ldr	r3, [r7, #0]
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L154
.L153:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	add	r5, r5, #1
	beq	.L152
	ldr	r3, [r6, #56]
	cmp	r3, #0
	beq	.L152
	add	ip, r6, #8
	ldmia	ip, {ip, lr}	@ phole ldm
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	stmia	sp, {ip, lr}	@ phole stm
	ldr	lr, [r6, #28]
	str	lr, [sp, #8]
	ldr	ip, [r6, #24]
	str	ip, [sp, #12]
	ldr	ip, .L184+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L152
	ldr	lr, .L184+96
	ldr	r3, [lr, #0]
	mov	r0, #0
	add	r3, r3, #1
	str	r0, [r4, #56]
	str	r3, [lr, #0]
	str	r0, [r6, #56]
	bl	spawnEnemy
	ldr	r3, [r7, #0]
	cmp	r3, r5
	add	r4, r4, #60
	bgt	.L153
.L154:
	ldr	r3, [sl, #0]
	add	fp, fp, #1
	cmp	r3, fp
	add	r6, r6, #60
	bgt	.L151
.L147:
	ldr	r4, .L184+100
	mov	r6, #0
	add	r5, r4, #300
.L157:
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L155
	ldr	r3, [r4, #-52]
	cmn	r3, #8
	blt	.L182
	sub	r0, r4, #48
	ldmia	r0, {r0, r1}	@ phole ldm
	ldmia	r9, {r2, r3}	@ phole ldm
	rsb	r2, r2, r0
	rsb	r3, r3, r1
	str	r2, [r4, #-56]
	str	r3, [r4, #-52]
.L155:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L157
	ldr	r1, .L184+96
	ldr	r3, [r1, #0]
	cmp	r3, #49
	ble	.L158
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	strh	r3, [r2, #0]	@ movhi
	ldr	r0, .L184+104
	ldr	r3, .L184+108
	mov	lr, pc
	bx	r3
	ldr	r4, .L184+112
	ldr	r0, .L184+116
	mov	lr, pc
	bx	r4
	ldr	r3, .L184+120
	mov	lr, pc
	bx	r3
	ldr	r0, .L184+116
	mov	lr, pc
	bx	r4
	bl	goToWin
.L158:
	ldr	r3, [r9, #4]
	ldr	r2, .L184+124
	ldr	r7, [r8, #8]
	ldr	r0, [r2, #0]
	ldr	r4, [r9, #0]
	ldr	r6, [r8, #12]
	add	ip, r3, r3, lsr #31
	mov	r5, r3, asl #16
	mov	ip, ip, asl #15
	mov	r1, #67108864
	rsb	r4, r4, r7
	rsb	r3, r3, r6
	mov	r5, r5, lsr #16
	mov	ip, ip, lsr #16
	add	r0, r0, #1
	strh	r5, [r1, #20]	@ movhi
	str	r4, [r8, #0]
	str	r3, [r8, #4]
	strh	ip, [r1, #24]	@ movhi
	str	r0, [r2, #0]
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L178:
	ldr	fp, [r8, #24]
	add	ip, r8, #8
	ldmia	ip, {ip, lr}	@ phole ldm
	ldr	r9, [r8, #28]
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	str	fp, [sp, #12]
	stmia	sp, {ip, lr}	@ phole stm
	str	r9, [sp, #8]
	ldr	fp, .L184+24
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L133
	mov	r1, #10944
	mov	r2, #11008
	add	r2, r2, #17
	ldr	r0, .L184+128
	add	r1, r1, #25
	mov	r3, #0
	ldr	ip, .L184+56
	mov	lr, pc
	bx	ip
	ldr	lr, .L184+96
	ldr	r3, [lr, #0]
	add	r3, r3, #1
	str	r3, [lr, #0]
	str	r7, [r4, #56]
	bl	spawnJade
	ldr	r2, .L184+132
	mov	r3, r7
	b	.L135
.L134:
	add	r3, r3, #1
	cmp	r3, #10
	beq	.L133
.L135:
	ldr	r1, [r2, #4]!
	cmp	r1, #0
	bne	.L134
	ldr	r0, [sp, #16]
	ldr	r2, [r0, #0]
	ldr	r1, .L184+48
	add	r2, r2, #1
	mov	r9, #1
	str	r9, [r1, r3, asl #2]
	str	r2, [r0, #0]
	b	.L133
.L182:
	str	r6, [r4, #0]
	bl	spawnJade
	b	.L155
.L171:
	ldr	r3, .L184+40
	ldr	r3, [r3, #0]
	cmp	r3, #0
	blt	.L172
	ldr	ip, .L184+28
	str	ip, [sp, #16]
	b	.L124
.L176:
	cmp	r2, #92
	bne	.L122
	ldr	r1, .L184+136
	ldr	r1, [r1, #0]
	rsb	r1, r1, #0
	str	r1, [r8, #16]
	mov	r1, #38
	str	r1, [r8, #28]
	mov	r1, #25
	str	r1, [r8, #24]
	b	.L122
.L179:
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L184+140
	mov	lr, pc
	bx	r3
	ldr	r3, .L184+108
	ldr	r0, .L184+144
	mov	lr, pc
	bx	r3
	ldr	r4, .L184+112
	ldr	r0, .L184+148
	mov	lr, pc
	bx	r4
	ldr	r3, .L184+120
	mov	lr, pc
	bx	r3
	ldr	r0, .L184+148
	mov	lr, pc
	bx	r4
	mov	r1, #454656
	mov	r2, #11008
	ldr	r0, .L184+152
	add	r1, r1, #360
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L184+156
	mov	lr, pc
	bx	ip
	bl	goToLose
	b	.L137
.L175:
	ldr	lr, .L184+160
	mov	r0, #0
	ldr	ip, [r1, #12]
	str	r0, [r1, #16]
	str	r0, [lr, #0]
	mov	r0, #38
	sub	ip, ip, #1
	str	r0, [r1, #28]
	mov	r0, #37
	str	ip, [r1, #12]
	str	r0, [r1, #24]
	b	.L121
.L180:
	ldr	r2, [r3, #12]
	add	r2, r2, #2
	str	r2, [r3, #12]
	b	.L139
.L174:
	ldr	r3, .L184+164
	mov	lr, pc
	bx	r3
	ldr	r3, .L184+168
	mov	r2, #2
	str	r2, [r3, #0]
	ldrh	r3, [r4, #0]
	b	.L120
.L177:
	mov	r1, #1168
	mov	r2, #11008
	ldr	r0, .L184+172
	add	r1, r1, #12
	add	r2, r2, #17
	ldr	ip, .L184+56
	mov	lr, pc
	bx	ip
	bl	fireBullet
	ldr	r3, .L184+4
	ldr	r0, [r3, #8]
	b	.L123
.L172:
	ldr	r7, .L184+80
	ldr	r5, .L184+48
	ldr	r2, [r7, #0]
	mov	r3, r5
	mov	r4, #9
.L128:
	cmp	r2, #0
	beq	.L125
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L183
.L125:
	sub	r4, r4, #1
	cmn	r4, #1
	sub	r3, r3, #4
	bne	.L128
	ldr	r1, .L184+28
	str	r1, [sp, #16]
	b	.L124
.L183:
	ldr	lr, .L184+28
	mov	r1, #3728
	mov	r2, #11008
	ldr	r0, .L184+52
	add	r2, r2, #17
	mov	r3, #0
	str	lr, [sp, #16]
	add	r1, r1, #6
	ldr	ip, .L184+56
	mov	lr, pc
	bx	ip
	ldr	r0, [sp, #16]
	ldr	r2, [r0, #0]
	mov	r3, #0
	sub	r2, r2, #1
	str	r3, [r5, r4, asl #2]
	str	r3, [r7, #0]
	str	r2, [r0, #0]
	b	.L124
.L185:
	.align	2
.L184:
	.word	waitForVBlank
	.word	hero
	.word	rAcc
	.word	oldButtons
	.word	buttons
	.word	obstacles
	.word	collision
	.word	healthBucket
	.word	enemyLength
	.word	enemies
	.word	cheat
	.word	enemyCanHurt
	.word	health
	.word	hurt
	.word	playSoundB
	.word	jades+300
	.word	.LANCHOR0
	.word	obstacles+8
	.word	rand
	.word	2021161081
	.word	obsCanHurt
	.word	bulletLength
	.word	bullets
	.word	enemies+20
	.word	score
	.word	jades+56
	.word	winScreenPal
	.word	loadPalette
	.word	drawFullscreenImage4
	.word	winScreenBitmap
	.word	flipPage
	.word	frame
	.word	coin
	.word	health-4
	.word	jumpSpeed
	.word	stopSound
	.word	loseScreenPal
	.word	loseScreenBitmap
	.word	loseSong
	.word	playSoundA
	.word	jumpFrame
	.word	pauseSound
	.word	state
	.word	laser
	.size	game, .-game
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L189
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L189+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L186
	ldr	r3, .L189+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L188
.L186:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L188:
	bl	firstStart
	ldr	r5, .L189+12
	ldr	r0, .L189+16
	mov	lr, pc
	bx	r5
	ldr	r4, .L189+20
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L189+24
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L189+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L189+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L189+16
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L189+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L190:
	.align	2
.L189:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	drawFullscreenImage4
	.word	startScreenBitmap
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	flipPage
	.size	lose, .-lose
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L198
	ldr	r3, .L198+4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #0]
	tst	r2, #1
	beq	.L192
	ldr	r3, .L198+8
	ldrh	r3, [r3, #0]
	ands	r3, r3, #1
	beq	.L195
.L192:
	tst	r2, #8
	beq	.L193
	ldr	r3, .L198+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L196
.L193:
	tst	r2, #4
	beq	.L191
	ldr	r3, .L198+8
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L197
.L191:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L197:
	ldr	r3, .L198+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L198+16
	ldr	r0, .L198+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L198+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L198+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L198+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L198+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L198+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L198+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L195:
	ldr	ip, .L198+40
	ldr	lr, [ip, #0]
	mov	r1, #10944
	rsb	lr, lr, #0
	mov	r2, #11008
	add	r2, r2, #17
	str	lr, [ip, #0]
	ldr	r0, .L198+44
	add	r1, r1, #25
	ldr	ip, .L198+48
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #0]
	b	.L192
.L196:
	ldr	r3, .L198+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+56
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L191
.L199:
	.align	2
.L198:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	drawFullscreenImage4
	.word	startScreenBitmap
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	flipPage
	.word	cheat
	.word	coin
	.word	playSoundB
	.word	unpauseSound
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L201
	mov	r2, #2
	str	r2, [r3, #0]
	bx	lr
.L202:
	.align	2
.L201:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	gotoHowto
	.type	gotoHowto, %function
gotoHowto:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r0, .L204
	ldr	r3, .L204+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mov	r2, #0	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r5, .L204+8
	mvn	r2, #32768
	strh	r2, [r3, #254]	@ movhi
	ldr	r6, .L204+12
	mov	lr, pc
	bx	r6
	ldr	r4, .L204+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r7, .L204+20
	ldr	r2, .L204+24
	mov	r3, #255
	mov	r1, #2
	ldr	ip, .L204+28
	mov	r0, #150
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	r0, r5
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	ldr	r3, .L204+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L204+36
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L205:
	.align	2
.L204:
	.word	howtoScreenPal
	.word	loadPalette
	.word	howtoScreenBitmap
	.word	waitForVBlank
	.word	drawFullscreenImage4
	.word	flipPage
	.word	.LC2
	.word	drawString4
	.word	frameCount
	.word	state
	.size	gotoHowto, .-gotoHowto
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L214
	ldr	r3, .L214+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L207
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L211
.L208:
	ldr	r3, .L214+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L209
	ldr	r2, .L214+12
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L212
.L209:
	tst	r3, #4
	beq	.L206
	ldr	r3, .L214+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L213
.L206:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L213:
	ldr	r4, .L214+16
	ldr	r0, .L214+20
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L214+24
	ldr	ip, .L214+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	ip
	ldr	r3, .L214+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L214+20
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	gotoHowto
.L207:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L208
	ldr	r3, .L214+32
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L208
.L211:
	ldr	r3, .L214+32
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L208
.L212:
	ldr	r3, .L214+36
	mov	lr, pc
	bx	r3
	mov	r1, #1294336
	add	r1, r1, #7680
	mov	r2, #11008
	ldr	r0, .L214+40
	add	r1, r1, #46
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L214+44
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	startGame
.L215:
	.align	2
.L214:
	.word	frameCount
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	drawFullscreenImage4
	.word	howtoScreenBitmap
	.word	.LC2
	.word	drawString4
	.word	flipPage
	.word	stopSound
	.word	song01
	.word	playSoundA
	.size	start, .-start
	.align	2
	.global	howto
	.type	howto, %function
howto:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L222
	ldr	r3, .L222+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L217
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L220
.L218:
	ldr	r3, .L222+8
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L216
	ldr	r3, .L222+12
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L221
.L216:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L221:
	ldr	r5, .L222+16
	ldr	r0, .L222+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L222+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L222+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L222+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L222+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L222+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L222+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L217:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L218
	ldr	r3, .L222+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L218
.L220:
	ldr	r3, .L222+36
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L218
.L223:
	.align	2
.L222:
	.word	frameCount
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	drawFullscreenImage4
	.word	startScreenBitmap
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	flipPage
	.size	howto, .-howto
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r3, .L237
	mov	lr, pc
	bx	r3
	ldr	r3, .L237+4
	mov	lr, pc
	bx	r3
	bl	firstStart
	mov	r5, #67108864
	ldr	r4, .L237+8
	ldr	r7, .L237+12
	ldr	r6, .L237+16
	add	r5, r5, #256
.L236:
	ldrh	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L226:
	strh	r3, [r6, #0]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #0]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L226
.L233:
	.word	.L227
	.word	.L228
	.word	.L229
	.word	.L230
	.word	.L231
	.word	.L232
.L232:
	bl	howto
	b	.L236
.L231:
	bl	lose
	b	.L236
.L230:
	bl	win
	b	.L236
.L229:
	bl	pause
	b	.L236
.L228:
	bl	game
	b	.L236
.L227:
	bl	start
	b	.L236
.L238:
	.align	2
.L237:
	.word	setupSounds
	.word	setupInterrupts
	.word	buttons
	.word	state
	.word	oldButtons
	.size	main, .-main
	.global	hOff
	.global	vOff
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundA,32,4
	.comm	soundB,32,4
	.comm	hero,60,4
	.comm	bullets,600,4
	.comm	obstacles,180,4
	.comm	enemies,600,4
	.comm	jades,300,4
	.comm	health,40,4
	.comm	frame,4,4
	.comm	aniState,4,4
	.comm	jumpFrame,4,4
	.comm	jumpSpeed,4,4
	.comm	rAcc,4,4
	.comm	cheat,4,4
	.comm	aniCounter,4,4
	.comm	frameCount,4,4
	.comm	enemyLength,4,4
	.comm	bulletLength,4,4
	.comm	score,4,4
	.comm	obsCanHurt,4,4
	.comm	enemyCanHurt,4,4
	.comm	healthBucket,4,4
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press Start to Begin\000"
	.space	3
.LC1:
	.ascii	"Press Select for Instructions\000"
	.space	2
.LC2:
	.ascii	"Press B to Return\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"

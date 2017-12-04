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
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	ldr	r2, .L36+8
	ldr	r3, [r3, #0]
	smull	r0, r2, r3, r2
	ldr	r5, .L36+12
	ldr	r1, [r5, #4]
	sub	r2, r2, r3, asr #31
	ldrb	r0, [r5, #0]	@ zero_extendqisi2
	mov	r1, r1, asl #23
	ldr	ip, .L36+16
	mvn	r1, r1, lsr #5
	add	r2, r2, r2, asl #1
	orr	r0, r0, #4096
	mvn	r1, r1, lsr #18
	subs	r3, r3, r2
	strh	r0, [ip, #0]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	bne	.L2
	ldr	r1, .L36+20
	ldr	r2, [r1, #0]
	cmp	r2, #8
	addle	r2, r2, #1
	strle	r2, [r1, #0]
	strgt	r3, [r1, #0]
.L2:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	blt	.L32
	movne	r3, #536	@ movhi
	strneh	r3, [ip, #4]	@ movhi
	beq	.L33
.L8:
	ldr	r3, .L36+24
	ldr	lr, [r3, #0]
	cmp	lr, #0
	ble	.L6
	ldr	r3, .L36+28
	ldr	r2, .L36+16
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
	mov	r6, #776	@ movhi
	orr	r0, r0, #16384
	strh	r4, [r2, #8]	@ movhi
	strh	r6, [r2, #12]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	mov	r0, r1
.L13:
	cmp	lr, r0
	add	r3, r3, #60
	add	r1, r1, #1
	add	r2, r2, #8
	bgt	.L14
.L6:
	ldr	r3, .L36+32
	ldr	r1, [r3, #4]
	ldrb	lr, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L36+36
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
	mov	r7, #772	@ movhi
	ldr	r2, .L36+16
	strh	lr, [ip, r0]	@ movhi
	strh	r7, [ip, r3]	@ movhi
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
	ldr	r3, .L36+40
	ldr	lr, [r3, #0]
	cmp	lr, #0
	ble	.L16
	mov	r1, #0
	ldr	r3, .L36+44
	mov	r2, r1
	b	.L20
.L34:
	ldr	r5, [r3, #-52]
	mov	r5, r5, asl #23
	add	r4, ip, r1
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mvn	r5, r5, lsr #6
	add	r0, r4, #408
	mvn	r5, r5, lsr #17
	add	r4, r4, #412
	mov	r8, #896	@ movhi
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	strh	r8, [r4, #0]	@ movhi
.L17:
	add	r2, r2, #1
	cmp	r2, lr
	add	r3, r3, #60
	add	r1, r1, #8
	bge	.L16
.L20:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L17
	ldr	r0, [r3, #-20]
	cmp	r0, #0
	beq	.L34
	cmp	r0, #1
	beq	.L35
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
	cmp	r2, lr
	strh	r4, [r0, #0]	@ movhi
	add	r3, r3, #60
	add	r1, r1, #8
	blt	.L20
.L16:
	ldr	r3, .L36+48
	ldr	r6, [r3, #0]
	cmp	r6, #0
	ble	.L21
	ldr	r3, .L36+52
	mov	r2, #0
	mov	r7, #816
	ldr	r0, [r3, #0]
	mov	r1, #60
	mov	r3, r2
	add	r7, r7, #2
.L23:
	ldr	r4, [r0], #4
	add	lr, r1, #8
	cmp	r4, #0
	add	r3, r3, #1
	mov	lr, lr, asl #16
	beq	.L22
	add	r5, ip, r2
	add	r4, r5, #568
	mov	r8, #146	@ movhi
	add	r5, r5, #572
	strh	r1, [r4, #2]	@ movhi
	strh	r7, [r5, #0]	@ movhi
	strh	r8, [r4, #0]	@ movhi
.L22:
	cmp	r3, r6
	add	r2, r2, #8
	mov	r1, lr, lsr #16
	bne	.L23
.L21:
	mov	lr, #804
	ldr	r3, .L36+56
	mov	r2, #0
	add	lr, lr, #2
.L25:
	ldr	r1, [r3, #0]
	cmp	r1, #0
	beq	.L24
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
.L24:
	add	r2, r2, #8
	cmp	r2, #40
	add	r3, r3, #60
	bne	.L25
	ldr	r3, .L36+60
	ldr	r2, .L36+64
	ldr	r3, [r3, #0]
	smull	r0, r5, r2, r3
	mov	r1, r3, asr #31
	rsb	r5, r1, r5, asr #2
	add	r5, r5, r5, asl #2
	sub	r5, r3, r5, asl #1
	rsb	r3, r5, r3
	smull	r1, r6, r2, r3
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
	ldr	r1, .L36+16
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L36+68
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L35:
	ldr	r5, [r3, #-52]
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mov	r5, r5, asl #23
	add	r4, ip, r1
	mvn	r5, r5, lsr #6
	add	r0, r4, #408
	orr	r6, r6, #16384
	mvn	r5, r5, lsr #17
	add	r4, r4, #412
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	mov	r0, #900	@ movhi
	strh	r0, [r4, #0]	@ movhi
	b	.L17
.L32:
	mov	r1, #528	@ movhi
	strh	r1, [ip, #4]	@ movhi
	b	.L8
.L33:
	ldr	r3, .L36+12
	ldr	r3, [r3, #8]
	cmp	r3, #91
	movle	r4, #536	@ movhi
	strleh	r4, [ip, #4]	@ movhi
	ble	.L8
	ldr	r3, .L36+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ble	.L30
	cmp	r3, #7
	bgt	.L11
	add	r3, r3, #28
.L30:
	mov	r3, r3, asl #3
	strh	r3, [ip, #4]	@ movhi
	b	.L8
.L11:
	cmp	r3, #9
	addle	r3, r3, #56
	movle	r3, r3, asl #3
	strleh	r3, [ip, #4]	@ movhi
	b	.L8
.L37:
	.align	2
.L36:
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
	.word	healthBucket
	.word	health
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
	ldr	r0, .L39
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mvn	r2, #32768
	mov	r4, #0
	ldr	r8, .L39+8
	strh	r2, [r3, #254]	@ movhi
	strh	r4, [r3, #252]	@ movhi
	ldr	r7, .L39+12
	mov	lr, pc
	bx	r7
	ldr	sl, .L39+16
	mov	r0, r8
	ldr	r9, .L39+20
	mov	lr, pc
	bx	sl
	ldr	r5, .L39+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L39+28
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldr	r6, .L39+32
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
	ldr	r3, .L39+36
	str	r4, [r3, #0]
	ldr	r3, .L39+40
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L39+44
	str	r4, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r0, .L42
	add	r1, r1, #344
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L42+4
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L43:
	.align	2
.L42:
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
	ldr	r5, .L45
	ldr	r4, .L45+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+8
	mov	lr, pc
	bx	r3
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+12
	mov	lr, pc
	bx	r3
	mov	r1, #753664
	add	r1, r1, #1696
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L45+16
	add	r1, r1, #4
	ldr	ip, .L45+20
	mov	lr, pc
	bx	ip
	ldr	r3, .L45+24
	mov	r2, #3
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r3, .L50
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L47
	ldr	r3, .L50+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L49
.L47:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L49:
	bl	firstStart
	ldr	r5, .L50+12
	ldr	r0, .L50+16
	mov	lr, pc
	bx	r5
	ldr	r4, .L50+20
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L50+24
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L50+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L50+16
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L50+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L51:
	.align	2
.L50:
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
	ldr	r3, .L65
	stmfd	sp!, {r4, r5}
	ldr	r0, [r3, #0]
	cmp	r0, #0
	ble	.L52
	ldr	ip, .L65+4
	ldr	r3, [ip, #56]
	cmp	r3, #0
	movne	r2, ip
	movne	r3, #0
	bne	.L56
	b	.L54
.L61:
	ldr	r1, [r2, #116]
	cmp	r1, #0
	add	r2, r2, #60
	beq	.L54
.L56:
	add	r3, r3, #1
	cmp	r3, r0
	blt	.L61
.L52:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L54:
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
	ldr	r0, .L65+8
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
	ldr	r1, .L65+12
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
	b	.L52
.L66:
	.align	2
.L65:
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
	ldr	r3, .L82
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r1, [r3, #0]
	cmp	r1, #0
	ble	.L67
	ldr	r5, .L82+4
	ldr	r4, [r5, #56]
	cmp	r4, #0
	movne	r3, r5
	movne	r4, #0
	bne	.L71
	b	.L69
.L75:
	ldr	r2, [r3, #116]
	cmp	r2, #0
	add	r3, r3, #60
	beq	.L69
.L71:
	add	r4, r4, #1
	cmp	r1, r4
	bgt	.L75
.L67:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L69:
	mov	r8, r4, asl #4
	rsb	r6, r4, r8
	add	r6, r5, r6, asl #2
	mov	r3, #1
	str	r3, [r6, #56]
	mvn	r3, #1
	str	r3, [r6, #20]
	ldr	r7, .L82+8
	mov	lr, pc
	bx	r7
	ldr	r3, .L82+12
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r0
	cmp	r3, #0
	str	r3, [r6, #36]
	beq	.L79
	cmp	r3, #1
	beq	.L80
	cmp	r3, #2
	beq	.L81
.L73:
	mov	lr, pc
	bx	r7
	ldr	r2, .L82+16
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
	ldr	ip, .L82+20
	smull	r2, ip, r0, ip
	ldr	r2, .L82+24
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
	ldr	r3, .L82+28
	str	r2, [r5, r4, asl #2]
	mov	r2, #1
	str	r0, [r6, #12]
	str	r2, [r3, #0]
	b	.L67
.L79:
	mov	r3, #28
	str	r3, [r6, #28]
	mov	r3, #30
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, .L82+16
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, asl #4
	add	r3, r3, r2, asl #2
	rsb	r3, r3, r0
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L73
.L81:
	mov	r3, #16
	str	r3, [r6, #28]
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, .L82+32
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, asl #2
	sub	r3, r0, r3, asl #4
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L73
.L80:
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
	b	.L73
.L83:
	.align	2
.L82:
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
	ldr	r4, .L90
	mov	r6, #0
	mov	r3, r4
.L87:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L89
	add	r6, r6, #1
	cmp	r6, #5
	add	r3, r3, #60
	bne	.L87
.L84:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L89:
	rsb	r6, r6, r6, asl #4
	add	r5, r4, r6, asl #2
	mov	r3, #1
	str	r3, [r5, #56]
	ldr	r3, .L90+4
	mov	lr, pc
	bx	r3
	ldr	ip, .L90+8
	smull	r3, ip, r0, ip
	ldr	r2, .L90+12
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
	b	.L84
.L91:
	.align	2
.L90:
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
	mov	r4, #67108864
	ldr	r0, .L107
	strh	r1, [r4, #0]	@ movhi
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	mov	lr, #23808
	mov	ip, #6912
	add	lr, lr, #4
	add	ip, ip, #8
	mov	r6, #7936	@ movhi
	mov	r3, #7168
	ldr	r5, .L107+8
	strh	r6, [r4, #12]	@ movhi
	mov	r0, #3
	strh	lr, [r4, #10]	@ movhi
	ldr	r1, .L107+12
	strh	ip, [r4, #8]	@ movhi
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+16
	add	r2, r2, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+20
	add	r2, r2, #16384
	mov	r3, #2272
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+24
	add	r2, r2, #59392
	mov	r3, #2048
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+28
	add	r2, r2, #32768
	mov	r3, #528
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+32
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+36
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L107+40
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r9, .L107+44
	ldr	r3, .L107+48
	mov	lr, pc
	bx	r3
	mov	r6, #0
	mov	r0, #3
	ldr	r1, .L107+52
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r5
	ldr	r8, [r9, #0]
	str	r6, [r9, #4]
	ldr	r9, .L107+56
	str	r6, [r9, #0]
	ldr	r9, .L107+60
	str	r6, [r9, #0]
	ldr	r9, .L107+64
	str	r6, [r9, #0]
	ldr	r9, .L107+68
	mov	fp, #12
	str	fp, [r9, #0]
	ldr	r9, .L107+72
	mov	r0, #1
	str	r0, [r9, #0]
	ldr	r9, .L107+76
	str	r0, [r9, #0]
	ldr	r9, .L107+80
	ldr	r1, .L107+84
	mov	ip, #10
	str	ip, [r9, #0]
	mov	r9, #92
	str	r9, [r1, #8]
	mov	r9, #38
	str	r9, [r1, #28]
	mov	r9, #37
	str	r9, [r1, #24]
	ldr	r9, .L107+88
	mvn	fp, #0
	str	fp, [r9, #0]
	ldr	r9, .L107+92
	ldr	r2, .L107+96
	str	r0, [r9, #0]
	rsb	sl, r8, #92
	ldr	r9, .L107+100
	str	ip, [r1, #12]
	stmia	r1, {sl, ip}	@ phole stm
	mov	r1, #32
	str	r0, [r9, #0]
	str	r1, [r2, #28]
	add	r5, r8, #13
	ldr	r9, .L107+104
	mov	r1, #16
	str	r1, [r2, #24]
	ldr	r7, .L107+108
	mov	r1, #96
	mov	r5, r5, asl #16
	str	r1, [r2, #8]
	str	ip, [r9, #0]
	mov	lr, #300
	rsb	r8, r8, #96
	ldr	r3, .L107+112
	mov	r5, r5, lsr #16
	mov	r1, #27	@ movhi
	mov	r9, #8	@ movhi
	str	r0, [r2, #56]
	str	lr, [r2, #12]
	stmia	r2, {r8, lr}	@ phole stm
	str	ip, [r7, #0]
	strh	r5, [r4, #26]	@ movhi
	strh	r6, [r4, #22]	@ movhi
	strh	r1, [r4, #18]	@ movhi
	strh	r9, [r4, #16]	@ movhi
	add	r2, r3, #600
.L93:
	str	r6, [r3, #56]
	add	r3, r3, #60
	cmp	r3, r2
	bne	.L93
	ldr	r4, .L107+116
	mov	r9, #817889280
	add	r9, r9, #199680
	ldr	r5, .L107+120
	ldr	sl, .L107+124
	mov	r8, r6
	mov	fp, r4
	add	r9, r9, #49
	b	.L97
.L94:
	cmp	r3, #1
	beq	.L104
	cmp	r3, #2
	beq	.L105
.L95:
	ldr	r3, [r7, #0]
	add	r6, r6, #1
	cmp	r3, r6
	add	r5, r5, #60
	ble	.L106
.L97:
	str	r8, [r5, #56]
	mov	lr, pc
	bx	r4
	smull	r1, r3, sl, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r0
	cmp	r3, #0
	str	r3, [r5, #36]
	bne	.L94
	mov	r3, #28
	str	r3, [r5, #28]
	mov	r3, #30
	str	r3, [r5, #24]
	mov	lr, pc
	bx	fp
	ldr	r3, .L107+128
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, asl #4
	add	r3, r3, r2, asl #2
	rsb	r0, r3, r0
	ldr	r3, [r7, #0]
	add	r6, r6, #1
	add	r0, r0, #16
	cmp	r3, r6
	str	r0, [r5, #8]
	add	r5, r5, #60
	bgt	.L97
.L106:
	ldr	r2, .L107+104
	ldr	r5, .L107+132
	ldr	r1, [r2, #0]
	ldr	r3, .L107+136
	mov	r1, r1, asl #2
	ldr	r0, [r5, #0]
	mov	lr, pc
	bx	r3
	str	r0, [r5, #0]
	mov	r3, r0
	add	r1, r0, #40
	mov	r2, #1
.L98:
	str	r2, [r3], #4
	cmp	r3, r1
	bne	.L98
	ldr	r5, .L107+140
	mov	r6, #268
	add	fp, r5, #300
	mov	r7, #0
	mov	r9, #116
	add	r6, r6, #2
	mov	sl, #12
	mov	r8, #8
.L99:
	str	r7, [r5, #56]
	str	r9, [r5, #8]
	str	r6, [r5, #12]
	str	sl, [r5, #28]
	str	r8, [r5, #24]
	mov	lr, pc
	bx	r4
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	str	r3, [r5, #36]
	add	r5, r5, #60
	cmp	r5, fp
	bne	.L99
	mov	r3, #67108864
	strh	r7, [r3, #76]	@ movhi
	ldr	r3, .L107+144
	mov	r2, #30
	str	r2, [r3, #0]
	bl	spawnEnemy
	bl	spawnJade
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r2, [r3, #48]
	ldr	r3, .L107+148
	strh	r2, [r3, #0]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L104:
	mov	r2, #12
	mov	r3, #21
	str	r2, [r5, #28]
	str	r3, [r5, #24]
	mov	lr, pc
	bx	fp
	smull	r1, r2, r9, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r3, asl #3
	sub	r0, r0, r3, asl #2
	add	r0, r0, #16
	str	r0, [r5, #8]
	b	.L95
.L105:
	mov	r2, #16
	str	r2, [r5, #28]
	str	r2, [r5, #24]
	mov	lr, pc
	bx	fp
	ldr	r3, .L107+152
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, asl #2
	sub	r0, r0, r3, asl #4
	add	r0, r0, #16
	str	r0, [r5, #8]
	b	.L95
.L108:
	.align	2
.L107:
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
	.word	.LANCHOR0
	.word	hideSprites
	.word	shadowOAM
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
	.word	healthBucket
	.word	enemyLength
	.word	bullets
	.word	rand
	.word	enemies
	.word	1431655766
	.word	1991868891
	.word	health
	.word	realloc
	.word	jades
	.word	hurtCounter
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r6, #23808
	mov	lr, #6912
	mov	ip, #67108864
	add	lr, lr, #8
	mov	r5, #100663296
	add	r6, r6, #4
	mov	r7, #7936	@ movhi
	strh	r7, [ip, #12]	@ movhi
	mov	r0, #3
	strh	r6, [ip, #10]	@ movhi
	ldr	r1, .L110
	add	r2, r5, #32768
	mov	r3, #528
	ldr	r4, .L110+4
	strh	lr, [ip, #8]	@ movhi
	mov	lr, pc
	bx	r4
	add	r2, r5, #55296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L110+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L110+12
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	bg3Tiles
	.word	DMANow
	.word	bg3Map
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
	ldr	r3, .L113
	mov	r2, #1
	str	r2, [r3, #0]
	b	initialize
.L114:
	.align	2
.L113:
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
	ldr	r5, .L116
	ldr	r4, .L116+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L116+8
	mov	lr, pc
	bx	r3
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L116+12
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	loseScreenBitmap
	.word	drawFullscreenImage4
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L121
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L118
	ldr	r3, .L121+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L120
.L118:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L120:
	bl	firstStart
	ldr	r5, .L121+12
	ldr	r0, .L121+16
	mov	lr, pc
	bx	r5
	ldr	r4, .L121+20
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L121+24
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L121+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L121+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L121+16
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L121+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L122:
	.align	2
.L121:
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
	ldr	r3, .L130
	ldr	r4, .L130+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L130+8
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #0]
	tst	r2, #1
	beq	.L124
	ldr	r3, .L130+12
	ldrh	r3, [r3, #0]
	ands	r3, r3, #1
	beq	.L127
.L124:
	tst	r2, #8
	beq	.L125
	ldr	r3, .L130+12
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L128
.L125:
	tst	r2, #4
	beq	.L123
	ldr	r3, .L130+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L129
.L123:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L129:
	ldr	r3, .L130+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L130+20
	ldr	r0, .L130+24
	mov	lr, pc
	bx	r5
	ldr	r4, .L130+28
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L130+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L130+36
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L130+40
	mov	lr, pc
	bx	r3
	ldr	r0, .L130+24
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L130+36
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L127:
	ldr	ip, .L130+44
	ldr	lr, [ip, #0]
	mov	r1, #10944
	rsb	lr, lr, #0
	mov	r2, #11008
	add	r2, r2, #17
	str	lr, [ip, #0]
	ldr	r0, .L130+48
	add	r1, r1, #25
	ldr	ip, .L130+52
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #0]
	b	.L124
.L128:
	ldr	r3, .L130+56
	mov	lr, pc
	bx	r3
	bl	drawSprites
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToGame
.L131:
	.align	2
.L130:
	.word	waitForVBlank
	.word	oldButtons
	.word	hideSprites
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
	.size	pause, .-pause
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r6, #23808
	mov	lr, #6912
	mov	ip, #67108864
	add	lr, lr, #8
	mov	r5, #100663296
	add	r6, r6, #4
	mov	r7, #7936	@ movhi
	strh	r7, [ip, #12]	@ movhi
	mov	r0, #3
	strh	r6, [ip, #10]	@ movhi
	ldr	r1, .L133
	add	r2, r5, #32768
	mov	r3, #1424
	ldr	r4, .L133+4
	strh	lr, [ip, #8]	@ movhi
	mov	lr, pc
	bx	r4
	add	r2, r5, #55296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L133+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L133+12
	mov	r2, #2
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L134:
	.align	2
.L133:
	.word	bg3_2Tiles
	.word	DMANow
	.word	bg3_2Map
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L203
	sub	sp, sp, #28
	mov	lr, pc
	bx	r3
	ldr	r8, .L203+4
	ldr	r3, .L203+8
	ldr	r4, .L203+12
	ldr	r1, [r8, #16]
	ldr	r2, [r8, #12]
	ldr	r0, [r3, #0]
	ldrh	r3, [r4, #0]
	add	r1, r0, r1
	add	r2, r2, #1
	tst	r3, #8
	str	r1, [r8, #16]
	str	r2, [r8, #12]
	beq	.L136
	ldr	r2, .L203+16
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L193
.L136:
	ldr	r2, [r8, #8]
	cmp	r2, #92
	ldr	r1, .L203+4
	beq	.L194
.L137:
	tst	r3, #1
	beq	.L138
	ldr	r1, .L203+16
	ldrh	r1, [r1, #0]
	tst	r1, #1
	beq	.L195
.L138:
	ldr	r1, [r8, #16]
	tst	r3, #2
	add	r2, r1, r2
	str	r2, [r8, #8]
	beq	.L139
	ldr	r3, .L203+16
	ldrh	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L196
.L139:
	ldr	fp, .L203+20
	ldr	r3, [fp, #0]
	cmp	r3, #0
	bne	.L140
	mov	r2, #30
	str	r2, [fp, #0]
	mov	r2, #67108864
	strh	r3, [r2, #76]	@ movhi
.L141:
	ldr	r7, .L203+24
	ldr	ip, [r7, #12]
	ldr	lr, [r7, #8]
	str	ip, [sp, #4]
	mov	ip, #32
	str	ip, [sp, #8]
	mov	ip, #16
	add	r0, r8, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r8, #28]
	ldr	r3, [r8, #24]
	str	lr, [sp, #0]
	str	ip, [sp, #12]
	ldr	r6, .L203+28
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L191
	ldr	r3, .L203+32
	ldr	r3, [r3, #0]
	cmp	r3, #0
	blt	.L190
.L191:
	ldr	r6, .L203+36
.L142:
	ldr	sl, .L203+40
	ldr	r3, [sl, #0]
	cmp	r3, #0
	ble	.L145
	mov	r5, #0
	ldr	r4, .L203+44
	ldr	r9, .L203+32
	str	r6, [sp, #20]
	b	.L150
.L147:
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L197
.L150:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L147
	add	ip, r8, #8
	ldmia	ip, {ip, lr}	@ phole ldm
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	stmia	sp, {ip, lr}	@ phole stm
	ldr	ip, [r8, #28]
	ldr	lr, [r8, #24]
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	ldr	r6, .L203+28
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L147
	ldr	r3, [r9, #0]
	cmp	r3, #0
	bge	.L147
	ldr	ip, .L203+48
	ldr	r3, [ip, #0]
	cmp	r3, #0
	beq	.L147
	ldr	r2, [fp, #0]
	mov	r1, r2, asl #16
	mov	r0, r1, lsr #8
	ldr	lr, [sp, #20]
	add	r1, r0, r1, lsr #4
	and	ip, r1, #65280
	ldr	r1, .L203+52
	ldr	r3, [lr, #0]
	sub	r2, r2, #1
	mov	r6, #67108864
	ldr	r0, [r1, #0]
	strh	ip, [r6, #76]	@ movhi
	ldr	ip, .L203+48
	str	r2, [fp, #0]
	ldr	r2, [sp, #20]
	sub	r3, r3, #1
	mov	lr, #0
	mov	r1, r3, asl #2
	str	lr, [ip, #0]
	str	r3, [r2, #0]
	ldr	r3, .L203+56
	mov	lr, pc
	bx	r3
	ldr	r6, [sp, #20]
	ldr	r3, [r6, #0]
	ldr	ip, .L203+52
	cmp	r3, #0
	str	r0, [ip, #0]
	ble	.L148
	mov	r2, r0
	mov	r3, #0
.L149:
	mov	lr, #1
	str	lr, [r2], #4
	ldr	r1, [r6, #0]
	add	r3, r3, lr
	cmp	r1, r3
	bgt	.L149
	str	r6, [sp, #20]
.L148:
	mov	r1, #3728
	mov	r2, #11008
	mov	r3, #0
	ldr	r0, .L203+60
	add	r1, r1, #6
	add	r2, r2, #17
	ldr	r6, .L203+64
	mov	lr, pc
	bx	r6
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	bgt	.L150
.L197:
	ldr	r6, [sp, #20]
.L145:
	ldr	r5, .L203+68
	sub	r4, r5, #300
.L154:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L198
.L151:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L154
	ldr	r3, [r6, #0]
	cmp	r3, #0
	beq	.L199
.L155:
	ldr	r9, .L203+72
	ldr	r3, [r9, #4]
	add	r3, r3, #3
	str	r3, [r9, #4]
	bl	drawSprites
	ldr	r3, [r8, #4]
	cmp	r3, #10
	ldr	r3, .L203+4
	ble	.L156
	ldr	r2, [r3, #8]
	cmp	r2, #92
	beq	.L200
.L156:
	ldr	r3, [r8, #12]
	add	r3, r3, #3
	str	r3, [r8, #12]
.L157:
	ldr	r3, .L203+76
	ldmia	r9, {r4, ip}	@ phole ldm
	add	r0, r3, #180
.L158:
	ldmia	r3, {r1, r2}	@ phole ldm
	rsb	r1, r4, r1
	rsb	r2, ip, r2
	stmdb	r3, {r1, r2}	@ phole stm
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L158
	ldr	r3, [r7, #4]
	cmn	r3, #15
	ldr	r4, .L203+24
	bge	.L159
	ldr	r3, .L203+80
	mov	lr, pc
	bx	r3
	ldr	r1, .L203+84
	smull	r3, r1, r0, r1
	mov	r3, r0, asr #31
	ldr	r2, [r9, #4]
	rsb	r3, r3, r1, asr #7
	add	r3, r3, r3, asl #4
	add	r1, r2, #240
	sub	r0, r0, r3, asl #4
	add	r3, r1, r0
	rsb	r2, r2, r3
	str	r3, [r4, #12]
	ldr	r3, .L203+88
	str	r2, [r4, #4]
	mov	r2, #1
	str	r2, [r3, #0]
.L159:
	ldr	r7, .L203+92
	ldr	r1, [r7, #0]
	cmp	r1, #0
	ble	.L160
	ldmia	r9, {r6, fp}	@ phole ldm
	mov	r2, #0
	str	r6, [sp, #20]
	ldr	r3, .L203+96
	add	r4, fp, #240
	mov	r5, r2
	b	.L164
.L162:
	ldr	r0, [r3, #8]
	cmn	r0, #8
	blt	.L192
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
.L161:
	add	r2, r2, #1
	cmp	r1, r2
	add	r3, r3, #60
	ble	.L160
.L164:
	ldr	r0, [r3, #56]
	cmp	r0, #0
	beq	.L161
	ldr	ip, [r3, #12]
	cmp	ip, r4
	ble	.L162
.L192:
	add	r2, r2, #1
	cmp	r1, r2
	str	r5, [r3, #56]
	add	r3, r3, #60
	bgt	.L164
.L160:
	ldr	r3, [sl, #0]
	cmp	r3, #0
	ble	.L165
	mov	r5, #0
	ldr	r4, .L203+100
	mov	r6, r5
	b	.L168
.L167:
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
.L166:
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L201
.L168:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r4, #-16]
	cmn	r3, #30
	bge	.L167
	str	r6, [r4, #36]
	bl	spawnEnemy
	ldr	r3, [sl, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	bgt	.L168
.L201:
	cmp	r3, #0
	ble	.L165
	ldr	r6, .L203+44
	mov	fp, #0
.L169:
	ldr	r3, [r7, #0]
	cmp	r3, #0
	ble	.L172
	ldr	r4, .L203+96
	mov	r5, #0
	b	.L171
.L170:
	ldr	r3, [r7, #0]
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L172
.L171:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	add	r5, r5, #1
	beq	.L170
	ldr	r3, [r6, #56]
	cmp	r3, #0
	beq	.L170
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
	ldr	ip, .L203+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L170
	ldr	lr, .L203+104
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
	bgt	.L171
.L172:
	ldr	r3, [sl, #0]
	add	fp, fp, #1
	cmp	r3, fp
	add	r6, r6, #60
	bgt	.L169
.L165:
	ldr	r4, .L203+108
	mov	r6, #0
	add	r5, r4, #300
.L175:
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L173
	ldr	r3, [r4, #-52]
	cmn	r3, #8
	blt	.L202
	sub	r0, r4, #48
	ldmia	r0, {r0, r1}	@ phole ldm
	ldmia	r9, {r2, r3}	@ phole ldm
	rsb	r2, r2, r0
	rsb	r3, r3, r1
	str	r2, [r4, #-56]
	str	r3, [r4, #-52]
.L173:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L175
	ldr	r1, .L203+104
	ldr	r3, [r1, #0]
	cmp	r3, #49
	ble	.L176
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	strh	r3, [r2, #0]	@ movhi
	ldr	r0, .L203+112
	ldr	r3, .L203+116
	mov	lr, pc
	bx	r3
	ldr	r4, .L203+120
	ldr	r0, .L203+124
	mov	lr, pc
	bx	r4
	ldr	r3, .L203+128
	mov	lr, pc
	bx	r3
	ldr	r0, .L203+124
	mov	lr, pc
	bx	r4
	bl	goToWin
.L176:
	ldr	r3, [r9, #4]
	ldr	r2, .L203+132
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
.L198:
	add	ip, r8, #8
	ldmia	ip, {ip, lr}	@ phole ldm
	ldr	r9, [r8, #28]
	ldr	fp, [r8, #24]
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	stmia	sp, {ip, lr}	@ phole stm
	str	r9, [sp, #8]
	str	fp, [sp, #12]
	ldr	ip, .L203+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L151
	mov	r1, #10944
	mov	r2, #11008
	add	r1, r1, #25
	add	r2, r2, #17
	ldr	r0, .L203+136
	mov	r3, #0
	ldr	ip, .L203+64
	mov	lr, pc
	bx	ip
	ldr	lr, .L203+104
	ldr	r3, [lr, #0]
	mov	r0, #0
	add	r3, r3, #1
	str	r3, [lr, #0]
	str	r0, [r4, #56]
	bl	spawnJade
	ldr	r1, .L203+52
	mov	r2, #10
	ldr	r3, [r1, #0]
	b	.L153
.L152:
	subs	r2, r2, #1
	beq	.L151
.L153:
	mov	r0, r3
	ldr	r1, [r3], #4
	cmp	r1, #0
	bne	.L152
	mov	r2, #1
	str	r2, [r0, #0]
	ldr	r3, [r6, #0]
	add	r3, r3, r2
	str	r3, [r6, #0]
	b	.L151
.L202:
	str	r6, [r4, #0]
	bl	spawnJade
	b	.L173
.L140:
	cmp	r3, #29
	bgt	.L141
	mov	r2, r3, asl #16
	mov	r1, r2, lsr #8
	add	r2, r1, r2, lsr #4
	and	r1, r2, #65280
	sub	r3, r3, #1
	mov	r2, #67108864
	strh	r1, [r2, #76]	@ movhi
	str	r3, [fp, #0]
	b	.L141
.L195:
	cmp	r2, #92
	bne	.L138
	ldr	r1, .L203+140
	ldr	r1, [r1, #0]
	rsb	r1, r1, #0
	str	r1, [r8, #16]
	mov	r1, #38
	str	r1, [r8, #28]
	mov	r1, #25
	str	r1, [r8, #24]
	b	.L138
.L199:
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L203+144
	mov	lr, pc
	bx	r3
	ldr	r3, .L203+116
	ldr	r0, .L203+148
	mov	lr, pc
	bx	r3
	ldr	r4, .L203+120
	ldr	r0, .L203+152
	mov	lr, pc
	bx	r4
	ldr	r3, .L203+128
	mov	lr, pc
	bx	r3
	ldr	r0, .L203+152
	mov	lr, pc
	bx	r4
	mov	r1, #454656
	mov	r2, #11008
	ldr	r0, .L203+156
	add	r1, r1, #360
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L203+160
	mov	lr, pc
	bx	ip
	bl	goToLose
	b	.L155
.L194:
	ldr	lr, .L203+164
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
	b	.L137
.L200:
	ldr	r2, [r3, #12]
	add	r2, r2, #2
	str	r2, [r3, #12]
	b	.L157
.L193:
	ldr	r3, .L203+168
	mov	lr, pc
	bx	r3
	bl	goToPause
	ldrh	r3, [r4, #0]
	b	.L136
.L196:
	mov	r1, #1168
	mov	r2, #11008
	ldr	r0, .L203+172
	add	r1, r1, #12
	add	r2, r2, #17
	ldr	ip, .L203+64
	mov	lr, pc
	bx	ip
	bl	fireBullet
	b	.L139
.L190:
	ldr	r4, .L203+88
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L191
	mov	r1, #3728
	mov	r2, #11008
	ldr	r0, .L203+60
	add	r1, r1, #6
	add	r2, r2, #17
	mov	r3, #0
	ldr	ip, .L203+64
	mov	lr, pc
	bx	ip
	ldr	r6, .L203+36
	ldrh	r2, [fp, #0]
	ldr	r3, [r6, #0]
	ldr	lr, [fp, #0]
	mov	r1, r2, asl #8
	add	r2, r1, r2, asl #12
	ldr	sl, .L203+52
	sub	r3, r3, #1
	and	ip, r2, #65280
	sub	lr, lr, #1
	mov	r5, #0
	mov	r2, #67108864
	ldr	r0, [sl, #0]
	mov	r1, r3, asl #2
	strh	ip, [r2, #76]	@ movhi
	str	r3, [r6, #0]
	str	r5, [r4, #0]
	ldr	r3, .L203+56
	str	lr, [fp, #0]
	mov	lr, pc
	bx	r3
	ldr	r3, [r6, #0]
	cmp	r3, r5
	str	r0, [sl, #0]
	ble	.L142
	mov	r3, r0
	mov	r1, #1
.L146:
	str	r1, [r3], #4
	ldr	r2, [r6, #0]
	add	r5, r5, #1
	cmp	r2, r5
	bgt	.L146
	b	.L142
.L204:
	.align	2
.L203:
	.word	waitForVBlank
	.word	hero
	.word	rAcc
	.word	oldButtons
	.word	buttons
	.word	hurtCounter
	.word	obstacles
	.word	collision
	.word	cheat
	.word	healthBucket
	.word	enemyLength
	.word	enemies
	.word	enemyCanHurt
	.word	health
	.word	realloc
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
	.word	jumpSpeed
	.word	stopSound
	.word	loseScreenPal
	.word	loseScreenBitmap
	.word	loseSong
	.word	playSoundA
	.word	jumpFrame
	.word	pauseSound
	.word	laser
	.size	game, .-game
	.align	2
	.global	gotoHowto
	.type	gotoHowto, %function
gotoHowto:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r0, .L206
	ldr	r3, .L206+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mov	r2, #0	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r5, .L206+8
	mvn	r2, #32768
	strh	r2, [r3, #254]	@ movhi
	ldr	r6, .L206+12
	mov	lr, pc
	bx	r6
	ldr	r4, .L206+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r7, .L206+20
	ldr	r2, .L206+24
	mov	r3, #255
	mov	r1, #2
	ldr	ip, .L206+28
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
	ldr	r3, .L206+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L206+36
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L207:
	.align	2
.L206:
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
	ldr	r4, .L216
	ldr	r3, .L216+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L209
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L213
.L210:
	ldr	r3, .L216+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L211
	ldr	r2, .L216+12
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L214
.L211:
	tst	r3, #4
	beq	.L208
	ldr	r3, .L216+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L215
.L208:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L215:
	ldr	r4, .L216+16
	ldr	r0, .L216+20
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L216+24
	ldr	ip, .L216+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	ip
	ldr	r3, .L216+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L216+20
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	gotoHowto
.L209:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L210
	ldr	r3, .L216+32
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L210
.L213:
	ldr	r3, .L216+32
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L210
.L214:
	ldr	r3, .L216+36
	mov	lr, pc
	bx	r3
	mov	r1, #1294336
	add	r1, r1, #7680
	mov	r2, #11008
	ldr	r0, .L216+40
	add	r1, r1, #46
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L216+44
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	startGame
.L217:
	.align	2
.L216:
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
	ldr	r4, .L224
	ldr	r3, .L224+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L219
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L222
.L220:
	ldr	r3, .L224+8
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L218
	ldr	r3, .L224+12
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L223
.L218:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L223:
	ldr	r5, .L224+16
	ldr	r0, .L224+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L224+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L224+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L224+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L224+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L224+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L224+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L219:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L220
	ldr	r3, .L224+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L220
.L222:
	ldr	r3, .L224+36
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L220
.L225:
	.align	2
.L224:
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
	ldr	r3, .L239
	mov	lr, pc
	bx	r3
	ldr	r3, .L239+4
	mov	lr, pc
	bx	r3
	bl	firstStart
	mov	r5, #67108864
	ldr	r4, .L239+8
	ldr	r7, .L239+12
	ldr	r6, .L239+16
	add	r5, r5, #256
.L238:
	ldrh	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L228:
	strh	r3, [r6, #0]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #0]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L228
.L235:
	.word	.L229
	.word	.L230
	.word	.L231
	.word	.L232
	.word	.L233
	.word	.L234
.L234:
	bl	howto
	b	.L238
.L233:
	bl	lose
	b	.L238
.L232:
	bl	win
	b	.L238
.L231:
	bl	pause
	b	.L238
.L230:
	bl	game
	b	.L238
.L229:
	bl	start
	b	.L238
.L240:
	.align	2
.L239:
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
	.comm	health,4,4
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
	.comm	hurtCounter,4,4
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

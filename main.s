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
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+4
	ldr	r2, .L29+8
	ldr	r3, [r3, #0]
	smull	r0, r2, r3, r2
	ldr	r5, .L29+12
	ldr	r1, [r5, #4]
	sub	r2, r2, r3, asr #31
	mov	r1, r1, asl #23
	ldr	lr, .L29+16
	ldrb	r0, [r5, #0]	@ zero_extendqisi2
	mvn	r1, r1, lsr #5
	add	r2, r2, r2, asl #1
	mvn	r1, r1, lsr #18
	subs	r3, r3, r2
	strh	r0, [lr, #0]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	bne	.L2
	ldr	r1, .L29+20
	ldr	r2, [r1, #0]
	cmp	r2, #8
	addle	r2, r2, #1
	strle	r2, [r1, #0]
	strgt	r3, [r1, #0]
.L2:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	blt	.L25
	movne	r3, #536	@ movhi
	strneh	r3, [lr, #4]	@ movhi
	beq	.L26
.L8:
	ldr	r3, .L29+24
	ldr	ip, [r3, #0]
	cmp	ip, #0
	ble	.L6
	ldr	r3, .L29+28
	ldr	r2, .L29+16
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
	cmp	ip, r0
	add	r3, r3, #60
	add	r1, r1, #1
	add	r2, r2, #8
	bgt	.L14
.L6:
	ldr	r3, .L29+32
	ldr	r1, [r3, #4]
	ldrb	ip, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L29+36
	mov	r1, r1, asl #23
	ldr	r2, [r3, #0]
	mvn	ip, ip, asl #17
	mov	r3, #968
	mvn	r1, r1, lsr #6
	add	r3, r3, #2
	mov	r0, #968
	mvn	ip, ip, lsr #17
	mvn	r1, r1, lsr #17
	strh	r1, [lr, r3]	@ movhi
	cmp	r2, #0
	strh	ip, [lr, r0]	@ movhi
	mov	r3, #972
	mov	r0, #772	@ movhi
	ldr	r2, .L29+16
	strh	r0, [lr, r3]	@ movhi
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
	mov	ip, #400
	mov	r1, #404
	strh	r4, [r2, ip]	@ movhi
	strh	r3, [r2, r1]	@ movhi
.L15:
	ldr	r3, .L29+40
	ldr	ip, [r3, #0]
	cmp	ip, #0
	ble	.L16
	mov	r1, #0
	ldr	r3, .L29+44
	mov	r2, r1
	b	.L20
.L27:
	ldr	r5, [r3, #-52]
	mov	r5, r5, asl #23
	add	r4, lr, r1
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mvn	r5, r5, lsr #6
	add	r0, r4, #408
	mvn	r5, r5, lsr #17
	add	r4, r4, #412
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	mov	r0, #896	@ movhi
	strh	r0, [r4, #0]	@ movhi
.L17:
	add	r2, r2, #1
	cmp	r2, ip
	add	r3, r3, #60
	add	r1, r1, #8
	bge	.L16
.L20:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L17
	ldr	r0, [r3, #-20]
	cmp	r0, #0
	beq	.L27
	cmp	r0, #1
	beq	.L28
	cmp	r0, #2
	bne	.L17
	ldr	r5, [r3, #-52]
	mov	r5, r5, asl #23
	add	r0, lr, r1
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mov	r5, r5, lsr #23
	add	r4, r0, #408
	orr	r5, r5, #16384
	add	r2, r2, #1
	strh	r6, [r4, #0]	@ movhi
	strh	r5, [r4, #2]	@ movhi
	add	r0, r0, #412
	mov	r4, #964	@ movhi
	cmp	r2, ip
	strh	r4, [r0, #0]	@ movhi
	add	r3, r3, #60
	add	r1, r1, #8
	blt	.L20
.L16:
	mov	r0, #3
	ldr	r1, .L29+16
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L29+48
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L28:
	ldr	r5, [r3, #-52]
	ldrb	r6, [r3, #-56]	@ zero_extendqisi2
	mov	r5, r5, asl #23
	add	r4, lr, r1
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
.L25:
	mov	r1, #528	@ movhi
	strh	r1, [lr, #4]	@ movhi
	b	.L8
.L26:
	ldr	r3, .L29+12
	ldr	r3, [r3, #8]
	cmp	r3, #91
	movle	r4, #536	@ movhi
	strleh	r4, [lr, #4]	@ movhi
	ble	.L8
	ldr	r3, .L29+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ble	.L23
	cmp	r3, #7
	bgt	.L11
	add	r3, r3, #28
.L23:
	mov	r3, r3, asl #3
	strh	r3, [lr, #4]	@ movhi
	b	.L8
.L11:
	cmp	r3, #9
	addle	r3, r3, #56
	movle	r3, r3, asl #3
	strleh	r3, [lr, #4]	@ movhi
	b	.L8
.L30:
	.align	2
.L29:
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
	ldr	r0, .L32
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L32+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mvn	r2, #32768
	mov	r9, #0
	ldr	r6, .L32+8
	strh	r2, [r3, #254]	@ movhi
	strh	r9, [r3, #252]	@ movhi
	ldr	r7, .L32+12
	mov	lr, pc
	bx	r7
	ldr	r8, .L32+16
	mov	r0, r6
	ldr	sl, .L32+20
	mov	lr, pc
	bx	r8
	ldr	r4, .L32+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L32+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r5, .L32+32
	mov	r1, #2
	mov	r2, sl
	mov	r3, #255
	mov	r0, #150
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r7
	mov	r0, r6
	mov	lr, pc
	bx	r8
	mov	r2, sl
	mov	r3, #255
	mov	r0, #150
	mov	r1, #2
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L32+36
	str	r9, [r3, #0]
	ldr	r3, .L32+40
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r0, .L35
	add	r1, r1, #344
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L35+4
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L36:
	.align	2
.L35:
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
	@ link register save eliminated.
	ldr	r3, .L38
	mov	r2, #3
	str	r2, [r3, #0]
	bx	lr
.L39:
	.align	2
.L38:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L43
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L40
	ldr	r3, .L43+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L42
.L40:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L42:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L44:
	.align	2
.L43:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	fireBullet
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L58
	stmfd	sp!, {r4, r5}
	ldr	r0, [r3, #0]
	cmp	r0, #0
	ble	.L45
	ldr	ip, .L58+4
	ldr	r3, [ip, #56]
	cmp	r3, #0
	movne	r2, ip
	movne	r3, #0
	bne	.L49
	b	.L47
.L54:
	ldr	r1, [r2, #116]
	cmp	r1, #0
	add	r2, r2, #60
	beq	.L47
.L49:
	add	r3, r3, #1
	cmp	r3, r0
	blt	.L54
.L45:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L47:
	mov	r2, #67108864
	add	r2, r2, #256
	ldrh	r2, [r2, #48]
	tst	r2, #64
	moveq	r1, r3, asl #4
	movne	r1, r3, asl #4
	rsbeq	r2, r3, r1
	rsbne	r2, r3, r1
	addeq	r2, ip, r2, asl #2
	mvneq	r0, #4
	addne	r2, ip, r2, asl #2
	movne	r0, #0
	streq	r0, [r2, #16]
	strne	r0, [r2, #16]
	ldr	r0, .L58+8
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
	ldr	r1, .L58+12
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
	b	.L45
.L59:
	.align	2
.L58:
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
	ldr	r3, .L75
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r1, [r3, #0]
	cmp	r1, #0
	ble	.L60
	ldr	r5, .L75+4
	ldr	r4, [r5, #56]
	cmp	r4, #0
	movne	r3, r5
	movne	r4, #0
	bne	.L64
	b	.L62
.L68:
	ldr	r2, [r3, #116]
	cmp	r2, #0
	add	r3, r3, #60
	beq	.L62
.L64:
	add	r4, r4, #1
	cmp	r1, r4
	bgt	.L68
.L60:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L62:
	mov	r8, r4, asl #4
	rsb	r6, r4, r8
	add	r6, r5, r6, asl #2
	mov	r3, #1
	str	r3, [r6, #56]
	mvn	r3, #1
	str	r3, [r6, #20]
	ldr	r7, .L75+8
	mov	lr, pc
	bx	r7
	ldr	r3, .L75+12
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r0
	cmp	r3, #0
	str	r3, [r6, #36]
	beq	.L72
	cmp	r3, #1
	beq	.L73
	cmp	r3, #2
	beq	.L74
.L66:
	mov	lr, pc
	bx	r7
	ldr	r2, .L75+16
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
	ldr	ip, .L75+20
	smull	r2, ip, r0, ip
	ldr	r2, .L75+24
	mov	r1, r0, asr #31
	ldr	r3, [r2, #4]
	rsb	r1, r1, ip, asr #7
	add	r1, r1, r1, asl #4
	add	r7, r3, #240
	sub	r0, r0, r1, asl #4
	ldr	ip, [r6, #8]
	ldr	r2, [r2, #0]
	add	r0, r7, r0
	rsb	r2, r2, ip
	rsb	r3, r3, r0
	str	r0, [r6, #12]
	str	r2, [r5, r4, asl #2]
	str	r3, [r6, #4]
	b	.L60
.L72:
	mov	r3, #28
	str	r3, [r6, #28]
	mov	r3, #30
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, .L75+16
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, asl #4
	add	r3, r3, r2, asl #2
	rsb	r3, r3, r0
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L66
.L74:
	mov	r3, #16
	str	r3, [r6, #28]
	str	r3, [r6, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, .L75+28
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, asl #2
	sub	r3, r0, r3, asl #4
	add	r3, r3, #16
	str	r3, [r6, #8]
	b	.L66
.L73:
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
	b	.L66
.L76:
	.align	2
.L75:
	.word	enemyLength
	.word	enemies
	.word	rand
	.word	1431655766
	.word	1991868891
	.word	2021161081
	.word	.LANCHOR0
	.word	1717986919
	.size	spawnEnemy, .-spawnEnemy
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
	ldr	r0, .L88
	strh	r1, [r6, #0]	@ movhi
	ldr	r3, .L88+4
	mov	lr, pc
	bx	r3
	mov	lr, #23808
	mov	ip, #6912
	add	lr, lr, #4
	add	ip, ip, #8
	mov	r5, #7936	@ movhi
	mov	r3, #7168
	ldr	r4, .L88+8
	strh	r5, [r6, #12]	@ movhi
	mov	r0, #3
	strh	lr, [r6, #10]	@ movhi
	ldr	r1, .L88+12
	strh	ip, [r6, #8]	@ movhi
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L88+16
	add	r2, r2, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L88+20
	add	r2, r2, #16384
	mov	r3, #2272
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L88+24
	add	r2, r2, #59392
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L88+28
	add	r2, r2, #32768
	mov	r3, #528
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L88+32
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L88+36
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L88+40
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+44
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L88+48
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r4, .L88+52
	mov	r5, #0
	ldr	r3, [r4, #0]
	str	r5, [r4, #4]
	ldr	r4, .L88+56
	str	r5, [r4, #0]
	ldr	r4, .L88+60
	str	r5, [r4, #0]
	ldr	r4, .L88+64
	str	r5, [r4, #0]
	ldr	r4, .L88+68
	mov	fp, #12
	str	fp, [r4, #0]
	ldr	r4, .L88+72
	mov	ip, #1
	str	ip, [r4, #0]
	ldr	r4, .L88+76
	str	ip, [r4, #0]
	ldr	r4, .L88+80
	ldr	r1, .L88+84
	mov	r0, #10
	str	r0, [r4, #0]
	mov	r4, #92
	str	r4, [r1, #8]
	mov	r4, #38
	ldr	r2, .L88+88
	str	r4, [r1, #28]
	rsb	r9, r3, #92
	mov	r4, #37
	str	r4, [r1, #24]
	str	r0, [r1, #12]
	str	r9, [r1, #0]
	str	r0, [r1, #4]
	mov	r1, #32
	str	r1, [r2, #28]
	add	r8, r3, #13
	mov	r1, #16
	str	r1, [r2, #24]
	ldr	r7, .L88+92
	mov	r1, #96
	mov	r8, r8, asl #16
	ldr	r4, .L88+96
	str	r1, [r2, #8]
	mov	lr, #300
	rsb	sl, r3, #96
	mvn	r1, #8	@ movhi
	mov	r8, r8, lsr #16
	mvn	fp, #0
	str	ip, [r2, #56]
	str	lr, [r2, #12]
	stmia	r2, {sl, lr}	@ phole stm
	str	r0, [r7, #0]
	str	fp, [r4, #0]
	ldr	r3, .L88+100
	strh	r8, [r6, #26]	@ movhi
	strh	r5, [r6, #22]	@ movhi
	strh	r1, [r6, #18]	@ movhi
	mov	r1, #8	@ movhi
	strh	r1, [r6, #16]	@ movhi
	add	r2, r3, #600
.L78:
	str	r5, [r3, #56]
	add	r3, r3, #60
	cmp	r3, r2
	bne	.L78
	ldr	r6, .L88+104
	mov	r9, #817889280
	add	r9, r9, #199680
	ldr	r4, .L88+108
	ldr	sl, .L88+112
	mov	r8, r5
	mov	fp, r6
	add	r9, r9, #49
	b	.L82
.L79:
	cmp	r3, #1
	beq	.L85
	cmp	r3, #2
	beq	.L86
.L80:
	ldr	r3, [r7, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L87
.L82:
	str	r8, [r4, #56]
	mov	lr, pc
	bx	r6
	smull	r2, r3, sl, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r3, r3, r0
	cmp	r3, #0
	str	r3, [r4, #36]
	bne	.L79
	mov	r3, #28
	str	r3, [r4, #28]
	mov	r3, #30
	str	r3, [r4, #24]
	mov	lr, pc
	bx	fp
	ldr	r3, .L88+116
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
	bgt	.L82
.L87:
	bl	spawnEnemy
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r2, [r3, #48]
	ldr	r3, .L88+120
	strh	r2, [r3, #0]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L85:
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
	b	.L80
.L86:
	mov	r2, #16
	str	r2, [r4, #28]
	str	r2, [r4, #24]
	mov	lr, pc
	bx	fp
	ldr	r3, .L88+124
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, asl #2
	sub	r0, r0, r3, asl #4
	add	r0, r0, #16
	str	r0, [r4, #8]
	b	.L80
.L89:
	.align	2
.L88:
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
	.word	obstacles
	.word	enemyLength
	.word	cheat
	.word	bullets
	.word	rand
	.word	enemies
	.word	1431655766
	.word	1991868891
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
	ldr	r3, .L91
	mov	r2, #1
	str	r2, [r3, #0]
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r3, .L94
	mov	r2, #1
	str	r2, [r3, #0]
	b	initialize
.L95:
	.align	2
.L94:
	.word	state
	.size	startGame, .-startGame
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L97
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+4
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	stopSound
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L132
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r9, .L132+4
	ldr	r3, .L132+8
	ldr	r4, .L132+12
	ldr	r1, [r9, #16]
	ldr	r2, [r9, #12]
	ldr	r0, [r3, #0]
	ldrh	r3, [r4, #0]
	add	r1, r0, r1
	add	r2, r2, #1
	tst	r3, #8
	str	r1, [r9, #16]
	str	r2, [r9, #12]
	beq	.L100
	ldr	r2, .L132+16
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L125
.L100:
	ldr	r2, [r9, #8]
	cmp	r2, #92
	ldr	r1, .L132+4
	beq	.L126
.L101:
	tst	r3, #1
	beq	.L102
	ldr	r1, .L132+16
	ldrh	r1, [r1, #0]
	tst	r1, #1
	beq	.L127
.L102:
	ldr	r0, [r9, #16]
	tst	r3, #2
	add	r0, r2, r0
	str	r0, [r9, #8]
	beq	.L103
	ldr	r3, .L132+16
	ldrh	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L128
.L103:
	ldr	r4, .L132+20
	ldr	ip, [r4, #12]
	ldr	lr, [r4, #8]
	str	ip, [sp, #4]
	mov	ip, #32
	str	ip, [sp, #8]
	mov	ip, #16
	str	ip, [sp, #12]
	ldr	r1, [r9, #12]
	ldr	r2, [r9, #28]
	ldr	r3, [r9, #24]
	str	lr, [sp, #0]
	ldr	ip, .L132+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L104
	ldr	r3, .L132+28
	ldr	r3, [r3, #0]
	cmp	r3, #0
	blt	.L129
.L104:
	ldr	fp, .L132+32
	ldr	r3, [fp, #4]
	add	r3, r3, #3
	str	r3, [fp, #4]
	bl	drawSprites
	ldr	r3, [r9, #4]
	cmp	r3, #10
	ldr	r3, .L132+4
	ble	.L105
	ldr	r2, [r3, #8]
	cmp	r2, #92
	beq	.L130
.L105:
	ldr	r3, [r9, #12]
	add	r3, r3, #3
	str	r3, [r9, #12]
.L106:
	ldr	r3, .L132+36
	ldmia	fp, {r5, ip}	@ phole ldm
	add	r0, r3, #180
.L107:
	ldmia	r3, {r1, r2}	@ phole ldm
	rsb	r1, r5, r1
	rsb	r2, ip, r2
	stmdb	r3, {r1, r2}	@ phole stm
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L107
	ldr	r3, [r4, #4]
	cmn	r3, #15
	ldr	r4, .L132+20
	bge	.L108
	ldr	r3, .L132+40
	mov	lr, pc
	bx	r3
	ldr	r1, .L132+44
	smull	r3, r1, r0, r1
	mov	r3, r0, asr #31
	ldr	r2, [fp, #4]
	rsb	r3, r3, r1, asr #7
	add	r3, r3, r3, asl #4
	add	r1, r2, #240
	sub	r0, r0, r3, asl #4
	add	r3, r1, r0
	rsb	r2, r2, r3
	str	r3, [r4, #12]
	str	r2, [r4, #4]
.L108:
	ldr	r7, .L132+48
	ldr	r1, [r7, #0]
	cmp	r1, #0
	ble	.L109
	ldr	r8, [fp, #4]
	ldr	sl, [fp, #0]
	ldr	r3, .L132+52
	mov	r2, #0
	add	r4, r8, #240
.L112:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L110
	ldr	ip, [r3, #-44]
	cmp	ip, r4
	movgt	ip, #0
	strgt	ip, [r3, #0]
	bgt	.L110
	ldr	r6, [r3, #-48]
	sub	r0, r3, #40
	ldmia	r0, {r0, r5}	@ phole ldm
	add	ip, r5, ip
	add	r0, r0, r6
	rsb	r6, sl, r0
	rsb	r5, r8, ip
	str	ip, [r3, #-44]
	str	r0, [r3, #-48]
	str	r6, [r3, #-56]
	str	r5, [r3, #-52]
.L110:
	add	r2, r2, #1
	cmp	r2, r1
	add	r3, r3, #60
	blt	.L112
.L109:
	ldr	r8, .L132+56
	ldr	r3, [r8, #0]
	cmp	r3, #0
	ble	.L113
	mov	r5, #0
	ldr	r4, .L132+60
	mov	r6, r5
	b	.L116
.L115:
	ldr	ip, [r4, #-8]
	ldr	r3, [r4, #0]
	ldr	r0, [r4, #-12]
	ldmia	fp, {r1, r2}	@ phole ldm
	add	r3, ip, r3
	rsb	r1, r1, r0
	rsb	r2, r2, r3
	str	r3, [r4, #-8]
	str	r1, [r4, #-20]
	str	r2, [r4, #-16]
.L114:
	ldr	r3, [r8, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L131
.L116:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r4, #-16]
	cmn	r3, #30
	bge	.L115
	str	r6, [r4, #36]
	bl	spawnEnemy
	ldr	r3, [r8, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #60
	bgt	.L116
.L131:
	cmp	r3, #0
	ble	.L113
	ldr	r6, .L132+64
	mov	sl, #0
.L117:
	ldr	r3, [r7, #0]
	cmp	r3, #0
	ble	.L120
	ldr	r4, .L132+68
	mov	r5, #0
	b	.L119
.L118:
	ldr	r3, [r7, #0]
	cmp	r3, r5
	add	r4, r4, #60
	ble	.L120
.L119:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	add	r5, r5, #1
	beq	.L118
	ldr	r3, [r6, #56]
	cmp	r3, #0
	beq	.L118
	add	ip, r6, #8
	ldmia	ip, {ip, lr}	@ phole ldm
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	stmia	sp, {ip, lr}	@ phole stm
	ldr	ip, [r6, #28]
	str	ip, [sp, #8]
	ldr	ip, [r6, #24]
	str	ip, [sp, #12]
	ldr	ip, .L132+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L118
	mov	r0, #0
	str	r0, [r4, #56]
	str	r0, [r6, #56]
	bl	spawnEnemy
	ldr	r3, [r7, #0]
	cmp	r3, r5
	add	r4, r4, #60
	bgt	.L119
.L120:
	ldr	r3, [r8, #0]
	add	sl, sl, #1
	cmp	r3, sl
	add	r6, r6, #60
	bgt	.L117
.L113:
	ldr	r3, [fp, #4]
	ldr	r2, .L132+72
	ldr	r7, [r9, #8]
	ldr	r0, [r2, #0]
	ldr	r4, [fp, #0]
	ldr	r6, [r9, #12]
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
	str	r4, [r9, #0]
	str	r3, [r9, #4]
	strh	ip, [r1, #24]	@ movhi
	str	r0, [r2, #0]
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L127:
	cmp	r2, #92
	bne	.L102
	ldr	r1, .L132+76
	ldr	r1, [r1, #0]
	rsb	r1, r1, #0
	str	r1, [r9, #16]
	mov	r1, #38
	str	r1, [r9, #28]
	mov	r1, #25
	str	r1, [r9, #24]
	b	.L102
.L126:
	ldr	lr, .L132+80
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
	b	.L101
.L125:
	ldr	r3, .L132+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L132+88
	mov	r2, #2
	str	r2, [r3, #0]
	ldrh	r3, [r4, #0]
	b	.L100
.L128:
	mov	r1, #1168
	mov	r2, #11008
	ldr	r0, .L132+92
	add	r1, r1, #12
	add	r2, r2, #17
	ldr	ip, .L132+96
	mov	lr, pc
	bx	ip
	bl	fireBullet
	ldr	r3, .L132+4
	ldr	r0, [r3, #8]
	b	.L103
.L130:
	ldr	r2, [r3, #12]
	add	r2, r2, #2
	str	r2, [r3, #12]
	b	.L106
.L129:
	bl	goToLose
	b	.L104
.L133:
	.align	2
.L132:
	.word	waitForVBlank
	.word	hero
	.word	rAcc
	.word	oldButtons
	.word	buttons
	.word	obstacles
	.word	collision
	.word	cheat
	.word	.LANCHOR0
	.word	obstacles+8
	.word	rand
	.word	2021161081
	.word	bulletLength
	.word	bullets+56
	.word	enemyLength
	.word	enemies+20
	.word	enemies
	.word	bullets
	.word	frame
	.word	jumpSpeed
	.word	jumpFrame
	.word	pauseSound
	.word	state
	.word	laser
	.word	playSoundB
	.size	game, .-game
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	ldr	r4, .L137+4
	ldr	r0, .L137+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L137+12
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L134
	ldr	r3, .L137+16
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L136
.L134:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L136:
	bl	firstStart
	ldr	r0, .L137+20
	mov	lr, pc
	bx	r4
	ldr	r5, .L137+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L137+28
	mov	r3, #255
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L137+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldr	r3, .L137+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L137+20
	mov	lr, pc
	bx	r4
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L137+32
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L138:
	.align	2
.L137:
	.word	waitForVBlank
	.word	drawFullscreenImage4
	.word	howtoScreenBitmap
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L146
	ldr	r3, .L146+4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #0]
	tst	r2, #1
	beq	.L140
	ldr	r3, .L146+8
	ldrh	r3, [r3, #0]
	ands	r3, r3, #1
	beq	.L143
.L140:
	tst	r2, #8
	beq	.L141
	ldr	r3, .L146+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L144
.L141:
	tst	r2, #4
	beq	.L139
	ldr	r3, .L146+8
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L145
.L139:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L145:
	ldr	r3, .L146+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L146+16
	ldr	r0, .L146+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L146+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L146+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L146+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L146+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L146+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L146+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L143:
	ldr	ip, .L146+40
	ldr	lr, [ip, #0]
	mov	r1, #1168
	rsb	lr, lr, #0
	mov	r2, #11008
	add	r2, r2, #17
	str	lr, [ip, #0]
	ldr	r0, .L146+44
	add	r1, r1, #12
	ldr	ip, .L146+48
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #0]
	b	.L140
.L144:
	ldr	r3, .L146+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+56
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L139
.L147:
	.align	2
.L146:
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
	.word	laser
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
	ldr	r3, .L149
	mov	r2, #2
	str	r2, [r3, #0]
	bx	lr
.L150:
	.align	2
.L149:
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
	ldr	r0, .L152
	ldr	r3, .L152+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mov	r2, #0	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r5, .L152+8
	mvn	r2, #32768
	strh	r2, [r3, #254]	@ movhi
	ldr	r6, .L152+12
	mov	lr, pc
	bx	r6
	ldr	r4, .L152+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r7, .L152+20
	ldr	r2, .L152+24
	mov	r3, #255
	mov	r1, #2
	ldr	ip, .L152+28
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
	ldr	r3, .L152+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L152+36
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L153:
	.align	2
.L152:
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
	ldr	r4, .L162
	ldr	r3, .L162+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L155
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L159
.L156:
	ldr	r3, .L162+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L157
	ldr	r2, .L162+12
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L160
.L157:
	tst	r3, #4
	beq	.L154
	ldr	r3, .L162+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L161
.L154:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L161:
	ldr	r4, .L162+16
	ldr	r0, .L162+20
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L162+24
	ldr	ip, .L162+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	ip
	ldr	r3, .L162+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L162+20
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	gotoHowto
.L155:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L156
	ldr	r3, .L162+32
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L156
.L159:
	ldr	r3, .L162+32
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L156
.L160:
	ldr	r3, .L162+36
	mov	lr, pc
	bx	r3
	mov	r1, #1294336
	add	r1, r1, #7680
	mov	r2, #11008
	ldr	r0, .L162+40
	add	r1, r1, #46
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L162+44
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	startGame
.L163:
	.align	2
.L162:
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
	ldr	r4, .L170
	ldr	r3, .L170+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L165
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L168
.L166:
	ldr	r3, .L170+8
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L164
	ldr	r3, .L170+12
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L169
.L164:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L169:
	ldr	r5, .L170+16
	ldr	r0, .L170+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L170+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L170+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L170+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L170+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L170+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L170+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L165:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L166
	ldr	r3, .L170+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L166
.L168:
	ldr	r3, .L170+36
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L166
.L171:
	.align	2
.L170:
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
	ldr	r3, .L185
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+4
	mov	lr, pc
	bx	r3
	bl	firstStart
	mov	r5, #67108864
	ldr	r4, .L185+8
	ldr	r7, .L185+12
	ldr	r6, .L185+16
	add	r5, r5, #256
.L184:
	ldrh	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L174:
	strh	r3, [r6, #0]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #0]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L174
.L181:
	.word	.L175
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L179
	.word	.L180
.L180:
	bl	howto
	b	.L184
.L179:
	bl	lose
	b	.L184
.L178:
	bl	win
	b	.L184
.L177:
	bl	pause
	b	.L184
.L176:
	bl	game
	b	.L184
.L175:
	bl	start
	b	.L184
.L186:
	.align	2
.L185:
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
	.comm	lives,4,4
	.comm	score,4,4
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

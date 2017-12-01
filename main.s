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
	stmfd	sp!, {r4, lr}
	ldr	r3, .L17
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+4
	ldr	r1, .L17+8
	ldr	r3, [r3, #0]
	smull	r0, r1, r3, r1
	ldr	r2, .L17+12
	ldr	r0, [r2, #4]
	sub	r1, r1, r3, asr #31
	mov	r0, r0, asl #23
	ldr	ip, .L17+16
	ldrb	lr, [r2, #0]	@ zero_extendqisi2
	mvn	r0, r0, lsr #5
	add	r1, r1, r1, asl #1
	mvn	r0, r0, lsr #18
	subs	r3, r3, r1
	strh	lr, [ip, #0]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	bne	.L2
	ldr	r0, .L17+20
	ldr	r1, [r0, #0]
	cmp	r1, #8
	addle	r1, r1, #1
	strle	r1, [r0, #0]
	strgt	r3, [r0, #0]
.L2:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	blt	.L15
	movne	r3, #536	@ movhi
	strneh	r3, [ip, #4]	@ movhi
	beq	.L16
.L7:
	ldr	r3, .L17+24
	ldr	r2, .L17+16
	mov	r1, #1
.L5:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	add	r1, r1, #1
	beq	.L11
	ldr	r0, [r3, #-52]
	mov	r0, r0, asl #23
	mov	r0, r0, lsr #23
	orr	r0, r0, #16384
	ldrb	lr, [r3, #-56]	@ zero_extendqisi2
	strh	r0, [r2, #10]	@ movhi
	mov	r0, #776	@ movhi
	strh	lr, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
.L11:
	cmp	r1, #21
	add	r3, r3, #60
	add	r2, r2, #8
	bne	.L5
	ldr	r3, .L17+28
	ldr	lr, [r3, #4]
	ldrb	r4, [r3, #0]	@ zero_extendqisi2
	mov	lr, lr, asl #23
	mvn	lr, lr, lsr #6
	mvn	lr, lr, lsr #17
	mvn	r4, r4, asl #17
	mvn	r4, r4, lsr #17
	strh	lr, [ip, #170]	@ movhi
	mov	lr, #772	@ movhi
	strh	r4, [ip, #168]	@ movhi
	strh	lr, [ip, #172]	@ movhi
	mov	r0, #3
	ldr	r1, .L17+16
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L17+32
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	bx	lr
.L15:
	mov	r2, #528	@ movhi
	strh	r2, [ip, #4]	@ movhi
	b	.L7
.L16:
	ldr	r3, .L17+12
	ldr	r3, [r3, #8]
	cmp	r3, #91
	movle	lr, #536	@ movhi
	strleh	lr, [ip, #4]	@ movhi
	ble	.L7
	ldr	r3, .L17+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ble	.L13
	cmp	r3, #7
	bgt	.L10
	add	r3, r3, #28
.L13:
	mov	r3, r3, asl #3
	strh	r3, [ip, #4]	@ movhi
	b	.L7
.L10:
	cmp	r3, #9
	addle	r3, r3, #56
	movle	r3, r3, asl #3
	strleh	r3, [ip, #4]	@ movhi
	b	.L7
.L18:
	.align	2
.L17:
	.word	hideSprites
	.word	frame
	.word	1431655766
	.word	hero
	.word	shadowOAM
	.word	aniState
	.word	bullets+56
	.word	obstacles
	.word	DMANow
	.size	drawSprites, .-drawSprites
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, #67108864
	mov	r3, #5888	@ movhi
	ldr	r0, .L22
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	mov	lr, #23808
	mov	ip, #6912
	add	ip, ip, #8
	add	lr, lr, #4
	mov	r6, #7936	@ movhi
	mov	r3, #7168
	ldr	r5, .L22+8
	strh	r6, [r4, #12]	@ movhi
	mov	r0, #3
	strh	lr, [r4, #10]	@ movhi
	ldr	r1, .L22+12
	strh	ip, [r4, #8]	@ movhi
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+16
	add	r2, r2, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+20
	add	r2, r2, #16384
	mov	r3, #2272
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+24
	add	r2, r2, #59392
	mov	r3, #2048
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+28
	add	r2, r2, #32768
	mov	r3, #528
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+32
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+36
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+40
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L22+44
	mov	lr, pc
	bx	r3
	ldr	sl, .L22+48
	mov	r0, #3
	ldr	r1, .L22+52
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r5
	mov	r1, #0
	str	r1, [sl, #0]
	ldr	r7, [sl, #4]
	ldr	sl, .L22+56
	str	r1, [sl, #0]
	ldr	sl, .L22+60
	str	r1, [sl, #0]
	ldr	sl, .L22+64
	str	r1, [sl, #0]
	ldr	sl, .L22+68
	mov	r9, #12
	str	r9, [sl, #0]
	ldr	sl, .L22+72
	mov	ip, #1
	str	ip, [sl, #0]
	ldr	sl, .L22+76
	ldr	r0, .L22+80
	str	ip, [sl, #0]
	mov	sl, #92
	str	sl, [r0, #8]
	mov	sl, #38
	ldr	r2, .L22+84
	str	sl, [r0, #28]
	mov	r6, #10
	rsb	r8, r7, #92
	mov	sl, #37
	str	r6, [r0, #12]
	str	sl, [r0, #24]
	str	r6, [r0, #4]
	str	r8, [r0, #0]
	mov	r0, #32
	str	r0, [r2, #28]
	add	fp, r7, #13
	mov	r0, #16
	str	r0, [r2, #24]
	mov	fp, fp, asl #16
	mov	r0, #96
	ldr	sl, .L22+88
	str	r0, [r2, #8]
	mov	r5, #300
	rsb	r7, r7, #96
	ldr	r3, .L22+92
	mov	fp, fp, lsr #16
	mvn	r9, #0
	mvn	r0, #8	@ movhi
	mov	r6, #8	@ movhi
	str	ip, [r2, #56]
	str	r5, [r2, #12]
	str	r7, [r2, #0]
	str	r5, [r2, #4]
	str	r9, [sl, #0]
	strh	fp, [r4, #26]	@ movhi
	strh	r1, [r4, #22]	@ movhi
	strh	r0, [r4, #18]	@ movhi
	strh	r6, [r4, #16]	@ movhi
	add	r2, r3, #1200
.L20:
	str	r1, [r3, #56]
	add	r3, r3, #60
	cmp	r3, r2
	bne	.L20
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r2, [r3, #48]
	ldr	r3, .L22+96
	strh	r2, [r3, #0]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	.word	.LANCHOR0
	.word	shadowOAM
	.word	frame
	.word	aniState
	.word	jumpFrame
	.word	jumpSpeed
	.word	rAcc
	.word	aniCounter
	.word	hero
	.word	obstacles
	.word	cheat
	.word	bullets
	.word	buttons
	.size	initialize, .-initialize
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
	ldr	r0, .L25
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mvn	r2, #32768
	mov	r9, #0
	ldr	r6, .L25+8
	strh	r2, [r3, #254]	@ movhi
	strh	r9, [r3, #252]	@ movhi
	ldr	r7, .L25+12
	mov	lr, pc
	bx	r7
	ldr	r8, .L25+16
	mov	r0, r6
	ldr	sl, .L25+20
	mov	lr, pc
	bx	r8
	ldr	r4, .L25+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L25+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r5, .L25+32
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
	ldr	r3, .L25+36
	str	r9, [r3, #0]
	ldr	r3, .L25+40
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r0, .L28
	add	r1, r1, #344
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L28+4
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L29:
	.align	2
.L28:
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
	ldr	r3, .L31
	mov	r2, #3
	str	r2, [r3, #0]
	bx	lr
.L32:
	.align	2
.L31:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L36
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L33
	ldr	r3, .L36+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L35
.L33:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L35:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L37:
	.align	2
.L36:
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
	stmfd	sp!, {r4, r5}
	ldr	r0, .L46
	mov	r3, #0
	mov	r2, r0
.L43:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L45
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #60
	bne	.L43
.L38:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L45:
	ldr	ip, .L46+4
	ldr	r4, [ip, #8]
	cmp	r4, #92
	mov	r1, r3, asl #4
	ldreq	ip, [ip, #12]
	ldrne	ip, [ip, #12]
	rsb	r2, r3, r1
	add	r2, r0, r2, asl #2
	mov	r5, #1
	addeq	ip, ip, #37
	moveq	r4, #97
	addne	r4, r4, #7
	addne	ip, ip, #35
	streq	r4, [r2, #8]
	streq	ip, [r2, #12]
	strne	r4, [r2, #8]
	strne	ip, [r2, #12]
	rsb	r3, r3, r1
	str	r5, [r2, #56]
	ldr	r1, .L46+8
	mov	r5, #12
	str	r5, [r2, #20]
	add	r2, r0, r3, asl #2
	ldr	ip, [r1, #4]
	ldr	r5, [r2, #8]
	ldr	r4, [r2, #12]
	ldr	r1, [r1, #0]
	rsb	ip, ip, r5
	rsb	r1, r1, r4
	str	ip, [r0, r3, asl #2]
	str	r1, [r2, #4]
	b	.L38
.L47:
	.align	2
.L46:
	.word	bullets
	.word	hero
	.word	.LANCHOR0
	.size	fireBullet, .-fireBullet
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	mov	r2, #1
	str	r2, [r3, #0]
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L52
	mov	r2, #1
	str	r2, [r3, #0]
	b	initialize
.L53:
	.align	2
.L52:
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
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L56:
	.align	2
.L55:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	r3, .L82
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r4, .L82+4
	ldr	r3, .L82+8
	ldr	r5, .L82+12
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #12]
	ldr	r0, [r3, #0]
	ldrh	r3, [r5, #0]
	add	r1, r0, r1
	add	r2, r2, #1
	tst	r3, #8
	str	r1, [r4, #16]
	str	r2, [r4, #12]
	beq	.L58
	ldr	r2, .L82+16
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L77
.L58:
	ldr	r2, [r4, #8]
	cmp	r2, #92
	ldr	r1, .L82+4
	beq	.L78
.L59:
	tst	r3, #1
	beq	.L76
	ldr	r1, .L82+16
	ldrh	r1, [r1, #0]
	tst	r1, #1
	beq	.L62
.L76:
	ldr	r0, [r4, #16]
.L61:
	add	r0, r0, r2
	tst	r3, #2
	str	r0, [r4, #8]
	beq	.L64
	ldr	r3, .L82+16
	ldrh	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L79
.L64:
	ldr	r5, .L82+20
	ldr	ip, [r5, #12]
	ldr	lr, [r5, #8]
	str	ip, [sp, #4]
	mov	ip, #32
	str	ip, [sp, #8]
	mov	ip, #16
	str	ip, [sp, #12]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	str	lr, [sp, #0]
	ldr	ip, .L82+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L65
	ldr	r3, .L82+28
	ldr	r3, [r3, #0]
	cmp	r3, #0
	blt	.L80
.L65:
	ldr	r6, .L82+32
	ldr	r3, [r6, #0]
	add	r3, r3, #3
	str	r3, [r6, #0]
	bl	drawSprites
	ldr	r3, [r4, #4]
	cmp	r3, #10
	ldr	r3, .L82+4
	ble	.L66
	ldr	r2, [r3, #8]
	cmp	r2, #92
	beq	.L81
.L66:
	ldr	r3, [r4, #12]
	add	r3, r3, #3
	str	r3, [r4, #12]
.L67:
	ldr	r3, .L82+36
	ldr	r0, [r6, #4]
	ldr	r2, [r6, #0]
	add	r7, r3, #180
.L68:
	ldr	ip, [r3, #0]
	ldr	r1, [r3, #4]
	rsb	ip, r0, ip
	rsb	r1, r2, r1
	str	ip, [r3, #-8]
	str	r1, [r3, #-4]
	add	r3, r3, #60
	cmp	r3, r7
	bne	.L68
	ldr	r3, [r5, #4]
	cmn	r3, #15
	ldr	r5, .L82+20
	bge	.L69
	ldr	r3, .L82+40
	mov	lr, pc
	bx	r3
	ldr	r1, .L82+44
	smull	r3, r1, r0, r1
	mov	r3, r0, asr #31
	ldr	r2, [r6, #0]
	rsb	r3, r3, r1, asr #7
	add	r3, r3, r3, asl #4
	sub	r0, r0, r3, asl #4
	add	r1, r2, #240
	add	r0, r1, r0
	rsb	r3, r2, r0
	str	r0, [r5, #12]
	str	r3, [r5, #4]
	ldr	r0, [r6, #4]
.L69:
	ldr	r3, .L82+48
	ldr	r5, [r6, #4]
	ldr	r7, [r6, #0]
	mov	r8, #0
	add	r6, r3, #1200
	b	.L72
.L73:
	mov	r0, r5
	mov	r2, r7
.L72:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	add	ip, r2, #240
	beq	.L70
	ldr	r1, [r3, #-8]
	cmp	r1, ip
	ldrle	ip, [r3, #0]
	ldrle	sl, [r3, #-12]
	addle	r1, ip, r1
	rsble	sl, r0, sl
	rsble	ip, r2, r1
	strgt	r8, [r3, #36]
	strle	r1, [r3, #-8]
	strle	sl, [r3, #-20]
	strle	ip, [r3, #-16]
	movgt	r0, r5
.L70:
	add	r3, r3, #60
	cmp	r3, r6
	bne	.L73
	ldr	r3, .L82+52
	ldr	r8, [r4, #8]
	ldr	ip, [r3, #0]
	ldr	r7, [r4, #12]
	add	r5, r2, r2, lsr #31
	mov	r6, r2, asl #16
	mov	r5, r5, asl #15
	mov	r1, #67108864
	rsb	r0, r0, r8
	rsb	r2, r2, r7
	mov	r6, r6, lsr #16
	mov	r5, r5, lsr #16
	add	ip, ip, #1
	strh	r6, [r1, #20]	@ movhi
	stmia	r4, {r0, r2}	@ phole stm
	strh	r5, [r1, #24]	@ movhi
	str	ip, [r3, #0]
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L62:
	cmp	r2, #92
	bne	.L76
	ldr	r1, .L82+56
	ldr	r0, [r1, #0]
	mov	r1, #38
	rsb	r0, r0, #0
	str	r1, [r4, #28]
	mov	r1, #25
	str	r0, [r4, #16]
	str	r1, [r4, #24]
	b	.L61
.L78:
	ldr	lr, .L82+60
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
	b	.L59
.L77:
	ldr	r3, .L82+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+68
	mov	r2, #2
	str	r2, [r3, #0]
	ldrh	r3, [r5, #0]
	b	.L58
.L79:
	mov	r1, #1168
	mov	r2, #11008
	ldr	r0, .L82+72
	add	r1, r1, #12
	add	r2, r2, #17
	ldr	ip, .L82+76
	mov	lr, pc
	bx	ip
	bl	fireBullet
	ldr	r3, .L82+4
	ldr	r0, [r3, #8]
	b	.L64
.L81:
	ldr	r2, [r3, #12]
	add	r2, r2, #2
	str	r2, [r3, #12]
	b	.L67
.L80:
	bl	goToLose
	b	.L65
.L83:
	.align	2
.L82:
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
	.word	bullets+20
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
	stmfd	sp!, {r4, lr}
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	ldr	r0, .L87+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+12
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L84
	ldr	r3, .L87+16
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L86
.L84:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L86:
	ldmfd	sp!, {r4, lr}
	b	firstStart
.L88:
	.align	2
.L87:
	.word	waitForVBlank
	.word	drawFullscreenImage4
	.word	howtoScreenBitmap
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L95
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+4
	ldrh	r3, [r3, #0]
	tst	r3, #1
	beq	.L90
	ldr	r2, .L95+8
	ldrh	r2, [r2, #0]
	tst	r2, #1
	ldreq	r2, .L95+12
	ldreq	r1, [r2, #0]
	rsbeq	r1, r1, #0
	streq	r1, [r2, #0]
.L90:
	tst	r3, #8
	beq	.L91
	ldr	r2, .L95+8
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L93
.L91:
	tst	r3, #4
	beq	.L89
	ldr	r3, .L95+8
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L94
.L89:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L94:
	ldr	r3, .L95+16
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	b	firstStart
.L93:
	ldr	r3, .L95+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+24
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L89
.L96:
	.align	2
.L95:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	cheat
	.word	stopSound
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
	ldr	r3, .L98
	mov	r2, #2
	str	r2, [r3, #0]
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r0, .L101
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mov	r2, #0	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r5, .L101+8
	mvn	r2, #32768
	strh	r2, [r3, #254]	@ movhi
	ldr	r6, .L101+12
	mov	lr, pc
	bx	r6
	ldr	r4, .L101+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r7, .L101+20
	ldr	r2, .L101+24
	mov	r3, #255
	mov	r1, #2
	ldr	ip, .L101+28
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
	ldr	r3, .L101+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L101+36
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L102:
	.align	2
.L101:
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
	ldr	r4, .L111
	ldr	r3, .L111+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L104
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L108
.L105:
	ldr	r3, .L111+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L106
	ldr	r2, .L111+12
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L109
.L106:
	tst	r3, #4
	beq	.L103
	ldr	r3, .L111+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L110
.L103:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L110:
	ldr	r4, .L111+16
	ldr	r0, .L111+20
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L111+24
	ldr	ip, .L111+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	ip
	ldr	r3, .L111+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L111+20
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	gotoHowto
.L104:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L105
	ldr	r3, .L111+32
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L105
.L108:
	ldr	r3, .L111+32
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L105
.L109:
	ldr	r3, .L111+36
	mov	lr, pc
	bx	r3
	mov	r1, #1294336
	add	r1, r1, #7680
	mov	r2, #11008
	ldr	r0, .L111+40
	add	r1, r1, #46
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L111+44
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	startGame
.L112:
	.align	2
.L111:
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
	ldr	r4, .L119
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L114
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L117
.L115:
	ldr	r3, .L119+8
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L113
	ldr	r3, .L119+12
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L118
.L113:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L118:
	ldr	r5, .L119+16
	ldr	r0, .L119+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L119+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L119+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L119+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L119+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L119+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L114:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L115
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L115
.L117:
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L115
.L120:
	.align	2
.L119:
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
	ldr	r3, .L134
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+4
	mov	lr, pc
	bx	r3
	bl	firstStart
	mov	r5, #67108864
	ldr	r4, .L134+8
	ldr	r7, .L134+12
	ldr	r6, .L134+16
	add	r5, r5, #256
.L133:
	ldrh	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L123:
	strh	r3, [r6, #0]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #0]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L123
.L130:
	.word	.L124
	.word	.L125
	.word	.L126
	.word	.L127
	.word	.L128
	.word	.L129
.L129:
	bl	howto
	b	.L133
.L128:
	bl	lose
	b	.L133
.L127:
	bl	win
	b	.L133
.L126:
	bl	pause
	b	.L133
.L125:
	bl	game
	b	.L133
.L124:
	bl	start
	b	.L133
.L135:
	.align	2
.L134:
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
	.comm	bullets,1200,4
	.comm	obstacles,180,4
	.comm	frame,4,4
	.comm	aniState,4,4
	.comm	jumpFrame,4,4
	.comm	jumpSpeed,4,4
	.comm	rAcc,4,4
	.comm	cheat,4,4
	.comm	aniCounter,4,4
	.comm	frameCount,4,4
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
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"

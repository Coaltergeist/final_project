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
	ldr	r3, .L18
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+4
	ldr	r2, .L18+8
	ldr	r3, [r3, #0]
	smull	r0, r2, r3, r2
	ldr	r4, .L18+12
	ldr	r1, [r4, #4]
	sub	r2, r2, r3, asr #31
	mov	r1, r1, asl #23
	ldr	lr, .L18+16
	ldrb	r0, [r4, #0]	@ zero_extendqisi2
	mvn	r1, r1, lsr #5
	add	r2, r2, r2, asl #1
	mvn	r1, r1, lsr #18
	subs	r3, r3, r2
	strh	r0, [lr, #0]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	bne	.L2
	ldr	r1, .L18+20
	ldr	r2, [r1, #0]
	cmp	r2, #8
	addle	r2, r2, #1
	strle	r2, [r1, #0]
	strgt	r3, [r1, #0]
.L2:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	blt	.L16
	movne	r2, #536	@ movhi
	strneh	r2, [lr, #4]	@ movhi
	beq	.L17
.L7:
	ldr	r3, .L18+24
	ldr	r2, .L18+16
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
	ldrb	ip, [r3, #-56]	@ zero_extendqisi2
	strh	r0, [r2, #10]	@ movhi
	mov	r0, #776	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
.L11:
	cmp	r1, #21
	add	r3, r3, #60
	add	r2, r2, #8
	bne	.L5
	ldr	r3, .L18+28
	ldr	r2, [r3, #4]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L18+32
	mov	r2, r2, asl #23
	ldr	r3, [r3, #0]
	mvn	r1, r1, asl #17
	mvn	r1, r1, lsr #17
	mvn	r2, r2, lsr #6
	mvn	r2, r2, lsr #17
	cmp	r3, #0
	strh	r1, [lr, #168]	@ movhi
	mov	r1, #772	@ movhi
	ldr	r3, .L18+16
	strh	r2, [lr, #170]	@ movhi
	strh	r1, [lr, #172]	@ movhi
	ble	.L12
	ldr	r0, [r4, #4]
	sub	r0, r0, #8
	ldr	lr, [r4, #0]
	mov	r0, r0, asl #23
	mov	r1, #400
	mvn	r0, r0, lsr #5
	add	r1, r1, #2
	sub	lr, lr, #6
	mov	r2, #776
	mvn	r0, r0, lsr #18
	strh	r0, [r3, r1]	@ movhi
	and	lr, lr, #255
	add	r2, r2, #2
	mov	ip, #400
	mov	r1, #404
	strh	lr, [r3, ip]	@ movhi
	strh	r2, [r3, r1]	@ movhi
.L12:
	mov	r0, #3
	ldr	r1, .L18+16
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L18+36
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	bx	lr
.L16:
	mov	r1, #528	@ movhi
	strh	r1, [lr, #4]	@ movhi
	b	.L7
.L17:
	ldr	r3, .L18+12
	ldr	r3, [r3, #8]
	cmp	r3, #91
	movle	r3, #536	@ movhi
	strleh	r3, [lr, #4]	@ movhi
	ble	.L7
	ldr	r3, .L18+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ble	.L14
	cmp	r3, #7
	bgt	.L10
	add	r3, r3, #28
.L14:
	mov	r3, r3, asl #3
	strh	r3, [lr, #4]	@ movhi
	b	.L7
.L10:
	cmp	r3, #9
	addle	r3, r3, #56
	movle	r3, r3, asl #3
	strleh	r3, [lr, #4]	@ movhi
	b	.L7
.L19:
	.align	2
.L18:
	.word	hideSprites
	.word	frame
	.word	1431655766
	.word	hero
	.word	shadowOAM
	.word	aniState
	.word	bullets+56
	.word	obstacles
	.word	cheat
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
	ldr	r0, .L23
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L23+4
	mov	lr, pc
	bx	r3
	mov	lr, #23808
	mov	ip, #6912
	add	ip, ip, #8
	add	lr, lr, #4
	mov	r6, #7936	@ movhi
	mov	r3, #7168
	ldr	r5, .L23+8
	strh	r6, [r4, #12]	@ movhi
	mov	r0, #3
	strh	lr, [r4, #10]	@ movhi
	ldr	r1, .L23+12
	strh	ip, [r4, #8]	@ movhi
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+16
	add	r2, r2, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+20
	add	r2, r2, #16384
	mov	r3, #2272
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+24
	add	r2, r2, #59392
	mov	r3, #2048
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+28
	add	r2, r2, #32768
	mov	r3, #528
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+32
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+36
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L23+40
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L23+44
	mov	lr, pc
	bx	r3
	ldr	sl, .L23+48
	mov	r0, #3
	ldr	r1, .L23+52
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r5
	mov	r1, #0
	str	r1, [sl, #0]
	ldr	r7, [sl, #4]
	ldr	sl, .L23+56
	str	r1, [sl, #0]
	ldr	sl, .L23+60
	str	r1, [sl, #0]
	ldr	sl, .L23+64
	str	r1, [sl, #0]
	ldr	sl, .L23+68
	mov	r9, #12
	str	r9, [sl, #0]
	ldr	sl, .L23+72
	mov	ip, #1
	str	ip, [sl, #0]
	ldr	sl, .L23+76
	ldr	r0, .L23+80
	str	ip, [sl, #0]
	mov	sl, #92
	str	sl, [r0, #8]
	mov	sl, #38
	ldr	r2, .L23+84
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
	ldr	sl, .L23+88
	str	r0, [r2, #8]
	mov	r5, #300
	rsb	r7, r7, #96
	ldr	r3, .L23+92
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
.L21:
	str	r1, [r3, #56]
	add	r3, r3, #60
	cmp	r3, r2
	bne	.L21
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r2, [r3, #48]
	ldr	r3, .L23+96
	strh	r2, [r3, #0]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r0, .L26
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L26+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mvn	r2, #32768
	mov	r9, #0
	ldr	r6, .L26+8
	strh	r2, [r3, #254]	@ movhi
	strh	r9, [r3, #252]	@ movhi
	ldr	r7, .L26+12
	mov	lr, pc
	bx	r7
	ldr	r8, .L26+16
	mov	r0, r6
	ldr	sl, .L26+20
	mov	lr, pc
	bx	r8
	ldr	r4, .L26+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L26+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r5, .L26+32
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
	ldr	r3, .L26+36
	str	r9, [r3, #0]
	ldr	r3, .L26+40
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r0, .L29
	add	r1, r1, #344
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L29+4
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L30:
	.align	2
.L29:
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
	ldr	r3, .L32
	mov	r2, #3
	str	r2, [r3, #0]
	bx	lr
.L33:
	.align	2
.L32:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L37
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L34
	ldr	r3, .L37+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L36
.L34:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L36:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L38:
	.align	2
.L37:
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
	ldr	r0, .L47
	mov	r3, #0
	mov	r2, r0
.L44:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L46
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #60
	bne	.L44
.L39:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L46:
	ldr	ip, .L47+4
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
	ldr	r1, .L47+8
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
	b	.L39
.L48:
	.align	2
.L47:
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
	ldr	r3, .L50
	mov	r2, #1
	str	r2, [r3, #0]
	bx	lr
.L51:
	.align	2
.L50:
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
	ldr	r3, .L53
	mov	r2, #1
	str	r2, [r3, #0]
	b	initialize
.L54:
	.align	2
.L53:
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
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+4
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L83
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r4, .L83+4
	ldr	r3, .L83+8
	ldr	r5, .L83+12
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #12]
	ldr	r0, [r3, #0]
	ldrh	r3, [r5, #0]
	add	r1, r0, r1
	add	r2, r2, #1
	tst	r3, #8
	str	r1, [r4, #16]
	str	r2, [r4, #12]
	beq	.L59
	ldr	r2, .L83+16
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L78
.L59:
	ldr	r2, [r4, #8]
	cmp	r2, #92
	ldr	r1, .L83+4
	beq	.L79
.L60:
	tst	r3, #1
	beq	.L77
	ldr	r1, .L83+16
	ldrh	r1, [r1, #0]
	tst	r1, #1
	beq	.L63
.L77:
	ldr	r0, [r4, #16]
.L62:
	add	r0, r0, r2
	tst	r3, #2
	str	r0, [r4, #8]
	beq	.L65
	ldr	r3, .L83+16
	ldrh	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L80
.L65:
	ldr	r5, .L83+20
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
	ldr	ip, .L83+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L66
	ldr	r3, .L83+28
	ldr	r3, [r3, #0]
	cmp	r3, #0
	blt	.L81
.L66:
	ldr	r6, .L83+32
	ldr	r3, [r6, #0]
	add	r3, r3, #3
	str	r3, [r6, #0]
	bl	drawSprites
	ldr	r3, [r4, #4]
	cmp	r3, #10
	ldr	r3, .L83+4
	ble	.L67
	ldr	r2, [r3, #8]
	cmp	r2, #92
	beq	.L82
.L67:
	ldr	r3, [r4, #12]
	add	r3, r3, #3
	str	r3, [r4, #12]
.L68:
	ldr	r3, .L83+36
	ldr	r0, [r6, #4]
	ldr	r2, [r6, #0]
	add	r7, r3, #180
.L69:
	ldr	ip, [r3, #0]
	ldr	r1, [r3, #4]
	rsb	ip, r0, ip
	rsb	r1, r2, r1
	str	ip, [r3, #-8]
	str	r1, [r3, #-4]
	add	r3, r3, #60
	cmp	r3, r7
	bne	.L69
	ldr	r3, [r5, #4]
	cmn	r3, #15
	ldr	r5, .L83+20
	bge	.L70
	ldr	r3, .L83+40
	mov	lr, pc
	bx	r3
	ldr	r1, .L83+44
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
.L70:
	ldr	r3, .L83+48
	ldr	r5, [r6, #4]
	ldr	r7, [r6, #0]
	mov	r8, #0
	add	r6, r3, #1200
	b	.L73
.L74:
	mov	r0, r5
	mov	r2, r7
.L73:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	add	ip, r2, #240
	beq	.L71
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
.L71:
	add	r3, r3, #60
	cmp	r3, r6
	bne	.L74
	ldr	r3, .L83+52
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
.L63:
	cmp	r2, #92
	bne	.L77
	ldr	r1, .L83+56
	ldr	r0, [r1, #0]
	mov	r1, #38
	rsb	r0, r0, #0
	str	r1, [r4, #28]
	mov	r1, #25
	str	r0, [r4, #16]
	str	r1, [r4, #24]
	b	.L62
.L79:
	ldr	lr, .L83+60
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
	b	.L60
.L78:
	ldr	r3, .L83+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+68
	mov	r2, #2
	str	r2, [r3, #0]
	ldrh	r3, [r5, #0]
	b	.L59
.L80:
	mov	r1, #1168
	mov	r2, #11008
	ldr	r0, .L83+72
	add	r1, r1, #12
	add	r2, r2, #17
	ldr	ip, .L83+76
	mov	lr, pc
	bx	ip
	bl	fireBullet
	ldr	r3, .L83+4
	ldr	r0, [r3, #8]
	b	.L65
.L82:
	ldr	r2, [r3, #12]
	add	r2, r2, #2
	str	r2, [r3, #12]
	b	.L68
.L81:
	bl	goToLose
	b	.L66
.L84:
	.align	2
.L83:
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
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+4
	ldr	r0, .L88+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+12
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L85
	ldr	r3, .L88+16
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L87
.L85:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L87:
	bl	firstStart
	ldr	r0, .L88+20
	mov	lr, pc
	bx	r4
	ldr	r5, .L88+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L88+28
	mov	r3, #255
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L88+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldr	r3, .L88+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L88+20
	mov	lr, pc
	bx	r4
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L88+32
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L89:
	.align	2
.L88:
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
	ldr	r4, .L97
	ldr	r3, .L97+4
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4, #0]
	tst	r2, #1
	beq	.L91
	ldr	r3, .L97+8
	ldrh	r3, [r3, #0]
	ands	r3, r3, #1
	beq	.L94
.L91:
	tst	r2, #8
	beq	.L92
	ldr	r3, .L97+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L95
.L92:
	tst	r2, #4
	beq	.L90
	ldr	r3, .L97+8
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L96
.L90:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L96:
	ldr	r3, .L97+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L97+16
	ldr	r0, .L97+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L97+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L97+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L97+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L97+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L97+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	firstStart
.L94:
	ldr	ip, .L97+40
	ldr	lr, [ip, #0]
	mov	r1, #1168
	rsb	lr, lr, #0
	mov	r2, #11008
	add	r2, r2, #17
	str	lr, [ip, #0]
	ldr	r0, .L97+44
	add	r1, r1, #12
	ldr	ip, .L97+48
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #0]
	b	.L91
.L95:
	ldr	r3, .L97+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+56
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L90
.L98:
	.align	2
.L97:
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
	ldr	r3, .L100
	mov	r2, #2
	str	r2, [r3, #0]
	bx	lr
.L101:
	.align	2
.L100:
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
	ldr	r0, .L103
	ldr	r3, .L103+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	mov	r2, #0	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r5, .L103+8
	mvn	r2, #32768
	strh	r2, [r3, #254]	@ movhi
	ldr	r6, .L103+12
	mov	lr, pc
	bx	r6
	ldr	r4, .L103+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	r7, .L103+20
	ldr	r2, .L103+24
	mov	r3, #255
	mov	r1, #2
	ldr	ip, .L103+28
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
	ldr	r3, .L103+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L103+36
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r4, .L113
	ldr	r3, .L113+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L106
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L110
.L107:
	ldr	r3, .L113+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L108
	ldr	r2, .L113+12
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L111
.L108:
	tst	r3, #4
	beq	.L105
	ldr	r3, .L113+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L112
.L105:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L112:
	ldr	r4, .L113+16
	ldr	r0, .L113+20
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L113+24
	ldr	ip, .L113+28
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	ip
	ldr	r3, .L113+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L113+20
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	gotoHowto
.L106:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L107
	ldr	r3, .L113+32
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L107
.L110:
	ldr	r3, .L113+32
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L107
.L111:
	ldr	r3, .L113+36
	mov	lr, pc
	bx	r3
	mov	r1, #1294336
	add	r1, r1, #7680
	mov	r2, #11008
	ldr	r0, .L113+40
	add	r1, r1, #46
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L113+44
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	startGame
.L114:
	.align	2
.L113:
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
	ldr	r4, .L121
	ldr	r3, .L121+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L116
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L119
.L117:
	ldr	r3, .L121+8
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L115
	ldr	r3, .L121+12
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L120
.L115:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L120:
	ldr	r5, .L121+16
	ldr	r0, .L121+20
	mov	lr, pc
	bx	r5
	ldr	r4, .L121+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L121+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r2, .L121+32
	mov	r0, #150
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L121+20
	mov	lr, pc
	bx	r5
	mov	r0, #150
	mov	r1, #2
	ldr	r2, .L121+32
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L116:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L117
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L117
.L119:
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L117
.L122:
	.align	2
.L121:
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
	ldr	r3, .L136
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+4
	mov	lr, pc
	bx	r3
	bl	firstStart
	mov	r5, #67108864
	ldr	r4, .L136+8
	ldr	r7, .L136+12
	ldr	r6, .L136+16
	add	r5, r5, #256
.L135:
	ldrh	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L125:
	strh	r3, [r6, #0]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #0]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L125
.L132:
	.word	.L126
	.word	.L127
	.word	.L128
	.word	.L129
	.word	.L130
	.word	.L131
.L131:
	bl	howto
	b	.L135
.L130:
	bl	lose
	b	.L135
.L129:
	bl	win
	b	.L135
.L128:
	bl	pause
	b	.L135
.L127:
	bl	game
	b	.L135
.L126:
	bl	start
	b	.L135
.L137:
	.align	2
.L136:
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

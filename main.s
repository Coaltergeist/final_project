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
	ldr	r3, .L13
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+4
	ldr	r1, .L13+8
	ldr	r3, [r3, #0]
	smull	r2, r1, r3, r1
	ldr	r2, .L13+12
	ldr	r0, [r2, #4]
	sub	r1, r1, r3, asr #31
	mov	r0, r0, asl #23
	ldr	ip, .L13+16
	ldrb	lr, [r2, #0]	@ zero_extendqisi2
	mvn	r0, r0, lsr #5
	add	r1, r1, r1, asl #1
	mvn	r0, r0, lsr #18
	subs	r3, r3, r1
	strh	lr, [ip, #0]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	bne	.L2
	ldr	r0, .L13+20
	ldr	r1, [r0, #0]
	cmp	r1, #8
	addle	r1, r1, #1
	strle	r1, [r0, #0]
	strgt	r3, [r0, #0]
.L2:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	movlt	r3, #528	@ movhi
	strlth	r3, [ip, #4]	@ movhi
	blt	.L5
	movne	lr, #536	@ movhi
	strneh	lr, [ip, #4]	@ movhi
	beq	.L12
.L5:
	ldr	r3, .L13+24
	ldr	lr, [r3, #4]
	ldrb	r4, [r3, #0]	@ zero_extendqisi2
	mov	lr, lr, asl #23
	mvn	lr, lr, lsr #6
	mvn	lr, lr, lsr #17
	mvn	r4, r4, asl #17
	mvn	r4, r4, lsr #17
	strh	lr, [ip, #10]	@ movhi
	mov	lr, #772	@ movhi
	strh	r4, [ip, #8]	@ movhi
	strh	lr, [ip, #12]	@ movhi
	mov	r0, #3
	ldr	r1, .L13+16
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L13+28
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	bx	lr
.L12:
	ldr	r3, .L13+12
	ldr	r3, [r3, #8]
	cmp	r3, #91
	movle	r2, #536	@ movhi
	strleh	r2, [ip, #4]	@ movhi
	ble	.L5
.L7:
	ldr	r3, .L13+20
	ldr	r3, [r3, #0]
	cmp	r3, #3
	ble	.L10
	cmp	r3, #7
	bgt	.L9
	add	r3, r3, #28
.L10:
	mov	r3, r3, asl #3
	strh	r3, [ip, #4]	@ movhi
	b	.L5
.L9:
	cmp	r3, #9
	addle	r3, r3, #56
	movle	r3, r3, asl #3
	strleh	r3, [ip, #4]	@ movhi
	b	.L5
.L14:
	.align	2
.L13:
	.word	hideSprites
	.word	frame
	.word	1431655766
	.word	hero
	.word	shadowOAM
	.word	aniState
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r3, #5888	@ movhi
	mov	r4, #67108864
	strh	r3, [r4, #0]	@ movhi
	ldr	r0, .L16
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	mov	lr, #23808
	mov	ip, #6912
	add	ip, ip, #8
	add	lr, lr, #4
	mov	r6, #100663296
	mov	r7, #7936	@ movhi
	mov	r3, #7168
	ldr	r5, .L16+8
	strh	r7, [r4, #12]	@ movhi
	mov	r2, r6
	strh	lr, [r4, #10]	@ movhi
	mov	r0, #3
	strh	ip, [r4, #8]	@ movhi
	ldr	r1, .L16+12
	add	r3, r3, #32
	mov	lr, pc
	bx	r5
	add	r2, r6, #63488
	mov	r0, #3
	ldr	r1, .L16+16
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	add	r2, r6, #16384
	mov	r0, #3
	ldr	r1, .L16+20
	mov	r3, #2272
	mov	lr, pc
	bx	r5
	add	r2, r6, #59392
	mov	r0, #3
	ldr	r1, .L16+24
	mov	r3, #2048
	mov	lr, pc
	bx	r5
	add	r2, r6, #32768
	mov	r0, #3
	ldr	r1, .L16+28
	mov	r3, #528
	mov	lr, pc
	bx	r5
	add	r2, r6, #55296
	mov	r0, #3
	ldr	r1, .L16+32
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	add	r2, r6, #65536
	mov	r0, #3
	ldr	r1, .L16+36
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+40
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r6, .L16+44
	ldr	r3, .L16+48
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L16+52
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r5
	ldr	ip, [r6, #4]
	add	r3, ip, #13
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r4, #26]	@ movhi
	mov	r1, #0
	mvn	r3, #8	@ movhi
	mov	r7, #8	@ movhi
	strh	r1, [r4, #22]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	strh	r7, [r4, #16]	@ movhi
	add	r4, r4, #256
	ldrh	r7, [r4, #48]
	str	r1, [r6, #0]
	ldr	r6, .L16+56
	str	r1, [r6, #0]
	ldr	r6, .L16+60
	str	r1, [r6, #0]
	ldr	r6, .L16+64
	str	r1, [r6, #0]
	ldr	r1, .L16+68
	mov	r6, #12
	str	r6, [r1, #0]
	ldr	r1, .L16+72
	mov	r0, #1
	str	r0, [r1, #0]
	ldr	r1, .L16+76
	ldr	r2, .L16+80
	str	r0, [r1, #0]
	mov	r1, #92
	str	r1, [r2, #8]
	mov	r1, #38
	ldr	r3, .L16+84
	mov	r5, #10
	rsb	r8, ip, #92
	str	r1, [r2, #28]
	mov	r1, #37
	str	r1, [r2, #24]
	str	r5, [r2, #12]
	str	r8, [r2, #0]
	str	r5, [r2, #4]
	mov	r2, #32
	str	r2, [r3, #28]
	mov	r2, #16
	mov	r4, #300
	str	r2, [r3, #24]
	rsb	ip, ip, #96
	mov	r2, #96
	str	ip, [r3, #0]
	ldr	r1, .L16+88
	str	r0, [r3, #56]
	str	r2, [r3, #8]
	str	r4, [r3, #12]
	str	r4, [r3, #4]
	ldr	r3, .L16+92
	mvn	r6, #0
	str	r6, [r1, #0]
	strh	r7, [r3, #0]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	.word	hero
	.word	obstacles
	.word	cheat
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	startJump
	.type	startJump, %function
startJump:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L22
	ldr	r3, [r2, #0]
	sub	r1, r3, #1
	cmp	r1, #18
	bls	.L21
	cmp	r3, #20
	ldrgt	r3, .L22+4
	ldrgt	r2, [r3, #8]
	addgt	r2, r2, #1
	strgt	r2, [r3, #8]
	bx	lr
.L21:
	ldr	r1, .L22+4
	ldr	r0, [r1, #8]
	add	r3, r3, #1
	sub	r0, r0, #1
	str	r0, [r1, #8]
	str	r3, [r2, #0]
	bx	lr
.L23:
	.align	2
.L22:
	.word	jumpFrame
	.word	hero
	.size	startJump, .-startJump
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r3, #1040
	mov	r2, #67108864
	add	r3, r3, #4
	ldr	r0, .L25
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mvn	r2, #32768
	add	r3, r3, #256
	mov	sl, #0
	ldr	r7, .L25+8
	strh	r2, [r3, #254]	@ movhi
	strh	sl, [r3, #252]	@ movhi
	ldr	r3, .L25+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L25+16
	mov	r0, r7
	ldr	r8, .L25+20
	mov	lr, pc
	bx	r6
	ldr	r4, .L25+24
	mov	r0, #120
	mov	r1, #62
	ldr	r2, .L25+28
	mov	r3, #255
	mov	lr, pc
	bx	r4
	ldr	r5, .L25+32
	mov	r1, #2
	mov	r2, r8
	mov	r3, #255
	mov	r0, #150
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r0, r7
	mov	lr, pc
	bx	r6
	mov	r2, r8
	mov	r3, #255
	mov	r0, #150
	mov	r1, #2
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L25+36
	str	sl, [r3, #0]
	ldr	r3, .L25+40
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
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
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L39
	mov	r2, #1
	str	r2, [r3, #0]
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r3, .L42
	mov	r2, #1
	str	r2, [r3, #0]
	b	initialize
.L43:
	.align	2
.L42:
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
	ldr	r3, .L45
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+4
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L46:
	.align	2
.L45:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L70
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L70+4
	ldr	r3, .L70+8
	ldr	r5, .L70+12
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #12]
	ldr	r0, [r3, #0]
	ldrh	r3, [r5, #0]
	add	r1, r0, r1
	add	r2, r2, #1
	tst	r3, #8
	str	r1, [r4, #16]
	str	r2, [r4, #12]
	beq	.L48
	ldr	r2, .L70+16
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L65
.L48:
	ldr	r1, [r4, #8]
	cmp	r1, #92
	ldr	r0, .L70+4
	ldrne	r2, .L70+20
	beq	.L66
.L49:
	tst	r3, #1
	beq	.L64
	ldr	r0, .L70+16
	ldrh	r0, [r0, #0]
	tst	r0, #1
	beq	.L52
.L64:
	ldr	r0, [r4, #16]
.L51:
	ldr	ip, [r2, #0]
	add	r0, r0, r1
	tst	r3, #2
	add	r1, ip, #1
	str	r1, [r2, #0]
	str	r0, [r4, #8]
	beq	.L54
	ldr	r3, .L70+16
	ldrh	r3, [r3, #0]
	ands	r3, r3, #2
	beq	.L67
.L54:
	ldr	r5, .L70+24
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
	ldr	ip, .L70+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L55
	ldr	r3, .L70+32
	ldr	r3, [r3, #0]
	cmp	r3, #0
	blt	.L68
.L55:
	ldr	r6, .L70+36
	ldr	r3, [r6, #0]
	add	r3, r3, #3
	str	r3, [r6, #0]
	bl	drawSprites
	ldr	r3, [r4, #4]
	cmp	r3, #10
	ldr	r3, .L70+4
	ble	.L56
	ldr	r2, [r3, #8]
	cmp	r2, #92
	beq	.L69
.L56:
	ldr	r3, [r4, #12]
	add	r3, r3, #3
	str	r3, [r4, #12]
.L57:
	ldr	r3, .L70+40
	ldmia	r6, {r2, ip}	@ phole ldm
	add	r7, r3, #180
.L58:
	ldmia	r3, {r0, r1}	@ phole ldm
	rsb	r0, ip, r0
	rsb	r1, r2, r1
	stmdb	r3, {r0, r1}	@ phole stm
	add	r3, r3, #60
	cmp	r3, r7
	bne	.L58
	ldr	r3, [r5, #4]
	cmn	r3, #15
	ldr	r5, .L70+24
	bge	.L59
	ldr	r3, .L70+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+48
	smull	r2, r3, r0, r3
	mov	r1, r0, asr #31
	ldr	r2, [r6, #0]
	rsb	r3, r1, r3, asr #7
	add	r3, r3, r3, asl #4
	sub	r0, r0, r3, asl #4
	add	r1, r2, #240
	add	r0, r1, r0
	rsb	r3, r2, r0
	str	r0, [r5, #12]
	str	r3, [r5, #4]
	ldr	ip, [r6, #4]
.L59:
	ldr	r3, .L70+52
	ldr	r8, [r4, #8]
	ldr	r0, [r3, #0]
	ldr	r7, [r4, #12]
	add	r5, r2, r2, lsr #31
	mov	r6, r2, asl #16
	mov	r5, r5, asl #15
	mov	r1, #67108864
	rsb	ip, ip, r8
	rsb	r2, r2, r7
	mov	r6, r6, lsr #16
	mov	r5, r5, lsr #16
	add	r0, r0, #1
	strh	r6, [r1, #20]	@ movhi
	str	ip, [r4, #0]
	str	r2, [r4, #4]
	strh	r5, [r1, #24]	@ movhi
	str	r0, [r3, #0]
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L52:
	cmp	r1, #92
	bne	.L64
	ldr	r0, .L70+56
	ldr	r0, [r0, #0]
	mov	ip, #38
	rsb	r0, r0, #0
	str	ip, [r4, #28]
	mov	ip, #25
	str	r0, [r4, #16]
	str	ip, [r4, #24]
	b	.L51
.L66:
	ldr	r2, .L70+20
	mov	ip, #0
	ldr	lr, [r0, #12]
	str	ip, [r0, #16]
	str	ip, [r2, #0]
	mov	ip, #38
	sub	lr, lr, #1
	str	ip, [r0, #28]
	mov	ip, #37
	str	lr, [r0, #12]
	str	ip, [r0, #24]
	b	.L49
.L65:
	ldr	r3, .L70+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+64
	mov	r2, #2
	str	r2, [r3, #0]
	ldrh	r3, [r5, #0]
	b	.L48
.L67:
	mov	r1, #1168
	mov	r2, #11008
	ldr	r0, .L70+68
	add	r1, r1, #12
	add	r2, r2, #17
	ldr	ip, .L70+72
	mov	lr, pc
	bx	ip
	ldr	r3, .L70+4
	ldr	r0, [r3, #8]
	b	.L54
.L69:
	ldr	r2, [r3, #12]
	add	r2, r2, #2
	str	r2, [r3, #12]
	b	.L57
.L68:
	bl	goToLose
	b	.L55
.L71:
	.align	2
.L70:
	.word	waitForVBlank
	.word	hero
	.word	rAcc
	.word	oldButtons
	.word	buttons
	.word	jumpFrame
	.word	obstacles
	.word	collision
	.word	cheat
	.word	.LANCHOR0
	.word	obstacles+8
	.word	rand
	.word	2021161081
	.word	frame
	.word	jumpSpeed
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
	ldr	r3, .L75
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+4
	ldr	r0, .L75+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+12
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L72
	ldr	r3, .L75+16
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L74
.L72:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L74:
	ldmfd	sp!, {r4, lr}
	b	firstStart
.L76:
	.align	2
.L75:
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
	ldr	r3, .L83
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+4
	ldrh	r3, [r3, #0]
	tst	r3, #1
	beq	.L78
	ldr	r2, .L83+8
	ldrh	r2, [r2, #0]
	tst	r2, #1
	ldreq	r2, .L83+12
	ldreq	r1, [r2, #0]
	rsbeq	r1, r1, #0
	streq	r1, [r2, #0]
.L78:
	tst	r3, #8
	beq	.L79
	ldr	r2, .L83+8
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L81
.L79:
	tst	r3, #4
	beq	.L77
	ldr	r3, .L83+8
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L82
.L77:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L82:
	ldr	r3, .L83+16
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	b	firstStart
.L81:
	ldr	r3, .L83+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+24
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L77
.L84:
	.align	2
.L83:
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
	ldr	r3, .L86
	mov	r2, #2
	str	r2, [r3, #0]
	bx	lr
.L87:
	.align	2
.L86:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	gotoHowto
	.type	gotoHowto, %function
gotoHowto:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r0, .L89
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	add	r3, r3, #256
	ldr	r6, .L89+8
	mov	r2, #0	@ movhi
	strh	r2, [r3, #252]	@ movhi
	mvn	r2, #32768
	strh	r2, [r3, #254]	@ movhi
	mov	r0, r6
	ldr	r5, .L89+12
	mov	lr, pc
	bx	r5
	ldr	r4, .L89+16
	ldr	r2, .L89+20
	mov	r3, #255
	mov	r1, #2
	ldr	ip, .L89+24
	mov	r0, #150
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+28
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L89+32
	mov	r2, #5
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	howtoScreenPal
	.word	loadPalette
	.word	howtoScreenBitmap
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
	ldr	r4, .L99
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L92
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L96
.L93:
	ldr	r3, .L99+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L94
	ldr	r2, .L99+12
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L97
.L94:
	tst	r3, #4
	beq	.L91
	ldr	r3, .L99+12
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L98
.L91:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L98:
	ldmfd	sp!, {r4, lr}
	b	gotoHowto
.L92:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L93
	ldr	r3, .L99+16
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L93
.L96:
	ldr	r3, .L99+16
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L93
.L97:
	ldr	r3, .L99+20
	mov	lr, pc
	bx	r3
	mov	r1, #1294336
	add	r1, r1, #7680
	mov	r2, #11008
	ldr	r0, .L99+24
	add	r1, r1, #46
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L99+28
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r4, lr}
	b	startGame
.L100:
	.align	2
.L99:
	.word	frameCount
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	stmfd	sp!, {r4, lr}
	ldr	r4, .L107
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	cmp	r3, #0
	ble	.L102
	add	r3, r3, #1
	cmp	r3, #120
	str	r3, [r4, #0]
	bgt	.L105
.L103:
	ldr	r3, .L107+8
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L101
	ldr	r3, .L107+12
	ldrh	r3, [r3, #0]
	tst	r3, #2
	beq	.L106
.L101:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L106:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L102:
	sub	r3, r3, #1
	cmn	r3, #120
	str	r3, [r4, #0]
	bge	.L103
	ldr	r3, .L107+16
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #0]
	b	.L103
.L105:
	ldr	r3, .L107+16
	mov	lr, pc
	bx	r3
	mvn	r3, #0
	str	r3, [r4, #0]
	b	.L103
.L108:
	.align	2
.L107:
	.word	frameCount
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L122
	mov	lr, pc
	bx	r3
	ldr	r3, .L122+4
	mov	lr, pc
	bx	r3
	bl	firstStart
	mov	r5, #67108864
	ldr	r4, .L122+8
	ldr	r7, .L122+12
	ldr	r6, .L122+16
	add	r5, r5, #256
.L121:
	ldrh	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L111:
	strh	r3, [r6, #0]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4, #0]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L111
.L118:
	.word	.L112
	.word	.L113
	.word	.L114
	.word	.L115
	.word	.L116
	.word	.L117
.L117:
	bl	howto
	b	.L121
.L116:
	bl	lose
	b	.L121
.L115:
	bl	win
	b	.L121
.L114:
	bl	pause
	b	.L121
.L113:
	bl	game
	b	.L121
.L112:
	bl	start
	b	.L121
.L123:
	.align	2
.L122:
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

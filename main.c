/*****************************************
enemies not yet implemented. Cheat is pressing a during pause, makes you invincible
******************************************/

#include "myLib.h"
#include "spritesheet.h"
#include "bg.h"
#include "bg2.h"
#include "bg3.h"
#include "startScreen.h"
#include "howtoScreen.h"
#include "spritesheet.h"
#include "sound.h"
#include "song01.h"
#include "laser.h"
#include "loseScreen.h"
#include "text.h"
#include "font.h"
#include "title.h"
#include <stdlib.h>
#include <stdio.h>

void initialize();

void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void drawSprites();
void gotoHowto();
void howto();
void startGame();
void startJump();
void firstStart();

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int vOff = 0;

OBJ_ATTR shadowOAM[128];

ANISPRITE hero;
ANISPRITE bullets[20];
ANISPRITE obstacles[3];

int frame;
int aniState;
int jumpFrame;
int jumpSpeed;
int rAcc;
int cheat;
int aniCounter;
int frameCount;

int state;

enum {START, GAME, PAUSE, WIN, LOSE, HOWTO};

int main() {

	while(1) {

        setupSounds();
        setupInterrupts();
        firstStart();

        while(1) {

            // Update button variables
            oldButtons = buttons;
            buttons = BUTTONS;
                    
            // State Machine
            switch(state) {

                case START:
                    start();
                    break;
                case GAME:
                    game();
                    break;
                case PAUSE:
                    pause();
                    break;
                case WIN:
                    win();
                    break;
                case LOSE:
                    lose();
                    break;
                case HOWTO:
                	howto();
                	break;
            }
                   
        }        

        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;
	}

	return 0;
}

void drawSprites() {

	hideSprites();

	shadowOAM[0].attr0 = (ROWMASK & hero.screenRow) | ATTR0_SQUARE;
	shadowOAM[0].attr1 = (COLMASK & hero.screenCol) | ATTR1_LARGE;
    if (frame % 3 == 0) {
	    if (aniState < 9) {
            aniState++;  
        } else {
            aniState = 0;
        }
    }

    if (hero.rdel < 0) {
        shadowOAM[0].attr2 = ATTR2_TILEID(16, 16);
    } else if (hero.rdel > 0) {
        shadowOAM[0].attr2 = ATTR2_TILEID(16, 24);
    } else if (hero.worldRow < 92) {
        shadowOAM[0].attr2 = ATTR2_TILEID(16, 24);
    } else {
        if (aniState < 4) {
            shadowOAM[0].attr2 = ATTR2_TILEID(0, aniState * 8);
        } else if (aniState < 8) {
            shadowOAM[0].attr2 = ATTR2_TILEID(8, (aniState - 4) * 8);
        } else if (aniState < 10) {
            shadowOAM[0].attr2 = ATTR2_TILEID(16, (aniState - 8) * 8);
        }
    }

    for (int i = 0; i < 1; i++) {
        shadowOAM[i + 1].attr0 = (ROWMASK & obstacles[i].screenRow) | ATTR0_TALL;
        shadowOAM[i + 1].attr1 = (COLMASK & obstacles[i].screenCol) | ATTR1_MEDIUM;
        shadowOAM[i + 1].attr2 = ATTR2_TILEID(24, 4);
    }

    for (int k = 0; k < 20; k++) {
        
    }

	DMANow(3, shadowOAM, OAM, 128*4);
}

void initialize() {

	REG_DISPCTL = MODE0 | BG2_ENABLE | BG1_ENABLE | SPRITE_ENABLE | BG0_ENABLE;

	loadPalette(bg2Pal);

	REG_BG2CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

	DMANow(3, bgTiles, &CHARBLOCK[0], bgTilesLen / 2);	
    DMANow(3, bgMap, &SCREENBLOCK[31], bgMapLen / 2);

    DMANow(3, bg2Tiles, &CHARBLOCK[1], bg2TilesLen / 2);	
    DMANow(3, bg2Map, &SCREENBLOCK[29], bg2MapLen / 2);

    DMANow(3, bg3Tiles, &CHARBLOCK[2], bg3TilesLen / 2);    
    DMANow(3, bg3Map, &SCREENBLOCK[27], bg3MapLen / 2);

    // Load the spritesheet
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);
    
    hOff = 0;

    frame = 0;
    aniState = 0;
    jumpFrame = 0;
    jumpSpeed = 12;
    rAcc = 1;
    aniCounter = 1;

    hero.worldRow = 92;
    hero.worldCol = 10;

    hero.height = 38;
    hero.width = 37;

    cheat = -1;

    hero.screenRow = hero.worldRow - vOff;
    hero.screenCol = hero.worldCol - hOff;

    REG_BG2VOFF = vOff + 13;
    REG_BG1VOFF = 0;
    REG_BG0VOFF = -9;
    REG_BG0HOFF = 8;

    for (int i = 0; i < 1; i++) {
        obstacles[i].isActive = 1;
        obstacles[i].height = 32;
        obstacles[i].width = 16;
        obstacles[i].worldRow = 96;
        obstacles[i].worldCol = 300;
        obstacles[i].screenRow = obstacles[i].worldRow - vOff;
        obstacles[i].screenCol = obstacles[i].worldCol - hOff;
    }

    for (int k = 0; k < 20; k++) {
        
    }

    buttons = BUTTONS;
}

void startJump() {
	if ((jumpFrame < 20) && (jumpFrame >= 1)) {
		hero.worldRow -= 1;
		jumpFrame++;
	} else if ((jumpFrame > 20)){
		hero.worldRow += 1;
	}
}

// Runs every frame of the start state
void start() {

    waitForVBlank();

    if (frameCount > 0) {
        frameCount++;
        if (frameCount > 120) {
            flipPage();
            frameCount = -1;
        }
    } else {
        frameCount--;
        if (frameCount < -120) {
            flipPage();
            frameCount = 1;
        }
    }    

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundA(song01,SONG01LEN,SONG01FREQ, 1);
        startGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
    	gotoHowto();
    }
}

void firstStart() {
    playSoundA(title,TITLELEN,TITLEFREQ, 1);
    goToStart();
}

// Sets up the start state
void goToStart() {

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    unsigned short colors[NUMCOLORS] = {BLACK, WHITE};

    loadPalette(startScreenPal);

    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }

    waitForVBlank();

    drawFullscreenImage4(startScreenBitmap);

    drawString4(120, 62, "Press Start to Begin", WHITEID);

    drawString4(150, 2, "Press Select for Instructions", WHITEID);

    flipPage();

    drawFullscreenImage4(startScreenBitmap);

    drawString4(150, 2, "Press Select for Instructions", WHITEID);

    flipPage();

    state = START;

    frameCount = 1;
}

// Sets up the win state
void goToWin() {

    state = WIN;
}

// Runs every frame of the win state
void win() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Update game each frame
void game() {

	waitForVBlank();

	hero.rdel += rAcc;
	hero.worldCol += 1;

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    if (hero.worldRow == 92) {
    	hero.rdel = 0;
        jumpFrame = 0;
        hero.worldCol -= 1;
        hero.height = 38;
        hero.width = 37;
    }

    if (BUTTON_PRESSED(BUTTON_A) && hero.worldRow == 92) {
    	hero.rdel = -jumpSpeed;
        hero.height = 38;
        hero.width = 25;
    }

    if (1) {
        hero.worldRow += hero.rdel;
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        playSoundB(laser, LASERLEN, LASERFREQ, 0);
    }

    if (collision(hero.worldRow, hero.worldCol, hero.height, hero.width, obstacles[0].worldRow, obstacles[0].worldCol, 32, 16)) {
        if (cheat < 0) {
            goToLose();
        }
    }
    

    // autoscroll the background
    hOff += 3;

    drawSprites();
    
    if ((hero.screenCol > 10) && (hero.worldRow == 92)) {
    	hero.worldCol += 2;
    } else {
    	hero.worldCol += 3;
    }

    for (int i = 0; i < 3; i++) {
        obstacles[i].screenRow = obstacles[i].worldRow - vOff;
        obstacles[i].screenCol = obstacles[i].worldCol - hOff;
    }

    for (int j = 0; j < 1; j++) {
        if (obstacles[j].screenCol <= -16) {
            for (int j = 0; j < 1; j++) {
                obstacles[j].worldCol = (rand() % 272) + 240 + hOff;
                obstacles[j].screenCol = obstacles[j].worldCol - hOff;
            }
        }
    }

    for (int k = 0; k < 20; k++) {

    }

    hero.screenRow = hero.worldRow - vOff;
    hero.screenCol = hero.worldCol - hOff;

    // Update the offset registers with the actual offsets
    REG_BG1HOFF = hOff;
    REG_BG2HOFF = hOff / 2;

    frame++;
}

// Sets up the game state
void goToGame() {

    state = GAME;
}

void startGame() {

	state = GAME;

    initialize();
}

// Sets up the lose state
void goToLose() {

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    stopSound();
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
     
    // Lock the framerate to 60 fps
    waitForVBlank();

    drawFullscreenImage4(howtoScreenBitmap);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        firstStart();
    }
}

// Runs every frame of the pause state
void pause() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_A)) {
        cheat *= -1;
    }

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        firstStart();
    }
}

// Sets up the pause state
void goToPause() {

	state = PAUSE;
}

void gotoHowto() {

    unsigned short colors[NUMCOLORS] = {BLACK, WHITE};

    loadPalette(howtoScreenPal);

    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }

    drawFullscreenImage4(howtoScreenBitmap);
    drawString4(150, 2, "Press B to Return", WHITEID);

    flipPage();

    drawFullscreenImage4(howtoScreenBitmap);
    flipPage();
    frameCount = 1;

	state = HOWTO;
}

void howto() {

    waitForVBlank();

    if (frameCount > 0) {
        frameCount++;
        if (frameCount > 120) {
            flipPage();
            frameCount = -1;
        }
    } else {
        frameCount--;
        if (frameCount < -120) {
            flipPage();
            frameCount = 1;
        }
    }

	if (BUTTON_PRESSED(BUTTON_B)) {
		goToStart();
	}
}
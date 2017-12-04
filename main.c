/*****************************************
JADE RUNNER - By R. Coalter Putnal

GAMEPLAY: This is the completed game. Playing is very 
simple; your character moves to the right, and you shoot 
your gun to kill enemies and jump to dodge obstacles.
You can also collect green crystals on the ground, 
jades. Killing any enemy or collecting any jade will
raise your score by 1. Get to a score of 50 and you 
win. If you get hit by enemies or obstacles, you will
lose health. Once you have lost all of your health, 
you lose.

CHEAT: The cheat is activated by pressing "A" on the
pause screen during gameplay (pressing start during
gameplay will activate the pause screen). This creates
a barrier around the hero that nullifies all damage 
from enemies and obstacles.

BUGS: I have worked very hard to make sure everything
is as bug-free as possible. There may, however, be some
things that I missed. On occasion, a screen in Mode 4
may flip to reveal garbage data. I have no idea why; I've
done all I can to try to make this not happen. During 
testing for this "final release," I have yet to see it
happen again, but it may occur if you use the spacebar 
to speed the game up. Also on occasion, an enemy sprite
may glitch out towards the left side of the screen;
I have set up the enemy sprites using ROWMASK and
COLMASK, so I'm also not too sure why it happens there.
Once again, I haven't seen it in this "final release," 
but it might still happen. Those are only visual issues, 
however. The only gameplay bug (that I've seen) is that, 
occasionally, a bullet might pass through an enemy 
without killing it. This is due to how the collision() 
function is written; if the velocity of one of the objects 
is larger than the size of another object (or if both
objects are moving in opposite directions), it's possible
that the collision never occurs during a frame. I have an
idea to fix this, so I will try before the final final
turn-in.

EXTRA CREDIT: There are multiple things that I feel go
above and beyond the project requirements. For example,
I make use of both Mode 4 and Mode 0, instead of just 
Mode 0, I have 3 non-looping sound effects instead of
just one, and I have 4 looping songs instead of just 1.
On top of that, (along with art taken mainly from
Metroid games on GBA) I have multiple home-made assets,
including the title screen logo, the shield effect, and
the bullet effect. On a more technical side, I also make
use of Dynamic Memory for the health system*. I also 
produced a mosaic effect for when the main character is
hurt**. In addition to all of this, my game has General
Coolness™***.

* in initialize() function and game() function
** in drawSprites() function and game() function
*** ;)
******************************************/

#include "myLib.h"
#include "spritesheet.h"
#include "bg.h"
#include "bg2.h"
#include "bg3.h"
#include "bg3_2.h"
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
#include "hurt.h"
#include "coin.h"
#include "winScreen.h"
#include "victory.h"
#include "loseSong.h"
#include <stdlib.h>
#include <stdio.h>
#include<malloc.h>

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
void firstStart();
void fireBullet();
void spawnEnemy();
void spawnJade();

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int vOff = 0;

OBJ_ATTR shadowOAM[128];

ANISPRITE hero;
ANISPRITE bullets[10];
ANISPRITE obstacles[3];
ANISPRITE enemies[10];
ANISPRITE jades[5];

int *health;

int frame;
int aniState;
int jumpFrame;
int jumpSpeed;
int rAcc;
int cheat;
int aniCounter;
int frameCount;
int enemyLength;
int bulletLength;
int score;
int obsCanHurt;
int enemyCanHurt;
int healthBucket;
int hurtCounter;

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

	shadowOAM[0].attr0 = (ROWMASK & hero.screenRow) | ATTR0_SQUARE | ATTR0_MOSAIC;
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

    for (int k = 0; k < bulletLength; k++) {
        if (bullets[k].isActive) {
            shadowOAM[k + 1].attr0 = (ROWMASK & bullets[k].screenRow) | ATTR0_SQUARE;
            shadowOAM[k + 1].attr1 = (COLMASK & bullets[k].screenCol) | ATTR1_SMALL;
            shadowOAM[k + 1].attr2 = ATTR2_TILEID(24, 8) | ATTR2_PRIORITY(0);
        }
    }

    for (int i = 0; i < 1; i++) {
        shadowOAM[i + 121].attr0 = (ROWMASK & obstacles[i].screenRow) | ATTR0_TALL;
        shadowOAM[i + 121].attr1 = (COLMASK & obstacles[i].screenCol) | ATTR1_MEDIUM;
        shadowOAM[i + 121].attr2 = ATTR2_TILEID(24, 4);
    }

    if (cheat > 0) {
        shadowOAM[50].attr0 = (ROWMASK & (hero.screenRow - 6)) | ATTR0_SQUARE;
        shadowOAM[50].attr1 = (COLMASK & (hero.screenCol - 8)) | ATTR1_LARGE;
        shadowOAM[50].attr2 = ATTR2_TILEID(24, 10);
    }

    for (int e = 0; e < enemyLength; e++) {
        if (enemies[e].isActive) {
            if (enemies[e].aniState == 0) {
                shadowOAM[e + 51].attr0 = (ROWMASK & enemies[e].screenRow) | ATTR0_SQUARE;
                shadowOAM[e + 51].attr1 = (COLMASK & enemies[e].screenCol) | ATTR1_MEDIUM;
                shadowOAM[e + 51].attr2 = ATTR2_TILEID(28, 0);
            } else if (enemies[e].aniState == 1) {
                shadowOAM[e + 51].attr0 = (ROWMASK & enemies[e].screenRow) | ATTR0_WIDE;
                shadowOAM[e + 51].attr1 = (COLMASK & enemies[e].screenCol) | ATTR1_MEDIUM;
                shadowOAM[e + 51].attr2 = ATTR2_TILEID(28, 4);
            } else if (enemies[e].aniState == 2) {
                shadowOAM[e + 51].attr0 = (ROWMASK & enemies[e].screenRow) | ATTR0_SQUARE;
                shadowOAM[e + 51].attr1 = (COLMASK & enemies[e].screenCol) | ATTR1_SMALL;
                shadowOAM[e + 51].attr2 = ATTR2_TILEID(30, 4);
            }
        }
    }

    for (int i = 0; i < healthBucket; i++) {
        if (health[i]) {
            shadowOAM[i + 71].attr0 = 146 | ATTR0_SQUARE;
            shadowOAM[i + 71].attr1 = (60 + (i * (8))) | ATTR1_TINY;
            shadowOAM[i + 71].attr2 = ATTR2_TILEID(25, 18);
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            shadowOAM[i + 91].attr0 = (ROWMASK & jades[i].screenRow) | ATTR0_TALL;
            shadowOAM[i + 91].attr1 = (COLMASK & jades[i].screenCol) | ATTR1_TINY;
            shadowOAM[i + 91].attr2 = ATTR2_TILEID(25, 6);
        }
    }

    shadowOAM[100].attr0 = 146 | ATTR0_SQUARE;;
    shadowOAM[100].attr1 = (200 + 0) | ATTR1_TINY;
    shadowOAM[100].attr2 = ATTR2_TILEID(24, 18 + ((score - (score % 10)) / 10));

    shadowOAM[101].attr0 = 146 | ATTR0_SQUARE;;
    shadowOAM[101].attr1 = (208 + 0) | ATTR1_TINY;
    shadowOAM[101].attr2 = ATTR2_TILEID(24, 18 + (score % 10));;

	DMANow(3, shadowOAM, OAM, 128*4);
}

void initialize() {

	REG_DISPCTL = MODE0 | BG2_ENABLE | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

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

    bulletLength = 10;
    enemyLength = 10;

    hero.worldRow = 92;
    hero.worldCol = 10;

    hero.height = 38;
    hero.width = 37;

    cheat = -1;

    obsCanHurt = 1;
    enemyCanHurt = 1;

    healthBucket = 10;

    hero.screenRow = hero.worldRow - vOff;
    hero.screenCol = hero.worldCol - hOff;

    REG_BG2VOFF = vOff + 13;
    REG_BG1VOFF = 0;
    REG_BG0VOFF = 27;
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

    for (int k = 0; k < bulletLength; k++) {
        bullets[k].isActive = 0;
    }

    for (int e = 0; e < enemyLength; e++) {
        enemies[e].isActive = 0;
        enemies[e].aniState = rand() % 3;
        if (enemies[e].aniState == 0) {
            enemies[e].height = 28;
            enemies[e].width = 30;
            enemies[e].worldRow = (rand() % 69) + 16;
        } else if (enemies[e].aniState == 1) {
            enemies[e].height = 12;
            enemies[e].width = 21;
            enemies[e].worldRow = (rand() % 84) + 16;
        } else if (enemies[e].aniState == 2) {
            enemies[e].height = 16;
            enemies[e].width = 16;
            enemies[e].worldRow = (rand() % 80) + 16;
        }
    }

    health = realloc(health, healthBucket * sizeof(int));

    for (int i = 0; i < 10; i++) {
        health[i] = 1;
    }

    for (int i = 0; i < 5; i++) {
        jades[i].isActive = 0;
        jades[i].worldRow = 116;
        jades[i].worldCol = 270;
        jades[i].height = 12;
        jades[i].width = 8;
        jades[i].aniState = rand() % 2;
    }

    REG_MOSAIC = SetMosaic(0,0,0,0);
    hurtCounter = 30;

    spawnEnemy();
    spawnJade();

    buttons = BUTTONS;
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
        drawFullscreenImage4(howtoScreenBitmap);
        drawString4(150, 2, "Press B to Return", WHITEID);
        flipPage();
        drawFullscreenImage4(howtoScreenBitmap);
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
    waitForVBlank();

    drawFullscreenImage4(startScreenBitmap);

    drawString4(150, 2, "Press Select for Instructions", WHITEID);

    flipPage();

    state = START;

    frameCount = 1;
    score = 0;
}

// Sets up the win state
void goToWin() {

    drawFullscreenImage4(winScreenBitmap);
    flipPage();
    drawFullscreenImage4(winScreenBitmap);    

    stopSound();
    playSoundA(victory, VICTORYLEN, VICTORYFREQ, 1);

    state = WIN;
}

// Runs every frame of the win state
void win() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        firstStart();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        firstStart();
    }
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

    hero.worldRow += hero.rdel;

    if (BUTTON_PRESSED(BUTTON_B)) {
        playSoundB(laser, LASERLEN, LASERFREQ, 0);
        fireBullet();
    }
    
    if (hurtCounter == 0) {
        hurtCounter = 30;
        REG_MOSAIC = SetMosaic(0, 0, 0, 0);
    } else if (hurtCounter < 30) {
            REG_MOSAIC = SetMosaic(0, 0, hurtCounter, hurtCounter);
            hurtCounter--;
    }

    if (collision(hero.worldRow, hero.worldCol, hero.height, hero.width, obstacles[0].worldRow, obstacles[0].worldCol, 32, 16)) {
        if (cheat < 0) {
            if (obsCanHurt) {
                playSoundB(hurt, HURTLEN, HURTFREQ, 0);
                obsCanHurt = 0;
                REG_MOSAIC = SetMosaic(0, 0, hurtCounter, hurtCounter);
                hurtCounter--;
                healthBucket--;
                health = realloc(health, healthBucket * sizeof(int));
                for (int i = 0; i < healthBucket; i++) {
                    health[i] = 1;
                }
            }
        }
    }

    for (int i = 0; i < enemyLength; i++) {
        if (enemies[i].isActive) {
            if (collision(enemies[i].worldRow, enemies[i].worldCol, enemies[i].height, enemies[i].width, hero.worldRow, hero.worldCol, hero.height, hero.width)) {
                if (cheat < 0) {
                    if (enemyCanHurt) {
                        enemyCanHurt = 0;
                        REG_MOSAIC = SetMosaic(0, 0, hurtCounter, hurtCounter);
                        hurtCounter--;
                        healthBucket--;
                        health = realloc(health, healthBucket * sizeof(int));
                        for (int i = 0; i < healthBucket; i++) {
                            health[i] = 1;
                        }
                        playSoundB(hurt, HURTLEN, HURTFREQ, 0);
                    }
                }
            }
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            if (collision(jades[i].worldRow, jades[i].worldCol, jades[i].height, jades[i].width, hero.worldRow, hero.worldCol, hero.height, hero.width)) {
                playSoundB(coin, COINLEN, COINFREQ, 0);
                jades[i].isActive = 0;
                score++;
                spawnJade();
                if (healthBucket < 10) { 
                    healthBucket++;
                    health = realloc(health, healthBucket * sizeof(int));
                    for (int i = 0; i < healthBucket; i++) {
                                health[i] = 1;
                    }
                }
            }
        }
    }

    if (healthBucket == 0) {
        REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
        stopSound();
        loadPalette(loseScreenPal);
        drawFullscreenImage4(loseScreenBitmap);
        flipPage();
        drawFullscreenImage4(loseScreenBitmap);
        playSoundA(loseSong, LOSESONGLEN, LOSESONGFREQ, 1);
        goToLose();
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
                obsCanHurt = 1;
            }
        }
    }

    for (int k = 0; k < bulletLength; k++) {
        if (bullets[k].isActive) {
            if (bullets[k].worldCol > hOff + 240) {
                bullets[k].isActive = 0;
            } else if (bullets[k].worldRow < -8) {
                bullets[k].isActive = 0;
            } else {
                bullets[k].worldCol += bullets[k].cdel;
                bullets[k].worldRow += bullets[k].rdel;
                bullets[k].screenRow = bullets[k].worldRow - vOff;
                bullets[k].screenCol = bullets[k].worldCol - hOff;
            }
        }
    }

    for (int e = 0; e < enemyLength; e++) {
        if (enemies[e].isActive) {
            if (enemies[e].screenCol < -30) {
                enemies[e].isActive = 0;
                spawnEnemy();
            } else {
                enemies[e].worldCol += enemies[e].cdel;
                enemies[e].screenRow = enemies[e].worldRow - vOff;
                enemies[e].screenCol = enemies[e].worldCol - hOff;
            }
        }
    }

    for (int i = 0; i < enemyLength; i++) {
        for (int j = 0; j < bulletLength; j++) {
            if (bullets[j].isActive) {
                if (enemies[i].isActive) {
                    if (collision(bullets[j].worldRow, bullets[j].worldCol, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 8, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 1, bullets[j].worldCol - 1, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 8, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 2, bullets[j].worldCol - 2, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 7, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 3, bullets[j].worldCol - 3, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 7, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 4, bullets[j].worldCol - 4, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 6, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 5, bullets[j].worldCol - 5, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 6, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 6, bullets[j].worldCol - 6, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 5, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 7, bullets[j].worldCol - 7, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 5, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 8, bullets[j].worldCol - 8, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 4, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    } else if (collision(bullets[j].worldRow + 9, bullets[j].worldCol - 9, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol - 4, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                    }
                }
            }
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            if (jades[i].screenCol < -8) {
                jades[i].isActive = 0;
                spawnJade();
            } else {
                jades[i].screenRow = jades[i].worldRow - vOff;
                jades[i].screenCol = jades[i].worldCol - hOff;
            }
        }
    }

    if (score >= 50) {
        REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
        loadPalette(winScreenPal);
        drawFullscreenImage4(winScreenBitmap);
        flipPage();
        drawFullscreenImage4(winScreenBitmap);
        goToWin();
    }

    hero.screenRow = hero.worldRow - vOff;
    hero.screenCol = hero.worldCol - hOff;

    // Update the offset registers with the actual offsets
    REG_BG1HOFF = hOff;
    REG_BG2HOFF = hOff / 2;

    frame++;
}

void fireBullet() {
    for (int k = 0; k < bulletLength; k++) {
        if (!(bullets[k].isActive)) {
            if (BUTTON_HELD(BUTTON_UP)) {
                bullets[k].rdel = -9;
            } else {
                bullets[k].rdel = 0;
            }
            bullets[k].isActive = 1;
            bullets[k].cdel = 12;
            if (hero.worldRow == 92) {
                bullets[k].worldRow = hero.worldRow + 5;
                bullets[k].worldCol = hero.worldCol + 37;
            } else {
                bullets[k].worldRow = hero.worldRow + 7;
                bullets[k].worldCol = hero.worldCol + 35;
            }
            bullets[k].screenRow = bullets[k].worldRow - vOff;
            bullets[k].screenCol = bullets[k].worldCol - hOff;
            break;
        }
    }
}

void spawnEnemy() {
    for (int e = 0; e < enemyLength; e++) {
        if (!(enemies[e].isActive)) {
            //if (!(enemies[e].aniState == 3)) {
                enemies[e].isActive = 1; 
                enemies[e].cdel = -2;
                enemies[e].aniState = rand() % 3;
                if (enemies[e].aniState == 0) {
                    enemies[e].height = 28;
                    enemies[e].width = 30;
                    enemies[e].worldRow = (rand() % 69) + 16;
                } else if (enemies[e].aniState == 1) {
                    enemies[e].height = 12;
                    enemies[e].width = 21;
                    enemies[e].worldRow = (rand() % 84) + 16;
                } else if (enemies[e].aniState == 2) {
                    enemies[e].height = 16;
                    enemies[e].width = 16;
                    enemies[e].worldRow = (rand() % 80) + 16;
                }
                enemies[e].worldRow = (rand() % 69) + 16;
                enemies[e].worldCol = (rand() % 272) + 240 + hOff;
                enemies[e].screenRow = enemies[e].worldRow - vOff;
                enemies[e].screenCol = enemies[e].worldCol - hOff;
                enemyCanHurt = 1;
                break;
            //}
        }
    }
}

void spawnJade() {
    for (int i = 0; i < 5; i++) {
        if (!(jades[i].isActive)) {
            jades[i].isActive = 1;
            jades[i].worldCol = (rand() % 272) + 210 + hOff;
            jades[i].screenRow = jades[i].worldRow - vOff;
            jades[i].screenCol = jades[i].worldCol - hOff;
            break;
        }
    }
}

// Sets up the game state
void goToGame() {

    REG_BG2CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    DMANow(3, bg3Tiles, &CHARBLOCK[2], bg3TilesLen / 2);    
    DMANow(3, bg3Map, &SCREENBLOCK[27], bg3MapLen / 2);

    state = GAME;
}

void startGame() {

	state = GAME;

    initialize();
}

// Sets up the lose state
void goToLose() {

    drawFullscreenImage4(loseScreenBitmap);
    flipPage();
    drawFullscreenImage4(loseScreenBitmap);
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
     
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        firstStart();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        firstStart();
    }
}

// Runs every frame of the pause state
void pause() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    hideSprites();

    if (BUTTON_PRESSED(BUTTON_A)) {
        cheat *= -1;
        playSoundB(coin, COINLEN, COINFREQ, 0);
    }

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        drawSprites();
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        firstStart();
    }
}

// Sets up the pause state
void goToPause() {

    REG_BG2CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    DMANow(3, bg3_2Tiles, &CHARBLOCK[2], bg3_2TilesLen / 2);    
    DMANow(3, bg3_2Map, &SCREENBLOCK[27], bg3_2MapLen / 2);

	state = PAUSE;
}

void gotoHowto() {

    unsigned short colors[NUMCOLORS] = {BLACK, WHITE};

    loadPalette(howtoScreenPal);

    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }

    waitForVBlank();

    drawFullscreenImage4(howtoScreenBitmap);
    drawString4(150, 2, "Press B to Return", WHITEID);

    flipPage();
    waitForVBlank();

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
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
		goToStart();
	}
}
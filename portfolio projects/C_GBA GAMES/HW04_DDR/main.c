#include "gba.h"
#include "mode4.h"
#include "print.h"
#include "party.h"
#include <stdlib.h>
#include <stdio.h>
#include "sprites.h"
#include "spritesheet.h"
#include "game.h"
#include "analogSound.h"

// Add makefile

///////////////////////////////////////////////////////////////
// function prototypes
//////////////////////////////////////////////////////////////

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
void srand();

/////////////////////////////////////////////////////////////////
// variable prototypes
/////////////////////////////////////////////////////////////////

unsigned short oldButtons;
unsigned short buttons;
enum {
    START, GAME, PAUSE, WIN, LOSE
} STATE;
int state;
int rSeed;
char playerLife[50];
char enemyLife[50];
char scoreCount[50];


/////////////////////////////////////////////////////////////////
// methods
////////////////////////////////////////////////////////////////

int main() {

    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER | (1<<12);
    initialize();
    while (1) {

        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(state) {
            case START:
                start();
                break;
            case GAME:
            
                game();
                sprintf(playerLife, "Player Health: %d", player.lives);
            sprintf(enemyLife, "Enemy Health: %d", enemy.lives);
            sprintf(scoreCount, "Score: %d", score);

            drawString4(player.player.x, player.player.y + 20, playerLife, 7);
            drawString4(enemy.enemy.x - 15, enemy.enemy.y + 20, enemyLife, 7);
            drawString4(player.player.x + 50, player.player.y, scoreCount, 7);
            waitForVBlank();
            
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
        }

    }

}

void initialize() {
    REG_SOUNDCNT_X = SND_ENABLED;
    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) | DMG_VOL_RIGHT(5) | DMG_SND1_LEFT | DMG_SND1_RIGHT | DMG_SND2_LEFT | DMG_SND2_RIGHT | DMG_SND3_LEFT | DMG_SND3_RIGHT | DMG_SND4_LEFT | DMG_SND4_RIGHT;
    REG_SOUNDCNT_H = DMG_MASTER_VOL(2);
    mgba_open();
    buttons = REG_BUTTONS;
    oldButtons = 0;
    goToStart();
}

void goToStart() {
    hideSprites();
    DMANow(3, partyPal, BG_PALETTE, 256);
    DMANow(3, partyBitmap, videoBuffer, 240 * 160/2);
    drawFullscreenImage4(partyBitmap);
    waitForVBlank();
    flipPage();
    hideSprites();
    state = START;
    rSeed = 0;
    
}

void start() {
    hideSprites();
    rSeed++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A)) {
        srand(rSeed);
        goToGame();
        initGame();
    }
}

void goToGame() {
    DMANow(3, spritesheetTiles, &CHARBLOCK[5], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITE_PALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);
    
    
    waitForVBlank();
    flipPage(); 
    srand(rSeed);
    
    state = GAME;
    
}

void game() {
    //update stuff
    updateGame();
    //update score string, streak string, POW! string


    //TODO
    drawGame();
    
  
    //state switch PAUSE
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    //state switch WIN or LOSE
    if (player.lives == 0) {
        goToLose();
    }
    if (enemy.lives == 0) {
        goToWin();
    }
    
}

void goToPause() {
    hideSprites();
    fillScreen4(2);
    drawString4(SCREENHEIGHT / 2, SCREENWIDTH / 2, "paused...", WHITE);
    waitForVBlank();
    flipPage();
    state = PAUSE;
}

void pause() {
    fillScreen4(BLACK);
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
}
}

void goToWin() {
    hideSprites();
    fillScreen4(4);
    waitForVBlank();
    flipPage(); 
    state = WIN;
}

void win() {
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    hideSprites();
    fillScreen4(3);
    waitForVBlank();
    flipPage();
    state = LOSE;
}

void lose() {
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "spritesheet.h"
#include "startTILES.h"
#include "startTILEMAP.h"
#include "analogSound.h"
#include "game.h"
#include "levelsTILES.h"
#include "levelOneTILEMAP.h"
#include "winTILEMAP.h"
#include "pauseTILEMAP.h"
#include "loseTILEMAP.h"


void goToStart();
void start();

// void goToLevelOne();
// void levelOne();

// void goToLevelTwo();
// void levelTwo();

// void goToWin();
// void win();

// void goToLose();
// void lose();

enum {
    START, LEVEL1, LEVEL2, WIN, LOSE, PAUSE
} ;
int state;
int priorState;

u16 oldButtons;
u16 buttons;

int main() {
    initialize();
    while (1) {

        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state) {
            case START:
                start();
                break;
            case LEVEL1:
                levelOne();
                break;
            case LEVEL2:
                //levelTwo();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case PAUSE:
                pause();
                break;
        }
    }
    return 0;
}

void initialize() {
    mgba_open();
    mgba_printf("HELLO");
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    DMANow(3, spritesheetPal, SPRITE_PAL, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    hideSprites();
    goToStart();
}

void goToStart() {
    DMANow(3, startTILESTiles, &CHARBLOCK[0], startTILESTilesLen / 2);
    DMANow(3, startTILESPal, PALETTE, startTILESPalLen / 2);
    DMANow(3, startTILEMAPMap, &SCREENBLOCK[8], startTILEMAPMapLen / 2);

    hideSprites();

    state = START; 
}

void start() {
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToLevelOne();
    }
    waitForVBlank();
}

void goToLevelOne() {
    mgba_printf("HI");
    DMANow(3, levelsTILESTiles, &CHARBLOCK[0], levelsTILESTilesLen / 2);
    DMANow(3, levelsTILESPal, PALETTE, levelsTILESPalLen / 2);
    DMANow(3, levelOneTILEMAPMap, &SCREENBLOCK[8], levelOneTILEMAPMapLen / 2);
    hideSprites();
    initLevelOne();
    
    priorState = state;
    state = LEVEL1;
}

void levelOne() {
    updateGame();
    mgba_printf("%d, %d", player.x, player.y);
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (player.foodCollected == 6) {
        goToWin();
    } 
    if (player.lives == 0) {
        goToLose();
    }
}

void goToLevelTwo() {
    // DMANow();
    // DMANow();
    // DMANow();
    hideSprites();
    initLevelTwo();
    priorState = state;
    state = LEVEL2;
}

void levelTwo() {
    updateGame();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (player.foodCollected == 6) {
        goToWin();
    }
    if (player.lives == 0) {
        goToLose();
    }
}

void goToWin() {
    hideSprites();
    DMANow(3, winTILEMAPMap, &SCREENBLOCK[8], winTILEMAPMapLen / 2);
    
    priorState = state;
    state = WIN;
}

void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    hideSprites();
    DMANow(3, loseTILEMAPMap, &SCREENBLOCK[8], loseTILEMAPMapLen / 2);
    priorState = state;
    state = LOSE;
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToPause() {
    hideSprites();
    DMANow(3, pauseTILEMAPMap, &SCREENBLOCK[8], pauseTILEMAPMapLen / 2);
    priorState = state;
    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToLevelOne();
    }
}






#include "gba.h"
#include "print.h"
#include "gameLogic.h"
#include <stdlib.h>
#include <stdio.h>
#include "analogSound.h"

unsigned short buttons;
unsigned short oldButtons;
char buffer[50];
char lifeBuffer[50];

int rSeed;


enum {
    START, GAME, PAUSE, WIN, LOSE
};

int state;

void initialize();

void start();
void goToStart();

void game();
void goToGame();

void pause();
void goToPause();

void win();
void goToWin();

void lose();
void goToLose();

int main() {
    
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
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    buttons = REG_BUTTONS;
    oldButtons = 0;
    goToStart();
    
}

void goToStart() {
    fillScreen(GREEN);
    state = START;
    rSeed = 0;
    drawString(70, 60, "CASTLE DEFENSE!!!!!", MAGENTA);
    drawString(60, 100, "PRESS START TO PLAY :D", RED);
}

void start() {
    rSeed += 1;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(rSeed);
        goToGame();
        initGame();
    }
}

void goToGame() {
    drawBG();
    drawCastle();
    drawCrown();
    drawChest();
    state = GAME;
}

void game() {
    updateGame();
    sprintf(buffer, "Score: %d", score);
    sprintf(lifeBuffer, "Health: %d", wallHealth);
    waitForVBlank();
    drawRectangle(160, 110, 60, 30, GRASS);
    drawString(160, 110, buffer, TREE);
    drawRectangle(160, 140, 60, 30, GRASS);
    if (wallHealth > 0) {
        drawString(160, 140, lifeBuffer, TREE);
    }
    
    
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    if (score >= 25) {
        goToWin();
    }

    if (score == -1) {
        goToLose();
    }

}

void goToPause() {
    fillScreen(YELLOW);
    waitForVBlank();
    state = PAUSE;
    drawString(70, 60, "PAUSED...", BLACK);
    drawString(60, 100, "PRESS START TO RESUME", BLACK);

}

void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

void goToWin() {
    fillScreen(MAGENTA);
    waitForVBlank();
    state = WIN;
    drawString(50, 60, "YOU PROTECTED THE CROWN!", YELLOW);
    drawString(80, 100, "YOU WIN!!!!!", YELLOW);
    drawString(20, 140, "PRESS START TO RETURN TO MAIN MENU", YELLOW);

}   

void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    fillScreen(RED);
    waitForVBlank();
    state = LOSE;
    drawString(50, 60, "YOU LET THEM TAKE THE CROWN...", BLACK);
    drawString(80, 100, "YOU LOSE.. :(", BLACK);
    drawString(20, 140, "PRESS START TO RETURN TO MAIN MENU", BLACK);

}

void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

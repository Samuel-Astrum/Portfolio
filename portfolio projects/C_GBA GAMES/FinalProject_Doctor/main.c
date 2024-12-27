/*
    I AM OKAY WITH THIS GAME BEING ON THE GAME WALL IF YOU WOULD LIKE IT TO BE, I AM FINE WITH THE GAME AND MY NAME BEING POSTED
*/

#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "stateMachine.h"
#include "digitalSound.h"
#include "startTheme.h"
#include <stdlib.h>
#include <stdio.h>

unsigned short oldButtons;
unsigned short buttons;


void initialize();

int main() {
    initialize();
    while(1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        switch (state) {
            //START, INSTRUCTIONS, LORE, MAP, DUNGEON1, BOSS1, DUNGEON2, BOSS2, WIN, LOSE
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case LORE:
                lore();
                break;
            case MAP:
                map();
                break;
            case DUNGEON1:
                dungeonOne();
                break;
            case BOSS1:
                bossOne();
                break;
            case DUNGEON2:
                dungeonTwo();
                break;
            case BOSS2:
                bossTwo();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case BOSSONETEXT:
                bossOneText();
                break;
            case BOSSTWOTEXT:
                bossTwoText();
                break;
            case INITIALDIALOGUE:
                initialDialogue();
                break;
            case PAUSE:
                pause();
                break;
            case TREE:
                tree();
                break;
            case HOUSE:
                house();
                break;
        }
    }
    return 0;
}

void initialize() {
    mgba_open();
    mgba_printf("GAME INITIALIZED");
    oldButtons = buttons;
    buttons = REG_BUTTONS;
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER | SPRITE_ENABLE;
    setupSounds();
    playSoundA(startTheme_data, startTheme_length, 1);
    goToStart();
}

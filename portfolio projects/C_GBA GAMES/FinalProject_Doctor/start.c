#include "gba.h"
#include "sprites.h"
#include "start.h"
#include "print.h"
#include "digitalSound.h"
#include "menuClick.h"

CURSOR cursor;

void initStart() {
    cursor.height = 16;
    cursor.width = 16;
    cursor.x = 34;
    cursor.y = 75;
    cursor.oamIndex = 6;
    cursor.selection = 1;
}

void updateStart() {
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (cursor.selection == 1) {
            cursor.selection = 2;
            cursor.y = 96;
            playSoundB(menuClick_data, menuClick_length, 0);
            mgba_printf("SELECTION NOW ON CONTROLS");
        }
    }

    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (cursor.selection == 2) {
            cursor.selection = 1;
            cursor.y = 75;
            playSoundB(menuClick_data, menuClick_length, 0);
            mgba_printf("SELECTION NOW ON START");
        }
    }
}

void drawStart() {
    shadowOAM[cursor.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(cursor.y);
    shadowOAM[cursor.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(cursor.x);
    shadowOAM[cursor.oamIndex].attr2 = (512 + (ATTR2_TILEID(24, 0)));

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
}
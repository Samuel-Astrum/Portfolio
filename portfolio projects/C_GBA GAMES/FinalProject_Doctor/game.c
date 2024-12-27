#include "sprites.h"
#include "game.h"
#include "gba.h"
#include "mode0.h"
#include "player.h"
#include "print.h"
#include "digitalSound.h"
#include "footsteps.h"

#define MAPWIDTH 512
#define MAPHEIGHT 160

int screenX;
int screenY;

int hOff;
int vOff;

typedef enum {
    DOWN, UP, RIGHT, LEFT
} DIRECTION;

void initMap();
void updateMap();
void drawMap();

void initDungeonOne();
void updateDungeonOne();
void drawDungeonOne();

void initDungeonTwo();
void updateDungeonTwo();
void drawDungeonTwo();

#define STEPCOUNT 60
#define FRAMECOUNT 30
int mapCount;
int frameCount;
int dungeonFrame;

int hasSword;
int dungeonOneCountdown;

int hasShield;
int dungeonTwoCountdown;

int cheatOne;
int cheatTwo;

//MAP
void initMap() {
    overworldPlayer.numFrames = 2;
    overworldPlayer.height = 24;
    overworldPlayer.width = 24;
    overworldPlayer.x = 32;
    overworldPlayer.y = 64;
    overworldPlayer.xVel = 1; 
    overworldPlayer.yVel = 1;
    overworldPlayer.oamIndex = 0;

    

    mapCount = STEPCOUNT;
    frameCount = 0;
}

void updateMap() {

    //position player relative to game world
    mapCount--;
    if (mapCount < 0) {
        mapCount = 0;
    }

    if (BUTTON_HELD(BUTTON_UP) && overworldPlayer.y > 1) {
        overworldPlayer.y -= overworldPlayer.yVel;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = STEPCOUNT;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN) && overworldPlayer.y + overworldPlayer.height + 1 < SCREENHEIGHT) {
        overworldPlayer.y += overworldPlayer.yVel;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = STEPCOUNT;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT) && overworldPlayer.x > 1) {
        overworldPlayer.x -= overworldPlayer.xVel;
        overworldPlayer.direction = LEFT;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = STEPCOUNT;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && overworldPlayer.x + overworldPlayer.width + 1 < MAPWIDTH) {
        overworldPlayer.x += overworldPlayer.xVel;
        overworldPlayer.direction = RIGHT;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = STEPCOUNT;
        }
    }

    //target player with the camera

    screenX = overworldPlayer.x - hOff;
    screenY = overworldPlayer.y - vOff;


    hOff = overworldPlayer.x - ((SCREENWIDTH - overworldPlayer.width) / 2);
    vOff = overworldPlayer.y - ((SCREENHEIGHT - overworldPlayer.height) / 2);

    //restrict player/camera to stay inside game world

    int minX = 0;
    int minY = 0;
    int maxX = MAPWIDTH - SCREENWIDTH;
    int maxY = MAPHEIGHT - SCREENHEIGHT;

    if (hOff < minX) hOff = minX;
    if (hOff > maxX) hOff = maxX;
    if (vOff < minY) vOff = minY;
    if (vOff > maxY) vOff = maxY;


    if (overworldPlayer.currentFrame == 0) {
        if (frameCount >= FRAMECOUNT) {
            overworldPlayer.currentFrame = 1;
            frameCount = 0;
        }
    } else if (overworldPlayer.currentFrame == 1) {
        if (frameCount >= 20) {
            overworldPlayer.currentFrame = 0;
            frameCount = 0;
        }
    }
    frameCount++;


}

void drawMap() {

    mgba_printf("%d", frameCount);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    
    shadowOAM[0].attr0 = ATTR0_SQUARE | ATTR0_Y(screenY);
    shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(screenX);
    if (overworldPlayer.direction == LEFT) {
        shadowOAM[0].attr1 |= ATTR1_HFLIP;
    }
    shadowOAM[0].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID((overworldPlayer.currentFrame * 4), 8);

    if (overworldPlayer.x <= 120) {
        shadowOAM[100].attr0 = ATTR0_SQUARE | ATTR0_Y(80);
        shadowOAM[100].attr1 = ATTR1_MEDIUM | ATTR1_X(0);
        shadowOAM[100].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(13, 21);
    } else {
        shadowOAM[100].attr0 |= ATTR0_HIDE;
    }
    
    DMANow(3, shadowOAM, OAM, 512);
}

//DUNGEON ONE

void initDungeonOne() {
    player.x = 16;
    player.y = 88;
    player.xVel = 1;
    hasSword = 0;
    player.width = 24;
    player.height = 56;
    player.numFrames = 5;
}

void updateDungeonOne() {
    
    if (BUTTON_HELD(BUTTON_LEFT) && player.x > 1) {
        player.x -= player.xVel;
        player.direction = LEFT;
        player.isAnimating = 1;
    } else
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width + 1 < SCREENWIDTH) {
        player.x += player.xVel;
        player.direction = RIGHT;
        player.isAnimating = 1;
    } else {
        player.isAnimating = 0;
    }
    if (BUTTON_PRESSED(BUTTON_A) && collision(player.x, player.y, player.width, player.height, 96, 96, 16, 40)) {
        hasSword = 1;
        dungeonOneCountdown = 180;
    }

    if (player.isAnimating) {
        dungeonFrame++;
        if (dungeonFrame > 12) {
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
            dungeonFrame = 0;
        }
    } else {
        dungeonFrame = 0;
    }

    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        cheatOne = 1;
        player.palletChange = 25;
    }

    if (player.palletChange > 0) {
        player.palletChange--;
    }

}

void drawDungeonOne() {
    mgba_printf("%d", player.isAnimating);
    shadowOAM[player.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(player.y);
    shadowOAM[player.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(player.x);
    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    if (player.isAnimating) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID((player.currentFrame * 4), 0);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(16, 0);
    }

    if (player.palletChange) {
        shadowOAM[player.oamIndex].attr2 |= ATTR2_PALROW(2);
    }

    if (!hasSword) {
    shadowOAM[10].attr0 = ATTR0_TALL | ATTR0_Y(96);
    shadowOAM[10].attr1 = ATTR1_LARGE | ATTR1_X(96);
    shadowOAM[10].attr2 = ATTR2_TILEID(20, 0);
    } else {
        shadowOAM[10].attr0 |= ATTR0_HIDE;
    }

    DMANow(3, shadowOAM, OAM, 512);
}

void initDungeonTwo() {
    player.x = 16;
    player.y = 100;
    player.xVel = 1;
    player.numFrames = 5;
    player.width = 24;
    player.height = 56;
}

void updateDungeonTwo() {
    
    if (BUTTON_HELD(BUTTON_LEFT) && player.x > 1) {
        player.x -= player.xVel;
        player.direction = LEFT;
        player.isAnimating = 1;
    } else
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width + 1 < SCREENWIDTH) {
        player.x += player.xVel;
        player.direction = RIGHT;
        player.isAnimating = 1;
    } else {
        player.isAnimating = 0;
    }
    if (BUTTON_PRESSED(BUTTON_A) && collision(player.x, player.y, player.width, player.height, 96, 96, 16, 40)) {
        hasShield = 1;
        dungeonTwoCountdown = 1;

    }

    if (player.isAnimating) {
        dungeonFrame++;
        if (dungeonFrame > 20) {
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
            dungeonFrame = 0;
        }
    } else {
        dungeonFrame = 0;
    }

    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        cheatTwo = 1;
        player.palletChange = 25;
    }

    if (player.palletChange) {
        player.palletChange--;
    }
}

void drawDungeonTwo() {
    shadowOAM[player.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(player.y);
    shadowOAM[player.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(player.x);
    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    if (player.isAnimating) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID((player.currentFrame * 4), 0);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(16, 0);
    }

    if (player.palletChange) {
        shadowOAM[player.oamIndex].attr2 |= ATTR2_PALROW(2);
    }

    if (!hasShield) {
        shadowOAM[55].attr0 = ATTR0_SQUARE | ATTR0_Y(96);
        shadowOAM[55].attr1 = ATTR1_LARGE | ATTR1_X(96);
        shadowOAM[55].attr2 = ATTR2_TILEID(4, 17);
    } else {
        shadowOAM[55].attr0 |= ATTR0_HIDE;
    }

    DMANow(3, shadowOAM, OAM, 512);
}
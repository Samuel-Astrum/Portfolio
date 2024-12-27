#include "game.h"
#include "gba.h"
#include "mode4.h"
#include "shot.h"
#include "party.h"
#include <stdlib.h>
#include <stdio.h>
#include "font.h"
#include "analogSound.h"

int score;
int shotCount;
int frameCount;
PLAYER player;
ENEMY enemy;
ARROW arrows[ARROWCOUNT];
SPRITE holes[4];
SHOT shot;
OBJ_ATTR shadowOAM[128];
int activeCount;

int loseCount;
int winCount;



void initGame() {
    score = 0;
    shotCount = 0;
    loseCount = 0;
    winCount = 0;
    activeCount = 0;
    frameCount = 0;
    initPlayer();
    initEnemy();
    initArrows();
    initShot();
    initArrowHoles();


}

void initArrowHoles() {
    for (int i = 0; i < 4; i++) {
        switch (i) {
            case 0:
                //LEFT
                holes[i].x = SCREENWIDTH / 2 - 40;
                holes[i].y = 20;
                holes[i].width = 16;
                holes[i].height = 16;
                holes[i].oamIndex = 6;
                break;
            case 1: 
                //UP
                holes[i].x = SCREENWIDTH / 2 - 20;
                holes[i].y = 20;
                holes[i].width = 16;
                holes[i].height = 16;
                holes[i].oamIndex = 7;
                break;
            case 2:
                //RIGHT
                holes[i].x = SCREENWIDTH / 2;
                holes[i].y = 20;
                holes[i].width = 16;
                holes[i].height = 16;
                holes[i].oamIndex = 8;
                break;
            case 3:
                //DOWN
                holes[i].x = SCREENWIDTH / 2 + 20;
                holes[i].y = 20;
                holes[i].width = 16;
                holes[i].height = 16;
                holes[i].oamIndex = 9;
                break;
        }
    }
}

void initShot() {
    shot.shot.x = player.player.x;
    shot.shot.y = player.player.y;
    shot.shot.xVel = 1;
    shot.shot.oamIndex = 10;
    shot.shot.height = 16;
    shot.shot.width = 16;
    shot.active = 0;
}
void initPlayer() {
    player.player.width = 4 * 8;
    player.player.height = 7 * 8;
    player.player.direction = RIGHT;
    player.player.oamIndex = 0;
    player.player.x = 19;
    player.player.y = SCREENHEIGHT / 2 + 20;
    player.lives = 3;
    player.hasShot = 0;
}

void initEnemy() {
    enemy.enemy.width = 6 * 8;
    enemy.enemy.height = 7 * 8;
    enemy.enemy.direction = LEFT;
    enemy.enemy.oamIndex = 1;
    enemy.enemy.x = SCREENWIDTH - 10 - enemy.enemy.width;
    enemy.enemy.y = SCREENHEIGHT / 2 + 20;
    enemy.lives = 3;
    enemy.form = 0;
}

void initArrows() {
    int count = 0;
    for (int i = 0; i < ARROWCOUNT; i++) {
        if (count < 3) {
            arrows[i].direction = LEFT;
        } else if (count >= 3 && count < 6) {
            arrows[i].direction = UP;
        } else if (count >= 6 && count < 9) {
            arrows[i].direction = RIGHT;
        } else {
            arrows[i].direction = DOWN;
        }
        count++;

        arrows[i].active = 0;
        arrows[i].arrow.hide = 0;

        switch (arrows[i].direction) {
            case LEFT:
                arrows[i].arrow.width = 16;
                arrows[i].arrow.height = 16;
                arrows[i].arrow.xVel = 0;
                arrows[i].arrow.yVel = -1;
                arrows[i].arrow.oamIndex = 2;
                arrows[i].arrow.x = SCREENWIDTH / 2 - 40;
                arrows[i].arrow.y = SCREENHEIGHT - 16;
                break;
            case UP:
                arrows[i].arrow.width = 16;
                arrows[i].arrow.height = 16;
                arrows[i].arrow.xVel = 0;
                arrows[i].arrow.yVel = -1;
                arrows[i].arrow.oamIndex = 3;
                arrows[i].arrow.x = SCREENWIDTH / 2 - 20;
                arrows[i].arrow.y = SCREENHEIGHT - 16;
                break;
            case RIGHT:
                arrows[i].arrow.width = 16;
                arrows[i].arrow.height = 16;
                arrows[i].arrow.xVel = 0;
                arrows[i].arrow.yVel = -1;
                arrows[i].arrow.oamIndex = 4;
                arrows[i].arrow.x = SCREENWIDTH / 2;
                arrows[i].arrow.y = SCREENHEIGHT - 16;
                break;
            case DOWN:
                arrows[i].arrow.width = 16;
                arrows[i].arrow.height = 16;
                arrows[i].arrow.xVel = 0;
                arrows[i].arrow.yVel = -1;
                arrows[i].arrow.oamIndex = 5;
                arrows[i].arrow.x = SCREENWIDTH / 2 + 20;
                arrows[i].arrow.y = SCREENHEIGHT - 16;
                break;
        }
    }
}

void updateGame() {
    for (int i = 0; i < ARROWCOUNT; i++) {
        if (arrows[i].arrow.hide) {
            arrows[i].arrow.hide = 0;
        }
    }
    updatePlayer();
    updateEnemy();
    if (shotCount >= 5) {
        if (BUTTON_HELD(BUTTON_A)) {
            shot.active = 1;
            shot.shot.hide = 0;
            shotCount = 0;
        }
    }
    if (shot.active) {
        updateShot();
    }
    if (activeCount < 3 && frameCount > 90) {
        int index = rand() % ARROWCOUNT;
        if (!arrows[index].active) {
            arrows[index].active = 1;
            activeCount++;
            frameCount = 0;
            arrows[index].arrow.hide = 0;
            switch (arrows[index].direction) {
                case LEFT:
                    arrows[index].arrow.x = SCREENWIDTH / 2 - 40;
                    arrows[index].arrow.y = SCREENHEIGHT - 16;
                    break;
                case UP:
                    arrows[index].arrow.x = SCREENWIDTH / 2 - 20;
                    arrows[index].arrow.y = SCREENHEIGHT - 16;
                    break;
                case RIGHT:
                    arrows[index].arrow.x = SCREENWIDTH / 2;
                    arrows[index].arrow.y = SCREENHEIGHT - 16;
                    break;
                case DOWN:
                    arrows[index].arrow.x = SCREENWIDTH / 2 + 20;
                    arrows[index].arrow.y = SCREENHEIGHT - 16;
                    break;
            }
        }
    }
    updateArrows();
    frameCount++;
}

void updatePlayer() {
    if (shotCount == 5) {
        player.hasShot = 1;
    }
    if (player.hasShot) {
        if (BUTTON_PRESSED(BUTTON_A)) {
            shot.active = 1;
            shotCount = 0;
            player.hasShot = 0;
        }
    }
}

void updateEnemy() {
    if (enemy.lives == 1) {
        enemy.form = 1;
    }
}

void updateArrows() {
    for (int i = 0; i < ARROWCOUNT; i++) {
        if (arrows[i].active == 1) {
        arrows[i].arrow.y += arrows[i].arrow.yVel;
         switch (arrows[i].direction) {
             case LEFT:
                 if (collision(arrows[i].arrow.x, arrows[i].arrow.y, arrows[i].arrow.width, arrows[i].arrow.height, holes[0].x, holes[0].y, holes[0].width-5, 2)) {
                    if (BUTTON_HELD(BUTTON_LEFT)) {
                        score++;
                     arrows[i].active = 0;
                     arrows[i].arrow.hide = 1;
                     activeCount--;
                     shotCount++;
                    REG_SND2CNT = DMG_ENV_VOL(6) | DMG_STEP_TIME(2);
                    REG_SND2FREQ = NOTE_A4 | SND_RESET;
                    }
                     
                 }
                 break;
             case RIGHT:
                 if (collision(arrows[i].arrow.x, arrows[i].arrow.y, arrows[i].arrow.width, arrows[i].arrow.height, holes[2].x, holes[2].y, holes[2].width-5, 2)) {
                     if (BUTTON_HELD(BUTTON_RIGHT)) {
                        score++;
                     arrows[i].active = 0;
                     arrows[i].arrow.hide = 1;
                     activeCount--;
                     shotCount++;
                     REG_SND2CNT = DMG_ENV_VOL(6) | DMG_STEP_TIME(2);
                    REG_SND2FREQ = NOTE_A4 | SND_RESET;
                    }
                     
                 }
                 break;
             case UP:
                 if (collision(arrows[i].arrow.x, arrows[i].arrow.y, arrows[i].arrow.width, arrows[i].arrow.height, holes[1].x, holes[1].y, holes[1].width-5, 2)) {
                     if (BUTTON_HELD(BUTTON_UP)) {
                        score++;
                     arrows[i].active = 0;
                     arrows[i].arrow.hide = 1;
                     activeCount--;
                     shotCount++;
                     REG_SND2CNT = DMG_ENV_VOL(6) | DMG_STEP_TIME(2);
                    REG_SND2FREQ = NOTE_A4 | SND_RESET;
                    }
                     
                 }
                 break;
             case DOWN:
                 if (collision(arrows[i].arrow.x, arrows[i].arrow.y, arrows[i].arrow.width, arrows[i].arrow.height, holes[3].x, holes[3].y, holes[3].width-5, 2)) {
                     if (BUTTON_HELD(BUTTON_DOWN)) {
                        score++;
                     arrows[i].active = 0;
                     arrows[i].arrow.hide = 1;
                     activeCount--;
                     shotCount++;
                     REG_SND2CNT = DMG_ENV_VOL(6) | DMG_STEP_TIME(2);
                    REG_SND2FREQ = NOTE_A4 | SND_RESET;
                    }
                     
                 }
                 break;
         }
         if (arrows[i].arrow.y < 3) {
            arrows[i].active = 0;
            arrows[i].arrow.hide = 1;
            activeCount--;
            player.lives--;
         }
        }
    } 
}

void updateShot() {
    shot.shot.x++;
    if (collision(shot.shot.x, shot.shot.y, 16, 16, enemy.enemy.x, enemy.enemy.y, enemy.enemy.width, enemy.enemy.height)) {
        enemy.lives--;
        shot.active = 0;
        shot.shot.hide = 1;
        shot.shot.x = player.player.x;
        playDrumSound(1, 2, 3, 4, 5);
    }
}

void drawGame() {
    drawPlayer();
    drawEnemy();
    drawArrowBlocks();
    drawShot();
    drawArrows();



    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void drawPlayer() {
    shadowOAM[player.player.oamIndex].attr0 = ATTR0_Y(player.player.y) | ATTR0_TALL;
    shadowOAM[player.player.oamIndex].attr1 = ATTR1_X(player.player.x) | ATTR1_LARGE;
    shadowOAM[player.player.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(8,0));
}

void drawEnemy() {
    shadowOAM[enemy.enemy.oamIndex].attr0 = ATTR0_Y(enemy.enemy.y) | ATTR0_SQUARE;
    shadowOAM[enemy.enemy.oamIndex].attr1 = ATTR1_X(enemy.enemy.x) | ATTR1_LARGE;
    shadowOAM[enemy.enemy.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(12,0));
}

void drawArrowBlocks() {
    shadowOAM[holes[0].oamIndex].attr0 = ATTR0_Y(holes[0].y) | ATTR0_SQUARE | ATTR0_REGULAR;
    shadowOAM[holes[0].oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(holes[0].x);
    shadowOAM[holes[0].oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(6, 0));

    shadowOAM[holes[1].oamIndex].attr0 = ATTR0_Y(holes[1].y) | ATTR0_SQUARE | ATTR0_REGULAR;
    shadowOAM[holes[1].oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(holes[1].x);
    shadowOAM[holes[1].oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(2, 0));

    shadowOAM[holes[2].oamIndex].attr0 = ATTR0_Y(holes[2].y) | ATTR0_SQUARE | ATTR0_REGULAR;
    shadowOAM[holes[2].oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(holes[2].x);
    shadowOAM[holes[2].oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(0, 0));

    shadowOAM[holes[3].oamIndex].attr0 = ATTR0_Y(holes[3].y) | ATTR0_SQUARE | ATTR0_REGULAR;
    shadowOAM[holes[3].oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(holes[3].x);
    shadowOAM[holes[3].oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(4, 0));
}

void drawShot() {
    if (shot.active) {
        shadowOAM[shot.shot.oamIndex].attr0 = ATTR0_Y(shot.shot.y) | ATTR0_SQUARE;
        shadowOAM[shot.shot.oamIndex].attr1 = ATTR1_X(shot.shot.x) | ATTR1_SMALL;
        shadowOAM[shot.shot.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(1) | (512 + ATTR2_TILEID(20,0));
    } else if (shot.shot.hide) {
        shadowOAM[shot.shot.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawArrows() {
    for (int i = 0; i < ARROWCOUNT; i++) {
        if (arrows[i].active) {
            shadowOAM[arrows[i].arrow.oamIndex].attr0 = ATTR0_Y(arrows[i].arrow.y) | ATTR0_SQUARE;
            
            shadowOAM[arrows[i].arrow.oamIndex].attr1 = ATTR1_X(arrows[i].arrow.x) | ATTR1_SMALL;
            switch (arrows[i].direction) {
            case LEFT:
            shadowOAM[arrows[i].arrow.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | (512 + ATTR2_TILEID(6, 2));
            break;
            case UP:
            shadowOAM[arrows[i].arrow.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | (512 + ATTR2_TILEID(2, 2));
            break;
            case RIGHT:
            shadowOAM[arrows[i].arrow.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | (512 + ATTR2_TILEID(0, 2));
            break;
            case DOWN:
            shadowOAM[arrows[i].arrow.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | (512 + ATTR2_TILEID(4, 2));
            break;
            }
        } else if (arrows[i].arrow.hide) {
            shadowOAM[arrows[i].arrow.oamIndex].attr0 = ATTR0_HIDE;
        }
    } 
}
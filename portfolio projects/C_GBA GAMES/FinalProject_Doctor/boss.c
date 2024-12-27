

#include "sprites.h"
#include "print.h"
#include "player.h"
#include "boss.h"
#include "digitalSound.h"
#include "bossPunch.h"
#include <stdlib.h>
#include <stdio.h>
#include "stateMachine.h"
#include "game.h"

PLAYER player;
BOSS firstBoss;
BOSS secondBoss;
int shotFrame;
int shotCurrFrame;
int shotOne;
int shotTwo;
int shotTimer;
int shotY;
int wallActive;
int wallTimer;
int wallCooldown;
int wallX;

void initBossEncounter() {
    initPlayer();
    initBossOne();
}

void initBossOne() {
    firstBoss.x = 160;
    firstBoss.y = 88;
    firstBoss.height = 64;
    firstBoss.width = 64;
    if (cheatOne) {
        firstBoss.lives = 3;
    } else {
        firstBoss.lives = 10;
    }
    firstBoss.oamIndex = 1;
    firstBoss.basicAttackOAM = 4;
    firstBoss.shotOAM = 5;
    shotFrame = 0;
    //mgba_printf("%d, %d", firstBoss.x, firstBoss.y);

}

void updateBossEncounter() {
    updatePlayer();
    updateBossOne();
    if (player.invulnerable > 0) {
        player.invulnerable--;
    }
    //mgba_printf("%d, %d", firstBoss.x, firstBoss.y);
}

void updateBossOne() {
    if (!firstBoss.hide) {

        /////
        // basic attack
        /////

        if (firstBoss.swingCooldown == 0) {
            mgba_printf("the boss attacks!");
            playSoundB(bossPunch_data, bossPunch_length, 0);
            if (collision(player.x, player.y, player.width, player.height, firstBoss.x - 15, firstBoss.y + 55, 15, 10) && player.invulnerable == 0) {
                player.lives--;
                player.palletChange = 25;
                mgba_printf("boss attack hits!");
            }
            firstBoss.swingCooldown = rand() % 150 + 150; //replace with rand
            firstBoss.basicAttack = 60;
        } else {
            firstBoss.swingCooldown--;
            if (firstBoss.basicAttack > 0) {
                firstBoss.basicAttack--;
            }
        }
        


        /////
        // pattern shot
        /////

        if (firstBoss.shotCooldown == 0) {
            firstBoss.shotCooldown = (rand() % 200) + 300;
            int location = rand() % 5;
            switch(location) {
                case 0:
                    shotOne = 24;
                    break;
                case 1:
                    shotOne = 56;
                    break;
                case 2:
                    shotOne = 88;
                    break;
                case 3:
                    shotOne = 120;
                    break;
                case 4:
                    shotOne = 152;
                    break;
            }
            int locationTwo = rand() % 5;
            while (location == locationTwo) {
                locationTwo = rand() % 5;
            }
            switch(locationTwo) {
                case 0:
                    shotTwo = 24;
                    break;
                case 1:
                    shotTwo = 56;
                    break;
                case 2:
                    shotTwo = 88;
                    break;
                case 3:
                    shotTwo = 120;
                    break;
                case 4:
                    shotTwo = 152;
                    break;
            }
            shotTimer = 300;
            shotY = 0;
            firstBoss.shotActive = 200;

        } else if (shotTimer > 0){
            shotTimer--;
        } else {
            firstBoss.shotCooldown--;
            if (firstBoss.shotActive > 0) {
                firstBoss.shotActive--;
            }
            shotY++;
        }

        if (firstBoss.shotActive > 0) {
            if (collision(player.x + 3, player.y +3, player.width, player.height, shotOne, shotY, 14, 14) || collision(player.x +3, player.y + 3, player.width, player.height, shotTwo, shotY, 10, 10) && player.invulnerable == 0) {
                firstBoss.shotActive = 0;
                player.palletChange = 25;
                player.lives--;
                player.invulnerable = 60;
            }
        }

        if (firstBoss.palletChange) {
            firstBoss.palletChange--;
        }

        if (shotFrame > 30) {
            if (shotCurrFrame == 0) {
                shotCurrFrame = 1;
                shotFrame = 0;
            } else {
                shotCurrFrame = 0;
                shotFrame = 0;
            }
        }
        shotFrame++;
    
}
}

void drawBossEncounter() {
    drawPlayer();
    drawBossOne();
    // 11 - 21
    switch (firstBoss.lives) {
        case 1:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 |= ATTR0_HIDE;
            shadowOAM[13].attr0 |= ATTR0_HIDE;
            shadowOAM[14].attr0 |= ATTR0_HIDE;
            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;

            break;

        case 2:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 |= ATTR0_HIDE;
            shadowOAM[14].attr0 |= ATTR0_HIDE;
            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;


            break;

        case 3:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 |= ATTR0_HIDE;
            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;

            break;

        case 4:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;

            break;

        case 5:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;


            break;

        case 6:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 7:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 8:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(208);
            shadowOAM[18].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 9:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(208);
            shadowOAM[18].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[19].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[19].attr1 = ATTR1_TINY | ATTR1_X(216);
            shadowOAM[19].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

             shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 10:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(208);
            shadowOAM[18].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[19].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[19].attr1 = ATTR1_TINY | ATTR1_X(216);
            shadowOAM[19].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[20].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[20].attr1 = ATTR1_TINY | ATTR1_X(224);
            shadowOAM[20].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(2, 12);
            
            break;

    }
    switch (player.lives) {
        case 1:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 |= ATTR0_HIDE;
            shadowOAM[23].attr0 |= ATTR0_HIDE;
            shadowOAM[24].attr0 |= ATTR0_HIDE;
            shadowOAM[25].attr0 |= ATTR0_HIDE;

            break;

        case 2:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 |= ATTR0_HIDE;
            shadowOAM[24].attr0 |= ATTR0_HIDE;
            shadowOAM[25].attr0 |= ATTR0_HIDE;

            break;
            
        case 3:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(24);
            shadowOAM[23].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[24].attr0 |= ATTR0_HIDE;
            shadowOAM[25].attr0 |= ATTR0_HIDE;


            break;
            
        case 4:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(24);
            shadowOAM[23].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[24].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[24].attr1 = ATTR1_TINY | ATTR1_X(32);
            shadowOAM[24].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[25].attr0 |= ATTR0_HIDE;

            break;
            
        case 5:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(24);
            shadowOAM[23].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[24].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[24].attr1 = ATTR1_TINY | ATTR1_X(32);
            shadowOAM[24].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[25].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[25].attr1 = ATTR1_TINY | ATTR1_X(40);
            shadowOAM[25].attr2 = ATTR2_TILEID(2, 12);

            break;
            
    }

    if (!hasKey && keyActive) {
        shadowOAM[102].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
        shadowOAM[102].attr1 = ATTR1_SMALL | ATTR1_X(24);
        shadowOAM[102].attr2 = ATTR2_TILEID(3, 12);
    } else {
        shadowOAM[102].attr0 |= ATTR0_HIDE;
    }


    DMANow(3, shadowOAM, OAM, 512);
}

void drawBossOne() {
    if (!firstBoss.hide) {
        shadowOAM[firstBoss.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(firstBoss.y);
        shadowOAM[firstBoss.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(firstBoss.x);
        if (firstBoss.palletChange) {
            shadowOAM[firstBoss.oamIndex].attr2 = ATTR2_TILEID(23, 8) | ATTR2_PALROW(1);
        } else {
            shadowOAM[firstBoss.oamIndex].attr2 = ATTR2_TILEID(23, 8);
        }
        
    } else {
        shadowOAM[firstBoss.oamIndex].attr0 |= ATTR0_HIDE;
    }
    if (firstBoss.basicAttack) {
        shadowOAM[firstBoss.basicAttackOAM].attr0 = ATTR0_TALL | ATTR0_Y(firstBoss.y + 32);
        shadowOAM[firstBoss.basicAttackOAM].attr1 = ATTR1_MEDIUM | ATTR1_X(firstBoss.x - 32);
        shadowOAM[firstBoss.basicAttackOAM].attr2 = ATTR2_TILEID(30, 0);
    } else {
        shadowOAM[firstBoss.basicAttackOAM].attr0 |= ATTR0_HIDE;
    }
    if (firstBoss.shotActive && !firstBoss.hide) {
        shadowOAM[100].attr0 = ATTR0_SQUARE | ATTR0_Y(shotY);
        shadowOAM[100].attr1 = ATTR1_SMALL | ATTR1_X(shotOne);
        shadowOAM[100].attr2 = ATTR2_TILEID(shotCurrFrame * 2 + 26, 0);

        shadowOAM[101].attr0 = ATTR0_SQUARE | ATTR0_Y(shotY);
        shadowOAM[101].attr1 = ATTR1_SMALL | ATTR1_X(shotTwo);
        shadowOAM[101].attr2 = ATTR2_TILEID(shotCurrFrame * 2 + 26, 0);

    } else {
        shadowOAM[100].attr0 |= ATTR0_HIDE;
        shadowOAM[101].attr0 |= ATTR0_HIDE;
    }
    if (firstBoss.hide) {
        shadowOAM[firstBoss.shotOAM].attr0 |= ATTR0_HIDE;
        shadowOAM[firstBoss.basicAttackOAM].attr0 |= ATTR0_HIDE;
    }
}

void initBossTwoEncounter() {
    initPlayer();
    initBossTwo();
}

void initBossTwo() {
    secondBoss.x = 160;
    secondBoss.y = 88;
    secondBoss.height = 64;
    secondBoss.width = 64;
    if (cheatTwo) {
        secondBoss.lives = 3;
    } else {
        secondBoss.lives = 10;
    }
    secondBoss.oamIndex = 7;
    secondBoss.basicAttackOAM = 8;
    secondBoss.shotOAM = 9;
    wallCooldown = 200;
}

void updateBossTwoEncounter() {
    updatePlayer();
    updateBossTwo();
    if (player.invulnerable > 0) {
        player.invulnerable--;
    }
}

void updateBossTwo() {
    if (!secondBoss.hide) {

        //basic attack
        if (secondBoss.swingCooldown == 0) {
            mgba_printf("the boss attacks!");
            playSoundB(bossPunch_data, bossPunch_length, 0);
            if (collision(player.x, player.y, player.width, player.height, secondBoss.x - 15, secondBoss.y + 55, 15, 10)) {
                player.lives--;
                player.invulnerable = 60;
                player.palletChange = 25;
                mgba_printf("boss attack hits!");
            }
            secondBoss.swingCooldown = 240;
            secondBoss.basicAttack = 60;
        } else {
            secondBoss.swingCooldown--;
            if (secondBoss.basicAttack > 0) {
                secondBoss.basicAttack--;
            }
        }

        //blockable projectile

        if (secondBoss.shotCooldown == 0) {
            mgba_printf("the boss shoots!");
            secondBoss.shotCooldown = rand() % 100 + 300;
            secondBoss.shotActive = 200;
            secondBoss.shotX = secondBoss.x;
            secondBoss.shotY = secondBoss.y + 15;
        } else {
            secondBoss.shotCooldown--;
            if (secondBoss.shotActive > 0) {
                secondBoss.shotActive--;
            }
            secondBoss.shotX--;
        }

        if (secondBoss.shotActive > 0) {
            if (collision(player.x, player.y, player.width, player.height, secondBoss.shotX, secondBoss.shotY, 8, 8)) {
                secondBoss.shotActive = 0;
                if (!player.isBlocking) {
                    player.invulnerable = 60;
                    player.lives--;
                    player.palletChange = 25;
                }
            }
        }

        if (shotFrame > 30) {
            if (shotCurrFrame == 0) {
                shotCurrFrame = 1;
                shotFrame = 0;
            } else {
                shotCurrFrame = 0;
                shotFrame = 0;
            }
        }
        shotFrame++;

        //hittable projectile

        if (wallCooldown == 0) {
            wallTimer = 180;
            wallCooldown = rand() % 200 + 300;
            wallActive = 200;
            wallX = secondBoss.x;
        } else if (wallTimer > 0) {
            wallTimer--;
        } else {
            wallCooldown--;
            if (wallActive > 0) {
                wallActive--;
            }
            wallX--;
        }

        if (wallActive > 0) {
            if (collision(player.x + 3, player.y + 3, player.width, player.height, wallX, 56, 16, 56)) {
                if (BUTTON_HELD(BUTTON_A) || BUTTON_HELD(BUTTON_B)) {
                    wallActive = 0;
                } else {
                    wallActive = 0;
                    player.lives--;
                    player.palletChange = 25;
                    player.invulnerable = 60;
                }
            }
        }

        if (secondBoss.palletChange) {
            secondBoss.palletChange--;
        }
    
}
}

void drawBossTwoEncounter() {
    drawPlayer();
    drawBossTwo();

    switch (secondBoss.lives) {
        case 1:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 |= ATTR0_HIDE;
            shadowOAM[13].attr0 |= ATTR0_HIDE;
            shadowOAM[14].attr0 |= ATTR0_HIDE;
            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;

            break;

        case 2:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 |= ATTR0_HIDE;
            shadowOAM[14].attr0 |= ATTR0_HIDE;
            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;


            break;

        case 3:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 |= ATTR0_HIDE;
            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;

            break;

        case 4:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 |= ATTR0_HIDE;
            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;

            break;

        case 5:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 |= ATTR0_HIDE;
            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;


            break;

        case 6:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 |= ATTR0_HIDE;
            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 7:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 |= ATTR0_HIDE;
            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 8:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(208);
            shadowOAM[18].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[19].attr0 |= ATTR0_HIDE;
            shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 9:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(208);
            shadowOAM[18].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[19].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[19].attr1 = ATTR1_TINY | ATTR1_X(216);
            shadowOAM[19].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

             shadowOAM[20].attr0 |= ATTR0_HIDE;
            
            break;

        case 10:
            shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(40); //152
            shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
            shadowOAM[11].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);

            shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
            shadowOAM[12].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
            shadowOAM[13].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(176);
            shadowOAM[14].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(184);
            shadowOAM[15].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(192);
            shadowOAM[16].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(200);
            shadowOAM[17].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(208);
            shadowOAM[18].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[19].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[19].attr1 = ATTR1_TINY | ATTR1_X(216);
            shadowOAM[19].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 12);

            shadowOAM[20].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[20].attr1 = ATTR1_TINY | ATTR1_X(224);
            shadowOAM[20].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(2, 12);
            
            break;

    }
    switch (player.lives) {
        case 1:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 |= ATTR0_HIDE;
            shadowOAM[23].attr0 |= ATTR0_HIDE;
            shadowOAM[24].attr0 |= ATTR0_HIDE;
            shadowOAM[25].attr0 |= ATTR0_HIDE;

            break;

        case 2:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 |= ATTR0_HIDE;
            shadowOAM[24].attr0 |= ATTR0_HIDE;
            shadowOAM[25].attr0 |= ATTR0_HIDE;

            break;
            
        case 3:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(24);
            shadowOAM[23].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[24].attr0 |= ATTR0_HIDE;
            shadowOAM[25].attr0 |= ATTR0_HIDE;


            break;
            
        case 4:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(24);
            shadowOAM[23].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[24].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[24].attr1 = ATTR1_TINY | ATTR1_X(32);
            shadowOAM[24].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[25].attr0 |= ATTR0_HIDE;

            break;
            
        case 5:
            shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(8);
            shadowOAM[21].attr2 = ATTR2_TILEID(0, 12);

            shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(16);
            shadowOAM[22].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(24);
            shadowOAM[23].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[24].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[24].attr1 = ATTR1_TINY | ATTR1_X(32);
            shadowOAM[24].attr2 = ATTR2_TILEID(1, 12);

            shadowOAM[25].attr0 = ATTR0_SQUARE | ATTR0_Y(40);
            shadowOAM[25].attr1 = ATTR1_TINY | ATTR1_X(40);
            shadowOAM[25].attr2 = ATTR2_TILEID(2, 12);

            break;
            
    }

    if (!hasSecondKey && secondKeyActive) {
        shadowOAM[121].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
        shadowOAM[121].attr1 = ATTR1_SMALL | ATTR1_X(24);
        shadowOAM[121].attr2 = ATTR2_TILEID(3, 12);
    } else {
        shadowOAM[121].attr0 |= ATTR0_HIDE;
    }

    DMANow(3, shadowOAM, OAM, 512);
}

void drawBossTwo() {
    if (!secondBoss.hide) {
        shadowOAM[secondBoss.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(secondBoss.y);
        shadowOAM[secondBoss.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(secondBoss.x);
        shadowOAM[secondBoss.oamIndex].attr2 = ATTR2_TILEID(23, 8) | ATTR2_PALROW(3);
    } else {
        shadowOAM[secondBoss.oamIndex].attr0 |= ATTR0_HIDE;
    }
    if (secondBoss.basicAttack) {
        shadowOAM[secondBoss.basicAttackOAM].attr0 = ATTR0_TALL | ATTR0_Y(secondBoss.y + 32);
        shadowOAM[secondBoss.basicAttackOAM].attr1 = ATTR1_MEDIUM | ATTR1_X(secondBoss.x - 32);
        shadowOAM[secondBoss.basicAttackOAM].attr2 = ATTR2_TILEID(30, 0);
    } else {
        shadowOAM[secondBoss.basicAttackOAM].attr0 |= ATTR0_HIDE;
    }
    if (secondBoss.shotActive) {
        shadowOAM[secondBoss.shotOAM].attr0 = ATTR0_SQUARE | ATTR0_Y(secondBoss.shotY);
        shadowOAM[secondBoss.shotOAM].attr1 = ATTR1_SMALL | ATTR1_X(secondBoss.shotX);
        shadowOAM[secondBoss.shotOAM].attr2 = ATTR2_TILEID(shotCurrFrame * 2 + 26, 0);
    } else {
        shadowOAM[secondBoss.shotOAM].attr0 |= ATTR0_HIDE;
    }

    if (wallActive) {
        shadowOAM[105].attr0 = ATTR0_TALL | ATTR0_Y(56);
        shadowOAM[105].attr1 = ATTR1_LARGE | ATTR1_X(wallX);
        shadowOAM[105].attr2 = ATTR2_TILEID(0, 14);
    } else {
        shadowOAM[105].attr0 |= ATTR0_HIDE;
    }

    if (secondBoss.palletChange) {
        shadowOAM[secondBoss.oamIndex].attr2 |= ATTR2_PALROW(0);
    } 

    if (wallTimer) {
        shadowOAM[secondBoss.oamIndex].attr2 |= ATTR2_PALROW(2);
    }

    if (secondBoss.hide) {
        shadowOAM[secondBoss.shotOAM].attr0 |= ATTR0_HIDE;
        shadowOAM[secondBoss.basicAttackOAM].attr0 |= ATTR0_HIDE;
        shadowOAM[105].attr0 |= ATTR0_HIDE;
    }
}
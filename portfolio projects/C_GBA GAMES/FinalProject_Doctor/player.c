#include "player.h"
#include "sprites.h"
#include "print.h"
#include "boss.h"
#include "gba.h"
#include "stateMachine.h"
#include "digitalSound.h"
#include "lightSword.h"
#include "heavySword.h"
#include "bossDamage.h"

PLAYER player;
BOSS firstBoss;
#define PLAYERCOUNT 60
int playerWalk;
int swing;
typedef enum {
    DOWN, UP, RIGHT, LEFT
} DIRECTION;

int realPlayerX;
int realPlayerY;
int lightFrame;
int heavyFrame;

void initPlayer() {
    player.x = 8;
    player.y = 96;
    player.height = 51;
    player.width = 19;
    player.lives = 5;
    player.oamIndex = 0;
    player.xVel = 1;
    player.lightOAM = 2;
    player.heavyOAM = 3;
    player.numFrames = 5;
    playerWalk = PLAYERCOUNT;

    realPlayerX = player.x + 3;
    realPlayerY = player.y + 3;
}

void updatePlayer() {
    //movement
    if (state == BOSS1) {
            if (BUTTON_HELD(BUTTON_LEFT) && player.x > 1) {
            player.x -= player.xVel;
            player.direction = LEFT;
            player.isAnimating = 1;
        } else
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width + 1 < SCREENWIDTH && !collision(realPlayerX, realPlayerY, player.width, player.height, firstBoss.x, firstBoss.y, firstBoss.width, firstBoss.height)) {
            player.x += player.xVel;
            player.direction = RIGHT;
            player.isAnimating = 1;
        } else {
            player.isAnimating = 0;
        }
    if (BUTTON_PRESSED(BUTTON_A) && !player.swingCooldown) {
            mgba_printf("the player light attacks!");
            playSoundB(lightSword_data, lightSword_length, 0);
            swing = 25;
            lightFrame = 25;
            if (collision(player.x + 3 + player.width, player.y + 3 + 17 + 3, 15, 5, firstBoss.x, firstBoss.y, firstBoss.width, firstBoss.height)) {
                mgba_printf("sword slash hits!");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                firstBoss.palletChange = 25;
                firstBoss.lives--;
            }
            player.isAttacking = 1;
            player.lightAttack = 60;
            player.swingCooldown = 120;
        }

    if (player.lightAttack > 0) {
            player.lightAttack--;
        }

    if (BUTTON_PRESSED(BUTTON_B) && !player.swingCooldown) {
            mgba_printf("the player heavy attacks!");
            playSoundB(heavySword_data, heavySword_length, 0);
            swing = 75;
            heavyFrame = 75;
            if (collision(player.x + 3 + player.width, player.y + 3 + 20, 15, 5, firstBoss.x, firstBoss.y, firstBoss.width, firstBoss.height)) {
                mgba_printf("heavy attack hits! YEOUCH");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                firstBoss.palletChange = 25;
                firstBoss.lives -= 2;
            }
            player.isAttacking = 1;
            player.heavyAttack = 60;
            player.swingCooldown = 180;
        }

    if (player.heavyAttack > 0) {
            player.heavyAttack--;
        }

    if (player.swingCooldown > 0) {
            player.swingCooldown--;
        }

    if (player.swingCooldown == 0) {
            player.isAttacking = 0;
        }
    }


    else if (state == BOSS2) {

        if (BUTTON_HELD(BUTTON_RSHOULDER)) {
            player.isBlocking = 1;
        } else {

            player.isBlocking = 0;
            if (BUTTON_HELD(BUTTON_LEFT) && player.x > 1) {
                player.x -= player.xVel;
                player.direction = LEFT;
                player.isAnimating = 1;
        } else
            if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width + 1 < SCREENWIDTH && !collision(player.x, player.y, player.width, player.height, secondBoss.x, secondBoss.y, secondBoss.width, secondBoss.height)) {
                player.x += player.xVel;
                player.direction = RIGHT;
                player.isAnimating = 1;
        } else {
                player.isAnimating = 0;
        }
        
        if (BUTTON_PRESSED(BUTTON_A) && !player.swingCooldown) {
            mgba_printf("the player light attacks!");
            swing = 15;
            playSoundB(lightSword_data, lightSword_length, 0);
            if (collision(player.x + player.width, player.y, 15, 5, secondBoss.x, secondBoss.y, secondBoss.width, secondBoss.height)) {
                mgba_printf("sword slash hits!");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                secondBoss.lives--;
                secondBoss.palletChange = 25;
            }
            player.isAttacking = 1;
            player.lightAttack = 60;
            player.swingCooldown = 120;
        }

        if (player.lightAttack > 0) {
            player.lightAttack--;
        }

        if (BUTTON_PRESSED(BUTTON_B) && !player.swingCooldown) {
            mgba_printf("the player heavy attacks!");
            swing = 45;
            playSoundB(heavySword_data, heavySword_length, 0);
            if (collision(player.x + player.width, player.y, 15, 5, secondBoss.x, secondBoss.y, secondBoss.width, secondBoss.height)) {
                mgba_printf("heavy attack hits! YEOUCH");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                secondBoss.lives -= 2;
                secondBoss.palletChange = 25;
            }
            player.isAttacking = 1;
            player.heavyAttack = 60;
            player.swingCooldown = 180;
        }

    }

        
        if (player.heavyAttack > 0) {
            player.heavyAttack--;
        }

        if (player.swingCooldown > 0) {
            player.swingCooldown--;
        }

        if (player.swingCooldown == 0) {
            player.isAttacking = 0;
        }
    }

     if (player.isAnimating) {
        playerWalk++;
        if (playerWalk > 15) {
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
            playerWalk = 0;
        }
    } else {
        playerWalk = 0;
    }

    if (player.palletChange) {
        player.palletChange--;
    }

    //block L
    //puts player in a state where they cannot move
    //when in this state, they can block projectiles and take less damage

    //roll r
    //makes the player move forward a certain distance, invulnerable when doing this
}

void drawPlayer() {
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
        shadowOAM[player.oamIndex].attr2 |= ATTR2_PALROW(1);
    }

    if (player.isBlocking) {
        shadowOAM[player.oamIndex].attr2 |= ATTR2_PALROW(2);
    }
    
    if (player.isAttacking) {
        if (player.lightAttack) {
            if (swing > 0) {
                swing--;
                shadowOAM[player.lightOAM].attr0 = ATTR0_SQUARE | ATTR0_Y(player.y + 20);
                shadowOAM[player.lightOAM].attr1 = ATTR1_SMALL;
                if (player.direction == RIGHT) {
                    shadowOAM[player.lightOAM].attr1 |= ATTR1_X(player.x + 3 + player.width + 10);
                } else {
                    shadowOAM[player.lightOAM].attr1 |= ATTR1_X(player.x - 16) | ATTR1_HFLIP;
                }
                
                if (lightFrame > 20) {
                    shadowOAM[player.lightOAM].attr2 = ATTR2_TILEID(24, 2);
                } else if (lightFrame > 10) {
                    shadowOAM[player.lightOAM].attr2 = ATTR2_TILEID(26, 2);
                } else {
                    shadowOAM[player.lightOAM].attr2 = ATTR2_TILEID(28, 2);
                }
            } else {
                shadowOAM[player.lightOAM].attr0 |= ATTR0_HIDE;
        }
        lightFrame--;
        } else {
            shadowOAM[player.lightOAM].attr0 |= ATTR0_HIDE;
        }
        if (player.heavyAttack) {
            if (swing > 0) {
                swing--;
                shadowOAM[player.heavyOAM].attr0 = ATTR0_SQUARE | ATTR0_Y(player.y + 20);
                shadowOAM[player.heavyOAM].attr1 = ATTR1_SMALL;
                 if (player.direction == RIGHT) {
                    shadowOAM[player.heavyOAM].attr1 |= ATTR1_X(player.x + player.width + 10);
                } else {
                    shadowOAM[player.heavyOAM].attr1 |= ATTR1_X(player.x - 16) | ATTR1_HFLIP;
                }
                if (heavyFrame > 50) {
                    shadowOAM[player.heavyOAM].attr2 = ATTR2_TILEID(24, 4);
                } else if (heavyFrame > 25) {
                    shadowOAM[player.heavyOAM].attr2 = ATTR2_TILEID(26, 4);
                } else {
                    shadowOAM[player.heavyOAM].attr2 = ATTR2_TILEID(28, 4);
                }
            } else {
                shadowOAM[player.heavyOAM].attr0 |= ATTR0_HIDE;
        }
        heavyFrame--;
    } else {
        shadowOAM[player.heavyOAM].attr0 |= ATTR0_HIDE;
    }
}
}
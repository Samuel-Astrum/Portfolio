#include "gameLogic.h"
#include "gba.h"
#include <stdlib.h>
#include "analogSound.h"

PLAYER player;
ENEMY enemies[ENEMYCOUNT];
int score;
int stunCount;
int wipe;
int phaseTwo;
int killWipe;
int frameCount;
int drawKey;
int keyActive;
int clearKey;

#define FRAME_DELAY 10

void playerDamageState() {
    drawRectangle(player.x, player.y, 5, 5, RED);
}

void drawBG() {
    fillScreen(GRASS);
    drawRectangle(0, 0, 10, 160, TREE);
    drawRectangle(0, 0, 240, 10, TREE);
    drawRectangle(230, 0, 10, 160, TREE);
    //left trees
    drawRectangle(0, 0, 30, 20, TREE);
    drawRectangle(0, 25, 20, 15, TREE);
    drawRectangle(0, 20, 18, 5, TREE);
    drawRectangle(0, 40, 15, 20, TREE);
    drawRectangle(0, 60, 25, 15, TREE);
    drawRectangle(0, 75, 13, 25, TREE);
    drawRectangle(0, 100, 18, 25, TREE);
    drawRectangle(0, 130, 20, 25, TREE);
    //top trees
    drawRectangle(10, 10, 15, 15, TREE);
    drawRectangle(25, 10, 20, 5, TREE);
    drawRectangle(45, 10, 20, 2, TREE);
    drawRectangle(70, 10, 25, 4, TREE);
    drawRectangle(85, 10, 15, 7, TREE);
    drawRectangle(100, 10, 25, 9, TREE);
    drawRectangle(125, 10, 5, 7, TREE);
    drawRectangle(130, 10, 35, 3, TREE);
    drawRectangle(165, 10, 15, 5, TREE);
    drawRectangle(180, 10, 20, 6, TREE);
    drawRectangle(200, 10, 10, 12, TREE);
    drawRectangle(210, 10, 35, 2, TREE);
    drawRectangle(245, 10, 15, 9, TREE);
    //right trees
    drawRectangle(210, 0, 30, 20, TREE);
    drawRectangle(220, 25, 20, 15, TREE);
    drawRectangle(222, 20, 18, 5, TREE);
    drawRectangle(225, 40, 15, 20, TREE);
    drawRectangle(215, 60, 25, 15, TREE);
    drawRectangle(227, 75, 13, 25, TREE);
    drawRectangle(222, 100, 18, 25, TREE);
    drawRectangle(220, 130, 20, 25, TREE);

    

    
}

void drawCastle() {
    drawRectangle(90, 100, 5, 50, GRAY);
    drawRectangle(90, 100, 60, 5, GRAY);
    drawRectangle(150, 100, 5, 50, GRAY);

    drawRectangle(85, 95, 10, 10, GRAY);
    drawRectangle(150, 95, 10, 10, GRAY);

    drawRectangle(88, 105, 2, 4, GRAY);
    drawRectangle(88, 111, 2, 4, GRAY);
    drawRectangle(88, 117, 2, 4, GRAY);
    drawRectangle(88, 123, 2, 4, GRAY);
    drawRectangle(88, 129, 2, 4, GRAY);
    drawRectangle(88, 135, 2, 4, GRAY);
    drawRectangle(88, 141, 2, 4, GRAY);
    drawRectangle(88, 147, 2, 4, GRAY);

    drawRectangle(155, 105, 2, 4, GRAY);
    drawRectangle(155, 111, 2, 4, GRAY);
    drawRectangle(155, 117, 2, 4, GRAY);
    drawRectangle(155, 123, 2, 4, GRAY);
    drawRectangle(155, 129, 2, 4, GRAY);
    drawRectangle(155, 135, 2, 4, GRAY);
    drawRectangle(155, 141, 2, 4, GRAY);
    drawRectangle(155, 147, 2, 4, GRAY);



}

void drawChest() {
    drawRectangle(200, 125, 10, 10, BROWN);
}

void drawCrown() {
    drawRectangle(100, 125, 45, 20, YELLOW);
}

void initGame() {
    stunCount = 0;
    score = 0;
    wallHealth = 3;
    wipe = 0;
    phaseTwo = 0;
    killWipe = 0;
    frameCount = 0;
    keyActive = 0;
    clearKey = 0;
    drawKey = 0;
    initPlayer();
    initEnemy();
}
void initPlayer() {
    player.color = BLACK;
    player.x = SCREENWIDTH / 2;
    player.y = SCREENHEIGHT / 2;
    player.oldX = player.x;
    player.oldY = player.y;
    player.hasKey = 0;
    player.hit = 0;
    player.xVelocity = 0;
    player.yVelocity = 0;
    player.playerSide = 4;
    player.speed = 1;
}
void initEnemy() {
    for (int i = 0; i < ENEMYCOUNT; i++) {
        int fast = (rand() % 3) + 1;
        enemies[i].speed = fast;
        enemies[i].color = RED;
        enemies[i].active = 1;
        int key = rand() % 10;
        if (key == 0) {
            enemies[i].holdsKey = 1;
        } else {
            enemies[i].holdsKey = 0;
        }
        int spawn = i;
        switch (spawn) {
            case 0:
                enemies[i].spawnLocation = 0;
                enemies[i].x = 0;
                enemies[i].y = 110;
                break;
            case 1:
                enemies[i].spawnLocation = 1;
                enemies[i].x = 0;
                enemies[i].y = 60;
                break;
            case 2:
                enemies[i].spawnLocation = 2;
                enemies[i].x = 80;
                enemies[i].y = 0;
                break;
            case 3:
                enemies[i].spawnLocation = 3;
                enemies[i].x = 150;
                enemies[i].y = 0;
                break;
            case 4:
                enemies[i].spawnLocation = 4;
                enemies[i].x = 235;
                enemies[i].y = 60;
                break;
            case 5:
                enemies[i].spawnLocation = 5;
                enemies[i].x = 235;
                enemies[i].y = 110;
                break;
            default:
                break;
        }
        enemies[i].oldX = enemies[i].x;
        enemies[i].oldY = enemies[i].y;
    }
}
void drawScenery() {
    //left trees
    drawRectangle(0, 0, 30, 20, TREE);
    drawRectangle(0, 25, 20, 15, TREE);
    drawRectangle(0, 20, 18, 5, TREE);
    drawRectangle(0, 40, 15, 20, TREE);
    drawRectangle(0, 60, 25, 15, TREE);
    drawRectangle(0, 75, 13, 25, TREE);
    drawRectangle(0, 100, 18, 25, TREE);
    drawRectangle(0, 130, 20, 25, TREE);
    //top trees
    drawRectangle(10, 10, 15, 15, TREE);
    drawRectangle(25, 10, 20, 5, TREE);
    drawRectangle(45, 10, 20, 2, TREE);
    drawRectangle(70, 10, 25, 4, TREE);
    drawRectangle(85, 10, 15, 7, TREE);
    drawRectangle(100, 10, 25, 9, TREE);
    drawRectangle(125, 10, 5, 7, TREE);
    drawRectangle(130, 10, 35, 3, TREE);
    drawRectangle(165, 10, 15, 5, TREE);
    drawRectangle(180, 10, 20, 6, TREE);
    drawRectangle(200, 10, 10, 12, TREE);
    drawRectangle(210, 10, 35, 2, TREE);
    drawRectangle(245, 10, 15, 9, TREE);
    //right trees
    drawRectangle(210, 0, 30, 20, TREE);
    drawRectangle(220, 25, 20, 15, TREE);
    drawRectangle(222, 20, 18, 5, TREE);
    drawRectangle(225, 40, 15, 20, TREE);
    drawRectangle(215, 60, 25, 15, TREE);
    drawRectangle(227, 75, 13, 25, TREE);
    drawRectangle(222, 100, 18, 25, TREE);
    drawRectangle(220, 130, 20, 25, TREE);
}

void updateGame() {
    frameCount++;
    updatePlayer();
    if (frameCount > FRAME_DELAY) {
            frameCount = 0;
            for (int i = 0; i < ENEMYCOUNT; i++) {
                updateEnemies(&enemies[i]);
            }
        }
    

    int activeCount = 0;
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (enemies[i].active) {
            activeCount++;
        }
    }

    if (activeCount < ENEMYCOUNT) {
        newEnemy();
    }


}

void updatePlayer() {

        if (BUTTON_HELD(BUTTON_LEFT) && player.x - 1 > 15) {
            player.xVelocity = player.speed * (-1);  
        } else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + 4 + 1 < SCREENWIDTH - 15) {
            player.xVelocity = player.speed;
        } else {
            player.xVelocity = 0;
        }

        if (BUTTON_HELD(BUTTON_UP) && player.y - 1 > 15) {
            player.yVelocity = player.speed * (-1);
        } else if (BUTTON_HELD(BUTTON_DOWN) && player.y + 4 + 1 < SCREENHEIGHT) {
            player.yVelocity = player.speed;
        } else {
            player.yVelocity = 0;
        }
        //collision with castle
        if (phaseTwo == 2) {
            if (collision(player.x, player.y, player.playerSide, player.playerSide, 100, 125, 45, 20)) {
                player.xVelocity = 0;
                player.yVelocity = 0;
                player.x = player.oldX;
                player.y = player.oldY;
            }
        } else {
            if (collision(player.x, player.y, player.playerSide, player.playerSide, 85, 95, 75, 65))
            {
                player.xVelocity = 0;
                player.yVelocity = 0;
                player.x = player.oldX;
                player.y = player.oldY;
            }
        }
        

        //add collision with chest and key interaction
        if (collision(player.x, player.y, player.playerSide, player.playerSide, 190, 115, 20, 20)) {
            if (BUTTON_PRESSED(BUTTON_A)) {
                if (player.hasKey) {
                    player.color = YELLOW;
                    player.speed++;
                } else {
                }
            }
        }

        if (collision(player.x, player.y, player.playerSide, player.playerSide, 195, 120, 15, 15))
            {
                player.xVelocity = 0;
                player.yVelocity = 0;
                player.x = player.oldX;
                player.y = player.oldY;
            }


        if (keyActive) {
            if (collision(player.x - 5, player.y - 5, player.playerSide + 10, player.playerSide + 10, (SCREENWIDTH / 2) - 5, (SCREENHEIGHT / 2) - 25, 5, 5)) {
                player.hasKey = 1;
                keyActive = 0;
                clearKey = 1;
            }
        }

        

        player.oldX = player.x;
        player.oldY = player.y;
        player.y += player.yVelocity;
        player.x += player.xVelocity;
}

void updateEnemies(ENEMY* enemy) {
    if (enemy -> active == 1) {
        //collision checks with castle
        if (wallHealth > 0) {
            if (collision(enemy -> x, enemy -> y, 5, 5, 85, 95, 75, 65) && enemy -> color == RED) {
                if (wallHealth - 1 == 0) {
                    phaseTwo = 1;
                }
                REG_SND2CNT = DMG_ENV_VOL(6) | DMG_STEP_TIME(2);
                REG_SND2FREQ = NOTE_D3 | SND_RESET;
                enemy -> active = 0;
                wipe = 1;
                wallHealth--;
            }
        }

        if (collision(enemy -> x, enemy -> y, 5, 5, player.x - 10, player.y - 10, player.playerSide + 20, player.playerSide + 20)) {
            if (BUTTON_HELD(BUTTON_B)) {
                if (enemy -> holdsKey) {
                    drawKey = 1;
                }
                REG_SND2CNT = DMG_ENV_VOL(6) | DMG_STEP_TIME(2);
                REG_SND2FREQ = NOTE_G2 | SND_RESET;
                enemy -> active = 0;
                killWipe = 1;
                score++;
            }
        }

        if (collision(enemy -> x, enemy -> y, 5, 5, 100, 125, 45, 20)) {
            score = -1;
        }

        //direction determined by spawn location
        enemy -> oldX = enemy -> x;
        enemy -> oldY = enemy -> y;
        
        switch (enemy -> spawnLocation) {
            case 0:
                enemy -> x += (enemy -> speed) * 3;
                enemy -> y += (enemy -> speed) * 1;
                break;
            case 1:
                enemy -> x += (enemy -> speed) * 2;
                enemy -> y += (enemy -> speed) * 1;
                break;
            case 2:
                enemy -> y += (enemy -> speed) * 3;
                enemy -> x += (enemy -> speed) * 1;
                break;
            case 3:
                enemy -> y += (enemy -> speed) * 3;
                enemy -> x -= (enemy -> speed) * 1;
                break;
            case 4:
                enemy -> x -= (enemy -> speed) * 2;
                enemy -> y += (enemy -> speed) * 1;
                break;
            case 5:
                enemy -> x -= (enemy -> speed) * 3;
                enemy -> y += (enemy -> speed) * 1;
                break;
            default: 
                break;
        }
    }
}

void drawGame() {
    drawPlayer();
    if (wipe) {
        for (int i = 0; i < ENEMYCOUNT; i++) {
            wipeEnemies(&enemies[i]);
        }
        initEnemy();
        wipe = 0;

    } else if (killWipe == 1) {
        for (int i = 0; i < ENEMYCOUNT; i++) {
            wipeEnemies(&enemies[i]);
        }
        initEnemy();
        killWipe = 0;
    }
    
    else {
        for (int i = 0; i < ENEMYCOUNT; i++) {
                if (enemies[i].active == 1) {
                    drawEnemies(&enemies[i]);
                }
                
            }
    }
    drawScenery();
    drawChest();

    if (phaseTwo == 1) {
        drawRectangle(85, 95, 75, 65, GRASS);
        drawCrown();
        phaseTwo = 2;
    }

    if (drawKey == 1) {
        drawRectangle((SCREENWIDTH / 2) - 5, (SCREENHEIGHT / 2) - 25, 5, 5, YELLOW);
        drawKey = 0;
        keyActive = 1;
    }

    if (clearKey == 1) {
        drawRectangle((SCREENWIDTH / 2) - 5, (SCREENHEIGHT / 2) - 25, 5, 5, GRASS);
        clearKey = 0;
    }

}

void drawPlayer() {
    drawRectangle(player.oldX, player.oldY, player.playerSide, player.playerSide, GRASS);
    drawRectangle(player.x, player.y, player.playerSide, player.playerSide, player.color);
}

void drawEnemies(ENEMY* enemy) {
    if (enemy -> active == 1) {
    drawRectangle(enemy -> oldX, enemy -> oldY, 5, 5, GRASS);
    drawRectangle(enemy -> x, enemy -> y, 5, 5, enemy -> color);
    }
}

void wipeEnemies(ENEMY* enemy) {
    drawRectangle(enemy -> oldX, enemy -> oldY, 5, 5, GRASS);
}

void newEnemy() {
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if (enemies[i].active == 0) {
            enemies[i].active = 1;
            break;
        }
    }
}
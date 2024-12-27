#include "stateMachine.h"
#include "gba.h"
#include "mode0.h"
#include "mode4.h"
#include "sprites.h"
#include "print.h"
#include "tempStart.h"
#include "tempCONTROLS.h"
#include "tempLORE.h"
//#include "spritesheetTemp.h"
#include "mapTiles.h"
#include "tempMAP.h"
#include "game.h"
#include "dungeonMAP.h"
#include "dungeonTilestemp.h"
#include "boss.h"
#include "bossOne.h"
#include "player.h"
#include "tempWIN.h"
#include "tempLOSE.h"
#include "titleScreen.h"
#include "start.h"
#include "overWorld.h"
#include"overworldTiles.h"
#include "scroll.h"
#include "digitalSound.h"
#include "startTheme.h"
#include "pageTurn.h"
#include "lore1.h"
#include "lore2.h"
#include "startingWords.h"
#include "dungeonOneTiles.h"
#include "dungeonOne.h"
#include "bossOneMap.h"
#include "spriteSheet.h"
#include "postBossOne.h"
#include "postBossTwo.h"
#include "parallaxWin.h"
#include "frontPortion.h"
#include "backPortion.h"
#include "lose.h"
#include <stdlib.h>
#include <stdio.h>
#include "dungeonTwo.h"
#include "bossTwo.h"
#include "pauseScreen.h"
#include "treeLore.h"
#include "houseLore.h"

int lorePage;
int boss1Clear;
int boss2Clear;
int treeVisit;
int groundsKeeperVisit;
int hOff0;
int hOff1;
int frameCount;
int prevState;
int rSeed;
int keyActive;
int hasKey;
int secondKeyActive;
int hasSecondKey;
int stageOneClear;
int stageTwoClear;
int treeClear;
int houseClear;

void goToStart() {
    // dma start image, bg, pal, etc.
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    REG_DISPCTL |= SPRITE_ENABLE;
    flipPage();
    DMANow(3, spriteSheetTiles, &CHARBLOCK[5], spriteSheetTilesLen / 2);
    DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
    hideSprites();
    DMANow(3, titleScreenPal, BG_PALETTE, titleScreenPalLen / 2);
    drawFullscreenImage4(titleScreenBitmap);
    mgba_printf("START INITIALIZED");
    waitForVBlank();
    flipPage();
    
    state = START;
    initStart();
    boss1Clear = 0;
    boss2Clear = 0;
    treeVisit = 0;
    groundsKeeperVisit = 0;
    treeClear = 0;
    houseClear = 0;
    stageOneClear = 0;
    stageTwoClear = 0;
    hasKey = 0;
    hasSecondKey = 0;
    boss1Clear = 0;
    boss2Clear = 0;
    firstBoss.hide = 0;
    secondBoss.hide = 0;
    hasSword = 0;
    hasShield = 0;
    dungeonTwoCountdown = 0;
    dungeonOneCountdown = 0;
    cheatOne = 0;
    cheatTwo = 0;
}
void start() {
    rSeed++;
    updateStart();
    drawStart();
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSounds();
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToLore();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToInstructions();
    }
    if (cursor.selection == 1 && BUTTON_PRESSED(BUTTON_A)) {
        stopSounds();
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToLore();
    }
    if (cursor.selection == 2 && BUTTON_PRESSED(BUTTON_A)) {
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToInstructions();
    }
}

void goToInstructions() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    flipPage();
    // dma instructions bg/image
    // **TODO** eventually display text here...
    DMANow(3, scrollPal, BG_PALETTE, scrollPalLen / 2);
    drawFullscreenImage4(scrollBitmap);
    mgba_printf("CONTROLS INITIALIZED");
    waitForVBlank();
    flipPage();
    state = INSTRUCTIONS;
}
void instructions() {
    
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
}

void goToLore() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    hideSprites();
    flipPage();
    flipPage();
    DMANow(3, lore1Pal, BG_PALETTE, lore1PalLen / 2);
    drawFullscreenImage4(lore1Bitmap);
    mgba_printf("LORE INITIALIZED");
    waitForVBlank();
    flipPage();
    playSoundB(pageTurn_data, pageTurn_length, 0);
    lorePage = 0;

    srand(rSeed);

    state = LORE;
}
void lore() {
    // **TODO** look for button input, A will bring next page of lore, B will go to the previous page;
    //once on last page
    switch (lorePage) {
        case 0:
            if (BUTTON_PRESSED(BUTTON_A)) {
                playSoundB(pageTurn_data, pageTurn_length, 0);
                DMANow(3, lore2Pal, BG_PALETTE, lore2PalLen / 2);
                drawFullscreenImage4(lore2Bitmap);
                flipPage();
                lorePage = 1;
            }
            break;
        case 1:
            if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_START)) {
                playSoundB(pageTurn_data, pageTurn_length, 0);
                goToInitialDialogue();
            } else if (BUTTON_PRESSED(BUTTON_B)) {
                playSoundB(pageTurn_data, pageTurn_length, 0);
                DMANow(3, lore1Pal, BG_PALETTE, lore1PalLen / 2);
                drawFullscreenImage4(lore1Bitmap);
                flipPage();
                lorePage = 0;
            }
    }
}

void goToInitialDialogue() {
    flipPage();
    DMANow(3, startingWordsPal, BG_PALETTE, startingWordsPalLen / 2);
    drawFullscreenImage4(startingWordsBitmap);
    waitForVBlank();
    flipPage();
    state = INITIALDIALOGUE;
}

void initialDialogue() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        initMap();
        goToMap();
    }
}

void goToMap() {
    //change to mode 0
    //load in sprite sheet and BG stuff into OAM
    REG_DISPCTL = MODE(0) | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
    DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
    hideSprites();
    // DMANow(3, mapTilesPal, BG_PALETTE, mapTilesPalLen / 2);
    // DMANow(3, mapTilesTiles, &CHARBLOCK[0], mapTilesTilesLen / 2);
    // DMANow(3, tempMAPMap, &SCREENBLOCK[8], tempMAPMapLen / 2);
    DMANow(3, overworldTilesPal, BG_PALETTE, overworldTilesPalLen / 2);
    DMANow(3, overworldTilesTiles, &CHARBLOCK[0], overworldTilesTilesLen / 2);
    DMANow(3, overWorldMap, &SCREENBLOCK[8], overWorldMapLen / 2);
    mgba_printf("MAP INITIALIZED");
    state = MAP;
}
void map() {
    updateMap();
    waitForVBlank();
    drawMap();
    if (BUTTON_PRESSED(BUTTON_A) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 176, 48, 24, 8) && !stageOneClear) {
        hideSprites();
        prevState = MAP;
        initDungeonOne();
        goToDungeonOne();
        
    } else if (BUTTON_PRESSED(BUTTON_A) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 448, 104, 24, 8) && stageOneClear && !stageTwoClear) {
        hideSprites();
        prevState = MAP;
        initDungeonTwo();
        goToDungeonTwo();
    }

    if (BUTTON_PRESSED(BUTTON_A) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 8, 80, 24, 24) && boss1Clear && boss2Clear) {
        prevState = MAP;
        goToWin();
    }

    if (BUTTON_PRESSED(BUTTON_A && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 72, 64, 24, 16)) && !treeClear) {
        goToTree();
    }

    if (BUTTON_PRESSED(BUTTON_A) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 328, 96, 32, 16) && !houseClear) {
        goToHouse();
    }
}

void goToDungeonOne() {
    //dma in background for dungeon1
    REG_DISPCTL = MODE(0) | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    hideSprites();
    DMANow(3, dungeonOneTilesPal, BG_PALETTE, dungeonOneTilesPalLen / 2);
    DMANow(3, dungeonOneTilesTiles, &CHARBLOCK[0], dungeonOneTilesTilesLen / 2);
    DMANow(3, dungeonOneMap, &SCREENBLOCK[8], dungeonOneMapLen / 2);
    dungeonOneCountdown = -1;
    // DMANow(3, dungeonTilestempPal, BG_PALETTE, dungeonTilestempPalLen / 2);
    // DMANow(3, dungeonTilestempTiles, &CHARBLOCK[0], dungeonTilestempTilesLen / 2);
    // DMANow(3, dungeonMAPMap, &SCREENBLOCK[8], dungeonMAPMapLen / 2);
    
    
    mgba_printf("DUNGEON ONE INITIALIZED");
    state = DUNGEON1;
    
}
void dungeonOne() {
    updateDungeonOne();
    waitForVBlank();
    if (dungeonOneCountdown > -1) {
        if (dungeonOneCountdown == 180) {
            for (int i = 9; i <= 17; i++) {
                setTile(23, i, OFFSET(6, 7, 10) & 0x3FF, 8);
            }
            
            mgba_printf("this was done");
        } else if (dungeonOneCountdown == 120) {
            for (int i = 9; i <= 17; i++) {
                setTile(22, i, OFFSET(6, 7, 10) & 0x3FF, 8);
            }
            for (int i = 9; i <= 17; i++) {
                setTile(24, i, OFFSET(6, 7, 10) & 0x3FF, 8);
            }

        } else if (dungeonOneCountdown == 60) {

            for (int i = 9; i <= 17; i++) {
                setTile(21, i, OFFSET(6, 7, 10) & 0x3FF, 8);
            }
            for (int i = 9; i <= 17; i++) {
                setTile(25, i, OFFSET(6, 7, 10) & 0x3FF, 8);
            }

        } else if (dungeonOneCountdown == 0) {
            setTile(20, 17, OFFSET(3, 2, 10) & 0x3FF, 8);
            setTile(25, 17, OFFSET(3, 2, 10) & 0x3FF, 8);
            setTile(21, 17, OFFSET(4, 2, 10) & 0x3FF, 8);
            setTile(26, 17, OFFSET(4, 2, 10) & 0x3FF, 8);
        }

        dungeonOneCountdown--;
    }
    drawDungeonOne();
    if (BUTTON_PRESSED(BUTTON_A) && collision(player.x, player.y, 24, 24, 160, 64, 56, 64) && hasSword) {
        initPlayer();
        prevState = DUNGEON1;
        initBossOne();
        goToBossOne();
    }
}

void goToBossOne() {
    REG_DISPCTL = MODE(0) | BG0_ENABLE;
    REG_DISPCTL |= SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    //DMANow(3, spriteSheetTiles, &CHARBLOCK[5], spriteSheetTilesLen / 2);
    // DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
    DMANow(3, dungeonOneTilesPal, BG_PALETTE, dungeonOneTilesPalLen / 2);
    DMANow(3, dungeonOneTilesTiles, &CHARBLOCK[0], dungeonOneTilesTilesLen / 2);
    DMANow(3, bossOneMapMap, &SCREENBLOCK[8], bossOneMapMapLen / 2);
    if (boss1Clear) {
        keyActive = 1;
    }
    mgba_printf("BOSS ONE INITIALIZED");
    //initBossEncounter();
    
    state = BOSS1;
}
void bossOne() {
    updateBossEncounter();
    waitForVBlank();
    drawBossEncounter();
    if (player.lives <= 0) {
        goToLose();
    } else if (firstBoss.lives <= 0 && !boss1Clear) {
        boss1Clear = 1;
        firstBoss.hide = 1;
        goToBossOneText();
    } else if (boss1Clear) {

        if (BUTTON_PRESSED(BUTTON_A) && collision(player.x + 3, player.y + 3, player.width, player.height, 24, 128, 16, 16)) {
            hasKey = 1;
            keyActive = 0;
            for (int i = 25; i <= 26; i++) {
                for (int j = 15; j <= 18; j++) {
                    setTile(i, j, OFFSET(6, 7, 10) & 0x3FF, 8);
                }
            }
        }

        if (BUTTON_PRESSED(BUTTON_A) && collision(player.x + 3, player.y + 3, player.width, player.height, 192, 120, 24, 32) && hasKey) {
            stageOneClear = 1;
            goToMap();
        }
    }

    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_SELECT)) {
        prevState = BOSS1;
        goToPause();
    }
}

void goToBossOneText() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER | SPRITE_ENABLE;
    hideSprites();
    flipPage();
    DMANow(3, postBossOnePal, BG_PALETTE, postBossOnePalLen / 2);
    drawFullscreenImage4(postBossOneBitmap);
    mgba_printf("BOSS ONE TEXT INITIALIZED");
    waitForVBlank();
    flipPage();
    state = BOSSONETEXT;
}
void bossOneText() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
        DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
        goToBossOne();
    }
}

void goToDungeonTwo() {
    REG_DISPCTL = MODE(0) | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    hideSprites();
    DMANow(3, overworldTilesPal, BG_PALETTE, overworldTilesPalLen / 2);
    DMANow(3, overworldTilesTiles, &CHARBLOCK[0], overworldTilesTilesLen / 2);
    DMANow(3, dungeonTwoMap, &SCREENBLOCK[8], dungeonTwoMapLen / 2);
    state = DUNGEON2;
}
void dungeonTwo() {
    updateDungeonTwo();
    waitForVBlank();
    if (dungeonTwoCountdown > 0) {
        for (int i = 11; i <= 17; i++) {
            setTile(25, i, OFFSET(13, 23, 18) & 0x3FF, 8);
        }
        for (int i = 9; i <= 17; i++) {
            setTile(26, i, OFFSET(13, 23, 18) & 0x3FF, 8);
        }
        for (int i = 8; i <= 17; i++) {
            setTile(27, i, OFFSET(13, 23, 18) & 0x3FF, 8);
        }
        for (int i = 7; i <= 17; i++) {
            setTile(28, i, OFFSET(13, 23, 18) & 0x3FF, 8);
        }
        for (int i = 7; i <= 17; i++) {
            setTile(29, i, OFFSET(13, 23, 18) & 0x3FF, 8);
        }
    }
    drawDungeonTwo();
    if (BUTTON_PRESSED(BUTTON_A) && collision(player.x, player.y, 24, 24, 160, 64, 56, 64)) {
        initPlayer();
        initBossTwo();
        goToBossTwo();
    }
}

void goToBossTwo() {
    REG_DISPCTL = MODE(0) | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    // DMANow(3, spriteSheetTiles, &CHARBLOCK[5], spriteSheetTilesLen / 2);
    // DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
    DMANow(3, overworldTilesPal, BG_PALETTE, overworldTilesPalLen / 2);
    DMANow(3, overworldTilesTiles, &CHARBLOCK[0], overworldTilesTilesLen / 2);
    DMANow(3, bossTwoMap, &SCREENBLOCK[8], bossTwoMapLen / 2);
    mgba_printf("BOSS TWO INITIALIZED");
    if (boss2Clear) {
        secondKeyActive = 1;
    }
    state = BOSS2;
}
void bossTwo() {
    updateBossTwoEncounter();
    waitForVBlank();
    drawBossTwoEncounter();
    if (player.lives <= 0) {
        goToLose();
    } else if (secondBoss.lives <= 0 && !boss2Clear) {
        boss2Clear = 1;
        secondBoss.hide = 1;
        goToBossTwoText();
    } else if (boss2Clear) {
        if (BUTTON_PRESSED(BUTTON_A) && collision(player.x + 3, player.y + 3, player.width, player.height, 24, 128, 16, 16)) {
            hasSecondKey = 1;
            secondKeyActive = 0;
            // for (int i = 11; i <= 17; i++) {
            // setTile(25, i, OFFSET(13, 23, 18) & 0x3FF, 8);
            //}

            for (int x = 13; x <= 17; x++) {
                for (int y = 13; y <= 18; y++) {
                    setTile(x, y, OFFSET(13, 23, 18) & 0x3FF, 8);
                }
            }
        }
        if (BUTTON_PRESSED(BUTTON_A) && collision(player.x + 3, player.y + 3, player.width, player.height, 104, 112, 32, 32) && hasSecondKey) {
            stageTwoClear = 1;
            goToMap();
        }
    }

    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_SELECT)) {
        prevState = BOSS2;
        goToPause();
    }
}

void goToBossTwoText() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    flipPage();
    DMANow(3, postBossTwoPal, BG_PALETTE, postBossTwoPalLen / 2);
    drawFullscreenImage4(postBossTwoBitmap);
    mgba_printf("BOSS TWO TEXT INITIALIZED");
    waitForVBlank();
    flipPage();
    state = BOSSTWOTEXT;
}
void bossTwoText() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
        DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
        goToBossTwo();
    }
}

void goToWin() {
    // flipPage();
    // REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER | (1 << 12);
    // state = WIN;
    // mgba_printf("WIN INITIALIZED");
    // DMANow(3, tempWINPal, BG_PALETTE, tempWINPalLen / 2);
    // drawFullscreenImage4(tempWINBitmap);
    // waitForVBlank();
    // flipPage();

    REG_DISPCTL = MODE(0) | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    REG_BG1CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(24);
    DMANow(3, parallaxWinPal, BG_PALETTE, parallaxWinPalLen / 2);
    DMANow(3, parallaxWinTiles, &CHARBLOCK[0], parallaxWinTilesLen / 2);
    DMANow(3, frontPortionMap, &SCREENBLOCK[8], frontPortionMapLen / 2);
    DMANow(3, backPortionMap, &SCREENBLOCK[24], backPortionMapLen / 2);
    DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
    DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
    hideSprites();
    state = WIN;
    
}
void win() {
    frameCount++;
    if (frameCount % 160 == 0) {
        hOff0 ++;
        hOff1 += 4;
    }
    
    if (hOff0 > 512 - 240) {
        hOff0 = 0;
    }
    if (hOff0 > 512 -240) {
        hOff1 = 0;
    }
    
    REG_BG0HOFF = hOff0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = hOff1;
    REG_BG2VOFF = 0;
    //y
    shadowOAM[0].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[0].attr1 = ATTR1_TINY | ATTR1_X(48);
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 31);
    //o
    shadowOAM[1].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[1].attr1 = ATTR1_TINY | ATTR1_X(56);
    shadowOAM[1].attr2 = ATTR2_TILEID(1, 31);
    //u
    shadowOAM[2].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[2].attr1 = ATTR1_TINY | ATTR1_X(64);
    shadowOAM[2].attr2 = ATTR2_TILEID(2, 31);
    //w
    shadowOAM[3].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[3].attr1 = ATTR1_TINY | ATTR1_X(80);
    shadowOAM[3].attr2 = ATTR2_TILEID(3, 31);
    //i
    shadowOAM[4].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[4].attr1 = ATTR1_TINY | ATTR1_X(88);
    shadowOAM[4].attr2 = ATTR2_TILEID(4, 31);
    //n
    shadowOAM[5].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[5].attr1 = ATTR1_TINY | ATTR1_X(96);
    shadowOAM[5].attr2 = ATTR2_TILEID(5, 31);
    //!
    shadowOAM[6].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[6].attr1 = ATTR1_TINY | ATTR1_X(104);
    shadowOAM[6].attr2 = ATTR2_TILEID(6, 31);
    //.
    shadowOAM[7].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[7].attr1 = ATTR1_TINY | ATTR1_X(112);
    shadowOAM[7].attr2 = ATTR2_TILEID(11, 31);
    //.
    shadowOAM[8].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[8].attr1 = ATTR1_TINY | ATTR1_X(120);
    shadowOAM[8].attr2 = ATTR2_TILEID(11, 31);
    //p
    shadowOAM[9].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[9].attr1 = ATTR1_TINY | ATTR1_X(136);
    shadowOAM[9].attr2 = ATTR2_TILEID(12, 31);
    //r
    shadowOAM[10].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[10].attr1 = ATTR1_TINY | ATTR1_X(144);
    shadowOAM[10].attr2 = ATTR2_TILEID(13, 31);
    //e
    shadowOAM[11].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[11].attr1 = ATTR1_TINY | ATTR1_X(152);
    shadowOAM[11].attr2 = ATTR2_TILEID(9, 31);
    //s
    shadowOAM[12].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[12].attr1 = ATTR1_TINY | ATTR1_X(160);
    shadowOAM[12].attr2 = ATTR2_TILEID(14, 31);
    //s
    shadowOAM[13].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[13].attr1 = ATTR1_TINY | ATTR1_X(168);
    shadowOAM[13].attr2 = ATTR2_TILEID(14, 31);
    //s
    shadowOAM[14].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[14].attr1 = ATTR1_TINY | ATTR1_X(184);
    shadowOAM[14].attr2 = ATTR2_TILEID(14, 31);
    //t
    shadowOAM[15].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[15].attr1 = ATTR1_TINY | ATTR1_X(192);
    shadowOAM[15].attr2 = ATTR2_TILEID(7, 31);
    //a
    shadowOAM[16].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[16].attr1 = ATTR1_TINY | ATTR1_X(200);
    shadowOAM[16].attr2 = ATTR2_TILEID(15, 31);
    //r
    shadowOAM[17].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[17].attr1 = ATTR1_TINY | ATTR1_X(208);
    shadowOAM[17].attr2 = ATTR2_TILEID(13, 31);
    //t
    shadowOAM[18].attr0 = ATTR0_SQUARE | ATTR0_Y(120);
    shadowOAM[18].attr1 = ATTR1_TINY | ATTR1_X(216);
    shadowOAM[18].attr2 = ATTR2_TILEID(7, 31);
    //t
    shadowOAM[19].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[19].attr1 = ATTR1_TINY | ATTR1_X(48);
    shadowOAM[19].attr2 = ATTR2_TILEID(7, 31);
    //o
    shadowOAM[20].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[20].attr1 = ATTR1_TINY | ATTR1_X(56);
    shadowOAM[20].attr2 = ATTR2_TILEID(1, 31);
    //r
    shadowOAM[21].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[21].attr1 = ATTR1_TINY | ATTR1_X(72);
    shadowOAM[21].attr2 = ATTR2_TILEID(13, 31);
    //e
    shadowOAM[22].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[22].attr1 = ATTR1_TINY | ATTR1_X(80);
    shadowOAM[22].attr2 = ATTR2_TILEID(9, 31);
    //t
    shadowOAM[23].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[23].attr1 = ATTR1_TINY | ATTR1_X(88);
    shadowOAM[23].attr2 = ATTR2_TILEID(7, 31);
    //u
    shadowOAM[24].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[24].attr1 = ATTR1_TINY | ATTR1_X(96);
    shadowOAM[24].attr2 = ATTR2_TILEID(2, 31);
    //r
    shadowOAM[25].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[25].attr1 = ATTR1_TINY | ATTR1_X(104);
    shadowOAM[25].attr2 = ATTR2_TILEID(13, 31);
    //n
    shadowOAM[26].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[26].attr1 = ATTR1_TINY | ATTR1_X(112);
    shadowOAM[26].attr2 = ATTR2_TILEID(5, 31);
    //t
    shadowOAM[27].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[27].attr1 = ATTR1_TINY | ATTR1_X(128);
    shadowOAM[27].attr2 = ATTR2_TILEID(7, 31);
    //o
    shadowOAM[28].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[28].attr1 = ATTR1_TINY | ATTR1_X(136);
    shadowOAM[28].attr2 = ATTR2_TILEID(1, 31);
    //t
    shadowOAM[29].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[29].attr1 = ATTR1_TINY | ATTR1_X(152);
    shadowOAM[29].attr2 = ATTR2_TILEID(7, 31);
    //h
    shadowOAM[30].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[30].attr1 = ATTR1_TINY | ATTR1_X(160);
    shadowOAM[30].attr2 = ATTR2_TILEID(8, 31);
    //e
    shadowOAM[31].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[31].attr1 = ATTR1_TINY | ATTR1_X(168);
    shadowOAM[31].attr2 = ATTR2_TILEID(9, 31);
    //m
    shadowOAM[32].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[32].attr1 = ATTR1_TINY | ATTR1_X(184);
    shadowOAM[32].attr2 = ATTR2_TILEID(16, 31);
    //a
    shadowOAM[33].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[33].attr1 = ATTR1_TINY | ATTR1_X(192);
    shadowOAM[33].attr2 = ATTR2_TILEID(15, 31);
    //i
    shadowOAM[34].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[34].attr1 = ATTR1_TINY | ATTR1_X(200);
    shadowOAM[34].attr2 = ATTR2_TILEID(4, 31);
    //n
    shadowOAM[35].attr0 = ATTR0_SQUARE | ATTR0_Y(128);
    shadowOAM[35].attr1 = ATTR1_TINY | ATTR1_X(208);
    shadowOAM[35].attr2 = ATTR2_TILEID(5, 31);
    //m
    shadowOAM[36].attr0 = ATTR0_SQUARE | ATTR0_Y(136);
    shadowOAM[36].attr1 = ATTR1_TINY | ATTR1_X(48);
    shadowOAM[36].attr2 = ATTR2_TILEID(16, 31);
    //e
    shadowOAM[37].attr0 = ATTR0_SQUARE | ATTR0_Y(136);
    shadowOAM[37].attr1 = ATTR1_TINY | ATTR1_X(56);
    shadowOAM[37].attr2 = ATTR2_TILEID(9, 31);
    //n
    shadowOAM[38].attr0 = ATTR0_SQUARE | ATTR0_Y(136);
    shadowOAM[38].attr1 = ATTR1_TINY | ATTR1_X(64);
    shadowOAM[38].attr2 = ATTR2_TILEID(5, 31);
    //u
    shadowOAM[39].attr0 = ATTR0_SQUARE | ATTR0_Y(136);
    shadowOAM[39].attr1 = ATTR1_TINY | ATTR1_X(72);
    shadowOAM[39].attr2 = ATTR2_TILEID(2, 31);

    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {
        playSoundA(startTheme_data, startTheme_length, 1);
        hideSprites();
        goToStart();
    }
}

void goToLose() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    flipPage();
    state = LOSE;
    mgba_printf("LOSE INITALIZED");
    DMANow(3, losePal, BG_PALETTE, losePalLen / 2);
    drawFullscreenImage4(loseBitmap);
    waitForVBlank();
    flipPage();
}
void lose() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        playSoundA(startTheme_data, startTheme_length, 1);
        goToStart();
    }
}

void goToPause() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    flipPage();
    state = PAUSE;
    mgba_printf("pause INITALIZED");
    DMANow(3, pauseScreenPal, BG_PALETTE, pauseScreenPalLen / 2);
    drawFullscreenImage4(pauseScreenBitmap);
    waitForVBlank();
    flipPage();
}
void pause() {
    if (BUTTON_PRESSED(BUTTON_START) && prevState == BOSS1) {
        DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
        DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
        goToBossOne();
    } else if (BUTTON_PRESSED(BUTTON_START) && prevState == BOSS2) {
        DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
        DMANow(3, spriteSheetPal, SPRITE_PALETTE, spriteSheetPalLen / 2);
        goToBossTwo();
    }
}

void goToTree() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    flipPage();
    state = TREE;
    mgba_printf("tree INITALIZED");
    DMANow(3, treeLorePal, BG_PALETTE, treeLorePalLen / 2);
    drawFullscreenImage4(treeLoreBitmap);
    waitForVBlank();
    flipPage();
}
void tree() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        treeClear = 1;
        goToMap();
    }
}

void goToHouse() {
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;
    flipPage();
    state = HOUSE;
    mgba_printf("house INITALIZED");
    DMANow(3, houseLorePal, BG_PALETTE, houseLorePalLen / 2);
    drawFullscreenImage4(houseLoreBitmap);
    waitForVBlank();
    flipPage();
}
void house() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        houseClear = 1;
        goToMap();
    }
}
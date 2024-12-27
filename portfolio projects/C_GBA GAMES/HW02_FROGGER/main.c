#include "gba.h"
#include "print.h"

///////////////////////////////////
//curr log/car vars
///////////////////////////////////
int LA1;
int LA2;
int LA3;

int LB1;
int LB2;
int LB3;

int LC1;
int LC2;

int A1;
int A2;

int B1;
int B2;
int B3;

int C1;
int C2;

//////////////////////////////////////
//old log/car vars
//////////////////////////////////////

int oldLA1;
int oldLA2;
int oldLA3;

int oldLB1;
int oldLB2;
int oldLB3;

int oldLC1;
int oldLC2;

int oldA1;
int oldA2;

int oldB1;
int oldB2;
int oldB3;

int oldC1;
int oldC2;

//////////////////////////
//function prototypes
/////////////////////////

void initialize();
void drawGame();
void updateGame();
void goToStart();
void goToGame();
void goToWin();
void goToLose();
void drawLog(int, int, u16);
void drawCar(int, int, u16);


enum STATE {START, GAME, WIN, LOSE} state;

u16 oldButtons;
u16 buttons;
int frameCounter;
int lives;
int win;
int logs;
int pX;
int pY;
int oldPX;
int oldPY;


int main() {

    initialize();

    while (1) {

        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state) {
            case START: {
                waitForVBlank();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToGame();
                }
                break;
            }
                
            case GAME: {
                updateGame();
                waitForVBlank();
                drawGame();
                if (win) {
                    goToWin();
                }
                if (lives == 0) {
                    goToLose();
                }
                break;
            }
                
            case WIN:{
                waitForVBlank();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToStart();
                }
                break;
            }
                
            case LOSE: {
                 waitForVBlank();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToStart();
                }
                break;
            }
               
            default: {
                mgba_printf("something is wrong with your states... :()");
            }  
        }
    }
    
    return 0;

}


void initialize() {
    mgba_open();
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    goToStart();
}

void drawGame() {

    ////////////
    //old
    ////////////

    drawLog(oldLA1, 30, BLUE);
    drawLog(oldLA2, 30, BLUE);
    drawLog(oldLA3, 30, BLUE);

    drawLog(oldLB1, 44, BLUE);
    drawLog(oldLB2, 44, BLUE);
    drawLog(oldLB3, 44, BLUE);

    drawLog(oldLC1, 58, BLUE);
    drawLog(oldLC2, 58, BLUE);

    drawCar(oldA1, 87, GRAY);
    drawCar(oldA2, 87, GRAY);

    drawCar(oldB1, 101, GRAY);
    drawCar(oldB2, 101, GRAY);
    drawCar(oldB3, 101, GRAY);

    drawCar(oldC1, 115, GRAY);
    drawCar(oldC2, 115, GRAY); 

    ///////////////
    //curr
    //////////////

    drawLog(LA1, 30, BROWN);
    drawLog(LA2, 30, BROWN);
    drawLog(LA3, 30, BROWN);

    drawLog(LB1, 44, BROWN);
    drawLog(LB2, 44, BROWN);
    drawLog(LB3, 44, BROWN);

    drawLog(LC1, 58, BROWN);
    drawLog(LC2, 58, BROWN);

    drawCar(A1, 87, RED);
    drawCar(A2, 87, YELLOW);

    drawCar(B1, 101, BLUE);
    drawCar(B2, 101, RED);
    drawCar(B3, 101, YELLOW);

    drawCar(C1, 115, RED);
    drawCar(C2, 115, BLUE);

    u16 color; 

    if (oldPY == 129 || oldPY == 73 || oldPY == 17) {
        color = BROWN;
    }
    if (oldPY == 115 || oldPY == 101 || oldPY == 87) {
        color = GRAY;
    }
    if (oldPY == 59 || oldPY == 45 ||  oldPY == 31) {
        color = BLUE;
    }

    drawRectangle(oldPX, oldPY, 8, 8, color);
    drawRectangle(pX, pY, 8, 8, GREEN);

    if (lives == 2) {
        drawRectangle(25, 5, 5, 5, GREEN);
    }
    if (lives == 1) {
        drawRectangle(15, 5, 5, 5, GREEN);
        drawRectangle(25, 5, 5, 5, GREEN);
    }
    oldPX = pX;
    oldPY = pY;

    oldLA1 = LA1;
    oldLA2 = LA2;
    oldLA3 = LA3;
    oldLB1 = LB1;
    oldLB2 = LB2;
    oldLB3 = LB3;
    oldLC1 = LC1;
    oldLC2 = LC2;
    oldA1 = A1;
    oldA2 = A2;
    oldB1 = B1;
    oldB2 = B2;
    oldB3 = B3;
    oldC1 = C1;
    oldC2 = C2;


}

void updateGame() {

    ///////////////
    //player movement
    /////////////////
   
    if (BUTTON_PRESSED(BUTTON_UP) && pY > 11) {
        pY -= 14;
    }
    if (BUTTON_PRESSED(BUTTON_DOWN) && pY < 123) {
        pY += 14;
    }
    if (BUTTON_PRESSED(BUTTON_LEFT) && pX > 13) {
        pX -= 13;
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT) && pX < 221) {
        pX += 13;
    }

    if (pX < 0 || pX > 252) {
        pX = 117;
        pY = 129;
        lives--;
    }

    ////////////////////
    //log car movement
    /////////////////////

    LA1++;
    if (LA1 > 225) {
        LA1 = 0;
    }
    LA2++;
    if (LA2 > 225) {
        LA2 = 0;
    }
    LA3++;
    if (LA3 > 225) {
        LA3 = 0;
    }
    LB1--;
    if (LB1 < 0) {
        LB1 = 225;
    }
    LB2--;
    if (LB2 < 0) {
        LB2 = 225;
    }
    LB3--;
    if (LB3 < 0) {
        LB3 = 225;
    }
    LC1++;
    if (LC1 > 225) {
        LC1 = 0;
    }
    LC2++;
    if (LC2 > 225) {
        LC2 = 0;
    }

    A1--;
    if (A1 < 0) {
        A1 = 225;
    }
    A2--;
    if (A2 < 0) {
        A2 = 225;
    }
    B1++;
    if (B1 > 225) {
        B1 = 0;
    }
    B2++;
    if (B2 > 225) {
        B2 = 0;
    }
    B3++;
    if (B3 > 225) {
        B3 = 0;
    }
    C1--;
    if (C1 < 0) {
        C1 = 225;
    }
    C2--;
    if (C2 < 0) {
        C2 = 225;
    }

    ///////////////
    //collisions
    ///////////////

    //cars
    if (collision(pX, pY, 8, 8, A1, 87, 10, 7) ||
        collision(pX, pY, 8, 8, A2, 87, 10, 7) ||
        collision(pX, pY, 8, 8, B1, 101, 10, 7) ||
        collision(pX, pY, 8, 8, B2, 101, 10, 7) ||
        collision(pX, pY, 8, 8, B3, 101, 10, 7) ||
        collision(pX, pY, 8, 8, C1, 115, 10, 7) ||
        collision(pX, pY, 8, 8, C2, 115, 10, 7))
        {
            pX = 117;
            pY = 129;
            lives--;
    }

    //logs
    if (collision(pX, pY, 8, 8, LB1, 44, 14, 8) || collision(pX, pY, 8, 8, LB2, 44, 14, 8 ) || collision(pX, pY, 8, 8, LB3, 44, 14, 8)) {
        pX--;
    }
    else if (collision(pX, pY, 8, 8, LA1, 30, 14, 8) || collision(pX, pY, 8, 8, LA2, 30, 14, 8) || collision(pX, pY, 8, 8, LA3, 30, 14, 8)) {
        pX++;
    } else if (collision(pX, pY, 8, 8, LC1, 58, 14, 8) || collision(pX, pY, 8, 8, LC2, 58, 14, 8)) {
        pX++;
    }
    else if (collision(pX, pY, 8, 8, 0, 28, 240, 42)) {
        pX = 117;
        pY = 129;
        lives--;
    }


    //do if statements for left
    //then do else if for top right
    //then else if for bottom right
    //then else if for water


    //win   
    if (collision(pX, pY, 8, 8, 0, 0, 260, 14)) {
        win = 1;
    }

}

void goToStart() {
    state = START;
    drawRectangle(0, 0, 260, 140, YELLOW);
    drawRectangle(88, 35, 8, 31, BLACK);
    drawRectangle(109, 35, 8, 31, BLACK);
    drawRectangle(78, 88, 46, 10, BLACK);
    drawRectangle(124, 69, 10, 20, BLACK);
    drawRectangle(68, 69, 10, 20, BLACK);
}

void goToGame() {

    state = GAME;
    lives = 3;  
    win = 0;
    pX = 117;
    pY = 129;
    oldPX = pX;
    oldPY = pY;

    LA1 = 0;
    LA2 = 40;
    LA3 = 100;
    LB1 = 40;
    LB2 = 80;
    LB3 = 120;
    LC1 = 3;
    LC2 = 100;
    A1 = 0;
    A2 = 70;
    B1 = 30;
    B2 = 60;
    B3 = 110;
    C1 = 40;
    C2 = 130;

    oldLA1 = 0;
    oldLA2 = 20;
    oldLA3 = 70;
    oldLB1 = 40;
    oldLB2 = 80;
    oldLB3 = 120;
    oldLC1 = 3;
    oldLC2 = 100;
    oldA1 = 0;
    oldA2 = 70;
    oldB1 = 30;
    oldB2 = 60;
    oldB3 = 110;
    oldC1 = 40;
    oldC2 = 130;

    

    drawBG();
}

void goToWin() {
    state = WIN;
    drawRectangle(0, 0, 260, 140, GREEN);
}

void goToLose() {
    state = LOSE;
    drawRectangle(0, 0, 260, 140, RED);
}

void drawLog(int x, int y, u16 color) {
    drawRectangle(x, y, 14, 8, color);
}

void drawCar(int x, int y, u16 color) {
    drawRectangle(x, y, 10, 7, color);
}
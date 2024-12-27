# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1



void drawBG();







typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 30 "gba.h"
extern volatile unsigned short* videoBuffer;
# 42 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 62 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 78 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;





typedef struct {
    u16 color;
    int x;
    int y;
    int oldX;
} LOG;

typedef struct {
    u16 color;
    int x;
    int y;
    int oldX;
} CAR;
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2




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
        buttons = (*(volatile unsigned short *)0x04000130);

        switch (state) {
            case START: {
                waitForVBlank();
                if ((((~buttons & (1<<3)) && !(~oldButtons & (1<<3))))) {
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
                if ((((~buttons & (1<<3)) && !(~oldButtons & (1<<3))))) {
                    goToStart();
                }
                break;
            }

            case LOSE: {
                 waitForVBlank();
                if ((((~buttons & (1<<3)) && !(~oldButtons & (1<<3))))) {
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
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | ((1 << (8 + ((2) % 4))));
    goToStart();
}

void drawGame() {





    drawLog(oldLA1, 30, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawLog(oldLA2, 30, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawLog(oldLA3, 30, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));

    drawLog(oldLB1, 44, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawLog(oldLB2, 44, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawLog(oldLB3, 44, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));

    drawLog(oldLC1, 58, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawLog(oldLC2, 58, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));

    drawCar(oldA1, 87, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawCar(oldA2, 87, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));

    drawCar(oldB1, 101, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawCar(oldB2, 101, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawCar(oldB3, 101, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));

    drawCar(oldC1, 115, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawCar(oldC2, 115, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));





    drawLog(LA1, 30, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawLog(LA2, 30, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawLog(LA3, 30, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));

    drawLog(LB1, 44, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawLog(LB2, 44, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawLog(LB3, 44, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));

    drawLog(LC1, 58, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawLog(LC2, 58, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));

    drawCar(A1, 87, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawCar(A2, 87, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));

    drawCar(B1, 101, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawCar(B2, 101, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawCar(B3, 101, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));

    drawCar(C1, 115, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawCar(C2, 115, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));

    u16 color;

    if (oldPY == 129 || oldPY == 73 || oldPY == 17) {
        color = (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10);
    }
    if (oldPY == 115 || oldPY == 101 || oldPY == 87) {
        color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);
    }
    if (oldPY == 59 || oldPY == 45 || oldPY == 31) {
        color = (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10);
    }

    drawRectangle(oldPX, oldPY, 8, 8, color);
    drawRectangle(pX, pY, 8, 8, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));

    if (lives == 2) {
        drawRectangle(25, 5, 5, 5, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    }
    if (lives == 1) {
        drawRectangle(15, 5, 5, 5, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
        drawRectangle(25, 5, 5, 5, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
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





    if ((((~buttons & (1<<6)) && !(~oldButtons & (1<<6)))) && pY > 11) {
        pY -= 14;
    }
    if ((((~buttons & (1<<7)) && !(~oldButtons & (1<<7)))) && pY < 123) {
        pY += 14;
    }
    if ((((~buttons & (1<<5)) && !(~oldButtons & (1<<5)))) && pX > 13) {
        pX -= 13;
    }
    if ((((~buttons & (1<<4)) && !(~oldButtons & (1<<4)))) && pX < 221) {
        pX += 13;
    }

    if (pX < 0 || pX > 252) {
        pX = 117;
        pY = 129;
        lives--;
    }





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
# 374 "main.c"
    if (collision(pX, pY, 8, 8, 0, 0, 260, 14)) {
        win = 1;
    }

}

void goToStart() {
    state = START;
    drawRectangle(0, 0, 260, 140, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(88, 35, 8, 31, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(109, 35, 8, 31, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(78, 88, 46, 10, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(124, 69, 10, 20, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(68, 69, 10, 20, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
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
    drawRectangle(0, 0, 260, 140, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}

void goToLose() {
    state = LOSE;
    drawRectangle(0, 0, 260, 140, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
}

void drawLog(int x, int y, u16 color) {
    drawRectangle(x, y, 14, 8, color);
}

void drawCar(int x, int y, u16 color) {
    drawRectangle(x, y, 10, 7, color);
}

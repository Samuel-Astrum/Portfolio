# 1 "gba.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gba.c"
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
# 2 "gba.c" 2

volatile unsigned short* videoBuffer = (unsigned short *)0x6000000;

void drawRectangle(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            (videoBuffer[((y + j) * (240) + (x + i))] = color);
        }
    }
}

void fillScreen(unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) >= 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int xA, int yA, int widthA, int heightA, int xB, int yB, int widthB, int heightB) {
    return yA <= yB + heightB - 1 && yA + heightA - 1 >= yB && xA <= xB + widthB - 1 && xA + widthA - 1 >= xB;
}

void drawBG() {

    drawRectangle(0, 0, 260, 14, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(0, 14, 260, 14, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawRectangle(0, 28, 260, 14, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawRectangle(0, 42, 260, 14, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawRectangle(0, 56, 260, 14, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawRectangle(0, 70, 260, 14, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawRectangle(0, 84, 260, 14, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawRectangle(0, 98, 260, 14, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawRectangle(0, 112, 260, 14, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawRectangle(0, 126, 260, 14, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
    drawRectangle(5, 5, 5, 5, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(15, 5, 5, 5, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(25, 5, 5, 5, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));

}

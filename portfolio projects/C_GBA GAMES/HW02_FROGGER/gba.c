#include "gba.h"

volatile unsigned short* videoBuffer = (unsigned short *)0x6000000;

void drawRectangle(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            setPixel(x + i, y + j, color);
        }
    }
}

void fillScreen(unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}

int collision(int xA, int yA, int widthA, int heightA, int xB, int yB, int widthB, int heightB) {
    return yA <= yB + heightB - 1 && yA + heightA - 1 >= yB && xA <= xB + widthB - 1 && xA + widthA - 1 >= xB;
}

void drawBG() {
    //10 rows, 14 pixels tall
    drawRectangle(0, 0, 260, 14, GREEN);
    drawRectangle(0, 14, 260, 14, BROWN);
    drawRectangle(0, 28, 260, 14, BLUE);
    drawRectangle(0, 42, 260, 14, BLUE);
    drawRectangle(0, 56, 260, 14, BLUE);
    drawRectangle(0, 70, 260, 14, BROWN);
    drawRectangle(0, 84, 260, 14, GRAY);
    drawRectangle(0, 98, 260, 14, GRAY);
    drawRectangle(0, 112, 260, 14, GRAY);
    drawRectangle(0, 126, 260, 14, BROWN);
    drawRectangle(5, 5, 5, 5, RED);
    drawRectangle(15, 5, 5, 5, RED);
    drawRectangle(25, 5, 5, 5, RED);

}


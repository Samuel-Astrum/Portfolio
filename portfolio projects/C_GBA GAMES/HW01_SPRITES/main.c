#include "gba.h"
#include "print.h"

// Function Prototypes
void initialize();
void updateGame();
void drawGame();

unsigned short oldButtons;
unsigned short buttons;

int frame;
int lastFrame;

int speed = 1;

int start = 0;
int select = 0;




int main() {
    buttons = REG_BUTTONS;
    oldButtons = buttons;
    initialize();

    while (1) {

        oldButtons = buttons;
        buttons = REG_BUTTONS;
        updateGame();
        waitForVBlank();
        drawGame();
    }

    return 0;

}

void initialize() {
    mgba_open();        
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    //initialize buttons
    //add background color
    fillScreen(BG_COLOR);
    frame = 1;
    lastFrame = frame;
    drawPipe();

}

#define FRAME_DELAY 5 
int frameCount = 0;

void updateGame() {
    //check if select is toggled, adjust vars
    //check for if start is toggled, adjust vars
    //if start is toggled, increment frame
    //if not toggled, check buttons A, B, LEFT, RIGHT


            if (BUTTON_PRESSED(BUTTON_SELECT)) {
            if (select == 0) {
                select = 1;
            } else {
                select = 0;
            }
        } else {
            if (BUTTON_PRESSED(BUTTON_START)) {
                if (start == 0) {
                    start = 1;
                } else {
                start = 0;
                }
            }
        }

        if (start == 1) {
            if (frameCount > FRAME_DELAY * speed) {
                frameCount = 0;
                if (select == 0) {
                    lastFrame = frame;
                    frame++;
                    if (frame > 5) {
                        frame = 1;
                    }
                } else {
                    lastFrame = frame;
                    frame--;
                    if (frame < 1) {
                        frame = 5;
                    }
                }
            }
            frameCount++;
        }  else {
            if (BUTTON_PRESSED(BUTTON_A)) {
                lastFrame = frame;
                frame++;
                if (frame > 5) {
                    frame = 1;
                }
            } else if (BUTTON_PRESSED(BUTTON_B)) {
                lastFrame = frame;
                frame--;
                if (frame < 1) {
                    frame = 5;
                }
            }
        }

        if (BUTTON_PRESSED(BUTTON_LEFT)) {
            lastFrame = frame;
            frame = 1;
        }

        if (BUTTON_PRESSED(BUTTON_RIGHT)) {
            lastFrame = frame;
            frame = 5;
        }

        if (BUTTON_PRESSED(BUTTON_DOWN)) {
            speed++;
            if (speed > 5) {
                speed = 5;
            }
        }
        
        if (BUTTON_PRESSED(BUTTON_UP)) {
            speed--;
            if (speed < 1) {
                speed = 1;
            }
        }
}

void drawGame() {
    switch(frame) {
        case 1: 
            switch (lastFrame) {
                case 1:
                    clearFrame1();
                    break;
                case 2:
                    clearFrame2();
                    break;
                case 3: 
                    clearFrame3();
                    break;
                case 4:
                    clearFrame4();
                    break;
                case 5:
                    clearFrame5();
                    break;
                default: mgba_printf("something went wrong, check frame clear methods");
            }
            frame1();
            break;
        case 2:
            switch (lastFrame) {
                case 1:
                    clearFrame1();
                    break;
                case 2:
                    clearFrame2();
                    break;
                case 3: 
                    clearFrame3();
                    break;
                case 4:
                    clearFrame4();
                    break;
                case 5:
                    clearFrame5();
                    break;
                default: mgba_printf("something went wrong, check frame clear methods");
            }
            frame2();
            break;
        case 3:
            switch (lastFrame) {
                case 1:
                    clearFrame1();
                    break;
                case 2:
                    clearFrame2();
                    break;
                case 3: 
                    clearFrame3();
                    break;
                case 4:
                    clearFrame4();
                    break;
                case 5:
                    clearFrame5();
                    break;
                default: mgba_printf("something went wrong, check frame clear methods");
            }
            frame3();
            break;
        case 4:
            switch (lastFrame) {
                case 1:
                    clearFrame1();
                    break;
                case 2:
                    clearFrame2();
                    break;
                case 3: 
                    clearFrame3();
                    break;
                case 4:
                    clearFrame4();
                    break;
                case 5:
                    clearFrame5();
                    break;
                default: mgba_printf("something went wrong, check frame clear methods");
            }
            frame4();
            break;
        case 5:
            switch (lastFrame) {
                case 1:
                    clearFrame1();
                    break;
                case 2:
                    clearFrame2();
                    break;
                case 3: 
                    clearFrame3();
                    break;
                case 4:
                    clearFrame4();
                    break;
                case 5:
                    clearFrame5();
                    break;
                default: mgba_printf("something went wrong, check frame clear methods");
            }
            frame5();
            break;
        default:
            mgba_printf("something went wrong, check ur frame count code");
    }
}
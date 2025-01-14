# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1
# 42 "gba.h"
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short* videoBuffer;


void waitForVBlank();
void drawHorizontalLine(int, int, int, u16);
void drawVerticalLine(int, int, int, u16);
void drawRectangle(int, int, int, int, u16);
void fillScreen(u16);
void frame1();
void frame2();
void frame3();
void frame4();
void frame5();
void head1();
void head2();
void head3();
void head4();
void topMid1();
void topMid2();
void topMid3();
void clearFrame1();
void clearFrame2();
void clearFrame3();
void clearFrame4();
void clearFrame5();
void drawPipe();

void music();
void shadow1();
void shadow2();
void shadow3();

void clearScreen();
# 104 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
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
    buttons = (*(volatile unsigned short *)0x04000130);
    oldButtons = buttons;
    initialize();

    while (1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
        updateGame();
        waitForVBlank();
        drawGame();
    }

    return 0;

}

void initialize() {
    mgba_open();
    (*(volatile unsigned short *) 0x04000000) = ((3) & 7) | (1 << 10);


    fillScreen((((31) & 31) | (((25) & 31) << 5) | (((15) & 31) << 10)));
    frame = 1;
    lastFrame = frame;
    drawPipe();

}


int frameCount = 0;

void updateGame() {






            if ((!(~(oldButtons) & (1 << 2)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 2))))) {
            if (select == 0) {
                select = 1;
            } else {
                select = 0;
            }
        } else {
            if ((!(~(oldButtons) & (1 << 3)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 3))))) {
                if (start == 0) {
                    start = 1;
                } else {
                start = 0;
                }
            }
        }

        if (start == 1) {
            if (frameCount > 5 * speed) {
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
        } else {
            if ((!(~(oldButtons) & (1 << 0)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 0))))) {
                lastFrame = frame;
                frame++;
                if (frame > 5) {
                    frame = 1;
                }
            } else if ((!(~(oldButtons) & (1 << 1)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 1))))) {
                lastFrame = frame;
                frame--;
                if (frame < 1) {
                    frame = 5;
                }
            }
        }

        if ((!(~(oldButtons) & (1 << 5)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))))) {
            lastFrame = frame;
            frame = 1;
        }

        if ((!(~(oldButtons) & (1 << 4)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))))) {
            lastFrame = frame;
            frame = 5;
        }

        if ((!(~(oldButtons) & (1 << 7)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 7))))) {
            speed++;
            if (speed > 5) {
                speed = 5;
            }
        }

        if ((!(~(oldButtons) & (1 << 6)) && (~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))))) {
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

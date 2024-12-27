# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 98 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];

struct attr0 {
  u16 regular;
  u16 affine;
  u16 hide;
  u16 double_affine;
  u16 enable_alpha;
  u16 enable_window;
  u16 enable_mosaic;
  u16 fourBpp;
  u16 eightBpp;
  u16 square;
  u16 wide;
  u16 tall;
};

struct attr1 {
  u16 hflip;
  u16 vflip;
  u16 tiny;
  u16 small;
  u16 medium;
  u16 large;
};

struct oam_attrs {
  struct attr0 attr0;
  struct attr1 attr1;
};
# 93 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    int alive;
    int isJumping;
    int jumpCount;
    int bubble;
    int fruit;
    u8 oamIndex;
} SPRITE;

typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    int foodCollected;
    int isJumping;
    int lives;
    u8 oamIndex;
} PLAYERSPRITE;

typedef struct {
    int x;
    int y;
    int xVel;
    int width;
    int height;
    int timeAlive;
    int active;
    int bubbleIndex;
    u8 oamIndex;
} BUBBLE;
# 4 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
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
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 6 "main.c" 2
# 1 "startTILES.h" 1
# 21 "startTILES.h"
extern const unsigned short startTILESTiles[48];


extern const unsigned short startTILESPal[256];
# 7 "main.c" 2
# 1 "startTILEMAP.h" 1







extern const unsigned short startTILEMAPMap[1024];
# 8 "main.c" 2
# 1 "analogSound.h" 1
# 257 "analogSound.h"
enum note {

  REST = 0,
  NOTE_C2 =44,
  NOTE_CS2 =157,
  NOTE_D2 =263,
  NOTE_DS2 =363,
  NOTE_E2 =457,
  NOTE_F2 =547,
  NOTE_FS2 =631,
  NOTE_G2 =711,
  NOTE_GS2 =786,
  NOTE_A2 =856,
  NOTE_AS2 =923,
  NOTE_B2 =986,
  NOTE_C3 =1046,
  NOTE_CS3 =1102,
  NOTE_D3 =1155,
  NOTE_DS3 =1205,
  NOTE_E3 =1253,
  NOTE_F3 =1297,
  NOTE_FS3 =1339,
  NOTE_G3 =1379,
  NOTE_GS3 =1417,
  NOTE_A3 =1452,
  NOTE_AS3 =1486,
  NOTE_B3 =1517,
  NOTE_C4 =1547,
  NOTE_CS4 =1575,
  NOTE_D4 =1602,
  NOTE_DS4 =1627,
  NOTE_E4 =1650,
  NOTE_F4 =1673,
  NOTE_FS4 =1694,
  NOTE_G4 =1714,
  NOTE_GS4 =1732,
  NOTE_A4 =1750,
  NOTE_AS4 =1767,
  NOTE_B4 =1783,
  NOTE_C5 =1798,
  NOTE_CS5 =1812,
  NOTE_D5 =1825,
  NOTE_DS5 =1837,
  NOTE_E5 =1849,
  NOTE_F5 =1860,
  NOTE_FS5 =1871,
  NOTE_G5 =1881,
  NOTE_GS5 =1890,
  NOTE_A5 =1899,
  NOTE_AS5 =1907,
  NOTE_B5 =1915,
  NOTE_C6 =1923,
  NOTE_CS6 =1930,
  NOTE_D6 =1936,
  NOTE_DS6 =1943,
  NOTE_E6 =1949,
  NOTE_F6 =1954,
  NOTE_FS6 =1959,
  NOTE_G6 =1964,
  NOTE_GS6 =1969,
  NOTE_A6 =1974,
  NOTE_AS6 =1978,
  NOTE_B6 =1982,
  NOTE_C7 =1985,
  NOTE_CS7 =1989,
  NOTE_D7 =1992,
  NOTE_DS7 =1995,
  NOTE_E7 =1998,
  NOTE_F7 =2001,
  NOTE_FS7 =2004,
  NOTE_G7 =2006,
  NOTE_GS7 =2009,
  NOTE_A7 =2011,
  NOTE_AS7 =2013,
  NOTE_B7 =2015,
  NOTE_C8 =2017
} NOTES;

typedef struct noteWithDuration {
  enum note note;
  unsigned char duration;
} NoteWithDuration;

void initSound();
void playDrumSound(unsigned char r, unsigned char s, unsigned char b, unsigned char length, unsigned char steptime);
void playNoteWithDuration(NoteWithDuration *n, unsigned char duty);
void playChannel1(unsigned short note, unsigned char length, unsigned char sweepShift, unsigned char sweepTime, unsigned char sweepDir, unsigned char envStepTime, unsigned char envDir, unsigned char duty);
void playAnalogSound(unsigned short sound);
# 9 "main.c" 2
# 1 "game.h" 1


PLAYERSPRITE player;


void initLevelOne();
void initLevelTwo();
void updateGame();
void updatePlayer();
void updateEnemies();
void drawGame();
void drawPlayer();
void drawEnemies();
void drawWords();
void drawBubbles();
inline unsigned char colorAt(int x, int y);
void updateBubbles();
void initWords();
# 10 "main.c" 2
# 1 "levelsTILES.h" 1
# 21 "levelsTILES.h"
extern const unsigned short levelsTILESTiles[64];


extern const unsigned short levelsTILESPal[256];
# 11 "main.c" 2
# 1 "levelOneTILEMAP.h" 1







extern const unsigned short levelOneTILEMAPMap[1024];
# 12 "main.c" 2
# 1 "winTILEMAP.h" 1







extern const unsigned short winTILEMAPMap[1024];
# 13 "main.c" 2
# 1 "pauseTILEMAP.h" 1







extern const unsigned short pauseTILEMAPMap[1024];
# 14 "main.c" 2
# 1 "loseTILEMAP.h" 1







extern const unsigned short loseTILEMAPMap[1024];
# 15 "main.c" 2


void goToStart();
void start();
# 32 "main.c"
enum {
    START, LEVEL1, LEVEL2, WIN, LOSE, PAUSE
} ;
int state;
int priorState;

u16 oldButtons;
u16 buttons;

int main() {
    initialize();
    while (1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch (state) {
            case START:
                start();
                break;
            case LEVEL1:
                levelOne();
                break;
            case LEVEL2:

                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case PAUSE:
                pause();
                break;
        }
    }
    return 0;
}

void initialize() {
    mgba_open();
    mgba_printf("HELLO");
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((8) << 8);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 2);
    hideSprites();
    goToStart();
}

void goToStart() {
    DMANow(3, startTILESTiles, &((CB*) 0x6000000)[0], 96 / 2);
    DMANow(3, startTILESPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, startTILEMAPMap, &((SB*) 0x6000000)[8], (2048) / 2);

    hideSprites();

    state = START;
}

void start() {

    if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
        goToLevelOne();
    }
    waitForVBlank();
}

void goToLevelOne() {
    mgba_printf("HI");
    DMANow(3, levelsTILESTiles, &((CB*) 0x6000000)[0], 128 / 2);
    DMANow(3, levelsTILESPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, levelOneTILEMAPMap, &((SB*) 0x6000000)[8], (2048) / 2);
    hideSprites();
    initLevelOne();

    priorState = state;
    state = LEVEL1;
}

void levelOne() {
    updateGame();
    mgba_printf("%d, %d", player.x, player.y);
    waitForVBlank();
    drawGame();
    if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
        goToPause();
    }
    if (player.foodCollected == 6) {
        goToWin();
    }
    if (player.lives == 0) {
        goToLose();
    }
}

void goToLevelTwo() {



    hideSprites();
    initLevelTwo();
    priorState = state;
    state = LEVEL2;
}

void levelTwo() {
    updateGame();
    drawGame();
    if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
        goToPause();
    }
    if (player.foodCollected == 6) {
        goToWin();
    }
    if (player.lives == 0) {
        goToLose();
    }
}

void goToWin() {
    hideSprites();
    DMANow(3, winTILEMAPMap, &((SB*) 0x6000000)[8], (2048) / 2);

    priorState = state;
    state = WIN;
}

void win() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
        goToStart();
    }
}

void goToLose() {
    hideSprites();
    DMANow(3, loseTILEMAPMap, &((SB*) 0x6000000)[8], (2048) / 2);
    priorState = state;
    state = LOSE;
}

void lose() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
        goToStart();
    }
}

void goToPause() {
    hideSprites();
    DMANow(3, pauseTILEMAPMap, &((SB*) 0x6000000)[8], (2048) / 2);
    priorState = state;
    state = PAUSE;
}

void pause() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
        goToLevelOne();
    }
}

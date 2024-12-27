# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1
# 1 "sprites.h" 1



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
# 5 "sprites.h" 2





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
# 2 "game.h" 2

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
# 2 "game.c" 2

# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "game.c" 2

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
# 6 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 7 "game.c" 2
# 1 "startTILES.h" 1
# 21 "startTILES.h"
extern const unsigned short startTILESTiles[48];


extern const unsigned short startTILESPal[256];
# 8 "game.c" 2
# 1 "startTILEMAP.h" 1







extern const unsigned short startTILEMAPMap[1024];
# 9 "game.c" 2
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
# 10 "game.c" 2
# 1 "levelOneCOLLISION.h" 1
# 20 "levelOneCOLLISION.h"
extern const unsigned short levelOneCOLLISIONBitmap[32768];
# 11 "game.c" 2



PLAYERSPRITE player;
SPRITE walker1;
SPRITE walker2;
SPRITE walker3;
SPRITE shooter1;
SPRITE shooter2;
SPRITE shooter3;

BUBBLE bubble1;
BUBBLE bubble2;
BUBBLE bubble3;
int lastBubbleBlown;

SPRITE s;
SPRITE c;
SPRITE o;
SPRITE r;
SPRITE e;
SPRITE colon;
SPRITE h;
SPRITE ee;
SPRITE a;
SPRITE l;
SPRITE t;
SPRITE hh;
SPRITE zero;
SPRITE one;
SPRITE two;
SPRITE three;
SPRITE four;
SPRITE five;
SPRITE six;
SPRITE seven;
SPRITE eight;
SPRITE nine;
SPRITE h1;
SPRITE h2;
SPRITE h3;
SPRITE s0;
SPRITE s1;




int playerFrameCount;
int walker1FrameCount;
int walker1JumpCount;
int walker2FrameCount;
int walker2JumpCount;
int walker3FrameCount;
int walker3JumpCount;
int shooter1FrameCount;
int shooter1ShotCount;
int shooter2FrameCount;
int shooter2ShotCount;
int shooter3ShotCount;
int shooter3FrameCount;
int score;
int playerJumpCount;

enum {
    LEFT, RIGHT
} DIRECTION;

void initLevelOne() {
    walker1FrameCount = 0;
    walker2FrameCount = 0;
    walker3FrameCount = 0;
    shooter1FrameCount = 0;
     shooter2FrameCount = 0;
    shooter3FrameCount = 0;
    lastBubbleBlown = 1;
    score = 0;

    player.currentFrame = 0;
    player.direction = RIGHT;
    player.foodCollected = 0;
    player.height = 14;
    player.isAnimating = 0;
    player.numFrames = 6;
    player.oamIndex = 0;
    player.timeUntilNextFrame = 10;
    player.width = 12;
    player.x = 112;
    player.y = 130;
    player.xVel = 1;
    player.yVel = 1;
    player.isJumping = 0;
    player.lives = 3;


    walker1.currentFrame = 0;
    walker1.direction = RIGHT;
    walker1.height = 20;
    walker1.isAnimating = 1;
    walker1.numFrames = 3;
    walker1.oamIndex = 1;
    walker1.timeUntilNextFrame = 10;
    walker1.width = 20;
    walker1.x = 56;
    walker1.y = 64;
    walker1.xVel = 1;
    walker1.yVel = 1;
    walker1.alive = 1;

    walker2.currentFrame = 0;
    walker2.direction = RIGHT;
    walker2.height = 24;
    walker2.isAnimating = 1;
    walker2.numFrames = 3;
    walker2.oamIndex = 2;
    walker2.timeUntilNextFrame = 10;
    walker2.width = 24;
    walker2.x = 192;
    walker2.y = 96;
    walker2.xVel = 1;
    walker2.yVel = 1;
    walker2.alive = 1;

    walker3.currentFrame = 0;
    walker3.direction = RIGHT;
    walker3.height = 24;
    walker3.isAnimating = 1;
    walker3.numFrames = 3;
    walker3.oamIndex = 3;
    walker3.timeUntilNextFrame = 10;
    walker3.width = 24;
    walker3.x = 168;
    walker3.y = 64;
    walker3.xVel = 1;
    walker3.yVel = 1;
    walker3.alive = 1;

    shooter1.currentFrame = 0;
    shooter1.direction = RIGHT;
    shooter1.height = 24;
    shooter1.isAnimating = 1;
    shooter1.numFrames = 4;
    shooter1.oamIndex = 4;
    shooter1.timeUntilNextFrame = 10;
    shooter1.width = 24;
    shooter1.x = 16;
    shooter1.y = 40;
    shooter1.xVel = 1;
    shooter1.yVel = 1;
    shooter1.alive = 1;

    shooter2.currentFrame = 0;
    shooter2.direction = RIGHT;
    shooter2.height = 24;
    shooter2.isAnimating = 1;
    shooter2.numFrames = 4;
    shooter2.oamIndex = 5;
    shooter2.timeUntilNextFrame = 10;
    shooter2.width = 24;
    shooter2.x = 112;
    shooter2.y = 72;
    shooter2.xVel = 1;
    shooter2.yVel = 1;
    shooter2.alive = 1;

    shooter3.currentFrame = 0;
    shooter3.direction = RIGHT;
    shooter3.height = 24;
    shooter3.isAnimating = 1;
    shooter3.numFrames = 4;
    shooter3.oamIndex = 6;
    shooter3.timeUntilNextFrame = 10;
    shooter3.width = 24;
    shooter3.x = 200;
    shooter3.y = 40;
    shooter3.xVel = 1;
    shooter3.yVel = 1;
    shooter3.alive = 1;


    bubble1.active = 0;
    bubble1.bubbleIndex = 1;
    bubble1.height = 14;
    bubble1.oamIndex = 7;
    bubble1.timeAlive = 0;
    bubble1.width = 14;
    bubble1.x = player.x + 8;
    bubble1.y = player.y;

    bubble2.active = 0;
    bubble2.bubbleIndex = 2;
    bubble2.height = 14;
    bubble2.oamIndex = 8;
    bubble2.timeAlive = 0;
    bubble2.width = 14;
    bubble2.x = player.x + 8;
    bubble2.y = player.y;

    bubble3.active = 0;
    bubble3.bubbleIndex = 3;
    bubble3.height = 14;
    bubble3.oamIndex = 9;
    bubble3.timeAlive = 0;
    bubble3.width = 14;
    bubble3.x = player.x + 8;
    bubble3.y = player.y;

    initWords();




}

void initLevelTwo() {

}

void initWords() {
    s.x = 11;
    s.y = 0;
    s.oamIndex = 10;
    c.x = 12;
    c.oamIndex = 11;
    o.x = 13;
    o.oamIndex = 12;
    r.x = 14;
    r.oamIndex = 13;
    e.x = 15;
    e.oamIndex = 14;
    colon.x = 16;
    colon.oamIndex = 15;
    h.x = 0;
    h.oamIndex = 16;
    ee.x = 1;
    ee.oamIndex = 17;
    a.x = 2;
    a.oamIndex = 18;
    l.x = 3;
    l.oamIndex = 19;
    t.x = 4;
    t.oamIndex = 20;
    hh.x = 5;
    hh.oamIndex = 21;
    zero.x = 18;
    zero.oamIndex = 22;
    one.x = 18;
    one.oamIndex = 23;
    two.x = 18;
    two.oamIndex = 24;
    three.x = 18;
    three.oamIndex = 25;
    four.x = 18;
    four.oamIndex = 26;
    five.x = 18;
    five.oamIndex = 27;
    six.x = 18;
    six.oamIndex = 28;
    seven.x = 18;
    seven.oamIndex = 29;
    eight.x = 18;
    eight.oamIndex = 30;
    nine.x = 18;
    nine.oamIndex = 31;
    h1.x = 6;
    h1.oamIndex = 32;
    h2.x = 6;
    h2.oamIndex = 33;
    h3.x = 6;
    h3.oamIndex = 34;
    s0.x = 17;
    s0.oamIndex = 35;
    s1.x = 17;
    s1.oamIndex = 36;

}

void updateGame() {
    updatePlayer();
    updateEnemies();
    updateBubbles();
}

void updatePlayer() {
    int leftX = player.x;
    int rightX = player.x + player.width + 1;
    int topY = player.y;
    int bottomY = player.y + player.height + 1;
    if (!player.isJumping) {
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))) && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            player.x--;
            player.isAnimating = 1;
            player.direction = LEFT;
        } else
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))) && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            player.x++;
            player.isAnimating = 1;
            player.direction = RIGHT;
        } else {
            player.isAnimating = 0;
        }
        if ((!(~(oldButtons) & ((1<<1))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<1)))) && !colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1)) {

            player.isJumping = 1;
        } else {
            player.isJumping = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        player.y++;
    }

    } else {
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1)) {
            player.y--;
        }
        playerJumpCount++;
        if (playerJumpCount > 45) {
            playerJumpCount = 0;
            player.isJumping = 0;
        }
    }

    if ((!(~(oldButtons) & ((1<<0))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<0))))) {

            if (lastBubbleBlown == 1) {
                bubble2.active = 1;
                if (player.direction = LEFT) {
                    bubble2.x = player.x - 18;
                } else {
                    bubble2.x = player.x + 18;
                }
                bubble2.y = player.y;
                lastBubbleBlown = 2;
            } else if (lastBubbleBlown == 2) {
                bubble2.active = 1;
                if (player.direction = LEFT) {
                    bubble3.x = player.x - 18;
                } else {
                    bubble3.x = player.x + 18;
                }
                bubble3.y = player.y;
                lastBubbleBlown = 3;
            } else if (lastBubbleBlown == 3) {
                bubble1.active = 1;
                if (player.direction = LEFT) {
                    bubble1.x = player.x - 18;
                } else {
                    bubble1.x = player.x + 18;
                }
                bubble1.y = player.y;
                lastBubbleBlown = 1;
            }

    }






    if (collision(player.x, player.y, player.width, player.height, walker1.x, walker1.y, walker1.width, walker1.height) && walker1.fruit && !walker1.alive) {

        score++;
        player.foodCollected++;
        walker1.alive = 0;
    }

    if (collision(player.x, player.y, player.width, player.height, walker2.x, walker2.y, walker2.width, walker2.height) && walker2.fruit && !walker2.alive) {

        score++;
        player.foodCollected++;
        walker2.alive = 0;

    }

    if (collision(player.x, player.y, player.width, player.height, walker3.x, walker3.y, walker3.width, walker3.height) && walker3.fruit) {

        score++;
        player.foodCollected++;
         walker3.alive = 0;
    }

    if (collision(player.x, player.y, player.width, player.height, shooter1.x, shooter1.y, shooter1.width, shooter1.height) && shooter1.fruit) {

        score++;
        player.foodCollected++;
        shooter1.alive = 0;
    }

    if (collision(player.x, player.y, player.width, player.height, shooter2.x, shooter2.y, shooter2.width, shooter2.height) && shooter2.fruit) {

        score++;
        player.foodCollected++;
        shooter2.alive = 0;
    }

    if (collision(player.x, player.y, player.width, player.height, shooter3.x, shooter3.y, shooter3.width, shooter3.height) && shooter3.fruit) {

        score++;
        player.foodCollected++;
        shooter3.alive = 0;
    }

    if (collision(player.x, player.y, player.width, player.height, walker1.x, walker1.y, walker1.width, walker1.height) && !walker1.bubble && !walker1.fruit) {
        player.x = 112;
        player.y = 130;
        player.lives--;
    }

    if (collision(player.x, player.y, player.width, player.height, walker2.x, walker2.y, walker2.width, walker2.height) && !walker2.bubble && !walker2.fruit) {
        player.x = 112;
        player.y = 130;
        player.lives--;
    }

    if (collision(player.x, player.y, player.width, player.height, walker3.x, walker3.y, walker3.width, walker3.height) && !walker3.bubble && !walker3.fruit) {
        player.x = 112;
        player.y = 130;
        player.lives--;
    }

    if (collision(player.x, player.y, player.width, player.height, shooter1.x, shooter1.y, shooter1.width, shooter1.height) && !shooter1.bubble && !shooter1.fruit) {
        player.x = 112;
        player.y = 130;
        player.lives--;
    }

    if (collision(player.x, player.y, player.width, player.height, shooter2.x, shooter2.y, shooter2.width, shooter2.height) && !shooter2.bubble && !shooter2.fruit) {
        player.x = 112;
        player.y = 130;
        player.lives--;
    }

    if (collision(player.x, player.y, player.width, player.height, shooter3.x, shooter3.y, shooter3.width, shooter3.height) && !shooter3.bubble && !shooter3.fruit) {
        player.x = 112;
        player.y = 130;
        player.lives--;
    }



    if (player.isAnimating) {
        if (player.timeUntilNextFrame == 10) {
            player.timeUntilNextFrame = 0;
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
        }
        player.timeUntilNextFrame++;
    } else {
        player.currentFrame = 0;
        player.timeUntilNextFrame = 0;
    }

    if (player.y > 155) {
        player.y = 1;
        mgba_printf("DID THIS ACTIVATE?");
    }


}

void updateEnemies() {
    if (walker1.alive) {
        if (!walker1.bubble) {
        int leftX = walker1.x;
        int rightX = walker1.x + walker1.width + 1;
        int topY = walker1.y;
        int bottomY = walker1.y + walker1.height + 1;
# 516 "game.c"
       if (!walker1.isJumping) {
        int xDiff = player.x - walker1.x;
            if (xDiff < 0 && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            walker1.x--;
            walker1.isAnimating = 1;
            walker1.direction = LEFT;
        } else
        if (xDiff > 0 && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            walker1.x++;
            walker1.isAnimating = 1;
            walker1.direction = RIGHT;
        } else {
            walker1.isAnimating = 0;
        }
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1) && walker1FrameCount > 120) {

            walker1.isJumping = 1;
        } else {
            walker1.isJumping = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        walker1.y++;
    }
       }
     else {
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1)) {
            walker1.y--;
        }
        walker1JumpCount++;
        if (walker1JumpCount > 45) {
            walker1JumpCount = 0;
            walker1.isJumping = 0;
            walker1FrameCount = 0;
        }
    }
    walker1FrameCount++;
        }
        if (collision(walker1.x, walker1.y, walker1.width, walker1.height, bubble1.x, bubble1.y, bubble1.width, bubble1.height) && bubble1.active) {
            walker1.bubble = 1;
            bubble1.active = 0;
        }
        if (collision(walker1.x, walker1.y, walker1.width, walker1.height, bubble2.x, bubble2.y, bubble2.width, bubble2.height) && bubble2.active) {
            walker1.bubble = 1;
            bubble2.active = 0;
        }
        if (collision(walker1.x, walker1.y, walker1.width, walker1.height, bubble3.x, bubble3.y, bubble3.width, bubble3.height) && bubble3.active) {
            walker1.bubble = 1;
            bubble3.active = 0;
        }

        if (collision(walker1.x, walker1.y, walker1.width, walker1.height, player.x, player.y, player.width, player.height) && walker1.bubble) {
            walker1.fruit = 1;
        }

        if (walker1.timeUntilNextFrame == 10) {
            walker1.currentFrame++;
            if (walker1.currentFrame > walker1.numFrames - 1) {
                walker1.currentFrame = 0;
            }
        } else {
            walker1.timeUntilNextFrame++;
        }



    }

    if (walker2.alive) {
        if (!walker2.bubble) {
        int leftX = walker2.x;
        int rightX = walker2.x + walker2.width + 1;
        int topY = walker2.y;
        int bottomY = walker2.y + walker2.height + 1;

       if (!walker2.isJumping) {
        int xDiff = player.x - walker2.x;
            if (xDiff < 0 && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            walker2.x--;
            walker2.isAnimating = 1;
            walker2.direction = LEFT;
        } else
        if (xDiff > 0 && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            walker2.x++;
            walker2.isAnimating = 1;
            walker2.direction = RIGHT;
        } else {
            walker2.isAnimating = 0;
        }
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1) && walker2FrameCount > 120) {

            walker2.isJumping = 1;
        } else {
            walker2.isJumping = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        walker2.y++;
    }
       }
     else {
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1)) {
            walker2.y--;
        }
        walker2JumpCount++;
        if (walker2JumpCount > 45) {
            walker2JumpCount = 0;
            walker2.isJumping = 0;
            walker2FrameCount = 0;
        }
    }
    walker2FrameCount++;
        }
        if (collision(walker2.x, walker2.y, walker2.width, walker2.height, bubble1.x, bubble1.y, bubble1.width, bubble1.height) && bubble1.active) {
            walker2.bubble = 1;
            bubble1.active = 0;
        }
        if (collision(walker2.x, walker2.y, walker2.width, walker2.height, bubble2.x, bubble2.y, bubble2.width, bubble2.height) && bubble2.active) {
            walker2.bubble = 1;
            bubble2.active = 0;
        }
        if (collision(walker2.x, walker2.y, walker2.width, walker2.height, bubble3.x, bubble3.y, bubble3.width, bubble3.height) && bubble3.active) {
            walker2.bubble = 1;
            bubble3.active = 0;
        }

        if (collision(walker2.x, walker2.y, walker2.width, walker2.height, player.x, player.y, player.width, player.height) && walker2.bubble) {
            walker2.fruit = 1;
        }

         if (walker2.timeUntilNextFrame == 10) {
            walker2.currentFrame++;
            if (walker2.currentFrame > walker2.numFrames - 1) {
                walker2.currentFrame = 0;
            }
        } else {
            walker2.timeUntilNextFrame++;
        }


    }

    if (walker3.alive) {
        if (!walker3.bubble) {
        int leftX = walker3.x;
        int rightX = walker3.x + walker3.width + 1;
        int topY = walker3.y;
        int bottomY = walker3.y + walker3.height + 1;

       if (!walker3.isJumping) {
        int xDiff = player.x - walker3.x;
            if (xDiff < 0 && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            walker3.x--;
            walker3.isAnimating = 1;
            walker3.direction = LEFT;
        } else
        if (xDiff > 0 && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            walker3.x++;
            walker3.isAnimating = 1;
            walker3.direction = RIGHT;
        } else {
            walker3.isAnimating = 0;
        }
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1) && walker3FrameCount > 120) {

            walker3.isJumping = 1;
        } else {
            walker3.isJumping = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        walker3.y++;
    }
       }
     else {
        if (!colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1)) {
            walker3.y--;
        }
        walker3JumpCount++;
        if (walker3JumpCount > 45) {
            walker3JumpCount = 0;
            walker3.isJumping = 0;
            walker3FrameCount = 0;
        }
    }
    walker3FrameCount++;
        }
        if (collision(walker3.x, walker3.y, walker3.width, walker3.height, bubble1.x, bubble1.y, bubble1.width, bubble1.height) && bubble1.active) {
            walker3.bubble = 1;
            bubble1.active = 0;
        }
        if (collision(walker3.x, walker3.y, walker3.width, walker3.height, bubble2.x, bubble2.y, bubble2.width, bubble2.height) && bubble2.active) {
            walker3.bubble = 1;
            bubble2.active = 0;
        }
        if (collision(walker3.x, walker3.y, walker3.width, walker3.height, bubble3.x, bubble3.y, bubble3.width, bubble3.height) && bubble3.active) {
            walker3.bubble = 1;
            bubble3.active = 0;
        }

        if (collision(walker3.x, walker3.y, walker3.width, walker3.height, player.x, player.y, player.width, player.height) && walker3.bubble) {
            walker3.fruit = 1;
        }

         if (walker3.timeUntilNextFrame == 10) {
            walker3.currentFrame++;
            if (walker3.currentFrame > walker3.numFrames - 1) {
                walker3.currentFrame = 0;
            }
        } else {
            walker3.timeUntilNextFrame++;
        }

    }

    if (shooter1.alive) {
        if (!shooter1.bubble) {
        int leftX = shooter1.x;
        int rightX = shooter1.x + shooter1.width + 1;
        int topY = shooter1.y;
        int bottomY = shooter1.y + shooter1.height + 1;

        if (shooter1ShotCount > 120) {
            shooter1ShotCount = 0;
            shooter1.isJumping = 1;
        }
        shooter1ShotCount++;

        int xDiff = player.x - shooter1.x;
            if (xDiff < 0 && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            shooter1.x--;
            shooter1.isAnimating = 1;
            shooter1.direction = LEFT;
        } else
        if (xDiff > 0 && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            shooter1.x++;
            shooter1.isAnimating = 1;
            shooter1.direction = RIGHT;
        } else {
            shooter1.isAnimating = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        shooter1.y++;
    }
    shooter1FrameCount++;
        }
        if (collision(shooter1.x, shooter1.y, shooter1.width, shooter1.height, bubble1.x, bubble1.y, bubble1.width, bubble1.height) && bubble1.active) {
            shooter1.bubble = 1;
            bubble1.active = 0;
        }
        if (collision(shooter1.x, shooter1.y, shooter1.width, shooter1.height, bubble2.x, bubble2.y, bubble2.width, bubble2.height) && bubble2.active) {
            shooter1.bubble = 1;
            bubble2.active = 0;
        }
        if (collision(shooter1.x, shooter1.y, shooter1.width, shooter1.height, bubble3.x, bubble3.y, bubble3.width, bubble3.height) && bubble3.active) {
            shooter1.bubble = 1;
            bubble3.active = 0;
        }

        if (collision(shooter1.x, shooter1.y, shooter1.width, shooter1.height, player.x, player.y, player.width, player.height) && shooter1.bubble) {
            shooter1.fruit = 1;
        }

         if (shooter1.timeUntilNextFrame == 10) {
            shooter1.currentFrame++;
            if (shooter1.currentFrame > shooter1.numFrames - 1) {
                shooter1.currentFrame = 0;
            }
        } else {
            shooter1.timeUntilNextFrame++;
        }

    }

    if (shooter2.alive) {
        if (!shooter2.bubble) {
        int leftX = shooter2.x;
        int rightX = shooter2.x + shooter2.width + 1;
        int topY = shooter2.y;
        int bottomY = shooter2.y + shooter2.height + 1;

        if (shooter2ShotCount > 120) {
            shooter2ShotCount = 0;
            shooter2.isJumping = 1;
        }
        shooter2ShotCount++;

        int xDiff = player.x - shooter2.x;
            if (xDiff < 0 && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            shooter2.x--;
            shooter2.isAnimating = 1;
            shooter2.direction = LEFT;
        } else
        if (xDiff > 0 && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            shooter2.x++;
            shooter2.isAnimating = 1;
            shooter2.direction = RIGHT;
        } else {
            shooter2.isAnimating = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        shooter2.y++;
    }
    shooter2FrameCount++;
        }
        if (collision(shooter2.x, shooter2.y, shooter2.width, shooter2.height, bubble1.x, bubble1.y, bubble1.width, bubble1.height) && bubble1.active) {
            shooter2.bubble = 1;
            bubble1.active = 0;
        }
        if (collision(shooter2.x, shooter2.y, shooter2.width, shooter2.height, bubble2.x, bubble2.y, bubble2.width, bubble2.height) && bubble2.active) {
            shooter2.bubble = 1;
            bubble2.active = 0;
        }
        if (collision(shooter2.x, shooter2.y, shooter2.width, shooter2.height, bubble3.x, bubble3.y, bubble3.width, bubble3.height) && bubble3.active) {
            shooter2.bubble = 1;
            bubble3.active = 0;
        }

        if (collision(shooter2.x, shooter2.y, shooter2.width, shooter2.height, player.x, player.y, player.width, player.height) && shooter2.bubble) {
            shooter2.fruit = 1;
        }

         if (shooter2.timeUntilNextFrame == 10) {
            shooter2.currentFrame++;
            if (shooter2.currentFrame > shooter2.numFrames - 1) {
                shooter2.currentFrame = 0;
            }
        } else {
            shooter2.timeUntilNextFrame++;
        }

    }

    if (shooter3.alive) {
        if (!shooter3.bubble) {
        int leftX = shooter3.x;
        int rightX = shooter3.x + shooter3.width + 1;
        int topY = shooter3.y;
        int bottomY = shooter3.y + shooter3.height + 1;

        if (shooter3ShotCount > 120) {
            shooter3ShotCount = 0;
            shooter3.isJumping = 1;
        }
        shooter3ShotCount++;

        int xDiff = player.x - shooter3.x;
            if (xDiff < 0 && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            shooter3.x--;
            shooter3.isAnimating = 1;
            shooter3.direction = LEFT;
        } else
        if (xDiff > 0 && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            shooter3.x++;
            shooter3.isAnimating = 1;
            shooter3.direction = RIGHT;
        } else {
            shooter3.isAnimating = 0;
        }

        if (!colorAt(leftX, bottomY + 1) && !colorAt(rightX, bottomY + 1)) {
        shooter3.y++;
    }
    shooter3FrameCount++;
        }
        if (collision(shooter3.x, shooter3.y, shooter3.width, shooter3.height, bubble1.x, bubble1.y, bubble1.width, bubble1.height) && bubble1.active) {
            shooter3.bubble = 1;
            bubble1.active = 0;
        }
        if (collision(shooter3.x, shooter3.y, shooter3.width, shooter3.height, bubble2.x, bubble2.y, bubble2.width, bubble2.height) && bubble2.active) {
            shooter3.bubble = 1;
            bubble2.active = 0;
        }
        if (collision(shooter3.x, shooter3.y, shooter3.width, shooter3.height, bubble3.x, bubble3.y, bubble3.width, bubble3.height) && bubble3.active) {
            shooter3.bubble = 1;
            bubble3.active = 0;
        }

        if (collision(shooter3.x, shooter3.y, shooter3.width, shooter3.height, player.x, player.y, player.width, player.height) && shooter3.bubble) {
            shooter3.fruit = 1;
        }

         if (shooter3.timeUntilNextFrame == 10) {
            shooter3.currentFrame++;
            if (shooter3.currentFrame > shooter3.numFrames - 1) {
                shooter3.currentFrame = 0;
            }
        } else {
            shooter3.timeUntilNextFrame++;
        }

    }


}

void updateBubbles() {
    if (bubble1.active) {
        bubble1.timeAlive++;
        if (bubble1.timeAlive > 300) {
            bubble1.active = 0;
            bubble1.timeAlive = 0;
        }
    }
    if (bubble2.active) {
        bubble2.timeAlive++;
        if (bubble2.timeAlive > 300) {
            bubble2.active = 0;
            bubble2.timeAlive = 0;
        }
    }
    if (bubble3.active) {
        bubble3.timeAlive++;
        if (bubble3.timeAlive > 300) {
            bubble3.active = 0;
            bubble3.timeAlive = 0;
        }
    }
}

void drawGame() {
    drawPlayer();
    drawBubbles();
    drawEnemies();
    drawWords();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = (0<<14) | ((player.y) & 0xFF);
    shadowOAM[player.oamIndex].attr1 = (1<<14) | ((player.x) & 0x1FF);
    if (player.direction == LEFT) {
        shadowOAM[player.oamIndex].attr1 |= (1<<12);
    }
    if (player.isJumping) {
        shadowOAM[player.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (23))) & 0x3FF);
    } else {
        shadowOAM[player.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (player.currentFrame * 2))) & 0x3FF);
    }


}

void drawEnemies() {
    if (walker1.alive) {
        if (walker1.fruit) {
            shadowOAM[walker1.oamIndex].attr0 = (0<<14) | ((walker1.y) & 0xFF);
            shadowOAM[walker1.oamIndex].attr1 = (1<<14) | ((walker1.x) & 0x1FF);
            if (walker1.direction == LEFT) {
                shadowOAM[walker1.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker1.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (19))) & 0x3FF);
        } else if (walker1.bubble) {
            shadowOAM[walker1.oamIndex].attr0 = (0<<14) | ((walker1.y) & 0xFF);
            shadowOAM[walker1.oamIndex].attr1 = (1<<14) | ((walker1.x) & 0x1FF);
            if (walker1.direction == LEFT) {
                shadowOAM[walker1.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker1.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (14))) & 0x3FF);
        } else {
            shadowOAM[walker1.oamIndex].attr0 = (0<<14) | ((walker1.y) & 0xFF);
            shadowOAM[walker1.oamIndex].attr1 = (2<<14) | ((walker1.x) & 0x1FF);
            if (walker1.direction == LEFT) {
                shadowOAM[walker1.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker1.oamIndex].attr2 = (((0) & 3) << 10) | ((((2) * (32) + (walker1.currentFrame * 4))) & 0x3FF);
        }
    } else {
        shadowOAM[walker1.oamIndex].attr0 = (2<<8);
    }

    if (walker2.alive) {
        if (walker2.fruit) {
            shadowOAM[walker2.oamIndex].attr0 = (0<<14) | ((walker2.y) & 0xFF);
            shadowOAM[walker2.oamIndex].attr1 = (1<<14) | ((walker2.x) & 0x1FF);
            if (walker2.direction == LEFT) {
                shadowOAM[walker2.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker2.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (19))) & 0x3FF);
        } else if (walker2.bubble) {
            shadowOAM[walker2.oamIndex].attr0 = (0<<14) | ((walker2.y) & 0xFF);
            shadowOAM[walker2.oamIndex].attr1 = (1<<14) | ((walker2.x) & 0x1FF);
            if (walker2.direction == LEFT) {
                shadowOAM[walker2.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker2.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (14))) & 0x3FF);
        } else {
            shadowOAM[walker2.oamIndex].attr0 = (0<<14) | ((walker2.y) & 0xFF);
            shadowOAM[walker2.oamIndex].attr1 = (2<<14) | ((walker2.x) & 0x1FF);
            if (walker2.direction == LEFT) {
                shadowOAM[walker2.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker2.oamIndex].attr2 = (((0) & 3) << 10) | ((((2) * (32) + (walker2.currentFrame * 4))) & 0x3FF);
        }
    } else {
        shadowOAM[walker2.oamIndex].attr0 = (2<<8);
    }

    if (walker3.alive) {
        if (walker3.fruit) {
            shadowOAM[walker3.oamIndex].attr0 = (0<<14) | ((walker3.y) & 0xFF);
            shadowOAM[walker3.oamIndex].attr1 = (1<<14) | ((walker3.x) & 0x1FF);
            if (walker3.direction == LEFT) {
                shadowOAM[walker3.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker3.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (19))) & 0x3FF);
        } else if (walker3.bubble) {
            shadowOAM[walker3.oamIndex].attr0 = (0<<14) | ((walker3.y) & 0xFF);
            shadowOAM[walker3.oamIndex].attr1 = (1<<14) | ((walker3.x) & 0x1FF);
            if (walker3.direction == LEFT) {
                shadowOAM[walker3.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker3.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (14))) & 0x3FF);
        } else {
            shadowOAM[walker3.oamIndex].attr0 = (0<<14) | ((walker3.y) & 0xFF);
            shadowOAM[walker3.oamIndex].attr1 = (2<<14) | ((walker3.x) & 0x1FF);
            if (walker3.direction == LEFT) {
                shadowOAM[walker3.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[walker3.oamIndex].attr2 = (((0) & 3) << 10) | ((((2) * (32) + (walker3.currentFrame * 4))) & 0x3FF);
        }
    } else {
        shadowOAM[walker3.oamIndex].attr0 = (2<<8);
    }

    if (shooter1.alive) {
        if (shooter1.fruit) {
            shadowOAM[shooter1.oamIndex].attr0 = (2<<14) | ((shooter1.y) & 0xFF);
            shadowOAM[shooter1.oamIndex].attr1 = (1<<14) | ((shooter1.x) & 0x1FF);
            if (shooter1.direction == LEFT) {
                shadowOAM[shooter1.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter1.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (19))) & 0x3FF);
        } else if (shooter1.bubble) {
            shadowOAM[shooter1.oamIndex].attr0 = (2<<14) | ((shooter1.y) & 0xFF);
            shadowOAM[shooter1.oamIndex].attr1 = (1<<14) | ((shooter1.x) & 0x1FF);
            if (shooter1.direction == LEFT) {
                shadowOAM[shooter1.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter1.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (16))) & 0x3FF);
        } else {
            shadowOAM[shooter1.oamIndex].attr0 = (2<<14) | ((shooter1.y) & 0xFF);
            shadowOAM[shooter1.oamIndex].attr1 = (1<<14) | ((shooter1.x) & 0x1FF);
            if (shooter1.direction == LEFT) {
                shadowOAM[shooter1.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter1.oamIndex].attr2 = (((0) & 3) << 10) | ((((2) * (32) + (shooter1.currentFrame * 4 + 12))) & 0x3FF);
        }
        if (shooter1.isJumping) {
            shadowOAM[37].attr0 = (0<<14) | ((shooter1.y) & 0xFF);
            shadowOAM[37].attr1 = (1<<14) | ((shooter1.x) & 0x1FF);
            shadowOAM[37].attr2 = ((((1) * (32) + (22))) & 0x3FF);
        }
    } else {
        shadowOAM[shooter1.oamIndex].attr0 = (2<<8);
    }

    if (shooter2.alive) {
        if (shooter2.fruit) {
            shadowOAM[shooter2.oamIndex].attr0 = (2<<14) | ((shooter2.y) & 0xFF);
            shadowOAM[shooter2.oamIndex].attr1 = (1<<14) | ((shooter2.x) & 0x1FF);
            if (shooter2.direction == LEFT) {
                shadowOAM[shooter2.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter2.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (19))) & 0x3FF);
        } else if (shooter2.bubble) {
            shadowOAM[shooter2.oamIndex].attr0 = (2<<14) | ((shooter2.y) & 0xFF);
            shadowOAM[shooter2.oamIndex].attr1 = (1<<14) | ((shooter2.x) & 0x1FF);
            if (shooter2.direction == LEFT) {
                shadowOAM[shooter2.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter2.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (16))) & 0x3FF);
        } else {
            shadowOAM[shooter2.oamIndex].attr0 = (2<<14) | ((shooter2.y) & 0xFF);
            shadowOAM[shooter2.oamIndex].attr1 = (1<<14) | ((shooter2.x) & 0x1FF);
            if (shooter2.direction == LEFT) {
                shadowOAM[shooter2.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter2.oamIndex].attr2 = (((0) & 3) << 10) | ((((2) * (32) + (shooter2.currentFrame * 4 + 12))) & 0x3FF);
        }
        if (shooter2.isJumping) {
            shadowOAM[37].attr0 = (0<<14) | ((shooter2.y) & 0xFF);
            shadowOAM[37].attr1 = (1<<14) | ((shooter2.x) & 0x1FF);
            shadowOAM[37].attr2 = ((((1) * (32) + (22))) & 0x3FF);
        }
    } else {
        shadowOAM[shooter2.oamIndex].attr0 = (2<<8);
    }

    if (shooter3.alive) {
        if (shooter3.fruit) {
            shadowOAM[shooter3.oamIndex].attr0 = (2<<14) | ((shooter3.y) & 0xFF);
            shadowOAM[shooter3.oamIndex].attr1 = (1<<14) | ((shooter3.x) & 0x1FF);
            if (shooter3.direction == LEFT) {
                shadowOAM[shooter3.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter3.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (19))) & 0x3FF);
        } else if (shooter3.bubble) {
            shadowOAM[shooter3.oamIndex].attr0 = (2<<14) | ((shooter3.y) & 0xFF);
            shadowOAM[shooter3.oamIndex].attr1 = (1<<14) | ((shooter3.x) & 0x1FF);
            if (shooter3.direction == LEFT) {
                shadowOAM[shooter3.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter3.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (16))) & 0x3FF);
        } else {
            shadowOAM[shooter3.oamIndex].attr0 = (2<<14) | ((shooter3.y) & 0xFF);
            shadowOAM[shooter3.oamIndex].attr1 = (1<<14) | ((shooter3.x) & 0x1FF);
            if (shooter3.direction == LEFT) {
                shadowOAM[shooter3.oamIndex].attr1 |= (1<<12);
            }
            shadowOAM[shooter3.oamIndex].attr2 = (((0) & 3) << 10) | ((((2) * (32) + (shooter3.currentFrame * 4 + 12))) & 0x3FF);
        }
        if (shooter3.isJumping) {
            shadowOAM[37].attr0 = (0<<14) | ((shooter3.y) & 0xFF);
            shadowOAM[37].attr1 = (1<<14) | ((shooter3.x) & 0x1FF);
            shadowOAM[37].attr2 = ((((1) * (32) + (22))) & 0x3FF);
        }
    } else {
        shadowOAM[shooter3.oamIndex].attr0 = (2<<8);
    }
}

void drawWords() {
    shadowOAM[s.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[s.oamIndex].attr1 = (0<<14) | ((s.x * 8) & 0x1FF);
    shadowOAM[s.oamIndex].attr2 = ((((7) * (32) + (0))) & 0x3FF) | (((0) & 3) << 10);

    shadowOAM[c.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[c.oamIndex].attr1 = (0<<14) | ((c.x * 8) & 0x1FF);
    shadowOAM[c.oamIndex].attr2 = ((((7) * (32) + (1))) & 0x3FF);

    shadowOAM[o.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[o.oamIndex].attr1 = (0<<14) | ((o.x * 8) & 0x1FF);
    shadowOAM[o.oamIndex].attr2 = ((((7) * (32) + (2))) & 0x3FF);

    shadowOAM[r.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[r.oamIndex].attr1 = (0<<14) | ((r.x * 8) & 0x1FF);
    shadowOAM[r.oamIndex].attr2 = ((((7) * (32) + (3))) & 0x3FF);

    shadowOAM[e.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[e.oamIndex].attr1 = (0<<14) | ((e.x * 8) & 0x1FF);
    shadowOAM[e.oamIndex].attr2 = ((((7) * (32) + (4))) & 0x3FF);

    shadowOAM[colon.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[colon.oamIndex].attr1 = (0<<14) | ((colon.x * 8) & 0x1FF);
    shadowOAM[colon.oamIndex].attr2 = ((((7) * (32) + (5))) & 0x3FF);

    shadowOAM[h.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[h.oamIndex].attr1 = (0<<14) | ((h.x * 8) & 0x1FF);
    shadowOAM[h.oamIndex].attr2 = ((((8) * (32) + (0))) & 0x3FF);

    shadowOAM[ee.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[ee.oamIndex].attr1 = (0<<14) | ((ee.x * 8) & 0x1FF);
    shadowOAM[ee.oamIndex].attr2 = ((((7) * (32) + (4))) & 0x3FF);

    shadowOAM[a.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[a.oamIndex].attr1 = (0<<14) | ((a.x * 8) & 0x1FF);
    shadowOAM[a.oamIndex].attr2 = ((((8) * (32) + (1))) & 0x3FF);

    shadowOAM[l.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[l.oamIndex].attr1 = (0<<14) | ((l.x * 8) & 0x1FF);
    shadowOAM[l.oamIndex].attr2 = ((((8) * (32) + (2))) & 0x3FF);

    shadowOAM[t.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[t.oamIndex].attr1 = (0<<14) | ((t.x * 8) & 0x1FF);
    shadowOAM[t.oamIndex].attr2 = ((((8) * (32) + (3))) & 0x3FF);

    shadowOAM[hh.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
    shadowOAM[hh.oamIndex].attr1 = (0<<14) | ((hh.x * 8) & 0x1FF);
    shadowOAM[hh.oamIndex].attr2 = ((((8) * (32) + (0))) & 0x3FF);


    switch(player.lives) {
        case 3:
            shadowOAM[three.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[three.oamIndex].attr1 = (0<<14) | ((three.x * 8) & 0x1FF);
            shadowOAM[three.oamIndex].attr2 = ((((7) * (32) + (three.x))) & 0x3FF);
            break;

        case 2:
            shadowOAM[two.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[two.oamIndex].attr1 = (0<<14) | ((two.x * 8) & 0x1FF);
            shadowOAM[two.oamIndex].attr2 = ((((7) * (32) + (two.x))) & 0x3FF);
            break;

        case 1:
            shadowOAM[three.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[three.oamIndex].attr1 = (0<<14) | ((three.x * 8) & 0x1FF);
            shadowOAM[three.oamIndex].attr2 = ((((7) * (32) + (three.x))) & 0x3FF);
            break;

    }

    switch(score) {
        case 0:
            shadowOAM[zero.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[zero.oamIndex].attr1 = (0<<14) | ((zero.x * 8) & 0x1FF);
            shadowOAM[zero.oamIndex].attr2 = ((((7) * (32) + (6))) & 0x3FF);
            break;

        case 1:
            shadowOAM[one.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[one.oamIndex].attr1 = (0<<14) | ((one.x * 8) & 0x1FF);
            shadowOAM[one.oamIndex].attr2 = ((((7) * (32) + (7))) & 0x3FF);
            break;
        case 2:
            shadowOAM[two.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[two.oamIndex].attr1 = (0<<14) | ((two.x * 8) & 0x1FF);
            shadowOAM[two.oamIndex].attr2 = ((((7) * (32) + (8))) & 0x3FF);
            break;
        case 3:
            shadowOAM[three.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[three.oamIndex].attr1 = (0<<14) | ((three.x * 8) & 0x1FF);
            shadowOAM[three.oamIndex].attr2 = ((((7) * (32) + (9))) & 0x3FF);
            break;
        case 4:
            shadowOAM[four.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[four.oamIndex].attr1 = (0<<14) | ((four.x * 8) & 0x1FF);
            shadowOAM[four.oamIndex].attr2 = ((((7) * (32) + (10))) & 0x3FF);
            break;
        case 5:
            shadowOAM[five.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[five.oamIndex].attr1 = (0<<14) | ((five.x * 8) & 0x1FF);
            shadowOAM[five.oamIndex].attr2 = ((((7) * (32) + (11))) & 0x3FF);
            break;
        case 6:
            shadowOAM[six.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[six.oamIndex].attr1 = (0<<14) | ((six.x * 8) & 0x1FF);
            shadowOAM[six.oamIndex].attr2 = ((((7) * (32) + (12))) & 0x3FF);
            break;
        case 7:
            shadowOAM[seven.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[seven.oamIndex].attr1 = (0<<14) | ((seven.x * 8) & 0x1FF);
            shadowOAM[seven.oamIndex].attr2 = ((((7) * (32) + (13))) & 0x3FF);
            break;
        case 8:
            shadowOAM[eight.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[eight.oamIndex].attr1 = (0<<14) | ((eight.x * 8) & 0x1FF);
            shadowOAM[eight.oamIndex].attr2 = ((((7) * (32) + (14))) & 0x3FF);
            break;
        case 9:
            shadowOAM[nine.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[nine.oamIndex].attr1 = (0<<14) | ((nine.x * 8) & 0x1FF);
            shadowOAM[nine.oamIndex].attr2 = ((((7) * (32) + (15))) & 0x3FF);
            break;
        case 10:
            shadowOAM[s1.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[s1.oamIndex].attr1 = (0<<14) | ((s1.x * 8) & 0x1FF);
            shadowOAM[s1.oamIndex].attr2 = ((((7) * (32) + (7))) & 0x3FF);
            break;

            shadowOAM[zero.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[zero.oamIndex].attr1 = (0<<14) | ((zero.x * 8) & 0x1FF);
            shadowOAM[zero.oamIndex].attr2 = ((((7) * (32) + (6))) & 0x3FF);
            break;
        case 11:
            shadowOAM[s1.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[s1.oamIndex].attr1 = (0<<14) | ((s1.x * 8) & 0x1FF);
            shadowOAM[s1.oamIndex].attr2 = ((((7) * (32) + (7))) & 0x3FF);
            break;

            shadowOAM[one.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[one.oamIndex].attr1 = (0<<14) | ((one.x * 8) & 0x1FF);
            shadowOAM[one.oamIndex].attr2 = ((((7) * (32) + (7))) & 0x3FF);
            break;
        case 12:
            shadowOAM[s1.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[s1.oamIndex].attr1 = (0<<14) | ((s1.x * 8) & 0x1FF);
            shadowOAM[s1.oamIndex].attr2 = ((((7) * (32) + (7))) & 0x3FF);
            break;

            shadowOAM[two.oamIndex].attr0 = (0<<14) | ((0) & 0xFF);
            shadowOAM[two.oamIndex].attr1 = (0<<14) | ((two.x * 8) & 0x1FF);
            shadowOAM[two.oamIndex].attr2 = ((((7) * (32) + (8))) & 0x3FF);
            break;

    }

}

void drawBubbles() {
    if (bubble1.active) {
        shadowOAM[bubble1.oamIndex].attr0 = (0<<14) | ((bubble1.y) & 0xFF);
        shadowOAM[bubble1.oamIndex].attr1 = (1<<14) | ((bubble1.x) & 0x1FF);
        shadowOAM[bubble1.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (12))) & 0x3FF);
    } else {
        shadowOAM[bubble1.oamIndex].attr0 = (2<<8);
    }

    if (bubble2.active) {
        shadowOAM[bubble2.oamIndex].attr0 = (0<<14) | ((bubble2.y) & 0xFF);
        shadowOAM[bubble2.oamIndex].attr1 = (1<<14) | ((bubble2.x) & 0x1FF);
        shadowOAM[bubble2.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (12))) & 0x3FF);
    } else {
        shadowOAM[bubble2.oamIndex].attr0 = (2<<8);
    }

    if (bubble3.active) {
        shadowOAM[bubble3.oamIndex].attr0 = (0<<14) | ((bubble3.y) & 0xFF);
        shadowOAM[bubble3.oamIndex].attr1 = (1<<14) | ((bubble3.x) & 0x1FF);
        shadowOAM[bubble3.oamIndex].attr2 = (((0) & 3) << 10) | ((((0) * (32) + (12))) & 0x3FF);
    } else {
        shadowOAM[bubble3.oamIndex].attr0 = (2<<8);
    }
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char *) levelOneCOLLISIONBitmap)[((y) * (256) + (x))];
}

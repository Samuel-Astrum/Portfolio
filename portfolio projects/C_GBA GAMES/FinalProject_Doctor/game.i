# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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






extern volatile unsigned short* videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 99 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 5 "sprites.h" 2





typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
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
    u8 oamIndex;
    int lives;
    int isAttacking;
    int swingCooldown;
    int basicAttack;
    int basicAttackOAM;
    int shotCooldown;
    int shotActive;
    int shotX;
    int shotY;
    int shotOAM;
    int hide;
    int palletChange
} BOSS;

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
    u8 oamIndex;
    int lives;
    int isAttacking;
    int heavyAttack;
    int lightAttack;
    int block;
    int roll;
    int swingCooldown;
    int lightOAM;
    int heavyOAM;
    int palletChange;
    int invulnerable;
    int isBlocking;
} PLAYER;

typedef struct {
    int x;
    int y;
    int width;
    int height;
    int timeUntilNextFrame;
    int isAnimating;
    int currentFrame;
    int numFrames;
    u8 oamIndex;
    int selection;
} CURSOR;
# 2 "game.c" 2
# 1 "game.h" 1


void initMap();
void updateMap();
void drawMap();

void initDungeonOne();
void updateDungeonOne();
void drawDungeonOne();

void initDungeonTwo();
void updateDungeonTwo();
void drawDungeonTwo();

int hasSword;
int dungeonOneCountdown;

int hasShield;
int dungeonTwoCountdown;

int cheatOne;
int cheatTwo;

SPRITE overworldPlayer;
# 3 "game.c" 2

# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 5 "game.c" 2
# 1 "player.h" 1



void initPlayer();
void updatePlayer();
void drawPlayer();

extern PLAYER player;
# 6 "game.c" 2
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
# 7 "game.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void setupSoundInterrupts();
void interruptHandler();

void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 52 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 8 "game.c" 2
# 1 "footsteps.h" 1


extern const unsigned int footsteps_sampleRate;
extern const unsigned int footsteps_length;
extern const signed char footsteps_data[];
# 9 "game.c" 2




int screenX;
int screenY;

int hOff;
int vOff;

typedef enum {
    DOWN, UP, RIGHT, LEFT
} DIRECTION;

void initMap();
void updateMap();
void drawMap();

void initDungeonOne();
void updateDungeonOne();
void drawDungeonOne();

void initDungeonTwo();
void updateDungeonTwo();
void drawDungeonTwo();



int mapCount;
int frameCount;
int dungeonFrame;

int hasSword;
int dungeonOneCountdown;

int hasShield;
int dungeonTwoCountdown;

int cheatOne;
int cheatTwo;


void initMap() {
    overworldPlayer.numFrames = 2;
    overworldPlayer.height = 24;
    overworldPlayer.width = 24;
    overworldPlayer.x = 32;
    overworldPlayer.y = 64;
    overworldPlayer.xVel = 1;
    overworldPlayer.yVel = 1;
    overworldPlayer.oamIndex = 0;



    mapCount = 60;
    frameCount = 0;
}

void updateMap() {


    mapCount--;
    if (mapCount < 0) {
        mapCount = 0;
    }

    if ((~(buttons) & ((1 << 6))) && overworldPlayer.y > 1) {
        overworldPlayer.y -= overworldPlayer.yVel;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = 60;
        }
    }
    if ((~(buttons) & ((1 << 7))) && overworldPlayer.y + overworldPlayer.height + 1 < 160) {
        overworldPlayer.y += overworldPlayer.yVel;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = 60;
        }
    }
    if ((~(buttons) & ((1 << 5))) && overworldPlayer.x > 1) {
        overworldPlayer.x -= overworldPlayer.xVel;
        overworldPlayer.direction = LEFT;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = 60;
        }
    }
    if ((~(buttons) & ((1 << 4))) && overworldPlayer.x + overworldPlayer.width + 1 < 512) {
        overworldPlayer.x += overworldPlayer.xVel;
        overworldPlayer.direction = RIGHT;
        if (mapCount == 0) {
            playSoundB(footsteps_data, footsteps_length, 0);
            mapCount = 60;
        }
    }



    screenX = overworldPlayer.x - hOff;
    screenY = overworldPlayer.y - vOff;


    hOff = overworldPlayer.x - ((240 - overworldPlayer.width) / 2);
    vOff = overworldPlayer.y - ((160 - overworldPlayer.height) / 2);



    int minX = 0;
    int minY = 0;
    int maxX = 512 - 240;
    int maxY = 160 - 160;

    if (hOff < minX) hOff = minX;
    if (hOff > maxX) hOff = maxX;
    if (vOff < minY) vOff = minY;
    if (vOff > maxY) vOff = maxY;


    if (overworldPlayer.currentFrame == 0) {
        if (frameCount >= 30) {
            overworldPlayer.currentFrame = 1;
            frameCount = 0;
        }
    } else if (overworldPlayer.currentFrame == 1) {
        if (frameCount >= 20) {
            overworldPlayer.currentFrame = 0;
            frameCount = 0;
        }
    }
    frameCount++;


}

void drawMap() {

    mgba_printf("%d", frameCount);

    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;

    shadowOAM[0].attr0 = (0 << 14) | ((screenY) & 0xFF);
    shadowOAM[0].attr1 = (2 << 14) | ((screenX) & 0x1FF);
    if (overworldPlayer.direction == LEFT) {
        shadowOAM[0].attr1 |= (1 << 12);
    }
    shadowOAM[0].attr2 = (((0) & 3) << 10) | (((8) * (32) + ((overworldPlayer.currentFrame * 4))) & 0x3FF);

    if (overworldPlayer.x <= 120) {
        shadowOAM[100].attr0 = (0 << 14) | ((80) & 0xFF);
        shadowOAM[100].attr1 = (2 << 14) | ((0) & 0x1FF);
        shadowOAM[100].attr2 = (((4) & 0xF) << 12) | (((21) * (32) + (13)) & 0x3FF);
    } else {
        shadowOAM[100].attr0 |= (2 << 8);
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
}



void initDungeonOne() {
    player.x = 16;
    player.y = 88;
    player.xVel = 1;
    hasSword = 0;
    player.width = 24;
    player.height = 56;
    player.numFrames = 5;
}

void updateDungeonOne() {

    if ((~(buttons) & ((1 << 5))) && player.x > 1) {
        player.x -= player.xVel;
        player.direction = LEFT;
        player.isAnimating = 1;
    } else
    if ((~(buttons) & ((1 << 4))) && player.x + player.width + 1 < 240) {
        player.x += player.xVel;
        player.direction = RIGHT;
        player.isAnimating = 1;
    } else {
        player.isAnimating = 0;
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x, player.y, player.width, player.height, 96, 96, 16, 40)) {
        hasSword = 1;
        dungeonOneCountdown = 180;
    }

    if (player.isAnimating) {
        dungeonFrame++;
        if (dungeonFrame > 12) {
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
            dungeonFrame = 0;
        }
    } else {
        dungeonFrame = 0;
    }

    if ((!(~(oldButtons) & ((1 << 9))) && (~(buttons) & ((1 << 9)))) && (!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {
        cheatOne = 1;
        player.palletChange = 25;
    }

    if (player.palletChange > 0) {
        player.palletChange--;
    }

}

void drawDungeonOne() {
    mgba_printf("%d", player.isAnimating);
    shadowOAM[player.oamIndex].attr0 = (2 << 14) | ((player.y) & 0xFF);
    shadowOAM[player.oamIndex].attr1 = (3 << 14) | ((player.x) & 0x1FF);
    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= (1 << 12);
    }
    if (player.isAnimating) {
        shadowOAM[player.oamIndex].attr2 = (((0) * (32) + ((player.currentFrame * 4))) & 0x3FF);
    } else {
        shadowOAM[player.oamIndex].attr2 = (((0) * (32) + (16)) & 0x3FF);
    }

    if (player.palletChange) {
        shadowOAM[player.oamIndex].attr2 |= (((2) & 0xF) << 12);
    }

    if (!hasSword) {
    shadowOAM[10].attr0 = (2 << 14) | ((96) & 0xFF);
    shadowOAM[10].attr1 = (3 << 14) | ((96) & 0x1FF);
    shadowOAM[10].attr2 = (((0) * (32) + (20)) & 0x3FF);
    } else {
        shadowOAM[10].attr0 |= (2 << 8);
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
}

void initDungeonTwo() {
    player.x = 16;
    player.y = 100;
    player.xVel = 1;
    player.numFrames = 5;
    player.width = 24;
    player.height = 56;
}

void updateDungeonTwo() {

    if ((~(buttons) & ((1 << 5))) && player.x > 1) {
        player.x -= player.xVel;
        player.direction = LEFT;
        player.isAnimating = 1;
    } else
    if ((~(buttons) & ((1 << 4))) && player.x + player.width + 1 < 240) {
        player.x += player.xVel;
        player.direction = RIGHT;
        player.isAnimating = 1;
    } else {
        player.isAnimating = 0;
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x, player.y, player.width, player.height, 96, 96, 16, 40)) {
        hasShield = 1;
        dungeonTwoCountdown = 1;

    }

    if (player.isAnimating) {
        dungeonFrame++;
        if (dungeonFrame > 20) {
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
            dungeonFrame = 0;
        }
    } else {
        dungeonFrame = 0;
    }

    if ((!(~(oldButtons) & ((1 << 9))) && (~(buttons) & ((1 << 9)))) && (!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {
        cheatTwo = 1;
        player.palletChange = 25;
    }

    if (player.palletChange) {
        player.palletChange--;
    }
}

void drawDungeonTwo() {
    shadowOAM[player.oamIndex].attr0 = (2 << 14) | ((player.y) & 0xFF);
    shadowOAM[player.oamIndex].attr1 = (3 << 14) | ((player.x) & 0x1FF);
    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= (1 << 12);
    }
    if (player.isAnimating) {
        shadowOAM[player.oamIndex].attr2 = (((0) * (32) + ((player.currentFrame * 4))) & 0x3FF);
    } else {
        shadowOAM[player.oamIndex].attr2 = (((0) * (32) + (16)) & 0x3FF);
    }

    if (player.palletChange) {
        shadowOAM[player.oamIndex].attr2 |= (((2) & 0xF) << 12);
    }

    if (!hasShield) {
        shadowOAM[55].attr0 = (0 << 14) | ((96) & 0xFF);
        shadowOAM[55].attr1 = (3 << 14) | ((96) & 0x1FF);
        shadowOAM[55].attr2 = (((17) * (32) + (4)) & 0x3FF);
    } else {
        shadowOAM[55].attr0 |= (2 << 8);
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
}

# 1 "player.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "player.c"
# 1 "player.h" 1
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
# 2 "player.h" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
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
# 3 "player.h" 2

void initPlayer();
void updatePlayer();
void drawPlayer();

extern PLAYER player;
# 2 "player.c" 2

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
# 4 "player.c" 2
# 1 "boss.h" 1



extern BOSS firstBoss;
extern BOSS secondBoss;



void initBossEncounter();

void initBossOne();

void updateBossEncounter();

void updateBossOne();

void drawBossEncounter();

void drawBossOne();

void initBossTwoEncounter();
void initBossTwo();
void updateBossTwoEncounter();
void drawBossTwoEncounter();
void drawBossTwo();
# 5 "player.c" 2

# 1 "stateMachine.h" 1

enum {
    START, INSTRUCTIONS, LORE, MAP, DUNGEON1, BOSS1, DUNGEON2, BOSS2, WIN, LOSE, BOSSONETEXT, BOSSTWOTEXT, INITIALDIALOGUE, PAUSE, TREE, HOUSE
};
int state;
int lorePage;

void goToStart();
void start();

void goToInstructions();
void instructions();

void goToLore();
void lore();

void goToMap();
void map();

void goToDungeonOne();
void dungeonOne();

void goToBossOne();
void bossOne();

void goToDungeonTwo();
void dungeonTwo();

void goToBossTwo();
void bossTwo();

void goToWin();
void win();

void goToLose();
void lose();

void goToPause();
void pause();

void goToBossOneText();
void bossOneText();

void goToBossTwoText();
void bossTwoText();

void goToTree();
void tree();

void goToHouse();
void house();


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
# 7 "player.c" 2
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
# 8 "player.c" 2
# 1 "lightSword.h" 1


extern const unsigned int lightSword_sampleRate;
extern const unsigned int lightSword_length;
extern const signed char lightSword_data[];
# 9 "player.c" 2
# 1 "heavySword.h" 1


extern const unsigned int heavySword_sampleRate;
extern const unsigned int heavySword_length;
extern const signed char heavySword_data[];
# 10 "player.c" 2
# 1 "bossDamage.h" 1


extern const unsigned int bossDamage_sampleRate;
extern const unsigned int bossDamage_length;
extern const signed char bossDamage_data[];
# 11 "player.c" 2

PLAYER player;
BOSS firstBoss;

int playerWalk;
int swing;
typedef enum {
    DOWN, UP, RIGHT, LEFT
} DIRECTION;

int realPlayerX;
int realPlayerY;
int lightFrame;
int heavyFrame;

void initPlayer() {
    player.x = 8;
    player.y = 96;
    player.height = 51;
    player.width = 19;
    player.lives = 5;
    player.oamIndex = 0;
    player.xVel = 1;
    player.lightOAM = 2;
    player.heavyOAM = 3;
    player.numFrames = 5;
    playerWalk = 60;

    realPlayerX = player.x + 3;
    realPlayerY = player.y + 3;
}

void updatePlayer() {

    if (state == BOSS1) {
            if ((~(buttons) & ((1 << 5))) && player.x > 1) {
            player.x -= player.xVel;
            player.direction = LEFT;
            player.isAnimating = 1;
        } else
    if ((~(buttons) & ((1 << 4))) && player.x + player.width + 1 < 240 && !collision(realPlayerX, realPlayerY, player.width, player.height, firstBoss.x, firstBoss.y, firstBoss.width, firstBoss.height)) {
            player.x += player.xVel;
            player.direction = RIGHT;
            player.isAnimating = 1;
        } else {
            player.isAnimating = 0;
        }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && !player.swingCooldown) {
            mgba_printf("the player light attacks!");
            playSoundB(lightSword_data, lightSword_length, 0);
            swing = 25;
            lightFrame = 25;
            if (collision(player.x + 3 + player.width, player.y + 3 + 17 + 3, 15, 5, firstBoss.x, firstBoss.y, firstBoss.width, firstBoss.height)) {
                mgba_printf("sword slash hits!");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                firstBoss.palletChange = 25;
                firstBoss.lives--;
            }
            player.isAttacking = 1;
            player.lightAttack = 60;
            player.swingCooldown = 120;
        }

    if (player.lightAttack > 0) {
            player.lightAttack--;
        }

    if ((!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1)))) && !player.swingCooldown) {
            mgba_printf("the player heavy attacks!");
            playSoundB(heavySword_data, heavySword_length, 0);
            swing = 75;
            heavyFrame = 75;
            if (collision(player.x + 3 + player.width, player.y + 3 + 20, 15, 5, firstBoss.x, firstBoss.y, firstBoss.width, firstBoss.height)) {
                mgba_printf("heavy attack hits! YEOUCH");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                firstBoss.palletChange = 25;
                firstBoss.lives -= 2;
            }
            player.isAttacking = 1;
            player.heavyAttack = 60;
            player.swingCooldown = 180;
        }

    if (player.heavyAttack > 0) {
            player.heavyAttack--;
        }

    if (player.swingCooldown > 0) {
            player.swingCooldown--;
        }

    if (player.swingCooldown == 0) {
            player.isAttacking = 0;
        }
    }


    else if (state == BOSS2) {

        if ((~(buttons) & ((1 << 8)))) {
            player.isBlocking = 1;
        } else {

            player.isBlocking = 0;
            if ((~(buttons) & ((1 << 5))) && player.x > 1) {
                player.x -= player.xVel;
                player.direction = LEFT;
                player.isAnimating = 1;
        } else
            if ((~(buttons) & ((1 << 4))) && player.x + player.width + 1 < 240 && !collision(player.x, player.y, player.width, player.height, secondBoss.x, secondBoss.y, secondBoss.width, secondBoss.height)) {
                player.x += player.xVel;
                player.direction = RIGHT;
                player.isAnimating = 1;
        } else {
                player.isAnimating = 0;
        }

        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && !player.swingCooldown) {
            mgba_printf("the player light attacks!");
            swing = 15;
            playSoundB(lightSword_data, lightSword_length, 0);
            if (collision(player.x + player.width, player.y, 15, 5, secondBoss.x, secondBoss.y, secondBoss.width, secondBoss.height)) {
                mgba_printf("sword slash hits!");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                secondBoss.lives--;
                secondBoss.palletChange = 25;
            }
            player.isAttacking = 1;
            player.lightAttack = 60;
            player.swingCooldown = 120;
        }

        if (player.lightAttack > 0) {
            player.lightAttack--;
        }

        if ((!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1)))) && !player.swingCooldown) {
            mgba_printf("the player heavy attacks!");
            swing = 45;
            playSoundB(heavySword_data, heavySword_length, 0);
            if (collision(player.x + player.width, player.y, 15, 5, secondBoss.x, secondBoss.y, secondBoss.width, secondBoss.height)) {
                mgba_printf("heavy attack hits! YEOUCH");
                playSoundB(bossDamage_data, bossDamage_length, 0);
                secondBoss.lives -= 2;
                secondBoss.palletChange = 25;
            }
            player.isAttacking = 1;
            player.heavyAttack = 60;
            player.swingCooldown = 180;
        }

    }


        if (player.heavyAttack > 0) {
            player.heavyAttack--;
        }

        if (player.swingCooldown > 0) {
            player.swingCooldown--;
        }

        if (player.swingCooldown == 0) {
            player.isAttacking = 0;
        }
    }

     if (player.isAnimating) {
        playerWalk++;
        if (playerWalk > 15) {
            player.currentFrame++;
            if (player.currentFrame > player.numFrames - 1) {
                player.currentFrame = 0;
            }
            playerWalk = 0;
        }
    } else {
        playerWalk = 0;
    }

    if (player.palletChange) {
        player.palletChange--;
    }







}

void drawPlayer() {
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
        shadowOAM[player.oamIndex].attr2 |= (((1) & 0xF) << 12);
    }

    if (player.isBlocking) {
        shadowOAM[player.oamIndex].attr2 |= (((2) & 0xF) << 12);
    }

    if (player.isAttacking) {
        if (player.lightAttack) {
            if (swing > 0) {
                swing--;
                shadowOAM[player.lightOAM].attr0 = (0 << 14) | ((player.y + 20) & 0xFF);
                shadowOAM[player.lightOAM].attr1 = (1 << 14);
                if (player.direction == RIGHT) {
                    shadowOAM[player.lightOAM].attr1 |= ((player.x + 3 + player.width + 10) & 0x1FF);
                } else {
                    shadowOAM[player.lightOAM].attr1 |= ((player.x - 16) & 0x1FF) | (1 << 12);
                }

                if (lightFrame > 20) {
                    shadowOAM[player.lightOAM].attr2 = (((2) * (32) + (24)) & 0x3FF);
                } else if (lightFrame > 10) {
                    shadowOAM[player.lightOAM].attr2 = (((2) * (32) + (26)) & 0x3FF);
                } else {
                    shadowOAM[player.lightOAM].attr2 = (((2) * (32) + (28)) & 0x3FF);
                }
            } else {
                shadowOAM[player.lightOAM].attr0 |= (2 << 8);
        }
        lightFrame--;
        } else {
            shadowOAM[player.lightOAM].attr0 |= (2 << 8);
        }
        if (player.heavyAttack) {
            if (swing > 0) {
                swing--;
                shadowOAM[player.heavyOAM].attr0 = (0 << 14) | ((player.y + 20) & 0xFF);
                shadowOAM[player.heavyOAM].attr1 = (1 << 14);
                 if (player.direction == RIGHT) {
                    shadowOAM[player.heavyOAM].attr1 |= ((player.x + player.width + 10) & 0x1FF);
                } else {
                    shadowOAM[player.heavyOAM].attr1 |= ((player.x - 16) & 0x1FF) | (1 << 12);
                }
                if (heavyFrame > 50) {
                    shadowOAM[player.heavyOAM].attr2 = (((4) * (32) + (24)) & 0x3FF);
                } else if (heavyFrame > 25) {
                    shadowOAM[player.heavyOAM].attr2 = (((4) * (32) + (26)) & 0x3FF);
                } else {
                    shadowOAM[player.heavyOAM].attr2 = (((4) * (32) + (28)) & 0x3FF);
                }
            } else {
                shadowOAM[player.heavyOAM].attr0 |= (2 << 8);
        }
        heavyFrame--;
    } else {
        shadowOAM[player.heavyOAM].attr0 |= (2 << 8);
    }
}
}

# 1 "stateMachine.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "stateMachine.c"
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
# 2 "stateMachine.c" 2
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
# 3 "stateMachine.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "stateMachine.c" 2
# 1 "mode4.h" 1
# 13 "mode4.h"
void flipPage();
void setPixel4(int x, int y, unsigned char colorIndex);
void drawRect4(int x, int y, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int x, int y, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
# 5 "stateMachine.c" 2
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
# 6 "stateMachine.c" 2
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
# 7 "stateMachine.c" 2
# 1 "tempStart.h" 1
# 21 "tempStart.h"
extern const unsigned short tempSTARTBitmap[19200];


extern const unsigned short tempSTARTPal[256];
# 8 "stateMachine.c" 2
# 1 "tempCONTROLS.h" 1
# 21 "tempCONTROLS.h"
extern const unsigned short tempCONTROLSBitmap[19200];


extern const unsigned short tempCONTROLSPal[256];
# 9 "stateMachine.c" 2
# 1 "tempLORE.h" 1
# 21 "tempLORE.h"
extern const unsigned short tempLOREBitmap[19200];


extern const unsigned short tempLOREPal[256];
# 10 "stateMachine.c" 2

# 1 "mapTiles.h" 1
# 21 "mapTiles.h"
extern const unsigned short mapTilesTiles[48];


extern const unsigned short mapTilesPal[256];
# 12 "stateMachine.c" 2
# 1 "tempMAP.h" 1







extern const unsigned short tempMAPMap[1024];
# 13 "stateMachine.c" 2
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
# 14 "stateMachine.c" 2
# 1 "dungeonMAP.h" 1







extern const unsigned short dungeonMAPMap[1024];
# 15 "stateMachine.c" 2
# 1 "dungeonTilestemp.h" 1
# 21 "dungeonTilestemp.h"
extern const unsigned short dungeonTilestempTiles[1024];


extern const unsigned short dungeonTilestempPal[256];
# 16 "stateMachine.c" 2
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
# 17 "stateMachine.c" 2
# 1 "bossOne.h" 1







extern const unsigned short bossOneMap[1024];
# 18 "stateMachine.c" 2
# 1 "player.h" 1



void initPlayer();
void updatePlayer();
void drawPlayer();

extern PLAYER player;
# 19 "stateMachine.c" 2
# 1 "tempWIN.h" 1
# 21 "tempWIN.h"
extern const unsigned short tempWINBitmap[19200];


extern const unsigned short tempWINPal[256];
# 20 "stateMachine.c" 2
# 1 "tempLOSE.h" 1
# 21 "tempLOSE.h"
extern const unsigned short tempLOSEBitmap[19200];


extern const unsigned short tempLOSEPal[256];
# 21 "stateMachine.c" 2
# 1 "titleScreen.h" 1
# 21 "titleScreen.h"
extern const unsigned short titleScreenBitmap[19200];


extern const unsigned short titleScreenPal[256];
# 22 "stateMachine.c" 2
# 1 "start.h" 1



void initStart();
void updateStart();
void drawStart();

extern CURSOR cursor;
# 23 "stateMachine.c" 2
# 1 "overWorld.h" 1







extern const unsigned short overWorldMap[4096];
# 24 "stateMachine.c" 2
# 1 "overworldTiles.h" 1
# 21 "overworldTiles.h"
extern const unsigned short overworldTilesTiles[8352];


extern const unsigned short overworldTilesPal[256];
# 25 "stateMachine.c" 2
# 1 "scroll.h" 1
# 21 "scroll.h"
extern const unsigned short scrollBitmap[19200];


extern const unsigned short scrollPal[256];
# 26 "stateMachine.c" 2
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
# 27 "stateMachine.c" 2
# 1 "startTheme.h" 1


extern const unsigned int startTheme_sampleRate;
extern const unsigned int startTheme_length;
extern const signed char startTheme_data[];
# 28 "stateMachine.c" 2
# 1 "pageTurn.h" 1


extern const unsigned int pageTurn_sampleRate;
extern const unsigned int pageTurn_length;
extern const signed char pageTurn_data[];
# 29 "stateMachine.c" 2
# 1 "lore1.h" 1
# 21 "lore1.h"
extern const unsigned short lore1Bitmap[19200];


extern const unsigned short lore1Pal[256];
# 30 "stateMachine.c" 2
# 1 "lore2.h" 1
# 21 "lore2.h"
extern const unsigned short lore2Bitmap[19200];


extern const unsigned short lore2Pal[256];
# 31 "stateMachine.c" 2
# 1 "startingWords.h" 1
# 21 "startingWords.h"
extern const unsigned short startingWordsBitmap[19200];


extern const unsigned short startingWordsPal[256];
# 32 "stateMachine.c" 2
# 1 "dungeonOneTiles.h" 1
# 21 "dungeonOneTiles.h"
extern const unsigned short dungeonOneTilesTiles[1600];


extern const unsigned short dungeonOneTilesPal[256];
# 33 "stateMachine.c" 2
# 1 "dungeonOne.h" 1







extern const unsigned short dungeonOneMap[1024];
# 34 "stateMachine.c" 2
# 1 "bossOneMap.h" 1







extern const unsigned short bossOneMapMap[1024];
# 35 "stateMachine.c" 2
# 1 "spriteSheet.h" 1
# 21 "spriteSheet.h"
extern const unsigned short spriteSheetTiles[16384];


extern const unsigned short spriteSheetPal[256];
# 36 "stateMachine.c" 2
# 1 "postBossOne.h" 1
# 21 "postBossOne.h"
extern const unsigned short postBossOneBitmap[19200];


extern const unsigned short postBossOnePal[256];
# 37 "stateMachine.c" 2
# 1 "postBossTwo.h" 1
# 21 "postBossTwo.h"
extern const unsigned short postBossTwoBitmap[19200];


extern const unsigned short postBossTwoPal[256];
# 38 "stateMachine.c" 2
# 1 "parallaxWin.h" 1
# 21 "parallaxWin.h"
extern const unsigned short parallaxWinTiles[7904];


extern const unsigned short parallaxWinPal[256];
# 39 "stateMachine.c" 2
# 1 "frontPortion.h" 1







extern const unsigned short frontPortionMap[2048];
# 40 "stateMachine.c" 2
# 1 "backPortion.h" 1







extern const unsigned short backPortionMap[2048];
# 41 "stateMachine.c" 2
# 1 "lose.h" 1
# 21 "lose.h"
extern const unsigned short loseBitmap[19200];


extern const unsigned short losePal[256];
# 42 "stateMachine.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3






typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 43 "stateMachine.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 1 3
# 36 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 37 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3



# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdarg.h" 1 3 4
# 40 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 63 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef __int_least64_t time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 62 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/stdio.h" 1 3
# 80 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 186 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);



int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 266 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 396 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 577 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3

# 44 "stateMachine.c" 2
# 1 "dungeonTwo.h" 1








# 8 "dungeonTwo.h"
extern const unsigned short dungeonTwoMap[1024];
# 45 "stateMachine.c" 2
# 1 "bossTwo.h" 1







extern const unsigned short bossTwoMap[1024];
# 46 "stateMachine.c" 2
# 1 "pauseScreen.h" 1
# 21 "pauseScreen.h"
extern const unsigned short pauseScreenBitmap[19200];


extern const unsigned short pauseScreenPal[256];
# 47 "stateMachine.c" 2
# 1 "treeLore.h" 1
# 21 "treeLore.h"
extern const unsigned short treeLoreBitmap[19200];


extern const unsigned short treeLorePal[256];
# 48 "stateMachine.c" 2
# 1 "houseLore.h" 1
# 21 "houseLore.h"
extern const unsigned short houseLoreBitmap[19200];


extern const unsigned short houseLorePal[256];
# 49 "stateMachine.c" 2

int lorePage;
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
int stageOneClear;
int stageTwoClear;
int treeClear;
int houseClear;

void goToStart() {

    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    (*(volatile unsigned short*) 0x04000000) |= (1 << 12);
    flipPage();
    DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[5], 32768 / 2);
    DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, titleScreenPal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(titleScreenBitmap);
    mgba_printf("START INITIALIZED");
    waitForVBlank();
    flipPage();

    state = START;
    initStart();
    boss1Clear = 0;
    boss2Clear = 0;
    treeVisit = 0;
    groundsKeeperVisit = 0;
    treeClear = 0;
    houseClear = 0;
    stageOneClear = 0;
    stageTwoClear = 0;
    hasKey = 0;
    hasSecondKey = 0;
    boss1Clear = 0;
    boss2Clear = 0;
    firstBoss.hide = 0;
    secondBoss.hide = 0;
    hasSword = 0;
    hasShield = 0;
    dungeonTwoCountdown = 0;
    dungeonOneCountdown = 0;
    cheatOne = 0;
    cheatTwo = 0;
}
void start() {
    rSeed++;
    updateStart();
    drawStart();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        stopSounds();
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToLore();
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToInstructions();
    }
    if (cursor.selection == 1 && (!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        stopSounds();
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToLore();
    }
    if (cursor.selection == 2 && (!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        playSoundB(pageTurn_data, pageTurn_length, 0);
        goToInstructions();
    }
}

void goToInstructions() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    flipPage();


    DMANow(3, scrollPal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(scrollBitmap);
    mgba_printf("CONTROLS INITIALIZED");
    waitForVBlank();
    flipPage();
    state = INSTRUCTIONS;
}
void instructions() {

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3)))) || (!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        goToStart();
    }
}

void goToLore() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    hideSprites();
    flipPage();
    flipPage();
    DMANow(3, lore1Pal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(lore1Bitmap);
    mgba_printf("LORE INITIALIZED");
    waitForVBlank();
    flipPage();
    playSoundB(pageTurn_data, pageTurn_length, 0);
    lorePage = 0;

    srand(rSeed);

    state = LORE;
}
void lore() {


    switch (lorePage) {
        case 0:
            if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
                playSoundB(pageTurn_data, pageTurn_length, 0);
                DMANow(3, lore2Pal, ((unsigned short*) 0x05000000), 512 / 2);
                drawFullscreenImage4(lore2Bitmap);
                flipPage();
                lorePage = 1;
            }
            break;
        case 1:
            if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) || (!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
                playSoundB(pageTurn_data, pageTurn_length, 0);
                goToInitialDialogue();
            } else if ((!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1))))) {
                playSoundB(pageTurn_data, pageTurn_length, 0);
                DMANow(3, lore1Pal, ((unsigned short*) 0x05000000), 512 / 2);
                drawFullscreenImage4(lore1Bitmap);
                flipPage();
                lorePage = 0;
            }
    }
}

void goToInitialDialogue() {
    flipPage();
    DMANow(3, startingWordsPal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(startingWordsBitmap);
    waitForVBlank();
    flipPage();
    state = INITIALDIALOGUE;
}

void initialDialogue() {
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        initMap();
        goToMap();
    }
}

void goToMap() {


    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4)))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = (3 << 14) | ((0) << 2) | ((8) << 8);
    DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[4], 32768 / 2);
    DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
    hideSprites();



    DMANow(3, overworldTilesPal, ((unsigned short*) 0x05000000), 512 / 2);
    DMANow(3, overworldTilesTiles, &((CB*) 0x06000000)[0], 16704 / 2);
    DMANow(3, overWorldMap, &((SB*) 0x06000000)[8], (8192) / 2);
    mgba_printf("MAP INITIALIZED");
    state = MAP;
}
void map() {
    updateMap();
    waitForVBlank();
    drawMap();
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 176, 48, 24, 8) && !stageOneClear) {
        hideSprites();
        prevState = MAP;
        initDungeonOne();
        goToDungeonOne();

    } else if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 448, 104, 24, 8) && stageOneClear && !stageTwoClear) {
        hideSprites();
        prevState = MAP;
        initDungeonTwo();
        goToDungeonTwo();
    }

    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 8, 80, 24, 24) && boss1Clear && boss2Clear) {
        prevState = MAP;
        goToWin();
    }

    if ((!(~(oldButtons) & ((1 << 0) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 72, 64, 24, 16))) && (~(buttons) & ((1 << 0) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 72, 64, 24, 16)))) && !treeClear) {
        goToTree();
    }

    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(overworldPlayer.x, overworldPlayer.y, 24, 24, 328, 96, 32, 16) && !houseClear) {
        goToHouse();
    }
}

void goToDungeonOne() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4)))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = (3 << 14) | ((0) << 2) | ((8) << 8);
    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;
    hideSprites();
    DMANow(3, dungeonOneTilesPal, ((unsigned short*) 0x05000000), 512 / 2);
    DMANow(3, dungeonOneTilesTiles, &((CB*) 0x06000000)[0], 3200 / 2);
    DMANow(3, dungeonOneMap, &((SB*) 0x06000000)[8], (2048) / 2);
    dungeonOneCountdown = -1;





    mgba_printf("DUNGEON ONE INITIALIZED");
    state = DUNGEON1;

}
void dungeonOne() {
    updateDungeonOne();
    waitForVBlank();
    if (dungeonOneCountdown > -1) {
        if (dungeonOneCountdown == 180) {
            for (int i = 9; i <= 17; i++) {
                (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (23))] = (((7) * (10) + (6)) & 0x3FF));
            }

            mgba_printf("this was done");
        } else if (dungeonOneCountdown == 120) {
            for (int i = 9; i <= 17; i++) {
                (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (22))] = (((7) * (10) + (6)) & 0x3FF));
            }
            for (int i = 9; i <= 17; i++) {
                (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (24))] = (((7) * (10) + (6)) & 0x3FF));
            }

        } else if (dungeonOneCountdown == 60) {

            for (int i = 9; i <= 17; i++) {
                (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (21))] = (((7) * (10) + (6)) & 0x3FF));
            }
            for (int i = 9; i <= 17; i++) {
                (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (25))] = (((7) * (10) + (6)) & 0x3FF));
            }

        } else if (dungeonOneCountdown == 0) {
            (((SB*) 0x06000000)[8].tilemap[((17) * (32) + (20))] = (((2) * (10) + (3)) & 0x3FF));
            (((SB*) 0x06000000)[8].tilemap[((17) * (32) + (25))] = (((2) * (10) + (3)) & 0x3FF));
            (((SB*) 0x06000000)[8].tilemap[((17) * (32) + (21))] = (((2) * (10) + (4)) & 0x3FF));
            (((SB*) 0x06000000)[8].tilemap[((17) * (32) + (26))] = (((2) * (10) + (4)) & 0x3FF));
        }

        dungeonOneCountdown--;
    }
    drawDungeonOne();
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x, player.y, 24, 24, 160, 64, 56, 64) && hasSword) {
        initPlayer();
        prevState = DUNGEON1;
        initBossOne();
        goToBossOne();
    }
}

void goToBossOne() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4))));
    (*(volatile unsigned short*) 0x04000000) |= (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = (3 << 14) | ((0) << 2) | ((8) << 8);


    DMANow(3, dungeonOneTilesPal, ((unsigned short*) 0x05000000), 512 / 2);
    DMANow(3, dungeonOneTilesTiles, &((CB*) 0x06000000)[0], 3200 / 2);
    DMANow(3, bossOneMapMap, &((SB*) 0x06000000)[8], (2048) / 2);
    if (boss1Clear) {
        keyActive = 1;
    }
    mgba_printf("BOSS ONE INITIALIZED");


    state = BOSS1;
}
void bossOne() {
    updateBossEncounter();
    waitForVBlank();
    drawBossEncounter();
    if (player.lives <= 0) {
        goToLose();
    } else if (firstBoss.lives <= 0 && !boss1Clear) {
        boss1Clear = 1;
        firstBoss.hide = 1;
        goToBossOneText();
    } else if (boss1Clear) {

        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x + 3, player.y + 3, player.width, player.height, 24, 128, 16, 16)) {
            hasKey = 1;
            keyActive = 0;
            for (int i = 25; i <= 26; i++) {
                for (int j = 15; j <= 18; j++) {
                    (((SB*) 0x06000000)[8].tilemap[((j) * (32) + (i))] = (((7) * (10) + (6)) & 0x3FF));
                }
            }
        }

        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x + 3, player.y + 3, player.width, player.height, 192, 120, 24, 32) && hasKey) {
            stageOneClear = 1;
            goToMap();
        }
    }

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3)))) || (!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        prevState = BOSS1;
        goToPause();
    }
}

void goToBossOneText() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4) | (1 << 12);
    hideSprites();
    flipPage();
    DMANow(3, postBossOnePal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(postBossOneBitmap);
    mgba_printf("BOSS ONE TEXT INITIALIZED");
    waitForVBlank();
    flipPage();
    state = BOSSONETEXT;
}
void bossOneText() {
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[4], 32768 / 2);
        DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
        goToBossOne();
    }
}

void goToDungeonTwo() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4)))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = (3 << 14) | ((0) << 2) | ((8) << 8);
    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;
    hideSprites();
    DMANow(3, overworldTilesPal, ((unsigned short*) 0x05000000), 512 / 2);
    DMANow(3, overworldTilesTiles, &((CB*) 0x06000000)[0], 16704 / 2);
    DMANow(3, dungeonTwoMap, &((SB*) 0x06000000)[8], (2048) / 2);
    state = DUNGEON2;
}
void dungeonTwo() {
    updateDungeonTwo();
    waitForVBlank();
    if (dungeonTwoCountdown > 0) {
        for (int i = 11; i <= 17; i++) {
            (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (25))] = (((23) * (18) + (13)) & 0x3FF));
        }
        for (int i = 9; i <= 17; i++) {
            (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (26))] = (((23) * (18) + (13)) & 0x3FF));
        }
        for (int i = 8; i <= 17; i++) {
            (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (27))] = (((23) * (18) + (13)) & 0x3FF));
        }
        for (int i = 7; i <= 17; i++) {
            (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (28))] = (((23) * (18) + (13)) & 0x3FF));
        }
        for (int i = 7; i <= 17; i++) {
            (((SB*) 0x06000000)[8].tilemap[((i) * (32) + (29))] = (((23) * (18) + (13)) & 0x3FF));
        }
    }
    drawDungeonTwo();
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x, player.y, 24, 24, 160, 64, 56, 64)) {
        initPlayer();
        initBossTwo();
        goToBossTwo();
    }
}

void goToBossTwo() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4)))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = (3 << 14) | ((0) << 2) | ((8) << 8);


    DMANow(3, overworldTilesPal, ((unsigned short*) 0x05000000), 512 / 2);
    DMANow(3, overworldTilesTiles, &((CB*) 0x06000000)[0], 16704 / 2);
    DMANow(3, bossTwoMap, &((SB*) 0x06000000)[8], (2048) / 2);
    mgba_printf("BOSS TWO INITIALIZED");
    if (boss2Clear) {
        secondKeyActive = 1;
    }
    state = BOSS2;
}
void bossTwo() {
    updateBossTwoEncounter();
    waitForVBlank();
    drawBossTwoEncounter();
    if (player.lives <= 0) {
        goToLose();
    } else if (secondBoss.lives <= 0 && !boss2Clear) {
        boss2Clear = 1;
        secondBoss.hide = 1;
        goToBossTwoText();
    } else if (boss2Clear) {
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x + 3, player.y + 3, player.width, player.height, 24, 128, 16, 16)) {
            hasSecondKey = 1;
            secondKeyActive = 0;




            for (int x = 13; x <= 17; x++) {
                for (int y = 13; y <= 18; y++) {
                    (((SB*) 0x06000000)[8].tilemap[((y) * (32) + (x))] = (((23) * (18) + (13)) & 0x3FF));
                }
            }
        }
        if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && collision(player.x + 3, player.y + 3, player.width, player.height, 104, 112, 32, 32) && hasSecondKey) {
            stageTwoClear = 1;
            goToMap();
        }
    }

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3)))) || (!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        prevState = BOSS2;
        goToPause();
    }
}

void goToBossTwoText() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    flipPage();
    DMANow(3, postBossTwoPal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(postBossTwoBitmap);
    mgba_printf("BOSS TWO TEXT INITIALIZED");
    waitForVBlank();
    flipPage();
    state = BOSSTWOTEXT;
}
void bossTwoText() {
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[4], 32768 / 2);
        DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
        goToBossTwo();
    }
}

void goToWin() {
# 509 "stateMachine.c"
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4)))) | ((1 << (8 + (1 % 4)))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = (3 << 14) | ((0) << 2) | ((8) << 8);
    (*(volatile unsigned short*) 0x0400000A) = (3 << 14) | ((0) << 2) | ((24) << 8);
    DMANow(3, parallaxWinPal, ((unsigned short*) 0x05000000), 512 / 2);
    DMANow(3, parallaxWinTiles, &((CB*) 0x06000000)[0], 15808 / 2);
    DMANow(3, frontPortionMap, &((SB*) 0x06000000)[8], (4096) / 2);
    DMANow(3, backPortionMap, &((SB*) 0x06000000)[24], (4096) / 2);
    DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
    DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[4], 32768 / 2);
    hideSprites();
    state = WIN;

}
void win() {
    frameCount++;
    if (frameCount % 160 == 0) {
        hOff0 ++;
        hOff1 += 4;
    }

    if (hOff0 > 512 - 240) {
        hOff0 = 0;
    }
    if (hOff0 > 512 -240) {
        hOff1 = 0;
    }

    (*(volatile unsigned short*) 0x04000010) = hOff0;
    (*(volatile unsigned short*) 0x04000012) = 0;
    (*(volatile unsigned short*) 0x04000014) = hOff1;
    (*(volatile unsigned short*) 0x0400001A) = 0;

    shadowOAM[0].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[0].attr1 = (0 << 14) | ((48) & 0x1FF);
    shadowOAM[0].attr2 = (((31) * (32) + (0)) & 0x3FF);

    shadowOAM[1].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[1].attr1 = (0 << 14) | ((56) & 0x1FF);
    shadowOAM[1].attr2 = (((31) * (32) + (1)) & 0x3FF);

    shadowOAM[2].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[2].attr1 = (0 << 14) | ((64) & 0x1FF);
    shadowOAM[2].attr2 = (((31) * (32) + (2)) & 0x3FF);

    shadowOAM[3].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[3].attr1 = (0 << 14) | ((80) & 0x1FF);
    shadowOAM[3].attr2 = (((31) * (32) + (3)) & 0x3FF);

    shadowOAM[4].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[4].attr1 = (0 << 14) | ((88) & 0x1FF);
    shadowOAM[4].attr2 = (((31) * (32) + (4)) & 0x3FF);

    shadowOAM[5].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[5].attr1 = (0 << 14) | ((96) & 0x1FF);
    shadowOAM[5].attr2 = (((31) * (32) + (5)) & 0x3FF);

    shadowOAM[6].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[6].attr1 = (0 << 14) | ((104) & 0x1FF);
    shadowOAM[6].attr2 = (((31) * (32) + (6)) & 0x3FF);

    shadowOAM[7].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[7].attr1 = (0 << 14) | ((112) & 0x1FF);
    shadowOAM[7].attr2 = (((31) * (32) + (11)) & 0x3FF);

    shadowOAM[8].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[8].attr1 = (0 << 14) | ((120) & 0x1FF);
    shadowOAM[8].attr2 = (((31) * (32) + (11)) & 0x3FF);

    shadowOAM[9].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[9].attr1 = (0 << 14) | ((136) & 0x1FF);
    shadowOAM[9].attr2 = (((31) * (32) + (12)) & 0x3FF);

    shadowOAM[10].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[10].attr1 = (0 << 14) | ((144) & 0x1FF);
    shadowOAM[10].attr2 = (((31) * (32) + (13)) & 0x3FF);

    shadowOAM[11].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[11].attr1 = (0 << 14) | ((152) & 0x1FF);
    shadowOAM[11].attr2 = (((31) * (32) + (9)) & 0x3FF);

    shadowOAM[12].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[12].attr1 = (0 << 14) | ((160) & 0x1FF);
    shadowOAM[12].attr2 = (((31) * (32) + (14)) & 0x3FF);

    shadowOAM[13].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[13].attr1 = (0 << 14) | ((168) & 0x1FF);
    shadowOAM[13].attr2 = (((31) * (32) + (14)) & 0x3FF);

    shadowOAM[14].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[14].attr1 = (0 << 14) | ((184) & 0x1FF);
    shadowOAM[14].attr2 = (((31) * (32) + (14)) & 0x3FF);

    shadowOAM[15].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[15].attr1 = (0 << 14) | ((192) & 0x1FF);
    shadowOAM[15].attr2 = (((31) * (32) + (7)) & 0x3FF);

    shadowOAM[16].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[16].attr1 = (0 << 14) | ((200) & 0x1FF);
    shadowOAM[16].attr2 = (((31) * (32) + (15)) & 0x3FF);

    shadowOAM[17].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[17].attr1 = (0 << 14) | ((208) & 0x1FF);
    shadowOAM[17].attr2 = (((31) * (32) + (13)) & 0x3FF);

    shadowOAM[18].attr0 = (0 << 14) | ((120) & 0xFF);
    shadowOAM[18].attr1 = (0 << 14) | ((216) & 0x1FF);
    shadowOAM[18].attr2 = (((31) * (32) + (7)) & 0x3FF);

    shadowOAM[19].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[19].attr1 = (0 << 14) | ((48) & 0x1FF);
    shadowOAM[19].attr2 = (((31) * (32) + (7)) & 0x3FF);

    shadowOAM[20].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[20].attr1 = (0 << 14) | ((56) & 0x1FF);
    shadowOAM[20].attr2 = (((31) * (32) + (1)) & 0x3FF);

    shadowOAM[21].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[21].attr1 = (0 << 14) | ((72) & 0x1FF);
    shadowOAM[21].attr2 = (((31) * (32) + (13)) & 0x3FF);

    shadowOAM[22].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[22].attr1 = (0 << 14) | ((80) & 0x1FF);
    shadowOAM[22].attr2 = (((31) * (32) + (9)) & 0x3FF);

    shadowOAM[23].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[23].attr1 = (0 << 14) | ((88) & 0x1FF);
    shadowOAM[23].attr2 = (((31) * (32) + (7)) & 0x3FF);

    shadowOAM[24].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[24].attr1 = (0 << 14) | ((96) & 0x1FF);
    shadowOAM[24].attr2 = (((31) * (32) + (2)) & 0x3FF);

    shadowOAM[25].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[25].attr1 = (0 << 14) | ((104) & 0x1FF);
    shadowOAM[25].attr2 = (((31) * (32) + (13)) & 0x3FF);

    shadowOAM[26].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[26].attr1 = (0 << 14) | ((112) & 0x1FF);
    shadowOAM[26].attr2 = (((31) * (32) + (5)) & 0x3FF);

    shadowOAM[27].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[27].attr1 = (0 << 14) | ((128) & 0x1FF);
    shadowOAM[27].attr2 = (((31) * (32) + (7)) & 0x3FF);

    shadowOAM[28].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[28].attr1 = (0 << 14) | ((136) & 0x1FF);
    shadowOAM[28].attr2 = (((31) * (32) + (1)) & 0x3FF);

    shadowOAM[29].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[29].attr1 = (0 << 14) | ((152) & 0x1FF);
    shadowOAM[29].attr2 = (((31) * (32) + (7)) & 0x3FF);

    shadowOAM[30].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[30].attr1 = (0 << 14) | ((160) & 0x1FF);
    shadowOAM[30].attr2 = (((31) * (32) + (8)) & 0x3FF);

    shadowOAM[31].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[31].attr1 = (0 << 14) | ((168) & 0x1FF);
    shadowOAM[31].attr2 = (((31) * (32) + (9)) & 0x3FF);

    shadowOAM[32].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[32].attr1 = (0 << 14) | ((184) & 0x1FF);
    shadowOAM[32].attr2 = (((31) * (32) + (16)) & 0x3FF);

    shadowOAM[33].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[33].attr1 = (0 << 14) | ((192) & 0x1FF);
    shadowOAM[33].attr2 = (((31) * (32) + (15)) & 0x3FF);

    shadowOAM[34].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[34].attr1 = (0 << 14) | ((200) & 0x1FF);
    shadowOAM[34].attr2 = (((31) * (32) + (4)) & 0x3FF);

    shadowOAM[35].attr0 = (0 << 14) | ((128) & 0xFF);
    shadowOAM[35].attr1 = (0 << 14) | ((208) & 0x1FF);
    shadowOAM[35].attr2 = (((31) * (32) + (5)) & 0x3FF);

    shadowOAM[36].attr0 = (0 << 14) | ((136) & 0xFF);
    shadowOAM[36].attr1 = (0 << 14) | ((48) & 0x1FF);
    shadowOAM[36].attr2 = (((31) * (32) + (16)) & 0x3FF);

    shadowOAM[37].attr0 = (0 << 14) | ((136) & 0xFF);
    shadowOAM[37].attr1 = (0 << 14) | ((56) & 0x1FF);
    shadowOAM[37].attr2 = (((31) * (32) + (9)) & 0x3FF);

    shadowOAM[38].attr0 = (0 << 14) | ((136) & 0xFF);
    shadowOAM[38].attr1 = (0 << 14) | ((64) & 0x1FF);
    shadowOAM[38].attr2 = (((31) * (32) + (5)) & 0x3FF);

    shadowOAM[39].attr0 = (0 << 14) | ((136) & 0xFF);
    shadowOAM[39].attr1 = (0 << 14) | ((72) & 0x1FF);
    shadowOAM[39].attr2 = (((31) * (32) + (2)) & 0x3FF);

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128 * 4);

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        playSoundA(startTheme_data, startTheme_length, 1);
        hideSprites();
        goToStart();
    }
}

void goToLose() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    flipPage();
    state = LOSE;
    mgba_printf("LOSE INITALIZED");
    DMANow(3, losePal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(loseBitmap);
    waitForVBlank();
    flipPage();
}
void lose() {
    if((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        playSoundA(startTheme_data, startTheme_length, 1);
        goToStart();
    }
}

void goToPause() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    flipPage();
    state = PAUSE;
    mgba_printf("pause INITALIZED");
    DMANow(3, pauseScreenPal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(pauseScreenBitmap);
    waitForVBlank();
    flipPage();
}
void pause() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3)))) && prevState == BOSS1) {
        DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[4], 32768 / 2);
        DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
        goToBossOne();
    } else if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3)))) && prevState == BOSS2) {
        DMANow(3, spriteSheetTiles, &((CB*) 0x06000000)[4], 32768 / 2);
        DMANow(3, spriteSheetPal, ((u16*) 0x5000200), 512 / 2);
        goToBossTwo();
    }
}

void goToTree() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    flipPage();
    state = TREE;
    mgba_printf("tree INITALIZED");
    DMANow(3, treeLorePal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(treeLoreBitmap);
    waitForVBlank();
    flipPage();
}
void tree() {
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        treeClear = 1;
        goToMap();
    }
}

void goToHouse() {
    (*(volatile unsigned short*) 0x04000000) = ((4) & 7) | ((1 << (8 + (2 % 4)))) | (1 << 4);
    flipPage();
    state = HOUSE;
    mgba_printf("house INITALIZED");
    DMANow(3, houseLorePal, ((unsigned short*) 0x05000000), 512 / 2);
    drawFullscreenImage4(houseLoreBitmap);
    waitForVBlank();
    flipPage();
}
void house() {
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        houseClear = 1;
        goToMap();
    }
}

#include "sprites.h"

#define ARROWCOUNT 12

enum {
    LEFT, RIGHT, UP, DOWN
} DIRECTION;

typedef struct {
    SPRITE player;
    int lives;
    int hasShot;
} PLAYER;

typedef struct {
    SPRITE enemy;
    int lives;
    int form;
} ENEMY;

typedef struct {
    SPRITE arrow;
    int direction;
    int active;
} ARROW;

typedef struct {
    SPRITE shot;
    int active;
} SHOT;

extern int score;
extern PLAYER player;
extern ENEMY enemy;
extern ARROW arrows[ARROWCOUNT];

void initGame();
void updateGame();
void drawGame();
void initPlayer();
void initEnemy();
void initArrows();
void initArrowHoles();
void initShot();
void updatePlayer();
void updateEnemy();
void updateArrows();
void updateShot();
void drawPlayer();
void drawEnemy();
void drawArrowBlocks();
void drawShot();
void drawArrows();

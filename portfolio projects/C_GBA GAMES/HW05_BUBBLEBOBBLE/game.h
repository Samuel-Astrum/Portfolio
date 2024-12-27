#include "sprites.h"

PLAYERSPRITE player;
#define MAPWIDTH 256

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

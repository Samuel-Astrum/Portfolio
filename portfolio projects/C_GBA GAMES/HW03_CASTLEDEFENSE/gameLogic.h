

typedef struct {
    unsigned short color;
    int active;
    int holdsKey;
    int spawnLocation;
    int x;
    int y;
    int oldX;
    int oldY;
    int speed;
} ENEMY;

typedef struct {
    unsigned short color;
    int x;
    int y;
    int xVelocity;
    int yVelocity;
    int oldX;
    int oldY;
    int hasKey;
    int hit;
    int playerSide;
    int speed;
} PLAYER;

int wallHealth;
int heartHealth;

void drawPlayer();
void drawEnemy(unsigned short color, ENEMY enemy);
void playerDamageState();

void drawBG();
void drawCastle();
void drawChest();
void drawCrown();
void drawScenery();
void updateGame();
void drawGame();
void initPlayer();
void initEnemy();
void initGame();
void updateGame();
void updatePlayer();
void updateEnemies(ENEMY* enemies);
void drawGame();
void drawPlayer();
void drawEnemies(ENEMY* enemy);
void newEnemy();
void wipeEnemies(ENEMY* enemy);


#define ENEMYCOUNT 6

extern PLAYER player;
extern ENEMY enemies[ENEMYCOUNT];
extern int score;
extern int stunCount;
extern int wipe;
int phaseTwo;



#define TREE RGB(0, 10, 0)
#define GRASS RGB(15, 31, 0)
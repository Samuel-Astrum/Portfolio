
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



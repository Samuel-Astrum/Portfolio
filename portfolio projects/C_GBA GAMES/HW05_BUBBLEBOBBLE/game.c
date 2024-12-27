#include "game.h"
#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "spritesheet.h"
#include "startTILES.h"
#include "startTILEMAP.h"
#include "analogSound.h"
#include "levelOneCOLLISION.h"



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
    //init player variables
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

    //init enemies
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

    //init bubbles
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
            if (BUTTON_HELD(BUTTON_LEFT) && !colorAt(leftX - 1, topY) && !colorAt(leftX - 1, bottomY)) {
            player.x--;
            player.isAnimating = 1;
            player.direction = LEFT;
        } else
        if (BUTTON_HELD(BUTTON_RIGHT) && !colorAt(rightX + 1, topY) && !colorAt(rightX + 1, bottomY)) {
            player.x++;
            player.isAnimating = 1;
            player.direction = RIGHT;
        } else {
            player.isAnimating = 0;
        }
        if (BUTTON_PRESSED(BUTTON_B) && !colorAt(rightX, topY - 1) && !colorAt(leftX, topY - 1)) {
            //jump
            player.isJumping = 1;
        } else {
            player.isJumping = 0;
        }
        //gravity
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

    if (BUTTON_PRESSED(BUTTON_A)) {
            //bubbleBlow
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

    //handling animation

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

        /*if (!walker1.isJumping) {
            int xDiff = walker1.x - player.x;
            if (xDiff < 0 && !colorAt(walker1.x + walker1.width + 2, walker1.y) && !colorAt(walker1.x + walker1.width + 2, walker1.y + walker1.height + 1)) {
                walker1.x++;
                walker1.direction = RIGHT;
            } else if (!colorAt(walker1.x - 1, walker1.y) && !colorAt(walker1.x - 1, walker1.y + walker1.height + 1)){
                walker1.x--;
                walker1.direction = LEFT;
            }
            
            if (!colorAt(walker1.x + walker1.width+1, walker1.y + walker1.height + 1) && !colorAt(walker1.x, walker1.y + walker1.height + 1)) {
            walker1.y++;
        }
            walker1FrameCount++;
        } else {
            if (!colorAt(walker1.x + walker1.width + 1, walker1.y - 1) && !colorAt(walker1.x, walker1.y - 1)) {
            walker1.y--;
            }
            walker1.jumpCount++;
            if (walker1.jumpCount > 45) {
                walker1.isJumping = 0;
            }
        }
        if (walker1.timeUntilNextFrame == 10) {
            walker1.currentFrame++;
        }
        if (walker1.currentFrame > walker1.numFrames - 1) {
            walker1.currentFrame = 0;
        }
        if (walker1FrameCount > 120) {
            walker1.isJumping = 1;
            walker1FrameCount = 0;
        }
        */
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
            //jump
            walker1.isJumping = 1;
        } else {
            walker1.isJumping = 0;
        }
        //gravity
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
            //jump
            walker2.isJumping = 1;
        } else {
            walker2.isJumping = 0;
        }
        //gravity
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
            //jump
            walker3.isJumping = 1;
        } else {
            walker3.isJumping = 0;
        }
        //gravity
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
        //gravity
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
        //gravity
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
        //gravity
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
    DMANow(3, shadowOAM, OAM, 512);
}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(player.y);
    shadowOAM[player.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(player.x);
    if (player.direction == LEFT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    if (player.isJumping) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(23, 0);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(player.currentFrame * 2, 0);
    }
    
    
}

void drawEnemies() {
    if (walker1.alive) {
        if (walker1.fruit) {
            shadowOAM[walker1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker1.y);
            shadowOAM[walker1.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(walker1.x);
            if (walker1.direction == LEFT) {
                shadowOAM[walker1.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 0);
        } else if (walker1.bubble) {
            shadowOAM[walker1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker1.y);
            shadowOAM[walker1.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(walker1.x);
            if (walker1.direction == LEFT) {
                shadowOAM[walker1.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(14, 0);
        } else {
            shadowOAM[walker1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker1.y);
            shadowOAM[walker1.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(walker1.x);
            if (walker1.direction == LEFT) {
                shadowOAM[walker1.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(walker1.currentFrame * 4, 2);
        }
    } else {
        shadowOAM[walker1.oamIndex].attr0 = ATTR0_HIDE;
    }
    
    if (walker2.alive) {
        if (walker2.fruit) {
            shadowOAM[walker2.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker2.y);
            shadowOAM[walker2.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(walker2.x);
            if (walker2.direction == LEFT) {
                shadowOAM[walker2.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 0);
        } else if (walker2.bubble) {
            shadowOAM[walker2.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker2.y);
            shadowOAM[walker2.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(walker2.x);
            if (walker2.direction == LEFT) {
                shadowOAM[walker2.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(14, 0);
        } else {
            shadowOAM[walker2.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker2.y);
            shadowOAM[walker2.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(walker2.x);
            if (walker2.direction == LEFT) {
                shadowOAM[walker2.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(walker2.currentFrame * 4, 2);
        }
    } else {
        shadowOAM[walker2.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (walker3.alive) {
        if (walker3.fruit) {
            shadowOAM[walker3.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker3.y);
            shadowOAM[walker3.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(walker3.x);
            if (walker3.direction == LEFT) {
                shadowOAM[walker3.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 0);
        } else if (walker3.bubble) {
            shadowOAM[walker3.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker3.y);
            shadowOAM[walker3.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(walker3.x);
            if (walker3.direction == LEFT) {
                shadowOAM[walker3.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(14, 0);
        } else {
            shadowOAM[walker3.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(walker3.y);
            shadowOAM[walker3.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(walker3.x);
            if (walker3.direction == LEFT) {
                shadowOAM[walker3.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[walker3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(walker3.currentFrame * 4, 2);
        }
    } else {
        shadowOAM[walker3.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (shooter1.alive) {
        if (shooter1.fruit) {
            shadowOAM[shooter1.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter1.y);
            shadowOAM[shooter1.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter1.x);
            if (shooter1.direction == LEFT) {
                shadowOAM[shooter1.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 0);
        } else if (shooter1.bubble) {
            shadowOAM[shooter1.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter1.y);
            shadowOAM[shooter1.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter1.x);
            if (shooter1.direction == LEFT) {
                shadowOAM[shooter1.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(16, 0);
        } else {
            shadowOAM[shooter1.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter1.y);
            shadowOAM[shooter1.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter1.x);
            if (shooter1.direction == LEFT) {
                shadowOAM[shooter1.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(shooter1.currentFrame * 4 + 12, 2);
        }
        if (shooter1.isJumping) {
            shadowOAM[37].attr0 = ATTR0_SQUARE | ATTR0_Y(shooter1.y);
            shadowOAM[37].attr1 = ATTR1_SMALL | ATTR1_X(shooter1.x);
            shadowOAM[37].attr2 =  ATTR2_TILEID(22, 1);
        }
    } else {
        shadowOAM[shooter1.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (shooter2.alive) {
        if (shooter2.fruit) {
            shadowOAM[shooter2.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter2.y);
            shadowOAM[shooter2.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter2.x);
            if (shooter2.direction == LEFT) {
                shadowOAM[shooter2.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 0);
        } else if (shooter2.bubble) {
            shadowOAM[shooter2.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter2.y);
            shadowOAM[shooter2.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter2.x);
            if (shooter2.direction == LEFT) {
                shadowOAM[shooter2.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(16, 0);
        } else {
            shadowOAM[shooter2.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter2.y);
            shadowOAM[shooter2.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter2.x);
            if (shooter2.direction == LEFT) {
                shadowOAM[shooter2.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(shooter2.currentFrame * 4 + 12, 2);
        }
        if (shooter2.isJumping) {
            shadowOAM[37].attr0 = ATTR0_SQUARE | ATTR0_Y(shooter2.y);
            shadowOAM[37].attr1 = ATTR1_SMALL | ATTR1_X(shooter2.x);
            shadowOAM[37].attr2 =  ATTR2_TILEID(22, 1);
        }
    } else {
        shadowOAM[shooter2.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (shooter3.alive) {
        if (shooter3.fruit) {
            shadowOAM[shooter3.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter3.y);
            shadowOAM[shooter3.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter3.x);
            if (shooter3.direction == LEFT) {
                shadowOAM[shooter3.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 0);
        } else if (shooter3.bubble) {
            shadowOAM[shooter3.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter3.y);
            shadowOAM[shooter3.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter3.x);
            if (shooter3.direction == LEFT) {
                shadowOAM[shooter3.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(16, 0);
        } else {
            shadowOAM[shooter3.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(shooter3.y);
            shadowOAM[shooter3.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(shooter3.x);
            if (shooter3.direction == LEFT) {
                shadowOAM[shooter3.oamIndex].attr1 |= ATTR1_HFLIP;
            }
            shadowOAM[shooter3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(shooter3.currentFrame * 4 + 12, 2);
        }
        if (shooter3.isJumping) {
            shadowOAM[37].attr0 = ATTR0_SQUARE | ATTR0_Y(shooter3.y);
            shadowOAM[37].attr1 = ATTR1_SMALL | ATTR1_X(shooter3.x);
            shadowOAM[37].attr2 =  ATTR2_TILEID(22, 1);
        }
    } else {
        shadowOAM[shooter3.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawWords() {
    shadowOAM[s.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[s.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(s.x * 8);
    shadowOAM[s.oamIndex].attr2 = ATTR2_TILEID(0, 7) | ATTR2_PRIORITY(0);

    shadowOAM[c.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[c.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(c.x * 8);
    shadowOAM[c.oamIndex].attr2 = ATTR2_TILEID(1, 7);

    shadowOAM[o.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[o.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(o.x * 8);
    shadowOAM[o.oamIndex].attr2 = ATTR2_TILEID(2, 7);

    shadowOAM[r.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[r.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(r.x * 8);
    shadowOAM[r.oamIndex].attr2 = ATTR2_TILEID(3, 7);

    shadowOAM[e.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[e.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(e.x * 8);
    shadowOAM[e.oamIndex].attr2 = ATTR2_TILEID(4, 7);

    shadowOAM[colon.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[colon.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(colon.x * 8);
    shadowOAM[colon.oamIndex].attr2 = ATTR2_TILEID(5, 7);

    shadowOAM[h.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[h.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(h.x * 8);
    shadowOAM[h.oamIndex].attr2 = ATTR2_TILEID(0, 8);

    shadowOAM[ee.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[ee.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(ee.x * 8);
    shadowOAM[ee.oamIndex].attr2 = ATTR2_TILEID(4, 7);

    shadowOAM[a.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[a.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(a.x * 8);
    shadowOAM[a.oamIndex].attr2 = ATTR2_TILEID(1, 8);

    shadowOAM[l.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[l.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(l.x * 8);
    shadowOAM[l.oamIndex].attr2 = ATTR2_TILEID(2, 8);

    shadowOAM[t.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[t.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(t.x * 8);
    shadowOAM[t.oamIndex].attr2 = ATTR2_TILEID(3, 8);

    shadowOAM[hh.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[hh.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(hh.x * 8);
    shadowOAM[hh.oamIndex].attr2 = ATTR2_TILEID(0, 8);


    switch(player.lives) {
        case 3:
            shadowOAM[three.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[three.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(three.x * 8);
            shadowOAM[three.oamIndex].attr2 = ATTR2_TILEID(three.x, 7);
            break;

        case 2:
            shadowOAM[two.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[two.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(two.x * 8);
            shadowOAM[two.oamIndex].attr2 = ATTR2_TILEID(two.x, 7);
            break;

        case 1:
            shadowOAM[three.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[three.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(three.x * 8);
            shadowOAM[three.oamIndex].attr2 = ATTR2_TILEID(three.x, 7);
            break;

    }

    switch(score) {
        case 0:
            shadowOAM[zero.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[zero.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(zero.x * 8);
            shadowOAM[zero.oamIndex].attr2 = ATTR2_TILEID(6, 7);
            break;

        case 1:
            shadowOAM[one.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[one.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(one.x * 8);
            shadowOAM[one.oamIndex].attr2 = ATTR2_TILEID(7, 7);
            break;
        case 2:
            shadowOAM[two.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[two.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(two.x * 8);
            shadowOAM[two.oamIndex].attr2 = ATTR2_TILEID(8, 7);
            break;
        case 3:
            shadowOAM[three.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[three.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(three.x * 8);
            shadowOAM[three.oamIndex].attr2 = ATTR2_TILEID(9, 7);
            break;
        case 4:
            shadowOAM[four.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[four.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(four.x * 8);
            shadowOAM[four.oamIndex].attr2 = ATTR2_TILEID(10, 7);
            break;
        case 5:
            shadowOAM[five.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[five.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(five.x * 8);
            shadowOAM[five.oamIndex].attr2 = ATTR2_TILEID(11, 7);
            break;
        case 6:
            shadowOAM[six.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[six.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(six.x * 8);
            shadowOAM[six.oamIndex].attr2 = ATTR2_TILEID(12, 7);
            break;
        case 7:
            shadowOAM[seven.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[seven.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(seven.x * 8);
            shadowOAM[seven.oamIndex].attr2 = ATTR2_TILEID(13,7);
            break;
        case 8:
            shadowOAM[eight.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[eight.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(eight.x * 8);
            shadowOAM[eight.oamIndex].attr2 = ATTR2_TILEID(14, 7);
            break;
        case 9:
            shadowOAM[nine.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[nine.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(nine.x * 8);
            shadowOAM[nine.oamIndex].attr2 = ATTR2_TILEID(15, 7);
            break;
        case 10:
            shadowOAM[s1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[s1.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(s1.x * 8);
            shadowOAM[s1.oamIndex].attr2 = ATTR2_TILEID(7, 7);
            break;

            shadowOAM[zero.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[zero.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(zero.x * 8);
            shadowOAM[zero.oamIndex].attr2 = ATTR2_TILEID(6, 7);
            break;
        case 11:
            shadowOAM[s1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[s1.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(s1.x * 8);
            shadowOAM[s1.oamIndex].attr2 = ATTR2_TILEID(7, 7);
            break;

            shadowOAM[one.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[one.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(one.x * 8);
            shadowOAM[one.oamIndex].attr2 = ATTR2_TILEID(7, 7);
            break;
        case 12:
            shadowOAM[s1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[s1.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(s1.x * 8);
            shadowOAM[s1.oamIndex].attr2 = ATTR2_TILEID(7, 7);
            break;

            shadowOAM[two.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(0);
            shadowOAM[two.oamIndex].attr1 = ATTR1_TINY | ATTR1_X(two.x * 8);
            shadowOAM[two.oamIndex].attr2 = ATTR2_TILEID(8, 7);
            break;

    }

}

void drawBubbles() {
    if (bubble1.active) {
        shadowOAM[bubble1.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(bubble1.y);
        shadowOAM[bubble1.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(bubble1.x);
        shadowOAM[bubble1.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(12, 0);
    } else {
        shadowOAM[bubble1.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (bubble2.active) {
        shadowOAM[bubble2.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(bubble2.y);
        shadowOAM[bubble2.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(bubble2.x);
        shadowOAM[bubble2.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(12, 0);
    } else {
        shadowOAM[bubble2.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (bubble3.active) {
        shadowOAM[bubble3.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(bubble3.y);
        shadowOAM[bubble3.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(bubble3.x);
        shadowOAM[bubble3.oamIndex].attr2 = ATTR2_PRIORITY(0) | ATTR2_TILEID(12, 0);
    } else {
        shadowOAM[bubble3.oamIndex].attr0 = ATTR0_HIDE;
    }
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char *) levelOneCOLLISIONBitmap)[OFFSET(x, y, MAPWIDTH)];
}


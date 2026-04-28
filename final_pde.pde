int paddle1y, paddle2y;
int paddlew = 10;
int paddleh = 100;

float x, y;
float xspeed;
float yspeed;

int scoreLeft = 0;
int scoreRight = 0;


boolean gameOver = false;

void setup() {
  size(800, 500);
  resetBall();

  paddle1y = height/2 - paddleh/2;
  paddle2y = height/2 - paddleh/2;
}

void draw() {
  background(#133376);

  // middle line
  stroke(255);
  line(width/2, 0, width/2, height);


  if (!gameOver) {
    movepaddle();
    moveball();
    paddleball();
    checkGameOver();
    checkScore();
    displayScore();
  } else {
    textSize(40);
    fill(255);
    textAlign(CENTER, CENTER);
    text("GAME OVER", width/2, height/2);
  }
}

void movepaddle() {
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      paddle2y -= 5;
    }
    if (key == 's' || key == 'S') {
      paddle2y += 5;
    }
    if (keyCode == UP) {
      paddle1y -= 5;
    }
    if (keyCode == DOWN) {
      paddle1y += 5;
    }
  }

  rect(20, paddle2y, paddlew, paddleh);
  rect(width - 20 - paddlew, paddle1y, paddlew, paddleh);
}

void moveball() {
  ellipse(x, y, 20, 20);
  x += xspeed;
  y += yspeed;

  // bounce top & bottom
  if (y <= 0 || y >= height) {
    yspeed *= -1;
  }
}

void paddleball() {
  // LEFT paddle
  if (x <= 20 + paddlew &&
    y >= paddle2y &&
    y <= paddle2y + paddleh) {
    xspeed *= -1;
    x = 20 + paddlew;
    scoreLeft++;
  }

  // RIGHT paddle
  if (x >= width - 20 - paddlew &&
    y >= paddle1y &&
    y <= paddle1y + paddleh) {
    xspeed *= -1;
    x = width - 20 - paddlew;
    scoreRight++;
  }
}

void checkScore() {

  if (x < 0) {

    resetBall();
  }


  if (x > width) {
    resetBall();
  }
}

void resetBall() {
  x = width/2;
  y = height/2;

  // random direction
  xspeed = random(2, 4);
  yspeed = random(2, 4);

  if (random(1) > 0.5) xspeed *= -1;
  if (random(1) > 0.5) yspeed *= -1;
}

void displayScore() {
  textSize(32);
  fill(255);
  textAlign(CENTER, TOP);

  text(scoreLeft, width/4, 20);
  text(scoreRight, width * 3/4, 20);
}

void checkGameOver() {

  if (x < 0 || x > width) {
    gameOver = true;
  }
}

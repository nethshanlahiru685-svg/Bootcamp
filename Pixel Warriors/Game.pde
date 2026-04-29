class Game {
  Paddle leftPaddle;
  Paddle rightPaddle;
  Ball ball;

  int scoreLeft = 0;
  int scoreRight = 0;
  boolean gameOver = false;

  Game() {
    leftPaddle = new Paddle(20);
    rightPaddle = new Paddle(width - 30);
    ball = new Ball();
  }

  void run() {
    background(#133376);

    stroke(255);
    line(width/2, 0, width/2, height);

    if (!gameOver) {
      handleInput();

      leftPaddle.update();
      rightPaddle.update();

      ball.move();
      ball.display();

      leftPaddle.display();
      rightPaddle.display();

      checkCollision();
      checkGameOver();
      displayScore();
    } else {
      textSize(40);
      fill(255);
      textAlign(CENTER, CENTER);
      text("GAME OVER", width/2, height/2 - 20);

      textSize(20);
      text("Press ENTER to Restart", width/2, height/2 + 40);
    }
  }

  void handleInput() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') leftPaddle.moveUp();
      if (key == 's' || key == 'S') leftPaddle.moveDown();

      if (keyCode == UP) rightPaddle.moveUp();
      if (keyCode == DOWN) rightPaddle.moveDown();
    }
  }

  void checkCollision() {
    if (ball.x <= 20 + leftPaddle.w &&
        ball.y >= leftPaddle.y &&
        ball.y <= leftPaddle.y + leftPaddle.h) {

      ball.xspeed *= -1.1;
      ball.x = 20 + leftPaddle.w;
      scoreLeft++;
    }

    if (ball.x >= width - 20 - rightPaddle.w &&
        ball.y >= rightPaddle.y &&
        ball.y <= rightPaddle.y + rightPaddle.h) {

      ball.xspeed *= -1.1;
      ball.x = width - 20 - rightPaddle.w;
      scoreRight++;
    }
  }

  void checkGameOver() {
    if (ball.x < 0 || ball.x > width) {
      gameOver = true;
    }
  }

  void displayScore() {
    textSize(32);
    fill(255);
    textAlign(CENTER, TOP);
    text(scoreLeft, width/4, 20);
    text(scoreRight, width * 3/4, 20);
  }

  void restart() {
    scoreLeft = 0;
    scoreRight = 0;
    gameOver = false;

    ball.reset();
    leftPaddle.y = height/2 - leftPaddle.h/2;
    rightPaddle.y = height/2 - rightPaddle.h/2;
  }

  void handleKeyPress() {
    if (gameOver && (keyCode == ENTER || keyCode == RETURN)) {
      restart();
    }
  }
}

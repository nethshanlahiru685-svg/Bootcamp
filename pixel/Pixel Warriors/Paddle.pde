class Paddle {
  float y;
  int x;
  int w = 10;
  int h = 100;

  Paddle(int xPos) {
    x = xPos;
    y = height/2 - h/2;
  }

  void moveUp() {
    y -= 5;
  }

  void moveDown() {
    y += 5;
  }

  void update() {
    y = constrain(y, 0, height - h);
  }

  void display() {
    rect(x, y, w, h);
  }
}

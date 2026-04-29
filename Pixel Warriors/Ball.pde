class Ball {
  float x, y;
  float xspeed, yspeed;

  Ball() {
    reset();
  }

  void move() {
    x += xspeed;
    y += yspeed;

    if (y <= 0 || y >= height) {
      yspeed *= -1;
    }
  }

  void display() {
    ellipse(x, y, 20, 20);
  }

  void reset() {
    x = width/2;
    y = height/2;

    xspeed = random(3, 5);
    yspeed = random(3, 5);

    if (random(1) > 0.5) xspeed *= -1;
    if (random(1) > 0.5) yspeed *= -1;
  }
}

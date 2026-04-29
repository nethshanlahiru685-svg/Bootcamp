Game game;

void setup() {
  size(800, 500);
  game = new Game();
}

void draw() {
  game.run();
}

void keyPressed() {
  game.handleKeyPress();
}

Ball ball1;
Ball ball2;
Ball ball3;

void setup() {

  size(500,500);
  ball1 = new Ball(100,200,50);
  ball2 = new Ball(300,300,30);
  ball3 = new Ball(400,400,70);
}

void draw(){
  background(255);
  ball1.display();
  ball1.update();
  
  ball2.display();
  ball2.update();
  
  ball3.display();
  ball3.update();
  
}

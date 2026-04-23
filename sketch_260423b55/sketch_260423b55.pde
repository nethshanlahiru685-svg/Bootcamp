Ball ball;

void setup(){
  size(800,600);
    ball = new Ball(40);
     ball = new Ball(50);
}

void draw() {
  background(0);
  ball.update();
  ball.display ();
}

class Ball {
  float x, y;
  float vx, vy;
  float radius;
  color col;

  Ball(int r) {
    println("Ball is called"+r);
     x = width/2;
     y = height/2;
     radius = r;
     vx = 10;
     vy = 10;
     col=color(255,0,0);
  }
  
  void update () {
    x = x + vx;
    y = y + vy;
    
  if(x - radius < 0 || x + radius > width){
    vx = -vx;
  }  
    
  if(y - radius < 0 || y + radius >height){
    vy = -vy;
  }  

}
void display(){
  fill(col);
  ellipse(x,y,radius*3,radius*3);
    fill(#1705F0);
    ellipse(x,y,radius*3,radius*1);
    
    fill(#05F029);
    ellipse(x,y,radius*1,radius*3);
    
  
  } 

}

  

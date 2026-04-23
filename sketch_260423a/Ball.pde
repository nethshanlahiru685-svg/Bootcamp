class Ball{//creating a Ball Class

  
  float x, y;
  float radius;
  float vx, vy;
  color col;
  
  
 //constructor
 Ball (float startX,float startY,float r){
    x = startX;
    y = startY;
    radius = r;
    vx=2;
    vy=4;
    col = color(random(0.255),random(0,255),random(0,255)); 
}
void display(){
  fill(col);
ellipse(x,y,radius,radius);
}
void update(){

    x = x+vx;
    y = y+vy;

if((x +radius > width) || (x - radius  < 0)) vx = -vx;
if((y + radius > height) ||( y - radius <0))vy = -vy;

  }

}

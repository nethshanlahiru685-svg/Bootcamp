
void setup(){
size(450,450);
fill(0,255,0);

}
void draw(){
  
  target(random(100,380),random(100,380));
  
}

void target(float xPos, float yPos){
  
    fill(0,255,0);
    circle(xPos,yPos,150);
    
    fill(#02F7E9);
    circle(xPos,yPos,100);
    
    fill(255,0,0);
    circle(xPos,yPos,50);

}

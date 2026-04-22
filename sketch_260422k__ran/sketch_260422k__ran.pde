
void setup(){
size(400,400);
fill(0,255,0);

}
void draw(){
  
  for(int i=0;i<300;i++){
    target(i,i);
  }
}
  


void target(int xPos, int yPos){
  
    fill(0,255,0);
    circle(xPos,yPos,150);
    
    fill(#02F7E9);
    circle(xPos,yPos,100);
    
    fill(255,0,0);
    circle(xPos,yPos,50);

}

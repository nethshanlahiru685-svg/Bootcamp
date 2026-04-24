float x;
float y;
void setup(){
  size(600,600);
  x= 100;
  y= 100;
  
}

void draw(){
  background (255);
  fill (255,0,0);
  rect(x,y,60,30);
}

void keyPressed(){
 if  (keyCode == LEFT ){x=x-2;}
  if (keyCode ==RIGHT){x=x+2;}
  if (keyCode ==UP){y=y-2;}
  if  (keyCode ==DOWN){y=y+2;}
}

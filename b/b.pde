int btnX = 140;
int btnY = 160;
int btnW = 120;
int btnH = 50;
boolean on = true;

void setup(){
size(400,400);

}

void draw(){
  
background(255);
if(on){
  fill(#FC0828);
}
  else{
  fill(#08FC26);
  }
  

rect(btnX, btnY, btnW, btnH);
fill(255);
textAlign(CENTER,CENTER);

if(on){
  text("ON",btnX + btnW/2, btnY + btnH/2);
}
else
{
text("OFF",btnX + btnW/2,btnY + btnH/2);
}
  

}

void mousePressed(){
  if(mouseX > btnX && mouseX < btnX + btnW && mouseY > btnY && mouseY < btnY + btnH)
{
    on = !on;
  }
}

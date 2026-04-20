void setup(){
  size(600,400);
  noStroke();
}

void draw()
{

  color skycolor = color(157,238,247);
  color groundcolor = color(156,245,170);
  color leafcolor = color (82,144,97);
  color trunkcolor = color(95,57,26);
  
  //Background color
  background(skycolor);
 
  
  //Ground color
 // rect(0,200,400,200);
   fill(groundcolor);
  rect(0,height/2,width,height/2);

  
  //Tree Trunk 
    fill(trunkcolor);
    rect(100,150,20,100);
    
    
  //Tree Leaves
  fill( leafcolor);
  ellipse(110,120,150,100);
  
  
  String WellcomeMessage = "Hello... from Univercity of vavuniya";
  textAlign(CENTER,CENTER);
  text(WellcomeMessage,width/2,height/2);
  
 
}

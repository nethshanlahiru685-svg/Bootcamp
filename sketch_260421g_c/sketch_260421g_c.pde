color leafColour, trunkColour;

void setup()
{
  size(700, 400);
  noStroke();
  
}

void draw()
{
  
  color skycolor = color(157,238,247);
  color groundcolor = color(156,245,170);
  
  leafColour  = color(82, 144, 97);
  trunkColour = color(95, 57, 26);
  
  fill(#1595E8);
  ellipse(350,250,45,70);
  
  background(skycolor);  // Sky
  fill(groundcolor);        // Ground
  rect(0, height/2, width, height/2);

  for (float xPos = 50; xPos < width; xPos = xPos + 85)
  {
    drawTree(xPos, 180);
  }

for (float xPos = 50; xPos < width; xPos = xPos + 50)
  {
    drawclud(xPos, 80);
  }
  
}



void drawTree(float treeX, float treeY)
{
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX + 10, treeY - 30, 70, 90);
  
  fill(#1595E8);
  ellipse(250,350,200,70);
  
}
void drawclud(float cludX, float cludY)
{
  fill(#595E62);
  ellipse(cludX + 10, cludY - 30, 70, 90);
}

PImage img;

void setup(){
  size(500,500);
  img = loadImage("images.jpg");
  img.resize(width,height);
  background(0);
}

void draw (){
  //image(img,0,0);
  color c ;
  if(mouseButton == RIGHT){
    c= color(0);
  }
  else{
    c = img.get(mouseX,mouseY);
  }
  
  float Speed = dist(pmouseX,pmouseY,mouseX,mouseY);
  float size  =  map(Speed,0,50,5,40);
  stroke(c);
  strokeWeight(20);
  line(pmouseX,pmouseY,mouseX,mouseY);
  //fill(c);
 // ellipse(mouseX,mouseY,20,20);
}

void keyPressed(){
  if(key == 'c' ||  key == 'c'){
  background(0);
  }
  if(key == 's' || key == 'S'){
    save("file.png");
  }
  
}

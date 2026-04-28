PImage img;

void setup(){
   size(800,600);
   img = loadImage("images.jpg");
   img.resize(width,height);
   background(0);
}

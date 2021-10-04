//switching drawings

float brushTransparency; //declaring variable
float brushColor = (#935353);
float brushSize = 10;
PImage img1;

void setup() {
  size(985, 742);
  img1 = loadImage("face1.png"); //background image
  background(255);
}

void draw() {
  image(img1, 0, 0);
  

}

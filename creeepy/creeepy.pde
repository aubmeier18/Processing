// retro lady photo background with purple line that follows mouse

float[] x = new float[20]; 
float[] y = new float[20];
float segLength = 30; //length of line

PImage bg; //for background

void setup() {
  size(600, 360); // size of background
  strokeWeight(9); //how thick the line is
  stroke(50, 10, 50); // color of line
  bg = loadImage ("creepy.jpg"); //background image
}

void draw() {
  background(bg); //inserts background image
  dragSegment(0, mouseX, mouseY); //the rest makes line follow mouse
  for(int i=0; i<x.length-1; i++) {
    dragSegment(i+1, x[i], y[i]);
  }
}

void dragSegment(int i, float xin, float yin) {
  float dx = xin - x[i];
  float dy = yin - y[i];
  float angle = atan2(dy, dx);  
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  popMatrix();
}

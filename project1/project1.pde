//switching drawings
/*float brushTransparency; //declaring variable ////trying to figure out how to make certain keys brush certain colors
float brushColor = (#935353);
float brushSize = 10; */ not sure how to make a brush that changes colors
 color fillVal = color(#893333);
PImage img1;

void setup() {
  size(985, 742);
  img1 = loadImage("face1.png"); //background image
  background(255);// white background
  brushTransparency = 90;
  
}

void draw() { 
  image(img1, 0, 0);
  
 brushColor = mouseX/2; //brush color is white
    stroke(#501F2C);
    strokeWeight(16);
      
  fill(fillVal); //fill value
  rect(25,25,50,50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      fillVal = (#893333);
    } else if (keyCode == DOWN) {
      fillVal = 0;
    }
  }else{
    fillVal = (#582A2A);
  }
}
      

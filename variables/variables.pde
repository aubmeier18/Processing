
float brushTransparency; //declaring variable
float brushColor = 244;
float brushSize = 10;
boolean brushIsEraser = false;

void setup(){
size (300, 200); // initializing width and height

brushTransparency = 50; //initialize variable
}

void draw  (){
/// erases the background
//background (#6F8DA0);
fill (255, 0, 0, 2); // change the alpha value to change how fast it erases
rect (0, 0, width, height);


//is the brush an eraser or not?
if(brushIsEraser == true){
  brushColor = 255; //brush color is white
}else{
  brushColor = mouseX/2;
}
  //my first ellipse
//noStroke();

stroke(brushColor*2, brushColor, 50, 20);
strokeWeight(14); //thicker//
brushTransparency = mouseY;
fill(#F2AA5D, 20);
line (mouseX, mouseY, width-mouseX, height-mouseY); // width is of the total size so 1/3 of total size
fill (brushColor);
ellipse (mouseX, mouseY, brushSize, brushSize);
}

//if the mouse is pressed toggle b/w eraser brush or color brush
void mousePressed(){
  if(brushIsEraser == false){
brushIsEraser = true;
}else{
  brushIsEraser = false;
}
}

/*

//my first ellipse
noStroke();
fill(22, 18, 44);
ellipse (width/3, 100, 50, 50); // width is of the total size so 1/3 of total size

//my second ellipse
stroke(#264B28);
fill(#75C7F2); /// light blue
ellipse (width/3*2, 100, 50, 50);

fill (122, 44, 188);
stroke(#B72536, 77);
strokeWeight (4);
rect(50, 150, 200, 20);

line (50, 50, 250, 60);
line (width/2, height/2, width/2, height/2*height/3);
*/

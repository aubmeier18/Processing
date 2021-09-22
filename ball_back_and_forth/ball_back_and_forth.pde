//bouncing ball
//a circle moves to the right horizontally
//stay in the center of the vertical axis
//when it reaches the right edge, it reverses direction
//when it reaches the left edge, it reverses direction again

float circleX = 0;
float speed = 1; //-1 reverses the direction

void setup(){
  size (300,200);
}

void draw(){
  //background(0)
  fill(255, 1);
  rect(0, 0, width, height); //x, y, width, height
  fill(255);
  ellipse(circleX, height/2, 20, 20); // x, y, width, height
  //circleX = circleX + speed;
  circleX += speed; //shorthand for above line
  //width
  if((circleX>=width)||(circleX<=0)){ //means.. is circleX greater than or equal to width
    speed = speed * -1;// stops the ball.... the times makes the speed reverse the other way
  }
   /* the above is the same as the 2 below
    if(circleX<=0){ //
    speed = speed * -1;// 
  }
  */
  println("circleX = ", circleX);
}

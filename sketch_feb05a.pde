float circleX;
float circleY;
float ball;
float xspeed = 4;
float yspeed = 3;
float xDirection;
float yDirection;

void setup () {
 size (640, 640);
 circleX = width/2; 
 circleY = height/2;
 xDirection = 1;
 yDirection = 1;
 
 if(width >= height) {
  ball = height/10;
 }
 
 else {
  ball = width/10;
 }
}

void draw () {
  background (255, 255, 255);
  ellipse(circleX, circleY, 32, 32);
  fill (0, 0, 0);
  
  circleX = circleX + (xspeed * xDirection);
  circleY = circleY + (yspeed * yDirection);
  
  line (width/10, height/10, width/10, height/10*9);
  line (width/10*9, height/10, width/10*9, height/10*9);
  line (width/10, height/10, width/10*9, height/10);
  line (width/10, height/10*9, width/10*9, height/10*9);

  if(circleX > (width/10)*9) {
   xspeed = -4; 
  }
  
  if (circleX < width/10) {
    xspeed = 4;
  }
  
  if(circleY > (height/10)*9) {
   yspeed = -3; 
  }
  
  if(circleY < height/10) {
   yspeed = 3; 
  }
}
 

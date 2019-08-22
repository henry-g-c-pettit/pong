class Ball{
 int xPos;
 int yPos;
 int radius = 12;
 int velX;
 int velY;
 color colour = color(255,0,0);
 Ball(int x, int y){
   xPos = x;
   yPos = y;
   velX = 4;
   velY = 2;
 }
 void display(){
   fill(colour);
   noStroke();
   ellipseMode(RADIUS);
   ellipse(xPos, yPos,radius,radius);
 }
 void update(){
   xPos+=velX;
   yPos+=velY;
 }
 void reset(int side){
   xPos = width/2;
   yPos = height/2;
   velY = (int)random(-6,6);
   if(side == 0){
     velX = 6;
   } else{
     velX = -6;
   }
 }
}

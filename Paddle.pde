class Paddle {
  int xPos;
  int yPos;
  int wide = 15;
  int high = 60;
  int movement = 8;
  color colour = color(0);
  int yChange = 0;
  Paddle(int x, int y) {
    xPos = x;
    yPos = y;
  }
  void display() {
    fill(colour);
    rectMode(RADIUS);   
    rect(xPos, yPos, wide, high);
    ellipseMode(RADIUS);
    ellipse(xPos, yPos+high, wide, wide);
    ellipse(xPos, yPos-high, wide, wide);
  }
  void update(){
    yPos+=yChange;
    yPos = constrain(yPos , high/2, height-high/2);
  }
  void move(int step){
    yChange = step; 
  }
}

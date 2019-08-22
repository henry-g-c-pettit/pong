Ball ball;
Paddle right, left;
int gap = 30;
int leftScore, rightScore = 0;
void setup() {
  size(1200, 800);
  background(250);
  ball = new Ball(width/2, height/2);
  right = new Paddle(width-gap, height/2);
  left = new Paddle(gap, height/2);
}
void draw() {
  update();
  right.display();
  left.display();
  ball.display();
  score();
}
void update() {
  background(250);
  collision();
  ball.update();
  left.update();
  right.update();
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      left.move(-10);
      right.move(-10);
    } else if (keyCode == DOWN) {
      left.move(10);
      right.move(10);
    }
  }
}
void keyReleased() {
  left.move(0);
  right.move(0);
}

void collision() {
  int ballLeft = ball.xPos+ball.velX-ball.radius;
  int ballRight = ball.xPos+ball.velX+ball.radius;
  int ballYR = ball.yPos+ball.velY+ball.radius;
  int ballYL = ball.yPos+ball.velY-ball.radius;
  if(ball.yPos+ball.radius>height||ball.yPos-ball.radius<0){
    ball.velY*=-1; //pillar off floor and ceiling
  }
  if(ball.xPos>width){
    ball.reset(1); 
    scoreUpdate(0); //reseting
  }
  if(ball.xPos<0){
    ball.reset(0);
    scoreUpdate(1); //reseting
  }
  if (ballLeft<left.xPos+left.wide) { //will hit paddles based on xPos left side
    if(ballYL>left.yPos-left.high&&ballYL<left.yPos+left.high){ //will hit rect part
      ball.velX*=-1;
      ball.velY= (ball.velY*-1)+(left.yChange/2);
      return;
    }
  }
  if(ballRight>right.xPos-right.wide){ // will hit paddle right based on xPos
    if(ballYR>right.yPos-right.high&&ballYR<right.yPos+right.high){ //will hit rect part
      ball.velX*=-1;
      ball.velY= (ball.velY*-1)+(right.yChange/2);
      return;
    }
  }
  
}

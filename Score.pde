void score() {

  textSize(32);
  text(leftScore, 20, 30); 
  text(rightScore, width - 20, 30);
}
void scoreUpdate(int side) {
  if(side ==0){
    leftScore+=1;
  } else{
    rightScore+=1;
  }
}

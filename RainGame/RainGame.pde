int yPosition = 5;
int randomNumber = (int) random(width);
int score = 0;
void setup() {
  size(600,600);
}
void draw(){
  background(30,60,80);
  fill(0,0,100);
  stroke(0,0,0);
  ellipse(randomNumber,yPosition,5,5);
  yPosition = yPosition + 5;


  fill(220,220,220);
  stroke(0,0,0);
  rect(mouseX , 555, 50, 45);
  fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
 checkCatch(randomNumber, yPosition);
}

void checkCatch(int x , int y){
     if (x > mouseX && x< mouseX+50 && y > 555){
          score = score +1;
              yPosition = 5;
    randomNumber = (int) random(width);
  }
     else if ( y >height && score > 0){
          score--;
              yPosition = 5;
    randomNumber = (int) random(width);
  }
println("Your score is now: " + score); 
}
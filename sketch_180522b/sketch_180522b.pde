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
  if (yPosition >= 600){
    yPosition = 5;
    randomNumber = (int) random(width);
  }
  fill(220,220,220);
  stroke(0,0,0);
  rect(mouseX , 555, 50, 45);
  fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
  
}

void checkCatch(int x){
     if (x > mouseX && x < mouseX+100)
          score++;
     else if (score > 0)
          score--;
     println("Your score is now: " + score); }
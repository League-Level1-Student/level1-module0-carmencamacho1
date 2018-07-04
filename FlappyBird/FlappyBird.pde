int score = 0; 
int birdX = 250;
int birdY = 100;
int grav = 1;
int yVelocity = 0;
int pipeX = 500;
int upperPipeHeight = (int) random(100, 400); 
int distance = 150;
int lowerPipeTop = upperPipeHeight+distance ;
int pipeWidth = 100;

boolean gameover = false;

void setup(){
  size(500,500);
}
void draw (){
  if (gameover){
    background(0,0,0);
textSize(50);
    text("You lose", width/2-100,height/2);
    textSize(20);
    text("Your final score is " +score, width/2-90,height/2 +50);
  }
  else{
    drawGame();
  if(intersectsPipes()){
gameover= true;
  }
  }
  if (birdY >= 480){
    gameover = true;
  }

}
void mousePressed(){
  yVelocity = -10;
  
  if(gameover){
    gameReset();
  }
  
}
boolean intersectsPipes() {
 println("uph =" + upperPipeHeight + "lph = " + lowerPipeTop + "birdY = " + birdY);
     if (birdY <upperPipeHeight && birdX > pipeX && birdX < (pipeX+100)){
       println("1");
       return true;
       }
     else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+100)) {
       println("2");
          return true; 
        }
     else { return false; }
} 
void drawGame (){
   background(0,0,0);
   textSize(12);
   text ("Score:" + score, 10,50);
  stroke(0,0,0);
  fill(0,100,255);
  ellipse(birdX,birdY,50,50);
  yVelocity += grav;
  birdY += yVelocity;
fill(225,0,0);
  rect(pipeX,0,pipeWidth,upperPipeHeight);
  pipeX -= 2;
  rect (pipeX, upperPipeHeight + distance, pipeWidth, 500);
  if (pipeX <= -pipeWidth){
    score ++;
   pipeX = 500; 
    upperPipeHeight = (int)random(300);
  }
  fill(0,255,0);
  rect(0,480,width,20);  
}
void gameReset (){
  score = 0;
  pipeX= 500; 
  birdX = 250;
  birdY = 100;
  upperPipeHeight = (int)random(300);
  gameover = false;
}
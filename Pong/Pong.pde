PImage backgroundImage;
int Ballx = 10;
int ballXSpeed = 10;
int ballY = 10;
int ballYSpeed = (int)random(10);
void setup (){
  size(600,600);
  backgroundImage = loadImage("pong.png");
  backgroundImage.resize(width,height);
}
void draw(){
background(backgroundImage);
  fill(0,0,255);
  stroke(0,0,0);
  ellipse(Ballx = Ballx + ballXSpeed,ballY = ballY +ballYSpeed,50,50);
  if(Ballx >= width){
    ballXSpeed = -ballXSpeed;
  }
  if(Ballx <= 0){
    ballXSpeed = -ballXSpeed;
  }
  if(ballY >= height){
    ballYSpeed = -ballYSpeed;
  }
  if(ballY <= 0){
    ballYSpeed = -ballYSpeed;
  }
  fill(255,255,255);
 rect(mouseX,550,100,20);
  if(intersects(Ballx,ballY,mouseX,550,100)){
    ballYSpeed = -ballYSpeed;
  }

}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}

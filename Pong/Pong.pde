PImage backgroundImage;
int score = 0;
int Ballx = 10;
int ballXSpeed = (int)random(20);
int ballY = 10;
int ballYSpeed = (int)random(20);
void setup () {
  size(600, 600);
  backgroundImage = loadImage("pong.png");
  backgroundImage.resize(width, height);
}
void draw() {
  background(backgroundImage);
  fill(0, 0, 255);
  stroke(0, 0, 0);
  ellipse(Ballx = Ballx + ballXSpeed, ballY = ballY +ballYSpeed, 50, 50);
  if (Ballx >= width) {
    ballXSpeed = -ballXSpeed;
  }
  if (Ballx <= 0) {
    ballXSpeed = -ballXSpeed;
  }
  if (ballY >= height) {
    ballYSpeed = -ballYSpeed;
  }
  if (ballY <= 0) {
    ballYSpeed = -ballYSpeed;
  }
 
  fill(255, 255, 255);
  rect(mouseX, 550, 100, 20);
  if (intersects(Ballx, ballY, mouseX, 550, 100)) {
    ballYSpeed = -ballYSpeed;
    score = score+1;
    
  }
  if( ballY >= 600){
    score = score -1;
  }
  text("Score: " + score, 20, 20);
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength) {
    return true;
  } else {
    return false;
  }
}
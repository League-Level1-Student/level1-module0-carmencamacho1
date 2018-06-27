int birdX = 250;
int birdY = 0;
int grav = 1;
int yVelocity = 0;
int pipeX = 500;
int upperPipeHeight = (int) random(100, 400); 
int distance = 150;
int lowerPipeTop = upperPipeHeight+distance ;
void setup(){
  size(500,500);
}
void draw (){
  background(0,0,0);
  stroke(0,0,0);
  fill(0,100,255);
  ellipse(birdX,birdY,50,50);
  yVelocity += grav;
  birdY += yVelocity;
fill(225,0,0);
  rect(pipeX,0,100,upperPipeHeight);
  println(pipeX);
  pipeX -= 2;
  rect (pipeX, upperPipeHeight + distance, 100, 500);
  if (pipeX <= 0){
   pipeX = 500; 
    upperPipeHeight = (int)random(300);
  }
  fill(0,255,0);
  rect(0,480,width,20);
  if(intersectsPipes()){
  birdY = 480;
  pipeX = 0;
  }

}
void mousePressed(){
  yVelocity = -10;
}
boolean intersectsPipes() {
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+100)){
          return true; }
     else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+100)) {
          return true; }
     else { return false; }
} 
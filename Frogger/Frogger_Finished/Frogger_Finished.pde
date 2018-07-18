int frogX;
int frogY;
int lives;
boolean gamover = true;
boolean finish = true;
Car car1 = new Car(0,50,50,1);
Car car2 = new Car(400,100,100,2);
Car car3 = new Car(0,150,80,3);
Car car4 = new Car(400,200,70,3);
Car car5 = new Car(0,250,60,4);
void setup() {
  size(400,400);
  frogX = width/2;
  frogY = 380;
  lives = 5;
}
void draw () {
  keepInside();
  background(100);
  fill(0,255,0);
  ellipse(frogX,frogY, 30,30);
    
car1.display();
car2.display();
car3.display();
car4.display();
car5.display();
car1.moveRight();
car2.moveLeft();
car3.moveRight();
car4.moveLeft();
car5.moveRight();
if(intersects(car1)){
  frogX = width/2;
  frogY= 380;
  lives--;
}
if(intersects(car2)){
  frogX = width/2;
  frogY= 380;
  lives--;
}
if(intersects(car3)){
  frogX = width/2;
  frogY= 380;
  lives--;
}
if(intersects(car4)){
  frogX = width/2;
  frogY= 380;
  lives--;
}
if(intersects(car5)){
  frogX = width/2;
  frogY= 380;
  lives--;
}
if (gameover()){
  GOScreen();
}
if (finish()){
  finishScreen();
}
}
 void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  frogY -= 30; 
            }
            else if(keyCode == DOWN)
            {
                  frogY += 30;
            }
            else if(keyCode == RIGHT)
            {
                  frogX += 30;
            }
            else if(keyCode == LEFT)
            {
                  frogX -= 30;
            }
      }
}
 void keepInside(){
   if (frogX >= width){
    frogX = width - 20; 
   }
   if (frogX <= 0){
     frogX = 20;
   }
   if (frogY >= height){
     frogY = height - 20;
   }
    if (frogY <= 0){
     frogY = 20;
   }
 }
   boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else
      {
             return false;
      }
   }
   boolean gameover(){
     if (lives == 0){
      return true;
     }
     else {
       return false;
     }
     
   }
   boolean finish(){
     if (frogY <= 20){
      return true; 
     }
     else{
      return false; 
     }
   }
   void GOScreen (){
     background(0,0,0);
     textSize(50);
     text("Game Over",70,height/2);
   }
   void finishScreen(){
    background(0,0,0);
    textSize(50);
    text("Congrats,",80,230);
    textSize(8);
    text("Now you can say you have gotten a ball across a screen without hitting any rectangles.",30,300);
   }
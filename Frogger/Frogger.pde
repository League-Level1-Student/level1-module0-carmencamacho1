int frogX;
int frogY;
Car car1 = new Car(0,50,50,1);
Car car2 = new Car(400,100,100,2);
Car car3 = new Car(0,150,80,3);
Car car4 = new Car(400,200,70,3);
Car car5 = new Car(0,250,60,4);
void setup() {
  size(400,400);
  frogX = width/2;
  frogY = 380;
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
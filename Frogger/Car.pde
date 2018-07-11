public class Car{
int carX;
int carY; 
int carSize;
int carSpeed;
int carRed;
int carGreen;
int carBlue;
Car(int carX, int carY,int carSize, int carSpeed){
this.carX = carX;
this.carY = carY;
this.carSize = carSize;
this.carSpeed = carSpeed;
this.carRed = (int)random(255);
this.carGreen = (int)random(255);
this.carBlue = (int)random(255);
}
void display(){
      fill(carRed, carGreen, carBlue);
      rect(carX, carY, carSize, 30);
}
void moveRight(){
  carX= carX+carSpeed;
  if (carX >= 400){
   carX = 0; 
  }
}
void moveLeft(){
  carX = carX - carSpeed;
   if (carX <= 0){
   carX = 400; 
  }
}
}
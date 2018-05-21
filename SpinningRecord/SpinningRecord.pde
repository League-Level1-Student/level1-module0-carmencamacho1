import ddf.minim.*;
Minim minim;
PImage pictureOfRecord ;
AudioPlayer song;
int i = 360;
void setup (){
  size(500,500);
  pictureOfRecord = loadImage("record.png");
  minim = new Minim(this);
  song = minim.loadFile("", 512);//in the setup method
}
void draw (){
  if (mousePressed){
    rotateImage( pictureOfRecord, i = i + 10);
    song.play();
  }
          image(pictureOfRecord, 0,0);
}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}

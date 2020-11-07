Particle[] spots;
boolean show = true;
void setup()
{
  //noLoop();
  frameRate(60);
  size(800, 800);
  spots = new Particle[1000];
  for (int i = 0; i < spots.length; i++) {
    spots[i] = new Particle();
  }
   for (int i = 0; i< 5;i++)
   {
     spots[i*50] = new OddballParticle();
   }
}
void draw()
{
  background(0);
  for (int i = 0; i< spots.length; i++) {
    spots[i].show();
    spots[i].move();
    }
}
/*void keyPressed(){
  redraw();
}*/
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor, myColor1, myColor2;
  Particle() {
    myX = 400;
    myY = 400;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySpeed = (float)(Math.random()*10);
    myAngle = (double)(Math.random()*2*Math.PI);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}

class OddballParticle extends Particle{
  
  OddballParticle(){
    myX = 400;
    myY = 400;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySpeed = (float)(Math.random()*10);
    myAngle = (double)(Math.random()*2*Math.PI);
  }
  void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show(){
  fill(200,240,200);
  ellipse((float)myX,(float)myY,20,20);
  }
}

Particle[] spots;
boolean show = true;
void setup()
{
  noLoop();
  frameRate(60);
  size(800, 800);
  spots = new Particle[1000];
  for (int i = 0; i < spots.length; i++) {
    spots[i] = new Particle(400, 400);
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
void keyPressed(){
  redraw();
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor, myColor1, myColor2;
  Particle(double x, double y) {
    myX = x;
    myY = y;
    myColor = ((int)(Math.random()*256));
    myColor1 = ((int)(Math.random()*256));
    myColor2 = ((int)(Math.random()*256));
    mySpeed = (float)(Math.random()*10);
    myAngle = (double)(Math.random()*2*Math.PI);
  }
  void show() {
    fill(myColor, myColor1, myColor2);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}

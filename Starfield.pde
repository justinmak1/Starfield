Particle[] parts = new Particle[300];

void setup()
{
  size(400, 400);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
  }
  parts[0] = new OddballParticle();
}

void draw()
{
  background(0);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i].move();
    parts[i].show();
  }
}

class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;

  Particle()
  {
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }

  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5;
    myColor = color(255, 100, 0);
  }

  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    myAngle = myAngle + 0.05;
  }

  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 20, 20);
  }
}

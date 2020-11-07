Particle[] parts = new Particle[1000];

boolean start = false;

void setup() {
  size(600, 600);
  for (int i = 0; i < parts.length; i++)
  parts[i] = new Particle();
  parts[0] = new OddballParticle();
}

void draw() {
  background(0);
  for (int i = 0; i < parts.length; i++) {
    parts[i].show();
    parts[i].move();
  }
}

class Particle {
  double myX, myY, mySpeed, myAngle;
  int myColor;
 Particle() {
    myX = myY = 300;
    myAngle = Math.random()*4*Math.PI;
    mySpeed = Math.random()*3+3;
    myColor = color((int)(Math.random()*30+224), (int)(Math.random()*13+187), (int)(Math.random()*55+173));
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 30, 30);
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle*3)*mySpeed; 
    }
}

  class OddballParticle extends Particle {
    OddballParticle () {
      myX = 300;
      myY = 300;
      mySpeed = Math.random()*3;
      myColor = color(255, 125, 173);
    }
    public void move() {
      myX = myX - Math.cos(myAngle)*mySpeed*mySpeed;
      myY = myY + Math.sin(myAngle); 
    }
    public void show() {
      noStroke();
      fill(myColor);
      ellipse((float)myX, (float)myY, 80, 80);
    }
  }

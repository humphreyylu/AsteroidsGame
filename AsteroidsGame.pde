ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();
Star [] sue = new Star[100];
public void setup() 
{
  background(0, 0, 0);
  size(500, 500);
  for (int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    rocks.add(new Asteroid());
    //rocks.get(i).show();
    //rocks.get(i).move();
  }
}
public void draw() 
{
  background(0, 0, 0);
  bob.show();
  bob.move();
  for (int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d<10){
      rocks.remove(i);
      break;
    }

    for (int j = 0; j < shots.size(); j++) {
      shots.get(j).move();
      shots.get(j).show();
      float g = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if (g<10) {
        shots.remove(j);
        rocks.remove(i);
        break;
      }
    }
  }

  if (keyPressed) {
    if (key == 'w') {
      bob.accelerate(0.1);
    }
    if (key == 's') {
      bob.accelerate(-0.1);
    }
    if (key == 'a') {
      bob.turn(-10);
    }
    if (key == 'd') {
      bob.turn(10);
    }
    if (key == 'f') {
      bob.hyperspace();
    } else if (key == ' ') {
      shots.add(new Bullet(bob));
    }
  }
}


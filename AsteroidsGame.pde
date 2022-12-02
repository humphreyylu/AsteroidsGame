ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
Star [] sue = new Star[100];
public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
    rocks.add(new Asteroid());
//rocks.get(i).show();
//rocks.get(i).move();
  }
}
public void draw() 
{
  background(0,0,0);
  bob.show();
  bob.move();
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
  for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getAsteroidX(), (float)rocks.get(i).getAsteroidY());
    if(d<10)
      rocks.remove(i);
  }
  if(keyPressed){
    if(key == 'w'){
      bob.accelerate(0.1);
    }
    if(key == 's'){
      bob.accelerate(-0.1);
    }
    if(key == 'a'){
      bob.turn(-10);
    }
    if(key == 'd'){
      bob.turn(10);
    }
    if(key == 'f'){
      bob.hyperspace();
    }
  }
  
}

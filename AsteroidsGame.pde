Spaceship bob = new Spaceship();
Star [] sue = new Star[100];
public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
}
public void draw() {
  background(0,0,0);
  bob.show();
  bob.move();
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
}
  public void keyPressed() {
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
      if(key == 'f') {
        bob.hyperspace();
      }
  }//keypressed
  

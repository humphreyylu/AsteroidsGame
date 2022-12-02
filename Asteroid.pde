class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners=6;
    xCorners = new int [corners];
    yCorners = new int[corners];
    xCorners[0]=-11;
    yCorners[0]=-8;
    xCorners[1]=7;
    yCorners[1]=-8;
    xCorners[2]=13;
    yCorners[2]=0;
    xCorners[3]=6;
    yCorners[3]=10;
    xCorners[4]=-11;
    yCorners[4]=8;
    yCorners[5]=-5;
    yCorners[5]=0;
    myColor = color(128,128,128);
    myXspeed = (Math.random()*2);
    myYspeed = (Math.random()*2);
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*8)+2;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public double getAsteroidX() {
    return myCenterX;
  }
  public double getAsteroidY() {
    return myCenterY;
  }
}

class Bullet extends Floater{
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(0.5);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public void show() {
    ellipse((float)myCenterX,(float)myCenterY,2,2);
  }
   public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}

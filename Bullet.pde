class Bullet extends Floater{
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(2);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public void show() {
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
   public double getBulletX() {
    return myCenterX;
  }
  public double getBulletY() {
    return myCenterY;
  }
}

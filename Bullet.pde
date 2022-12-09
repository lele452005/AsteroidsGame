class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myXspeed = theShip.getMyXSpeed();
    myYspeed = theShip.getMyYSpeed();
    accelerate(1.5);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void setCenterX(double x){
    myCenterX = x;
  }
  public void setCenterY(double y){
    myCenterY=y;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
} 

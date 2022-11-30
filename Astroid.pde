class Astroid extends Floater
{
    protected double rotSpeed;
    public Astroid(){
      rotSpeed = (Math.random()*5)-2;
      myColor = color(255, 255, 255);
      corners = 4;
      xCorners = new int [corners];
      yCorners = new int [corners];
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1]=0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
    }
    public void setCenterX(double x){
      myCenterX = x;
    }
    public void setCenterY(double y){
      myCenterY=y;
    }
    public void move(){
      turn(rotSpeed);
      super.move(); 
    }
}

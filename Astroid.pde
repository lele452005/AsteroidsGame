class Astroid extends Floater
{
    protected double rotSpeed;
    public Astroid(){
      rotSpeed = (Math.random()*5)-2;
      myColor = color(#FF55B0);
      corners = 11;
      xCorners = new int [corners];
      yCorners = new int [corners];
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myXspeed = Math.random();
      myYspeed = Math.random();
      myPointDirection = (int)(Math.random()*360);
      xCorners[0] = 0;
      yCorners[0] = 0;
      xCorners[1] = 5;
      yCorners[1]= 6;
      xCorners[2] = 9;
      yCorners[2] = 10;
      xCorners[3] = 9;
      yCorners[3] = 11;
      xCorners[4] = 5;
      yCorners[4] = 14;
      xCorners[5] = 0;
      yCorners[5] = 11;
      xCorners[6] = -5;
      yCorners[6] = 14;
      xCorners[7] = -9;
      yCorners[7] = 11;
      xCorners[8] = -9;
      yCorners[8] = 10;
      xCorners[9] = -5;
      yCorners[9] = 6;
      xCorners[10] = 0;
      yCorners[10] = 0;
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
    public void move(){
      turn(rotSpeed);
      super.move(); 
    }
}

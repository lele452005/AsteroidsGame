class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private int starColor;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    starColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show()
  {
    noStroke();
    fill(starColor);
    ellipse(myX, myY, 3, 3);
  } 
}

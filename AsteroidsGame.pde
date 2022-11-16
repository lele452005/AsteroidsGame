Spaceship bob = new Spaceship();
Star [] starArr = new Star [200];
public void setup() 
{
  size(500,500);
  for (int i=0; i<200; i++){
    starArr[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<starArr.length; i++){
    starArr[i].show();
  }
  bob.move();
  bob.show();
}

public void keyPressed()
{
  if (key == '2'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*500));
    bob.setCenterY((int)(Math.random()*500));
  } else if (key == '5'){
    bob.accelerate(0.5);
  } else if (key == '4'){
    bob.turn(-10);
  } else if (key == '0'){
    bob.turn(10);
  }
  
}


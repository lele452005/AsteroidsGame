Spaceship bob = new Spaceship();
Astroid tim = new Astroid();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
ArrayList <Astroid> rocks = new ArrayList <Astroid>();

Star [] starArr = new Star [200];
public void setup() 
{
  size(500,500);
  for (int i=0; i<200; i++){
    starArr[i] = new Star();
  }
  for (int x=0; x<=10; x++){
    rocks.add(new Astroid());
  }
  for (int x=0; x<=10; x++){
    shots.add(new Bullet(bob));
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
  for (int i = 0; i<shots.size(); i++){
    (shots.get(i)).move();
    (shots.get(i)).show();
  }
  for (int i=0; i<shots.size(); i++){
    for (int j=0; j<rocks.size(); j++){
      float s = dist((float)rocks.get(j).getX(), (float)rocks.get(j).getY(), (float) shots.get(i).getX(), (float)shots.get(i).getY());
      if (s<9){
        rocks.remove(j);
        shots.remove(i);
      }
    }
  }
  for (int i=0; i<rocks.size(); i++){
    (rocks.get(i)).move();
    (rocks.get(i)).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float) rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d<10){
      rocks.remove(i);
    }
  }
}

    
public void keyPressed()
{
  if (key == '2'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*500));
    bob.setCenterY((int)(Math.random()*500));
    bob.setPointDirection((int)(Math.random()*360));
  } else if (key == '5'){
    bob.accelerate(0.5);
  } else if (key == '4'){
    bob.turn(-10);
  } else if (key == '0'){
    bob.turn(10);
  } else if (key == '1') {
    shots.add(new Bullet(bob));
  }
}

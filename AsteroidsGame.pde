Spaceship bob = new Spaceship();
Astroid tim = new Astroid();
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
}
public void draw() 
{
  background(0);
  for (int i=0; i<starArr.length; i++){
    starArr[i].show();
  }
  bob.move();
  bob.show();
  for (int i=0; i<rocks.size(); i++){
    (rocks.get(i)).move();
    (rocks.get(i)).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float) rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d<20){
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
  }
  
}

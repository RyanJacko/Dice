Die bob;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  for(int x = 50; x <=450; x +=60)
  {
    for(int y = 250; y <=450; y +=60)
    bob = new Die(x, y, 55);
    bob.show();
  }

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, myW;
  Die(int x, int y, int w) //constructor
  {
    myX = x;
    myY = y;
    myW = w;
  }
  void roll()
  {
  
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*156)+100,(int)(Math.random()*156)+100,(int)(Math.random()*156)+100);
    rect(myX, myY, myW,55);
    
  }
}
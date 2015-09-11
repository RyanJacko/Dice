Die bob;
int c;
void setup()
{
  size(500,500);
  noLoop();
  c = (int)(Math.random()*6)+1;
}
void draw()
{
  for(int x = 50; x <=450; x +=60)
  {
    for(int y = 250; y <=450; y +=60)
    bob = new Die(x, y, 55);
    bob.roll();
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
    roll();
    myX = x;
    myY = y;
    myW = w;
  }
  void roll()
  {
    if (c == 6)
    {
      value = //use else if statements for each instance
  
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*156)+100,(int)(Math.random()*156)+100,(int)(Math.random()*156)+100);
    rect(myX, myY, myW,55);
    fill(0);
    
  }
}
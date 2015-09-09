Die bob;
void setup()
{
  size(500,500);
  noLoop();
  bob = new Die(20,20);
	noLoop();
}
void draw()
{
bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
    rect(30,30,30,30);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
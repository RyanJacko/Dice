void setup()
{
  background(0, 0, 0);
  size(1000, 1000);
  noLoop();
}
void draw()
{
  int total = 0;
  for (int x=1; x <=1000; x += 50)
  {
    for (int y=1; y <=1000; y +=50)
    {
      Die bob = new Die(x, y);
      total = total + bob.c;
      bob.drawOutside();
      bob.drawBasedonC();
    }
  }
  System.out.println(total);
  fill((int)(Math.random()*156)+100, (int)(Math.random()*156)+100, (int)(Math.random()*156)+100);
  textSize(200);
  textAlign(CENTER, CENTER);
  text(total, 500, 500);
}


void mousePressed() 
{
  redraw();
}
class Die 
{
  public int c;
  int startX, startY;

  Die(int startX, int startY) 
  {
    this.startX = startX;
    this.startY = startY;
    this.c = (int)(Math.random()*6)+1;
    System.out.println(this.c);
  }

  void drawOutside() {
    for (int x = 1; x <=50; x +=50)
    {
      for (int y = 1; y <=50; y +=50) {
        stroke(0);
        fill((int)(Math.random()*156)-25, (int)(Math.random()*156)-25, (int)(Math.random()*156)-25);
        rect(x+this.startX, y+this.startY, 50, 50);
        fill(0);
      }
    }
  }

  void drawOneDot()
  {
    for (int x = 1; x <=50; x +=60)
    {
      for (int y = 1; y <=50; y +=60)
      {
        fill(0);
        ellipse (x+25+this.startX, y+25+this.startY, 7, 7);
      }
    }
  }

  void drawTwoDots()
  {
    for (int x = 1; x <=50; x +=60)
    {
      for (int y = 1; y <=50; y +=60)
      {
        fill(0);
        ellipse (x+15+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+35+this.startY, 7, 7);
      }
    }
  }
  void drawThreeDots() 
  {
    for (int x = 1; x <=50; x +=60)
    {
      for (int y = 1; y <=50; y +=60)
      {
        fill(0);
        ellipse (x+15+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+25+this.startX, y+25+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+35+this.startY, 7, 7);
      }
    }
  }
  void drawFourDots() 
  {
    for (int x = 1; x <=50; x +=60)
    {
      for (int y = 1; y <=50; y +=60)
      {
        fill(0);
        ellipse (x+15+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+15+this.startX, y+35+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+35+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+15+this.startY, 7, 7);
      }
    }
  }
  void drawFiveDots() 
  {
    for (int x = 1; x <=50; x +=60)
    {
      for (int y = 1; y <=50; y +=60)
      {
        fill(0);
        ellipse (x+15+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+15+this.startX, y+35+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+35+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+25+this.startX, y+25+this.startY, 7, 7);
      }
    }
  }
  void drawSixDots() 
  {
    for (int x = 1; x <=50; x +=60)
    {
      for (int y = 1; y <=50; y +=60)
      {
        fill(0);
        ellipse (x+15+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+15+this.startX, y+25+this.startY, 7, 7);
        ellipse (x+15+this.startX, y+35+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+15+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+25+this.startY, 7, 7);
        ellipse (x+35+this.startX, y+35+this.startY, 7, 7);
      }
    }
  }


  void drawBasedonC()
  {
    if (this.c == 1)
    {
      this.drawOneDot();
    } else if (this.c == 2)
    {
      this.drawTwoDots();
    } else if (this.c == 3)
    {
      this.drawThreeDots();
    } else if (c == 4)
    {
      this.drawFourDots();
    } else if (c == 5)
    {
      this.drawFiveDots();
    } else if (c == 6)
    {
      this.drawSixDots();
    }
  }  

  void show()
  {
    noStroke();
    fill((int)(Math.random()*156)+100, (int)(Math.random()*156)+100, (int)(Math.random()*156)+100, 100);
    fill(0);
  }
}
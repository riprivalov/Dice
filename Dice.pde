void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX=x;
   		myY=y;
  		flip();
	}
	void roll()
	{
		if((int)(Math.Random()*7)<= 7;
		{
			fill(0);
			ellipse(75,75,10,10);
		}
	}
	void show()
	{
		fill(255);
     	rect(50,50,50,50,10);
	}
}

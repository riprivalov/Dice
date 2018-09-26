	int myX, myY;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0,0,0);
	Die bob = new Die(myX,myY);
	bob.show();
	bob.roll();

}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{

	int f = (int)(Math.random()*6);
	Die(int myX, int myY) //constructor
	{

		x=myX;
   		y=myY;

	}
	void roll(){
			if(f == 1){
			fill(0);
			ellipse(x + 15,y+25,10,10);
			ellipse(x + 35,y+25,10,10);
		}
			if(f == 2){
			fill(0);
			ellipse(x+25,y+35,10,10);
			ellipse(x+25,y+50,10,10);
			ellipse(x+25,y+65,10,10);
		}
			if(f == 3){
			fill(0);
			ellipse(x+15,y+15,10,10);
			ellipse(x+15,y+35,10,10);
			ellipse(x+35,y+15,10,10);
			ellipse(x+35,y+35,10,10);

		}
			if(f == 4){
			fill(0);
			ellipse(x+25,y+25,10,10);
			ellipse(x+13,y+13,10,10);
			ellipse(x+13,y+37,10,10);
			ellipse(x+37,y+13,10,10);
			ellipse(x+37,y+37,10,10);
		}
			if(f == 5){
			fill(0);
			ellipse(x+15,y+35,10,10);
			ellipse(x+15,y+50,10,10);
			ellipse(x+15,y+65,10,10);
			ellipse(x+35,y+35,10,10);
			ellipse(x+35,y+50,10,10);
			ellipse(x+35,y+65,10,10);

		}
			if(f == 0){
			fill(0);
			ellipse(x+ 25,y+25,10,10);
		}
	}

	void show(){
		fill(255);
     	rect(myX,myY,50,50,10);
	}


}

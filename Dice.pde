void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0,0,0);
	Die bob = new Die(50,50);
	bob.show();
	bob.roll();

}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY;
	int f = (int)(Math.random()*7);
	Die(int x, int y) //constructor
	{
		myX=x;
   		myY=y;

	}
	void roll()
	{
			if(f == 1){
			fill(0);
			ellipse(75,75,10,10);
		}
	{
			if(f == 2){
			fill(0);
			ellipse(75,75,10,10);
{
			if(f == 3){
			fill(0);
			ellipse(75,75,10,10);
		}
{
			if(f == 4){
			fill(0);
			ellipse(75,75,10,10);
		}
{
			if(f == 5){
			fill(0);
			ellipse(75,75,10,10);
		}
{
			if(f == 6){
			fill(0);
			ellipse(75,75,10,10);
		}

	}

}
	void show(){
		fill(255);
     	rect(50,50,50,50,10);
	}


}

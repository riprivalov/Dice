int myX, myY;
int sum = 0;
void setup()
{
	size(1500,1500);
	noLoop();
}
void draw()
{
	sum = 0;
	background(0,0,0);
	for(int y=0;y<=1500;y=y+50){
			for(int x=0;x<=1500;x=x+50){
			
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
		}
	}
	fill(155,155,255);
	textSize(36);
	text("The number of dots is:" + sum, 750,100);

}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int x, y;
	int f = (int)(Math.random()*6);
	Die(int myX, int myY) //constructor
	{

		x=myX;
   		y=myY;

	}
	void roll(){
			sum += f;
			if(f == 1){
			fill(255,0,x);
			ellipse(x + 15,y+25,10,10);
			ellipse(x + 35,y+25,10,10);
		}
			if(f == 2){
			fill(x,255,0);
			ellipse(x+25,y+12,10,10);
			ellipse(x+25,y+25,10,10);
			ellipse(x+25,y+38,10,10);
		}
			if(f == 3){
			fill(x,0,255);
			ellipse(x+15,y+15,10,10);
			ellipse(x+15,y+35,10,10);
			ellipse(x+35,y+15,10,10);
			ellipse(x+35,y+35,10,10);

		}
			if(f == 4){
			fill(x,150,150-x);
			ellipse(x+25,y+25,10,10);
			ellipse(x+13,y+13,10,10);
			ellipse(x+13,y+37,10,10);
			ellipse(x+37,y+13,10,10);
			ellipse(x+37,y+37,10,10);
		}
			if(f == 5){
			fill(x,150-y,0);
			ellipse(x+15,y+12,10,10);
			ellipse(x+15,y+25,10,10);
			ellipse(x+15,y+38,10,10);
			ellipse(x+35,y+12,10,10);
			ellipse(x+35,y+25,10,10);
			ellipse(x+35,y+38,10,10);

		}
			if(f == 0){
			fill(x,150,150);
			ellipse(x+ 25,y+25,10,10);
		}
	}

	void show(){
		fill(255);
     	rect(x,y,50,50,510);
	}


}

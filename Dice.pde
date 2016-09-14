
void setup()
{
	size(800,600);
	background(5,0,100);
	noLoop();
}

void draw()
{
	for(int y = 60; y<= 480; y+=60)
  	{
    for(int x = 75; x<=500; x+=70)
    	{
    		Die bao = new Die(x,y,45);
			bao.show();
			bao.roll();
		}
	}
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//boolean dice;
	int myX;
	int myY;
	int myWidth;

	Die(int x, int y, int w)
	{
		myX = x;
		myY = y;
		myWidth = w;
		roll();
	}
	void roll()
	{
		if((int)(Math.random()*7)<= 1)
		{
			System.out.println("1");
			fill(0);
			ellipse(myX + 22, myY + 22, 5, 5);
		}
		else if((int)(Math.random()*7)<= 2)
		{
			System.out.println("2");
			fill(0);
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 30, myY + 30, 5, 5);
		}
		else if((int)(Math.random()*7)<=3)
		{
			System.out.println("2");
			fill(0);
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 23, myY + 23, 5, 5);
			ellipse(myX + 30, myY + 30, 5, 5);
		}
	}
	void show()
	{
		noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
		//fill(255);
		//display total sum of dice
		//change color of dice dots
		//
	}
}

//draw animal, move animal x number of steps based on total sum of dice
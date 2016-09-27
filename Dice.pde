
int score = 0;
//int displayScore =0;


void setup()
{
	size(800,600);
	background(5,0,100);
	noLoop();

}
//int progress = 0;
void draw()
{
	for(int y = 60; y<= 480; y+=60)
  	{
    for(int x = 75; x<=500; x+=70)
    	{
    		Die bao = new Die(x,y,45);
			bao.roll();
			bao.show();
			//bao.progress();
		}
	}
	System.out.println(score);
	//int bar;
	//bar = score;
	//rect(50,550,bar/5,10);
}
//void bar()
//{
//while(progress <= 550)
	//{
	//rect(50, 550, progress, 10);
	//}
	//progress = progress +1;
//}


void mousePressed()
{
	background(5,0,100);
	redraw();
	score = 0;
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int myWidth;
	int r;
	int g;
	int b;
	Die(int x, int y, int w)
	{
		myX = x;
		myY = y;
		myWidth = w;
		roll();
	}
	void roll()
	{
		r = (int)(Math.random()*225)+30;
		g = (int)(Math.random()*255);
		b = (int)(Math.random()*200)+55;
		if((int)(Math.random()*8)<= 1)
		{
			noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
			fill(r,g,b);
			ellipse(myX + 22, myY + 22, 6, 6);
			score = score+=1;
		}
		else if((int)(Math.random()*8)<= 2)
		{
			noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
			fill(r,g,b);
			ellipse(myX + 13, myY + 13, 6, 6);
			ellipse(myX + 31, myY + 31, 6, 6);
			score = score+=2;
		}
		else if((int)(Math.random()*8)<=3)
		{
			noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
			fill(r,g,b);
			ellipse(myX + 13, myY + 13, 6, 6);
			ellipse(myX + 23, myY + 23, 6, 6);
			ellipse(myX + 32, myY + 32, 6, 6);
			score = score+=3;
		}
		else if((int)(Math.random()*8)<=4)
		{
			noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
			fill(r,g,b);
			ellipse(myX + 13, myY + 13, 6, 6);
			ellipse(myX + 32, myY + 32, 6, 6);
			ellipse(myX + 32, myY + 13, 6, 6);
			ellipse(myX + 13, myY + 32, 6, 6);
			score = score+=4;
		}
		else if((int)(Math.random()*8)<=5)
		{
			noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
			fill(r,g,b);
			ellipse(myX + 13, myY + 13, 6, 6);
			ellipse(myX + 32, myY + 32, 6, 6);
			ellipse(myX + 32, myY + 13, 6, 6);
			ellipse(myX + 13, myY + 32, 6, 6);
			ellipse(myX + 23, myY + 23, 6, 6);
			score = score+=5;
		}
		else if((int)(Math.random()*8)<=6)
		{
			noStroke();
		fill(255);
		rect(myX, myY,myWidth,45,7);
			fill(r,g,b);
			ellipse(myX + 13, myY + 13, 6, 6);
			ellipse(myX + 32, myY + 32, 6, 6);
			ellipse(myX + 32, myY + 13, 6, 6);
			ellipse(myX + 13, myY + 32, 6, 6);
			ellipse(myX + 32, myY + 23, 6, 6);
			ellipse(myX + 13, myY + 23, 6, 6);
			score = score+=6;
		}
		//fill(255);
	}
	void show()
	{
		fill(5,0,100);
		rect(600,100,100,250);
		textSize(38);
		fill(r,g,b);
		text(score, 600, 210);
		textSize(36);
		text("Total:", 600, 150);
	}
}

//draw shape, move shape x number of steps based on total sum of dice
int x;
int startx=150;
int starty=0;
int endx;
int endy;
void setup()
{
  size(300,500);
  noLoop();
  background(0);
}
void draw()
{
  probe();
  strokeWeight(5);
  stroke(255,255,0);
  while(starty>500)
  {
    endx=startx+((int)(Math.random()*100));
    endy=starty+((int)(Math.random()*100));
    line(startx,starty,endx,endy);
    startx=endx;
    starty=endy;
  }
 
}

void bright()
{
  stroke(255,255,0);
  strokeWeight(15);
  noFill();
  arc(150,500,200,200,PI,2*PI);
}
void probe()
{
  ellipse(150,500,200,200);
  stroke(0);
}
void mousePressed()
{
  redraw();
}
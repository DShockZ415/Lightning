int x;
int sx=150;
int sy=0;
int ex=150;
int ey=0;
void setup()
{
  size(300,500);
  noLoop();
}
void draw()
{
  background(0);
  strokeWeight(10);
  stroke(255,255,0);
  while(sy<500)
  {
    ex=sx+((int)((Math.random()*60)-30));
    ey=sy+((int)(Math.random()*81));
    line(sx,sy,ex,ey);
    sx=ex;
    sy=ey;
  }
  probe();
  if (ex<215 && ex>85)
  { stroke(255,255,0);
  strokeWeight(12);
  noFill();
  arc(150,500,130,130,PI,2*PI);
  fill(255,255,0);
  textSize(30);
  text("BZZ",125,490);
  }
  
}

void probe()
{
  fill(255);
  noStroke();
  ellipse(150,500,130,130);
}
void mousePressed()
{
  sx=150;
  sy=0;
  ex=150;
  ey=0;
  redraw();
}
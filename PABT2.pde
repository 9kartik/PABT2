class Ball{
  int x,y,rad;
  color zyx;
 public Ball(int a,int b,int c,color C)
  {
    x=a;
    y=b;
    rad=c;
    zyx=C;
  }
  public void disp()
  {
    pushStyle();
    ellipseMode(CENTER);
    fill(zyx);
    stroke(zyx);
    ellipse(x,y,rad,rad);
    popStyle();
  } 
}

class Box{
  int x,y,siz;
  color xyz;
  public Box(int a,int b,int c,color C)
  {
    x=a;
    y=b;
    siz=c;
    xyz=C;
  }
  public void disp()
  {
    pushStyle();
    rectMode(CENTER);
    noFill();
    stroke(xyz);
    rect(x,y,siz,siz);
    popStyle();
  }
}

class mis_ind
{
  int x,y,siz;
  color xyz;
  public mis_ind(int a,int b,int c,color C)
  {
    x=a;
    y=b;
    siz=c;
    xyz=C;
  }
  public void disp()
  {
    pushStyle();
    ellipseMode(CENTER);
    noFill();
    stroke(xyz);
    ellipse(x,y,siz,siz);
    fill(xyz);
    popStyle();
  }
}
  
void setup()
{
  size(600,600);
  stroke(255);
  background(0);
  noSmooth();
  
}
void draw(){
  Box pink=new Box(width/2,height/2,width/5,color(255,20,147));
  Box white=new Box(width/2,height/2,width/3,color(255,255,255));
  Ball fly=new Ball(width/2,height/50,height/50,color(255,255,0));
  mis_ind left=new mis_ind(width/7,height/2,height/50,color(255,0,0));
  mis_ind right=new mis_ind(width-width/7,height/2,height/50,color(255,255,0));
  white.disp();
  pink.disp();
  fly.disp();
}

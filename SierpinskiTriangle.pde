public void setup()
{
  size(500, 500);
  
}
public void draw()
{
  background(0);
  int x = 0;
  int y = 500;
  int len = mouseX;
  sierpinski(x,y,len);
  //int x = 0;
  //int y = 500;
  //int len = 500;
  //triangle(x,y,x+len,y,len/2,y-len);
}

public void sierpinski(int x, int y, int len) 
{
  if (len<=20){
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else{
    sierpinski(x, y, (len/2));
    //triangle(x, y, x+len/2, y, x+len/4, y-len/2); 
    sierpinski(x+(len/2), y,(len/2));
    //triangle(x+len/2, y, x+len, y, x+len/2+len/4, y-len/2);
    sierpinski(x+(len/4), y-(len/2),(len/2));
    //triangle(x+len/4, y-len/2, x+len/4+len/2, y-len/2,x+len/2,y-len);
    
  }

}
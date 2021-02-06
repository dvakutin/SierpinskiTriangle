int col = color(106, 86, 235);
int limit = 600;
int globlen = 20;
public void setup()
{
  size(600, 600);
  background(126, 140, 149);
}
public void draw()
{
  sierpinski(0, 600, globlen);
}
public void keyPressed()
{
  if(key == ' ')
  {
    col = color((int)(Math.random() * 265), (int)(Math.random() * 265), (int)(Math.random() * 265));
  }
  if(key == '0' && limit >= 2)
  {
    background(126, 140, 149);
    limit = limit/2;
  }
  if(key == '1' && limit < 600)
  {
    background(126, 140, 149);
    limit = limit * 2;
  }
}
public void mouseDragged()
{
  if(mouseX > pmouseX && globlen < 600)
  {
    globlen = globlen + 2;
  }
  if(mouseX < pmouseX && globlen > 0)
  {
    
    globlen = globlen - 2;
    background(126, 140, 149);
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= limit)
  {
    //len = globlen;
    fill(col);
    stroke(0, 0, 0);
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
    len = globlen;
  }
}

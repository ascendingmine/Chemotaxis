Walker [] friend;
void setup()
{
  size(500,500);
   friend = new Walker[50];   
   for(int i=0; i < friend.length; i++)
   friend[i] = new Walker(100,100);
}
void draw()
{
  background(0);
  for(int i=0; i < friend.length; i++){
    friend[i].walk();
    friend[i].show();
   }
}
class Walker
{
  int myX,myY, myColor;
  Walker(int x, int y)
  {
    myX = x ;
    myY = y ; 
    myColor = color(200);
  }
  
  void walk()
  {
   if(mouseX > myX)
   myX = myX + (int)(Math.random()*10);
   else
     myX = myX + (int)(Math.random()*10)-9;
  
  if(mouseY > myY)
   myY = myY + (int)(Math.random()*10);
   else
     myY = myY + (int)(Math.random()*10)-9;  
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,30,30);
  }
}
    


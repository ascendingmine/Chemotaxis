Walker [] bob;
void setup()
{
  size(500,500);
   bob = new Walker[30];   
   for(int i=0; i < bob.length; i++)
   bob[i] = new Walker();
}
void draw()
{
  background(0);

  
  for(int i=0; i < bob.length; i++){
    bob[i].walk();
    bob[i].show();

   }
}

class Walker
{
  int myX,myY, getcolorR, getcolorG, getcolorB;
  Walker()
  
  {
    myX = myY = 250 ;
  }
  void walk()
  {
  
   if(mouseX > myX)
   myX = myX + (int)(Math.random()*10)-3;
   else
     myX = myX + (int)(Math.random()*10)-5;
  
  if(mouseY > myY)
   myY = myY + (int)(Math.random()*10)-3;
   else
     myY = myY + (int)(Math.random()*10)-5;  
  
     
  }
  void show()
  {
    getcolorR = (int)(Math.random()*120)+100;
    getcolorG = (int)(Math.random()*120)+100;
    getcolorB = (int)(Math.random()*120)+100;
    fill(getcolorR,getcolorG,getcolorB);
    ellipse(myX,myY,30,30);
  }
}
    

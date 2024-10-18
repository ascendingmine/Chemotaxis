Walker [] friend;
void setup()
{
  size(500,500);
   friend = new Walker[50];   
   for(int i=0; i < friend.length; i++)
   friend[i] = new Walker();
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
    getcolorR = (int)(Math.random()*220)-100;
    getcolorG = (int)(Math.random()*220)-100;
    getcolorB = (int)(Math.random()*220)-100;
    fill(getcolorR,getcolorG,getcolorB);
    ellipse(myX,myY,30,30);
  }
}
    

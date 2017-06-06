void getangle(int alpha, int beta, int alti,int Ho)
{   
   // min pan
   d5 = 90-(180/PI)*atan(1.0*(alti-Ho)/alpha);
   // max tilt
   d6 = 90 + (180/PI)*atan(1.0*Ho/alpha);
   
   // 90-arcsin(0.5*beta/sqrt(alpha*aplha+0.25*beta*beta))
   d1 = 90-(180/PI)*atan((0.5*beta)/alpha);
   // max pan
   // 90+arcsin(0.5*beta/sqrt(alpha*aplha+0.25*beta*beta))
   d2 = 90 + (180/PI)*atan((0.5*beta)/alpha);
   // min tilt
   // arctan(objalt-scnalt/alpha)
   
}

void targetArea(int alpha, int beta, int alti,int Ho)
{
   //front arrow
   
   noFill();
   stroke(#C11557);
   strokeWeight(1);
   //line(0,alpha,0,0,alpha,alti); // point1-2
   //line(0,alpha,alti,beta/2,alpha,alti);
   //line(beta/2,alpha,0,beta/2,alpha,alti);
   //line(0,alpha,0,beta/2,alpha,0);
   line(-beta/2,alpha,0-Ho,beta/2,alpha,0-Ho); // left to right bottom
   line(-beta/2,alpha,alti-Ho,beta/2,alpha,alti-Ho); // left to right top
   line(beta/2,alpha,0-Ho,beta/2,alpha,alti-Ho);
   line(-beta/2,alpha,0-Ho,-beta/2,alpha,alti-Ho);
   reftrig(alpha,beta,alti,Ho);
}

void reftrig(int alpha, int beta, int alti,int Ho)
{
   //front arrow
   
   noFill();
   stroke(#FFB30D);
   strokeWeight(.5);
   line(-beta/2,alpha,0,beta/2,alpha,0); // mid horizon
   line(-beta/2,alpha,0,0,0,0); // mid horizon
   line(beta/2,alpha,0,0,0,0); // mid horizon
   stroke(#8CE315);
   line(0,alpha,0,0,0,0);// mid horizon
   line(0,alpha,0-Ho,0,0,0);
   line(0,alpha,0-Ho,0,alpha,0);
   line(0,alpha,alti-Ho,0,0,0);
   line(0,alpha,alti-Ho,0,alpha,0);
}

void axes(int alpha)
{  
   //front arrow
   beginShape();
   noFill();
   stroke(0);
   strokeWeight(1);
   strokeJoin(MITER);
   vertex(1,alpha -1,0);
   vertex(0,alpha,0);
   vertex(-1,alpha -1,0);
   endShape();
   
    //front arrow
   beginShape();
   noFill();
   stroke(0);
   strokeWeight(1);
   strokeJoin(MITER);
   vertex(-1,0,alpha+4);
   vertex(0,0,alpha+5);
   vertex(1,0,alpha+4);
   endShape();
   
   //left arrow
   beginShape();
   noFill();
   stroke(0);
   strokeWeight(1);
   strokeJoin(MITER);
   vertex(alpha -1,1,0);
   vertex(alpha,0,0);
   vertex(alpha -1,-1,0);
   endShape();
   
   //right arrow
   beginShape();
   noFill();
   stroke(0);
   strokeWeight(1);
   strokeJoin(MITER);
   vertex(-alpha +1,1,0);
   vertex(-alpha,0,0);
   vertex(-alpha +1,-1,0);
   endShape();
    
   stroke(0);
   strokeWeight(1);
   line(0,0,0,0,0,alpha + 5);
   line(0,0,0,0,alpha,0);
   line(0,0,0,alpha,0,0);
   line(0,0,0,-alpha,0,0);
}

void grid(int xmax, int xstep,int dp)
{
 stroke(10,20);
 strokeWeight(1); 
 for(int x=0;x<=xmax;x+=xstep)
     {  
        //first qudrant grid
        line(0,x,0-dp,-xmax,x,0-dp);
        line(-x,0,0-dp,-x,xmax,0-dp);
         
        //second quadrant grid
        line(0,x,0-dp,xmax,x,0-dp);
        line(x,0,0-dp,x,xmax,0-dp);
        
        //third quadrant grid
         line(0,-x,0-dp,xmax,-x,0-dp);
         line(x,0,0-dp,x,-xmax,0-dp);
         
        //fourth quadrant grid
        line(0,-x,0-dp,-xmax,-x,0-dp);
        line(-x,0,0-dp,-x,-xmax,0-dp);
     }
}

void gui() {
  hint(DISABLE_DEPTH_TEST);
  cam.beginHUD();
  cp5.draw();
  cam.endHUD();
  hint(ENABLE_DEPTH_TEST);
}

void colormap(String com, pointCloud v)
{ 
   if(com=="range")
    { 
      if(v.mag()<50) stroke(#9400FF);
      else if(50<v.mag()&& v.mag()<100) stroke(#002CFF);
      else if(100<v.mag()&& v.mag()<150) stroke(#00D7FF);
      else if(150<v.mag()&& v.mag()<200) stroke(#00FF39);
      else if(200<v.mag()&& v.mag()<250) stroke(#E0FF00);
      else if(250<v.mag()&& v.mag()<300) stroke(#FF8400);
      else stroke(#FF0000);
    }
    
  else if(com=="intensity")
    { 
      if(v.d<10) stroke(#FF008D);
      else if(10<v.d&& v.d<20) stroke(#F200FF);
      else if(20<v.d&& v.d<30) stroke(#8B00FF);
      else if(30<v.d&& v.d<40) stroke(#2D00FF);
      else if(40<v.d&& v.d<50) stroke(#0063FF);
      else if(50<v.d&& v.d<60) stroke(#00B9FF);
      else if(60<v.d&& v.d<70) stroke(#00FFF0);
      else if(70<v.d&& v.d<80) stroke(#00FF81);
      else if(80<v.d&& v.d<90) stroke(#00FF00);
      else if(90<v.d&& v.d<100) stroke(#A1FF00);
      else if(100<v.d&& v.d<110) stroke(#CFFF00);
      else if(110<v.d&& v.d<120) stroke(#FFFF00);
      else if(120<v.d&& v.d<130) stroke(#FFCD00);
      else if(140<v.d&& v.d<150) stroke(#FFAA00);
      else if(150<v.d&& v.d<160) stroke(#E07F00);
      else if(160<v.d&& v.d<170) stroke(#E06500);
      else if(170<v.d&& v.d<180) stroke(#E04B00);
      else if(190<v.d&& v.d<200) stroke(#5D2407);
      else if(200<v.d&& v.d<210) stroke(#E84E2F);
      else if(210<v.d&& v.d<220) stroke(#E5130C);
      else if(220<v.d&& v.d<230) stroke(#FA6F6A);
      else if(230<v.d&& v.d<240) stroke(#C16D46);
      else if(240<v.d&& v.d<250) stroke(#CE1D0C);
      else stroke(#FF0000);
    }
  else
  {
    stroke(255);
  }
  
}
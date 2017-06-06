import peasy.*;
PeasyCam cam;

import controlP5.*;
import processing.opengl.*;
ControlP5 cp5;
import processing.serial.*;     // import the Processing serial library
Serial myPort;                  // The serial port
DropdownList k1;

Textarea myTextarea;
Println console;

PrintWriter output;
String myString;
float d1,d2,d3,d4,d5,d6,d7,d8,d9,c1=0,c2 =0,c3;
int port;
int lastPointIndex = 0;
int lastPointCount = 0;
float ang,ang2,rad,sig; // polar coordinate
float xpos, ypos,xpos2, ypos2; // cartesian coordinate
float pie = PI/180; // pie radian
int startTime=0;
String xyz ="test.txt";
ArrayList<pointCloud> vectors;
String input;
boolean flag =false;
int alp=0, bet=0, objalt=0,scnalt=0;

void setup() 
{
  size(600,610,P3D);
  cam = new PeasyCam(this, 100);
  cam.setRotations(0,0,PI);
   ui();
  //colorMode(HSB);
  output = createWriter(xyz);
  // set buffer
  vectors = new ArrayList<pointCloud>();
  PFont font = createFont("arial",10);
  textFont(font);
}

void draw() 
{ 
  background(100);
  if(flag)targetArea(alp,bet,objalt,scnalt);
  axes(10);
  grid(30,2,scnalt);
  gui();
  scan();
  
}

void keyPressed() {
  switch(key) {
    case('5'):
    cam.setRotations(0,0,PI);
    break;
    case('2'):
    cam.setRotations(PI/2,0,PI);
    break;
    case('6'):
    cam.setRotations(PI/2,-PI/2,PI);
    break;
    case('4'):
    cam.setRotations(PI/2,PI/2,PI);
    break;
    case('8'):
    cam.setRotations(PI/2,PI,PI);
    break;
    
    case('1'):
    cam.setRotations(PI/4,PI/4,1.2*PI);
    break;
    
    case('3'):
    cam.setRotations(0.91642946,-0.7853982,2.5132737);
    break;
    
    case('7'):
    cam.setRotations(-0.97592443,0.7302367,-0.44160542);
    break;
    
    case('9'):
    cam.setRotations(-1.0275612,-0.6453059,0.34368837);
    break;
  }
  switch(keyCode) {
    case(LEFT):
   
    break;
  }
}

void mouseClicked() 
{
  
  float[] rotations = cam.getRotations(); // x, y, and z rotations required to face camera in model space
  println(rotations);

}
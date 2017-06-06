 //data pull test box
void knobValue(int theValue)
{
  
}

void knobValue1(int theValue2) 
{
  
}

public void ermin(String theText) 
{
  // automatically receives results from controller input
c1 = int(theText);
}

public void ermax(String theText) 
{
  // automatically receives results from controller input
c2 = int(theText);
}

public void console(String theText) 
{
  // automatically receives results from controller input
  myPort.write(theText);
  startTime=millis();
  println(theText);
  
}

/*
* Azimuth Scan properties call backs
*/

public void lenght1(String theText) {
  //minimum azimuth angle
d1 = int(theText);
}

public void base1(String theText) 
{
 //maximum azimuth angle
d2 = int(theText);
}

public void height1(String theText) 
{
 //step azimuth angle
d3= int(theText);
}

public void Azdelay(String theText) 
{
  //azimuth scan delay
d4 = int(theText);
}

/*
* Elevation properties call backs
*/

public void lenght(String theText) {
  // minimum elevation angle
d5 = int(theText);
}

public void base(String theText) {
  // maximum elevation angle
d6 = int(theText);
}

public void height(String theText) {
  // elevation steps
d7 = int(theText);
}

public void Eledelay(String theText) {
  // elevation delays
d8 = int(theText);
}

/*
* Elevation properties call backs
*/

public void cycle(String theText) {
  // automatically receives results from controller input
d9 = int(theText);
}

public void file(String theText) 
{
  // automatically receives results from controller input
   xyz = theText;
}


/*
* Spot Scan properties call backs
*/

public void alpha(String theText) 
{  
  alp = int(theText); // distance to object
}

public void beta(String theText) 
{
  bet = int(theText); // lenght of target scan area
}

public void altitude(String theText) 
{
  scnalt = int(theText); // scanner altitude
}

public void obalti(String theText) 
{
  objalt = int(theText); // object height
}



void ui(){
  
  cp5 = new ControlP5(this);
  cp5.setAutoDraw(false);
  //text field
  //myTextarea = cp5.addTextarea("txt")
  //               .setPosition(40, 440)
  //               .setSize(250, 100)
  //               .setFont(createFont("", 10))
  //               .setLineHeight(14)
  //               .setColor(color(200))
  //               .setColorBackground(color(0, 100))
  //               .setColorForeground(color(255, 100));;

  //console = cp5.addConsole(myTextarea);              
  cp5.addKnob("knobValue")
               .setRange(500,2500)
               .setValue(220)
               .setPosition(50,100)
               .setLabel("Pan Servo adjustment (us)")
               .setRadius(100)
               .setNumberOfTickMarks(20)
               .setTickMarkLength(4)
               .snapToTickMarks(true)
               .setColorForeground(color(255))
               .setColorBackground(color(0, 160, 100))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
  cp5.addKnob("knobValue1")
               .setRange(500,2500)
               .setValue(220)
               .setPosition(50,330)
               .setLabel("tilt Servo adjusment (us)")
               .setRadius(100)
               .setNumberOfTickMarks(20)
               .setTickMarkLength(4)
               .snapToTickMarks(true)
               .setColorForeground(color(255))
               .setColorBackground(color(0, 160, 100))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
               
  cp5.addTextfield("console")
    .setPosition(40,550)
    .setSize(250,30)
    .setLabel("console") 
    .setFont(createFont("arial",14))
    .setAutoClear(false)
    ;
   cp5.addTextfield("ermin")
     .setPosition(350,250)
     .setSize(40,20)
     .setLabel("Min error (cm)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
    cp5.addTextfield("ermax")
     .setPosition(350,200)
     .setSize(40,20)
     .setLabel("Max Error (cm)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
     
  cp5.addTextfield("lenght")
     .setPosition(20,400)
     .setSize(40,20)
     .setLabel("Min Elevation angle (deg)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
     //text field
  cp5.addTextfield("base")
     .setPosition(20,445)
     .setSize(40,20)
     .setLabel("Max Elevation angle (deg)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
     //text field
  cp5.addTextfield("height")
     .setPosition(20,495)
     .setSize(40,20)
     .setLabel("Elevation angle step (deg)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
    //text field
  cp5.addTextfield("ELedelay")
     .setPosition(20,545)
     .setSize(40,20)
     .setLabel("Elevation scan delay (ms)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
   cp5.addTextfield("lenght1")
     .setPosition(200,400)
     .setSize(40,20)
     .setLabel("Min Azimuth angle (deg)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
     //text field
  cp5.addTextfield("base1")
     .setPosition(200,445)
     .setSize(40,20)
     .setLabel("Max Azimuth angle (deg)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
     //text field
  cp5.addTextfield("height1")
     .setPosition(200,495)
     .setSize(40,20)
     .setLabel("Azimuth angle step (deg)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
    //text field
  cp5.addTextfield("Azedelay")
     .setPosition(200,545)
     .setSize(40,20)
     .setLabel("Azimuth scan delay (ms)") 
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
   cp5.addTextfield("cycle")
     .setPosition(350,545)
     .setSize(40,20)
     .setLabel("Scan cylce")
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
   cp5.addTextfield("altitude")
     .setPosition(350,495)
     .setSize(40,20)
     .setLabel("Scanner altitude")
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
   cp5.addTextfield("alpha")
     .setPosition(350,400)
     .setSize(40,20)
     .setLabel("Distance to Object")
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
   cp5.addTextfield("obalti")
     .setPosition(480,400)
     .setSize(40,20)
     .setLabel("Object Height")
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
   cp5.addTextfield("beta")
     .setPosition(350,445)
     .setSize(40,20)
     .setLabel("Object Length")
     .setFont(createFont("arial",10))
     .setAutoClear(false)
     ;
     
    cp5.addTextfield("file")
     .setPosition(80,268)
     .setSize(200,25)
     .setLabel("file name")
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     //BUTTONS
      cp5.addBang("clear")
     .setPosition(400,520)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("savefile")
     .setPosition(340,520)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("reference")
     .setPosition(340,550)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("test")
     .setPosition(460,520)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("connect")
     .setPosition(530,520)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("disconnect")
     .setPosition(530,550)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("check")
     .setPosition(530,580)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("calibrate")
     .setPosition(290,520)
     .setSize(50,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
      cp5.addBang("calcangle")
     .setPosition(350,520)
     .setSize(50,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
      cp5.addBang("start")
     .setPosition(400,550)
     .setSize(50,50)
     .setColorValue(100)
     .setColorActive(color(0,255,0)) 
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("stop")
     .setPosition(460,550)
     .setSize(50,50)
     .setColorActive(color(255,0,0)) 
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("TOP")
     .setPosition(500,30)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("FRONT")
     .setPosition(500,55)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("LEFT")
     .setPosition(440,55)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     cp5.addBang("RIGHT")
     .setPosition(440,30)
     .setSize(50,20)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
     
    cp5.getTab("default")
     .activateEvent(true)
     .setLabel("Scanner")
     .setId(1)
     ;

  cp5.getTab("extra")
     .activateEvent(true)
     .setLabel("settings")
     .setId(2)
     ;
  cp5.getTab("tab3")
     .activateEvent(true)
     .setLabel("calibration")
     .setId(3)
     ;
     
  k1 = cp5.addDropdownList("myList-d1")
          .setPosition(100, 100)
          ;
  customize(k1); // customize the first list
  
 cp5.getController("lenght").moveTo("extra");
 cp5.getController("base").moveTo("extra");
 cp5.getController("height").moveTo("extra");
 cp5.getController("ELedelay").moveTo("extra");
 cp5.getController("lenght1").moveTo("extra");
 cp5.getController("base1").moveTo("extra");
 cp5.getController("height1").moveTo("extra");
 cp5.getController("Azedelay").moveTo("extra");
 cp5.getController("cycle").moveTo("extra");
 cp5.getController("altitude").moveTo("extra");
 cp5.getController("alpha").moveTo("extra");
 cp5.getController("obalti").moveTo("extra");
 cp5.getController("beta").moveTo("extra");
 cp5.getController("myList-d1").moveTo("extra");
 cp5.getController("file").moveTo("extra");
 cp5.getController("ermin").moveTo("tab3");
 cp5.getController("ermax").moveTo("tab3");
 cp5.getController("calibrate").moveTo("tab3");//slider
 cp5.getController("calcangle").moveTo("tab3");//slider
 cp5.getController("knobValue").moveTo("tab3");
 cp5.getController("knobValue1").moveTo("tab3");
}

void customize(DropdownList ddl) {
  // a convenience function to customize a DropdownList
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(15);
  ddl.getCaptionLabel().set("COM PORT");
  for (int i=0;i<3;i++) {
    ddl.addItem("COM "+i, i);
  }
  //ddl.scroll(0);
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255, 128));
}

void controlEvent(ControlEvent theControlEvent) {
  if (theControlEvent.isTab()) {
    println("got an event from tab : "+theControlEvent.getTab().getName()+" with id "+theControlEvent.getTab().getId());
     if(theControlEvent.getTab().getId()==3){}
      if(theControlEvent.getTab().getId()==1){}
  }
}
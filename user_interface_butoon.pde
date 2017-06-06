// buttons

//1. clear button call back

public void reference() 
{
  flag = !flag;
}

public void clear() 
{
  cp5.get(Textfield.class,"height").clear();
  cp5.get(Textfield.class,"base").clear();
  cp5.get(Textfield.class,"lenght").clear();
  //console.clear();
  vectors.clear();
 
}

//2. save file button callback
public void savefile() 
{
  
  output.println("x coordinate, y coordinate, z coordinate, intensity");
  
    
  output.close(); // Finish the file
  println("print sucessfully");
   
}

//3.0 test button call back
public void test() 
{
  //y = new float[5000];
  //x = new float[5000];
  //z = new float[5000];
  //d = new float[5000];
  myPort.write(">1,1,1000,2000,12,1,1000,2000,12,1,1");

  startTime=millis();
  println(">1,1,1000,2000,10,1,1500,1700,10,1,1");

}

// 4. calibrate button call back
public void calibrate() 
{

  myPort.write(">3,1,1000,2000,10,1,1200,1700,10,1,1");
  println("@0,180,1,2,100,120,1,2,1,1#");

}

public void calcangle() 
{
  getangle(alp,bet,objalt,scnalt);  
  println("Min Pan: " +d1 +"Max Pan: "+d2);
  println("Min tilt: " + d5 + "Maxtilt: " + d6);

}


//5. stop button call back
public void stop() {

  myPort.write(">0,1,0,1,0,1,0,1,0,1,0");
  println("mission abort");
}

public void connect() 
{   String portName = Serial.list()[0];
    myPort = new Serial(this, portName, 115200);
    myPort.clear();
}

public void disconnect () {
  myPort.stop();
  println("disconnected!");
}

public void check () 
{
  String[] serialPorts = Serial.list();
  String serialPort = serialPorts[0];
  println("Using serial port \"" + serialPort + "\"");
  println("To use a different serial port, change serialPortNumber:");
  printArray(serialPorts);
}

public void start() {
  
  //H=(d2-d1)/d3;
  //W=(d6-d5)/d7;
  //y = new float[2*H*W];
  //x = new float[2*H*W];
  //z = new float[2*H*W];
  //d = new float[2*H*W];
  //String data ="@"+d1+","+d2+","+d3+","+d4+","+d5+","+d6+","+d7+","+d8+","+d9+","+"1"+"#";
  //myPort.write(data);
  //runonce=true;
  //println(data);
  //println("H:\t"+H+"\tW:\t"+W+"y size:\t"+y.length);
}

public void TOP() {
    cam.setRotations(0,0,PI);
    
}

public void FRONT() {
  cam.setRotations(PI/2,0,PI);
    
}

public void LEFT() {
   cam.setRotations(PI/2,PI/2,PI);
    
}

public void RIGHT() {
   cam.setRotations(PI/2,-PI/2,PI);
    
}
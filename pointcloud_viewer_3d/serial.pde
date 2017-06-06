/////////////////////////////////////////////////////////////////////////////////
// serialEvent  method is run automatically by the Processing applet     /  ////
// whenever the buffer reaches the  byte value set in the bufferUntil()    ////
// method in the setup():    HANSHAKING                                   ////
/////////////////////////////////////////////////////////////////////////////

void serialEvent(Serial myPort) 
{
  String input = myPort.readStringUntil('\n');
          
   
  if (input != null) 
  {
      println(input);
      float components[] = float(split(input, ','));
      if (components.length == 4) 
      {
       vectors.add(new pointCloud(components[0],components[1],components[2],components[3]));
      }
        println(vectors.size());
      
  }
  
  //myPort.clear();
  
}
  
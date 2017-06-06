
class pointCloud{
  
  float x, y,z,d;
  
  
  // Contructor
  pointCloud(float xcod, float ycod, float zcod, float intensity) {
    x = xcod;
    y = ycod;
    z = zcod;
    d = intensity;
  }
  
  float mag()
  {
    return sqrt(x*x +y*y +z*z);
  }
  
}
void scan()
{
     int size = vectors.size(); // get the size of current vector
     
     for (int index = 0; index < size; index++) 
     {
        pointCloud v = vectors.get(index);
        
          if (index == size - 1) 
          {
              // draw red line to show recently added LIDAR scan point
              if (index == lastPointIndex) 
              {
                lastPointCount++;
              }
              
              else 
              {
                lastPointIndex = index;
                lastPointCount = 0;
              }
              
              if (lastPointCount < 10) 
              {
                stroke(255, 0, 0);
                line(0, 0, 0, -v.x , v.y, v.z);
                stroke(#201D50);
                fill(#B5B1FA);
                // drawbox
                pushMatrix();
                box(5,5,10);
                popMatrix();
              }
          }
        
      colormap("range",v); // select pcl color mode
      strokeWeight(2);
      point(-v.x , v.y, v.z);
    }

  
}
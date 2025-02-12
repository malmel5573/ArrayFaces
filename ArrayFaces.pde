int colour;
 String total;
 int[] r;
 int[] g;
 int[] b;
 int rValue;
 int gValue;
 int bValue;
  int red;
  int green;
  int blue;
 public void settings(){
   size(500, 600);
 }
 void setup()
  {
      noLoop();
  
    
  }
  void draw()
  {
      //your code here
    
     //total=0;
     background(227, 205, 250);
    
      for(int y = 50; y<500; y+=150){
       for(int x = 50; x<500; x+=150){
         // stroke(189, 125, 255);
         
         Die di = new Die(x,y);
           di.colourRoll();
         di.show();
       }
      }
      //text(red, 20, 570);
     fill(0);
      textSize(40);
      text("The most abundant color is: ", 10, 530);
      text(total, 50, 570);
     
      
      total = null;
  }
  void mousePressed()
  {
      redraw();
    
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int xi;
      int yi;
     // int colour; reinitialzizes colour
      
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          xi=x;
          yi=y;
          
      }
      void colourRoll()
      {
            stroke(0);
            r = new int[252];
            r[0]=3;
            for(int index = 1; index<r.length; index++){
              r[index] = r[index-1]+1;
            }
            g = new int[255];
            g[0]=0;
            for(int index = 1; index<g.length; index++){
              g[index] = g[index-1]+1;
            }
            b = new int[30];
            b[0]=225;
             for(int index = 1; index<b.length; index++){
              b[index] = b[index-1]+1;
            }
            
         int rValue = r[(int)(Math.random()*252)];
int gValue = g[(int)(Math.random()*255)];
int bValue = b[(int)(Math.random()*30)];
fill(rValue,gValue,bValue);
red+=rValue;
green+=gValue;
blue+=bValue;
 
    if(red>blue && red > green){
       total = "red";
     }
     else if (blue>red &&blue>green){
       total = "blue";
     }
     else if (green>blue && green>red){
       total = "green";
     }
     else{
       total = "all";
     }
     print(total);
    
    /* if(rValue>bValue && rValue>gValue){
  red +=rValue;
}
else if(bValue>rValue && bValue>gValue){
  blue +=bValue;
}
else{
  green += gValue;
}
     */      
        //your code here
       // print(blue);
      }
      void show()
      {
   text( "red" + red, 20, 500);
     text("blue" + blue, 40, 550);
     text("green" + green, 40, 300);
       
   
     //if(rValue>bValue && rValue > gValue){
     //  red+=rValue;
     //}
     //else if (bValue>rValue &&bValue>gValue){
     //  blue+=bValue;
     //}
     //else if (gValue>bValue && gValue>rValue){
     //  green+=gValue;
     //}
    
    //if(red>blue && red > green){
    //   total = "red";
    // }
    // else if (blue>red &&blue>green){
    //   total = "blue";
    // }
    // else if (green>blue && green>red){
    //   total = "green";
    // }
    // else{
    //   total = "all";
    // }
     
     
        
        rect(xi,yi,70,70,20);
         
         
      /*  fill(0);
        if(colour==1){
          ellipse(xi+35,yi+35,13,13);
        } 
        else if(colour==2){
          ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
        }
        else if(colour==3){
          ellipse(xi+35,yi+35,13,13);
          ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
        }
        else if(colour==4){
        ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
           ellipse(xi+17,yi+52,13,13);
          ellipse(xi+52,yi+17,13,13);
        }
        else if(colour==5){
           ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
           ellipse(xi+17,yi+52,13,13);
          ellipse(xi+52,yi+17,13,13);
          ellipse(xi+35,yi+35,13,13);
        }
        else{
         ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
           ellipse(xi+17,yi+52,13,13);
          ellipse(xi+52,yi+17,13,13);
          ellipse(xi+35,yi+17,13,13);
          ellipse(xi+35,yi+52,13,13);
        }
*/
  red = 0;
      blue = 0; 
      green = 0;
        //your code here
      }
     
     
  }

import processing.opengl.*;
import oscP5.*;  
import netP5.*;

OscP5 oscP5;
NetAddress remote;

PFont  font;
int varName;





void setup() {
  oscP5 = new OscP5(this,12000);
  remote = new NetAddress("127.0.0.1",2331);
  size(displayHeight, displayHeight);
}
void draw() {
  background(255);
  int b=0;
  for ( int i = 0 ; i < width ; i+=(width/5)) {   //draw vertical lines
    line(i, 0, i, height);
    
    if(b%2==0){                                   //draw horizontal lines on even collums
    for ( int j = 0 ; j < height ; j+=(height/5)) {
      line(i,j,i+(width/5),j);
    }
    }
    else{                                        //draw horizontal lines on odd collums
      for ( int j = 0 ; j <= height ; j+=(height/5)) {
      line(i,j-(height/10),i+(width/5),j-(height/10));
      }
    }
   b++;                                          //counter to distinuish even from odd
  
   
   fill(100,100,100);                            //some cosmetics
   rect((width/5)*2,(height/5)*2,width/5,height/5);
   fill(150,150,150);
   rect((width/5),(height/10)*5,width/5,height/5);
   rect((width/5),(height/10)*3,width/5,height/5);
   rect((width/5)*3,(height/10)*3,width/5,height/5);
   rect((width/5)*3,(height/10)*5,width/5,height/5);
   rect(0,(height/5),width/5,height/5);
   rect(0,(height/5)*3,width/5,height/5);
   rect((width/5)*4,(height/5),width/5,height/5);
   rect((width/5)*4,(height/5)*3,width/5,height/5);
   
   
  }                                               //map mouse position to table
  float x= map(mouseX, 0, height,1,6);
  float y= map(mouseY, 0, width,1,11);
  //println(mouseX,mouseY);
  
  int midi=0;
  
  if(int(x)%2==0){                                //use mapped mouse postion to calculate midi note on even collums
    
    midi= 50 + ((int(y-(y%2))/2)*5) + (((int(x)+1)/2)-1);
  }
  else{                                            //on odd collums
    midi= 58 + ((((int(y)+1)/2)-1)*5) + (((int(x)+1)/2)-1);
  }
  
  OscMessage msg = new OscMessage("/Midi");
  msg.add(midi);
  
  if(mousePressed==true){                          //only send if mouse button is pressed
  oscP5.send(msg,remote);
  println(midi);
  }
}

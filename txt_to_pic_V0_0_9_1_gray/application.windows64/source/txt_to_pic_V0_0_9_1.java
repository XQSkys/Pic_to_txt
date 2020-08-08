import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class txt_to_pic_V0_0_9_1 extends PApplet {



public void setup() {
  

  
      
      }
  


float    mouseovery=0; 
float mouseoverx=0;
int seeCountC=0;

int seeN=0;
int seeC=0;
int x=2;
int y=0;
int cx=0;
int cy=0;
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
int  seeX=0;        
int z=0;

int eof=0;
int eol=0;
int vox=0;
int voy=0;
public void draw() {

  noStroke();
   
  
  
  

  
  mouseovery = mouseY;
  mouseoverx = mouseX;
         
/*
      PImage bild;
        bild = loadImage("bild1.png");
       if (bild != null) {
          image(bild, 0, 0);
         // saveFrame("bild.png");
          */
     
    String ggg="eol";
  String fff="eof";
   
    
      String[] lines = loadStrings("list.txt");

println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {


println("tog"+x);
// Tests to see if 'str1' is equal to 'str2'
if (ggg.equals(lines[i]) == true ) {
vox=x-1;
  y++;
  x=0;
println("got"+y);

voy++;
}
if (fff.equals(lines[i]) == true ) {
println("end");//saveFrame("bild1.png");
PImage bild;
        bild = get(2, 0, vox-1, voy);
       if (bild != null) {
         
         // saveFrame("bild.png");


  bild.save("bild1.png");





}
exit();
}
int byt = PApplet.parseInt(lines[i]);
fill(byt);
rect(x,y,1,1);
x++;

}

}
  public void settings() {  size(150, 150); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "txt_to_pic_V0_0_9_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class txt_to_pic_V0_0_9_4_color extends PApplet {



public void setup() {
  

  
      
      }
  


float    mouseovery=0; 
float mouseoverx=0;
int seeCountC=0;

int seeN=0;
int seeC=0;
int x=1;
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
   
    
      String[] linesr = loadStrings("listr.txt");
String[] linesg = loadStrings("listg.txt");
String[] linesb = loadStrings("listb.txt");


println("there are " + linesr.length + " lines");
for (int i = 0 ; i < linesr.length; i++) {


println("tog"+x);
// Tests to see if 'str1' is equal to 'str2'
if (ggg.equals(linesr[i]) == true ) {
vox=x-1;
  y++;
  x=0;
println("got"+y);

voy++;
}
if (fff.equals(linesr[i]) == true ) {
println("end");//saveFrame("bild1.png");
PImage bild;
        bild = get(1, 0, vox-1, voy);
       if (bild != null) {
         
         // saveFrame("bild.png");


  bild.save("bild1.png");





}
exit();
}
//String(data, offset, length):
int bytr = PApplet.parseInt(linesr[i]);
int bytg= PApplet.parseInt(linesg[i]);
int bytb= PApplet.parseInt(linesb[i]);
fill(bytr,bytg,bytb);
rect(x,y,1,1);
x++;

}

}
  public void settings() {  size(150, 150); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "txt_to_pic_V0_0_9_4_color" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

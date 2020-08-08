     int bildx;


PrintWriter outputr;
PrintWriter outputg;
PrintWriter outputb;
    int ex=0;
          int ey=0;
  
IntList inventory;
void setup() {
  size(150, 150 );



  // webImg = loadImage("https://xqskys.de/WLS/WL1Status.png");
   // webImg = loadImage("https://xqskys.de/WLS/WL2Status.png");
   // webImg = loadImage("https://xqskys.de/WLS/WL3Status.png");
  
 


outputr = createWriter("listr.txt"); 
outputg = createWriter("listg.txt"); 
outputb = createWriter("listb.txt"); 


 PImage bild;
  


 
   
        bild = loadImage("bild.png");
       if (bild != null) {
          image(bild, 1, 0);
         // saveFrame("bild.gif");
          
        ex=bild.width;
         ey=bild.height;
        }
        else
        {fill(0);
        text("error",0,0);
      }
  

}
float    mouseovery=0; 
float mouseoverx=0;
color seeCountC=0;

color seeN=0;
color seeC=0;

int x=-1;
int y=0;

int xr=0;
int yr=0;

int xg=0;
int yg=0;

int xb=0;
int yb=0;

int cx=0;
int cy=0;
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
int seeCountNumr=0;   
int drawnumr=0;
int seeCountNumb=0;   
int drawnumb=0;
int seeCountNumg=0;   
int drawnumg=0;

color  seeX=0;        
int z=0;
int seer=0;
int seeg=0;
int seeb=0;

int eof=0;
int eol=0;

/*color c = color(255, 204, 0);  // Define color 'c'
fill(c);  // Use color variable 'c' as fill color
rect(15, 20, 35, 60);  // Draw left rectangle
  
float redValue = red(c);  // Get red in 'c'
println(redValue);  // Print "255.0"
fill(redValue, 0, 0);  // Use 'redValue' in new fill
rect(50, 20, 35, 60);  // Draw right rectangle

Description   Extracts the red value from a color, scaled to match current colorMode(). The value is always returned as a float, so be careful not to assign it to an int value.

The red() function is easy to use and understand, but it is slower than a technique called bit shifting. When working in colorMode(RGB, 255), you can acheive the same results as red() but with greater speed by using the right shift operator (>>) with a bit mask. For example, the following two lines of code are equivalent means of getting the red value of the color value c:

float r1 = red(c);  // Simpler, but slower to calculate*/


color c = color(0, 0, 0);
color cr = color(0, 0, 0);
color cg = color(0, 0, 0);
color cb = color(0, 0, 0);

int i=0;
void draw() {

  noStroke();
   
   fill(255,255,0);
   rect(x,y,1,1);
   
   x++;
  
  
  

  
  mouseovery = mouseY;
  mouseoverx = mouseX;


 
 seer=get(x,y);
  cr = color(seer);

 
float redValue = red(cr);  // Get red in 'c'
println(redValue+"red"); 
 
  



 
 // Write the coordinate to the file




 seeb=get(x,y);
  cb = color(seeb);



float blueValue = blue(cb);  // Get red in 'c'
println(blueValue+"blue"); 
//outputb.println(blueValue); 



float greenValue = green(cg);  // Get red in 'c'
println(greenValue+"green"); 
 seeg=get(x,y);
  cg = color(seeg);


outputr.println(redValue);
outputg.println(greenValue);
outputb.println(blueValue);

       if(x>=ex+1){x=0;y++;outputr.println("eol"); outputg.println("eol");outputb.println("eol");
       
       if(y>=ey){outputr.println("eof");  
       
 outputg.println("eof");  outputb.println("eof");  
  
    outputr.flush();  // Writes the remaining data to the file
  outputr.close();
      outputg.flush();  // Writes the remaining data to the file
  outputg.close();
      outputb.flush();  // Writes the remaining data to the file
  outputb.close();
  exit();
  }}
  
}     
       
         
                     

void keyPressed() {
outputr.println("eol"); outputg.println("eol");outputb.println("eol");
  outputr.println("eof");  
       
 outputg.println("eof");  outputb.println("eof");  
  
    outputr.flush();  // Writes the remaining data to the file
  outputr.close();
      outputg.flush();  // Writes the remaining data to the file
  outputg.close();
      outputb.flush();  // Writes the remaining data to the file
  outputb.close();
  exit();
  }
  

  
      
        

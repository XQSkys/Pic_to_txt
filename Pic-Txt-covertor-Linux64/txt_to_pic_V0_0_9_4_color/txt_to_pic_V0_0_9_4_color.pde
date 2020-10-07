

void setup() {
  size(150, 150);

  
      
      }
  


float    mouseovery=0; 
float mouseoverx=0;
color seeCountC=0;

color seeN=0;
color seeC=0;
int x=1;
int y=0;
int cx=0;
int cy=0;
int x2=0;
int y2=0;
int seeCountNum=0;   
int drawnum=0;
color  seeX=0;        
int z=0;

int eof=0;
int eol=0;
int vox=0;
int voy=0;
void draw() {

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
int bytr = int(linesr[i]);
int bytg= int(linesg[i]);
int bytb= int(linesb[i]);
fill(bytr,bytg,bytb);
rect(x,y,1,1);
x++;

}

}

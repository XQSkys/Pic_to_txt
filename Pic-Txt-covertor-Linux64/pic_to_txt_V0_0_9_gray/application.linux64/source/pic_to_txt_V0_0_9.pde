    

PrintWriter output;
    int ex=0;
          int ey=0;
  
IntList inventory;
void setup() {
  size(150, 150 );



  // webImg = loadImage("https://xqskys.de/WLS/WL1Status.png");
   // webImg = loadImage("https://xqskys.de/WLS/WL2Status.png");
   // webImg = loadImage("https://xqskys.de/WLS/WL3Status.png");
  
 

 output = createWriter("list.txt"); 



 PImage bild;
  


 
   
        bild = loadImage("bild.png");
       if (bild != null) {
          image(bild, 0, 0);
         // saveFrame("bild.png");
          
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
int x=0;
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

void draw() {

  noStroke();
   
  
  
  

  
  mouseovery = mouseY;
  mouseoverx = mouseX;
         
   
     
  
         if(get(x,y)!=color(seeCountNum)){
        
       
        seeCountNum++;
          if(seeCountNum>=256){seeCountNum=0;x++;z++;      ; if(x>=ex+1){x=-1;y++;seeCountNum=0;output.println("eol"); if(y>=ey){y=0;seeCountNum=0;output.println("eof");  output.flush(); // Writes the remaining data to the file
  output.close(); exit(); } }
         }
        
         }
        
       
        
        
         else          
         {
        drawnum=seeCountNum; ;
     z++;
println("hit"+drawnum);
     fill(255,255,0);
      rect(x,y,1,1);
      seeCountNum=0;x++;
     if(x>=ex+1){x=-1;y++;z++;seeCountNum=0;output.println("eol");  ;if(y>=ey){y=0;seeCountNum=0;x=0;output.println("eof");  output.flush();  // Writes the remaining data to the file
  output.close(); exit();  } }
  



 
  output.println(drawnum);  // Write the coordinate to the file









// Writes the strings to a file, each on a separate line



}
  
  

 
  
}




  
         
       
         
                     

void keyPressed() {
  output.flush();  // Writes the remaining data to the file
  output.close();  // Finishes the file
  exit();  // Stops the program
}
    
        
        

/**
*** kaleigh veca, 2016
*** over 11.1 billion random burger combinations!
**/


/*class Onebullet {
   ellipse(b+50,h+100,10,10);
}*/


String a = "ammo:";
int b = 400; // bullet
int n = 10; //ammo#
int h = 450;
int x = 200;
int y = x + 300;
int z = y + 300;

boolean shootbullet = false;
  
  
PImage arma;
/*PImage bottombun;
PImage shrooms;
PImage top2;
PImage top8;
PImage top9;*/

void setup(){ //yay, setup!
  size (1224,792);
  /*background(255,255,0);
  fill(255,127,0);
  noStroke();
  rect(0,600,1224,192);*/
 

arma = loadImage("arma_pal.png");
 /* bottombun = loadImage("bottom.png");
  shrooms = loadImage("shrooms.png");
  mustard = loadImage("mustard.png");
  ketchup = loadImage("ketchup.png");
  onion = loadImage("onion.png");
  pickle = loadImage("pickle.png");
  patty = loadImage("patty.png");
  cheeseburg = loadImage("cheeseburg.png");
  swissburg = loadImage("swissburg.png");
  top = loadImage("top.png");
  top1 = loadImage("1.png");
  bacon = loadImage("bacon.png");
  mayo = loadImage("mayo.png");
  */
  
frameRate(20); //iterates only once a second - if not, the burgers change out at lightning speed during their turn

          

}
   

void draw(){
  

 background(255,255,0);
  fill(255,127,0);
  noStroke();
  rect(0,600,1224,192);         
      
textFont(createFont("BebasNeue.otf", 72)); //i still have text functionality built-in in case i want to play with it after the final
          fill (0);
          textSize(24);
          text(a,50,50,160,300);
          text(String.valueOf(n),120,50,160,300);
         
        
          
          
if (x<0){
  x = 1224;
}  
if (y<0){
  y = 1224;
}  
if (z<0){
  z = 1224;
}  
          
fill(0,255,0);
rect(x,400,50,200);
rect(x-60,475,60,30);
rect(x-60,425,30,50);
rect(x+50,475,70,30);
rect(x+90,425,30,50);
rect(y,400,50,200);
rect(y-60,475,60,30);
rect(y-60,425,30,50);
rect(y+50,475,70,30);
rect(y+90,425,30,50);
rect(z,400,50,200);
rect(z-60,475,60,30);
rect(z-60,425,30,50);
rect(z+50,475,70,30);
rect(z+90,425,30,50);
x=x-20;
y=y-20;
z=z-20;


if (h< 450){
  h = h + 10;
}

image(arma, 300,h); //h for da mad hopz


if (shootbullet == true){
  fill(0);
  ellipse(b+50,h+100,10,10); //make a class of these 
  b = b+20;
  if (b>1124){
    shootbullet = false; 
    b = 400;
  }
}

}


//noLoop(); //tops them and skips town and runs away forever
//loop(); // but still is okay with saving a PDF


void keyPressed(){
  if (key =='h'){
    h = 250;
  } else if (key == 'p'){
    if (n>0){
      shootbullet = true;
      n--;
    }
  }
 /* } else if (key =='r'){
    background(255);*/
  }
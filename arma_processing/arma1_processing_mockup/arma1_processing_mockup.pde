/**
*** kaleigh veca, 2016
*** Help one lone armadillo on the wild western frontier
*** fight for glory and justice.
**/


class Bullet {
   int bulletX;
   int bulletY;
   Bullet(int x, int y) {
     bulletX = x;
     bulletY = y;
   } 
   void makeBullet() {
      fill(0);
      ellipse(bulletX,bulletY,10,10);
   }
   void byebyeBullet() { //if x val and y val = chihuahua, disappear
      if (bulletX == 900 && bulletY ==450){
        bulletX+=1000;
      }
   }
  // void bulletMove(bulletX) {
      // bulletX+5;
  // }
}

//bar is always red, gets more/less green

String a = "ammo:";
int ahp = 200; // arma hit points
int b = 400; // bullet
int c = 999; //far off chihuahua //reset to 9k after testing
int chp = 200; // chihuahua hit points
int n = 10; //ammo#
int h = 450;
int s = 900; //ammo scoot
int x = 200;
int y = x + 300;
int z = y + 300;

boolean shootbullet = false;
  
  
PImage arma;
PImage ammo10;
PImage chiboss;
PImage tacopew;


void setup(){ //yay, setup!
  size (1224,792);
  /*background(255,255,0); //old code to keep in mind
  fill(255,127,0);
  noStroke();
  rect(0,600,1224,192);*/
  
  

 
arma = loadImage("arma_pal.png");
ammo10 = loadImage("ammo_10.png");
chiboss = loadImage("chi_boss.png");
tacopew = loadImage("taco_pew.png");
  
frameRate(20); //iterates 20x a second - if not, the armadillo is turbo-powered and everything is hyper-speed
// change to 180 to see chiboss faster
//usually 20
          

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
       
/*
CACTIIIIIIIIME! LET'S MAKE SOME CACTI!
*/        
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


if (h< 450){ //if he's up too high, get some gravity
  h = h + 10; 
}

image(arma, 300,h); //h for da mad hopz

if (c == 900){
  fill (255,0,0);
  stroke(0);
  rect (300, h -50, 200, 10); // hit points bar!!!
  rect (850, 400, 200, 10); // enemy hp!!!
  // if either gets hit, make bar red
  fill (0,255,0);
  stroke(0);
  /*if (ahp== 0){
    fill (255,0,0);
    stroke(0);
    rect (300, h-50, 200, 10);
  }*/
  /*if (chp== 0){
    fill (255,0,0);
    stroke(0);
    rect (300, 400, 200, 10); //also kill him too
    //make him drop something like coins or a sombrero with powers
  }*/
  if (ahp > 0){
    rect (300, h-50, ahp, 10); 
  }
  if (chp > 0){
    rect (850, 400, chp, 10); //MAYBE 850+CHP!!! if doesn't work, take out first chp here
    //work on this in the morning. if chp is 
    //replaced with 50, it works. make it like the
    //value of chp but like starting from the right
    //so the left is green
  }
  
  ahp -= 1; // 10 shots to kill arma
  chp -= 2.5; // 8 to kill chiboss// easier to kill chihuahua
}


// if time modulo some random doodad, unexpected ammo gift
image(ammo10, s, 600); 
s = s - 3;

if (s == 400 | s==401 | s==402){ //minus three over and over makes it hard to be precise
  n +=10;
  s += 1000; //short distance to test– will be longer later
}

image(chiboss, c, 450); //start him all way far off-like
if (c>900){
  c -=3; //scoot him closer
} else if (c == 900) {
  c = 900;
  //measure time interval and shoot a taco every 3 or so seconds
}


/*if (shootbullet == true){
  Bullet bullet = new Bullet(450, h+100);
  bullet.makeBullet(); 
  b = b+20;
  if (b>1124){
    shootbullet = false; 
    b = 400;
  }
}*/

}


//noLoop(); //skips town and runs away forever
//loop(); // but still is okay with limited actions


void keyPressed(){
  if (key =='h'){
    h = 250;
  } else if (key == 'p'){
    Bullet bullet = new Bullet(450, h+100);
    bullet.makeBullet(); 
    b = b+20;
    n--;
    if (n<=0){
      //shootbullet = true;
      
      n=0;
    }
  }
}
 /* } else if (key =='some other letter'){}
    do some other thing like shoot 
    straight fire like my mix tape;*/
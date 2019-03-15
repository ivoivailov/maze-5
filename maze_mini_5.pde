import processing.sound.*;
SoundFile file;

int page =0;
int x = 350;
int y = 200;
int a = 215;
int b = 130;
int c = 15;
int d = 44;
int g = 730;
int f = 850;
int p = 850;
int z = 665;
int m = 156;
int i = 835;
int lx = 200;
int ly = 250;
int e = 430;
int e1 = 400;

PImage maze0;
PImage maze1;
PImage maze2;
PImage maze3;
PImage maze4;
PImage mochi;
PImage finalpage;

float mochiwidth = 30; 
float mochiheight = 30; 

void setup() {
  size(1000,900);
  smooth();
  mochi = loadImage("basketball.png");
  maze1 = loadImage("bd25fa58f7ddd.png");
  maze2 = loadImage("6d923f48303a4.png");
  maze3 = loadImage("Victory_royale_2.png");
  maze4 = loadImage( "output-onlinejpgtools.png");
  maze0 = loadImage("Untitled-1.png");
 file = new SoundFile(this, "Shantae and the Pirates Curse OST The Nightmare Woods ( Run Run Rottytops! ).mp3");
  file.play();
    
    
 
}

void draw() { 

 background(255.0);
 if (page == 0) {
      image(maze0, 0, 0); 
      rect(e, e1, 200,100);{
        fill(255, 0, 0);
        textSize(50);
        text("play", 470, 460); 
        fill(0, 102, 153);
      }
 if( mousePressed  ){
    page = 1;
 }


 checkPoint(lx + 10, ly + 20); 
  
   }
   if (page == 1) {
      image(maze1, 0, 0); 
 rect(g , f, 50, 50);{
   fill(255, 255, 0);
 }
if (keyPressed) {
    if (key == 'r' || key == 'R') {
      x = 350;
      y = 200;
    }
}

 checkPoint(x + 10, y + 20); 
   image(mochi, x, y, mochiwidth, mochiheight);
   }
 if (page == 2) {
   image(maze2, 0, 0);
 rect(z , p, 50, 50);{
   fill(255, 0, 255);
   if (keyPressed) {
    if (key == 'r' || key == 'R') {
      a = 216;
      b = 130;
    }
}
 }
     
 checkPoint2(a+10, b+10);
  image(mochi, a, b, mochiwidth-10, mochiheight-10);
   }
 if (page == 3) {
  image(maze3, 0, 0);
 rect(i, m, 50, 50);{
   noFill();
   if (keyPressed) {
    if (key == 'r' || key == 'R') {
      c = 200;
      d = 200;
    }
}
   noStroke();
  }
 
 checkPoint3(c+10, d+10); 
  image(mochi, c, d, mochiwidth-10, mochiheight-15);
   }
 if (page == 4) {
  image(maze4, 0, 0);
  
 checkPoint4(i+10, m+10);
  image(mochi, m, i, mochiwidth-10, mochiheight-15);
   }
 if(x > g && x < g + 50 &&  y > f  && y < f + 50){
   page = 2;
   }
 if(b > p && b < p + 50 &&  a > z  && a < z + 50){
    page = 3;
   }
 if( c > i && c < i + 40 &&  d > m  && d < m + 40){
    page = 4;
 }
   }

   
void checkPoint(int cx, int cy) {

  if (keyCode==UP) {  
    if (red(get(cx, cy-1)) == 255) {
      y = y - 4 ;
    }
  }
  else if (keyCode==DOWN) {  
    if (red(get(cx, cy+1)) == 255) {
      y = y + 4;
    }
  }
  else if (keyCode==LEFT) { 
    if (red(get(cx-1, cy)) == 255) {
      x = x - 4;
    }
  }
  else if (keyCode==RIGHT) { 
    if (red(get(cx+1, cy)) == 255) {
      x = x + 4;
    }
  }
}

void checkPoint2(int cx, int cy) {

  if (keyCode==UP) {  
    if (red(get(cx, cy-1)) == 255) {
      b = b- 4;
    }
  }
  else if (keyCode==DOWN) {  
    if (red(get(cx, cy+1)) == 255) {
      b = b + 4;
    }
  }
  else if (keyCode==LEFT) {  
    if (red(get(cx-1, cy)) == 255) {
      a = a - 4;
    }
  }
  else if (keyCode==RIGHT) {  
    if (red(get(cx+1, cy)) == 255) {
      a =  a + 4;
    }
  }
}

void checkPoint3(int cx, int cy) {

  if (keyCode==UP) {  
    if (red(get(cx, cy-1)) == 255) {
      d = d - 4;
    }
  }
  else if (keyCode==DOWN) { 
    if (red(get(cx, cy+1)) == 255) {
      d = d + 4;
    }
  }
  else if (keyCode==LEFT) {  
    if (red(get(cx-1, cy)) == 255) {
      c = c - 4;
    }
  }
  else if (keyCode==RIGHT) {  
    if (red(get(cx+1, cy)) == 255) {
      c = c + 4;
    }
  }
}
  void checkPoint4(int cx, int cy) {

  if (keyCode==UP) {  
    if (red(get(cx, cy-1)) == 255) {
      i = i - 3;
    }
  }
  else if (keyCode==DOWN) { 
    if (red(get(cx, cy+1)) == 255) {
      i = i + 3;
    }
  }
  else if (keyCode==LEFT) {  
    if (red(get(cx-1, cy)) == 255) {
      m = m - 3;
    }
  }
  else if (keyCode==RIGHT) {  
    if (red(get(cx+1, cy)) == 255) {
      m = m + 3;
    }
  }
}

boolean overButton(int x1, int x2, int y1, int y2) {
  if ((mouseX > x1) && (mouseX < x2) && (mouseY > y1) && (mouseY < y2)){
    return true;
  }
  else {
    return false;
  }
}

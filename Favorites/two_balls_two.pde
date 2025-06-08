int x, y, w, e;
boolean go; boolean balls = true;
int speed = 4; int yspeed = 4; int wspeed=5; int espeed=5;
void setup(){
  size (720, 480);
  background(255);
  x = width/2; y = height/2;
  w=width/2+70; e = height/2+70;
  strokeWeight(6); stroke(170,0,90); fill(0);
  ellipse(x,y,60,60);
  ellipse (w,e,60,60);
}
void draw() {
  if (go) {
  background (255);
  ellipse(x,y,60,60);
  ellipse (w,e,60,60);
  if (x<0 || x>width) {
    speed = speed * - 1;
  }
  if (y<0 || y>height) {
    yspeed = yspeed * -1;
  }
  strokeWeight(6); stroke(170,0,90); fill(0);
  if (w<0 || w>width) {
    wspeed = wspeed * -1;
  }
  if (e<0 || e>height) {
    espeed = espeed * -1;
  }
  w = w + wspeed;
  e = e + espeed;
  x=x+speed;
  y=y+yspeed;
   if (x - w < 60 && x - w > -60 && y - e < 60 & y - e > - 60 && (balls)) {
  if ((speed<0 && wspeed<0) || (speed>0 && wspeed>0)) {
    if (speed > wspeed) {
  speed = wspeed;
  wspeed = speed *-1;
    }
    if (wspeed > speed) {
      speed = wspeed * -1;
      wspeed = speed;}
  } else {
    speed = wspeed * -1;
    wspeed = speed * -1;
  }
  if ((yspeed<0 && espeed<0) || (yspeed>0 && espeed>0)) {
    if (yspeed>espeed){
  yspeed = espeed;
  espeed = yspeed *-1;
    }
    if (espeed>yspeed) {
      yspeed = espeed * -1;
      espeed = yspeed;
    }
  } else {
    yspeed = espeed * -1;
    espeed = yspeed * -1;
  }
   }
  //  if (x - w < 60 && x - w > -60 && y - e < 60 & y - e > - 60) {
   //   balls = false;
  //  } else { balls = true;
  //}
}
}

void mousePressed() {
  go = !go;
}
void keyPressed() {
  if (key =='c') {
    x = width/2; y = height/2; w = width/2; e = height/2;
    background(255); 
    ellipse (x,y,60,60);
    go = false;
  }
  if (key == 'l') {
    x = 0; y = 0; w=0; e=0;
    background(255);
    ellipse (x,y,60,60);
    go = false;
  }
  if (key == 'r') {
    x=width; y=0; w=width; e=0;
    background(255);
    ellipse(x,y,60,60);
    go = false;
  }
  if (key == 'k') {
    x=0;y=height;w=0;e=height;
    background(255);
    ellipse(x,y,60,60);
    go = false;
  }
  if (key == 'f') {
    x=width;y=height;w=width;e=height;
    background(255);
    ellipse(x,y,60,60);
    go = false;
  }
  if (key=='t') {
if (speed < 0) {
  speed = ((int)random(-10,-1));
}else { speed = ((int)random(1,10));
}
if (yspeed < 0) {
  yspeed = ((int)random(-10,-1));
} else { yspeed = ((int)random(1,10));
}
if ( wspeed < 0) {
  wspeed = ((int)random(-11,-2));
} else { wspeed = ((int)random(2,11));
  }
  if (espeed < 0) {
    espeed = ((int)random(-11,-2));
  } else { espeed = ((int)random(2,11));
  }
}
}
void setup() {
  size (720, 480);
  background (255);
}
int y = 0;
int x = 0;
void draw() {
stroke(0); fill (230, 60, 20); strokeWeight (3.5);
while (y<height) {
  if (x<width) {
  rect (x, y, 60, 60);
    x = x + 60;
  } else {
  x=0;
  y=y+60;
  }
}
int yTri=5; int xTri=5;
while (yTri<height/2.5) {
  if (xTri<width/3) {
    strokeWeight(2); fill (196, 62, 124);
triangle(xTri,yTri,xTri+48,yTri,xTri,yTri+48);
line (xTri+9, yTri+47, xTri+46, yTri+10);
line (xTri+17, yTri+46, xTri+44, yTri+19);
line (xTri+24, yTri+46, xTri+43, yTri+27);
line (xTri+31, yTri+46, xTri+42, yTri+35);
strokeWeight(1); noFill();
ellipse (xTri+42, yTri+45, 4, 4);
xTri=xTri+60;
  }else {
    xTri = 5;
    yTri=yTri+60;
  }
}
yTri=5; xTri = 485;
while (yTri<height/2.5){
  if (xTri<width){
        strokeWeight(2); fill (196, 62, 124);
triangle(xTri,yTri,xTri+48,yTri,xTri,yTri+48);
line (xTri+9, yTri+47, xTri+46, yTri+10);
line (xTri+17, yTri+46, xTri+44, yTri+19);
line (xTri+24, yTri+46, xTri+43, yTri+27);
line (xTri+31, yTri+46, xTri+42, yTri+35);
strokeWeight(1); noFill();
ellipse (xTri+42, yTri+45, 4, 4);
xTri=xTri+60;
  } else { 
    xTri=485; yTri=yTri+60;
}
}
int xRec = 6; int yRec = 247;
while (yRec<height) {
  if (xRec<width/3) {
strokeWeight(1.2);
fill(210, 210,0);
rect(xRec+18,yRec,11,11);
rect(xRec, yRec+19,47,8);
rect(xRec+18,yRec+35,11,11);
fill(80,70,120);
rect (xRec+36, yRec,11,11);
rect(xRec, yRec+35,11,11);
rect (xRec,yRec,11,11);
rect(xRec+36, yRec+35,11,11);
xRec = xRec+60;
  } else {
xRec = 6; 
yRec = yRec+60;
  }
}
xRec=486; yRec = 247;
while (yRec<height) {
  if (xRec<width) {
    strokeWeight(1.2);
fill(210, 210,0);
rect(xRec+18,yRec,11,11);
rect(xRec, yRec+19,47,8);
rect(xRec+18,yRec+35,11,11);
fill(80,70,120);
rect (xRec+36, yRec,11,11);
rect(xRec, yRec+35,11,11);
rect (xRec,yRec,11,11);
rect(xRec+36, yRec+35,11,11);
xRec = xRec+60;
  } else {
    xRec=486; yRec=yRec+60;
  }
}
float xDes=243.5;
int yDes=23;
while (yDes<height) {
  if (xDes<480) {
fill(0);stroke(0,255,0); strokeWeight(1);
rect(xDes,yDes,54,14);
fill(0,20,0); stroke(0,235,0);
rect(xDes+3,yDes-2,48,18);
fill(0,50,0); stroke(0,205,0);
rect(xDes+6,yDes-4,42,22);
fill(0,80,0); stroke(0,175,0);
rect(xDes+9,yDes-6,36,26);
fill(255); stroke(0);
rect(xDes+12,yDes-8,30,30);
fill (255); stroke(0);
rect(xDes+15, yDes-10, 24, 34);
fill (0,185,0); stroke(0,70,0);
rect(xDes+18, yDes-12, 18, 38);
fill (0,220,0); stroke(0,35,0);
rect(xDes+21, yDes-14, 12, 42);
fill (0,255,0); stroke(0);
rect(xDes+24, yDes-16, 6, 46);
xDes = xDes + 60;
  } else {
    xDes=243.5;
    yDes=yDes+60;
}}}
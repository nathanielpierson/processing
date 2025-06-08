/* Press s to turn on the square. Move the mouse to the upper left, lower left, and lower
right quadrants to make the square rotate (in different directions depending on which
quadrant the mouse is over). If you press h, the current rotation direction will continue
even after the mouse is put in a different quadrant. Press a to add another square. Press
d to delete a square. press l to move all the squares to the left. Press r to move all
the squares to the right. Press c to change the color of the squares. I really wanted
to add more, but I had too many projects due this week and I ran out of time. */
Boolean colorEll = false;
Boolean rRelease = true;
Boolean SquareMode = false;
float Theta = 0.1;
float x, y, z;
int addSquare = 1;
int squareMove, hold, move;
void setup () {
  size(720, 480, P3D);
  fill(255);
  rectMode(CENTER);
}
void draw () {
  background(255);
  pushMatrix();
    translate(width/2-move, height/2);
    if (mouseX > width/2 && mouseY > height/2 || hold == 1) {
    y=y+Theta;
  }
  if (mouseX > width/2 && mouseY < height/2 || hold == 2) {
    z=z+Theta;
  }
  if (mouseX < width/2 && mouseY > height/2 || hold == 3) {
    x=x+Theta;
  }
  rotateZ(z);
  rotateY(y);
  rotateX(x);
  if (SquareMode) {
    for (int i = addSquare; i > 0; i--) {
    rect (0+squareMove, 0, 30, 30);
    squareMove = squareMove + 40;
    }
    squareMove = 0;
  }
  popMatrix();
}
void keyPressed() {
if (key == 'c') {
  fill (random(0,255), random(0,255), random(0,255));
  }
 if (key == 's') {
   SquareMode = !SquareMode;
}
if (key == 'a') {
  addSquare = addSquare + 1;
}
if (key == 'd' && addSquare > 1) {
  addSquare = addSquare - 1;
}
if (key == 'h') {
  if (mouseX < width/2 && mouseY < height/2) {
    hold = 0;
  }
  if (mouseX > width/2 && mouseY > height/2) {
    hold = 1;
  }
  if (mouseX > width/2 && mouseY < height/2) {
    hold = 2;
}
if (mouseX < width/2 && mouseY > height/2) {
  hold = 3;
}
}
if (key == 'l') {
move = move + 30;
}
if (key == 'r') {
move = move - 30;
}
}
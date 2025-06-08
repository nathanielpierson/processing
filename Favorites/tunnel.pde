float zPosition, camZPosition, hueCycle;
int squareNum = 200;
float [] hue = new float[2000];
float [] squareX = new float[squareNum];
float [] squareY = new float[squareNum];
float [] squareZ = new float[squareNum];
float [] squareH = new float[squareNum];
float [] squareW = new float[squareNum];
float [] scaler = new float[squareNum];
float theta = 0.01;
float rot;
float rounded=200;
int move;
void setup() {
size(700,700, P3D);
for (int i = 0; i < 2000; i++){
  hue[i] = hueCycle;
  hueCycle = hueCycle+2;
    if (hueCycle >= 255) {
    hueCycle = hueCycle-255;
  }
}
for (int i = 0; i < squareNum; i++) {
  squareX[i] = random(330,370);
  squareY[i] = random(330,370);
  squareZ[i] = random(-12000,0);
  squareH[i] = random(2,20);
  squareW[i] = random(2,20);
  scaler[i] = 1;
}
}
void draw() {
  colorMode(HSB, 255);
  background(255);
  noFill();
  strokeWeight(13);
  translate(0,0,camZPosition);
  camZPosition = camZPosition + 3;
  rounded = rounded - 0.05;

  for (int i = 0; i < 2000; i++){
    rectMode(CENTER);
    stroke(hue[i],255,255);
      pushMatrix();
  translate(0,0,zPosition);
  rect(350, 350, 80, 80,rounded);
  popMatrix();
  zPosition = zPosition - 5;
}
for (int i = 0; i < squareNum; i++) {
  fill(0);
  noStroke();
  pushMatrix();
  translate(squareX[i],squareY[i],squareZ[i]);
  rotateZ(rot);
  while (scaler[i] > 0.1) {
    pushMatrix();
    translate(0,0,move);
    scale(scaler[i]);
  rect(0,0,squareW[i],squareH[i]);
  scaler[i] = scaler[i]/1.2;
  popMatrix();
  move = move - 2;
  }
  scaler[i] = 1;
  move = 0;
  popMatrix();
}
rot = rot + theta;
zPosition = 0;
}
float r, xxx, yyy;
float ecks = 350;
float whaii = 350;
float radtwo = 800;
int numTwirlers = 10;
float [] xx = new float[numTwirlers];
float [] yy = new float[numTwirlers];
float [] rad = new float[numTwirlers];
float [] theta = new float[numTwirlers];
float [] colorLevel = new float[numTwirlers];
void setup() {
  size (700,700,P3D);
    background(255);
    for (int i=0; i < numTwirlers; i++){
      rad[i] = 350 + (200 * i);
      theta[i] = 0.1;
colorLevel[i] = 255 + (50*i);
    }
}
void draw() {
    for (int i=0; i < numTwirlers; i++){
    rad[i] = rad[i] - 0.2;
        theta[i] = theta[i] + 0.02;
xx[i] = rad[i] * cos(theta[i]);
yy[i] = rad[i] * sin(theta[i]);
pushMatrix();
translate(xx[i],yy[i]);
  drawBezier(0, 50,  50, 27, 0, 113, 112, 96);
  popMatrix();
}
colorMode(RGB,255);
    fill(255,255,255,7);
  rect(-100,-100,1000,1000);
}

void drawBezier(float a, float b, float c, float d, float e, float f, float g, float h) {
pushMatrix();
 for (int i=0; i < numTwirlers; i++){
  colorMode(RGB, colorLevel[i]);
fill(random(0,255), random(0,255), random(0,255),255);
  stroke(0);
  translate(ecks,whaii);
  r=r+0.07;
rotateZ(r);
  bezier(a,b,-600,c,d,-600,e,f,-600,g,h,-600);
 }
  popMatrix();
  if (g > 10) {
    drawBezier(a*2,b,c,d,e,f,g/2,h);
  }
}
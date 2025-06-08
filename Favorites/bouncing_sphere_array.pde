int bound = 110;
float Theta1;
int numSpheres = 40;
float [] x = new float [numSpheres];
float [] y = new float [numSpheres];
float [] z = new float [numSpheres];
float [] xs = new float [numSpheres];
float [] ys = new float [numSpheres];
float [] zs = new float [numSpheres];

void setup () {
  smooth(8);
  size (600,600, P3D);
   for (int i = 0; i < numSpheres; i++) {
    x[i] = bound;
    y[i] = bound;
    z[i] = 0;
    xs[i] = random(1,4);
    ys[i] = random(1,4);
    zs[i] = random(2,4);
   }
}
void draw () {
    colorMode(RGB, 600-(bound*2));
  background(600-(bound*2));
  noStroke();
  lights();
  for (int i = 0; i < numSpheres; i++) {
  fill(x[i], y[i], (z[i]+41)*2.3);
  //println((z[i]+41)*2.3);
  pushMatrix();
  translate (x[i], y[i], z[i]);
  sphere(30);
  x[i] = x[i] + xs[i];
  if (x[i] < bound || x[i] > width-bound) {
    xs[i] = -xs[i];
  }
  y[i] = y[i] + ys[i];
  if (y[i] < bound || y[i] > height-bound) {
    ys[i] = -ys[i];
  }
  z[i] = z[i] + zs[i];
  if (z[i] < -40 || z[i] > 220) {
    zs[i] = -zs[i];
  }
  popMatrix();
}
}
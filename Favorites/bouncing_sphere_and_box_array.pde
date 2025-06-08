int bound = 110;
float Theta1;
int numSpheres = 40;
boolean lastSphere = false;
boolean bigCircle = false;
float rotAm = 0.03;
float sphereSize=30;
float sphereSizeSpeed=0.35;
float [] x = new float [numSpheres];
float [] y = new float [numSpheres];
float [] z = new float [numSpheres];
float [] xs = new float [numSpheres];
float [] ys = new float [numSpheres];
float [] zs = new float [numSpheres];
float [] rz = new float [numSpheres];
int [] rotHow = new int [numSpheres];

void setup () {
  size (1280,720, P3D);
   for (int i = 0; i < numSpheres; i++) {
    x[i] = bound;
    y[i] = bound;
    z[i] = 0;
    xs[i] = random(1,4);
    ys[i] = random(1,4);
    zs[i] = random(2,4);
    rotHow[i] = int (random(1,4));
   }
}
void draw () {
    colorMode(RGB, 600-(bound*2));
  background(600-(bound*2));
  noStroke();
  lights();
  for (int i = 0; i < numSpheres; i++) {
    lastSphere = !lastSphere;
  fill(x[i], y[i], (z[i]+41)*2.3);
  //println((z[i]+41)*2.3);
  pushMatrix();
  translate (x[i], y[i], z[i]);
  if (lastSphere) {
          rz[i] = rz[i] + rotAm;
    if (rotHow[i] == 1) {
  rotateZ(rz[i]);
    } else if (rotHow[i] == 2) {
        rotateY(rz[i]);
    } else {
        rotateX(rz[i]);
    }
  box(30);
  } else if (bigCircle) {
    sphere (sphereSize); 
    bigCircle = !bigCircle;
  } else {
  sphere (18);
    bigCircle = !bigCircle;
  }
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
sphereSize = sphereSize+sphereSizeSpeed;
/*if (sphereSize > 45 || sphereSize < 15) {
  sphereSizeSpeed = -sphereSizeSpeed;*/
}
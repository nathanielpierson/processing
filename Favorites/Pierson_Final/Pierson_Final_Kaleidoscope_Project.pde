float deg, rad, totalRot, moveOut, xx, yy, zz;
float moveDirection = 0.5;
int numKaleidos = 45;
int iterationCounter, otherIterationCounter;
float multiplier= 0.26;
float hueCycler;
float yRot = 20;
float yTheta, xTheta, zTheta;
int varCounter;
float [] a = new float[numKaleidos];
float [] b = new float[numKaleidos];
float [] c = new float[numKaleidos];
float [] d = new float[numKaleidos];
float [] e = new float[numKaleidos];
float [] f = new float[numKaleidos];
float [] g = new float[numKaleidos];
float [] h = new float[numKaleidos];
float [] j = new float[numKaleidos];
float [] k = new float[numKaleidos];
float [] l = new float[numKaleidos];
float [] m = new float[numKaleidos];
float [] hue = new float[numKaleidos];
float [] bri = new float[numKaleidos];
float [] sat = new float[numKaleidos];
float [] variation = new float[numKaleidos*8];
float [] variations = new float[numKaleidos*8];
float deg_, rad_, totalRot_, xx_, yy_, zz_;
float moveDirection_ = 0.5;
int numBoxes = 200;
int compRot = 1;
float hueCycler_;
float yRot_ = 20;
float yTheta_ = 0;
float tranX = 3.5;
float tranY = 15;
float tranZ = 20;
float totalE;
float goIn = 1;
float goInSpeed = 12;
int bezRestr = 60;
boolean comingOut = false;
float hueAdder;
float DegAdd = 20;
boolean crazy = false;
float [] xRotAdd = new float[numBoxes];
float [] yRot_Add = new float[numBoxes];
float [] zRotAdd = new float[numBoxes];
float [] xRotAddIn = new float[numBoxes];
float [] yRot_AddIn = new float[numBoxes];
float [] zRotAddIn = new float[numBoxes];
float [] a_ = new float[numBoxes];
float [] b_ = new float[numBoxes];
float [] c_ = new float[numBoxes];
float [] hue_ = new float[numBoxes];
float [] bri_ = new float[numBoxes];
float [] sat_ = new float[numBoxes];
int [] xConf = new int[numBoxes];
int [] yConf = new int[numBoxes];
int [] zConf = new int[numBoxes];
int numSquares = 450;
int RecX, RecY;
float [] startGray = new float [numSquares];
float [] endGray = new float [numSquares];
float [] currentGray = new float [numSquares];
float [] grayDirection = new float [numSquares];
float [] sHue = new float [numSquares];
boolean [] colorOn = new boolean [numSquares];
PFont font;
boolean BoxMode = true;
int [] polyNum = new int[numBoxes];
int textPos =139;
boolean [] modeOn = new boolean[4];
boolean controlPointOn = true;
int numQuads = 80;
float [] qa = new float[numQuads];
float [] qb = new float[numQuads];
float [] qc = new float[numQuads];
float [] qd = new float[numQuads];
float [] qe = new float[numQuads];
float [] qf = new float[numQuads];
float [] qg = new float[numQuads];
float [] qh = new float[numQuads];
float [] qhue = new float[numQuads];
float [] qbri = new float[numQuads];
float [] qsat = new float[numQuads];
float qHueCycler;
float qDeg, qrad, qTotalRot, qMoveOut;
float circleMake = 10;
float circleMakeSpeed = 0.2;
float Expand = 0;
float ExpandInc = -2;
int rotDir = 1;
float opacity;
boolean otherDirection = false;
float quadTheta = 0.03;
float erf, umf;
float eef = 2.1;
float xqDeg = 0;
float xqDegEaser = 0;
float xRad, yRad;
boolean extraRotateMode = false;
float extraRotateAmount = 0.5;
boolean opacityInterpolationMode = true;
float realOpacity;
float anotherFloatUgh;
boolean easing = false;
float [] zForCircle = new float[numKaleidos];
float keyDisplace = 346;
boolean textVisible = true;
float textCycle;
float textCyclePong = 0.3;
boolean Barnicles = false;
float moveDirectionQ = 9;
float moveOutQ;
int iterationCounterQ;
float mouseXtoSquare, mouseYtoSquare;
int squareNumber;
int numKalChange = -10;
float BezDegAdd = 20;
float bezZoom;
float yQuadRot = 0;
float newQRad;
float qyDeg;
boolean closeMode = false;

void setup () {
  size(800,800,P3D);
  colorMode(HSB, 500);
  font = createFont("AppleBraille-16.vlw", 22);
  InitializeSize();
  InitializeColor();
  InitializeRot();
  bezierInitialize();
  bezierColorInitialize();
  initializeQuad();
    for (int q = 0; q < numKaleidos*8; q++) {
      variations[q] = random(-0.0001*bezRestr,0.0001*bezRestr);
      variation[q] = variations[q];
    }
    for (int i = 0; i < numSquares; i++) {
    startGray[i] = random(0,400);
    currentGray[i] = startGray[i];
    endGray[i] = random(startGray[i]+5, 500);
    colorOn[i] = false;
    grayDirection[i] = 1;
    sHue[i] = random(0,500);
    }
    for (int i = 1; i < 4; i++) {
    modeOn[i] = false;
  }
  modeOn[0] = true;
}
void draw () {
    background(500);
    //println(bezZoom);
    if (modeOn[0]) {
    graySquares();
    } else {
      background(500);
    }
    if (modeOn[2]) {
    BoxMenagerie();
    }
    textFont(font); 
    if (modeOn[3]) {
      quadKaleido();
    }
    if(modeOn[1]) {
bezierKaleido();
    }
for (int i=1; i < 5; i++) {
  stroke(0);
  strokeWeight(7);
    pushMatrix();
    translate(330.9,341.45,623);
    if (modeOn[i-1]) {
    fill(42, 403,490);
    } else {
      fill(500);
    }
    scale(0.16);
    rect (656, textPos-19, 22, 22);
      fill(0);
text(i, 660, textPos);
popMatrix();
textPos = textPos + 28;
  }
  if (textVisible) {
  pushMatrix();
    translate(330.9,341.45,623);
    scale(0.07);
    fill(500);
    strokeWeight(15);
    ellipse(438, 283, 33,22);
    fill(0);
    strokeWeight(1);
    ellipse(438, 282, 12,22);
    if (modeOn[0] && !modeOn[1] && !modeOn[2] && !modeOn[3]) {
      fill(0,500,500);
    } else {
    fill(textCycle);
    }
    text("keys affecting visible designs:",419,320);
      if (modeOn[1]) {
    text("b", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("n", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("y", 419, keyDisplace);    
    keyDisplace = keyDisplace + 25;
    text("p", 419, keyDisplace);    
    keyDisplace = keyDisplace + 25;
    if (numKalChange < 0) {
    text("t", 419, keyDisplace);    
    keyDisplace = keyDisplace + 25;
    }
    if (numKalChange > -45) {
    text("m", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    }
    if (BezDegAdd < 360) {
      text("7", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    }
    if (BezDegAdd > 2) {
      text("8", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    }
    if (bezZoom < 2700){
      text("q", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    }
    if (bezZoom > -3500) {
    text("i", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    }
      }
      if (modeOn[2]) {
    text("s", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("c", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("r", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    text("d", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("f", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    text("w", 419, keyDisplace);  
    keyDisplace = keyDisplace + 25;
    text("1", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("2", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("...", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("6", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
      }
      if (modeOn[3]){
    text("x", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("e", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("v", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("j", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("h", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    if (extraRotateMode) {
    text("k", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text("z", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    }
    text(",", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text(".", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
    text(";", 419, keyDisplace);
    keyDisplace = keyDisplace + 25;
      }
    popMatrix();
  keyDisplace = 348;
  }
  else {
    pushMatrix();
    translate(330.9,341.45,623);
    scale(0.07);
    strokeWeight(23);
    line(453,282,423,282);
    strokeWeight(1);
    popMatrix(); 
  }
  textCycle = textCycle + textCyclePong;
  if (textCycle > 500 || textCycle < 0) {
    textCyclePong = -textCyclePong;
  }
  textPos = 139;
}
void keyPressed() {
  if (key == 's') {
    InitializeSize();
  }
  if (key == 'c') {
    InitializeColor();
  }
  if (key == 'r') {
    InitializeRot();
  }
  if (key == 'd') {
    DegAdd = random(4,40);
  }
  if (key == 'f') {
    crazy = !crazy;
  }
  if (key == 'g') {
    rad_ = -rad_;
  }
  if (key == 'b') {
    bezierInitialize();
  }
  if (key == 'n') {
    bezierColorInitialize();
  }
  if (key == 'a') {
    Barnicles = !Barnicles;
  }
  if (key == 'w') {
    BoxMode = !BoxMode;
  }
  if (key == 'y') {
  controlPointOn = !controlPointOn;
  }
   if (key=='x') {
   initializeQuad();
 }
 if (key == 'e') {
   ExpandInc = ExpandInc + 1;
 }
 if (key == 'v') {
   ExpandInc = ExpandInc - 1;
 }
 if (key == 'h') {
   extraRotateMode = !extraRotateMode;
 }
 if (key == 'k') {
   extraRotateAmount = extraRotateAmount + 0.2;
 }
 if (key == 'z') {
   extraRotateAmount = extraRotateAmount - 0.2;
 }
 if (key == 'j') {
   opacityInterpolationMode = !opacityInterpolationMode;
 }
 if (key == 'p') {
   Barnicles = !Barnicles;
 }
 if (key == 't') {
   numKalChange = constrain(numKalChange + 1, -45, 0);
 }
 if (key == 'm') {
   numKalChange = constrain(numKalChange - 1, -45, 0);
 }
  if (key == '1') {
    compRot = 1;
  }
  if (key == '2') {
    compRot = 2;
  }
  if (key == '3') {
    compRot = 3;
  }
  if (key == '4') {
    compRot = 4;
  }
  if (key == '5') {
    compRot = 5;
  }
  if (key == '6') {
    compRot = 6;
  }
  if (key == '7') {
    BezDegAdd = constrain(BezDegAdd + 3, 2, 360);
  }
  if (key == '8') {
    BezDegAdd = constrain(BezDegAdd - 3, 2, 360);
  }
  if (key =='q') {
    bezZoom = constrain(bezZoom + 100, -3500, 2700);
  }
  if (key == 'i') {
    bezZoom = constrain(bezZoom - 100, -3500, 2700);
  }
  if (key == ',') {
  yQuadRot = yQuadRot + 0.1;
  }
  if (key == '.'){
  yQuadRot = yQuadRot - 0.1;
  }
  if (key == ';') {
  closeMode = !closeMode;
  }
}
void mouseWheel(MouseEvent event) {
  float ee = event.getCount();
  totalE = totalE + ee;
}
void InitializeSize() {
  for (int i = 0; i < numBoxes; i++) {
   a_[i] = random(2+(i/5),20+(i));
   b_[i] = random(2+(i/5),20+(i));
   c_[i] = random(2+(i/5),20+(i));
  }
}
void InitializeColor() {
  for (int i = 0; i < numBoxes; i++) {
   hue_[i] = random(0, 500);
   bri_[i] = random(0, 500);
   sat_[i] = random(0, 500);
  }
}
void InitializeRot() {
  for (int i = 0; i < numBoxes; i++) {
   xConf[i] = int(random(1,4));
   yConf[i] = int(random(1,4));
   zConf[i] = int(random(1,4));
   polyNum[i] = int(random(3,8));
   if (xConf[i] == 1) {
     xRotAddIn[i]=0;
   }else {
     xRotAddIn[i]=random(-0.005, 0.005);
   }
   if (yConf[i] == 1) {
     yRot_AddIn[i]=0;
   }else {
     yRot_AddIn[i]=random(-0.005, 0.005);
   }
   if (zConf[i] == 1) {
     zRotAddIn[i]=0;
   }else {
     zRotAddIn[i]=random(-0.005, 0.005);
   }
   xRotAdd[i] = xRotAddIn[i];
   yRot_Add[i] = yRot_AddIn[i];
   zRotAdd[i] = zRotAddIn[i];
  }
}

void BoxMenagerie() {
  lights();
    if (comingOut) {
    goInSpeed = -20 + (goIn/200);
    } else {
    goInSpeed = 20 - (goIn/200);
    }
    goIn = goIn+goInSpeed;
    if (goIn > 3490 || goIn < 0) {
      comingOut = !comingOut;
    }
   // println(goInSpeed);
  while (deg_+totalRot_ < 360+totalRot_) {
      
    rad_ = radians(deg_+totalRot_);
    pushMatrix();
    translate(width/2, height/2, -3000+goIn);
    if (compRot == 1) {
    rotateZ(rad_);
    }
    if (compRot == 2) {
    rotateZ(-rad_);
    }
    if (compRot == 3) {
    rotateY(rad_);
    }
    if (compRot == 4) {
    rotateY(-rad_);
    }
    if (compRot == 5) {
    rotateX(rad_);
    }
    if (compRot == 6) {
    rotateX(-rad_);
    }
    for (int i = 0; i < numBoxes; i++) {
      
      
       if (hue_[i] + hueCycler_ + hueAdder > 500) {
      hue_[i] = hue_[i] - 500;
    } else if (hue_[i] + hueCycler_ + hueAdder < 0) {
      hue_[i] = hue_[i] + 500;
    }
    noStroke();
    pushMatrix();
    rotateX(xRotAdd[i]);
    rotateY(yRot_Add[i]);
    rotateZ(xRotAdd[i]);
      fill(hue_[i]+hueCycler_+hueAdder,sat_[i],bri_[i]*1.5);
      if (BoxMode) {
    box(a_[i],b_[i],c_[i]); 
      } else {
        sphere(a_[i]);
        sphereDetail(polyNum[i]);
      }
    popMatrix();
    if (crazy) {
    rotateX(mouseX/500);
    rotateY(mouseY/500);
    rotateZ(totalE);
    }
    translate(tranX,tranY,tranZ);
    }
    for (int i = 0; i < numBoxes; i++) {
    xRotAdd[i] = xRotAdd[i] + xRotAddIn[i];
    yRot_Add[i] = yRot_Add[i] + yRot_AddIn[i];
    zRotAdd[i] = zRotAdd[i] + zRotAddIn[i];
    }
    popMatrix();
    
        if (deg_ < 180) {
    hueAdder = hueAdder+8;
    } else {
      hueAdder = hueAdder-8;
    }
    deg_ = deg_ + DegAdd;
  }
  hueAdder = 0;
  totalRot_ = totalRot_+0.4;
  deg_ = 0;
  pushMatrix();
  yTheta_ = yTheta_ + 0.20;
  xx_ = yRot_ * cos(yTheta_);
  yy_ = yRot_ * sin(yTheta_);
  zz_ = yRot_ * cos(yTheta_);
  translate(xx_,yy_);
  popMatrix(); 
  hueCycler_ = hueCycler_+0.7;
}
void graySquares() {
 for (int i = 0; i < numSquares; i++) {
    currentGray[i] = currentGray[i] + grayDirection[i];
    if (currentGray[i] < startGray[i] || currentGray[i] > endGray[i]) {
      grayDirection[i] = -grayDirection[i];
    }
    if (colorOn[i]) {
      fill (sHue[i], 500, currentGray[i]);
    } else {
    fill(0, 0, currentGray[i]);
    }
    pushMatrix();
    translate(-2950,-2950,-5100);
    rect(RecX, RecY, 330, 330);
popMatrix();
    RecX = RecX + 330;
    if (RecX > 6700) {
      RecX = 0;
      RecY = RecY+330;
    }
}
RecY = 0; RecX = 0;
}
void bezierInitialize() {
  for (int i = 0; i < numKaleidos; i++) {
   a[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   b[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   c[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   d[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   e[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   f[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   g[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   h[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   j[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   k[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   l[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
   m[i] = random(-bezRestr-(i*5),bezRestr+(i*5));
}
}
void bezierColorInitialize() {
  for (int i = 0; i < numKaleidos; i++) {
     hue[i] = random(0, 500);
   bri[i] = random(0, 500);
   sat[i] = random(0, 500);
  }
}

void initializeQuad () {
    for (int i = 0; i < numQuads; i++) {
   qa[i] = random(-160-(i*5),40+(i*5));
   qb[i] = random(-160-(i*5),40+(i*5));
   qc[i] = random(-160-(i*5),40+(i*5));
   qd[i] = random(40+(i*5),160+(i*5));
   qe[i] = random(40+(i*5),160+(i*5));
   qf[i] = random(-160-(i*5),40+(i*5));
   qg[i] = random(40+(i*5), 160+(i*5));
   qh[i] = random(40+(i*5), 160+(i*5));
   qhue[i] = random(0, 500);
   qbri[i] = random(0, 500);
   qsat[i] = random(0, 500);
}
}
void bezierKaleido() {
    while (deg < 360+totalRot) {
    rad = radians(deg);
    pushMatrix();
    translate(width/2, height/2, -2500+bezZoom);
    rotateZ(rad);
 /* yTheta = yTheta + 0.3;
  xTheta = xTheta + 0.1;
  zTheta = zTheta + 0.2;
  xx = yRot * cos(xTheta);
  yy = yRot * sin(yTheta);
  zz = yRot * cos(zTheta);
  translate(xx,yy,zz);
  rotateX(xTheta/200);
  rotateY(yTheta/200);
  rotateZ(zTheta/200);*/
    for (int i = 0; i < numKaleidos+numKalChange; i++) {
      multiplier = 0.26 * bezRestr;
    if (hue[i] + hueCycler > 500) {
      hue[i] = hue[i] - 500;
    }
    //stroke(hue[i]+hueCycler,sat[i],bri[i]/5);
    noStroke();
      fill(hue[i]+hueCycler,sat[i],bri[i]*1.5);
      zForCircle[i] = ((c[i]+f[i]+j[i]+m[i])/4) + moveOut*i;
      if (controlPointOn) {
    bezier(a[i]+moveOut*i+variation[0+varCounter],b[i]+moveOut*i+(i*multiplier)+variation[1+varCounter],c[i]+moveOut*i,d[i]+moveOut*i+variation[2+varCounter],e[i]+moveOut*i+(i*multiplier)+variation[3+varCounter],f[i]+moveOut*i,g[i]+moveOut*i+variation[4+varCounter],h[i]+moveOut*i+(i*multiplier)+variation[5+varCounter],j[i]+moveOut*i,k[i]+moveOut*i+variation[6+varCounter],l[i]+moveOut*i+(i*multiplier)+variation[7+varCounter],m[i]+moveOut*i);
      if (Barnicles) {
            int steps = 10;
for (int w = 0; w <= steps; w++) {
  float t = w / float(steps);
  float bx = bezierPoint(a[i]+moveOut*i+variation[0+varCounter], d[i]+moveOut*i+variation[2+varCounter], g[i]+moveOut*i+variation[4+varCounter], k[i]+moveOut*i+variation[6+varCounter], t);
  float by = bezierPoint(b[i]+moveOut*i+(i*multiplier)+variation[1+varCounter], e[i]+moveOut*i+(i*multiplier)+variation[3+varCounter], h[i]+moveOut*i+(i*multiplier)+variation[5+varCounter], l[i]+moveOut*i+(i*multiplier)+variation[7+varCounter], t);
  pushMatrix();
  translate(0,0,zForCircle[i]+bezZoom);
  fill(hue[i]+hueCycler,sat[i],bri[i]);
  ellipse(bx, by, 25, 25);
  popMatrix();
}
      }
    } else {
    bezier(a[i]+moveOut*i+variation[0+varCounter],b[i]+moveOut*i+(i*multiplier)+variation[1+varCounter],c[i]+moveOut*i,d[i],e[i],f[i],g[i],h[i],j[i],k[i]+moveOut*i+variation[6+varCounter],l[i]+moveOut*i+(i*multiplier)+variation[7+varCounter],m[i]+moveOut*i);
if (Barnicles) {
            int steps = 10;
for (int w = 0; w <= steps; w++) {
  float t = w / float(steps);
  float bx = bezierPoint(a[i]+moveOut*i+variation[0+varCounter], d[i], g[i], k[i]+moveOut*i+variation[6+varCounter], t);
  float by = bezierPoint(b[i]+moveOut*i+(i*multiplier)+variation[1+varCounter], e[i], h[i], l[i]+moveOut*i+(i*multiplier)+variation[7+varCounter], t);
pushMatrix();
  translate(0,0,zForCircle[i]+bezZoom); 
  fill(hue[i]+hueCycler,sat[i],bri[i]);
  ellipse(bx, by, 25, 25);
  popMatrix();
}
}
    }

varCounter = varCounter+8;
for (int p = 0; p < numKaleidos*8; p++) {
  variation[p] = variation[p]  + variations[p];
}
    translate(3.5,15,5);
    }
    varCounter = 0;
    popMatrix();
    
    deg = deg + BezDegAdd;
  }
  totalRot = totalRot+1;
  deg = 0+totalRot;
  iterationCounter++;
  otherIterationCounter++;
  if (iterationCounter > 300) {
    moveDirection = -moveDirection;
    iterationCounter = 0;
    
  }
  if (otherIterationCounter > 400) {
 for (int q = 0; q < numKaleidos*8; q++) {
   variations[q] = -variations[q];
  }
  otherIterationCounter = 0;
  }
  moveOut = moveOut + moveDirection;
  pushMatrix();
  yTheta = yTheta + 0.20;
  xx = yRot * cos(yTheta);
  yy = yRot * sin(yTheta);
 // zz = yRot * cos(yTheta);
  translate(xx,yy);
  popMatrix();
  hueCycler = hueCycler+0.7;
}

void quadKaleido () { 
 // println(Expand);
 // println(ExpandInc);
xqDeg = xqDeg + extraRotateAmount;
  if (anotherFloatUgh < xqDeg-360 && !easing) {
    anotherFloatUgh = anotherFloatUgh+360;
    xqDegEaser = anotherFloatUgh;
  }
  stroke(500);
  while (qDeg < 360+qTotalRot) {
    qrad = radians(qDeg);
    xRad = radians(xqDegEaser);
    newQRad = radians(qyDeg);
    pushMatrix();
    translate(width/2, height/2, -5000+moveOutQ);
    rotateZ(qrad);
    rotateX(xRad);
    rotateY(newQRad*yQuadRot);
    println(yQuadRot);
    println(qyDeg);
    if (extraRotateMode) {
      if (xqDegEaser < xqDeg) {
        xqDegEaser = xqDegEaser + 0.2;
        easing = true;
      } else {
        xqDegEaser = xqDeg;
        easing = false;
      }
    
    } else if (xqDegEaser > anotherFloatUgh){
     xqDegEaser = xqDegEaser - 0.1; 
     easing = true;
    }
   else if (xqDegEaser < anotherFloatUgh){
      easing = false;
    }
        if (otherDirection) {
      opacity = circleMake+690-qDeg+qTotalRot;
    } else {
    opacity = circleMake+qDeg-qTotalRot;
    }
    for (int i = 0; i < numQuads; i++) {
      strokeWeight(i/3);
      if (qhue[i] + qHueCycler > 500) {
      qhue[i] = qhue[i] - 500;
    }
    erf = eef * tan(quadTheta);
    umf = eef * sin(quadTheta);
    pushMatrix();
    translate(umf,erf);
    if (erf > 2 || erf < -2) {
    quadTheta = quadTheta + 0.0000004;
    } else {
      quadTheta = quadTheta + 0.008;
    }
    if (opacityInterpolationMode) {
      realOpacity = opacity;
    } else {
      realOpacity = 500;
    }
      fill(qhue[i]+qHueCycler,qsat[i],qbri[i],realOpacity);
      //stroke(500);
      quad (qa[i]-Expand,qb[i]-Expand,qc[i]-Expand,qd[i]+Expand,qe[i]+Expand,qf[i]-Expand,qg[i]+Expand,qh[i]+Expand);
   pushMatrix();
   scale(0.5);
   translate(0,0,1);
   noStroke();
   fill(qhue[i]+qHueCycler,qsat[i],qbri[i]-200,realOpacity);
      quad (qa[i]-Expand,qb[i]-Expand,qc[i]-Expand,qd[i]+Expand,qe[i]+Expand,qf[i]-Expand,qg[i]+Expand,qh[i]+Expand);
   popMatrix();
   popMatrix();
   if (closeMode) {
     translate(0,0,1);
   } else {
    translate(3.5,30, 15);
   }
    }
    
    popMatrix();
    qDeg = qDeg + 20;
    qyDeg = qyDeg + 20;
    if ((circleMake > 50) && (circleMakeSpeed == 0.2 || circleMakeSpeed == -0.2)) {
    circleMakeSpeed = circleMakeSpeed*7;
    } else if ((circleMake < 50) && (circleMakeSpeed == 1.4 || circleMakeSpeed == -1.4)) {
      circleMakeSpeed = circleMakeSpeed/7;
    }
        circleMake = circleMake+circleMakeSpeed;
if (circleMake > 500 || circleMake < -690) {
  circleMakeSpeed = -circleMakeSpeed;
  otherDirection = !otherDirection;
  circleMake = constrain(circleMake, -330, 470);
}
  }
  Expand = constrain(Expand + ExpandInc, -1000, 1000);
  qTotalRot = qTotalRot+rotDir;
/*  circleMake = circleMake+circleMakeSpeed;
if (circleMake > 140 || circleMake < -330) {
  circleMakeSpeed = -circleMakeSpeed;
  rotDir = -rotDir; 
}*/
  qDeg = 0+qTotalRot;
  qyDeg = 0;

  iterationCounterQ++;
  if (iterationCounterQ > 400) {
    moveDirectionQ = -moveDirectionQ;
      ExpandInc = Expand / -400;
      if (ExpandInc > 0 && ExpandInc < 1) {
        ExpandInc = 1;
      }
      if (ExpandInc < 0 && ExpandInc > -1) {
      ExpandInc = -1;
      }

    iterationCounterQ = 0;
  
  }
  moveOutQ = moveOutQ + moveDirectionQ;

  qHueCycler = qHueCycler+1;
}
void mousePressed () {
  //println(mouseX);
  //println(mouseY);
  mouseXtoSquare = floor(mouseX/39.5);
  mouseYtoSquare = floor(mouseY/39.5);
  squareNumber = int(mouseXtoSquare + (mouseYtoSquare*21));
  if (mouseButton == LEFT) {
colorOn[squareNumber] = !colorOn[squareNumber];
  }
  if (mouseButton == RIGHT) {
    sHue[squareNumber] = random(0,500);
  }
  if (mouseX >= 757 && mouseX <=791) {
    if (mouseY >= 11 && mouseY <= 45){
      if (mouseButton == LEFT) {
    modeOn[0] = !modeOn[0]; }
    if(mouseButton == RIGHT) {
      modeOn[0] = true;
      modeOn[1] = false;
      modeOn[2] = false;
      modeOn[3] = false;
    }
    if (mouseButton == CENTER) {
    for(int i = 0; i < numSquares; i++){
      colorOn[i] = false;
    }
    }
    }
    if (mouseY >= 56 && mouseY <= 90){
      if (mouseButton == LEFT) {
    modeOn[1] = !modeOn[1]; }
    if(mouseButton == RIGHT) {
      modeOn[0] = false;
      modeOn[1] = true;
      modeOn[2] = false;
      modeOn[3] = false;
    }
    if (mouseButton == CENTER) {
      Barnicles = false;
      controlPointOn = true;
      numKalChange = -10;
      BezDegAdd = 20;
      bezZoom = 0;
    }
    }
    if (mouseY >= 100 && mouseY <= 133){
      if (mouseButton == LEFT) {
    modeOn[2] = !modeOn[2]; }
    if(mouseButton == RIGHT) {
      modeOn[0] = false;
      modeOn[1] = false;
      modeOn[2] = true;
      modeOn[3] = false;
    }
    if(mouseButton == CENTER) { 
    compRot = 1;
    crazy = false;
    DegAdd = 20;
    BoxMode = true;
    ExpandInc = -2;
  }
    }
    if (mouseY >= 145 && mouseY <= 179){
      if (mouseButton == LEFT) {
    modeOn[3] = !modeOn[3]; }
      if(mouseButton == RIGHT) {
      modeOn[0] = false;
      modeOn[1] = false;
      modeOn[2] = false;
      modeOn[3] = true;
    }
    if (mouseButton == CENTER) {
    yQuadRot = 0;
    closeMode = false;
    extraRotateMode = false;
    extraRotateAmount = 0.5;
    opacityInterpolationMode = true;
    }
    }
  }
  /*  if (mouseX < 309 || mouseY > 640) {
    bezRestr = constrain(bezRestr-5,1,100);
    bezierInitialize();
  }
  else if (mouseX < 506 || mouseY > 640) {
    bezierInitialize();
  }
  else if (mouseY > 640) {
    bezRestr = constrain(bezRestr+5,1,200);
    bezierInitialize();
  } */
  if (mouseY >= 9 && mouseY <= 25 && mouseX >= 7 && mouseX <= 30) {
    textVisible = !textVisible;
  }
}
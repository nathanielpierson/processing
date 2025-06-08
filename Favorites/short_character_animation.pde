int legh, footw, footh, kwalk, kjump;
int jumpspeed = 1;
float x, td, fade, eyepos;
int footy = 195;
float mouths = 5;
float sm = 1;
boolean legs = false;
boolean walkDone = false;
boolean eaten = false;

void setup () {
  size (720, 480);
}
void draw () {
  background(255);
  translate (x, 20);
  if (!walkDone) {
  Yellow();
  }
  
  stroke(0);
  translate (-x+50+kwalk, -20-kjump);
  fill (255, 158, 255);
  ellipse (520, 204, 114, 114);
  triangle (444, 205, 464, 197, 464, 213);
  triangle (596, 205, 576, 197,  576, 213);
  triangle (501, 278, 514, 260, 499, 256);
  triangle (540, 279, 543, 256, 529, 261);
  fill (255);
  ellipse (500, 181, 29, 20);
  ellipse (540, 181, 29, 20);
  fill(0);
  ellipse (500+eyepos, 181, 9, 9);
  ellipse (540+eyepos, 181, 9, 9);
  println(x);
  if ( x > 220 && mouths < 56 && !walkDone) {
    mouths = mouths + 2;
  }
  ellipse (520, 226, mouths, mouths);
  if (legs) {
    x=x+1.5;
  }
  if (walkDone) {
  translate (x-50, 20);
  Yellow();
  if (x < 370) {
    x = x + 2.2;
  }
  }
   if (walkDone && sm >= 2.7 && mouths > 5) {
     mouths = mouths - 0.7;
     if (mouths <= 5) {
       delay(1000);
       eaten = true;
     }
   }
   if (eaten) {
     if (eyepos < 4) {
     eyepos = eyepos+0.5;
     }
     kwalk = kwalk + 1;
     kjump = kjump + jumpspeed;
     if (kjump > 13 || kjump == 0) {
       jumpspeed = -jumpspeed;
     }
   }
}
void Yellow () {
  stroke (0, 0, 0, 255-fade);
  fill(255-fade, 255-fade, 0, 255-fade);
  triangle(200, 20+td*27, 270-td*9, 120+td*14, 130+td*9, 120+td*14);
  fill(255-fade, 255-fade, 255-fade, 255-fade);
  rect (182, 61+td*20, 11/sm, 24/sm);
  rect (207, 61+td*20, 11/sm, 24/sm);
  line (188, 68+td*20, 188, 78+td*20);
  line (213, 68+td*20, 213, 78+td*20);
  rect (178+td, 100+td*16, 44/sm, 7/sm);
  fill(255-fade, 255-fade, 0, 255-fade);
  rect (189, 120+td*13, 20/sm, 16/sm);
  ellipse (198, 161+td*6, 104/(sm*1.5), 53/sm);
  fill (0,0,0,255-fade);
  if (legh < 59) {
    legh = legh + 2;
  }
  rect (180+td*2, 184+td*2, 9/sm, legh/sm); 
  rect (206, 184+td*2, 9/sm, legh/sm);
  if (footy < 248) {
    footy = footy + 2;
  } else if (x < 260) {
    legs = true;
  } else { 
    legs = false; 
    walkDone = true;
  }
  ellipse (184+td*2, footy-td*8, 20/sm, 20/sm);
  ellipse (210, footy-td*8, 20/sm, 20/sm);
  if (walkDone && sm<3.1) {
    sm = sm + 0.040; 
    td = td + 0.13;
  }
 else if (walkDone) {
    fade = fade + 13;
  }
}
int total = 10;
int value, evens, odds, bigger, avRound;
String average = "Average of numbers, rounded";
String smallest = "Smallest number in array";
String largest = "Largest number in array";
String even = "Number of even integers";
String odd = "Number of odd integers";
String big = "Array numbers larger than int";
int x = 200; int y = 10;
float accum;
int[] num = new int[total];
PFont f;
void setup () {
  size (740,360);
  background(255);
  f = loadFont("Helvetica-Bold-12.vlw");
  for (int i = 0; i < total; i++) {
    value = int (random(1, 50));
    num[i] = value;
    accum = accum + num[i];
  }
  num = sort(num);
  println ("Average of numbers in array = " + accum/total);
  avRound = round(accum/total);
  Dot (avRound, average);
  println ("Smallest number in array = " + num[0]);
  Dot (num[0], smallest);
  println ("Largest number in array = " + num[total-1]);
  Dot (num[total-1], largest);
  biggerThan (num, 10);
   for (int i = 0; i < total; i++) {
     while (num[i] > 2) {
       num[i] = num[i] - 2;
     }
     if (num[i] == 1) {
       odds = odds+1;
     }
     else if (num[i] == 2) {
       evens = evens + 1;
     }
   }
   println ("number of evens = " + evens);
   Dot (evens, even);
   println ("number of odds = " + odds);
   Dot (odds, odd);
   println ("Numbers in array larger than passed int value = " + bigger);
   Dot (bigger, big);
   
}

void biggerThan (int [] testArr, int testInt) {
  for (int i = 0; i < testArr.length; i++) {
    if (testArr[i] > testInt) {
      bigger = bigger + 1;
    }
  }
}

void Dot (int digit, String words) {
  fill(random(0,255),random(0,255),random(0,255));
  text (words, 10, y+5);
  if (digit > 35) {
    while (digit > 0) {
    ellipse (x-2, y, 6, 6);
    x = x + 11;
    digit = digit - 1;
  }
  } else {
  while (digit > 0) {
    ellipse (x, y, 10, 10);
    x = x + 15;
    digit = digit - 1;
  }
  }
  x = 200;
  y = y + 25;
}
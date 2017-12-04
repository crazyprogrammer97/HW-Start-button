float a;
float b;
float dx = 1;
float dy = 1;

float accx = 0.5;
float accy = 0.8;
float xb;
float yb;

float x;
float y;

float pct = 0.05;
int e = 400;
int r =400;
int rad=100;
boolean isClicked=false ;
void setup() {

  size(800, 800);
}
void draw() {

  background(0);
  if (isClicked==false) {
    fill(255);
        rect (e-50, r-50, rad, rad);
  fill(#ED0E0E);
  text("Start",367,407);
  textSize(30);
  } else {
   xb = mouseX;
  yb = mouseY;
  
  x = x + (xb-x)*pct;
  y = y + (yb-y)*pct;
  
  if(isClicked=true){
      background(255);
pushMatrix();
 translate(x-240,y-240);
  background(#0041FF);

  fill(#EA001B);
  noStroke();
  fill(#939393);
  strokeWeight(5);
  stroke(#000000);
  rect(164,147,65,32);//gözün dışı için
  noStroke();
  fill(#000000);
  ellipse(198,163,26,26);//sol göz için
  rect(228,148,16,13);
  strokeWeight(5);
  stroke(#000000);
  strokeWeight(5);
  fill(#8d7a6f);
  ellipse(182,263,28,28);//el bolgesindeki daire
  ellipse(292,263,28,28);//el bolgesindeki daire
  fill(#939393);
  rect(244,147,65,32);//sağdaki göz ün kutusu
  fill(#000000);
  noStroke();
  ellipse(275,163,26,26);//sağdaki göz
  stroke(000000);
  fill(#F5DB72);
  rect(228,161,15,56);  
  rect(216,217,40,13);
  fill(#939393);
  rect(181,235,113,33);//üst gövde
  fill(#F5DB72);
  rect(181,265,113,78);//alt gövde
  fill(#E0CDB7);
  rect(181,250,21,12);//el
  rect(181,264,21,12);//el
  rect(272,250,21,12);
  rect(272,264,21,12);
  fill(#8d7a6f);
  //ayaktaki tekerlekler=
  rect(144,285,37,29);
  rect(144,313,37,29);
  rect(144,341,37,29);
  rect(294,283,37,29);
  rect(294,313,37,29);
  rect(294,341,37,29);

  popMatrix();
  }
  

  a = a+accx*dx;
  b = b +accy*dy;

  if (a > width || a < 0)
  {
    accx = random(0.1,5);
    dx = dx*-1;
  }

  if ( b> height || b < 0) {
    accy = random(0.1,5);
    dy = dy*-1;
  }


  fill(0);
  noStroke();
  ellipse(a, b, 30, 30);
}
  }





void mouseClicked() {
  float d = dist(mouseX, mouseY, e, r);
  if ( d<rad/2 ) {
    isClicked=true;
  } else {
    isClicked=false;
  }
}
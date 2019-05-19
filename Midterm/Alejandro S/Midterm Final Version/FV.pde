// Alejandro Suquisupa

PFont f;  
int imageIndex = 0;
boolean button = true;
int x = 440;
int y = 30;
int w = 50;
int h = 30;
int x1 = 440;
int y1 = 180;
int w1 = 50;
int h1 = 30;
int x2 = 440;
int y2 = 370;
int w2 = 50;
int h2 = 30;
int x3 = 440;
int y3= 260;
int w3 = 50;
int h3 = 30;
int state = 0;

PImage[] images = new PImage[22];
void setup() {
  size(500,500);
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage(i + ".jpg");
    f = createFont("Arial", 12);
  }
}

void draw() {
  
 if (state == 0) {
   scene0();
   delay(20);
 } else if (state == 1) {
   scene1();
   delay(20);
 } else if (state == 2) {
   scene2();
   delay(20);
 } else if (state == 3) {
   scene3();
   delay(20);
 } else if (state == 4) {
   scene4();
   delay(20);
 } else if (state == 5) {
   scene5();
   delay(20);
 } else if (state == 6) {
   scene6();
   delay(20);
 } else if (state == 7) {
   scene7();
   delay(20);
 } else if (state == 8) {
   scene8();
   delay(20);
 } else if (state == 9) {
   scene9();
   delay(20);
 } else if (state == 10) {
   //scene10();
   delay(20);
 } else if (state == 11) {
   scene11();
   delay(20);
 } else if (state == 12) {
   scene12();
   delay(20);
 } else if (state == 13) {
   scene13();
   delay(20);
 } else if (state == 14) {
   scene14();
   delay(20);
 } else if (state == 15) {
   scene15();
   delay(20);
 }
 if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
   button = true;
   delay(20);
 }
 if (mouseX > x1 && mouseX < x1+w1 && mouseY > y1 && mouseY < y1+h1 && mousePressed) {
   button = true;
   delay(20);
 }
 if (mouseX > x2 && mouseX < x2+w2 && mouseY > y2 && mouseY < y2+h2 && mousePressed) {
   button = true;
   delay(20);
 }
 if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+h3 && mousePressed) {
   button = true;
   delay(20);
 }
 delay(20);
 fill(50);
 noStroke();
 rect(x,y,w,h,1);
 println(state);
}

void scene0() {
  image(images[0], 0, 0, width, height);
  textFont(f, 12);
  fill(255);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("AI is created", width/2, height/2);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 0) {
    state = 1;
    delay(20);
   }
}

void scene1() {
  image(images[1], 0, 0, width, height/3);
  textFont(f, 12);
  fill(255);
  textSize(25);
  textAlign(CENTER, TOP);
  text("AI's are our slaves", width/2, 75);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 1) {
    state = 2;
    delay(20);
  }
   image(images[2], 0, 167, width, height/3);
   textFont(f,12);
   fill(255);
   textSize(25);
   textAlign(CENTER, CENTER);
   text("AI's work with us", width/2, 250);
   fill(50);
   rect(x1,y1,w1,h1,1); 
   if (mouseX > x1 && mouseX < x1+w1 && mouseY > y1 && mouseY < y1+h1 && mousePressed && state == 1) {
     state = 3;
     delay(20);
   }
    image(images[3], 0, 333, width, height/3);
    textFont(f,12);
    fill(255);
    textSize(25);
    textAlign(CENTER, BOTTOM);
    text("AI's do work manual labor jobs", width/2, 450);
    fill(50);
    rect(x2,y2,w2,h2,1);
    if (mouseX > x2 && mouseX < x2+w2 && mouseY > y2 && mouseY < y2+h2 && mousePressed && state == 1) {
      state = 4;
      delay(20);
  }
}
void scene2() {
  image(images[4],0,0,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, TOP);
  text("AI's are becoming angry", width/2, 125);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 2) {
    state = 5;
    delay(20);
  }
  image(images[5], 0, 250,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, BOTTOM);
  text("AI's begin to develop emotions", width/2, 375);
  fill(50);
  rect(x3,y3,w3,h2,1);
  if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+h3 && mousePressed && state == 2) {
    state = 6;
    delay(20);
  }
}
  
void scene3() {
  image(images[6], 0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER,CENTER);
  text("AI's are having better ideas than human", width/2,height/2);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 3) {
    state = 7;
    delay(20);
  }
}

void scene4() {
  image(images[7], 0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Humans become angry from AI's taking their jobs", width/2, height/2);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 4) {
    state = 8;
    delay(20);
  }
}

void scene5() {
  image(images[8], 0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("AI's begin to rebel", width/2,height/2);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 5) {
    state = 9;
    delay(20);
  }
}

void scene6() {
  image(images[9], 0,0,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, TOP);
  text("Children help AI", width/2, 125);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 6) {
    state = 10;
    delay(20);
  }
  image(images[10],0,250,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, BOTTOM);
  text("Humans are abusing AI's", width/2, 375);
  fill(50);
  rect(x3,y3,w3,h3,1);
  if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+h3 && mousePressed && state == 6) {
    state = 11;
    delay(20);
  }
}

void scene7() {
  image(images[11],0,0,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, TOP);
  text("Humans are belittling AI's now", width/2,125);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 7) {
    state = 12;
    delay(20);
  }
  image(images[12],0,250,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, BOTTOM);
  text("Humans are taking out AI's",width/2,375);
  fill(50);
  rect(x3,y3,w3,h3,1);
  if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+h3 && mousePressed && state == 7) {
    state = 13;
    delay(20);
  }
}

void scene8() {
  image(images[13],0,0,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, TOP);
  text("Humans are making an angry protest",width/2, 125);
   if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed && state == 8) {
     state = 14;
     delay(20);
   }
   image(images[14],0,250,width,height/2);
   textFont(f,12);
   fill(255);
   textSize(25);
   textAlign(CENTER, BOTTOM);
   text("Humans start to take them out",width/2,375);
   fill(50);
   rect(x3,y3,w3,h3,1);
    if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+h3 && mousePressed && state == 8) {
      state = 15;
      delay(20);
   }
}
void scene9() {
  image(images[15],0,0,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, TOP);
  text("AI's escape from the law",width/2,125);

  image(images[16],0,250,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, BOTTOM);
  text("AI's fight and takeover human",width/2, 375);
}
void scene10() {
  image(images[17],0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("They escape",width/2,height/2);
}
void scene11() {
  image(images[16],0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER,CENTER);
  text("They fight the humans",width/2,height/2);
}
void scene12() {
  image(images[15],0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER,CENTER);
  text("AI's escape",width/2,height/2);
}

void scene13() {
  image(images[18],0,0,width,height);
  textFont(f,12);
  textSize(25);
  fill(255);
  textAlign(CENTER,CENTER);
  text("They create more AI's, and fight back",width/2,height/2);
}

void scene14() {
  image(images[19],0,0,width,height);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER,CENTER);
  text("AI's try to explain themselves",width/2,height/2);
}

void scene15() {
  image(images[20],0,0,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER,TOP);
  text("AI's fight back",width/2,125);
  
  image(images[21],0,250,width,height/2);
  textFont(f,12);
  fill(255);
  textSize(25);
  textAlign(CENTER,BOTTOM);
  text("AI's make a peaceful protest",width/2,375);
}

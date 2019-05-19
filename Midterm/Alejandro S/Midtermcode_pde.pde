// Alejandro Suquisupa

PFont f;  
PImage img;
int imageIndex = 1;

void setup() {
  size(500, 500);

  img = loadImage("0.jpg");
  f = createFont("Ariel", 40);
}

void draw() {
  image(img, 0, 0);
  image(img, 0, 0, width, height);

  fill(255); 
  textSize(50);
  textAlign(CENTER, CENTER);
  text("AI is created", width/2, height/2);
}

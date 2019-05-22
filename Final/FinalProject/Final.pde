import processing.serial.*; //import the Serial library
 Serial myPort;  //the Serial port object
 String val;
 boolean firstContact = false;

PImage[] image = new PImage[3];
String s = "Click on a Picture!" + " It would play a song!";

void setup(){
  background(0);
  size(1000,600);
  for (int i = 0; i < image.length; i++){
   image[i] = loadImage("image"+i+".png");
  }
  image[0] = loadImage("image0.png");
  image[1] = loadImage("image1.png");
  //image[2] = loadImage("image2.png");
  //image[3] = loadImage("image3.png");
  frameRate(60);
  
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n'); 
}

void draw(){  
//  //Selection();
//  //fill(255, 0, 0);
//  textSize(32);
//  fill(255, 0, 0);
//  text('C', 140, 450);
  
//  //textSize(32);
//  //fill(255, 0, 0);
//  //text('C', 840, 450);
  
  textSize(32);
  fill(59, 255, 5);
  text('D', 240, 450);
  
//  textSize(32);
//  fill(135, 142, 25);
//  text('E', 340, 450);
  
//  textSize(32);
//  fill(255, 0, 0);
//  text('F', 440, 450);
  
//  //textSize(32);
//  //fill(59, 255, 5);
//  //text('G', 540, 450);
  
//  //textSize(32);
//  //fill(135, 142, 25);
//  //text('A', 640, 450);
  
textSize(25);
fill(255,255,255);
text(s, 441, 558);
  
//  //image(img, mouseX - 75, mouseY - 20);
  
//println(mouseX, mouseY);
image(image[0], 90, 300, 250, height/2);
image(image[1], 650, 200, 500, 200);
//image(image[2],300, 300, width/3, height/3);
//image(image[3], width/2, height/2, 0, 0);
//image(img1, 600, 700, width/2, height/2);

}
void selection(){
  
}


void serialEvent(Serial myPort) {
//put the incoming data into a String - 
//the '\n' is our end delimiter indicating the end of a complete packet
val = myPort.readStringUntil('\n');
//make sure our data isn't empty before continuing
if (val != null) {
  //trim whitespace and formatting characters (like carriage return)
  val = trim(val);
  println(val);

  //look for our 'A' string to start the handshake
  //if it's there, clear the buffer, and send a request for data
  if (firstContact == false) {
    if (val.equals("A")) {
      myPort.clear();
      firstContact = true;
      myPort.write("A");
      println("contact");
    }
  }
   else{ //if we've already established contact, keep getting and parsing data
    println(val);

    if (mousePressed && mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('C');        //send a 1
      println("C");
    }
    
    if (mousePressed && mouseX > 700 && mouseX < 800 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('B');        //send a 1
      println("B");
    }
    
    if (mousePressed && mouseX > 700 && mouseX < 300 && mouseY > 500 && mouseY < 300) 
    {                           //if we clicked in the window
      myPort.write('F');        //send a 1
      println("F");
    }
    
    // when you've parsed the data you have, ask for more:
    myPort.write("A");
    }
  }
}

//void image(x,y){
// this.x = x;
// this.y = y;
//}

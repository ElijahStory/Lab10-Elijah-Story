import processing.serial.*;

Serial myPort;
int x;

void setup(){
  size(800,400);
  myPort = new Serial(this,"COM5",9600);
}

void draw(){
  background(0);
  fill(255);
  ellipse(x, height/2, 20, 20);
}

void serialEvent(Serial myPort){
  x = myPort.read(); 
}

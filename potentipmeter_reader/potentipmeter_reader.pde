import processing.serial.*;

Serial myPort;
int x;

void setup(){
  size(800,400);
  println(Serial.list());
  myPort = new Serial(this,"",9600);
}

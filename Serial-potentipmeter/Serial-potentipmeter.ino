//Elijah Story
//12-2-2020
//NMD211 lab10

//This code is basically a copy of what was in the video.
//It show how we can write to the serial monitor/port.

int input = A0;                       //analog pin input

void setup() {
  Serial.begin(9600);                 //start the serial port
  pinMode(input, INPUT);              //make the analog pin an input
}

void loop() {
  int sensor = analogRead(input);     //read the input from the potentiometer 
  Serial.write(sensor/4);             //write the input to the Serial port
  delay(10);                          //delay to help with to much data
}

//Elijah Story
//12-2-2020
//NMD211 Lab10

//This code is basically a copy of what was in the video.
//This shows how you ask for and take input from the serial port and use that info in processing

import processing.serial.*;                //import the Serial library

Serial myPort;                             //make the variable that will hold Serial instance
float x;                                   //x position of the ball on screen

void setup(){
  size(800,400);
  myPort = new Serial(this,"COM5",9600);   //makes the Serial instance
}

void draw(){
  background(0);
  fill(255);
  ellipse(x, height/2, 20, 20);            //draws the ball based on the x position
}

void serialEvent(Serial myPort){           //handles the Serial port event
  float input = myPort.read();             //updates the x position based on the info from port
  println(input);
  x = map(input, 0, 255, 0, width);        //changes the input value based on the diffrent ranges
  myPort.write(0);                         //tells the ardunio that it is ready for new input
}

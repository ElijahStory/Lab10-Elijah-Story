//Elijah Story
//12-2-2020
//NMD211 Lab10

//This code is basically a copy of what was in the video.
//This shows how you can take input from the serial port and use that info in processing

import processing.serial.*;                //import the Serial library

Serial myPort;                             //make the variable that will hold Serial instance
int x;                                     //x position of the ball on screen

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
  x = myPort.read();                       //updates the x position based on the info from port
}

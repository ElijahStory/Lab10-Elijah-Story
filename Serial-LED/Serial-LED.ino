//Elijah Story
//12-2-2020
//NMD211 Lab 10

//This code is basically a copy of what was in the video.
//I did not add the part the changes the LED brightness.
//It shows how an input from the Serial monitor can change an LED with the arduino.

int ledPin = 10;                    //The pin the LED will get power from

void setup() {
  Serial.begin(9600);               //setup the serial port
  pinMode(ledPin, OUTPUT);          //set the LED pin to OUTPUT
}

void loop() {
  if(Serial.available() > 0){       //check if there is anything new to read from Serial port
    char input = Serial.read();     //read from serial port
    if(input == 'h'){               //if is an "h" turn the LED on
      digitalWrite(ledPin, HIGH);
    }else if(input == 'l'){         //if is an "l" turn the LED off
      digitalWrite(ledPin, LOW);
    }
  }
}

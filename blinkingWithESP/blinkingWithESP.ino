int ledPin = 13; //GPIO 13 corresponds to pin D7. You can check the pinout.

void setup(){

  // initialize ledPin as an output.

  pinMode(ledPin, OUTPUT);

}

// the loop function runs over and over again forever

void loop(){

  digitalWrite(ledPin, HIGH);   // turn the LED on (HIGH is the voltage level)

  delay(1000);              // wait for a second

  digitalWrite(ledPin, LOW);    // turn the LED off by making the voltage LOW

  delay(1000);              // wait for a second

} 

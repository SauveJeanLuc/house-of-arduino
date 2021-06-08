void setup() {
  // put your setup code here, to run once:
    pinMode(4, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
   digitalWrite(4, HIGH); // turn the LED on (HIGH is the voltage level)
   delay(1000); // wait for a second
   digitalWrite(4, LOW); // turn the LED off by making the voltage LOW
   delay(1000); // wait for a second
}

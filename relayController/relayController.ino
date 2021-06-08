int inPin = 2; // digital output
bool isPinHigh = true; // track if pin is high or low
void setup(){
    pinMode(inPin, OUTPUT);
    Serial.begin(9600);
}
void loop(){
    digitalWrite(inPin, isPinHigh ? LOW : HIGH);
    delay(1000);
    isPinHigh = !isPinHigh;
}

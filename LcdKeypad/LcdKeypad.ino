#include <Keypad.h>
#include <LiquidCrystal.h>
const byte numRows = 4;
const byte numCols = 4;
char keyMap[numRows][numCols]={
         {'1', '2', '3', 'A'},
         {'4', '5', '6', 'B'},
         {'7', '8', '9', 'C'},
         {'*', '0', '#', 'D'}
};
byte rowPins[numRows] = {9,8,7,6};
byte colPins[numCols]= {5,4,3,2};
Keypad keyPad = Keypad(makeKeymap(keyMap), rowPins, colPins, numRows, numCols);
LiquidCrystal lcd(A0, A1, A2, A3, A4, A5);
void setup() {
        lcd.begin(16, 2);
        lcd.clear();
        lcd.setCursor(0, 0);
        lcd.print("Enter Password:");
}
void loop(){
  lcd.setCursor(0, 1);
//  int password = readFromKeypad().toInt();
  String password = readFromKeypad();
//  password = readFromKeypad();
  if(password=="159*0DA"){
    lcd.print("Correct");
  }
  else {
    lcd.print("Incorrect");
  }
}
String readFromKeypad(){
        String myString = "";
        char keyPressed = keyPad.getKey();
        while (keyPressed != '#'){
                keyPressed = keyPad.getKey();
                if ((keyPressed != NO_KEY) && (keyPressed != '#')) {
                        myString.concat(keyPressed);
                        Serial.print(myString);
                 }
          }
          return(myString);
}

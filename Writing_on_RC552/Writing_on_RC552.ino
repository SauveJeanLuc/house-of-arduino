#include <SPI.h>

#include <MFRC522.h>

#define RST_PIN  9

#define SS_PIN  10  

MFRC522 mfrc522(SS_PIN, RST_PIN);

MFRC522::MIFARE_Key key;

MFRC522::StatusCode card_status;



void setup(){

  Serial.begin(9600);        

  SPI.begin();

  mfrc522.PCD_Init();

  Serial.println(F("WRITING DATA ON RC522 CARD"));

  Serial.println("");

}





void loop(){

  for(byte i = 0; i < 6; i++){ 

    key.keyByte[i] = 0xFF;

  }



  if(!mfrc522.PICC_IsNewCardPresent()){
    return;
    Serial.println("Reached here 1");
  }

  Serial.println("Reached here 2");

  if (!mfrc522.PICC_ReadCardSerial()){

    return;

  }

  

  byte buffr[34];

  byte block = 4;

  byte len;

  

  Serial.setTimeout(20000L);

  Serial.println("Reached here 3");

  /*

   * Read data from serial

   */

  Serial.println(F("Enter data, ending with #"));

  len = Serial.readBytesUntil('#', (char *) buffr, 30) ;



  for(byte i = len; i < 30; i++){

    buffr[i] = ' ';     //We have to pad array items with spaces.

  }

  Serial.println("Reached here 4");

  writeBytesToBlock(block, buffr);  

  Serial.println(" ");

  mfrc522.PICC_HaltA();

  mfrc522.PCD_StopCrypto1();

}





void writeBytesToBlock(byte block, byte buff[]){

  card_status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, block, &key, &(mfrc522.uid));

  

  if(card_status != MFRC522::STATUS_OK) {

    Serial.print(F("PCD_Authenticate() failed: "));

    Serial.println(mfrc522.GetStatusCodeName(card_status));

    return;

  }

  

  else{

    Serial.println(F("PCD_Authenticate() success: "));

  }

  // Write block

  card_status = mfrc522.MIFARE_Write(block, buff, 16);

  

  if (card_status != MFRC522::STATUS_OK) {

    Serial.print(F("MIFARE_Write() failed: "));

    Serial.println(mfrc522.GetStatusCodeName(card_status));

    return;

  }

  else{

    Serial.println(F("Data saved."));

  }

} 

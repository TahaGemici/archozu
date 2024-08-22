#include <Wire.h>

char tmp1, tmp2;
void setup()
{
  Serial.begin(9600);
  Wire.begin(123);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}


void loop()
{
  delay(100);
  if(Serial.available()>1){
    tmp1 = Serial.read();
    tmp2 = Serial.read();
  }
}

short flipShort(short in){
  short tmp=0;
  for(int i = 0; i < 16; i++){
    tmp <<= 1;
    tmp |= in & 1;
    in >>= 1;
  }
  return tmp;
}

void receiveEvent(int howMany)
{
  //arr = flipShort(Wire.read());
  while(Wire.available()) {
    Serial.println("Got data!");
    tmp1 = Wire.read();
    Serial.println(tmp1);
  }
}

void requestEvent()
{
  Wire.write(tmp1);
  Wire.write(tmp2);
}
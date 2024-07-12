#include <Wire.h>

char arr;
void setup()
{
  pinMode(13, OUTPUT); 
  pinMode(12, OUTPUT); 
  Wire.begin(123);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}


void loop()
{
  digitalWrite(13,HIGH);
  digitalWrite(12,LOW);
  delay(100);
}

void receiveEvent(int howMany)
{
  arr = Wire.read();
}
void requestEvent()
{
  Wire.write(arr);
}
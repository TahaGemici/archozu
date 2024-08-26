#include <Wire.h>

char received=0, requested=0;
char tmp=0;
void setup()
{
  Serial.begin(9600);
  Wire.begin(123);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}


void loop()
{
  if(received){
    received = 0;
    Serial.print("received: ");
    Serial.println(tmp);
  }
  if(requested){
    requested = 0;
    Serial.print("requested: ");
    Serial.println(tmp);
  }
}

void receiveEvent(int howMany)
{
  while (Wire.available()) {
    tmp = Wire.read();
  }
  received = 1;
}

void requestEvent()
{
  Wire.write(tmp);
  requested = 1;
}
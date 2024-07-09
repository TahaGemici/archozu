#include <Wire.h>

char arr;
void setup()
{
  Wire.begin(123);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}


void loop()
{
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
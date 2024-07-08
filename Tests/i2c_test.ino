#include <Wire.h>

short abc;
void setup()
{
  Wire.begin(123);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}


void loop()
{
  delay(10);
}

void receiveEvent(int howMany)
{
  if(Wire.available())
  {
    abc = Wire.read();
  }
  if(Wire.available())
  {
    abc <<= Wire.read();
  }

}
void requestEvent()
{
  char arr[2];
  arr[0] = abc;
  arr[1] = abc>>8;
  Wire.write(arr, 2);
}
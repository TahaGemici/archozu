#include <Wire.h>

char tmp_arr[2];
void setup()
{
  Wire.begin(123);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
}


void loop()
{
}

void receiveEvent(int howMany)
{
  tmp_arr[0] = Wire.read();
  tmp_arr[1] = Wire.read();
}

void requestEvent()
{
  Wire.write(tmp_arr,2);
}
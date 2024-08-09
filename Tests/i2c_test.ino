#include <Wire.h>

short arr;
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
  arr = flipShort(Wire.read());
}
void requestEvent()
{
  Wire.write(arr);
}
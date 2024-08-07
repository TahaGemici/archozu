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

char flipByte(char in){
  char tmp=0;
  for(int i = 0; i < 8; i++){
    tmp <<= 1;
    tmp |= in & 1;
    in >>= 1;
  }
  return tmp;
}

void receiveEvent(int howMany)
{
  arr = flipByte(Wire.read());
}
void requestEvent()
{
  Wire.write(arr);
}
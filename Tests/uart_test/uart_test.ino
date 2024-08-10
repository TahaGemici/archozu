void setup() {
  Serial.begin(9600);    // Initialize the Serial monitor for debugging
}

char inputChar=15;

void loop() {
    Serial.write(inputChar);
    delay(1000);
    /*
    if (Serial.available() > 0) {
      inputChar = Serial.read()^255;
    }*/
}
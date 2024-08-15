void setup() {
  Serial.begin(300000);    // Initialize the Serial monitor for debugging
}

void loop() {    
    if (Serial.available() > 0) {
      char inputChar = Serial.read();
      Serial.write(inputChar);
    }
    delay(10);
}
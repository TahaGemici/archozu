void setup() {
  Serial.begin(9600);    // Initialize the Serial monitor for debugging
}

void loop() {
  if (Serial.available() > 0) {
    char inputChar = Serial.read()^255;
    Serial.write(inputChar);
  }
}
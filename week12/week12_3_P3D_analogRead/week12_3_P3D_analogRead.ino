//week12_3_P3D_analogRead
void setup() {
  Serial.begin(9600);
}

void loop() {
  int xVal = analogRead(A0);
  int yVal = analogRead(A1);
  Serial.print(xVal);
  Serial.print(",");
  Serial.println(yVal);
  delay(20);
}

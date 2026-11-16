//week11_3_anduino_joystick_serial_map_0_255
//將要跟Processing互溝通
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP); //在加這行
}

int myAnalogRead(int pin){
  //利用map函式
  return map(analogRead(pin), 0, 1023, 0, 255);
}

void loop() {
  delay(30); //要在慢一點
  Serial.write( myAnalogRead(A0));
  Serial.write( myAnalogRead(A1));
  if(digitalRead(2)==LOW) Serial.print("D"); //Down
  else Serial.print("U"); //UP沒按
}

//week11_2_anduino_joystick_serial_println
//這個會占用Arduino右上角
void setup() {
  Serial.begin(9600);
}

void loop() {
  int x= analogRead(A0); //讀入X座標
  int y= analogRead(A1); //讀入Y座標
  int sw= digitalRead(2); //joystick壓紐
  if(digitalRead(2)==LOW) sw=1; //按下去，投1
  else sw=0; //彈起來，設0
  char line[200];
  sprintf(line, "x:%d y:%d sw:%d\n", x, y, sw);
  Serial.print(line); //改用print(),不要println()
}

//week11_1_anduino_joystick_analogRead_A0_A1_tone
//要把stick的A0,A1接起來，讀資料
void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:
  int x= analogRead(A0); //讀入X座標
  int y= analogRead(A1); //讀入Y座標
  tone(8,x); //會把x的值，直接很吵的輸出
}

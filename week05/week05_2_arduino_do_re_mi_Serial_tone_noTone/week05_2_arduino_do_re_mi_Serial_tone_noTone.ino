//week05_2_arduino_do_re_mi_Serial_tone_noTone
//修改自week05_1_arduino_do_re_mi_Serial
//我想要把Arduino跟Processing結合
//在Processing 按下key1 2 3 對應 Arduino的 Do Re Mi 使用USB Serial
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); //USB Serial 開始傳輸，速度9600bps
  tone(8, 523,100);delay(200); //Do
  tone(8, 587,100);delay(200); //Re
  tone(8, 659,100);delay(200); //Mi
  tone(8, 587,100);delay(200); //Re
  tone(8, 523,100);delay(200); //Do
}
char c = '0'; //在外面宣告變數 0:不要發聲音 1:Do 2:Re 3:Mi
void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available()){ //如果USB Serial 有收到資料
    c = Serial.read(); //就讀進來
  }
  if(c=='0') noTone(8); //不要發聲音
  if(c=='1') tone(8, 523); //DO 一直發聲音(不要限定100ms)
  if(c=='2') tone(8, 587); //RE 一直發聲音
  if(c=='3') tone(8, 659); //Mi 一直發聲音
}

//week05_1_arduino_do_re_mi_Serial
//我想要把Arduino跟Processing結合
//在Processing 按下key1 2 3 對應 Arduino的 Do Re Mi 使用USB Serial
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); //USB Serial 開始傳輸，速度9600bps
  tone(8, 523,100);
  delay(200);

  tone(8, 587,100);
  delay(200);

  tone(8, 659,100);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available()){ //如果USB Serial 有收到資料
    char c = Serial.read(); //就讀進來
    if(c=='1') tone(8, 523,100); //DO 0.1秒
    if(c=='2') tone(8, 587,100); //RE 0.1秒
    if(c=='3') tone(8, 659,100); //Mi 0.1秒
  }
   
}

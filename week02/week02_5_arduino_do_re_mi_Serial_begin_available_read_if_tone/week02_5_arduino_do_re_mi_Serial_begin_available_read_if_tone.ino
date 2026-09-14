//week02_5_arduino_do_re_mi_Serial_begin_available_read_if_tone
//我想要把Arduino跟Processing結合
//在Processing 按下key1 2 3 對應 Arduino的 Do Re Mi 使用USB Serial
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); //USB Serial 開始傳輸，速度9600bps
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available()){ //如果USB Serial 有收到資料
    char c = Serial.read(); //就讀進來
    if(c=='1') tone(8, 523,1000); //DO 1秒
    if(c=='2') tone(8, 587,1000); //RE 1秒
    if(c=='3') tone(8, 659,1000); //Mi 1秒
  }
   
}

//week06_1_arduino_pin_2_button_INPUT_PULLUP
void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT_PULLUP); //預設pin 2是Button
  pinMode(8, OUTPUT); //預設pin 8是Buzzer 喇叭
  tone(8, 523, 100); //開取時，發出聲音代表程式沒錯
}

void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2) == LOW){
    tone(8, 523, 100); //0.1秒
    delay(100); //等一下
    }
}

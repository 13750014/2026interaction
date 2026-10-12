//week06_4_processing_rotate_serial_myPort_available_read
//修改自week06_3_processing_rotate_translate_rotate_rect
import processing.serial.*;
Serial myPort;
void setup(){
  size(500, 500);
  myPort = new Serial(this, "COM4", 9600); //中間"COM4"or"COM3"自己查
}
int now = 0; //現在的旋轉角度
int dd = 1; //now++ now-- 用 now+=dd 其中 dd是1 or -1
void draw (){
  if(myPort.available() > 0){ //如有資料要讀
  if(myPort.read() == '1') dd = -1; //讀入資料是字母'1'
  else dd = 1;
  }
  background(0); //黑色背景
  translate(250, 250); //往右移、往下移(暫時註解掉。要做實驗)
  now += dd;
  rotate( radians(now)); //持續轉動
  rect(-200, -200, 400, 400); //座標奇怪的四邊形
} 
void mousePressed(){ //先暫時用mouse點擊，來修改dd轉動改變量
  if(dd == 1) dd = -1; //正的，變負的
  else dd = 1; //負的，變正的
}

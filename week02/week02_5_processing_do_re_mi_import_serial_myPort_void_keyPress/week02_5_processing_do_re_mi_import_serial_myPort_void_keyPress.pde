//week02_5_processing_do_re_mi_import_serial_myPort_void_keyPressed_write
//我想要把Arduino跟Processing結合
//在Processing 按下key1 2 3 對應 Arduino的 Do Re Mi 使用USB Serial
import processing.serial.*;
Serial myPort;
void setup(){
  size(300, 200);
  myPort = new Serial(this, "COM3", 9600); //中間"COM4"or"COM3"自己查
}
void draw(){

}
void keyPressed(){
  if(key=='1') myPort.write('1'); //DO 1秒
  if(key=='2') myPort.write('2'); //RE 1秒
  if(key=='3') myPort.write('3'); //Mi 1秒
}

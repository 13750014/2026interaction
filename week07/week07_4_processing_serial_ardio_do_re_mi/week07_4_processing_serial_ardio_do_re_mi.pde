//week07_4_processing_serial_ardio_do_re_mi
//修改自week07_3_processing_audio_do_re_mi
//修改自week05_3_processing_do_re_mi_serial_draw
import processing.serial.*;
Serial myPort;
import processing.sound.*;
SoundFile Do, Re, Mi;
void setup(){
  size(300, 200);
  myPort = new Serial(this, "COM3", 9600); //中間"COM4"or"COM3"自己查
  Do = new SoundFile(this, "do.wav");
  Re = new SoundFile(this, "re.wav");
  Mi = new SoundFile(this, "mi.wav");
}
void draw(){
  rect(0, 0, 100, 200);
  rect(100, 0, 100, 200);
  rect(200, 0, 100, 200);
}
void mousePressed(){
  if(mouseX<100){
    Do.play();
    myPort.write('1');
  }
  else if(mouseX<200){
    Re.play();
    myPort.write('2');
  }
  else if(mouseX<300){
    Mi.play();
    myPort.write('3');
  }
}
void mouseReleased(){
  myPort.write('0');
}

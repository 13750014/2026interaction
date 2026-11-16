//week11_3_processing_joystick_serial_available_3_myPort_read
import processing.serial.*; //使用USB
Serial myPort;
void setup(){
  size(512, 512);
  myPort= new Serial(this, "COM5", 9600);
}
int x=0, y=0, sw=0;
void draw(){
  background(255);
  if(myPort.available()>=3){
    //亂碼、亂碼、U/D
    x= (int) myPort.read();
    y= (int) myPort.read();
    sw= (int) myPort.read();
    //myPort.read();
  }
  ellipse(x+128, y+128, 8, 8);
}

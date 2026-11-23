//week12_2_P3D_Serial_trim_map_abs
import processing.serial.*; 
Serial port;
float angleX = 0;
float angleY = 0;
float speedX = 0;
float speedY = 0;

void setup(){
  size(600, 600, P3D);
  printArray(Serial.list());
  port = new Serial(this, "COM4", 9600);
  port.bufferUntil('\n');
}
void draw(){
  background(30);
  lights();
  angleX -= speedX;
  angleY += speedY;
  pushMatrix();
  translate(width/2.0, height/2.0, 0);
  rotateX(angleX);
  rotateY(angleY);
  fill(100, 200, 255);
  stroke(255);
  box(180);
  popMatrix();
}
void serialEvent(Serial p){
  String data = trim(p.readStringUntil('\n'));
  if(data != null){
    String[] vals = split(data, ',');
    if(vals.length == 2){
    float rawX = map(float(vals[0]), 0, 1023, -0.05, 0.05);
    float rawY = map(float(vals[1]), 0, 1023, -0.05, 0.05);
    
    speedX = (abs(rawX) > 0.005) ? rawX:0;
    speedY = (abs(rawY) > 0.005) ? rawY:0;
    }
  }
}

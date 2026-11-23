//week12_1_P3D_pushMartrix_rotate_noStroke_popMartrix
float angleX = 0;
float angleY = 0;

void setup(){
  size(600, 600, P3D);
}
void draw(){
  background(30);
  lights();
  pushMatrix();
  translate(width/2.0, height/2.0, 0);
  rotateX(angleX);
  rotateY(angleY);
  fill(100, 180, 255);
  noStroke();
  box(180);
  popMatrix();
  
  angleX += 0.01;
  angleY += 0.015;
}
  
  

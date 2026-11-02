//week09_5_processing_2048_array
//修改自week09_4_processing_2048_again
void setup(){
  size(550, 550);
}
int[][] a = {{0, 2, 0, 0}, {0, 0, 0, 0}, {0, 2, 2, 2}, {4, 4, 4, 4}};
void draw(){
  background(250, 248, 239);
  noStroke();
  fill(187, 173, 160);
  rect(40,40,450,450,9);
  for(int i=0;i<4; i++){
    for(int j=0; j<4; j++){
      int x=50+j*(100+10);
      int y=50+i*(100+10);
      fill(tileColor(a[i][j]));
      rect(x, y, 100, 100, 6);
    }
  }
}
int tileColor(int n) {
  switch(n) {
    case 0:return color(205,193,180);
    case 2:return color(238,228,218);
    case 4:return color(237,224,200);
    case 8:return color(242,177,121);
    case 16:return color(245,149,99);
    case 32:return color(246,124,95);
    case 64:return color(246,94,59);
    case 128:return color(237,207,114);
    case 256:return color(237,204,97);
    case 512:return color(237,200,80);
    case 1024:return color(237,197,63);
    default:return color(237,194,46);
  }
}

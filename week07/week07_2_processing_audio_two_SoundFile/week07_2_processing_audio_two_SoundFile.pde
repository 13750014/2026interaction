//week07_2_processing_audio_two_SoundFile
//修改自week07_1_processing_audio_SoundFile_play
import processing.sound.*;
SoundFile sound;
SoundFile sound2;
void setup(){
  size(300, 300);
  sound = new SoundFile(this, "music.mp3");
    sound = new SoundFile(this, "mi.wav");
  sound.play();
}
void draw(){

}
void mousePressed(){
  sound2.play();
}

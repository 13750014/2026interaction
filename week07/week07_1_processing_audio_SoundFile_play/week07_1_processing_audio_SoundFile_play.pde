//week07_1_processing_audio_SoundFile_play
//想要在電腦，用程式控制聲音/音樂的輸入
//方法一：Processing的Sound外掛，方法二：Minim的外掛
//Sketch - Library - Manage Libraries
//或著用google:processing sound library 
//把「有3個資料夾」的sound放在「文件-Processing-Libraries」目錄裡
//成功後, 便可在 File-Examples-Libraries核心函式庫-Sound-Soundfile-JumbleSoundfile
import processing.sound.*;
SoundFile sound;
void setup(){
  size(300, 300);
  sound = new SoundFile(this, "music.mp3");
  sound.play();
}
void draw(){

}

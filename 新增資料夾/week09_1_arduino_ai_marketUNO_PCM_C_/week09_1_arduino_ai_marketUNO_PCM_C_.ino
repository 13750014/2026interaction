// week09_1_arduino_ai_marketUNO_PCM_C#
#include <SD.h>
#include <SPI.h>
#include <TMRpcm.h>

#define SD_ChipSelectPin 4 // SD卡模組的 CS 腳位

TMRpcm tmrpcm;
const int buzzerPin = 8;   // 內建蜂鳴器

void setup() {
  // 不需要特別設定
}

void loop() {
  // 模擬科幻雷射槍音效：頻率從高快速降到低
  for (int freq = 1500; freq > 200; freq -= 50) {
    tone(buzzerPin, freq, 15); // 每次發聲 15 毫秒
    delay(15);
  }

  delay(2000); // 停兩秒再玩一次
}

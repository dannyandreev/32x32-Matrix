#include <Ticker.h>
#include <PxMatrix.h>

Ticker display_ticker;

// Pins for LED MATRIX // works for ESP32 devkit
#define P_LAT 22 // 22
#define P_A 19 // 19
#define P_B 23 // 23
#define P_C 18 // 18
#define P_D 5 // 5
#define P_OE 16 // 15

PxMATRIX display(32, 32, P_LAT, P_OE,P_A,P_B,P_C); // changed from default

uint16_t static image[] = {0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (16) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (32) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (48) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (64) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (80) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (96) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (112) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (128) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (144) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (160) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (176) pixels
0x62ac,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (192) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (208) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (224) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (240) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (256) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (272) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (288) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (304) pixels
0x62ac,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (320) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (336) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (352) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (368) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (384) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (400) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (416) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (432) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (448) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (464) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (480) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (496) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (512) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (528) pixels
0x62ac,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (544) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (560) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (576) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (592) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (608) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (624) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (640) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (656) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (672) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (688) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (704) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (720) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (736) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (752) pixels
0x62ac,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (768) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (784) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (800) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (816) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (832) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (848) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (864) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (880) pixels
0x62ac,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (896) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (912) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (928) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (944) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (960) pixels
0x0000,0x0000,0x640c,0x0000,0x9813,0x0000,0xf81f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x3546,0x0000,0x0540,0x0000,   // (976) pixels
0x32a6,0x0000,0x9ab3,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,   // (992) pixels
0x0000,0x0000,0x9c13,0x0000,0x9813,0x0000,0xf95f,0x0000,0xfc1f,0x0000,0xffff,0x0000,0x0540,0x0000,0x0540,0x0000,   // (1008) pixels
0x32a6,0x0000,0xcab9,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000   // (1024) pixels
};



// ISR for display refresh
void display_updater()
{
  display.display(10);
}

void setup() {
  Serial.begin(115200);
  for (int i = 0; i < 1024; i++) {Serial.println(image[i], HEX);}
  display.begin(8, 14, 13, 5, 23);
  display.clearDisplay();
  display_ticker.attach(0.002, display_updater);
  yield();
  display.clearDisplay();
  drawImage(0, 0);
  delay(500);

}

void drawImage(int x, int y)
{
  int imageHeight = 32;
  int imageWidth = 32;
  int counter = 0;
  for (int yy = 0; yy < imageHeight; yy++)
  {
    for (int xx = 0; xx < imageWidth; xx++)
    {
      display.drawPixel(xx + x , yy + y, image[counter]);
      counter++;
    }
  }
}

void drawFrame(uint16_t *frame) {
  display.clearDisplay();
  int imageHeight = 32;
  int imageWidth = 64;
  int counter = 0;
  for (int yy = 0; yy < imageHeight; yy++) {
    for (int xx = 0; xx < imageWidth; xx++) {
      display.drawPixel(xx, yy, frame[counter]);
      counter++;
    }
  }
  delay(100);
}

void loop() {

}

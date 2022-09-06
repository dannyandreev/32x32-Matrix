#include "FS.h"
#include "SD.h"
#include "SPI.h"
#include "stdio.h"
#include <Ticker.h>
#include <PxMatrix.h>

Ticker display_ticker;
File root;

#define LEDG1 36
#define LEDG2 39
#define LEDG3 34
#define LEDG4 1
#define LEDG5 3

#define LEDR1 33
#define LEDY1 12

#define Buzzer 32

// Pins for LED MATRIX // changed from default
#define P_LAT 2
#define P_A 17
#define P_B 16
#define P_C 4
#define P_OE 15

#define MAXGIF 12

PxMATRIX display(32, 32, P_LAT, P_OE,P_A,P_B,P_C); // changed from default

uint16_t images[MAXGIF][1024];
bool sdRead = false;

// ISR for display refresh
void display_updater()
{
  display.display(10);
}

 // Array to store the pixels

void readFile(fs::FS &fs, const char * path, uint16_t images[MAXGIF][1024], int num){

  char pixel[20];
  char inputChar;
  int stringIndex = 2;
  int idx = -1;
  int imageIdx = 0;
  
//    Serial.printf("Reading file: %s\n", path);

    File file = fs.open(path);
    if(!file){
        Serial.println("Failed to open file for reading");
        return;
    }
    
  while (file.available()) {

    inputChar = file.read();

    if (inputChar == 'x') { // new hex value
      idx = 0;
    }

    else  { // not a hex trigger

      if (idx > -1) { // currently writing a pixel
        
        if (idx == 4) { // finished writing pixel
          

          if (inputChar == ',') { // correct pixel
            idx = -1;
            images[num][imageIdx] = (uint16_t) strtol(pixel, NULL, 16);
            imageIdx++;
          }

          else { // not a correct pixel
            idx = -1;
          }

        }

        else { // not done writing pixel
          if ((inputChar >= '0' && inputChar <= '9') || 
          (inputChar >= 'a' && inputChar <= 'f')) { // correct character for pixel
            pixel[idx] = inputChar;
            idx++;
          }

          else { // incorrect character for pixel
            idx = -1;
          }
        }

      }
    }
  }
    file.close();
    
//    for (int i = 0; i < 1024; i++) {
//      Serial.println(image[i], HEX);
//    }
}

void setup() {

    pinMode(LEDG1, OUTPUT);
    pinMode(LEDG2, OUTPUT);
    pinMode(LEDG3, OUTPUT);
    pinMode(LEDG4, OUTPUT);
    pinMode(LEDG5, OUTPUT);

    pinMode(LEDR1, OUTPUT);
    pinMode(LEDY1, OUTPUT);

    pinMode(Buzzer, OUTPUT);
  
    Serial.begin(115200);
    
    if(!SD.begin()){
        Serial.println("Card Mount Failed");
        return;
    }

    sdRead = true;

      root = SD.open("/");
      const int fCounter = countFiles(root, images);

      for (int i = 0; i < MAXGIF; i++) {
        //Serial.println("~~~~~~~~~~~next~~~~~~~~~~");
        for (int j = 0; j < 1024; j++) {
          if(j%16==0){
            Serial.println();
          }
          //Serial.print(" ");
          //Serial.print(images[i][j], HEX);
        }
      }

    // necessary for panel to work after reading from SD card
    SPI.end();


  display.begin(8, 14, 13, 5, 23);
  display.clearDisplay();
  display_ticker.attach(0.002, display_updater);
  yield();

}

void drawAllFrames(uint16_t images[MAXGIF][1024]) {
  for (int i = 0; i < MAXGIF; i++) {
    drawFrame(images[i]);
  }
  yield();
}

void loop() {
  // put your main code here, to run repeatedly:
  if (sdRead) {
     drawAllFrames(images);
  }
}

void drawFrame(uint16_t *frame) {
  display.clearDisplay();
  int imageHeight = 32;
  int imageWidth = 32;
  int counter = 0;
  for (int yy = 0; yy < imageHeight; yy++) {
    for (int xx = 0; xx < imageWidth; xx++) {
      display.drawPixel(xx, yy, frame[counter]);
      counter++;
    }
  }
  delay(100);
}

int countFiles(File dir, uint16_t images[MAXGIF][1024]) {

  int counter = 0;

  while (true) {

    File entry =  dir.openNextFile();

    if (!entry) { // no more files
      
      break;
      
    }

    String fileName = entry.name();

    if ((fileName.endsWith(".c") || fileName.endsWith(".C")) && !fileName.startsWith("/._")) {
      Serial.println(fileName.c_str());
      readFile(SD, fileName.c_str(), images, counter);
      counter++;
    }

    entry.close();

  }
  return counter;
}

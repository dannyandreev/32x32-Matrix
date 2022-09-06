#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>
#include <ESPmDNS.h>
#define matrix_width 32
#define matrix_height 32
#include <Arduino.h>
#include <SPI.h>
#include <Adafruit_BusIO_Register.h>
#include <Adafruit_SPIDevice.h>
#include <Adafruit_GFX.h>
#include <PxMatrix.h>
#include <FS.h>
#include <SD.h>
#include <JPEGDEC.h>
#include<EEPROM.h>
#define SD_CS 5
SPIClass spiSD(VSPI);

// Pins for LED MATRIX
#ifdef ESP32

#define P_LAT TX//34
#define P_A 17
#define P_B 0
#define P_C 2
#define P_OE 16
//R1 with GPIO 13
//CLK with GPIO 14
hw_timer_t * timer = NULL;
portMUX_TYPE timerMux = portMUX_INITIALIZER_UNLOCKED;

#endif
const char* host = "esp32";
const char* ssid     = "Access";
const char* password= "11335577";
WebServer server(80);


uint8_t display_draw_time = 60; //30-70 is usually fine60
int y;
PxMATRIX display(32,32,P_LAT, P_OE,P_A,P_B,P_C);

#ifdef ESP32
void IRAM_ATTR display_updater() {
  // Increment the counter and set the time of ISR
  portENTER_CRITICAL_ISR(&timerMux);
  display.display(display_draw_time);
  portEXIT_CRITICAL_ISR(&timerMux);
}
#endif
void display_update_enable(bool is_enable)
{
#ifdef ESP32
  if (is_enable)
  {
    timer = timerBegin(0, 80, true);
    timerAttachInterrupt(timer, &display_updater, true);
    timerAlarmWrite(timer, 4000, true);
    timerAlarmEnable(timer);
  }
  else
  {
    timerDetachInterrupt(timer);
    timerAlarmDisable(timer);
  }
#endif
}
File uploadFile;
void handleFileUpload() {
  Serial.println("Uploading..........");
  timerDetachInterrupt(timer);
  timerAlarmDisable(timer);
int y=EEPROM.read(0);
  HTTPUpload& upload = server.upload();
  if (upload.status == UPLOAD_FILE_START) { 
    SPI.endTransaction();
       display.flushDisplay();
    spiSD.begin(18, 19, 23, 5); //CLK,MISO,MOIS,SS
    SD.begin(5, spiSD); 

 
   if(!SD.begin(5, spiSD)){
        Serial.println("Card Mount Failed");
        return;
    }
     String filename = upload.filename;
     if(!filename.startsWith("/")) filename = "/"+filename;
     if (SD.exists("/abc.jpg")) {
      SD.remove("/abc.jpg");
    }
    uploadFile = SD.open("/abc.jpg", FILE_WRITE);
    Serial.print("Upload: START, filename: ");
    Serial.println(filename);
  } else if (upload.status == UPLOAD_FILE_WRITE) {
    if (uploadFile) {
      uploadFile.write(upload.buf, upload.currentSize);
    }
    Serial.print("Upload: WRITE, Bytes: "); Serial.println(upload.currentSize);
  } else if (upload.status == UPLOAD_FILE_END) {
    if (uploadFile) {
      uploadFile.close();
    }
    Serial.print("Upload: END, Size: "); Serial.println(upload.totalSize);
    if(y==0){
     EEPROM.write(0,1);
EEPROM.commit();
      }
      else{
      EEPROM.write(0,0);
EEPROM.commit();
        }
    ESP.restart(); 
  }
}
/** Login page*/
const char* loginIndex =
"<form name='loginForm'>"
"<table width='20%' bgcolor='A09F9F' align='center'>"
"<tr>""<td colspan=2>""<center><font size=4><b>RGB Display</b></font></center>"
"<br>"
"</td>"
"<br>"
"<br>"
"</tr>"
"<td>Username:</td>"
"<td><input type='text' size=25 name='userid'><br></td>"
"</tr>"
"<br>"
"<br>"
"<tr>"
"<td>Password:</td>""<td><input type='Password' size=25 name='pwd'><br></td>""<br>""<br>""</tr>"
"<tr>"
"<td><input type='submit' onclick='check(this.form)' value='Login'></td>""</tr>""</table>""</form>""<script>""function check(form)""{""if(form.userid.value=='admin' && form.pwd.value=='admin')""{""window.open('/serverIndex')""}""else""{"" alert('Error Password or Username')/*displays error message*/""}""}""</script>";
/** Server Index Page*/
const char* serverIndex ="<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>"
"<form method='POST' action='#' enctype='multipart/form-data' id='upload_form'>""<input type='file' name='update'>""<input type='submit' value='Update'>"
"</form>"
"<div id='prg'>progress: 0%</div>""<script>""$('form').submit(function(e){""e.preventDefault();""var form = $('#upload_form')[0];""var data = new FormData(form);"" $.ajax({""url: '/update',""type: 'POST',"
"data: data,""contentType: false,""processData:false,""xhr: function() {""var xhr = new window.XMLHttpRequest();""xhr.upload.addEventListener('progress', function(evt) {""if (evt.lengthComputable) {""var per = evt.loaded / evt.total;""$('#prg').html('progress: ' + Math.round(per*100) + '%');""}""}, false);""return xhr;""},""success:function(d, s) {""console.log('success!')""},""error: function (a, b, c) {""}""});""});"
"</script>";
/** setup function*/
JPEGDEC jpeg;
void JPEGDraw(JPEGDRAW *pDraw)
{
   int y = pDraw->y;
      //begin(uint8_t row_pattern, uint8_t CLK, uint8_t MOSI, uint8_t MISO, uint8_t SS)
  display.begin(8);
     //{LINE, ZIGZAG,ZZAGG, ZAGGIZ, WZAGZIG, VZAG, ZAGZIG, WZAGZIG2}.
  display.setScanPattern(WZAGZIG); //better
    //{RRGGBB, RRBBGG, GGRRBB, GGBBRR, BBRRGG, BBGGRR};
  display.setColorOrder(BBGGRR);//bbrrgg
    //Serial.printf("jpeg draw: x,y=%d,%d, cx,cy = %d,%d\n", pDraw->x, pDraw->y, pDraw->iWidth, pDraw->iHeight);
if(y==0){
  display.clearDisplay();
  }
      int imageHeight = 16;
  int imageWidth = 32;
  int counter = 0;
  for (int yy =y; yy < imageHeight+y; yy++)
  {
    for (int xx = 0; xx < imageWidth; xx++)
    {
      display.drawPixel(xx , yy, pDraw->pPixels[counter]);
  //  Serial.printf("Pixel %d = 0x%04x\n",counter, pDraw->pPixels[counter]);
      counter++;
    }
  }
  display.setBrightness(255);
      //  delay(50000);
} 
File myfile;
void * myOpen(const char *filename, int32_t *size) {
  myfile = SD.open(filename);
  *size = myfile.size();
  return &myfile;
}
void myClose(void *handle) {
  if (myfile) myfile.close();
}
int32_t myRead(JPEGFILE *handle, uint8_t *buffer, int32_t length) {
  if (!myfile) return 0;
  return myfile.read(buffer, length);
}
int32_t mySeek(JPEGFILE *handle, int32_t position) {
  if (!myfile) return 0;
  return myfile.seek(position);
}

void setup() {
    long lTime;
    EEPROM.begin(1);
    y=EEPROM.read(0);
    
    if(y>1){
     EEPROM.write(0,0);
     EEPROM.commit();
      }
     Serial.begin(115200);
  
    spiSD.begin(18, 19, 23, SD_CS); //CLK,MISO,MOSI,SS
    SD.begin(SD_CS, spiSD); 
Serial.println(y);
    delay(500);
 
   if(!SD.begin(SD_CS, spiSD)){
        Serial.println("Card Mount Failed");
        return;
    }
   uint8_t cardType = SD.cardType();

    if(cardType == CARD_NONE){
        Serial.println("No SD card attached");
        return;
    }

    Serial.print("SD Card Type: ");
    if(cardType == CARD_MMC){
        Serial.println("MMC");
    } else if(cardType == CARD_SD){
        Serial.println("SDSC");
    } else if(cardType == CARD_SDHC){
        Serial.println("SDHC");
    } else {
        Serial.println("UNKNOWN");
    }

    uint64_t cardSize = SD.cardSize() / (1024 * 1024);
    Serial.printf("SD Card Size: %lluMB\n", cardSize);
    
 WiFi.begin(ssid, password);
 Serial.println("");// Wait for connection
 while (WiFi.status() != WL_CONNECTED) {
  delay(500);Serial.print(".");}
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());/*use mdns for host name resolution*/
  if (!MDNS.begin(host)) {       //http://esp32.local
  Serial.println("Error setting up MDNS responder!");
  while (1) {delay(1000);}}
  Serial.println("mDNS responder started");/*return index page which is stored in serverIndex */
  server.on("/", HTTP_GET, []() {server.sendHeader("Connection", "close");server.send(200, "text/html", loginIndex);});
  server.on("/serverIndex", HTTP_GET, []() {server.sendHeader("Connection", "close");server.send(200, "text/html", serverIndex);});
  server.on("/update", HTTP_POST,                       // if the client posts to the upload page
    [](){server.sendHeader("Connection", "close");server.send(200);},                          // Send status 200 (OK) to tell the client we are ready to receive
    handleFileUpload                                   // Receive and save the file
  );
  server.begin();
 
  display_update_enable(true);
  if(y==0){
  if (jpeg.open(("/abc.jpg"), myOpen, myClose, myRead, mySeek, JPEGDraw)) {
    lTime = micros();
    if (jpeg.decode(0,0,0)) { // full sized decode
      lTime = micros() - lTime;
     Serial.printf("%d x %d image, decode time = %d us\n", jpeg.getWidth(), jpeg.getHeight(), (int)lTime);
     Serial.println(" ");
    
    } 
  }
  jpeg.close();}
}

void loop() {
server.handleClient();
}

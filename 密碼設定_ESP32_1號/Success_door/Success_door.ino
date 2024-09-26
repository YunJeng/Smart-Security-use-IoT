#include <WiFi.h>
#include <TridentTD_LineNotify.h>
#include <EEPROM.h>
#include <ToneESP32.h>
#include <Keypad.h>
#include <ESP32Servo.h>
#include <SPI.h>
#include <MFRC522.h>
#include <PubSubClient.h>
//==========OLED============
//#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#define OLED_RESET -1
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

//==========變數設定============
const int passwordLength = 4; //密碼的長度
char storedPassword[passwordLength + 1];  // 儲存的密碼
char enteredPassword[passwordLength + 1]; // 輸入的密碼
char newPassword[passwordLength + 1];    // 新設置的密碼
int passwordIndex = 0;
int counter = 0; // 計數器
bool settingPassword = true; // 設置密碼模式標誌
#define LINE_TOKEN "Omu9TNsNdvbj3IgOKM8NeGo00PJVRS5SnW5fGbXmpyb"// 記得改Line權杖

//==========Tone設定============
#define BUZZER_PIN 15 // 宣告變數
#define BUZZER_CHANNEL 15 // channel 可以0~15
ToneESP32 buzzer(BUZZER_PIN, BUZZER_CHANNEL);

//==========舵機設定============
Servo servo1; //舵機 (上)
Servo servo2; //舵機 (下)

//==========鍵盤設定============
const byte ROWS = 4;
const byte COLS = 4;
char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'},
};

byte rowPins[ROWS] = {13, 12, 14, 27};
byte colPins[COLS] = {26, 25, 33, 32};

Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS);

//==========RFID 的設定 ============
#define RFID_number "476a8ac9" // 記得改！
MFRC522 mfrc522(4, 0);
String mfrc522_id()
{
      byte *rfidid = mfrc522.uid.uidByte;
      byte rfididSize = mfrc522.uid.size;
      String mfrc522id2="";
      for (byte i = 0;i< rfididSize; i++) {
        mfrc522id2=mfrc522id2+String(rfidid[i],HEX);
        }
      mfrc522.PICC_HaltA();
      return mfrc522id2;
}

//==========MQTT 的設定============
WiFiClient mqttClient;
PubSubClient mqttclient(mqttClient);

void mqttpublich(String topic,String message)
{
  char *amqtt = const_cast<char*>(topic.c_str());
  char *bmqtt = const_cast<char*>(message.c_str());
  mqttclient.publish(amqtt,bmqtt);
}

void mqttsubscribe(String topic)
{
  char *amqtt = const_cast<char*>(topic.c_str());
  mqttclient.subscribe(amqtt);
}


void callback(char* topic, byte* payload, unsigned int length) 
{
  String mqtttopic=String(topic);
  String mqttmessage;
  for (int i = 0; i < length; i++) {
    mqttmessage=mqttmessage+(char)payload[i];
  }
  // 這邊可以修改 topic + message
  if ((mqtttopic) == String("Security")) {
    if ((mqttmessage) == String("開門")) {
        servo1.attach(17);
        servo1.write(90);
      }
    if ((mqttmessage) == String("關門")) {
      servo1.attach(17);
      servo1.write(0);
      }
    }
    if ((mqttmessage) == String("修改")) {
        settingPassword = !settingPassword;
        passwordIndex = 0;
        memset(enteredPassword, 0, passwordLength + 1);
        memset(newPassword, 0, passwordLength + 1);
        if (settingPassword) {
          Serial.println("Enter new password (4 digits):"); //1
          mqttpublich("Security","1"); //client.publish("Security","1")
        } else {
          Serial.println("Enter password:"); //2
          mqttpublich("Security","2");
        }
      }
}


void setup() {
    Serial.begin(115200);
    //==========OLED============
    display.begin(SSD1306_SWITCHCAPVCC,0x3C);
    display.setTextColor(WHITE);
    display.clearDisplay();
    display.setCursor(0,0);
    display.display();
    
    //==========舵機============
    servo1.attach(17);
    servo2.attach(16);
    servo1.write(0);
    servo2.write(0);

    //==========Line & RFID============
    LINE.setToken(LINE_TOKEN);
    SPI.begin();
    mfrc522.PCD_Init();
    
    //==========  WiFi============
    // 記得改名稱，密碼
    WiFi.begin("YUN", "stareblankly");
    Serial.print("Connecting");
    int testwifi=0;
    while (WiFi.status() != WL_CONNECTED)
    {
        delay(500);
        Serial.print(".");
        testwifi++;
        if (testwifi>8)
          ESP.restart();
    }
    Serial.println();
    Serial.print("Connected, IP address: ");
    Serial.println(WiFi.localIP());

    //==========MQTT============
    char* mqttServer = "broker.mqttdashboard.com";
    int mqttPort = 1883;
    mqttclient.setServer(mqttServer, mqttPort);
    while (!mqttclient.connected()) {
      Serial.println("Connecting to MQTT...");
      long a=random(0, 10000);
      String b="ESPClient"+String(a);
      char *c= const_cast<char*>(b.c_str());
      if (mqttclient.connect(c)) {
        Serial.println("connected");
      } else {
        Serial.print("failed with state ");
        Serial.print(mqttclient.state());
        delay(2000);
      }
    }
    mqttclient.setCallback(callback);
    mqttsubscribe("Security");

    //==========Setup============
    // 提示用戶設置最一開始的密碼
    Serial.println("Please set a new password (4 digits):"); //3
    mqttpublich("Security","3");
}

void loop() {
  mqttclient.loop();
  //==========鍵盤 & Line & 密碼設置功能============
  char key = keypad.getKey();
  if (key) {
    //輸出按下的鍵
    Serial.print("Key pressed: ");
    Serial.println(key);
    // 進入或退出設置密碼模式
    if (key == '*') {
      LINE.setToken(LINE_TOKEN);
      // 先換行再顯示(\n)
      LINE.notifySticker("",789,10877);
      LINE.notify("\n修改密碼前請先：\n1. 點選網站：https://www.hivemq.com/demos/websocket-client/ \n2. Connection 按下 Connect \n3. Subscriptions 的 Topic 打上：Security，並按下Subscribe \n4. Publish 的 Topic 打上：Security，Message 打上：修改 \n5. 按下Publish");
    } else if (key == '#') {
      if (settingPassword) {
        if (passwordIndex == passwordLength) {
          // 設置新密碼
          for (int i = 0; i < passwordLength; i++) {
            EEPROM.write(i + 1, newPassword[i]);
          }
          EEPROM.write(0, 0); // 標誌已設置密碼
          Serial.println("New password set."); //4
          mqttpublich("Security","4");
          // 更新儲存密碼
          strcpy(storedPassword, newPassword);
          // 關閉設置
          settingPassword = false;
          counter = 0;
          Serial.println("Enter password:"); //5
          mqttpublich("Security","5");
        } else {
          Serial.println("Password must be exactly 4 digits. Please try again."); //6
          mqttpublich("Security","6");
        }
      } else {
        counter++;
        // 驗證密碼
        if (passwordIndex == passwordLength) {
          enteredPassword[passwordIndex] = '\0'; // 添加字符終止串
          // 密碼輸入正確時
          if (strcmp(enteredPassword, storedPassword) == 0) {
            counter = 0;
            Serial.println("Password Correct!"); //7
            mqttpublich("Security","7");
            buzzer.tone(NOTE_C6, 200);
            delay(100);
            buzzer.tone(NOTE_C6, 200);
            servo1.write(90);
            servo2.write(90);
          }
          else { // 密碼輸入錯誤時
            Serial.println("Incorrect Password"); //8
            mqttpublich("Security","8");
            buzzer.tone(NOTE_C4, 500);
            delay(100);
          }
        } else { // 密碼輸入字數跟設定長度不一樣時
          Serial.println("Password must be exactly 4 digits. Please try again."); //6
          mqttpublich("Security","6");
          buzzer.tone(NOTE_C4, 500);
        }
        // 密碼輸入錯誤超過5次以上
        if (counter >= 5) {
          LINE.setToken(LINE_TOKEN);
          // 先換行再顯示
          LINE.notifySticker("",789,10888);
          LINE.notify("\n密碼已經輸入超過5次！\n試著按下「*」重新設定密碼！");
          delay(200);
          if (strcmp(enteredPassword, storedPassword) == 0) {
            counter = 0;
          }
        }
      }

      // 重置输入
      passwordIndex = 0;
      memset(enteredPassword, 0, passwordLength + 1);
      memset(newPassword, 0, passwordLength + 1);
    } else {
      // 儲存輸入的密碼字符
      if (passwordIndex < passwordLength) {
        if (settingPassword) {
          newPassword[passwordIndex] = key;
        } else {
          enteredPassword[passwordIndex] = key;
        }
        passwordIndex++;
      } else {
        passwordIndex = 0;
        memset(newPassword, 0, passwordLength + 1);
        memset(enteredPassword, 0, passwordLength + 1);
      }
    }
  } 
  // 自動開門，手動關門！按"B"可以關門
  if (key != NO_KEY){
    if (key == 'B'){
          servo1.write(0);
          servo2.write(0);
    }
  }
  // 使用 RFID
  if (mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial()) {
    String RFID = (mfrc522_id());
    if (RFID = RFID_number) {
      buzzer.tone(NOTE_C6, 200);
      delay(100);
      buzzer.tone(NOTE_C6, 200);
      servo1.write(90);
      servo2.write(90);
    }
    delay(500);
  }
  mqttclient.loop();
}

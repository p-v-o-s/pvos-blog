---
layout: layout.njk
---

# "Rev F" of the PVOS CO2 Monitoring Kit

Home page for documentation, tutorials, and sample data for ["Revision F" ("REV_F")](/co2/f) of the [PVOS CO2 Monitoring Kit](/posts/co2).

| ![](/img/rev_f_boards_sm.png) |
|:--:|
| **Rev F** of the PVOS CO2 Monitor. |

## Overview

The primary repository for hardware and firmware designs is on github [here](https://github.com/p-v-o-s/co2-monitor/tree/main/rev_f). Below, you'll find material on:
- [Hardware design]() -- including design files in KiCAD, and quick links to order PCBs from OSHPark or JLCPCB.
- [Firmware]() -- currently in Arduino. (Micropython coming soon!)
- [Getting Started]() -- how to start collecting CO2 data online -- currently for Bayou-CO2 (Adafruit.io and Thingspeak coming soon!)


## Hardware Setup

| ![](/img/co2/rev_f_schematic.png) |
|:--:|
| **Rev F** PVOS CO2 Monitor schematic (generated in KiCAD). PDF version is [here](https://github.com/p-v-o-s/co2-monitor/blob/main/rev_f/hardware/schematic.pdf). |

| ![](/img/co2/rev_f_board.png) |
|:--:|
| **Rev F** PVOS CO2 Monitor board layout (generated in KiCAD). |

| ![](/img/co2/rev_f_render_jlcpcb.png) |
|:--:|
| **Rev F** PVOS CO2 Monitor rendered by JLCPB.  You can order 5 boards for them via [this link](). |


## Firmware Setup

### Arduino IDE Version

The following firmware is based on version 1.8.13 or greater of the Arduino IDE. Earlier versions may work, but are currently untested.  Download the latest version [here](https://www.arduino.cc/en/software).

### Adding support for the Heltec ESP32 Wifi Lora v2

First, you should add support in the Arduino IDE for the Heltec.  You can follow the instructions [here](https://randomnerdtutorials.com/installing-the-esp32-board-in-arduino-ide-windows-instructions/).

(Coming soon: video tutorial).

### Installing Required Arduino libraries

These can be installed via the Arduino IDE Library Manager:

- when you pull up "co2monitor.ino" in the Arduino IDE, you can click on each of the links in the comments above, and each will provide you with a button for installing the associated library.  You will need to click on each link sequentially, and install each (doesn't take long!):

![](/img/co2/library_manager_rev_f.png)

Alternatively, if you'd like to download the libraries manually via github and place them in the "libraries" folder of your Arduino sketch folder, you can do so via these links (to github repos for the libraries):

- [Autoconnect](https://github.com/Hieromon/AutoConnect)
- [Sparkfun SCD30 library](https://github.com/sparkfun/SparkFun_SCD30_Arduino_Library)
- [BMP388_DEV](https://github.com/MartinL1/BMP388_DEV)
- [Bounce2](https://github.com/thomasfredericks/Bounce2)
- [U8g2](https://github.com/olikraus/u8g2) 

### Uploading the 'data' folder contents

Install the ESP32 Filesystem Uploader following the instructions [here](https://randomnerdtutorials.com/install-esp32-filesystem-uploader-arduino-ide/).

Follow the same instructions to upload the 'data' folder to your Heltec via the ESP32. Note: before uploading, you must select the Heltec ESP32 Wifi LoRa (v2) board from the "Tools: Boards" menu, and the proper Port from the "Tools: Port" menu.

## Collecting data online

The following steps are for collecting data via [Bayou-CO2]().  Guides for getting data to Adafruit.io, Thingspeak, and other platforms forthcoming!

### 1. Set up a Bayou-CO2 feed

### 2. Connect to your hardware via wifi on your phone

First, connect to the hotspot shown on the screen.

Configure the device on your local wifi, using your phone.

### 3. Enter in your Bayou-CO2 credentials

This is ideally done using a laptop (for easy copy-paste of credentials):

Press the side button to see the IP address to which your device is connected.

Navigate to this address on your laptop.

Enter in the public key and private key for your Bayou-CO2 feed.

### 4. Check for new data online

Navigate to http://data.pvos.org/co2/data/[ your public key] to see if data is flowing!







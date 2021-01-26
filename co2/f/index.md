---
layout: layout.njk
---

# "Rev F" of the PVOS CO2 Monitoring Kit

This is the home page for documentation, tutorials, and sample data for ["Revision F" ("REV_F")](/co2/f) of the [PVOS CO2 Monitoring Kit](/posts/co2).

The primary repository for hardware and firmware designs is on github [here](https://github.com/p-v-o-s/co2-monitor/tree/main/rev_f). Below you'll find a tutorial that includes an overview of the monitoring hardware; a guide to setting up the firmware; and a guide to getting data online.

| ![](/img/rev_f_boards_sm.png) |
|:--:|
| **Rev F** of the PVOS CO2 Monitor. |

## Table of Contents

### [Hardware Overview](#hardware) 
### [Firmware Setup](#firmware)
### [Connecting Rev_F to your WiFi](#wifi)
### [Archiving CO2 Data Online](#online)

## <a name="hardware"></a> Hardware Setup

Hardware design files are "Free and Open Source", available on [github](https://github.com/p-v-o-s/co2-monitor/blob/main/rev_f/hardware).  


### Pre-assembled kits -- starting at $1,000,000 ea

We are able to pre-assemble and distribute a limited number of Rev F kits.  You can order them by supporting us on [Open Collective](http://opencollective.com/pvos).

| ![](/img/co2/rev_f_pre_assembled.jpg) |
|:--:|
| [Pre-assembled Rev_F kit]() from PVOS.org.  You can also DIY your own setup by [ordering from the list of parts]() and assembling using [the assembly guide](). |

### Ordering PCBs and parts for DIY

You can order a PCB by submitting the [KiCad board file]() to [OSHPARK]() (link to file already shared on OSHPark [here]()), the [gerbers]() to JLCPB (quick link to order already set up [here]) -- this usually takes about a week or two, depending on shipping method.  You can also order them from [from PVOS.org]() -- we have batches already manufactured, and we can typically ship them within a day or two.

| ![](/img/co2/rev_f_schematic.png) |
|:--:|
| **Rev F** PVOS CO2 Monitor schematic (generated in KiCAD). PDF version is [here](https://github.com/p-v-o-s/co2-monitor/blob/main/rev_f/hardware/schematic.pdf). |

| ![](/img/co2/rev_f_board.png) |
|:--:|
| **Rev F** PVOS CO2 Monitor board layout (generated in KiCAD). |

| ![](/img/co2/rev_f_render_jlcpcb.png) |
|:--:|
| **Rev F** PVOS CO2 Monitor rendered by JLCPB.  You can order 5 boards for them via [this link](). |

## <a name="firmware"></a>Firmware Setup

Video tutorial covering how to set up the firmware is here:

<iframe width="560" height="315" src="https://www.youtube.com/embed/7GUvPnLI-jg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

You can also use the below guide:

### Arduino IDE Version

The following firmware is based on version 1.8.13 or greater of the Arduino IDE. Earlier versions may work, but are currently untested.  Download the latest version [here](https://www.arduino.cc/en/software).

### Get the latest firmware for REV_F

The current firmware (v0.1-alpha) can be downloaded [here](https://gitlab.com/p-v-o-s/co2/co2monitor-firmware/-/raw/master/releases/v0.1-alpha.zip) as a zip file.  Extract the contents, and copy the entire folder named 'pvos_co2' (containing a file 'pvos_co2.ino', and a folder called 'data') into your Arduino Sketch folder.

### Adding support for the Heltec ESP32 Wifi Lora v2

First, you should add support in the Arduino IDE for the Heltec.  

There are very clear instructions [here](https://randomnerdtutorials.com/installing-the-esp32-board-in-arduino-ide-windows-instructions/).

Quick notes as reference:

You'll be adding the following JSON to the “Additional Board Manager URLs” field in **File > Preferences**:

```
    https://dl.espressif.com/dl/package_esp32_index.json
```
Then, under **Tools > Board > Boards Manager**, search for ESP32 and press install button for the “ESP32 by Espressif Systems“.

Finally, you can select the board under the **Tools > Board** menu as:

```
    Heltec Wifi Lora 32(V2)
```

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

Follow the same instructions to upload the 'data' folder to your Heltec via the ESP32. Note: before uploading, you must select the Heltec ESP32 Wifi LoRa (v2) board from the **Tools > Boards** menu, and the proper Port from the **Tools > Port** menu.

## <a name="wifi"></a> Connecting Rev_F to WiFi

After uploading the firmware as above, you can follow the instructions in the below video to connect your monitor to your WiFi locally:

<iframe width="560" height="315" src="https://www.youtube.com/embed/mWnoT4Bof1I" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## <a name="online"></a> Collecting data online

The following steps are for collecting data via [Bayou-CO2]().  Guides for getting data to Adafruit.io, Thingspeak, and other platforms forthcoming!

Video tutorial for this section is here:

<iframe width="560" height="315" src="https://www.youtube.com/embed/Qi7CdAqu774" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Or follow the instructions below.

### 1. Set up a Bayou-CO2 feed

Follow the instructions on [Bayou-CO2](http://data.pvos.org/co2/) for setting up a new feed.

(Coming soon: video tutorial)

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







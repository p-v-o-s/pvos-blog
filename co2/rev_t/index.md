---
layout: layout.njk
---

## PVOS CO2 Monitor, Revision 'T'

### Board Design

**Off-the-shelf, easy to solder (through-hole) parts**:
- an Adafruit Feather M4 Express
- an Adafruit Airlift ESP32 WiFi board
- an SCD30 CO2 sensor module
- an SSD1306 OLED

**Additional features**:
- The CO2 sensor module is protected against air flow variations by PCB and header 'baffles.
- I2C signals are conveyed between the base PCB and the cover PCB via metallic standoffs.
- A DC-DC switching voltage regulator allows 7-36V input via an external 5/2.1 barrel jack.
- Qwiic connectors allow for additional i2c sensors to be added easily.
- It is primarily intended to be hung on a wall; but battery use / datalogging is also accommodated.

### Pictures

![](/img/co2/rev_t_front.jpg)

![](/img/co2/rev_t_back.jpg)

![](/img/co2/rev_t_innards.jpg)

![](/img/co2/rev_t_sensor_closeup.jpg)

### Schematic & Board Files

#### Base PCB:

[![](/img/co2/rev_t_schematic.png)](/img/co2/rev_t_schematic.pdf)

![](/img/co2/rev_t_board.png)

- KiCAD files for the base pcb on gitlab, [here](https://gitlab.com/p-v-o-s/co2/co2-monitor/-/tree/main/REV_T/hardware/kicad)

#### Cover:

[![](/img/co2/rev_t_cover_schematic.png)](/img/co2/rev_t_cover_schematic.pdf)

![](/img/co2/rev_t_cover.png)

- KiCAD files for the cover, [here](https://gitlab.com/p-v-o-s/co2/co2-monitor/-/tree/main/REV_T/hardware/kicad)

---
layout: layout.njk
---

# BOOST_1

<!--
![](/img/boost_board_3d.png) ![](/img/boost/boost_1.png)
-->

**Boost** is a design for a battery-powered phone charger with the following features:
- 5V USB output via a USB-C connector (for charging phones)
- Charge is stored on a lithium-ion battery (not included) which stores the charge can be either a (ideally, recycled) [18650](https://www.18650batterystore.com/collections/18650-batteries), or any 3.7V Li-on battery with a [JST-PH](https://www.mouser.com/ProductDetail/TE-Connectivity/440055-2?qs=DE9Qji9blsSmCkgS7fKI6w%3D%3D&mgh=1&gclid=Cj0KCQiAuvOPBhDXARIsAKzLQ8FIn0AJiv5N9X8Zr1FzriP3zXEFO02FMtw7HIzeyKe0NP3By860LwQaAngtEALw_wcB) connector. 
- Input (to recharge battery) can range from 5V to 36V
- Solar charging option via a 5V to 10V solar panel
- Robust screw terminals for connecting to e.g. a 12V car battery 

<a href="/img/boost_board_3d.png"><img width="300px" src="/img/boost_board_3d.png"></a> <a href="/img/boost/boost_1.png"><img width="300px" src="/img/boost/boost_1.png"></a>

<a href="/img/boost/testing.jpg"><img width="500px" src="/img/boost/testing.jpg"></a>

<img width="500px" src="/img/boost/18650.png">

## Design Notes

- the 5V boost converter used in the design is the []VX7805-500](https://www.digikey.com/en/products/detail/cui-inc/VX7805-500/7350283)
- The solar-capable lithium ion charger circuit is the ['1.5A Universal Lipo Charger' by Adafruit](https://www.adafruit.com/product/4755)
- The battery voltage is boosted to 5V using the [Adafruit TPS 61023 Mini Boost](https://www.adafruit.com/product/4654)

## Design files

[Parts on digikey](https://docs.google.com/spreadsheets/d/1SSv-qiHzVkntU7v8pnGAcpxlCwBbYCUFDfs7P6XYWlM/edit#gid=506193531)

[KiCAD files on github](https://github.com/edgecollective/boosta)

## Schematic

[![](/img/boost_schem.png)](/img/boosta.pdf)





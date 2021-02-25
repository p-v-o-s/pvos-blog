---
layout: layout.njk
---

## CO2 Monitor Firmware

All firmware releases are [here](https://gitlab.com/p-v-o-s/co2/co2monitor-firmware/-/tree/master/releases).

---
### Firmware Update -- 2021-02-25 11:48:43

Developed new firmware that attempts to handle bad / confusing wifi connections: if there is no wifi connection for several tries, or if the server replies with something other than '200' (indicating something wrong with wifi connection), then the board resets. The wifi parameters are 'hardcoded' in config.h.  

The firmware is available in release [v0.5-alpha](https://gitlab.com/p-v-o-s/co2/co2monitor-firmware/-/raw/master/releases/v0.5-alpha.zip), containing two sub-folders:

- "heltec_rev_f_wifi_hardcoded" -- for boards Rev_E and Rev_F (Heltec)
- "featheresp32_rev_h_wifi_hardcoded" -- for Rev_G and Rev_H (Feather ESP32).

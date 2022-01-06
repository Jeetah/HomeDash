# Hardware
## Requirements 
**Use Case:** Central wall-mountable, energy-efficient, high-quality display. Flexible software options and remotely manageable device. Easy backup and reliable storage system.
Only one power supply cord (no cable clutter).

This leads to...

**📺 Display:**
- 4k resolution, IPS panel
- not too big, not too small
- screen should be only turned on when standing or waving in front of it
- screen adapts to surrounding light
- USB 3.0 port(s) incl power supply for device - even if in standby
- enough room to attach the small device at the back

A touch screen would be nice but is far too expensive and difficult to get especially regarding the above requirements.

**🖲 Device:**
- WiFi
- USB 3.0 power supply
- storage system on SSD
- Linux OS

## Display
I chose the **[Philips 272P7VPTKEB/00](https://www.philips.ie/c-p/272P7VPTKEB_00/brilliance-4k-uhd-lcd-monitor-with-powersensor)**
because it fulfills all the above requirements. The power sensor can be used also as "wave sensor" if configured to react only very near - nice :-)

## Device
Regarding the requirements, there is currently no way around a proper **[Raspberry](https://www.raspberrypi.org/)**. Version 4B also has USB 3.0, 4k output and WiFi.
So all requirements above are fulfilled.

### Case
Should be small and easily attachable to the display at the back. I chose this ultra-thin **[Geekworm case](https://geekworm.com/products/raspberry-pi-4-ultra-thin-cnc-aluminum-alloy-metal-case-compatible-with-raspberry-pi-4-model-b-only?_pos=32&_sid=ae360a17f&_ss=r)**
and attached it with some good 3M velcro pads.

### Storage
I tried SD cards - but they all have sooner or later file system errors due to the many write operations which can be really nasty.
So it's highly recommendable to use a SSD. And since space is scarce a M2 SSD is the way to go.
I chose this **[FIDECO M.2 NVME SATA SSD case](https://smile.amazon.de/gp/product/B07TSBR114/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1)** cause the Realtek controller promises high-speed. And as SSD a standard cheap-but-not-crap M2 SSD like the **[Kingston M2 A400 series](https://www.kingston.com/germany/de/ssd/a400-solid-state-drive)**.

Depending on the space the [Argon ONE M.2 case](https://www.argon40.com/argon-one-m-2-case-for-raspberry-pi-4.html) is also an option and gives you some further bonuses.

### Final Result
The final result looks like this:
![Back of display](/images/HomeDash_Back_Raspberry_M2SSD.jpeg)
  





 
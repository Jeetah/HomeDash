# Setup

  * [Installation Variants](#installation-variants)
  * [Raspberry](#raspberry)
    + [Static IP](#Static-ip)
    + [Using a SSD instead SD card](#using-a-ssd-instead-sd-card)
    + [VNC](#vnc)
    + [Docker](#docker)
  * [Home Assistant (supervised)](#home-assistant--supervised-)
    + [Home Assistant Community Store (HACS)](#home-assistant-community-store--hacs-)
    + [App Armor](#app-armor)
  * [Kiosk Mode](#kiosk-mode)

## Installation Variants
**ℹ️  [Here's a comparison of the different Home Assistant installation variants](https://www.home-assistant.io/installation/#compare-installation-methods)**

⚠️ The _Home Assistant OS_ is recommended for the more unexperienced users with the drawback that you are no longer in full control of the system.
So the clear recommendation is to use the _supervised variant_ (which can btw also be installed after fiddling around with the _container variant_) 

## Raspberry
Just use the proven Raspberry imager with the standard OS to write the OS to the SD card.

**ℹ️ Hint:** With _Ctrl+Shift+X_ you can make some settings like WiFi, SSH... directly in the imager. So no input devices are required for further setup after starting from the image!

### Static IP
I would highly recommend using a static IP address as described [here](https://pimylifeup.com/raspberry-pi-static-ip-address/). If using DHCP there is no guarantee that you get the same IP when binding to MAC address since this address is not stable when rebooting!

### Using a SSD instead SD card
Boot from SD card, attach the M2 SSD case and:

- `sudo apt-get update`
- `sudo apt-get full-upgrade`
- `sudo rpi-update`
- `sudo reboot`
-  Install latest bootloader: `sudo rpi-eeprom-update -d -a`
- `sudo reboot`
- `sudo raspi-config`:
    - _'Advanced' - 'Boot ROM Version' - 'No' to defaults - 'Boot order' - 'USB Boot' - 'Finish'_
    - **⚠️ Do not reboot:** Use 'SD card copier' from 'Accessoires' and copy your SD card to the SSD. Afterwards you can remove the card and boot from SSD.
- Enjoy the full speed and reliable SSD experience. Yay.

### VNC
Just enable the VNC server from the _raspi-config_.

### Docker
You'll need [Docker](https://www.docker.com/). Just follow one of the many installation manuals for the Raspberry like [this one](https://phoenixnap.com/kb/docker-on-raspberry-pi).

## Home Assistant (supervised)
"Supervised" means that most of your installation is managed and supervised afterwards. You'll only have to maintain your OS. 
The installation guide for this variant can be found [here](https://github.com/home-assistant/supervised-installer).

⚠️ Over the "best" terminal app _iterm_ I have not been able to get the graphical machine type chooser - so it's recommended to run the installation up to this point directly on the machine (e.g. via VNC).

### Home Assistant Community Store (HACS) 
For many not-absolute-standard integrations you will need the **[Home Assistant Community Store (HACS)](https://hacs.xyz/)**.

### App Armor
The Home Assistant system settings will report that [App Armor](https://www.apparmor.net/) is missing for full security. This is true if using normal Raspberry OS cause the makers decided against it due to performance impacts.
The only way to use it for max security is to cross-compile the kernel - more details can be found [here](https://we.riseup.net/wikis/300095).
Since my installation is not exposed outside the home network I decided against this. If anyone has some experience with it - please report back.

## Kiosk Mode
For a real dashboard experience it's necessary to start the browser in **kiosk mode** (= no visible browser components) and as system service. These are the necessary steps for Chromium:

- a startup script like [this](/kiosk_mode/startHomeDash.sh) (don't forget to make executable with `chmod u+x`)
- auto-start this script as systemd service unit: 

  `sudo nano /lib/systemd/system/homedash.service`  
  ```
  [Unit]
  Description=SmartHome Dash
  After=multi-user.target
  
  [Service]
  Type=idle
  User=pi
  ExecStart=/home/pi/scripts/startHomeDash.sh
  
  [Install]
  WantedBy=multi-user.target
  ```
- make it readable to others: `sudo chmod 644 /lib/systemd/system/homedash.service`
- reload the daemon: `sudo systemctl daemon-reload`
- enable the service: `sudo systemctl enable homedash.service`

After that - start / restart / status of the service:
  `systemctl start homedash.service` / `systemctl restart homedash.service` / `systemctl status homedash.service`
  
 

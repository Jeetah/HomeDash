# Setup

**ℹ️  [Here's a comparison of the different Home Assistant OS installation variants](https://www.home-assistant.io/installation/#compare-installation-methods)**

⚠️ The _Home Assistant OS_ is recommended for the more unexperienced users with the drawback that you are no longer in full control of the system.
So the clear recommendation is to use the _supervised variant_ (which can btw also be installed after fiddling around with the _container variant_) 

## Raspberry
Just use the proven Raspberry imager with the standard OS to write the OS to the SD card.

**ℹ️ Hint:** With _Ctrl+Shift+X_ you can make some settings like WiFi, SSH... directly in the imager. So no input devices are required for further setup after starting from the image!

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
The _supervised_ installation guide can be found [here](https://github.com/home-assistant/supervised-installer).

⚠️ Over the "best" terminal _iterm_ I have not been able to get the graphical "machine type chooser" - so it's recommended to run the installation up to this point directly on the machine (e.g. via VNC). 
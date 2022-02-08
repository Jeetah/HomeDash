# Recommendations

## Add-Ons
- [SSH from UI (incl API access)](https://github.com/home-assistant/addons/blob/master/ssh/README.md)
- [File editor from UI (incl validation!)](https://github.com/home-assistant/addons/blob/master/configurator/DOCS.md)
 
## Backup
If you use the backup via UI it is stored in `/usr/share/hassio/backup`. 

So for 
- manual backup to SD card (mounted in `/mnt/sdcard`) via rsync: 👉[script](/shell_scripts/backup2sdcard.sh)
    - **Tip:** Backup via UI after changes ('partial' with config files should be in most cases enough). Crontab the above script nightly like this:
    `0 1 * * * bash /home/pi/HomeDash/shell_scripts/backup2sdcard.sh >> /home/pi/last_hass_backup.log`
- automatic backup: tbd

## Configuration

### Structuring config files
WIP

### Blueprints
Use blueprints as reusable scripting/automation blocks. 

- Example for an automation blueprint (open window notification): 
    - [Blueprint](/blueprints/automations/open_window.yaml)
    - [Usage](/automations/open_windows.yaml)
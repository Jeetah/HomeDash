# Recommendations

## Add-Ons
- [SSH from UI (incl API access)](https://github.com/home-assistant/addons/blob/master/ssh/README.md)
- [File editor from UI (incl validation!)](https://github.com/home-assistant/addons/blob/master/configurator/DOCS.md)
 
## Backup
If you use the backup via UI it is stored in `/usr/share/hassio/backup`. 

So for 
- manual backup to SD card (mounted in `/mnt/sdcard`) via rsync: 
`sudo rsync -av --progress --mkpath /usr/share/hassio/backup "/mnt/sdcard/backups/hassio/backup"`
- automatic backup: tbd

## Configuration

### Structuring config files
WIP
#!/bin/bash
# set -euo pipefail
sudo rsync -av --progress --mkpath /usr/share/hassio/backup "/mnt/sdcard/backups/hassio/backup"
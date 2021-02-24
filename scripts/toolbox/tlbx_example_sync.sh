#!/usr/bin/env bash

cd ~/Documents/drive/

[ -d Backups ] && rclone sync -i ./Backups/Classes danielgdrive:Backups/Classes

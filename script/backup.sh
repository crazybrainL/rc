#!/bin/bash 
sudo rsync -av --delete /cad /mnt/hd2
sudo rsync -av --delete /home /mnt/hd2
sudo rsync -av --delete 163.25.101.87:/var/www/html/wiki /mnt/hd2

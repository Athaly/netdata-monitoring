#!/bin/bash
echo "Eliminando netdata"
systemctl stop netdata
sudo pacman -Rns --noconfirm netdata
echo "Netdata removido"

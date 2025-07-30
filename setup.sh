#!/bin/bash
echo "Instalando netdata..."
sudo pacman -Sy --noconfirm netdata
sudo systemctl enable --now netdata
echo "Netdata instalado y corriendo en localhost:19999"

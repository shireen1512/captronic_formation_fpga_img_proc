#!/bin/bash

## 1. Récupérer l’image de la carte SD fournie par Terasic
export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD/official_sd
cd $DEWD/official_sd
wget http://download.terasic.com/downloads/cd-rom/de10-nano/linux_BSP/de10_nano_linux_console.zip
unzip de10_nano_linux_console.zip
ll -h

## 2. Graver l'image (2Go) de10_nano_linux_console.img sur une carte SD de 4Go minimum

## 3. Se connecter au Linux du DE10-nano
sudo apt-get install gtkterm
gtkterm

## 4. Quelle distribution est utiliée ?
lsb_release -a

## 5. réseau ethernet par cable RJ45
# connecter le cable RJ45
ifconfig
ifconfig eth0 down
ifconfig eth0 up
ifconfig
ping www.google.com

## 6. Monter un dossier réseau pour le DE10-nano
DE10NA_ADDR=192.168.1.15
DEWD=$HOME/de10nano-wd
mkdir -p $DEWD/remote_de10_nano/
ssh-keygen -f "$HOME/.ssh/known_hosts" -R $DE10NA_ADDR
sudo umount $DEWD/remote_de10_nano/
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
 root@$DE10NA_ADDR: $DEWD/remote_de10_nano/
cd $DEWD/remote_de10_nano/
ls -l



#!/bin/bash

MY_USER=ubuntu
SERVER_ADDR=51.210.241.245
DE10NA_ADDR=192.168.1.38
export DEWD=$HOME/de10nano-wd

# scripts de demarrage :

# Monter le répertoire distant du serveur :
mkdir -p $DEWD/remote/
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
$MY_USER@SERVER_ADDR: ~$DEWD/remote/
# Les fichiers sont disponibles dans ~/de10nano-wd/remote/

# Monter le répertoire distant du de10-nano
mkdir -p $DEWD/remote_de10_nano/
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
root@DE10NA_ADDR: $DEWD/remote_de10_nano/
# Les fichiers sont disponibles dans ~/de10nano-wd/remote_de10_nano/

# recuperer les fichiers de la formation sur github
cd $DEWD
git clone https://github.com/jmecodol/captronic_formation_fpga_img_proc.git
# Les fichiers sont disponibles dans ~/de10nano-wd/captronic_formation_fpga_img_proc/



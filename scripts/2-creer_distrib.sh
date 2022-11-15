#!/bin/bash

## 1. Se connecter au serveur de calcul distant
MY_USER=ubuntu / cedric [$cedric1] / stephane [$stephane1] / masoomeh [$masoomeh1] / formateur [$formateur1]
SERVER_ADDR=151.80.152.63

ssh $MY_USER@$SERVER_ADDR

## 2. Aller dans le dossier de travail
DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD

## 3. Configurer u-boot "officiel" pour de10-nano
git clone https://github.com/u-boot/u-boot.git
cd u-boot
## git tag ==> obtenir la liste des versions
git checkout v2021.07

cd include/
# less config_distro_bootcmd.h
# sauvegarder la version anterieure des commandes au demarrage config_distro_bootcmd.h
cp config_distro_bootcmd.h config_distro_bootcmd.h.save
cat ~/helpers/patches/config_distro_bootcmd.patch
patch < ~/helpers/patches/config_distro_bootcmd.patch
diff config_distro_bootcmd.h config_distro_bootcmd.h.save 




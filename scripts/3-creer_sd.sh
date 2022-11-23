#!/bin/bash

## 1. Se connecter au serveur de calcul distant
MY_USER=ubuntu / cedric [$cedric1] / stephane [$stephane1] / masoomeh [$masoomeh1] / formateur [$formateur1]
SERVER_ADDR=151.80.152.63

ssh $MY_USER@$SERVER_ADDR

## 2. Aller dans le dossier de travail
cd
DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD

## 3. creer une image pour carte SD
cd $DEWD
sudo rm -rf sd_card && mkdir -p sd_card
# la taille de la distribution
sudo du -h --max-depth=0 rootfs/
>>>> 541M	rootfs/
cd sd_card
export SD_CARD_PATH=`pwd`
echo $SD_CARD_PATH

# un fichier cree pour la creation de partitions par rocketboards.org
wget https://releases.rocketboards.org/2021.04/gsrd/tools/make_sdimage_p3.py
chmod +x make_sdimage_p3.py

# On crée un patch parce qu’il y a un bug avec une fonction Python3 :
echo '--- make_sdimage_p3.py	2022-09-22 13:13:22.225751537 +0200
+++ make_sdimage_p3_new.py	2022-09-22 13:13:40.689453975 +0200
@@ -452,7 +452,7 @@
     params = ""
 
     if re.search("fat32", pformat):
-        params = ["-F 32","-I"]
+        params = ["-F", "32", "-I"]
     elif re.search("vfat", pformat):
         params = ["-I"]' > make_sdimage_p3.diff
cp make_sdimage_p3.py make_sdimage_p3.py.original
patch -i make_sdimage_p3.diff
cat make_sdimage_p3.py |grep "params = "

# on cree des repertoires des partitions pour le noyau et la distribution :
cd $SD_CARD_PATH
rm -rf sdfs
mkdir -p sdfs
echo "0.1" > sdfs/version.txt
rm -rf rootfs
ln -s ../rootfs/ rootfs

# on copie les fichiers indispensables :

# on copie u-boot
rm u-boot-with-spl.sfp
cp $DEWD/u-boot/u-boot-with-spl.sfp .

# on copie le noyau Linux
cd sdfs/
cp ../../linux-socfpga-socfpga-5.16/arch/arm/boot/zImage .
cp ../../linux-socfpga-socfpga-5.16/arch/arm/boot/dts/socfpga_cyclone5_socdk.dtb .
mkdir -p extlinux
echo "LABEL Linux Default" > extlinux/extlinux.conf
echo "    KERNEL ../zImage" >> extlinux/extlinux.conf
echo "    FDT ../socfpga_cyclone5_socdk.dtb" >> extlinux/extlinux.conf
echo "    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk\
 console=ttyS0,115200n8" >> extlinux/extlinux.conf
cd ..

cd $SD_CARD_PATH
sudo du -h --max-depth=0  rootfs/
>>>> 541M	rootfs/
sudo python3 ./make_sdimage_p3.py -f \
-P u-boot-with-spl.sfp,num=3,format=raw,size=10M,type=A2  \
-P sdfs/*,num=1,format=fat32,size=100M \
-P rootfs/*,num=2,format=ext3,size=600M \
-s 800M \
-n sdcard_cv.img

ll -h *.img
>>> -rw-r--r-- 1 root root 800M Nov 15 14:12 sdcard_cv.img
pwd
>>> /home/formateur/de10nano-wd/sd_card

# recuperer le fichier image pour  carte SD : sdcard_cv.img
# Sur le PC de developpement connecté au DE10-nano :
cd
scp $MY_USER@$SERVER_ADDR:/home/formateur/de10nano-wd/sd_card/sdcard_cv.img .
# la commande prerecente prends du temps (10 minutes minimum).

# graver l'image disque sdcard_cv.img sur une carte SD
# changer la taille de la partition de la distribution avec l'outil de Linux
# placer la carte SD dans le de10-nano et démarrer
# observer la sortie console sur /dev/ttyUSB0 ou 1 ou ...

# on voit que le reseau ethernet ne fonctionne pas.
# alors on va changer de device tree :
cd
scp $MY_USER@$SERVER_ADDR:"~/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dtb" .
# placer la carte SD dans un lecteur sous Linux
# placer le fichier socfpga_cyclone5_de0_nano_soc.dtb dans la partition 2 (celle du noyau Linux).
# changer le fichier extlinux/extlinux.conf
LABEL Linux Default
    KERNEL ../zImage
    #FDT ../socfpga_cyclone5_socdk.dtb
    FDT ../socfpga_cyclone5_de0_nano_soc.dtb
    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk console=ttyS0,115200n8

# placer la carte SD dans le de10-nano et démarrer
# observer la sortie console sur /dev/ttyUSB0 ou 1 ou ...
# Le réseau fonctionne
ifconfig
ping www.google.com


########### optionnel :
# Sur le PC d'Atelier
USER=masoomeh|cedric|stephane
mkdir ~/Bureau/$USER
cd ~/Bureau/$USER
scp $USER@151.80.152.63:~/de10nano-wd/u-boot/u-boot-with-spl.sfp .
scp $USER@151.80.152.63:~/de10nano-wd/debianRootFS.tar.bz2 .
scp $USER@151.80.152.63:~/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/zImage .
scp $USER@151.80.152.63:~/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/dts/socfpga_cyclone5_socdk.dtb .
scp $USER@151.80.152.63:~/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dtb .



mkdir rootfs/
cp debianRootFS.tar.bz2 rootfs/
cd rootfs/
sudo tar -xf debianRootFS.tar.bz2
sudo rm debianRootFS.tar.bz2
cd ..

mkdir sdfs/
wget https://releases.rocketboards.org/2021.04/gsrd/tools/make_sdimage_p3.py
chmod +x make_sdimage_p3.py
echo '--- make_sdimage_p3.py	2022-09-22 13:13:22.225751537 +0200
+++ make_sdimage_p3_new.py	2022-09-22 13:13:40.689453975 +0200
@@ -452,7 +452,7 @@
     params = ""
 
     if re.search("fat32", pformat):
-        params = ["-F 32","-I"]
+        params = ["-F", "32", "-I"]
     elif re.search("vfat", pformat):
         params = ["-I"]' > make_sdimage_p3.diff
cp make_sdimage_p3.py make_sdimage_p3.py.original
patch -i make_sdimage_p3.diff
cat make_sdimage_p3.py |grep "params = "

cp zImage sdfs/
cp *.dtb sdfs/

cd sdfs/
mkdir -p extlinux
echo "LABEL Linux Default" > extlinux/extlinux.conf
echo "    KERNEL ../zImage" >> extlinux/extlinux.conf
echo "    FDT ../socfpga_cyclone5_de0_nano_soc.dtb" >> extlinux/extlinux.conf
echo "    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk\
 console=ttyS0,115200n8" >> extlinux/extlinux.conf
cd ..

sudo du -h --max-depth=0  rootfs/
sudo python3 ./make_sdimage_p3.py -f \
-P u-boot-with-spl.sfp,num=3,format=raw,size=10M,type=A2  \
-P sdfs/*,num=1,format=fat32,size=100M \
-P rootfs/*,num=2,format=ext3,size=600M \
-s 800M \
-n sdcard_cv.img




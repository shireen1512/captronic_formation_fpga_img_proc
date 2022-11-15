#!/bin/bash

## 1. Se connecter au de10-nano
# dans le terminal serie du de10-nano
ifconfig
>>> inet 192.168.1.19
DE10NA_ADDR=192.168.1.19

# monter la partition du noyau Linux
ssh root@$DE10NA_ADDR
mkdir -p fat
umount fat
mount /dev/mmcblk0p1 fat
ll fat
----------
drwxr-xr-x 2 root root     512 nov.  15 14:44 extlinux
-rwxr-xr-x 1 root root   26089 nov.  15 14:42 socfpga_cyclone5_de0_nano_soc.dtb
-rwxr-xr-x 1 root root   27097 nov.  15 14:12 socfpga_cyclone5_socdk.dtb
-rwxr-xr-x 1 root root       4 nov.  15 14:12 version.txt
-rwxr-xr-x 1 root root 5591544 nov.  15 14:12 zImage
----------

# verifier les espaces disponibles dans les partitions (distribution et noyau Linux)
df -h
----------
/dev/root           15G    790M   14G   6% /
/dev/mmcblk0p1      99M    5,4M   94M   6% /root/fat
----------


## 2. Verifier l'etat des bridges (les ports de communication entre le HPS et le FPGA)
# sur le de10-nano :
cat /sys/class/fpga_bridge/*/state
----------------
cat: '/sys/class/fpga_bridge/*/state': Aucun fichier ou dossier de ce type
----------------

# il faut donc modifier le device tree

## 3. activer les bridges FPGA / HPS dans un device tree
# sur le serveur de calcul, dans les sources du noyau Linux, creer un nouveau device tree

MY_USER=ubuntu / cedric [$cedric1] / stephane [$stephane1] / masoomeh [$masoomeh1] / formateur [$formateur1]
SERVER_ADDR=151.80.152.63

ssh $MY_USER@$SERVER_ADDR

# aller dans le dossier de travail
cd
DEWD=$PWD/de10nano-wd
cd $DEWD
cd linux-socfpga-socfpga-5.16/
# creer un nouveu device tree
cp arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts arch/arm/boot/dts/my_socfpga_cyclone5_de0_nano_soc.dts 
vi arch/arm/boot/dts/my_socfpga_cyclone5_de0_nano_soc.dts
# ajouter a la fin du fichier :
----------------------
&fpga_bridge0 {
  status = "okay";
  bridge-enable = <1>;
};

&fpga_bridge1 {
  status = "okay";
  bridge-enable = <1>;
};

&fpga_bridge2 {
  status = "okay";
  bridge-enable = <1>;
};

&fpga_bridge3 {
  status = "okay";
  bridge-enable = <1>;
};
----------------------

export ARCH=arm
export CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-eabi-
make my_socfpga_cyclone5_de0_nano_soc.dtb

# recuperer le fichier my_socfpga_cyclone5_de0_nano_soc.dtb sur le PC de developpement:
cd
scp $MY_USER@$SERVER_ADDR:"~/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/dts/my_socfpga_cyclone5_de0_nano_soc.dtb" .
scp my_socfpga_cyclone5_de0_nano_soc.dtb root@$DE10NA_ADDR:"~/"

# sur le De10-nano, changer de device tree au demarrage :
mv my_socfpga_cyclone5_de0_nano_soc.dtb fat/
vi fat/extlinux/extlinux.conf
---------
LABEL Linux Default
    KERNEL ../zImage
    #FDT ../socfpga_cyclone5_socdk.dtb
    #FDT ../socfpga_cyclone5_de0_nano_soc.dtb
    FDT ../my_socfpga_cyclone5_de0_nano_soc.dtb
    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk console=ttyS0,115200n8
---------
reboot

# verifier que les bridges sont actives :
cat /sys/class/fpga_bridge/*/state
---------
enabled
enabled
enabled
enabled
---------



#!/bin/bash

cd ~/.
export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD
cd $DEWD

cd $DEWD
mkdir -p sdcard
cd sdcard


sudo dd if=/dev/zero of=sdcard.img bs=1G count=1

sudo losetup --show -f sdcard.img
# retenir le nom du device : /dev/loop30
deviceloop=/dev/loop30

sudo fdisk $deviceloop
p

n
p
3
<enter>
+1M <enter>

t
a2

n
p
1
<enter>
+254M <enter>

t
1
b

n
p
2
<enter>
<enter>

p
---
Périphérique  Amorçage  Début     Fin Secteurs Taille Id Type
/dev/loop30p1            4096  524287   520192   254M  b W95 FAT32
/dev/loop30p2          524288 2097151  1572864   768M 83 Linux
/dev/loop30p3            2048    4095     2048     1M a2 inconnu
---

w

ls $deviceloop* 
sudo partprobe $deviceloop
ls $deviceloop* 
-------
/dev/loop30  /dev/loop30p1  /dev/loop30p2  /dev/loop30p3
-------


# Partition 1 is FAT
sudo mkfs -t vfat ${deviceloop}p1

# Partition 2 is Linux
sudo mkfs.ext4 ${deviceloop}p2

cd $DEWD
cd sdcard

sudo dd if=../u-boot-2022.04/u-boot-with-spl.sfp of=${deviceloop}p3 bs=64k seek=0 oflag=sync

# si directement sur la carte SD :
sudo dd if=../u-boot-2022.04/u-boot-with-spl.sfp of=/dev/sdb3 bs=64k seek=0 oflag=sync
sync
sudo sync

cd $DEWD
cd sdcard
mkdir -p fat

sudo mount ${deviceloop}p1 fat

# Copy the kernel image.
sudo cp ../linux-socfpga-socfpga-5.16/arch/arm/boot/zImage fat/

# Copy the de0 device tree.
sudo cp ../linux-socfpga-socfpga-5.16/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dtb fat

# Create the extlinux config file for the bootloader.
echo "LABEL Linux Default" > extlinux.conf
echo "    KERNEL ../zImage" >> extlinux.conf
echo "    FDT ../socfpga_cyclone5_de0_nano_soc.dtb" >> extlinux.conf
echo "    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk console=ttyS0,115200n8" >> extlinux.conf

# Copy it into the extlinux folder.
sudo mkdir -p fat/extlinux
sudo cp extlinux.conf fat/extlinux

# Unmount the partition.
sudo umount fat


cd $DEWD
cd sdcard
mkdir -p ext4

sudo mount ${deviceloop}p2 ext4

cd ext4
sudo tar -xf $DEWD/rootfs.tar.bz2

cd ..
sudo umount ext4

cd $DEWD
cd sdcard
rmdir fat
rmdir ext4
rm extlinux.conf

# Delete the loopback device.
sudo losetup -d ${deviceloop}

# le resultat se trouve dans $DEWD/sdcard/sdcard.img
# restaurer l'image disque sur une carte SD avec l'utilitaire de disque




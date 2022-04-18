#!/bin/bash

export DEWD=$HOME/de10nano-wd
MY_USER=ubuntu
SERVER_ADDR=51.210.241.245
DE10NA_ADDR=192.168.1.16


###########
# page 61 #
###########
# compiler u-boot
ssh MY_USER@51.210.241.245

export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD
git clone https://github.com/jmecodol/captronic_formation_fpga_img_proc.git

git clone https://github.com/u-boot/u-boot.git
cd u-boot
git checkout v2021.07

cd include/
## less config_distro_bootcmd.h
patch < $DEWD/captronic_formation_fpga_img_proc/patches/config_distro_bootcmd.patch 

###########
# page 62 #
###########
export DEWD=$HOME/de10nano-wd
cd $DEWD/u-boot

# Compiler le generateur d'adresses MAC
sudo apt install make
make -C tools gen_eth_addr

# Generer une adrese MAC
tools/gen_eth_addr

cd include/configs/
patch < $DEWD/captronic_formation_fpga_img_proc/patches/socfpga_common.patch

## On peut changer l'adresse avec vi si l'on veut :
vi socfpga_common.h
cd ../..

ls -l configs/socfpga*


###########
# page 63 #
###########
export DEWD=$HOME/de10nano-wd
cd $DEWD/u-boot

sudo apt-get install bison flex

export CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-linux-gnueabihf-
export ARCH=arm
make ARCH=arm socfpga_de10_nano_defconfig
make ARCH=arm -j 9

# le resultat se trouve dans $DEWD/u-boot/u-boot-with-spl.sfp


###########
# page 64 #
###########
# compiler le noyau Linux fourni par Altera

sudo apt-get install libncurses-dev flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev libmpc-dev libgmp3-dev autoconf bc

export DEWD=$HOME/de10nano-wd
cd $DEWD
wget https://github.com/altera-opensource/linux-socfpga/archive/refs/heads/socfpga-5.16.zip

## Dezipper les sources linux.
sudo apt-get install unzip
unzip socfpga-5.16.zip 

cd linux-socfpga-socfpga-5.16/
make ARCH=arm CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-linux-gnueabihf- socfpga_defconfig


make ARCH=arm CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-linux-gnueabihf- menuconfig
General setup >> Automatically append version information to the version string >> décocher
File systems >> Overlay filesystem support >> cocher avec tous les sous-niveaux
File systems >> Pseudo FileSystems >> Userspace-driven configuration filesystem >> vérifier que coché

## la compilation dure longtemps, on peut passer a la page suivante
make ARCH=arm CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-linux-gnueabihf- LOCALVERSION=zImage -j 9

# le resultat se trouve dans $DEWD/linux-socfpga-socfpga-5.16/arch/arm/boot/zImage

###########
# page 65 #
###########
# configurer une Debian sur le serveur distant
sudo apt install debootstrap qemu-user-static

export DEWD=$HOME/de10nano-wd
cd $DEWD
mkdir rootfs

sudo debootstrap --arch=armhf --foreign buster rootfs
sudo cp /usr/bin/qemu-arm-static rootfs/usr/bin/
sudo chroot rootfs /usr/bin/qemu-arm-static /bin/bash -i
/debootstrap/debootstrap --second-stage


###########
# page 66 #
###########
apt install vim -y
vi /etc/hostname
passwd

vi /etc/fstab
--------------
none		/tmp	tmpfs	defaults,noatime,mode=1777	0	0
/dev/mmcblk0p2	/	ext4	defaults	0	1 
--------------
systemctl enable serial-getty@ttyS0.service
apt install locales -y
dpkg-reconfigure locales
vi /etc/network/interfaces
----
auto lo eth0
iface lo inet loopback

allow-hotplug eth0
iface eth0 inet dhcp
----

vi /etc/apt/sources.list
-------------------
deb http://deb.debian.org/debian/ buster main contrib non-free
deb-src http://deb.debian.org/debian/ buster main contrib non-free
deb http://deb.debian.org/debian/ buster-updates main contrib non-free
deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
-----------------------
apt update
apt upgrade

apt install openssh-server -y
vi /etc/ssh/sshd_config >>>> PermitRootLogin yes
apt install haveged -y
apt install net-tools build-essential device-tree-compiler -y

###########
# page 67 #
###########
apt clean
rm /usr/bin/qemu-arm-static
exit

cd $DEWD
cd rootfs
sudo tar -cjpf $DEWD/rootfs.tar.bz2 .
cd ..

# le resultat se trouve dans $DEWD/rootfs.tar.bz2


###########
# page 69 #
###########

## rapatrier u-boot, le noyau et la distribution sur le PC de developpement : du -hs folder/ est utile
export DEWD=$HOME/de10nano-wd
cd $DEWD
rm -rf u-boot*
mkdir u-boot
cp remote/de10nano-wd/u-boot/u-boot-with-spl.sfp u-boot/

rm    -rf linux-socfpga-socfpga-5.16/
mkdir -p  linux-socfpga-socfpga-5.16/arch/arm/boot/
cp        remote/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/zImage linux-socfpga-socfpga-5.16/arch/arm/boot
cp    -r  remote/de10nano-wd/linux-socfpga-socfpga-5.16/arch/arm/boot/dts    linux-socfpga-socfpga-5.16/arch/arm/boot

rm    -rf rootfs.tar.bz2
cp    -r  remote/de10nano-wd/rootfs.tar.bz2 .

## preparer le dossier avec la sdcard de 1Go
mkdir -p sdcard
cd sdcard

sudo dd if=/dev/zero of=sdcard.img bs=1G count=1

sudo losetup --show -f sdcard.img
# retenir le nom du device : /dev/loop6
deviceloop=/dev/loop6

###########
# page 70 #
###########
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

w


###########
# page 71 #
###########

ls $deviceloop* 
sudo partprobe $deviceloop
ls $deviceloop* 

# Partition 1 : FAT ; 2 : Linux
sudo mkfs -t vfat ${deviceloop}p1
sudo mkfs.ext4 ${deviceloop}p2

## on dd u-boot
# si dans le fichier iso :
sudo dd if=$DEWD/u-boot/u-boot-with-spl.sfp of=${deviceloop}p3 bs=64k seek=0 oflag=sync
## si directement sur la carte SD :
## sudo dd if=../u-boot-2022.04/u-boot-with-spl.sfp of=/dev/sdb3 bs=64k seek=0 oflag=sync
sync
sudo sync

mkdir -p fat

sudo mount ${deviceloop}p1 fat

# Copy the kernel image.
sudo cp $DEWD/linux-socfpga-socfpga-5.16/arch/arm/boot/zImage fat/

# Copy the de0 device tree.
sudo cp $DEWD/linux-socfpga-socfpga-5.16/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dtb fat

###########
# page 72 #
###########
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

mkdir -p ext4
sudo mount ${deviceloop}p2 ext4

cd ext4
sudo tar -xf $DEWD/rootfs.tar.bz2

cd ..
sudo umount ext4

rmdir fat
rmdir ext4
rm extlinux.conf

# Delete the loopback device.
sudo losetup -d ${deviceloop}

# le resultat se trouve dans $DEWD/sdcard/sdcard.img

# restaurer l'image disque sur une carte SD avec l'utilitaire de disque


###########
# page 74 #
###########

ifconfig


DE10NA_ADDR=192.168.1.16
export DEWD=$HOME/de10nano-wd
ssh-keygen -f "$HOME/.ssh/known_hosts" -R $DE10NA_ADDR
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
root@$DE10NA_ADDR: $DEWD/remote_de10_nano/

###########
# page 77 #
###########
## Sur le serveur :
export DEWD=$HOME/de10nano-wd

cd $DEWD/linux-socfpga-socfpga-5.16/
cd arch/arm/boot/dts
cp socfpga_cyclone5_de0_nano_soc.dts my_custom.dts
patch < $DEWD/captronic_formation_fpga_img_proc/patches/my_custom.patch


###########
# page 78 #
###########

export DEWD=$HOME/de10nano-wd
MY_USER=ubuntu
SERVER_ADDR=51.210.241.245



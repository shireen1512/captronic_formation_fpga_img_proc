#!/bin/bash

cd ~/.
export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD

sudo apt install debootstrap qemu-user-static


cd $DEWD
mkdir rootfs
sudo debootstrap --arch=armhf --foreign buster rootfs

cd $DEWD
sudo cp /usr/bin/qemu-arm-static rootfs/usr/bin/

sudo chroot rootfs /usr/bin/qemu-arm-static /bin/bash -i

apt install wget
/debootstrap/debootstrap --second-stage

apt install vim -y

vi /etc/hostname
-------------
de10-nano
-------------

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
------------
auto lo eth0
iface lo inet loopback

allow-hotplug eth0
iface eth0 inet dhcp
------------

vi /etc/apt/sources.list
-------------------
deb http://deb.debian.org/debian/ buster main contrib non-free
deb-src http://deb.debian.org/debian/ buster main contrib non-free
deb http://deb.debian.org/debian/ buster-updates main contrib non-free
deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
-----------------------

apt install openssh-server -y

vi /etc/ssh/sshd_config
-------------
PermitRootLogin yes
-------------

apt install haveged -y

apt install net-tools build-essential device-tree-compiler -y

apt clean
rm /usr/bin/qemu-arm-static
exit

cd $DEWD
cd rootfs

# Don't forget the dot at the end.
# Also has to be run as root.
sudo tar -cjpf $DEWD/rootfs.tar.bz2 .

# One level up to see the file.
cd ..

# le resultat se trouve dans $DEWD/rootfs.tar.bz2



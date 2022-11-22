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

## 3. Configurer u-boot "officiel" pour de10-nano
git clone https://github.com/u-boot/u-boot.git
cd u-boot
# git tag ==> obtenir la liste des versions
git checkout v2021.07

cd include/
# less config_distro_bootcmd.h
# sauvegarder la version anterieure des commandes au demarrage config_distro_bootcmd.h
cp config_distro_bootcmd.h config_distro_bootcmd.h.save
## cat ~/helpers/patches/config_distro_bootcmd.patch
# recuperer le patch
wget https://raw.githubusercontent.com/jmecodol/captronic_formation_fpga_img_proc/main/patches/config_distro_bootcmd.patch
patch < ~/helpers/patches/config_distro_bootcmd.patch
diff config_distro_bootcmd.h config_distro_bootcmd.h.save 

## 4. Generer et utiliser une adresses MAC fixe
cd $DEWD/u-boot
sudo apt install make
make -C tools gen_eth_addr
./tools/gen_eth_addr 
vi ~/helpers/patches/socfpga_common.patch
# changer l'adresse MAC

cd include/configs/
cp socfpga_common.h socfpga_common.h.save
patch < ~/helpers/patches/socfpga_common.patch

# on peut aussi changer l'adresse MAX manuellement
vi socfpga_common.h
cd ../..
ls -l configs/soc*de10*

## 5. Compiler u-boot
# recuperer le cross-compiler pour arm de Quartus (installer Quartus)
cd $DEWD
mkdir -p $DEWD/quartus
cd $DEWD/quartus
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/SoCEDSSetup-20.1.0.711-linux.run
chmod +x SoCEDSSetup-20.1.0.711-linux.run 
# installer Quartus
# Quartus Prime Programmer and Tools (1718.4MB) [Y/n] :n
# tout le reste par defaut
./SoCEDSSetup-20.1.0.711-linux.run

cd ~/intelFPGA/20.1/embedded/host_tools/linaro
# editer install_linaro.sh avec GCCFILE=gcc-linaro-7.5.0-2019.12-x86_64_arm-eabi :
#if [ x$OS == "xWindows_NT" ]
#then
#        GCCFILE=gcc-linaro-7.5.0-2019.12-i686-mingw32_arm-eabi
#else
#        GCCFILE=gcc-linaro-7.5.0-2019.12-i686_arm-eabi
#        GCCFILE=gcc-linaro-7.5.0-2019.12-x86_64_arm-eabi
#fi
./install_linaro.sh

cd $DEWD/u-boot
sudo apt-get install bison flex
export ARCH=arm
export CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-eabi-
make socfpga_de10_nano_defconfig
make -j 9
# le resultat se trouve dans $DEWD/u-boot/u-boot-with-spl.sfp
ls -l u-boot-with-spl.sfp

## 6. Compiler le noyau Linux pour SoC FPGA fourni par Altera
cd $DEWD
sudo apt-get install libncurses-dev flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev libmpc-dev libgmp3-dev autoconf bc
wget https://github.com/altera-opensource/linux-socfpga/archive/refs/heads/socfpga-5.16.zip
sudo apt-get install unzip
unzip socfpga-5.16.zip 

cd linux-socfpga-socfpga-5.16/

export ARCH=arm
export CROSS_COMPILE=$HOME/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-eabi-
make socfpga_defconfig
make menuconfig

# General setup >> Automatically append version information to the version string >> décocher
# File systems  >> Overlay filesystem support >> cocher avec tous les sous-niveaux
# File systems  >> Pseudo FileSystems >> Userspace-driven configuration filesystem >> vérifier que coché

# Sources de la configuration :
# https://bitlog.it/20170820_building_embedded_linux_for_the_terasic_de10-nano.html
# https://github.com/zangman/de10-nano/blob/master/docs/Building-the-Kernel.md

make -j 10 zImage Image dtbs modules
make -j 10 modules_install INSTALL_MOD_PATH=modules_install
make socfpga_cyclone5_socdk.dtb


## 7. Creer un distribition Linux Debian
sudo apt install debootstrap qemu-user-static
cd $DEWD
mkdir -p rootfs
# s'il y a des erreurs, essayer plusieurs fois la commande suivante (parfois le reseau plante)
sudo debootstrap --arch=armhf --foreign buster rootfs
sudo cp /usr/bin/qemu-arm-static rootfs/usr/bin/
sudo chroot rootfs /usr/bin/qemu-arm-static /bin/bash -i
/debootstrap/debootstrap --second-stage

# On realise les opérations de configuration de l’OS comme si l’on etait sur la cible :
# changer le mot de passe
echo 'root:temppwd' | chpasswd
apt install vim -y
apt install locales -y
apt install patch -y
apt install haveged -y
apt install net-tools build-essential device-tree-compiler -y
apt install gdbserver -y
apt install openssh-server -y
apt install gpiod -y

cat /etc/hostname
echo "de10_nano_22_09_2022" > /etc/hostname
cat /etc/hostname

echo -e \
"none\t/tmp\ttmpfs\tdefaults,noatime,mode=1777\t0\t0\n\
/dev/mmcblk0p2\t/\text4\tdefaults\t0\t1"\
> /etc/fstab
cat /etc/fstab
systemctl enable serial-getty@ttyS0.service

dpkg-reconfigure locales
>>> [*] fr_FR ISO-8859-1

echo -e "\
auto lo eth0\n\
iface lo inet loopback\n\
\n\
allow-hotplug eth0\n\
iface eth0 inet dhcp\n" > /etc/network/interfaces
cat /etc/network/interfaces

echo -e "\
deb http://deb.debian.org/debian/ buster main contrib non-free\n\
deb-src http://deb.debian.org/debian/ buster main contrib non-free\n\
deb http://deb.debian.org/debian/ buster-updates main contrib non-free\n\
deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free\n\
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free\n\
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free\n" > /etc/apt/sources.list
cat /etc/apt/sources.list

apt update
apt upgrade

vi /root/.bashrc
>>> activer les alias "export LS_OPTIONS=[...]", "alias ll", etc...

echo -e "\
--- /etc/ssh/sshd_config	2020-01-31 20:55:34.000000000 +0000\n\
+++ sshd_config_new	2022-09-22 17:12:19.540209864 +0000\n\
@@ -30,6 +30,7 @@\n\
 \n\
 #LoginGraceTime 2m\n\
 #PermitRootLogin prohibit-password\n\
+PermitRootLogin yes\n\
 #StrictModes yes\n\
 #MaxAuthTries 6\n\
 #MaxSessions 10" > ./sshd_config.diff
cat sshd_config.diff
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.save
patch -i sshd_config.diff /etc/ssh/sshd_config
cat /etc/ssh/sshd_config |grep "PermitRootLogin"

# sortir de chroot
apt clean
exit

# creer une archive
cd $DEWD/rootfs
rm ../debianRootFS.tar.bz2
sudo tar -cjpf ../debianRootFS.tar.bz2 .
ll -h .. |grep "debianRootFS.tar.bz2"





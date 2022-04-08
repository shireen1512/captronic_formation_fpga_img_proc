#!/bin/bash

cd ~/.
export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD

sudo apt-get install libncurses-dev flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev libmpc-dev libgmp3-dev autoconf bc

# telecharger la derniere version du noyau linux de Altera
cd $DEWD
wget https://github.com/altera-opensource/linux-socfpga/archive/refs/heads/socfpga-5.16.zip
unzip socfpga-5.16.zip
# extraction dans linux-socfpga-socfpga-5.16/

cd linux-socfpga-socfpga-5.16/
make ARCH=arm CROSS_COMPILE=$DEWD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- socfpga_defconfig

make ARCH=arm CROSS_COMPILE=$DEWD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- menuconfig
# suivre les instructions de https://github.com/zangman/de10-nano/wiki/Building-the-Kernel

make ARCH=arm CROSS_COMPILE=$DEWD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf- LOCALVERSION=zImage -j 4

# le resultat se trouve dans $DEWD/linux-socfpga-socfpga-5.16/arch/arm/boot/zImage

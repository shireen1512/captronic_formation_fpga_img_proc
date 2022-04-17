#!/bin/bash

export DEWD=$HOME/de10nano-wd
MY_USER=ubuntu
SERVER_ADDR=51.210.241.245
DE10NA_ADDR=192.168.1.38


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






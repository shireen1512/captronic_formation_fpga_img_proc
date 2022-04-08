#!/bin/bash

cd ~/.
export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD

# telecharger la derniere version de u-boot
wget https://github.com/u-boot/u-boot/archive/refs/tags/v2022.04.tar.gz
mv v2022.04.tar.gz uboot-v2022.04.tar.gz
# extraction dans u-boot-2022.04/
tar -xvzf uboot-v2022.04.tar.gz
cd u-boot-2022.04
gedit include/config_distro_bootcmd.h
#  "distro_bootcmd= " \
#    "if test -e mmc 0:1 u-boot.scr; then " \
#      "echo --- Found u-boot.scr ---; " \
#      "fatload mmc 0:1 0x2000000 u-boot.scr; " \
#      "source 0x2000000; " \
#    "elif test -e mmc 0:1 soc_system.rbf; then " \
#      "echo --- Programming FPGA ---; " \
#      "fatload mmc 0:1 0x2000000 soc_system.rbf; " \
#      "fpga load 0 0x2000000 0x700000; " \
#    "else " \
#      "echo u-boot.scr and soc_system.rbf not found in fat.; " \
#    "fi; " \
#    BOOTENV_SET_SCSI_NEED_INIT                      \
#    BOOTENV_SET_NVME_NEED_INIT                                \
#    BOOTENV_SET_IDE_NEED_INIT                                 \
#    BOOTENV_SET_VIRTIO_NEED_INIT                              \
#    "for target in ${boot_targets}; do "                      \
#      "run bootcmd_${target}; "                         \
#    "done\0"

# generer une adresse ethernet au hazard
cd $DEWD/u-boot-2022.04
make -C tools gen_eth_addr
tools/gen_eth_addr
# conserver l'adresse ethernet
# placer l'adresse ethernet dans :
gedit include/configs/socfpga_common.h
#        "socfpga_legacy_reset_compat=1\0" \
#        "ethaddr=56:6b:20:e9:4a:47\0" \
#        BOOTENV


cd $DEWD/u-boot-2022.04
export CROSS_COMPILE=$DEWD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
make ARCH=arm socfpga_de10_nano_defconfig
make ARCH=arm menuconfig
make ARCH=arm -j 4

# le resultat se trouve dans $DEWD/u-boot-2022.04/u-boot-with-spl.sfp



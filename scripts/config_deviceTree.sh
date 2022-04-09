
https://github.com/zangman/de10-nano/wiki/Configuring-the-Device-Tree

cd ~/.
export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD
cd $DEWD

cd $DEWD/linux-socfpga-socfpga-5.16/
cd arch/arm/boot/dts
cp socfpga_cyclone5_de0_nano_soc.dts my_custom.dts
gedit my_custom.dts
cd $DEWD/linux-socfpga-socfpga-5.16/
make ARCH=arm my_custom.dtb

scp arch/arm/boot/dts/my_custom.dtb root@192.168.1.30:~

ssh root@192.168.1.30
mkdir -p fat
mount /dev/mmcblk0p1 fat
cp fat/socfpga_cyclone5_de0_nano_soc.dtb fat/socfpga_cyclone5_de0_nano_soc_orig.dtb
cp my_custom.dtb fat/socfpga_cyclone5_de0_nano_soc.dtb

umount fat
reboot
cat /sys/class/fpga_bridge/*/state
enabled
enabled
enabled
enabled



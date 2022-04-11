
Communication CPU/FPGA par la RAM :

https://github.com/zangman/de10-nano/wiki/FPGA-SDRAM-Communication:-Introduction

cd ~/.
export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD
cd $DEWD

The end user experience in the first stage should be as follows:

https://github.com/zangman/de10-nano/wiki/FPGA-SDRAM-Communication:-Avalon-MM-Agent-Slave-Trigger-Component

1 User boots up the device and logs into Linux on the HPS.
2 User writes software which populates a number in a specific memory address which corresponds to the SDRAM.
3 User then signals to the Trigger component that the address is ready to be used.
4 Trigger component signals to the SDRAM Reader component to initiate the transaction.
5 SDRAM Reader component then initiates the read transaction and makes the number available in the signal out_data.
6 This signal is then wired to the LEDs on the de10-nano to confirm that the data has been received successfully.

Check de la revision du de10-nano : revision "C"

cd $DEWD
mkdir -p cdrom
cd cdrom
wget http://download.terasic.com/downloads/cd-rom/de10-nano/DE10-Nano_v.1.3.8_HWrevC_SystemCD.zip
unzip DE10-Nano_v.1.3.8_HWrevC_SystemCD.zip 

cd $DEWD
cp -r cdrom/Demonstrations/SoC_FPGA/DE10_NANO_SoC_GHRD/ ./

Modifier GHRD pour creer un projet barebone
https://github.com/zangman/de10-nano/wiki/Simple-Hardware-Adder:-Initial-Project-Setup

cd $DEWD
cp -r DE10_NANO_SoC_GHRD ghrd_barebones_template

cd $DEWD
cp -r ghrd_barebones_template ghrd_sdram

configurer les blocks comme indique dans :
https://github.com/zangman/de10-nano/wiki/FPGA-SDRAM-Communication:-Avalon-MM-Host-Master-Component-Part-2

compiler, generer le rbf,
cd $DEWD/ghrd_sdram/output_files
scp comm_ram.rbf  root@192.168.1.30:~

ssh root@192.168.1.30

mkdir -p fat
mount /dev/mmcblk0p1 fat
cp comm_ram.rbf fat/soc_system.rbf 
vim fat/extlinux/extlinux.conf
ajouter a la fin de la ligne de commande :
console=ttyS0,115200n8 net.ifnames=0 mem=512M
umount fat
reboot

arreter u-boot au demarrage
Hit any key to stop autoboot:  0 
=> 
=> 
mw 0xFFC25080 0x0
fatload mmc 0:1 0x2000000 soc_system.rbf
fpga load 0 0x2000000 0x700000
mw 0xFFC2505C 0xA
mw 0xFFC25080 0xFFFF
boot

apt install busybox
alias mem='busybox devmem'

mem 0x20000000 w 0xAA
mem 0xC0000000 w 0x1

mem 0x20000000 w 0xFF
mem 0xC0000000 w 0x1

Les leds s allument bien soit en allternance, soit toutes.

## VHDL
cd $DEWD
cd ghrd_sdram_vhdl/output_files
scp comm_ram_vhdl.rbf  root@192.168.1.30:~

ssh root@192.168.1.30

mkdir -p fat
mount /dev/mmcblk0p1 fat
cp comm_ram_vhdl.rbf fat/soc_system.rbf 
umount fat
reboot

alias mem='busybox devmem'

mem 0x20000000
mem 0x20000000 w 0xAA
mem 0x20000000

mem 536871168
mem 0xC0000000 w 0x1
mem 536871168

mem 0x20000000
mem 0x20000000 w 0xFF
mem 0x20000000

mem 0xC0000000 w 0x1

# 256 plus loin
mem 536871168



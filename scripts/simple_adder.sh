
Communication CPU/FPGA par la RAM :

https://github.com/zangman/de10-nano/wiki/Simple-Hardware-Adder:-Initial-Project-Setup

cd ~/.
export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD
cd $DEWD

cd $DEWD
cp -r ghrd_barebones_template/ ghrd_adder

creer simple_adder.sv dans ip/

parametrer Qsys
attention aux offset des addresses des slaves avalon (les noter quelquepart).

changer le fichier .sv racine
compiler le projet Quartus
convertir le bitstream en rbf :
 . Programming file type : Raw Binary File (rbf)
 . Mode : Passive Parallel x16
 . File Name : choisir.rbf
 . SOF data : choisir le fichier .sof

cd $DEWD
cd ghrd_adder/output_files
scp adder.rbf root@192.168.1.30:~
scp main.c root@192.168.1.30:~

ssh root@192.168.1.30

gcc main.c -o adder
./adder 3 4 ==> ca marche
for i in {1..1000}; do ./adder 1000 $i ; done ==> 10M appel en 7 secondes => 1 appel en 70us => 15 kHz
mkdir -p fat
mount /dev/mmcblk0p1 fat
rm fat/soc_system.rbf 
cp adder.rbf fat/soc_system.rbf 
umount fat
reboot


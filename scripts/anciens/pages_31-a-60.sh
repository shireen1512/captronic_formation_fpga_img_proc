#!/bin/bash


###########
# page 31 #
###########
export DEWD=$HOME/de10nano-wd
MY_USER=ubuntu
SERVER_ADDR=51.210.241.245
DE10NA_ADDR=192.168.1.16

cd $DEWD
git clone https://github.com/jmecodol/captronic_formation_fpga_img_proc.git

# test ssh
echo "passwd = cap*****c25042022"
ssh user[1:5]@$SERVER_ADDR

# Monter le répertoire distant du serveur :
mkdir -p $DEWD/remote/
mkdir -p $DEWD/remote_de10_nano/
ssh-keygen -f "$HOME/.ssh/known_hosts" -R $SERVER_ADDR
ssh-keygen -f "$HOME/.ssh/known_hosts" -R $DE10NA_ADDR
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
$MY_USER@$SERVER_ADDR: $DEWD/remote/
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
root@$DE10NA_ADDR: $DEWD/remote_de10_nano/


###########
# page 32 #
###########
## installer Quartus 20.1

export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD/quartus
cd $DEWD/quartus
# recuperer l'installateur quartus 20.1 et le modèle pour le cyclone v
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/QuartusLiteSetup-20.1.0.711-linux.run
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/cyclonev-20.1.0.711.qdz
# installer quartus 20.1
chmod +x QuartusLiteSetup-20.1.0.711-linux.run
./QuartusLiteSetup-20.1.0.711-linux.run


# Tester l'installation :
~/intelFPGA_lite/20.1/quartus/bin/quartus_sh –version
## Si sur le pc de developpement
~/intelFPGA_lite/20.1/quartus/bin/quartus


###########
# page 33 #
###########
## installer Soc EDS 20.1 et Linaro

export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD/quartus
cd $DEWD/quartus

## Quartus Prime Programmer and Tools (1718.4MB) [Y/n] :n
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/SoCEDSSetup-20.1.0.711-linux.run
chmod +x SoCEDSSetup-20.1.0.711-linux.run 
./SoCEDSSetup-20.1.0.711-linux.run

cd ~/intelFPGA/20.1/embedded/host_tools/linaro
patch < $DEWD/captronic_formation_fpga_img_proc/patches/install_linaro.patch
sudo apt-get update
sudo apt-get install build-essential
./install_linaro.sh

~/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-linux-gnueabihf-gcc --version


###########
# page 34 #
###########
## installer Eclipse CDT embedded

export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD
wget https://rhlx01.hs-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/2022-03/R/eclipse-embedcpp-2022-03-R-linux-gtk-x86_64.tar.gz
tar -xvzf eclipse-embedcpp-2022-03-R-linux-gtk-x86_64.tar.gz

###########
# page 35 #
###########
## lancer Eclipse CDT embedded

export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD
~/intelFPGA/20.1/embedded/embedded_command_shell.sh
./eclipse/eclipse &

gedit $DEWD/captronic_formation_fpga_img_proc/demos/SoC/hps_gpio/Makefile &

###########
# page 38 #
###########
## on peut compiler le projet eclipse en ligne de commande

# apres avoir configure et compile une fois dans eclipse en configuration Debug :
cd $DEWD/captronic_formation_fpga_img_proc/eclipse_proj/arm_cross_gcc/Debug
~/intelFPGA/20.1/embedded/embedded_command_shell.sh
make clean
ls -l
make
ls -l

###########
# page 42 #
###########
## recuperer Linux en console pour de10-nano par Terasic
export DEWD=$HOME/de10nano-wd
mkdir -p $DEWD/official_sd
cd $DEWD/official_sd
wget http://download.terasic.com/downloads/cd-rom/de10-nano/linux_BSP/de10_nano_linux_console.zip
unzip de10_nano_linux_console.zip

###########
# page 46 #
###########
sudo dmesg
sudo apt-get install gtkterm
gtkterm

###########
# page 49 #
###########
ifconfig

###########
# page 50 #
###########
DE10NA_ADDR=192.168.1.38
mkdir -p $DEWD/remote_de10_nano/
ssh-keygen -f "$HOME/.ssh/known_hosts" -R $DE10NA_ADDR
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
root@$DE10NA_ADDR: $DEWD/remote_de10_nano/

###########
# page 51 #
###########
## Envoyer le programme compilé avec Eclipse sur le SoC :
export DEWD=$HOME/de10nano-wd
cd $DEWD/captronic_formation_fpga_img_proc/eclipse_proj/arm_cross_gcc/Debug
cp arm_cross_gcc.elf $DEWD/remote_de10_nano

## Executer le programme compilé avec Eclipse sur le SoC :
./arm_cross_gcc.elf 




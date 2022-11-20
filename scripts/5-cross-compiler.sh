#!/bin/bash

## 1. Installer Quartus et SoC EDS sous Linux Ubuntu 64 bit
# dans le terminal :
cd
DEWD=$PWD/de10nano-wd

mkdir -p $DEWD/quartus
cd $DEWD/quartus
# recuperer le logiciel Quartus et le modele de fpga pour Cyclone 5
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/QuartusLiteSetup-20.1.0.711-linux.run
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/cyclonev-20.1.0.711.qdz

#installer Quartus
chmod +x QuartusLiteSetup-20.1.0.711-linux.run
./QuartusLiteSetup-20.1.0.711-linux.run

# tester l'installation :
~/intelFPGA_lite/20.1/quartus/bin/quartus_sh -version

# installer SoC EDS sur PC de développement (Linaro different de celui sur le serveur de calcul)
wget https://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/SoCEDSSetup-20.1.0.711-linux.run
chmod +x SoCEDSSetup-20.1.0.711-linux.run 
./SoCEDSSetup-20.1.0.711-linux.run
>>>> Quartus Prime Programmer and Tools (1718.4MB) [Y/n] :n
cd ~/intelFPGA/20.1/embedded/host_tools/linaro
# editer install_linaro.sh avec :
----------------
if [ x$OS == "xWindows_NT" ]
then
	GCCFILE=gcc-linaro-7.5.0-2019.12-i686-mingw32_arm-eabi
else
	#GCCFILE=gcc-linaro-7.5.0-2019.12-i686_arm-eabi
	GCCFILE=gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf
fi

if [ -f ${GCCFILE}.tar.xz ]
then
	echo Linaro toolchain tarball found, skipping download
else
	#wget http://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/arm-eabi/${GCCFILE}.tar.xz -O ${GCCFILE}.tar.xz
	wget https://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/arm-linux-gnueabihf/${GCCFILE}.tar.xz -O ${GCCFILE}.tar.xz
fi
[...]
pushd newlib-cygwin
rm -rf build
mkdir build
cd build
../configure --target=arm-linux-gnueabihf --disable-newlib-supplied-syscalls --disable-multilib
make all -j16
make install DESTDIR=$INSTALL_DIR/newlib
popd
----------------
./install_linaro.sh
# tester l'installation avec :
~/intelFPGA/20.1/embedded/host_tools/linaro/gcc/bin/arm-linux-gnueabihf-gcc --version


## 1. Installer Eclipse CDT embedded
cd
DEWD=$PWD/de10nano-wd
mkdir -p $DEWD/eclipse/
cd $DEWD/eclipse/
wget https://rhlx01.hs-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/2022-03/R/eclipse-embedcpp-2022-03-R-linux-gtk-x86_64.tar.gz
tar -xvzf eclipse-embedcpp-2022-03-R-linux-gtk-x86_64.tar.gz





#!/bin/bash

cd ~/.
export DEWD=$PWD/de10nano-wd
mkdir -p $DEWD
cd $DEWD

# linaro (64 bit => arm-linux-gnueabihf)
wget https://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz
tar -xvf gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz
# extraction dans $DEWD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/


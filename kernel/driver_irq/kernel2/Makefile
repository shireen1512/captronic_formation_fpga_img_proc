KERNEL_LOCATION=/home/ubuntu/de10nano-wd/linux-socfpga-socfpga-5.16
#ARMMAKE=make ARCH=arm SUBARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
ARMMAKE=make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-

obj-m := fpga_uinput.o

fpga_uinput.ko: fpga_uinput.c
	$(ARMMAKE) -C $(KERNEL_LOCATION) M=$(PWD) modules

clean:
	rm -f *.ko *.o *.mod.c *.symvers *.order

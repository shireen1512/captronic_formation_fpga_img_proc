/*
 * main.c
 *
 *  Created on: 20 nov. 2022
 *      Author: jm
 */
#include <stdio.h>
#include <stdint.h>
#include <fcntl.h> // O_RDWR ...
#include <sys/mman.h> // MAP_SHARED ...

#define BRIDGE 0xC0000000 // le bridge HPS2FPGA
#define BRIDGE_SPAN 4 // 4 octets
#define ADDER_SUM 0x00

int main(int argc, char **argv) {
	uint32_t sum = 0;
	int fd = 0;
	fd = open("/dev/mem", O_RDWR | O_SYNC);

	uint8_t* bridge_map = (uint8_t*)mmap(NULL, BRIDGE_SPAN, PROT_READ | PROT_WRITE,
	MAP_SHARED, fd, BRIDGE);

	uint32_t* sum_map = (uint32_t*) (bridge_map + ADDER_SUM) ;
	sum = *((uint32_t *)sum_map) ; // lecture sur le FPGA
	printf("sum = %08x\n", sum) ;
}


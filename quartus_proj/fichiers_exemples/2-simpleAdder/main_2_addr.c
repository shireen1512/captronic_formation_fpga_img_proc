/*
 * main.c
 *
 *  Created on: 20 nov. 2022
 *      Author: jm
 */
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h> // O_RDWR ...
#include <sys/mman.h> // MAP_SHARED ...

#define BRIDGE 0xC0000000 // le bridge HPS2FPGA
#define BRIDGE_SPAN 8 // 8 octets
#define ADDER_SUM 0x10 // retour du FPGA
#define ADDER_IN1 0x00 // vers le FPGA

int main(int argc, char **argv) {
	uint32_t sum = 0;
	int fd = 0;
	fd = open("/dev/mem", O_RDWR | O_SYNC);

	// bridge HPS_2_FPGA
	uint8_t* bridge_map = (uint8_t*) mmap(
			NULL, BRIDGE_SPAN, PROT_READ | PROT_WRITE,
			MAP_SHARED, fd, BRIDGE);

	// pointeur pour l'envoi d'une donnee vers le FPGA
	uint32_t * in1_map = (uint32_t*) (bridge_map + ADDER_IN1) ;

	// envoi vers le FPGA
	int32_t n = 200 ;
	printf("envoi = %d\n", n) ;
	*((uint32_t *) in1_map) = n ; // envoi vers le FPGA
	usleep(100) ;

	// pointeur pour la lecture sur le FPGA
	uint32_t* sum_map = (uint32_t*) (bridge_map + ADDER_SUM) ;
	sum = *((uint32_t *)sum_map) ; // lecture sur le FPGA
	printf("sum = %d\n", sum) ;
}


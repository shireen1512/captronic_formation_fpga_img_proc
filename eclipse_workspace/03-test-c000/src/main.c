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

#define BRIDGE 0xC0000000 // le bridge HPS_2_FPGA
#define BRIDGE_SPAN 4 // 8 octets
//#define ADDER_SUM 0x10 // retour du FPGA
#define ADDER_IN1 0x10 // variable a
#define ADDER_IN2 0x24 // variable a
#define ADDER_RET 0x00 // variable a
#define TRIGGER   0x20 // variable a

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
	uint32_t * in2_map = (uint32_t*) (bridge_map + ADDER_IN2) ;
	uint32_t * trigger_map = (uint32_t*) (bridge_map + TRIGGER) ;

	// envoi vers le FPGA
//	int32_t n = 10 ;
//	printf("envoi = %d\n", n) ;
//	*((uint32_t *) in1_map)     = 3 ; // envoi vers le FPGA
//	*((uint32_t *) in2_map)     = 4 ; // envoi vers le FPGA
	*((uint32_t *) trigger_map) = 5 ; // envoi vers le FPGA

//	// pointeur pour la lecture sur le FPGA
//	uint32_t* sum_map = (uint32_t*) (bridge_map + ADDER_RET) ;
//	uint32_t ret = *((uint32_t *)sum_map) ; // lecture sur le FPGA
//	printf("ret = %d\n", ret) ;

//	*((uint32_t *) in1_map) = n+1 ; // envoi vers le FPGA

//	// pointeur pour la lecture sur le FPGA
//	sum_map = (uint32_t*) (bridge_map + ADDER_RET) ;
//	ret = *((uint32_t *)sum_map) ; // lecture sur le FPGA
//	printf("ret = %d\n", ret) ;

	usleep(100) ;

//	*((uint32_t *) in1_map) = n+2 ; // envoi vers le FPGA

//	// pointeur pour la lecture sur le FPGA
//	uint32_t* sum_map = (uint32_t*) (bridge_map + ADDER_RET) ;
//	uint32_t ret = *((uint32_t *)sum_map) ; // lecture sur le FPGA
//	printf("ret = %d\n", ret) ;
//
//
//	*((uint32_t *) in1_map)     = 0 ; // envoi vers le FPGA
//	*((uint32_t *) in2_map)     = 0 ; // envoi vers le FPGA
//	*((uint32_t *) trigger_map) = 0 ; // envoi vers le FPGA

	return 0 ;
}

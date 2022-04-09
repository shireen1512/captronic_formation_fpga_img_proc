#include <error.h>
#include <fcntl.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

#define BRIDGE 0xC0000000
#define BRIDGE_SPAN 0x18

//#define ADDER_A 0x00
//#define ADDER_B 0x08
//#define ADDER_SUM 0x10
#define ADDER_A 0x10
#define ADDER_B 0x08
#define ADDER_SUM 0x00

int main(int argc, char **argv) {
  uint64_t a = 0;
  uint64_t b = 0;
  uint64_t sum = 0;

  uint8_t *a_map = NULL;
  uint8_t *b_map = NULL;
  uint8_t *sum_map = NULL;

  uint8_t *bridge_map = NULL;

  int fd = 0;
  int result = 0;

  if (argc != 3) {
    perror("Only 2 numbers should be passed.");
    return -1;
  }

  a = strtoll(argv[1], NULL, 10);
  b = strtoll(argv[2], NULL, 10);

  fd = open("/dev/mem", O_RDWR | O_SYNC);

  if (fd < 0) {
    perror("Couldn't open /dev/mem\n");
    return -2;
  }

  bridge_map = (uint8_t *)mmap(NULL, BRIDGE_SPAN, PROT_READ | PROT_WRITE,
                               MAP_SHARED, fd, BRIDGE);

  if (bridge_map == MAP_FAILED) {
    perror("mmap failed.");
    close(fd);
    return -3;
  }

  a_map = bridge_map + ADDER_A;
  b_map = bridge_map + ADDER_B;
  sum_map = bridge_map + ADDER_SUM;

  for (int k=0;k<10;k++) {
  sum = 0 ;
	  for (uint64_t i=0;i<100;i++) {
	  	for (uint64_t j=0;j<100;j++) {
		  	for (uint64_t j2=0;j2<100;j2++) {
			  *((uint64_t *)a_map) = a+k+j;
			  *((uint64_t *)b_map) = b+i;
			  sum = *((uint64_t *)sum_map);
			  if (sum!=(a+k+j+b+i)) {
			  	printf("PB\n") ;
			  //} else {
			  //	printf("OK\n") ;
			  }
			}
		}
	  }
	  //printf("%" PRIu64 "\n", sum) ;
  }


  result = munmap(bridge_map, BRIDGE_SPAN);

  if (result < 0) {
    perror("Couldnt unmap bridge.");
    close(fd);
    return -4;
  }

  close(fd);
  return 0;
}


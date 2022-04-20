#include <error.h>
#include <fcntl.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

#define BRIDGE_TRIGGER      (0xC0000000) // HPS_2_FPGA
#define BRIDGE_TRIGGER_SPAN (0x08) // 64 bits => 64/8 = 8 octets

#define BRIDGE_SDRAM        (0x20000000) // de debut de la ram reservee (@512Mo)
#define BRIDGE_SDRAM_SPAN   (0x20) // 256 bits => 256/8 = 32 octets => 0x20

#define HPS_2_FPGA_64bits (0x00)

int main(int argc, char **argv) {
	uint64_t config   = 0 ;
	uint64_t pix_in   = 0 ;
	uint64_t pix_out = 0 ;

	uint8_t *trigger_map = NULL ;
	uint8_t *sdram_map   = NULL ;

	uint8_t *bridge_trigger_map = NULL;
	uint8_t *bridge_ram_map     = NULL;

	int fd = 0;
	int result = 0;

	//  if (argc != 3) {
	//    perror("Only 2 numbers should be passed.");
	//    return -1;
	//  }

	config = strtoll("2022", NULL, 10);
	pix_in = strtoll("120", NULL, 10);

	fd = open("/dev/mem", O_RDWR | O_SYNC);

	if (fd < 0) {
		perror("Couldn't open /dev/mem\n");
		return -2;
	}

	bridge_trigger_map = (uint8_t *)mmap(NULL, BRIDGE_TRIGGER_SPAN, PROT_READ | PROT_WRITE,
			MAP_SHARED, fd, BRIDGE_TRIGGER);
	bridge_ram_map = (uint8_t *)mmap(NULL, BRIDGE_SDRAM_SPAN, PROT_READ | PROT_WRITE,
			MAP_SHARED, fd, BRIDGE_SDRAM);
	if (bridge_trigger_map == MAP_FAILED) {
		perror("mmap trigger failed.");
		close(fd);
		return -3;
	}
	if (bridge_ram_map == MAP_FAILED) {
		perror("mmap ram failed.");
		close(fd);
		return -3;
	}

	trigger_map = bridge_trigger_map + HPS_2_FPGA_64bits   ;
	sdram_map   = bridge_ram_map     + 0                   ;

	// pixel_in dans sdram
	printf("write pixel_in = %" PRIu64 "\tat address %x\n", pix_in, sdram_map);
	*((uint64_t *)sdram_map) = pix_in ;

	// trigger avec la config
	printf("write config   = %" PRIu64 "\tat address %x\n", config, trigger_map);
	*((uint64_t *)trigger_map) = config ;

	usleep(200) ;

	// nouveau pixel
	pix_out = *((uint64_t *)sdram_map);
	printf("read pixel_out = %" PRIu64 "\tat address %x\n",pix_out, sdram_map);

	//  printf("%" PRIu64 "\n", sum);

	result = munmap(bridge_trigger_map, BRIDGE_TRIGGER_SPAN);

	if (result < 0) {
		perror("Couldnt unmap bridge.");
		close(fd);
		return -4;
	}

	close(fd);
	return 0;
}

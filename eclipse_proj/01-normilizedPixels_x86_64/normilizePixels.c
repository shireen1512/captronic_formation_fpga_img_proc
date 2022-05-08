/*
 * normilizePixels.c
 *
 * image cree avec :
 * dd if=/dev/random of=imageData bs=10000 count=1
 *
 *  Created on: 28 avr. 2022
 *      Author: jmecodol
 */
#include <stdio.h>
#include <stdlib.h>


#define IMG_NB_PIXELS (100*100)
#define IMG_random_image_path ("/home/jmecodol/de10nano-wd/captronic_formation_fpga_img_proc/images/imageData")

char loadImageFromFile(unsigned char* img) {
	FILE* f ;
    if ((f = fopen(IMG_random_image_path, "r")) == NULL) {
    	printf("pas d'image ici\n") ;
        return 1;
    }
    for (int i = 0; i < IMG_NB_PIXELS; ++i) {
    	img[i] = fgetc(f);
        printf("%d\t%d\n", i, img[i]) ;
    }
    return 0 ;
}


int main(int argc, char **argv) {

	unsigned char image[IMG_NB_PIXELS];
	loadImageFromFile(image) ;

	//unsigned int sum = sum(image) ;


	printf("hello x86_64\n") ;

}




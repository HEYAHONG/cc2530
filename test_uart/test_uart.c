#include "hal_cc2530.h"
#include <stdio.h>

void main(void) {
	Hal_UART_Init();
	while(1) {
		printf("Hello, World!\n\rInput:");
		printf("\n\rnumber:%d\n\r",getchar());
	}
}


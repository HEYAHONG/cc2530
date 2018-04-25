#include "hal_cc2530.h"
#include <stdio.h>

void main(void) {
	Hal_UART_Init();
	while(1) {
		char temp[32];
		printf("Hello, World!\n\rInput Char:\n\r");
		printf("number:%d\n\rInput string:\n\r",getchar());
		gets(temp);//最多只能输入31字节
		printf("string:%s\n\r",temp);
	}
}


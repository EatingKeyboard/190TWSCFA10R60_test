#include <stdio.h>
#include "system.h"
#include "alt_types.h"
#include <unistd.h>

void sdram_test(alt_u8 *base, int len) {
	alt_u8 *addr = base;
	char errFlag = 0;
	for (addr = base; addr < (base + len); addr += 0x100) {
		for (int i = 0; i < 256; i++) {
			*(addr + i) = i;
		}
		for (int i = 0; i < 256; i++) {
			if (*(addr + i) != i) {
				errFlag = 1;
				printf("mem err at %08X,must=%d,now=%d\r\n", (int) addr + i, i,
									*(addr + i));
				break;
			}
		}
		if (errFlag) {
			break;
		}
	}
	if (errFlag) {
		printf("RAM TEST FAIL!\r\n");
	} else {
		printf("RAM TEST SUCCESS! BASE: %8X LEN:%8X\r\n", (int) base, len);
	}

}

int main()
{
	printf("Hello World!\n");
	//usleep(10000);
    sdram_test((alt_u8 *)0x01800000,0x800000);
    sdram_test((alt_u8 *)0x01000000,0x800000);
    while(1);

	return 0;
}

#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "alt_types.h"
#include <unistd.h>

#define sdram_rw_addr (alt_u8)(SDRAM47_BASE + 0x400000)

int main()
{
	alt_u8 *addr;
	alt_u8 i;
	printf("Hello world!\n");

//	usleep(1000000);
    addr = sdram_rw_addr;
    for(i=0; i<100; i++)
    	*(addr++) = i;
    addr = sdram_rw_addr;
    for(i=0; i<100; i++)
    	printf("%d\n", *(addr++));

	return 0;
}
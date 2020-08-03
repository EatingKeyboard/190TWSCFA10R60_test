#include <stdio.h>
<<<<<<< HEAD
#include <system.h>
=======
#include "system.h"
#include "altera_avalon_pio_regs.h"
>>>>>>> parent of b166a0d... sdram @133MHz verified pass
#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include <unistd.h>

#define sdram_rw_addr (alt_u8)(SDRAM47_BASE + 0x400000)

int main()
{
<<<<<<< HEAD
	printf("Hello World!\n");
	//usleep(10000);
    sdram_test((alt_u8 *)0x01800000,0x800000);
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_LED_BASE, 255);
    sdram_test((alt_u8 *)0x01000000,0x800000);
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_LED_BASE, 0);
    while(1)
    {
    	IOWR_ALTERA_AVALON_PIO_DATA(PIO_LED_BASE, 255);
    	usleep(1000);
    	IOWR_ALTERA_AVALON_PIO_DATA(PIO_LED_BASE, 0);
    	usleep(1000000);
    }
=======
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

>>>>>>> parent of b166a0d... sdram @133MHz verified pass
	return 0;
}

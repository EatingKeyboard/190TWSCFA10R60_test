#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: F:\test\190TWSCFA10R60_test\output_files\QSYS.sof to: "..\flash/QSYS_epcs.flash"
#
sof2flash --input="F:/test/190TWSCFA10R60_test/output_files/QSYS.sof" --output="../flash/QSYS_epcs.flash" --epcs --verbose 

#
# Programming File: "..\flash/QSYS_epcs.flash" To Device: epcs
#
nios2-flash-programmer "../flash/QSYS_epcs.flash" --base=0x0 --epcs --sidp=0x1009020 --id=0x0 --timestamp=1597766789 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

#
# Converting ELF File: F:\test\190TWSCFA10R60_test\nios2_qsys\software\HelloWorld_EP4CE15\HelloWorld_EP4CE15.elf to: "..\flash/HelloWorld_EP4CE15_epcs.flash"
#
elf2flash --input="F:/test/190TWSCFA10R60_test/nios2_qsys/software/HelloWorld_EP4CE15/HelloWorld_EP4CE15.elf" --output="../flash/HelloWorld_EP4CE15_epcs.flash" --epcs --after="../flash/QSYS_epcs.flash" --verbose 

#
# Programming File: "..\flash/HelloWorld_EP4CE15_epcs.flash" To Device: epcs
#
nios2-flash-programmer "../flash/HelloWorld_EP4CE15_epcs.flash" --base=0x0 --epcs --sidp=0x1009020 --id=0x0 --timestamp=1597766789 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 


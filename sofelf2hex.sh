sof="F:\\test\\190TWSCFA10R60_test\\output_files\\QSYS.sof"
elf="F:\\test\\190TWSCFA10R60_test\\nios2_qsys\\software\\HelloWorld_EP4CE15\\HelloWorld_EP4CE15.elf"
echo "sof>flash ..."; sof2flash --epcs --input=$sof --output=sof.flash --quiet
echo "elf>flash ..."; elf2flash --epcs --after=sof.flash --input=$elf --output=elf.flash
echo "cat flash ..."; cat  elf.flash >> sof.flash
echo "flash>hex ..."; nios2-elf-objcopy --input-target srec --output-target ihex sof.flash sof.hex
echo "del flash ..."; rm -f *.flash
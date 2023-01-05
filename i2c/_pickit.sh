#!/bin/bash

echo -e "\n******************************\nRunning GPASM ...\n"

gpasm  $1".asm"

echo -e "\n******************************\nCheck PICkit version..."

pk2cmd -?V      #version

echo -e "\n******************************"

pk2cmd -P       #autodetect PIC

#echo -e "\n******************************"
#pk2cmd -P$2 -E       

#echo -e "\n******************************\nBlank chekh PIC flash memory...\n"
#pk2cmd -P$2 -C       

echo -e "\n******************************\nWrite $1.hex to PIC flash memory... \n"
pk2cmd -P$2 -F$1".hex" -M

echo -e "\n******************************\nVerify PIC flash memory... \n"
pk2cmd -P$2 -F$1".hex" -Y

echo -e "\n******************************\nTurn on VDD to test... \n"
pk2cmd -P$2 -R -T
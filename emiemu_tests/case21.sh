#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo " Start charging with CC mode 17A current at SOC 80"
cansend can1 -i  0x420 0x00 0x00 0x88 0x41 0x00 0x00 0x00 0x00


#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "Set BMS to protected state"
cansend can1 -i 0x148 0x04 0x00 0x00 0x00 0x00 0x00 0x00 0x00


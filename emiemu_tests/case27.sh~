#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
date
echo "charger in CC mode with 17A(battery at 20 SOC)"
cansend can1 -i 0x420 0x00 0x00 0x88 0x41 0x00 0x00 0x00 0x00


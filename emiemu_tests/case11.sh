#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"

echo " Start charging with CC mode 5A current"
cansend can1 -i 0x420 0x00 0x00 0xA0 0x40 0x00 0x00 0x00 0x00

echo "Lux value ..."
while true; do
 sleep 0.2
 cat /sys/devices/soc0/soc.0/2100000.aips-bus/21a0000.i2c/i2c-1/1-0044/lux


done 


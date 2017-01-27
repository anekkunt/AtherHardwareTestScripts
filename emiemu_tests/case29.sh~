#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"

echo "Set BMS CAN to Disable mode"
cansend can1 -i 0x149 0xcc 0x05 0x00 0x05 0x01

echo "Set motor mode to economy"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s economy


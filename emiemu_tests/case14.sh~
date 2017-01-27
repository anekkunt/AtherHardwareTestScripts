#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "set GSM tx/rx mode at 850 MH"
busctl --allow-interactive-authorization=no call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter RunGSMCommand s AT+UTEST=3,9612,22,,,0
echo "Set fan ON"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetFanStatus b true

echo " Start charging with CC mode 5A current"
cansend can1 -i 0x420 0x00 0x00 0xA0 0x40 0x00 0x00 0x00 0x00

echo "set BT ON"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetBluetoothStatus b true
echo "stant BT scan"
hcitool lescan


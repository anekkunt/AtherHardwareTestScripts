#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "set GSM tx/rx mode at 2100 MH"
busctl --allow-interactive-authorization=no call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter RunGSMCommand s AT+UTEST=3,9612,22,,,0

echo " Start charging with CC mode 5A current"
cansend can1 -i 0x420 0x00 0x00 0xA0 0x40 0x00 0x00 0x00 0x00


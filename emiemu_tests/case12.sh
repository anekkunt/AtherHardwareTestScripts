#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"

echo " Start charging with CC mode 5A current"
cansend can1 -i 0x420 0x00 0x00 0xA0 0x40 0x00 0x00 0x00 0x00

echo "set GPS on"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetGpsStatus b true

echo "GPS data ..."
journalctl -af | grep -i tpv



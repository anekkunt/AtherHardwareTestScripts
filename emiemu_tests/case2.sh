#!/bin/bash
sleep 1
killall busctl
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "Set motor mode to Economy" 
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s economy

echo "set GPS on"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetGpsStatus b true

echo "Set motor ping time to 100 ms"
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu  SetMotorPingTime  a{ss} 2 type  keyoff pingtime 100
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu  SetMotorPingTime  a{ss} 2 type  keyin pingtime 100

echo "GPS data ..."
journalctl -af | grep -i tpv


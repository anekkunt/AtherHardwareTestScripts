#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "Set motor mode to Economy" 
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s economy

echo "Set Left indicator ON"
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetIndicatorState s LeftIndicatorOn

echo "Set motor ping time to 10 ms"
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu  SetMotorPingTime  a{ss} 2 type  keyoff pingtime 10
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu  SetMotorPingTime  a{ss} 2 type  keyin pingtime 10

echo "set BT ON"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetBluetoothStatus b true
sleep 3
echo "Set BT in scan mode"
hcitool lescan


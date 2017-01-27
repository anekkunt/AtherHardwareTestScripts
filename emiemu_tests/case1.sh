#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
#systemctl stop vcu-dashboard-testui
#electron index.html > /dev/null 2>&1 &
echo "Set motor to Economy" 
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s economy
echo "set gps off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetGpsStatus b false
echo "set BT off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetBluetoothStatus b false
echo " Set indicator off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetIndicatorState s off

#busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHornStatus b false
#busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetGSMStatus b false
#busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetBN055SensorStatus  b false
echo "set headlight off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHeadLightState s off

echo "Set motor ping time to 100 ms"
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu  SetMotorPingTime  a{ss} 2 type  keyoff pingtime 100
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu  SetMotorPingTime  a{ss} 2 type  keyin pingtime 100


echo "Lux value ..."
busctl monitor  com.atherenergy.Mcu | grep -A2 horn &
while true; do
 sleep 0.2
 cat /sys/devices/soc0/soc.0/2100000.aips-bus/21a0000.i2c/i2c-1/1-0044/lux


done 


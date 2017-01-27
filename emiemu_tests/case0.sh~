#!/bin/bash
sleep 1
#systemctl stop vcu-dashboard-testui
#electron index.html > /dev/null 2>&1 &
killall busctl
echo "Enable Bms CAN messages"
cansend can1 -i 0x149 0xcc 0x05 0x01 0x05 0x01 
echo stop IMU sensor App
systemctl stop vcu-sensor-app
echo "Set motor to Disable" 
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetThrottle  a{ss} 2 type analog rpm 2000
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s disable
echo "set gps off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetGpsStatus b false
echo "set BT off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetBluetoothStatus b false
echo " Set indicator off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetIndicatorState s off
echo "Set horn off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHornStatus b false
#busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetGSMStatus b false
echo "set headlight off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHeadLightState s off
echo "Set Motor fan off"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetFanStatus b f
echo Set GSM in non signaling mode
busctl --allow-interactive-authorization=no call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter RunGSMCommand s AT+COPS=2
busctl --allow-interactive-authorization=no call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter RunGSMCommand s AT+UTEST=1



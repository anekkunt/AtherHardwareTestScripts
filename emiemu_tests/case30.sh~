#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"

#systemctl stop vcu-dashboard-testui
#electron index.html > /dev/null 2>&1 &
echo "Set motor to Disable" 
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s disable
echo "set gps on"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetGpsStatus b true
echo "set BT on"
busctl --allow-interactive-authorization=no  call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter SetBluetoothStatus b true
echo " Set indicator on"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetIndicatorState s LeftIndicatorOn

#busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHornStatus b false
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetGSMStatus b true
#busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetBN055SensorStatus  b false
echo "set headlight on"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHeadLightState s HighBeam

echo "Set fan ON"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetFanStatus b true
`

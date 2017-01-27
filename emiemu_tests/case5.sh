#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "Set GSM in receive mode at 900MH"
busctl --allow-interactive-authorization=no call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter RunGSMCommand s AT+UTEST=3,660,,,,0

echo "Motor mode to economy"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s economy
echo "Set head light to high beam"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetHeadLightState s HighBeam
echo "set can throttle with RPM 2000"
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetThrottle  a{ss} 2 type can rpm 2000
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetThrottle  a{ss} 2 type can rpm 2000
busctl --allow-interactive-authorization=no call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetThrottle  a{ss} 2 type can rpm 2000




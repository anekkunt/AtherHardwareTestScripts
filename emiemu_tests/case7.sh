#!/bin/bash
sleep 1 
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "Set GSM in receive mode at 1900MH"
busctl --allow-interactive-authorization=no call com.atherenergy.Dexter /com/atherenergy/Dexter com.atherenergy.Dexter RunGSMCommand s AT+UTEST=3,975,,,,0

echo "Motor mode to power"
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s power





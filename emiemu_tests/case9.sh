#!/bin/bash
sleep 1
echo `date` " test case >> ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}"
echo "Set motor to power" 
busctl --allow-interactive-authorization=no  call com.atherenergy.Mcu /com/atherenergy/Mcu com.atherenergy.Mcu SetMotorMode s power

echo "power ON IMU sensor"
echo "TODO systemctl start vcu-sensor-app"

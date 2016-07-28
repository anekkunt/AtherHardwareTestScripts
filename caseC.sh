#!/bin/bash
killall chrome
#google-chrome index.html --kiosk /dev/null 2>&1 &
systemctl restart vcu-hardware-tests
sleep 7
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetDisplayStatus b  f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetTouchStatus b  f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetLDUStatus b on
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetGpsStatus b f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetGSMStatus b f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetBluetoothStatus b f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetISL29023SensorStatus b f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetBN055SensorStatus  b f
systemctl restart vcu-sensor-app

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetIndicatorState s off
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHornStatus b f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHeadLightState s f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetMotorMode s disable
rmmod isl29023
systemctl stop vcu-sensor-app
systemctl stop vcu-hardware-tests





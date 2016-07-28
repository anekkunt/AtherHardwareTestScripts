#!/bin/bash
systemctl restart vcu-hardware-tests
killall chrome
killall rfcomm-server
killall temp_test.sh
google-chrome index.html --kiosk > /dev/null 2>&1 &
sleep 5
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetDisplayStatus b  true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetTouchStatus b  true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetGpsStatus b true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetGSMStatus b true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetBluetoothStatus b true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetISL29023SensorStatus b true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetBN055SensorStatus  b true
#Set bluetooth in discoverable mode
#hciconfig hci0 piscan   
sdptool add --channel=3 SP
./rfcomm-server&
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &
./temp_test.sh &





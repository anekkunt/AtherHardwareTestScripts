!/bin/bash
sleep 1
systemctl stop vcu-dashboard-testui
systemctl stop ather-ppp
sleep 1
killall electron
sleep 1
DISPLAY=:0 electron ./index.html &
sleep 7
killall temp_test.sh
killall  board_temp
sleep 6
./temp_test.sh &
echo 0 >/sys/devices/soc0/backlight.17/backlight/backlight.17/brightness
watch /home/root/thermal_test/board_temp >/home/root/temp_board.log &

busctl --allow-interactive-authorization=no call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetIndicatorState s BothIndicatorOn
busctl --allow-interactive-authorization=no  call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetHeadLightState s HighBeam
busctl --allow-interactive-authorization=no  call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetFanStatus b t

while true; do
	echo "Horn OFF"
	busctl --allow-interactive-authorization=no  call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetHornStatus b f
	#busctl --allow-interactive-authorization=no  call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetHeadLightState s HighBeam
	sleep 5
	echo "Horn ON"
	busctl --allow-interactive-authorization=no  call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetHornStatus b t
	#busctl --allow-interactive-authorization=no  call com.atherenergy.S340 /com/atherenergy/S340/Mcu com.atherenergy.S340.Mcu SetHeadLightState s HighBeam
	sleep 1
done
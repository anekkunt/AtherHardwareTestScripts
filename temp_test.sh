#!/bin/bash

cat /sys/class/backlight/backlight.17/max_brightness > /sys/class/backlight/backlight.17/brightness

function infinite_loop { 
	while [ 1 ] ; do
		# Force some computation even if it is useless to actually work the CPU

		echo "Hi"
		for i in `seq 1 10000`; do
			echo $((13**99)) 1>/dev/null 2>&1
		done
		echo "Hi"

		sleep 6
	done
}

infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &
infinite_loop &

while [ 1 ]; do
	echo "`date` `cat /sys/class/thermal/thermal_zone0/temp`" >> /home/root/temp.log
	sync
	sleep 5
done

wait

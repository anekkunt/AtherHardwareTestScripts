#!/bin/bash

oldcount=`journalctl  -a | grep "Received can frame"  | wc -l`
while true
do
	sleep 2
	count=`journalctl  -a | grep "Received can frame"  | wc -l`
	if [ $count = $oldcount ] 
	then 
		echo "No can frames"
		systemctl restart vcu-can-app
	else 
		echo "received can frames"
	fi
	oldcount=$count

done

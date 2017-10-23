#!/bin/bash
sh ./caseA.sh
sleep  1

while true; do

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetFanStatus b true
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHeadLightState s HighBeam
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetIndicatorState s BothIndicatorOn

sleep  3
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetIndicatorState s off
 busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHeadLightState s off
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetFanStatus b false
sleep  30
done


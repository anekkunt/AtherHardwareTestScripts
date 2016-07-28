#!/bin/bash
sh ./caseA.sh
sleep  1
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetLDUStatus b true


busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 1000
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 1000
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 1000

while true; do

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHornStatus b true
sleep 4

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHornStatus b f
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 1000
sleep  30

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 0
sleep 4
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 2000
sleep  30

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 0
sleep 4
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 3000
sleep  30

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 0
sleep 4
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 4000
sleep  30

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 0
sleep 4
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 5000
sleep  30

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 0
sleep 4
busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 6000
sleep  30

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetThrottle  a{ss} 2 type can rpm 0
sleep  10

busctl --allow-interactive-authorization=no call com.atherenergy.HardwareTest /com/atherenergy/HardwareTest com.atherenergy.HardwareTest SetHornStatus b true
sleep 4
done


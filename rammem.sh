#!/bin/bash
RAM_USAGE=$(free -m)

TOTAL_MEM=$(echo $RAM_USAGE | grep Mem: | awk -F " " '{print $2}')

USED_MEM=$(echo $RAM_USAGE | grep Mem: | awk -F " " '{print $3}')
 echo "Total memory is  : $Total_MEM and used mem: $USED_MEM"

 

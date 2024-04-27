#!/bin/bash
RAM_USAGE=$(free -m)
while IFS=read -r line
do
TOTAL_MEM=$(echo $line | grep Mem: | awk -F " " '{print $2}')

USED_MEM=$(echo $line | grep Mem: | awk -F " " '{print $3}')
 echo "Total memory is : $Total_MEM and used $USED_MEM"

 done <<< RAM_USAGE

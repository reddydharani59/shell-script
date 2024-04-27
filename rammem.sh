#!/bin/bash
RAM_USAGE=$(free -m)

TOTAL_MEM=$($RAM_USAGE | grep Mem: | awk -F " " '{print $2}')

USED_MEM=$($RAM_USAGE | grep Mem: | awk -F " " '{print $3}')
 echo "Total memory is  : $TOTAL_MEM and used mem: $USED_MEM"

 

#!/bin/bash


TOTAL_MEM=$(free -m | grep Mem: | awk -F " " '{print $2}')

USED_MEM=$(free -m | grep Mem: | awk -F " " '{print $3}')
 echo "Total memory is  : $TOTAL_MEM and used mem: $USED_MEM"

 

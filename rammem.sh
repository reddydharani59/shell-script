#!/bin/bash


TOTAL_MEM=$(free -m | grep Mem: | awk -F " " '{print $2}')

USED_MEM=$(free -m | grep Mem: | awk -F " " '{print $3}')
 echo "Total memory in Mem is  : $TOTAL_MEM and used mem: $USED_MEM"
 TOTAL_SWAP=$(free -m | grep Swap: | awk -F " " '{print $2}')

USED_SWAP=$(free -m | grep Swap: | awk -F " " '{print $3}')
 echo "Total memory in swap is: $TOTAL_SWAP and used SWAp: $USED_SWAP"

 

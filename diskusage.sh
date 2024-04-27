#!/bin/bash
DISK_USAGE=$(df -h | grep xfs)
THRESHOLD=10
while IFS=read -r line
do 
    USAGE=$(echo $line | awk -F " " '{pritn $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $THRESHOLD ]
    then
     echo "$Folder is more than $THRESHOLD, current usage: $USAGE"
     fi
done <<< $DISK_USAGE
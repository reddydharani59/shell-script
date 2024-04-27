#!/bin/bash
COL=""
ROW=""
DATA=""
FILE=/home/ec2-user/shell-script/txt.sh
while IFS=' ' read -r fields 
do
COL+=("{fields[0]}")
DATA+=("{fields[1]}")
echo "$COL $DATA"
done <<< $FILE

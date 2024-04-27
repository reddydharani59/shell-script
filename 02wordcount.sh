#!/bin/bash
COL=""
ROW=""
DATA=""
FILE=/home/ec2-user/shell-script/txt.sh
while IFS=' ' read -r line
do

COL+=("{$line[0]} |cut -d " " -f1")
echo "$COL"
DATA+=("{$fields[1]}")
echo " $COL $DATA "
done <<< $FILE

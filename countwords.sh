#!/bin/bash
COL=""
ROW=""
DATA="'
while IFS=' ' read -r fields 
do
COL+=("{fields[0]}")
DATA+=("{fields[1]}")
done <<<(cat /home/ec2-user/shell-script/txt.sh)

#!/bin/bash
echo "All Variables: $@"
echo "Number of variables passed : $#"
echo " script name : $0"
echo "current working directory : $PWD"
echo "Home directory of current user : $HOME"
echo "which user running htis: $USER"
echo "Host Name : $HOSTNAME"
echo "Proccess id of this script: $$"
sleep 60 &
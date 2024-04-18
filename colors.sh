#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[34m"
USER=$(id -u)
if [ $USER -ne 0 ]
then 
    echo -e " ...$R you won't have access"
    exit 1 

else 
    echo -e "$2....$G success, $y you are super user"
fi 
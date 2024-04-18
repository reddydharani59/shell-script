#!/bin/bash
USER=$(id -u)
TIMESTAMP=$(date +F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE()
{
    if [ $1 -ne 0]
    then 
    echo "$2....Failure"
    else
    echo "2 success"
    fi
}
 if [ $USER -ne 0]
 then
 echo "please run the script with sudo access"
 exit 1
 else
 echo "you are super user"

 dnf install mysql-server -y >> $LOGFILE
 VALIDATE $? "Intializing Mysql-server"
 dnf install git -y >> $LOGFILE
 VALIDATE $? "Intializing git"

#!/bin/bash
USER=$(id -u)
R="\e[31m"
Y="\e[33m"
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME.log
if [ $USER -nt 0 ] 
then
    echo "get super user access"
    exit 1
else
    echo "you have access"
fi
for i in $@
do 
echo "package to insatll is : $i"
dnf install $i -y @>> $LOGFILE
VALIDATE $? "Installing ...$i"
done
VALIDATE()
{
    if [ $1 -nt 0 ] 
    then 
     echo -e "$2 ...is $R failed"
     exit 1
     else 
     echo -e "$2 ...is $y success"
     fi

}
 





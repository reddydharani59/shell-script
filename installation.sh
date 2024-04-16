#!/bin/bash
USER=$(id -u)
if[ $USER -nt 0]
then
echo "get super user access"
else
echo "you have access"
fi
dnf install mysql -y
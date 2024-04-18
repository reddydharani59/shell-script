#!/bin/bash
USER=$(id -u)
if[ $USER -nt 0]
then
    echo "get super user access"
    exit 1
else
    echo "you have access"
fi
dnf install mysql -y

